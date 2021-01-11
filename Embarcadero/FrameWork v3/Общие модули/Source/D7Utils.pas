unit D7Utils;

interface

uses
  SysUtils, Classes;

type
  RawByteSstring = String;

const
  advapi32 = 'advapi32.dll';
  kernel = 'kernel32.dll';
  user = 'user32.dll';
  oleaut = 'oleaut32.dll';

function VarToWideStr(const V: Variant): WideString;
function VarToWideStrDef(const V: Variant; const ADefault: WideString): WideString;
function VarIsOrdinal(const V: Variant): Boolean;

function Supports(Instance: TObject; const Intf: TGUID): Boolean; overload;
function Supports(const Instance: IUnknown; const Intf: TGUID): Boolean; overload;

function Utf8Encode(const WS: WideString): String;
function Utf8Decode(const S: String): WideString;

function InterlockedIncrement(var Addend: Integer): Integer; stdcall;
  external kernel name 'InterlockedIncrement';

function InterlockedDecrement(var Addend: Integer): Integer; stdcall;
  external kernel name 'InterlockedDecrement';

const
  SLineBreak = #13#10;
  S_OK    = $00000000;

function FileBodyIntoString(const FileName: String): RawByteSstring;  
  
implementation

const
  NullAsStringValue = '';

type
  TVarType = Word;  

function VarToWideStr(const V: Variant): WideString;
begin
  Result := VarToWideStrDef(V, NullAsStringValue);
end;

function VarToWideStrDef(const V: Variant; const ADefault: WideString): WideString;
begin
  if not VarIsNull(V) then
    Result := V
  else
    Result := ADefault;
end;

function Supports(Instance: TObject; const Intf: TGUID): Boolean;
var
  R: IUnknown;
begin
  Result := SysUtils.Supports(Instance, Intf, R);
end;

function Supports(const Instance: IUnknown; const Intf: TGUID): Boolean; 
var
  R: IUnknown;
begin
  Result := SysUtils.Supports(Instance, Intf, R);
end;

function Utf8ToUnicode(Dest: PWideChar; MaxDestChars: Cardinal; Source: PChar; SourceBytes: Cardinal): Cardinal;
var
  i, count: Cardinal;
  c: Byte;
  wc: Cardinal;
begin
  if Source = nil then
  begin
    Result := 0;
    Exit;
  end;
  Result := Cardinal(-1);
  count := 0;
  i := 0;
  if Dest <> nil then
  begin
    while (i < SourceBytes) and (count < MaxDestChars) do
    begin
      wc := Cardinal(Source[i]);
      Inc(i);
      if (wc and $80) <> 0 then
      begin
        if i >= SourceBytes then Exit;          // incomplete multibyte char
        wc := wc and $3F;
        if (wc and $20) <> 0 then
        begin
          c := Byte(Source[i]);
          Inc(i);
          if (c and $C0) <> $80 then Exit;      // malformed trail byte or out of range char
          if i >= SourceBytes then Exit;        // incomplete multibyte char
          wc := (wc shl 6) or (c and $3F);
        end;
        c := Byte(Source[i]);
        Inc(i);
        if (c and $C0) <> $80 then Exit;       // malformed trail byte

        Dest[count] := WideChar((wc shl 6) or (c and $3F));
      end
      else
        Dest[count] := WideChar(wc);
      Inc(count);
    end;
    if count >= MaxDestChars then count := MaxDestChars-1;
    Dest[count] := #0;
  end
  else
  begin
    while (i < SourceBytes) do
    begin
      c := Byte(Source[i]);
      Inc(i);
      if (c and $80) <> 0 then
      begin
        if i >= SourceBytes then Exit;          // incomplete multibyte char
        c := c and $3F;
        if (c and $20) <> 0 then
        begin
          c := Byte(Source[i]);
          Inc(i);
          if (c and $C0) <> $80 then Exit;      // malformed trail byte or out of range char
          if i >= SourceBytes then Exit;        // incomplete multibyte char
        end;
        c := Byte(Source[i]);
        Inc(i);
        if (c and $C0) <> $80 then Exit;       // malformed trail byte
      end;
      Inc(count);
    end;
  end;
  Result := count+1;
