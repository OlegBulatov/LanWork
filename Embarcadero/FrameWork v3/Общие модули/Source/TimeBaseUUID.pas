
unit TimeBaseUUID;

Interface

uses
  Windows, SysUtils;

type
  TGuidRFC4122 = packed record
    case integer of
       1 : (
            Data1 : DWord;
            Data2 : word;
            Data3 : word;
            Data4 : array[0..7] of byte;
           );
       2 : (
            D1 : DWord;
            D2 : word;
            D3 : word;
            D4 : array[0..7] of byte;
           );
       3 : ( { uuid fields according to RFC4122 }
            time_low : dword;			// The low field of the timestamp
            time_mid : word;                      // The middle field of the timestamp
            time_hi_and_version : word;           // The high field of the timestamp multiplexed with the version number
            clock_seq_hi_and_reserved : byte;     // The high field of the clock sequence multiplexed with the variant
            clock_seq_low : byte;                 // The low field of the clock sequence
            node : array[0..5] of byte;           // The spatially unique node identifier
           );
       4 : ( { uuid fields according to RFC4122 }
            time_low_2 : dword;			// The low field of the timestamp
            clock_mid : DWORD;
            clock_seq_2: Word;
            node_2 : array[0..5] of byte;           // The spatially unique node identifier
           );
  end;

procedure CreateMacGUID(var UU: TGuidRFC4122); overload;
procedure CreateMacGUID(var UUStr: String); overload;

Implementation

//uses
//  NB30;

Const
  MAX_ADJUSTMENT = 10;
  MAX_ADAPTER_ADDRESS_LENGTH = 8;
  AF_INET = 2;
  GAA_FLAG_INCLUDE_PREFIX = $0010;
  
Type
  QWordRec = record
    case Integer of
      1:(
        D1,D2: DWORD;
      );
      2:(
        Q: Int64;
      );
  end;
  TTImeVal = record
    tv_sec: Int64;
    tv_usec: Int64;
  end;
  tuuid = record
    time_low : cardinal;
    time_mid : Word;
    time_hi_and_version : Word;
    clock_seq : Word;
    node : Array[0..5] of byte;
  end;
  
  ULONGLONG = Int64;
  T_IP_ADAPTER_ADDRESSES_LH = packed record
    Alignment: ULONGLONG;
    Next: Pointer;
    AdapterName: PChar;
    FirstUnicastAddress: Pointer;
    FirstAnycastAddress: Pointer;
    FirstMulticastAddress: Pointer;
    FirstDnsServerAddress: Pointer;
    DnsSuffix: Pointer;
    Description: Pointer;
    FriendlyName: Pointer;
    PhysicalAddress: array [1..MAX_ADAPTER_ADDRESS_LENGTH] of Byte;
    PhysicalAddressLength: DWORD;
    // ...
  end;
  P_IP_ADAPTER_ADDRESSES_LH = ^T_IP_ADAPTER_ADDRESSES_LH;

Var
  MacAddr      : Packed Array[1..6] of byte = (0,0,0,0,0,0);
//  StartClock: TDateTime = 0;
//  StartNanoSec,
//  StartTick: QWordRec;
  Last   : TTimeVal = (tv_sec:0;tv_usec:0);
  ClockSeq   : Word = 0;
  AdjustMent : Integer = 0;

Procedure GetRandomBytes(Var Buf; NBytes : Integer);

Var
  I : Integer;
  P : PByte;

begin
  P:=@Buf;
  Randomize;
  For I:=0 to NBytes-1 do
  begin
    P^:=Random(256);
    Inc(P);
  end;
end;

function ConvC(V: Byte): Char;
begin
  Result := Chr(V);
end;

