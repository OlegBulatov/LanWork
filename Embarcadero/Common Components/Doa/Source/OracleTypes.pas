// Direct Oracle Access - Common Oracle Datatypes
// Copyright 1997 - 2000 Allround Automations
// support@allroundautomations.nl
// http://www.allroundautomations.nl

{$I Oracle.inc}

unit OracleTypes;

interface

uses
{$IFNDEF LINUX}
  {$IFDEF CompilerVersion6} Variants, {$ENDIF}
  OracleCI, Classes, SysUtils, Dialogs, Windows;
{$ELSE}
  OracleCI, Classes, SysUtils, QDialogs, Variants;
{$ENDIF}

type
  TLongPiece = class(TCollectionItem)
  public
    AllocatedSize: Integer;
    ActualSize: Integer;
    PieceBuf: Pub1Array;
    destructor Destroy; override;
  end;

  TFieldData=class(TCollectionItem)
  public
    dbsize:sb4;
    dbtype:sb2;
    name:string;
    prec:sb2;
    scale:sb2;
    nullok:sb2;
    buftype:sb2;
    bufsize:sb4;
    cache:Integer;
    buf:Pub1Array;
    ind:^Tsb2Array;
    rlen:^Tub2Array;
    LongPieces: TCollection;
    TDO: OCIType;
    RefTDO: OCIRef;
    Senvhp: OCIEnv;
    Serrhp: OCIError;
    NullStructs: PPtrArray;
    TypeName: string;
    ObjectTypeCode: OCITypeCode;
    Obj: TObject;
    destructor Destroy; override;
    function  LongSize: Integer;
    procedure SetTDO(ATDO: OCIType; ARefTDO: OCIRef; SessionEnvhp: OCIEnv; SessionErrhp: OCIError);
    procedure FreeObjects;
  end;

  TVariableData=class(TCollectionItem)
  public
    name:string;
    buftype:sb2;              // otString, otInteger, ...
    bufsize:sb4;              // The maximum size of one element
    buf:Pub1Array;            // Pointer to the data
    indp:Psb2Array;           // Pointer to null indicator array
    len:sword;                // Length for Long & Long Raw (not arrays!)
    ArrayLowBound: Integer;   // The low bound of the array
    ArraySize: ub4;           // The size of the array or PL/SQL Table
    IsPLSQLTable: Boolean;    // Is this Variable a PL/SQL Table?
    PLSQLTableElemCount: ub4; // The number of elements in the PL/SQL Table
    BufOwner: boolean;        // Indicates if the variable should free the buffer
    Complex: Boolean;         // Indicates if the variable is complex
    bindhp: OCIBind;          // Bind handle for Net8
    bindbuf: Pub1Array;       // Buffer that was bound for Net8
    destructor Destroy; override;
    procedure  FreeBuffer;
    procedure  ReDim(NewDim, NewSize: Integer; Session: TObject);
    procedure  SetValue(Index: Integer; const AValue: Variant; ASession: TObject);
    function   DisplayString(AQuery: TObject): string;
  end;

  TVariables = class(TPersistent)
  private
    procedure ReadBinaryData(Stream: TStream);
    procedure WriteBinaryData(Stream: TStream);
    function  GetVersion: Integer;
  protected
    procedure DefineProperties(Filer: TFiler); override;
    procedure AssignTo(Dest: TPersistent); override;
  public
    Owner: TComponent;
    List: TCollection;
    constructor Create(AOwner: TComponent);
    destructor  Destroy; override;
    function Data(Index: Integer): TVariableData;
    function Count: Integer;
  end;

function RemoveCR(const s: string; ASession: TObject): string;
function AddCR(const s: string; ASession: TObject): string;

implementation

uses Oracle;

// LongPiece object

destructor TLongPiece.Destroy;
begin
  if (PieceBuf <> nil) and (AllocatedSize > 0) then
    FreeMem(PieceBuf, AllocatedSize);
  inherited;
end;

// FieldData object

