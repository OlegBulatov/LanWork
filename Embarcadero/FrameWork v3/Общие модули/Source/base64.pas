{
    This file is part of the Free Component Library (FCL)
    Copyright (c) 1999-2000 by Michael Van Canneyt and Florian Klaempfl
    base64 encoder & decoder (c) 1999 Sebastian Guenther

    See the file COPYING.FPC, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 **********************************************************************}

// Encoding and decoding streams for base64 data as described in
//   RFC2045 (Mode = bdmMIME) and
//   RFC3548 (Mode = bdmStrict)

// Addition of TBase64DecodingMode supporting both Strict and MIME mode is
//   (C) 2007 Hexis BV, by Bram Kuijvenhoven (bkuijvenhoven@hexis.nl)

unit base64;

interface

uses classes, sysutils;

type

  (* The TBase64DecodingStream supports two modes:
   * - 'strict mode':
   *    - follows RFC3548
   *    - rejects any characters outside of base64 alphabet,
   *    - only accepts up to two '=' characters at the end and
   *    - requires the input to have a Size being a multiple of 4; otherwise raises an EBase64DecodingException
   * - 'MIME mode':
   *    - follows RFC2045
   *    - ignores any characters outside of base64 alphabet
   *    - takes any '=' as end of string
   *    - handles apparently truncated input streams gracefully
   *)
  TBase64DecodingMode = (bdmStrict, bdmMIME);

  EBase64DecodingException = class(Exception)
  end;

function DecodeStringBase64(const s:string):String;

implementation

uses
  Math;

const
  SStrictNonBase64Char    = 'Non-valid Base64 Encoding character in input';
  SStrictInputTruncated   = 'Input stream was truncated at non-4 byte boundary';
  SStrictMisplacedPadChar = 'Unexpected padding character ''='' before end of input stream';

  EncodingTable: PChar =
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';

const
  NA =  85; // not in base64 alphabet at all; binary: 01010101
  PC = 255; // padding character                      11111111

  DecTable: array[Byte] of Byte =
    (NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  // 0-15
     NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  // 16-31
     NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 62, NA, NA, NA, 63,  // 32-47
     52, 53, 54, 55, 56, 57, 58, 59, 60, 61, NA, NA, NA, PC, NA, NA,  // 48-63
     NA, 00, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14,  // 64-79
     15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, NA, NA, NA, NA, NA,  // 80-95
     NA, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,  // 96-111
     41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, NA, NA, NA, NA, NA,  // 112-127
     NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
     NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
     NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
     NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
     NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
     NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
     NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
     NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA);

  Alphabet = ['a'..'z','A'..'Z','0'..'9','+','/','=']; // all 65 chars that are in the base64 encoding alphabet

function GetSize(Source: TStream; Mode: TBase64DecodingMode = bdmMIME): Int64;
var
  endBytes: array[0..1] of Char;
  ipos, isize: Int64;
  scanBuf: array[0..1023] of Char;
  count: LongInt;
  i: Integer;
  c: Char;
  ReadBase64ByteCount: Integer;
begin
  c := #0;
  Result := 0;
  ReadBase64ByteCount := 0;
  // Note: this method only works on Seekable Sources (for bdmStrict we also get the Size property)
//  if DecodedSize<>-1 then Exit(DecodedSize);
  ipos := Source.Position; // save position in input stream
  case Mode of
    bdmMIME:  begin
      // read until end of input stream or first occurence of a '='
      Result := ReadBase64ByteCount; // keep number of valid base64 bytes since last Reset in Result
      repeat
        count := Source.Read(scanBuf, SizeOf(scanBuf));
        for i := 0 to count-1 do begin
          c := scanBuf[i];
          if c in Alphabet-['='] then // base64 encoding characters except '='
            Inc(Result)
          else if c = '=' then // end marker '='
            Break;
        end;
      until count = 0;
      // writeln(Result);
      // we are now either at the end of the stream, or encountered our first '=', stored in c
      if c = '=' then begin // '=' found
        if Result mod 4 <= 1 then // badly placed '=', disregard last block
          Result := (Result div 4) * 3
        else // 4 byte block ended with '=' or '=='
          Result := (Result div 4) * 3 + Result mod 4 - 1;
      end else // end of stream
        Result := (Result div 4) * 3; // number of valid 4 byte blocks times 3
    end;
    bdmStrict:begin
      // seek to end of input stream, read last two bytes and determine size
      //   from Source size and the number of leading '=' bytes
      // NB we don't raise an exception here if the input does not contains an integer multiple of 4 bytes
      ipos  := Source.Position;
      isize := Source.Size;
      Result := ((ReadBase64ByteCount + (isize - ipos) + 3) div 4) * 3;
      Source.Seek(-2, soFromEnd);
      Source.Read(endBytes, 2);
      if endBytes[1] = '=' then begin // last byte
        Dec(Result);
      if endBytes[0] = '=' then       // second to last byte
        Dec(Result);
      end;
    end;
  end;
  Source.Position := ipos; // restore position in input stream
  // store calculated DecodedSize
//  DecodedSize := Result;
end;

type
  PByte = ^Byte;

function Read(Source: TStream; var Buffer; Count: Longint; Mode: TBase64DecodingMode = bdmMIME): Longint;
var
  p: PByte;
  b: byte;
  ReadBuf: array[0..3] of Byte; // buffer to store last read 4 input bytes
  ToRead, OrgToRead, HaveRead, ReadOK, i: Integer;