{
function GetAdapterInfo: TAdapterStatus;
var
  Adapter: TAdapterStatus;
  AdapterList: TLanaEnum;
  NCB: TNCB;
  Lana: Char; //Byte;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := ConvC(NCBENUM);
  NCB.ncb_buffer := @AdapterList;
  NCB.ncb_length := SizeOf(AdapterList);
  Netbios(@NCB);
  if Byte(AdapterList.length) = 0 then
    raise Exception.Create('Не найден сетевой адаптер');

  Lana := AdapterList.lana[0];
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := ConvC(NCBRESET);
  NCB.ncb_lana_num := Lana;
  if Netbios(@NCB) <> ConvC(NRC_GOODRET) then
    raise Exception.Create('Не найден MAC адрес');

  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := ConvC(NCBASTAT);
  NCB.ncb_lana_num := Lana;
  NCB.ncb_callname[0] := ConvC(Ord('*'));
  NCB.ncb_callname[1] := ConvC(0);

  FillChar(Adapter, SizeOf(Adapter), 0);
  NCB.ncb_buffer := @Adapter;
  NCB.ncb_length := SizeOf(Adapter);
  if Netbios(@NCB) <> ConvC(NRC_GOODRET) then
    raise Exception.Create('Не найден MAC адрес');
  Result := Adapter;
end;

procedure FillMacAddr;
var
  A: TAdapterStatus;
begin

  A := GetAdapterInfo;
  Assert(SizeOf(MacAddr) = SizeOf(A.adapter_address));
  Move(A.adapter_address[0], MacAddr[1], SizeOf(MacAddr));

end;
}

function GetAdaptersAddresses(
  Family: DWORD;
  Flags: DWORD;
  Reserved: Pointer;
  AdapterAddresses: Pointer;
  SizePointer: Pointer
): DWORD; stdcall;
  external 'IPHLPAPI.dll' name 'GetAdaptersAddresses';

procedure FillMacAddr;
var
  Buf: String;
  Adapt: P_IP_ADAPTER_ADDRESSES_LH;
  dwRetVal,
  BufLen: DWORD;
begin
  SetLength(Buf,20000);
  Adapt := @Buf[1];
  BufLen := Length(Buf);
  dwRetVal :=
    GetAdaptersAddresses(AF_INET, GAA_FLAG_INCLUDE_PREFIX, nil, Adapt, @BufLen);
  if dwRetVal <> ERROR_SUCCESS then
    raise Exception.Create(SysErrorMessage(dwRetVal));
  if Adapt.PhysicalAddressLength <> 6 then
    raise Exception.Create('unknown mac');
  Assert(SizeOf(MacAddr) <= SizeOf(Adapt.PhysicalAddress));
  Move(Adapt.PhysicalAddress[1], MacAddr[1], SizeOf(MacAddr));
end;  

const
{ Units of time }

  HoursPerDay   = 24;
  MinsPerHour   = 60;
  SecsPerMin    = 60;
  MSecsPerSec   = 1000;
  MinsPerDay    = HoursPerDay * MinsPerHour;
  SecsPerDay    = MinsPerDay * SecsPerMin;
  MSecsPerDay   = SecsPerDay * MSecsPerSec;

{ Days between 1/1/0001 and 12/31/1899 }

  DateDelta = 693594;

{ Days between TDateTime basis (12/31/1899) and Unix time_t basis (1/1/1970) }

  UnixDateDelta = 25569;

//function GetTickCount64: QWordRec; external kernel32 name 'GetTickCount64';  


procedure Add(var Q1: QWordRec; const Q2: QWordRec);
var
  P1, P2: Pointer;
begin
  P1 := @Q1;
  P2 := @Q2;  
  asm
    mov edi, P2
    mov eax,[edi].DWord
    mov edx,[edi+4].DWord
    mov esi, P1
    add [esi].DWord,eax
    adc [esi+4].DWord,edx
  end;
end;

procedure Sub(var Q1: QWordRec; const Q2: QWordRec);
var
  P1, P2: Pointer;
begin
  P1 := @Q1;
  P2 := @Q2;
  asm
    mov edi, P2
    mov eax,[edi].DWord
    mov edx,[edi+4].DWord
    mov esi, P1
    sub [esi].DWord,eax
    sbb [esi+4].DWord,edx
  end;
end;

function DateTimeToUnixTV: TTImeVal;
var
  ST: TSYSTEMTIME;
  NanoSec: QWordRec;
  MS: Int64;