destructor TFieldData.Destroy;
var c, LOBType: Integer;
begin
  if Obj <> nil then
  begin
    Obj.Free;
  end;
  if bufType in [otCLOB, otBLOB, otBFile] then
  begin
    if bufType = otBFile then LOBType := OCI_DTYPE_FILE else LOBType := OCI_DTYPE_LOB;
    for c := 0 to Cache - 1 do
      OCIDescriptorFree(PPtrArray(buf)[c], LOBType);
  end;
  if bufType = otCursor then
  begin
    for c := 0 to Cache - 1 do OCIHandleFree(PPtrArray(buf)[c], OCI_HTYPE_STMT);
  end;
  if TDO <> nil then
    OCIObjectUnpin(Senvhp, Serrhp, TDO);
  if RefTDO <> nil then
    OCIObjectFree(Senvhp, Serrhp, RefTDO, OCI_DEFAULT);
  FreeObjects;
  if buf <> nil then FreeMem(buf, bufsize * Cache);
  if ind <> nil then FreeMem(ind, SizeOf(sb2) * Cache);
  if rlen <> nil then FreeMem(rlen, SizeOf(ub2) * Cache);
  if NullStructs <> nil then FreeMem(NullStructs, SizeOf(Pointer) * Cache);
  if LongPieces <> nil then LongPieces.Free;
  inherited;
end;

function TFieldData.LongSize: Integer;
var i: Integer;
begin
  Result := 0;
  if LongPieces <> nil then for i := 0 to LongPieces.Count - 1 do
    Inc(Result, TLongPiece(LongPieces.Items[i]).ActualSize);
end;

// Set Type Descriptor Object. It will be unpinned when the field is freed.
procedure TFieldData.SetTDO(ATDO: OCIType; ARefTDO: OCIRef; SessionEnvhp: OCIEnv; SessionErrhp: OCIError);
begin
  TDO     := ATDO;
  RefTDO  := ARefTDO;
  Senvhp  := SessionEnvhp;
  Serrhp  := SessionErrhp;
end;

// Free object instances and references
procedure TFieldData.FreeObjects;
var c: Integer;
    Instance: Pointer;