end;


function Utf8Decode(const S: String): WideString;
var
  L: Integer;
  Temp: WideString;
begin
  Result := '';
  if S = '' then Exit;
  SetLength(Temp, Length(S));

  L := Utf8ToUnicode(PWideChar(Temp), Length(Temp)+1, PChar(S), Length(S));
  if L > 0 then
    SetLength(Temp, L-1)
  else
    Temp := '';
  Result := Temp;
end;

function VarTypeIsOrdinal(const AVarType: TVarType): Boolean;
begin
  Result := AVarType in [varSmallInt, varInteger, varBoolean, //varShortInt,
                         varByte //varWord,
                         //varLongWord,
                         //varInt64
                         ];
end;

function FindVarData(const V: Variant): PVarData;
begin
  Result := @TVarData(V);
  while Result.VType = varByRef or varVariant do
    Result := PVarData(Result.VPointer);
end;

function VarIsOrdinal(const V: Variant): Boolean;
begin
  Result := VarTypeIsOrdinal(FindVarData(V)^.VType);
end;

function UnicodeToUtf8(Dest: PChar; MaxDestBytes: Cardinal; Source: PWideChar; SourceChars: Cardinal): Cardinal;
var
  i, count: Cardinal;
  c: Cardinal;
begin
  Result := 0;
  if Source = nil then Exit;
  count := 0;
  i := 0;
  if Dest <> nil then
  begin
    while (i < SourceChars) and (count < MaxDestBytes) do
    begin
      c := Cardinal(Source[i]);
      Inc(i);
      if c <= $7F then
      begin
        Dest[count] := Char(c);
        Inc(count);
      end
      else if c > $7FF then
      begin
        if count + 3 > MaxDestBytes then
          break;
        Dest[count] := Char($E0 or (c shr 12));
        Dest[count+1] := Char($80 or ((c shr 6) and $3F));
        Dest[count+2] := Char($80 or (c and $3F));
        Inc(count,3);
      end
      else //  $7F < Source[i] <= $7FF
      begin
        if count + 2 > MaxDestBytes then
          break;
        Dest[count] := Char($C0 or (c shr 6));
        Dest[count+1] := Char($80 or (c and $3F));
        Inc(count,2);
      end;
    end;
    if count >= MaxDestBytes then count := MaxDestBytes-1;
    Dest[count] := #0;
  end
  else
  begin
    while i < SourceChars do
    begin
      c := Integer(Source[i]);
      Inc(i);
      if c > $7F then
      begin
        if c > $7FF then
          Inc(count);
        Inc(count);
      end;
      Inc(count);
    end;
  end;
  Result := count+1;  // convert zero based index to byte count
end;


function Utf8Encode(const WS: WideString): String;
var
  L: Integer;
  Temp: String;
begin
  Result := '';
  if WS = '' then Exit;
  SetLength(Temp, Length(WS) * 3); // SetLength includes space for null terminator

  L := UnicodeToUtf8(PChar(Temp), Length(Temp)+1, PWideChar(WS), Length(WS));
  if L > 0 then
    SetLength(Temp, L-1)
  else
    Temp := '';
  Result := Temp;
end;

function FileBodyIntoString(const FileName: String): RawByteSstring;
var
  SS: TStream;
begin
  SS := TFileStream.Create(FileName, fmOpenRead or fmShareDenyNone);
  try
    SetLength(Result, SS.Size);
    if Length(Result) = 0 then
      Exit;
    SS.ReadBuffer(Result[1], Length(Result));
  finally
    SS.Free;
  end;
end;

end.