//  ReadBase64ByteCount: Integer;
  CurPos: Integer;
  DecodedSize: Integer;
  BufPos: Integer;
  Buf: array[0..2] of Byte; // last 3 decoded bytes

  procedure DetectedEnd(ASize:Int64);
  begin
    DecodedSize := ASize;
    // Correct Count if at end of base64 input
    if CurPos + Count > DecodedSize then
      Count := DecodedSize - CurPos;
  end;
begin
//  ReadBase64ByteCount := 0; // number of bytes Read form Source since last call to Reset
  CurPos := 0; // position in decoded byte sequence since last Reset
  DecodedSize := -1; // indicates unknown; will be set after first call to GetSize or when reaching end of stream
  BufPos := 3; // signals we need to read & decode a new block of 4 bytes

  Result := 0;
  if Count <= 0 then exit; // nothing to read, quit
  if DecodedSize <> -1 then begin // try using calculated size info if possible
    if CurPos + Count > DecodedSize then
      Count := DecodedSize - CurPos;
    if Count <= 0 then exit;
  end;

  Result := 0;
  p := @Buffer;
  while true do begin
    // get new 4-byte block if at end of Buf
    if BufPos > 2 then begin
      BufPos := 0;
      // Read the next 4 valid bytes
      ToRead := 4; // number of base64 bytes left to read into ReadBuf
      ReadOK := 0; // number of base64 bytes already read into ReadBuf
      while ToRead > 0 do begin
        OrgToRead := ToRead;
        HaveRead := Source.Read(ReadBuf[ReadOK], ToRead);
        //WriteLn('ToRead = ', ToRead, ', HaveRead = ', HaveRead, ', ReadOK=', ReadOk);
        if HaveRead > 0 then begin // if any new bytes; in ReadBuf[ReadOK .. ReadOK + HaveRead-1]
          for i := ReadOK to ReadOK + HaveRead - 1 do begin
            b := DecTable[ReadBuf[i]];
            if b <> NA then begin // valid base64 alphabet character ('=' inclusive)
              ReadBuf[ReadOK] := b;
              Inc(ReadOK);
              Dec(ToRead);
            end else if Mode=bdmStrict then begin // non-valid character
              raise EBase64DecodingException.CreateFmt(SStrictNonBase64Char,[]);
            end;
          end;
        end;
        
        if HaveRead <> OrgToRead then begin // less than 4 base64 bytes could be read; end of input stream
          //WriteLn('End: ReadOK=', ReadOK, ', count=', Count);
          for i := ReadOK to 3 do
            ReadBuf[i] := 0; // pad buffer with zeros so decoding of 4-bytes will be correct
          if (Mode = bdmStrict) and (ReadOK > 0) then
            raise EBase64DecodingException.CreateFmt(SStrictInputTruncated,[]);
          Break;
        end;
      end;

//      Inc(ReadBase64ByteCount, ReadOK);
      
      // Check for pad characters
      case Mode of
        bdmStrict:begin
          if ReadOK = 0 then // end of input stream was reached at 4-byte boundary
            DetectedEnd(CurPos)
          else if (ReadBuf[0] = PC) or (ReadBuf[1] = PC) then
            raise EBase64DecodingException.CreateFmt(SStrictMisplacedPadChar,[])   // =BBB or B=BB
          else if (ReadBuf[2] = PC) then begin
            if (ReadBuf[3] <> PC) or (Source.Position < Source.Size) then
              raise EBase64DecodingException.CreateFmt(SStrictMisplacedPadChar,[]); // BB=B or BB==, but not at end of input stream
            DetectedEnd(CurPos + 1)  // only one byte left to read;  BB==, at end of input stream
          end else if (ReadBuf[3] = PC) then begin
            if (Source.Position < Source.Size) then
              raise EBase64DecodingException.CreateFmt(SStrictMisplacedPadChar,[]); // BBB=, but not at end of input stream
            DetectedEnd(CurPos + 2); // only two bytes left to read; BBB=, at end of input stream
          end;
        end;
        bdmMIME:begin
          if ReadOK = 0 then // end of input stream was reached at 4-byte boundary
            DetectedEnd(CurPos)
          else if (ReadBuf[0] = PC) or (ReadBuf[1] = PC) then
            DetectedEnd(CurPos)      // =BBB or B=BB: end here
          else if (ReadBuf[2] = PC) then begin
            DetectedEnd(CurPos + 1)  // only one byte left to read;  BB=B or BB==
          end else if (ReadBuf[3] = PC) then begin
            DetectedEnd(CurPos + 2); // only two bytes left to read; BBB=
          end;
        end;
      end;
      
      // Decode the 4 bytes in the buffer to 3 undecoded bytes
      Buf[0] :=  ReadBuf[0]         shl 2 or ReadBuf[1] shr 4;
      Buf[1] := (ReadBuf[1] and 15) shl 4 or ReadBuf[2] shr 2;
      Buf[2] := (ReadBuf[2] and  3) shl 6 or ReadBuf[3];
    end;
    
    if Count <= 0 then begin
      Break;
    end;

    // write one byte to Count
    p^ := Buf[BufPos];
    Inc(p);
    Inc(BufPos);
    Inc(CurPos);
    Dec(Count);
    Inc(Result);
  end;
  
end;

function DecodeStringBase64(const s:string):String;
var
  SS: TStringStream;
begin
  SS := TStringStream.Create(s);
  try
    SetLength(Result, GetSize(SS));
    if Length(Result) > 0 then
      Read(SS, Result[1], Length(Result));
  finally
    SS.Free;
  end;
end;


end.