begin
{  if StartClock = 0 then
  begin
    GetSystemTime(ST);
    StartClock :=
      EncodeDate(ST.wYear,ST.wMonth,ST.wDay)+
      EncodeTime(ST.wHour,ST.wMinute,ST.wSecond,ST.wMilliseconds) -
      UnixDateDelta;
    StartTick := GetTickCount64;
    StartNanoSec.Q := Round(StartClock * MSecsPerDay * 1000000);
    Sub(StartNanoSec, StartTick);
  end;
  NanoSec := StartNanoSec;
  Add(NanoSec, GetTickCount64);}

  GetSystemTime(ST);
  NanoSec.Q := Round(
    ( EncodeDate(ST.wYear,ST.wMonth,ST.wDay)+
      EncodeTime(ST.wHour,ST.wMinute,ST.wSecond,ST.wMilliseconds) -
      UnixDateDelta
    ) * MSecsPerDay * 1000000);

  MS := NanoSec.Q div 1000;
  Result.tv_usec := MS mod 1000000;
  Result.tv_sec := MS div 1000000;
end;

Function GetClock(Var ClockHigh,ClockLow : Cardinal; Var RetClockSeq : Word) : boolean;
Var
  TV       : TTImeVal;
  QW, ClockReg : QWordRec;
  OK       : Boolean;
begin
  OK:=True;
  Repeat
    Tv:=DateTimeToUnixTV;
    If (Last.tv_sec=0) and (last.tv_sec=0) then
      begin
      GetRandomBytes(ClockSeq,SizeOf(ClockSeq));
      ClockSeq:=ClockSeq and $1FFF;
      last:=TV;
      Dec(last.tv_sec);
      end;
    if (tv.tv_sec<last.tv_sec) or 
        ((tv.tv_sec=last.tv_sec) and (tv.tv_usec<last.tv_usec)) then
      begin
      ClockSeq:=(ClockSeq+1) and $1FFF;
      Adjustment:=0;
      Last:=Tv;
      end
    else if (tv.tv_sec=last.tv_sec) and (tv.tv_usec=last.tv_usec) then
      begin
      If Adjustment>=MAX_ADJUSTMENT then
        OK:=False
      else  
        inc(AdjustMent);
      end
    else
      begin
      AdjustMent:=0;
      Last:=tv;
      end;
  Until OK;
  ClockReg.Q:=tv.tv_usec*10+adjustment;
  QW.Q := tv.tv_sec*10000000;
  Add(ClockReg,QW);
  QW.D2 := $01B21DD2;
  QW.D1 := $13814000;
  Add(ClockReg,QW);
  ClockHigh   :=ClockReg.D2;
  ClockLow    :=ClockReg.D1;
  RetClockSeq :=ClockSeq;
  Result      :=True;
end;

procedure CreateMacGUID(var UU: TGuidRFC4122);
Var
  clock_seq: Word;
begin
  FillMacAddr;
  GetClock(UU.clock_mid,uu.time_low,clock_seq);
  clock_seq:=clock_seq or $8000;
  uu.time_hi_and_version:=uu.time_hi_and_version or $1000;
  uu.clock_seq_hi_and_reserved:=hi(clock_seq);
  uu.clock_seq_low:=lo(clock_seq);
  move(MacAddr,uu.node,sizeof(MacAddr));
end;

procedure CreateMacGUID(var UUStr: String);
const
  cStr = '%s-%s-%s-%s%s-%s%s%s%s%s%s';
var
  UU: TGuidRFC4122;
begin
  CreateMacGUID(UU);
  UUStr := Format(cStr, [
    IntToHex(UU.D1,8),
    IntToHex(UU.D2,4),
    IntToHex(UU.D3,4),
    IntToHex(UU.clock_seq_hi_and_reserved,2),
    IntToHex(UU.clock_seq_low,2),    
    IntToHex(UU.node[0],2),
    IntToHex(UU.node[1],2),
    IntToHex(UU.node[2],2),
    IntToHex(UU.node[3],2),
    IntToHex(UU.node[4],2),
    IntToHex(UU.node[5],2)
    ]);
end;

end.