begin
  if bufType in [otObject, otReference] then
  begin
    for c := 0 to Cache - 1 do
    begin
      Instance := PPtrArray(buf)[c];
      if Instance <> nil then
        OCIObjectFree(Senvhp, Serrhp, Instance, OCI_DEFAULT);
    end;
    FillChar(buf^, Cache * BufSize, #0);
    if NullStructs <> nil then FillChar(NullStructs^, Cache * SizeOf(Pointer), #0);
  end;
end;

// VariableData object

destructor TVariableData.Destroy;
begin
  FreeBuffer;
  FreeMem(indp, SizeOf(sb2) * ArraySize);
  inherited;
end;

procedure TVariableData.FreeBuffer;
begin
  if (buf <> nil) and bufowner then FreeMem(buf, bufsize * ArraySize);
  buf := nil;
  bufsize := 0;
end;

// Re-dimension the variable
procedure TVariableData.ReDim(NewDim, NewSize: Integer; Session: TObject);
var Max: Integer;
begin
  // If the dimension didn't change, why bother?
  if (NewDim <> ArraySize) or ((NewSize > 0) and (NewSize <> bufsize + 1)) then
  begin
    // Free indicator array and set all nulls (-1 = $FFFF)
    FreeMem(indp, SizeOf(sb2) * ArraySize);
    GetMem(indp, SizeOf(sb2) * NewDim);
    FillChar(indp^, SizeOf(sb2) * NewDim, #$FF);
    // Free buffer array if we own it
    if (buf <> nil) and bufowner then
    begin
      if Session <> nil then
        Max := TOracleSession(Session).MaxVarchar
      else
        Max := 2000;
      FreeMem(buf, bufsize * ArraySize);
      // For OCI7, we cannot bind arrays > 2000 characters
      if (BufType in [otString, otChar]) and (BufSize > Max + 1) then BufSize := Max + 1;
      if NewSize > 0 then bufsize := NewSize + 1;
      GetMem(buf, bufsize * NewDim);
    end;
    ArraySize := NewDim;
  end;
end;

// Remove CR character from a string
function RemoveCR(const s: string; ASession: TObject): string;
var i, j, l: Integer;
begin
  if (ASession = nil) or TOracleSession(ASession).Preferences.ConvertCRLF then
  begin
    l := Length(s);
    SetLength(Result, l);
    j := 0;
    for i := 1 to l do
    begin
      if s[i] <> #13 then
      begin
        Inc(j);
        Result[j] := s[i];
      end;
    end;
    SetLength(Result, j);
  end else begin
    Result := s;
  end;
end;

function AddCR(const s: string; ASession: TObject): string;
begin
  if (ASession = nil) or TOracleSession(ASession).Preferences.ConvertCRLF then
    Result := AdjustLineBreaks(s)
  else
    Result := s;
end;

// Set the value of an array element of a variable
procedure TVariableData.SetValue(Index: Integer; const AValue: Variant; ASession: TObject);
var j: Integer;
    s: string;
    R: Pub1Array;
    D: TDateTime;
    lbuf: Pub1Array;
type PLongInt = ^LongInt;
     PDouble  = ^Double;
begin
  // Check for null values
  if VarIsEmpty(AValue) or VarIsNull(AValue) then
  begin
    indp[Index] := -1;
    if Complex then buf := nil;
    Exit;
  end;
  // Determine the address of this value
  lbuf := @buf^[Index * bufsize];
  // Convert the variant value to the internal Oracle datatype
  try
    case BufType of
      otString,
      otPLSQLString,
      otChar:
      begin
        s := RemoveCR(AValue, ASession);
        j := Length(s);
        if j > bufsize - 1 then j := bufsize - 1;
        if j > 0 then Move(s[1], lbuf^, j);
        lbuf[j] := 0;
        indp[Index] := 0;
      end;
      otInteger:
      begin
        PLongInt(lbuf)^ := AValue;
        indp[Index] := 0;
      end;
      otFloat:
      begin
        PDouble(lbuf)^ := AValue;
        indp[Index] := 0;
      end;
      otDate:
      begin
        if VarType(AValue) and VarTypeMask = VarString then
          D := StrToDateTime(AValue)
        else
          D := AValue;
        if (D = 0) and ((ASession = nil) or (TOracleSession(ASession).Preferences.ZeroDateIsNull)) then
          indp[Index] := -1
        else begin
          DelphiToOracleDate(D, lbuf^);
          indp[Index] := 0;
        end;
      end;
      otLong, otSubst:
      begin
        FreeBuffer;
        bufowner := True;
        s := RemoveCR(AValue, ASession);
        j := Length(s);
        bufsize := j + 1;
        GetMem(buf, bufsize);
        if j > 0 then Move(s[1], buf^, j);
        buf^[j] := 0;
        len := j;
        indp[0] := 0;
      end;
      otLongRaw:
      begin
        if ((VarType(AValue) and VarTypeMask) = varString) then
        begin
          FreeBuffer;
          bufowner := True;
          s := string(AValue);
          bufsize := Length(s);
          GetMem(buf, bufsize);
          if bufsize > 0 then Move(s[1], buf^, bufsize);
          len := bufsize;
          indp[0] := 0;
        end else begin;
          if ((VarType(AValue) and VarTypeMask) <> varByte) or
             (not VarIsArray(AValue)) or
             (VarArrayDimCount(AValue) <> 1) then
            raise Exception.Create('Only one-dimensional array of bytes allowed for ' + Name);
          FreeBuffer;
          bufowner := True;
          bufsize := VarArrayHighBound(AValue, 1) - VarArrayLowBound(AValue, 1) + 1;
          GetMem(buf, bufsize);
          R := VarArrayLock(AValue);
          if bufsize > 0 then Move(R^, buf^, bufsize);
          VarArrayUnlock(AValue);
          len := bufsize;
          indp[0] := 0;
        end;
      end;
      else begin
        if not Complex then
          raise Exception.Create('Unsupported variable type for ' + Name)
        else begin
          if VarType(AValue) and VarTypeMask = VarInteger then
          begin
            buf := Pointer(LongInt(AValue));
            if buf = nil then indp[0] := -1 else indp[0] := 0;
          end else
            raise Exception.Create('Pass LongInt(Object) to complex variable ' + Name);
        end;
      end;
    end;
  except on E:EVariantError do
    raise Exception.Create('Variant conversion error for variable ' + Name);
  end;
end;

function TVariableData.DisplayString(AQuery: TObject): string;
var V: Variant;
begin
  if IsPLSQLTable then
    Result := '(PL/SQL Table)'
  else if ArraySize > 1 then
    Result := '(Array)'
  else begin
    case buftype of
      otLongRaw: Result := '(Long Raw)';
         otLong: Result := '(Long)';
       otCursor: Result := '(Cursor)';
         otCLOB: Result := '(CLOB)';
         otBLOB: Result := '(BLOB)';
        otBFile: Result := '(BFile)';
    otReference: Result := '(Reference)';
       otObject: Result := '(Object)';
      else begin
        V := TOracleQuery(AQuery).GetVariable(Name);
        if VarIsEmpty(V) or (V = Null) then V := 'Null';
        Result := string(V);
      end;
    end;
  end;
end;

// Variables Object

constructor TVariables.Create(AOwner: TComponent);
begin
  List  := TCollection.Create(TVariableData);
  Owner := AOwner;
end;

destructor TVariables.Destroy;
begin
  List.Free;
end;

procedure TVariables.AssignTo(Dest: TPersistent);
var i, StringSize: Integer;
    Q: TOracleQuery;
begin
  if Dest is TVariables then
  begin
    if (not (Owner is TOracleQuery)) or
       (not (TVariables(Dest).Owner is TOracleQuery)) then
      raise EConvertError.Create('Can only Assign TVariables owned by a TOracleQuery');
    Q := TOracleQuery(TVariables(Dest).Owner);
    Q.DeleteVariables;
    for i := 0 to Count - 1 do
    begin
      with Data(i) do
      begin
        Q.DeclareVariable(Name, BufType);
        if not IsPLSQLTable then
          Q.SetVariable(Name, TOracleQuery(Owner).GetVariable(Name))
        else begin
          if BufType = otString then StringSize := BufSize - 1 else StringSize := 0;
          Q.DimPLSQLTable(Name, ArraySize, StringSize);
        end;
      end;
    end;
    Exit;
  end;
  inherited;
end;

function TVariables.Count: Integer;
begin
  Result := List.Count;
end;

function TVariables.Data(Index: Integer): TVariableData;
begin
  Result := List.Items[Index] as TVariableData;
end;

function TVariables.GetVersion: Integer;
begin
  Result := 3;
end;

procedure TVariables.ReadBinaryData(Stream: TStream);
var i, Temp, NumItems, Ver, BufType, BufSize, TableSize, StringSize: Integer;
    VData: TVariableData;
    NameStr: string;
    Q: TOracleQuery;
begin
  List.Clear;
  with Stream do
  begin
    ReadBuffer(Ver, SizeOf(Temp));
    if Ver > GetVersion then
      raise Exception.Create('Invalid version of Query variables');
    ReadBuffer(NumItems, SizeOf(NumItems));
    for i := 0 to NumItems - 1 do
    begin
      // Length of name
      ReadBuffer(Temp, SizeOf(Temp));
      // Name
      SetLength(NameStr, Temp);
      ReadBuffer(PChar(NameStr)^, Temp);
      // Type
      ReadBuffer(BufType, SizeOf(BufType));
      Q := (Owner as TOracleQuery);
      Q.DeclareVariable(NameStr, BufType);
      // Version 2 stores value
      if Ver >= 2 then
      begin
        ReadBuffer(BufSize, SizeOf(BufSize));
        if BufSize > 0 then
        begin
          VData := Q.Variables.Data(i);
          // Is this a dynamically allocated variable?
          if VData.buf = nil then
          begin
            GetMem(VData.buf, BufSize);
            VData.BufSize := BufSize;
            VData.Len := BufSize;
          end;
          ReadBuffer(VData.buf^, BufSize);
          VData.indp[0] := 0;
        end;
      end;
      // Version 3 stores PL/SQL Table information
      if Ver >= 3 then
      begin
        // IsPLSQLTable
        ReadBuffer(Temp, SizeOf(Temp));
        if Temp = 1 then
        begin
          // TableSize
          ReadBuffer(TableSize, SizeOf(TableSize));
          // StringSize
          ReadBuffer(StringSize, SizeOf(StringSize));
          Q.DimPLSQLTable(NameStr, TableSize, StringSize);
        end;
      end;
    end;
  end;
end;

procedure TVariables.WriteBinaryData(Stream: TStream);
var i, Temp: Integer;
begin
  // Write Version, Count, {Length of name, name, type, value, IsPLSQLTable, TableSize, StringSize}
  with Stream do
  begin
    Temp := GetVersion;
    WriteBuffer(Temp, SizeOf(Temp));
    Temp := Count;
    WriteBuffer(Temp, SizeOf(Temp));
    for i := 0 to Count - 1 do with Data(i) do
    begin
      Temp := Length(Name);
      WriteBuffer(Temp, SizeOf(Temp));
      WriteBuffer(PChar(Name)^, Temp);
      Temp := BufType;
      WriteBuffer(Temp, SizeOf(Temp));
      if indp[0] < 0 then
      begin
        Temp := 0;
        WriteBuffer(Temp, SizeOf(Temp));
      end else begin
        Temp := BufSize;
        if BufType in [otString, otSubst, otPLSQLString, otChar] then
          Temp := Length(PChar(buf)) + 1;
        WriteBuffer(Temp, SizeOf(Temp));
        WriteBuffer(buf^, Temp);
      end;
      if IsPLSQLTable then Temp := 1 else Temp := 0;
      WriteBuffer(Temp, SizeOf(Temp));
      if IsPLSQLTable then
      begin
        Temp := ArraySize;
        WriteBuffer(Temp, SizeOf(Temp));
        if BufType in [otString, otSubst, otPLSQLString, otChar] then
          Temp := BufSize - 1 else Temp := 0;
        WriteBuffer(Temp, SizeOf(Temp));
      end;
    end;
  end;
end;

procedure TVariables.DefineProperties(Filer: TFiler);
var AV: TVariables;
    v: Integer;
    TheSame: Boolean;
    DataSize1, DataSize2: Integer;
    V1, V2: TVariableData;
    DoWrite: Boolean;
begin
  inherited DefineProperties(Filer);
  // Is there an ancestor? If so, we must compare the properties
  AV := Filer.Ancestor as TVariables;
  if AV = nil then
    DoWrite := (Count > 0)
  else begin
    // Compare everything: Number of variables, all variable names, types and values
    TheSame := (AV.Count = Count);
    if TheSame then for v := 0 to Count - 1 do
    begin
      V1 := Data(v);
      V2 := AV.Data(v);
      if (V1.Name         <> V2.Name) or
         (V1.BufType      <> V2.BufType) or
         (V1.indp[0]      <> V2.indp[0]) or
         (V1.IsPLSQLTable <> V2.IsPLSQLTable) then TheSame := False;
      if (V1.IsPLSQLTable) and
         ((V1.ArraySize <> V2.ArraySize) or
          (V1.BufSize   <> V2.BufSize)) then TheSame := False;
      if V1.indp[0] >= 0 then
      begin
        DataSize1 := V1.BufSize;
        DataSize2 := V2.BufSize;
        if V1.BufType in [otString, otSubst, otPLSQLString, otChar] then
          DataSize1 := Length(PChar(V1.buf)) + 1;
        if V2.BufType in [otString, otSubst, otPLSQLString, otChar] then
          DataSize2 := Length(PChar(V2.buf)) + 1;
        if (DataSize1 <> DataSize2) or not CompareMem(V1.buf, V2.buf, DataSize1) then
          TheSame := False;
      end;
    end;
    DoWrite := not TheSame;
  end;
  Filer.DefineBinaryProperty('Data', ReadBinaryData, WriteBinaryData, DoWrite);
end;

end.

