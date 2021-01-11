{*******************************************************}
{                                                       }
{                     EhLib vX.X                        }
{                                                       }
{            TMemTableEh component (Build 5)            }
{                                                       }
{      Copyright (c) 2003 by Dmitry V. Bolshakov        }
{                                                       }
{*******************************************************}

unit MemTableEh;

{$I EHLIB.INC}

interface

uses Windows, SysUtils, Classes, Controls, DB,
{$IFDEF EH_LIB_6} Variants, {$ENDIF}
{$IFDEF EH_LIB_5} Contnrs, {$ENDIF}
  ToolCtrlsEh, DBCommon, MemTableDataEh;

type

  TCustomMemTableEh = class;

  TLoadMode = (lmCopy, lmAppend);

{ TMasterDataLinkEh }

  TMasterDataLinkEh = class(TDetailDataLink)
  private
    FDataSet: TDataSet;
    FFieldNames: string;
    FFields: TList;
    FOnMasterChange: TNotifyEvent;
    FOnMasterDisable: TNotifyEvent;
    procedure SetFieldNames(const Value: string);
  protected
    function GetDetailDataSet: TDataSet; override;
    procedure ActiveChanged; override;
    procedure CheckBrowseMode; override;
    procedure LayoutChanged; override;
    procedure RecordChanged(Field: TField); override;
  public
    constructor Create(DataSet: TDataSet);
    destructor Destroy; override;
    property FieldNames: string read FFieldNames write SetFieldNames;
    property Fields: TList read FFields;
    property OnMasterChange: TNotifyEvent read FOnMasterChange write FOnMasterChange;
    property OnMasterDisable: TNotifyEvent read FOnMasterDisable write FOnMasterDisable;
  end;

{ TCustomMemTableEh }

  TMasterDetailSideEh = (mdsOnSelfEh, mdsOnProviderEh);

  TMTUpdateActionEh = (uaFailEh, uaAbortEh, uaSkipEh, uaRetryEh, uaApplyEh, uaAppliedEh);

  TMTUpdateRecordEventEh = procedure(DeltaDataSet: TDataSet; UpdateKind: TUpdateKind;
    var UpdateAction: TMTUpdateActionEh) of object;

  TMTFetchRecordEventEh = procedure(PacketDataSet: TDataSet; var ProviderEOF,
    Applied: Boolean) of object;

  TMTRefreshRecordEventEh = procedure(PacketDataSet: TDataSet; var Applied: Boolean)
    of object;

  TCustomMemTableEh = class(TDataSet, IMemTableEh, IUnknown)
  private
    FActive: Boolean;
    FAutoInc: Longint;
    FDataRecordSize: Integer;
    FDetailFieldList: TList;
    FDetailFields: String;
    FDetailMode: Boolean;
    FInstantBuffer: PChar;
    FInstantReadCurRow: Integer;
    FFetchAllOnOpen: Boolean;
    FKeyFields: String;
    FMasterDetailSide: TMasterDetailSideEh;
    FMasterValues: Variant;
    FOnFetchRecord: TMTFetchRecordEventEh;
    FOnUpdateRecord: TMTUpdateRecordEventEh;
    FOrderByList: TList;
    FParams: TParams;
    FProviderDataSet: TDataSet;
    FProviderEOF: Boolean;
    FReadOnly: Boolean;
    FRecBufSize: Integer;
    FRecordPos: Integer;
    FRecordsView: TRecordsViewEh;
    FFilterExpr: TDataSetExprParserEh;
    FCachedUpdates: Boolean;
    function FindFieldData(Buffer: Pointer; Field: TField): Pointer;
    function GetCachedUpdates: Boolean;
    function GetDataFieldsCount: Integer;
    function GetInstantReadCurRow: Integer;
    function GetMasterFields: String;
    function GetMasterSource: TDataSource;
    function IsRecordInFilter(RecValues: PRecValues): Boolean;
    procedure ClearRecords;
    procedure InitBufferPointers(GetProps: Boolean);
    procedure RefreshParams;
    procedure SetCachedUpdates(const Value: Boolean);
    procedure SetDetailFields(const Value: String);
    procedure SetKeyFields(const Value: String);
    procedure SetMasterDetailSide(const Value: TMasterDetailSideEh);
    procedure SetMasterFields(const Value: String);
    procedure SetMasterSource(const Value: TDataSource);
    procedure SetParams(const Value: TParams);
    procedure SetParamsFromCursor;
    procedure SetProviderDataSet(const Value: TDataSet);
    procedure SortData(SortList: TList);
    procedure AncestorNotFound(Reader: TReader; const ComponentName: string; ComponentClass: TPersistentClass; var Component: TComponent);
    procedure CreateComponent(Reader: TReader; ComponentClass: TComponentClass; var Component: TComponent);
    procedure SetAggregatesActive(const Value: Boolean);
    function GetAggregatesActive: Boolean;
  protected
    FInstantReadMode: Boolean;
    FMasterDataLink: TMasterDataLinkEh;

    procedure RecreateFilterExpr;
    procedure DestroyFilterExpr;

{$IFNDEF EH_LIB_5}
    function BCDToCurr(BCD: Pointer; var Curr: Currency): Boolean; override;
    function CurrToBCD(const Curr: Currency; BCD: Pointer; Precision,
      Decimals: Integer): Boolean; override;
{$ENDIF}
    function AllocRecordBuffer: PChar; override;
    function ApplyUpdate(OldRecValues, NewRecValues: PRecValues; UpdateKind: TUpdateKind; TargetDataSet: TDataSet; OutRecValues: PRecValues): Integer;
    function CompareRecords(Item1, Item2: PRecValues): Integer; virtual;
    function CreateDeltaDataSet: TCustomMemTableEh;
    function DoFetchRecords(Count: Integer): Integer;
    function GetActiveRecBuf(var RecBuf: PChar): Boolean; virtual;
    function GetAggregateValue(Field: TField): Variant; override;
    function GetBlobData(Field: TField; Buffer: PChar): TMemBlobData;
    function GetBookmarkFlag(Buffer: PChar): TBookmarkFlag; override;
    function GetBookmarkStr: TBookmarkStr; override;
    function GetCanModify: Boolean; override;
    function GetRecNo: Integer; override;
    function GetRecord(Buffer: PChar; GetMode: TGetMode; DoCheck: Boolean): TGetResult; override;
    function GetRecordCount: Integer; override;
    function GetRecordSize: Word; override;
    function IsCursorOpen: Boolean; override;
    function InternalApplyUpdates(MaxErrors: Integer): Integer; virtual;
//    function LocateProviderRec: Boolean; virtual;
    function UpdateRecord(DeltaDataSet: TDataSet; UpdateKind: TUpdateKind; RefreshRecord: Boolean): Integer; virtual;
    procedure ClearCalcFields(Buffer: PChar); override;
    procedure CloseBlob(Field: TField); override;
    procedure CopyBuffer(FromBuf, ToBuf: PChar);
    procedure CreateFields; override;
    procedure DataEvent(Event: TDataEvent; Info: Longint); override;
    procedure DoOnNewRecord; override;
    procedure DoOrderBy(const OrderByStr: String); virtual;
    procedure FieldValueToVarValue(FieldBuffer: Pointer; var VarValue: Variant; Field: TField);
    procedure FreeRecordBuffer(var Buffer: PChar); override;
    procedure GetBookmarkData(Buffer: PChar; Data: Pointer); override;
    procedure ReadState(Reader: TReader); override;
    procedure GetChildren(Proc: TGetChildProc; Root: TComponent); override;
    procedure InitFieldDefsFromFields;
    procedure InitRecord(Buffer: PChar); override;
    procedure InternalAddRecord(Buffer: Pointer; Append: Boolean); override;
    procedure InternalCancel; override;
    procedure InternalClose; override;
    procedure InternalDelete; override;
    procedure InternalFirst; override;
    procedure InternalGotoBookmark(Bookmark: TBookmark); override;
    procedure InternalHandleException; override;
    procedure InternalInitFieldDefs; override;
    procedure InternalInitRecord(Buffer: PChar); override;
    procedure InternalInsert; override;
    procedure InternalLast; override;
    procedure InternalOpen; override;
    procedure InternalPost; override;
    procedure InternalRefresh; override;
    procedure InternalSetToRecord(Buffer: PChar); override;
    procedure MasterChange(Sender: TObject);
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure OpenCursor(InfoQuery: Boolean); override;
    procedure RecordToBuffer(Rec: PRecValues; Buffer: PChar);
    procedure ResetAggField(Field: TField); override;
    procedure SetAutoIncFields(Buffer: PChar); virtual;
    procedure SetBlobData(Field: TField; Buffer: PChar; Value: TMemBlobData);
    procedure SetBookmarkData(Buffer: PChar; Data: Pointer); override;
    procedure SetBookmarkFlag(Buffer: PChar; Value: TBookmarkFlag); override;
    procedure SetFieldData(Field: TField; Buffer: Pointer); override;
    procedure SetFiltered(Value: Boolean); override;
    procedure SetMemoryRecordData(Buffer: PChar; ARecValues: PRecValues); virtual;
    procedure SetOnFilterRecord(const Value: TFilterRecordEvent); override;
    procedure SetRecNo(Value: Integer); override;
    procedure UpdateDetailMode(AutoRefresh: Boolean);
//    procedure UpdateThroughProvider(MemRec: TMemoryRecordEh; NewBuffer: PChar; UpdateKind: TUpdateKind; RecPos: Integer);
    procedure VarValueToFieldValue(VarValue: Variant; FieldBuffer: Pointer; Field: TField);
    property AggregatesActive: Boolean read GetAggregatesActive write SetAggregatesActive default False;
    property DataFieldsCount: Integer read GetDataFieldsCount;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    function ApplyUpdates(MaxErrors: Integer): Integer; virtual;
    function BookmarkValid(Bookmark: TBookmark): Boolean; override;
    function CompareBookmarks(Bookmark1, Bookmark2: TBookmark): Integer; override;
    function CreateBlobStream(Field: TField; Mode: TBlobStreamMode): TStream; override;
    function DefaultFetchRecord(PacketDataSet: TDataSet; var ProviderEOF: Boolean): Integer;
    function DefaultUpdateRecord(DeltaDataSet: TDataSet; UpdateKind: TUpdateKind; RefreshRecord: Boolean): Integer; virtual;
    function FetchRecords(Count: Integer): Integer;
    function FindRec(const KeyFields: string; const KeyValues: Variant; Options: TLocateOptions): Integer;
    function GetCurrentRecord(Buffer: PChar): Boolean; override;
    function GetFieldData(Field: TField; Buffer: Pointer): Boolean; override;
    function InstantReadIndexOfBookmark(Bookmark: TBookmark): Integer;
    function InstantReadRowCount: Integer;
    function IsSequenced: Boolean; override;
    function LoadFromDataSet(Source: TDataSet; RecordCount: Integer; Mode: TLoadMode): Integer;
    function Locate(const KeyFields: string; const KeyValues: Variant; Options: TLocateOptions): Boolean; override;
    function Lookup(const KeyFields: string; const KeyValues: Variant; const ResultFields: string): Variant; override;
    function SaveToDataSet(Dest: TDataSet; RecordCount: Integer): Integer;
    function UpdateStatus: TUpdateStatus; override;
    procedure CancelUpdates;
    procedure CreateDataSet;
    procedure CopyStructure(Source: TDataSet);
    procedure EmptyTable;
    procedure InstantReadEnter(RowNum: Integer);
    procedure InstantReadLeave;
    procedure FetchParams;
    procedure MergeChangeLog;
    procedure SortByFields(const SortByStr: string);
    procedure RefreshRecord;
    procedure RevertRecord;
    procedure SetFilterText(const Value: string); override;

    property CachedUpdates: Boolean read GetCachedUpdates write SetCachedUpdates default False;
    property DetailFields: String read FDetailFields write SetDetailFields;
    property InstantReadCurRow: Integer read GetInstantReadCurRow;
    property FetchAllOnOpen: Boolean read FFetchAllOnOpen write FFetchAllOnOpen default False;
    property KeyFields: String read FKeyFields write SetKeyFields;
    property MasterDetailSide: TMasterDetailSideEh read FMasterDetailSide write SetMasterDetailSide default mdsOnSelfEh;
    property MasterFields: String read GetMasterFields write SetMasterFields;
    property MasterSource: TDataSource read GetMasterSource write SetMasterSource;
    property Params: TParams read FParams write SetParams;
    property ProviderDataSet: TDataSet read FProviderDataSet write SetProviderDataSet;
    property ProviderEOF: Boolean read FProviderEOF;
    property ReadOnly: Boolean read FReadOnly write FReadOnly default False;
    property OnUpdateRecord: TMTUpdateRecordEventEh read FOnUpdateRecord write FOnUpdateRecord;
    property OnFetchRecord: TMTFetchRecordEventEh read FOnFetchRecord write FOnFetchRecord;

    property RecordsView: TRecordsViewEh read FRecordsView;
  end;

{ TMemBlobStreamEh }

  TMemBlobStreamEh = class(TStream)
  private
    FBuffer: PChar;
    FCached: Boolean;
    FDataSet: TCustomMemTableEh;
    FField: TBlobField;
    FMode: TBlobStreamMode;
    FModified: Boolean;
    FOpened: Boolean;
    FPosition: Longint;
    function GetBlobFromRecord(Field: TField): TMemBlobData;
    function GetBlobSize: Longint;
  public
    constructor Create(Field: TBlobField; Mode: TBlobStreamMode);
    destructor Destroy; override;
    function Read(var Buffer; Count: Longint): Longint; override;
    function Seek(Offset: Longint; Origin: Word): Longint; override;
    function Write(const Buffer; Count: Longint): Longint; override;
    procedure Truncate;
  end;

{ TMemTableEh }

  TMemTableEh = class(TCustomMemTableEh)
  published
    property Active;
    property AggregatesActive;
    property AutoCalcFields;
    property CachedUpdates;
    property DetailFields;
    property FieldDefs;
    property Filtered;
    property FetchAllOnOpen; //FetchAllOnOpen
    property KeyFields;
    property MasterDetailSide;
    property MasterFields;
    property MasterSource;
    property Params;
    property ProviderDataSet;
    property ReadOnly;
//    property ObjectView default False;

    property BeforeOpen;
    property AfterOpen;
    property BeforeClose;
    property AfterClose;
    property BeforeInsert;
    property AfterInsert;
    property BeforeEdit;
    property AfterEdit;
    property BeforePost;
    property AfterPost;
    property BeforeCancel;
    property AfterCancel;
    property BeforeDelete;
    property AfterDelete;
    property BeforeScroll;
    property AfterScroll;
    property BeforeRefresh;
    property AfterRefresh;
    property OnCalcFields;
    property OnDeleteError;
    property OnEditError;
    property OnFetchRecord;
    property OnFilterRecord;
    property OnNewRecord;
    property OnPostError;
    property OnUpdateRecord;
  end;

implementation

uses Forms, DbConsts, Math;

resourcestring
  SMemNoRecords = 'No data found';

const
  ftBlobTypes = [ftBlob, ftMemo, ftGraphic, ftFmtMemo, ftParadoxOle,
    ftDBaseOle, ftTypedBinary {$IFDEF EH_LIB_5}, ftOraBlob, ftOraClob {$ENDIF}];

  ftSupported = [ftString, ftSmallint, ftInteger, ftWord, ftBoolean, ftFloat,
    ftCurrency, ftDate, ftTime, ftDateTime, ftAutoInc, ftBCD, ftBytes,
    ftVarBytes, ftADT, ftFixedChar, ftWideString,
    ftLargeint {$IFDEF EH_LIB_5}, ftVariant, ftGuid {$ENDIF}] +
    ftBlobTypes;

  fkStoredFields = [fkData];

{$IFDEF EH_LIB_5}
  GuidSize = 38;
{$ENDIF}

type
  PRecInfo = ^TRecInfo;
  TRecInfo = packed record
    Bookmark: TRecIdEh;
    BookmarkFlag: TBookmarkFlag;
    RecordStatus: Integer;
    RecordNumber: Integer;
  end;

  TFieldValBuf = packed record
    IsNull: Boolean;
    DataValue: String;
  end;

  PFieldValBuf = ^TFieldValBuf;

//  TRecBufValues = array [0..0] of Pointer;
//  PRecBufValues = ^TRecBufValues;
  TFBRecBufValues = array of TFieldValBuf;

  TRecBuf = packed record
    RecInfo: TRecInfo;
    Values: TFBRecBufValues;
  end;

  PRecBuf = ^TRecBuf;

{ Utility routines }

function CompareFields(Data1, Data2: Pointer; FieldType: TFieldType;
  CaseInsensitive: Boolean): Integer;
begin
  Result := 0;
  case FieldType of
    ftString:
      if CaseInsensitive then
        Result := AnsiCompareText(PChar(Data1), PChar(Data2))
      else
        Result := AnsiCompareStr(PChar(Data1), PChar(Data2));
    ftSmallint:
      if SmallInt(Data1^) > SmallInt(Data2^) then
        Result := 1
      else if SmallInt(Data1^) < SmallInt(Data2^) then
        Result := -1;
    ftInteger, ftDate, ftTime, ftAutoInc:
      if Longint(Data1^) > Longint(Data2^) then
        Result := 1
      else if Longint(Data1^) < Longint(Data2^) then
        Result := -1;
    ftWord:
      if Word(Data1^) > Word(Data2^) then Result := 1
      else if Word(Data1^) < Word(Data2^) then Result := -1;
    ftBoolean:
      if WordBool(Data1^) and not WordBool(Data2^) then Result := 1
      else if not WordBool(Data1^) and WordBool(Data2^) then Result := -1;
    ftFloat, ftCurrency:
      if Double(Data1^) > Double(Data2^) then Result := 1
      else if Double(Data1^) < Double(Data2^) then Result := -1;
    ftDateTime:
      if TDateTime(Data1^) > TDateTime(Data2^) then Result := 1
      else if TDateTime(Data1^) < TDateTime(Data2^) then Result := -1;
    ftFixedChar:
      if CaseInsensitive then
        Result := AnsiCompareText(PChar(Data1), PChar(Data2))
      else
        Result := AnsiCompareStr(PChar(Data1), PChar(Data2));
    ftWideString:
      if CaseInsensitive then
        Result := AnsiCompareText(WideCharToString(PWideChar(Data1)),
          WideCharToString(PWideChar(Data2)))
      else
        Result := AnsiCompareStr(WideCharToString(PWideChar(Data1)),
          WideCharToString(PWideChar(Data2)));
    ftLargeint:
      if Int64(Data1^) > Int64(Data2^) then Result := 1
      else if Int64(Data1^) < Int64(Data2^) then Result := -1;
{$IFDEF EH_LIB_5}
    ftVariant:
      Result := 0;
    ftGuid:
      Result := AnsiCompareText(PChar(Data1), PChar(Data2));
{$ENDIF}
  end;
end;

function CalcFieldLen(FieldType: TFieldType; Size: Word): Word;
begin
  if not (FieldType in ftSupported) then
    Result := 0
  else if (FieldType in ftBlobTypes) then
    Result := SizeOf(Longint)
  else
  begin
    Result := Size;
    case FieldType of
      ftString: Inc(Result);
      ftSmallint: Result := SizeOf(SmallInt);
      ftInteger: Result := SizeOf(Longint);
      ftWord: Result := SizeOf(Word);
      ftBoolean: Result := SizeOf(WordBool);
      ftFloat: Result := SizeOf(Double);
      ftCurrency: Result := SizeOf(Double);
      ftBCD: Result := 34;
      ftDate, ftTime: Result := SizeOf(Longint);
      ftDateTime: Result := SizeOf(TDateTime);
      ftBytes: Result := Size;
      ftVarBytes: Result := Size + 2;
      ftAutoInc: Result := SizeOf(Longint);
      ftADT: Result := 0;
      ftFixedChar: Inc(Result);
      ftWideString: Result := (Result + 1) * 2;
      ftLargeint: Result := SizeOf(Int64);
{$IFDEF EH_LIB_5}
      ftVariant: Result := SizeOf(Variant);
      ftGuid: Result := GuidSize + 1;
{$ENDIF}
    end;
  end;
end;

procedure CalcDataSize(FieldDef: TFieldDef; var DataSize: Integer);
var
  I: Integer;
begin
  with FieldDef do
  begin
    if (DataType in ftSupported - ftBlobTypes) then
      Inc(DataSize, CalcFieldLen(DataType, Size) + 1);
    for I := 0 to ChildDefs.Count - 1 do
      CalcDataSize(ChildDefs[I], DataSize);
  end;
end;

procedure Error(const Msg: string);
begin
  DatabaseError(Msg);
end;

procedure ErrorFmt(const Msg: string; const Args: array of const);
begin
  DatabaseErrorFmt(Msg, Args);
end;

//{$DEBUGINFO OFF}
function VarEquals(const V1, V2: Variant): Boolean;
var i: Integer;
begin
  Result := not (VarIsArray(V1) xor VarIsArray(V2));
  if not Result then Exit;
  Result := False;
  try
    if VarIsArray(V1) and VarIsArray(V2) and
      (VarArrayDimCount(V1) = VarArrayDimCount(V2)) and
      (VarArrayLowBound(V1, 1) = VarArrayLowBound(V2, 1)) and
      (VarArrayHighBound(V1, 1) = VarArrayHighBound(V2, 1))
      then
      for i := VarArrayLowBound(V1, 1) to VarArrayHighBound(V1, 1) do
      begin
        Result := V1[i] = V2[i];
        if not Result then Exit;
      end
    else
      Result := V1 = V2;
  except
  end;
end;
//{$DEBUGINFO ON}

function GetOldFieldValue(DataSet: TDataSet; const FieldName: string): Variant;
var
  I: Integer;
  Fields: TList;
begin
  if Pos(';', FieldName) <> 0 then
  begin
    Fields := TList.Create;
    try
      DataSet.GetFieldList(Fields, FieldName);
      Result := VarArrayCreate([0, Fields.Count - 1], varVariant);
      for I := 0 to Fields.Count - 1 do
        Result[I] := TField(Fields[I]).OldValue;
    finally
      Fields.Free;
    end;
  end else
    Result := DataSet.FieldByName(FieldName).OldValue
end;

{ TMasterDataLinkEh }

constructor TMasterDataLinkEh.Create(DataSet: TDataSet);
begin
  inherited Create;
  FDataSet := DataSet;
  FFields := TList.Create;
end;

destructor TMasterDataLinkEh.Destroy;
begin
  FFields.Free;
  inherited Destroy;
end;

procedure TMasterDataLinkEh.ActiveChanged;
begin
  FFields.Clear;
  if Active then
    try
      DataSet.GetFieldList(FFields, FFieldNames);
    except
      FFields.Clear;
      raise;
    end;
  if FDataSet.Active and not (csDestroying in FDataSet.ComponentState) then
    if Active {and (FFields.Count > 0)} then
    begin
      if Assigned(FOnMasterChange) then FOnMasterChange(Self);
    end else
      if Assigned(FOnMasterDisable) then FOnMasterDisable(Self);
end;

procedure TMasterDataLinkEh.CheckBrowseMode;
begin
  if FDataSet.Active then FDataSet.CheckBrowseMode;
end;

function TMasterDataLinkEh.GetDetailDataSet: TDataSet;
begin
  Result := FDataSet;
end;

procedure TMasterDataLinkEh.LayoutChanged;
begin
  ActiveChanged;
end;

procedure TMasterDataLinkEh.RecordChanged(Field: TField);
begin
  if (DataSource.State <> dsSetKey) and FDataSet.Active and
    {(FFields.Count > 0) and }((Field = nil) or
    (FFields.IndexOf(Field) >= 0)) and
     Assigned(FOnMasterChange)
  then
    FOnMasterChange(Self);
end;

procedure TMasterDataLinkEh.SetFieldNames(const Value: string);
begin
  if FFieldNames <> Value then
  begin
    FFieldNames := Value;
    ActiveChanged;
  end;
end;

{ TCustomMemTableEh }

constructor TCustomMemTableEh.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FRecordPos := -1;
  FInstantReadCurRow := -1;
  FAutoInc := 1;
  FRecordsView := TRecordsViewEh.Create(Self);
  FRecordsView.OnFilterRecord := IsRecordInFilter;
  FMasterDataLink := TMasterDataLinkEh.Create(Self);
  FMasterDataLink.OnMasterChange := MasterChange;
  FDetailFieldList := TList.Create;
  FParams := TParams.Create(Self);
  FFilterExpr := TDataSetExprParserEh.Create(Self, dsptFilterEh);
end;

destructor TCustomMemTableEh.Destroy;
begin
  Close;
  FFilterExpr.Free;
  FParams.Free;
  FDetailFieldList.Clear;
  FDetailFieldList.Free;
  ClearRecords;
  FRecordsView.Free;
  FMasterDataLink.Free;
  inherited Destroy;
end;

{ Field Management }

{$IFNDEF EH_LIB_5}

function TCustomMemTableEh.BCDToCurr(BCD: Pointer; var Curr: Currency): Boolean;
begin
  Move(BCD^, Curr, SizeOf(Currency));
  Result := True;
end;

function TCustomMemTableEh.CurrToBCD(const Curr: Currency; BCD: Pointer; Precision,
  Decimals: Integer): Boolean;
begin
  Move(Curr, BCD^, SizeOf(Currency));
  Result := True;
end;

{$ENDIF EH_LIB_5}

procedure TCustomMemTableEh.InitFieldDefsFromFields;
var
  I: Integer;
begin
  if FieldDefs.Count = 0 then
  begin
    for I := 0 to FieldCount - 1 do
    begin
      with Fields[I] do
        if (FieldKind in fkStoredFields) and not (DataType in ftSupported) then
          ErrorFmt(SUnknownFieldType, [DisplayName]);
    end;
//    FreeIndexList;
  end;

  inherited InitFieldDefsFromFields;
end;

function TCustomMemTableEh.FindFieldData(Buffer: Pointer; Field: TField): Pointer;
//var
//  Index: Integer;
begin
{ddd  Index := FieldDefList.IndexOf(Field.FullName);
  if (Index >= 0) and (Buffer <> nil) and
    (FieldDefList[Index].DataType in ftSupported - ftBlobTypes) then
    Result := (PChar(Buffer) + FOffsets[Index])
  else Result := nil;
}
{  if (Buffer <> nil)
    then Result := PRecValues(Buffer)^[Field.FieldNo]
    else Result := nil;}
  Result := nil;
end;

{ Buffer Manipulation }

procedure TCustomMemTableEh.InitBufferPointers(GetProps: Boolean);
begin
  if GetProps then
    FDataRecordSize := (Fields.Count * SizeOf(OleVariant));

  FRecBufSize := SizeOf(TRecInfo) + (Fields.Count * SizeOf(Pointer));
end;

procedure TCustomMemTableEh.ClearRecords;
begin
  RecordsView.MemTableData.RecordsList.Clear;
  FRecordPos := -1;
  FInstantReadCurRow := -1;
end;

function TCustomMemTableEh.AllocRecordBuffer: PChar;
var
  RecBuf: PRecBuf;
  I: Integer;
begin
  New(RecBuf);
  SetLength(RecBuf^.Values, FieldCount);
  for I := 0 to Fields.Count - 1 do
    RecBuf^.Values[I].IsNull := True;
  RecBuf^.RecInfo.RecordStatus := -1;
  Result := PChar(RecBuf);
end;

procedure TCustomMemTableEh.FreeRecordBuffer(var Buffer: PChar);
var
  RecBuf: PRecBuf;
begin
  RecBuf := PRecBuf(Buffer);
  SetLength(RecBuf^.Values, 0);
  Dispose(RecBuf);
  Buffer := nil;
end;

procedure TCustomMemTableEh.ClearCalcFields(Buffer: PChar);
var
  I: Integer;
begin
  if CalcFieldsSize > 0 then
    for I := 0 to Fields.Count - 1 do
      with Fields[I] do
        if FieldKind in [fkCalculated, fkLookup] then
          PRecBuf(Buffer)^.Values[Offset + DataFieldsCount].IsNull := True;
end;

procedure TCustomMemTableEh.InternalInitRecord(Buffer: PChar);
var
  I: Integer;
begin
  for I := 0 to Fields.Count - 1 do
    PRecBuf(Buffer)^.Values[I].IsNull := True;
end;

procedure TCustomMemTableEh.InitRecord(Buffer: PChar);
begin
  inherited InitRecord(Buffer);

  with PRecBuf(Buffer)^.RecInfo do
  begin
    Bookmark := Low(TRecIdEh);
    BookmarkFlag := bfInserted;
//    RecordStatus := 0;
    RecordNumber := FRecordPos;
  end;
end;

function TCustomMemTableEh.GetCurrentRecord(Buffer: PChar): Boolean;
begin
  Result := False;
{  if not IsEmpty and (GetBookmarkFlag(ActiveBuffer) = bfCurrent) then
  begin
    UpdateCursorPos;
    if (FRecordPos >= 0) and (FRecordPos < RecordCount) then
    begin
      Move(FRecords[FRecordPos]^, Buffer^, FDataRecordSize);
      Result := True;
    end;
  end;
}
end;

procedure TCustomMemTableEh.RecordToBuffer(Rec: PRecValues; Buffer: PChar);
var
  i: Integer;
begin

  with PRecBuf(Buffer)^.RecInfo do
  begin
//    RecordStatus := 0; //Recordset.Status;
    BookmarkFlag := bfCurrent;
//    Bookmark := FRecordPos;
  end;

  // Don't need assign data values
  // Will do in on first SetFieldData
  for i := 0 to FieldCount-1 do
    if Fields[i].FieldNo > 0 then
//      VarValueToFieldValue(Rec^[Fields[i].FieldNo-1], @(PRecBuf(Buffer)^.Values[i]), Fields[i]);
      VarValueToFieldValue(Rec^[Fields[i].FieldNo-1], @(PRecBuf(Buffer)^.Values[Fields[i].FieldNo-1]), Fields[i]);


  GetCalcFields(Buffer);
end;

procedure TCustomMemTableEh.CopyBuffer(FromBuf, ToBuf: PChar);
var
  i:Integer;
begin
  PRecBuf(ToBuf)^.RecInfo := PRecBuf(FromBuf)^.RecInfo;
  SetLength(PRecBuf(ToBuf)^.Values, Length(PRecBuf(FromBuf)^.Values));
  for i := 0 to Length(PRecBuf(FromBuf)^.Values)-1 do
  begin
    PRecBuf(ToBuf)^.Values[i].IsNull := PRecBuf(FromBuf)^.Values[i].IsNull;
    SetString(PRecBuf(ToBuf)^.Values[i].DataValue,
      PChar(PRecBuf(FromBuf)^.Values[i].DataValue),
      Length(PRecBuf(FromBuf)^.Values[i].DataValue));
  end;
end;

procedure TCustomMemTableEh.VarValueToFieldValue(VarValue: Variant; FieldBuffer: Pointer; Field: TField);

var
  FieldValBuf: PFieldValBuf;
  DataValueBuf: Pointer;
  StrVal: String;

  procedure CurrToBuffer(const C: Currency);
  begin
    Currency(DataValueBuf^) := C;
  end;

begin
  FieldValBuf := PFieldValBuf(FieldBuffer);
  FieldValBuf.IsNull := False;
  if VarIsNull(VarValue) then
    FieldValBuf.IsNull := True
  else
  begin
    SetLength(FieldValBuf.DataValue, Field.DataSize);
//    SetString(FieldValBuf.DataValue, Field.DataSize);
    DataValueBuf := PChar(FieldValBuf.DataValue);
//    GetMem(FieldBuffer, Field.DataSize);
    case Field.DataType of
      ftGuid, ftFixedChar, ftString:
        StrPLCopy(PChar(DataValueBuf), VarToStr(VarValue), Field.Size);
//        SetString(FieldValBuf.DataValue, PChar(VarToStr(VarValue)), Field.Size);
      ftWideString:
        WideString(DataValueBuf^) := VarValue;
      ftSmallint:
        SmallInt(DataValueBuf^) := VarValue;
      ftWord:
        Word(DataValueBuf^) := VarValue;
      ftAutoInc, ftInteger:
        Integer(DataValueBuf^) := VarValue;
      ftFloat, ftCurrency:
        Double(DataValueBuf^) := VarValue;
      ftBCD:
        CurrToBuffer(VarValue);
      ftBoolean:
        WordBool(DataValueBuf^) := VarValue;
      ftDate, ftTime, ftDateTime:
        DataConvert(Field, @TVarData(VarValue).VDate, DataValueBuf, True);
      ftBytes, ftVarBytes:
        DataConvert(Field, @TVarData(VarValue).VDate, DataValueBuf, True);
      ftInterface: IUnknown(DataValueBuf^) := VarValue;
      ftIDispatch: IDispatch(DataValueBuf^) := VarValue;
{$IFDEF EH_LIB_6}
      ftLargeInt: LargeInt(DataValueBuf^) := VarValue;
{$ENDIF}
      ftBlob..ftTypedBinary, ftOraBlob, ftOraClob:
      begin
        StrVal := VarToStr(VarValue);
        SetString(FieldValBuf.DataValue, PChar(StrVal), Length(StrVal));
      end;
      {ftBlob..ftTypedBinary,} ftVariant: Variant(DataValueBuf^) := VarValue;
    else
      DatabaseErrorFmt('SUsupportedFieldType', [FieldTypeNames[Field.DataType],
        Field.DisplayName]);
    end;
  end;
end;

procedure TCustomMemTableEh.FieldValueToVarValue(FieldBuffer: Pointer; var VarValue: Variant; Field: TField);
var
  FieldValBuf: PFieldValBuf;
  DataValueBuf: Pointer;
  DateVal: TDateTime;
  CurrencyVal: Currency;
  StrVal: String;
begin
  FieldValBuf := PFieldValBuf(FieldBuffer);
  DataValueBuf := PChar(FieldValBuf.DataValue);

  if FieldValBuf.IsNull then
    VarValue := Null
  else
    case Field.DataType of
      ftString, ftFixedChar, ftGuid:
        VarValue := String(PChar(DataValueBuf));
      ftWideString:
        VarValue := WideString(DataValueBuf^);
      ftAutoInc, ftInteger:
        VarValue := LongInt(DataValueBuf^);
      ftSmallInt:
        VarValue := SmallInt(DataValueBuf^);
      ftWord:
        VarValue := Word(DataValueBuf^);
      ftBoolean:
        VarValue := WordBool(DataValueBuf^);
      ftFloat, ftCurrency:
        VarValue := Double(DataValueBuf^);
      ftBlob..ftTypedBinary, ftOraBlob, ftOraClob:
        begin
          SetString(StrVal, PChar(FieldValBuf.DataValue), Length(FieldValBuf.DataValue));
          VarValue := StrVal;
        end;  
      ftVariant:
        VarValue := Variant(DataValueBuf^);
      ftInterface:
        VarValue := IUnknown(DataValueBuf^);
      ftIDispatch:
        VarValue := IDispatch(DataValueBuf^);
      ftDate, ftTime, ftDateTime:
        begin
          DataConvert(Field, DataValueBuf, @DateVal, False);
          VarValue := DateVal;
        end;
      ftBCD:
        begin
          DataConvert(Field, DataValueBuf, @CurrencyVal, False);
          VarValue := CurrencyVal;
        end;
      ftBytes, ftVarBytes:
        DataConvert(Field, DataValueBuf, @VarValue, False);
      ftLargeInt:
{$IFDEF EH_LIB_6}
        VarValue := Int64(DataValueBuf^);
{$ENDIF}
      else
        DatabaseErrorFmt('SUnsupportedFieldType', [FieldTypeNames[Field.DataType],
          Field.DisplayName]);
    end;
end;

function TCustomMemTableEh.GetRecord(Buffer: PChar; GetMode: TGetMode; DoCheck: Boolean): TGetResult;
//var
//  Accept: Boolean;
begin
  Result := grOk;
//  Accept := True;
  case GetMode of
    gmPrior:
      if FRecordPos <= 0 then
      begin
        Result := grBOF;
        FRecordPos := -1;
        FInstantReadCurRow := 0;
      end else
        Dec(FRecordPos);
    gmCurrent:
      if (FRecordPos < 0) or (FRecordPos >= RecordsView.Count) then
        Result := grError;
    gmNext:
      begin
        if FRecordPos >= FRecordsView.Count - 1 then
          if FetchAllOnOpen
            then DoFetchRecords(-1)
            else DoFetchRecords(1);
        if FRecordPos >= FRecordsView.Count - 1 then
        begin
          FRecordPos := FRecordsView.Count;
          Result := grEOF
        end else
          Inc(FRecordPos);
      end;
  end;
  if FRecordPos >= 0 then
    FInstantReadCurRow := FRecordPos;
  if Result = grOk then
  begin
    RecordToBuffer(FRecordsView[FRecordPos].Data, Buffer);
    PRecBuf(Buffer)^.RecInfo.Bookmark := FRecordsView[FRecordPos].ID;
    PRecBuf(Buffer)^.RecInfo.RecordNumber := FRecordPos;
  end else if (Result = grError) and DoCheck then
    Error(SMemNoRecords);
end;

function TCustomMemTableEh.GetRecordSize: Word;
begin
  Result := FRecBufSize;
//  Result := FDataRecordSize;
end;

function TCustomMemTableEh.GetActiveRecBuf(var RecBuf: PChar): Boolean;

  function GetOldValuesBuffer: PChar;
  begin
    UpdateCursorPos;
    if FRecordsView.OldRecVals[FRecordPos] <> nil then
    begin
      Result := TempBuffer;
      RecordToBuffer(FRecordsView.OldRecVals[FRecordPos], Result);
    end else
      Result := nil;
  end;

begin
  if FInstantReadMode then
    RecBuf := FInstantBuffer
  else
    case State of
      dsBrowse:
        if IsEmpty
          then RecBuf := nil
          else RecBuf := ActiveBuffer;
      dsOldValue:
        begin
          RecBuf := GetOldValuesBuffer;
          if RecBuf = nil then
            RecBuf := ActiveBuffer;
        end;
      dsEdit, dsInsert, dsNewValue: RecBuf := ActiveBuffer;
      dsCalcFields: RecBuf := CalcBuffer;
      dsFilter: RecBuf := TempBuffer;
      else RecBuf := nil;
    end;
  Result := RecBuf <> nil;
end;

{ Field Data }

function TCustomMemTableEh.GetFieldData(Field: TField; Buffer: Pointer): Boolean;
var
  RecBuf: PRecBuf;
  FieldBufNo: Integer;
begin
  Result := GetActiveRecBuf(PChar(RecBuf));
  if not Result then Exit;
  if Field.FieldNo > 0
    then FieldBufNo := Field.FieldNo - 1
    else FieldBufNo := Field.Offset + DataFieldsCount;

  if not PRecBuf(RecBuf)^.Values[FieldBufNo].IsNull  then
  begin
    if Buffer <> nil then
    begin
      Move(PChar(PRecBuf(RecBuf)^.Values[FieldBufNo].DataValue)^, Buffer^, Field.DataSize);
    end;
  end else
    Result := False;
end;

procedure TCustomMemTableEh.SetFieldData(Field: TField; Buffer: Pointer);
var
  RecBuf: PRecBuf;
  FieldBufNo: Integer;
begin
  if not GetActiveRecBuf(PChar(RecBuf)) then Exit;

  if Field.FieldNo > 0
    then FieldBufNo := Field.FieldNo - 1
    else FieldBufNo := Field.Offset + DataFieldsCount;

  if Buffer = nil then
    RecBuf^.Values[FieldBufNo].IsNull := True
  else
  begin
    SetLength(RecBuf^.Values[FieldBufNo].DataValue, Field.DataSize);
    Move(Buffer^, PChar(PRecBuf(RecBuf)^.Values[FieldBufNo].DataValue)^, Field.DataSize);
    RecBuf^.Values[FieldBufNo].IsNull := False;
  end;
  if not (State in [dsCalcFields, dsInternalCalc, dsFilter, dsNewValue]) then
    DataEvent(deFieldChange, Longint(Field));
end;

{ Filter }

procedure TCustomMemTableEh.RecreateFilterExpr;
begin
  if Filtered
    then FFilterExpr.ParseExpression(Filter)
    else FFilterExpr.ParseExpression('');
{
  FFilterExpr.Free;
  FFilterExpr := nil;
  if Filter <> '' then
    FFilterExpr := TExprParser.Create
      (Self, Filter, FilterOptions, [poExtSyntax], '', nil, FieldTypeMap);
}
end;

procedure TCustomMemTableEh.DestroyFilterExpr;
begin
  FFilterExpr.ParseExpression('');
//  FFilterExpr.Free;
//  FFilterExpr := nil;
end;

procedure TCustomMemTableEh.SetFilterText(const Value: string);
begin
  if Value <> Filter then
  begin
    inherited SetFilterText(Value);
    RecreateFilterExpr;
    Refresh;
  end;
end;

procedure TCustomMemTableEh.SetFiltered(Value: Boolean);
begin
  if Active then
  begin
    CheckBrowseMode;
    if Filtered <> Value then
    begin
      inherited SetFiltered(Value);
//      First;
      Refresh;
    end;
  end
  else inherited SetFiltered(Value);
end;

procedure TCustomMemTableEh.SetOnFilterRecord(const Value: TFilterRecordEvent);
begin
  if Active then
  begin
    CheckBrowseMode;
    inherited SetOnFilterRecord(Value);
    if Filtered then
      Refresh;
  end
  else inherited SetOnFilterRecord(Value);
end;

function TCustomMemTableEh.IsRecordInFilter(RecValues: PRecValues): Boolean;
var
  SaveState: TDataSetState;
  DetV, MasV: Variant;
begin
  Result := True;
  if (Filtered and (Assigned(OnFilterRecord) or (Filter <> '')) ) or FDetailMode then
  begin
    SaveState := SetTempState(dsFilter);
    try
      RecordToBuffer(RecValues, TempBuffer);

      if FFilterExpr.HasData then
        Result := FFilterExpr.IsCurRecordInFilter;

      if Filtered and Assigned(OnFilterRecord) then
        OnFilterRecord(Self, Result);

      if Result and FDetailMode and (MasterDetailSide = mdsOnSelfEh)  then
      begin
        { TODO : Use FDetailFieldList for fast}
        DetV := FieldValues[FDetailFields];
        MasV := MasterSource.DataSet.FieldValues[MasterFields];
        Result := VarEquals(DetV, MasV);
      end;

    except
      Application.HandleException(Self);
    end;
    RestoreState(SaveState);
  end;
end;

{ Blobs }

function TCustomMemTableEh.GetBlobData(Field: TField; Buffer: PChar): TMemBlobData;
begin
  with PRecBuf(Buffer)^.Values[Field.FieldNo-1] do
    if IsNull
      then Result := ''
      else Result := PRecBuf(Buffer)^.Values[Field.FieldNo-1].DataValue;
end;

procedure TCustomMemTableEh.SetBlobData(Field: TField; Buffer: PChar; Value: TMemBlobData);
begin
  if (Buffer = ActiveBuffer) then
  begin
    if State = dsFilter then
      Error(SNotEditing);
    PRecBuf(Buffer)^.Values[Field.FieldNo-1].DataValue := Value;
    PRecBuf(Buffer)^.Values[Field.FieldNo-1].IsNull := False;
  end;
end;

procedure TCustomMemTableEh.CloseBlob(Field: TField);
begin
{  if (FRecordPos >= 0) and (FRecordPos < FRecordsView.Count) and (State = dsEdit) then
    PMemBlobArray(ActiveBuffer + FBlobOfs)[Field.FieldNo] :=
      PMemBlobArray(Records[FRecordPos].FBlobs)[Field.Offset]
  else
    PMemBlobArray(ActiveBuffer + FBlobOfs)[Field.Offset] := '';}
end;

function TCustomMemTableEh.CreateBlobStream(Field: TField; Mode: TBlobStreamMode): TStream;
begin
  Result := TMemBlobStreamEh.Create(Field as TBlobField, Mode);
end;

{ Bookmarks }

function TCustomMemTableEh.BookmarkValid(Bookmark: TBookmark): Boolean;
begin
  Result := FActive and (FRecordsView.FindRecId(TRecIdEh(Bookmark^)) > -1);
end;

function TCustomMemTableEh.CompareBookmarks(Bookmark1, Bookmark2: TBookmark): Integer;
var
  RecPos1, RecPos2: Integer;
begin
  if (Bookmark1 = nil) and (Bookmark2 = nil) then
    Result := 0
  else if (Bookmark1 <> nil) and (Bookmark2 = nil) then
    Result := 1
  else if (Bookmark1 = nil) and (Bookmark2 <> nil) then
    Result := -1
  else
  begin
    RecPos1 := InstantReadIndexOfBookmark(Bookmark1);
    RecPos2 := InstantReadIndexOfBookmark(Bookmark2);
    if RecPos1 > RecPos2 then
      Result := 1
    else if RecPos1 < RecPos2 then
      Result := -1
    else Result := 0;
  end;
end;

function TCustomMemTableEh.GetBookmarkStr: TBookmarkStr;
begin
  if FInstantReadMode then
  begin
    SetLength(Result, BookmarkSize);
    GetBookmarkData(FInstantBuffer, Pointer(Result));
  end else
    Result := inherited GetBookmarkStr;
end;

procedure TCustomMemTableEh.GetBookmarkData(Buffer: PChar; Data: Pointer);
begin
  Move(PRecBuf(Buffer)^.RecInfo.Bookmark, Data^, SizeOf(TRecIdEh));
end;

procedure TCustomMemTableEh.SetBookmarkData(Buffer: PChar; Data: Pointer);
begin
  Move(Data^, PRecBuf(Buffer)^.RecInfo.Bookmark, SizeOf(TRecIdEh));
end;

function TCustomMemTableEh.GetBookmarkFlag(Buffer: PChar): TBookmarkFlag;
begin
  Result := PRecBuf(Buffer)^.RecInfo.BookmarkFlag;
end;

procedure TCustomMemTableEh.SetBookmarkFlag(Buffer: PChar; Value: TBookmarkFlag);
begin
  PRecBuf(Buffer)^.RecInfo.BookmarkFlag := Value;
end;

procedure TCustomMemTableEh.InternalGotoBookmark(Bookmark: TBookmark);
var
  FindedRecPos: Integer;
begin
  FindedRecPos := FRecordsView.FindRecId(TRecIdEh(Bookmark^));
  if FindedRecPos <> -1
    then FRecordPos := FindedRecPos
    else DatabaseError(SRecordNotFound, Self);
  FInstantReadCurRow := FRecordPos;
end;

function TCustomMemTableEh.InstantReadIndexOfBookmark(Bookmark: TBookmark): Integer;
begin
  if Bookmark = nil
    then Result := -1
    else Result := FRecordsView.FindRecId(TRecIdEh(Bookmark^));
end;

{ Navigation }

procedure TCustomMemTableEh.InternalSetToRecord(Buffer: PChar);
begin
  InternalGotoBookmark(@PRecBuf(Buffer)^.RecInfo.Bookmark);
end;

procedure TCustomMemTableEh.InternalFirst;
begin
  FRecordPos := -1;
  FInstantReadCurRow := 0;
end;

procedure TCustomMemTableEh.InternalLast;
begin
  DoFetchRecords(-1);
  FRecordPos := FRecordsView.Count;
  if not (State in dsEditModes) then
    FInstantReadCurRow := FRecordPos - 1;
end;

{ Data Manipulation }

procedure TCustomMemTableEh.SetMemoryRecordData(Buffer: PChar; ARecValues: PRecValues);
var
  i: Integer;
begin
  if State = dsFilter then
    Error(SNotEditing);
  SetLength(ARecValues^, DataFieldsCount);
  for i := 0 to FieldCount-1 do
    if Fields[i].FieldNo > 0 then
//      FieldValueToVarValue(@PRecBuf(Buffer)^.Values[i], ARecValues^[Fields[i].FieldNo-1], Fields[i]);
      FieldValueToVarValue(@PRecBuf(Buffer)^.Values[Fields[i].FieldNo-1], ARecValues^[Fields[i].FieldNo-1], Fields[i]);
end;

procedure TCustomMemTableEh.SetAutoIncFields(Buffer: PChar);
var
  I, Count: Integer;
  Data: PChar;
begin
  Count := 0;
  for I := 0 to FieldCount - 1 do
    if (Fields[I].FieldKind in fkStoredFields) and
      (Fields[I].DataType = ftAutoInc) then
    begin
      Data := FindFieldData(Buffer, Fields[I]);
      if Data <> nil then
      begin
        Boolean(Data[0]) := True;
        Inc(Data);
        Move(FAutoInc, Data^, SizeOf(Longint));
        Inc(Count);
      end;
    end;
  if Count > 0 then
    Inc(FAutoInc);
end;

procedure TCustomMemTableEh.InternalAddRecord(Buffer: Pointer; Append: Boolean);
var
  RecPos: Integer;
  Rec: TMemoryRecordEh;
begin

  if Append then
  begin
    Rec := FRecordsView.NewRecord;
    try
      SetAutoIncFields(Buffer);

//      if (ProviderDataSet <> nil) and not CachedUpdates then
//        UpdateThroughProvider(Rec, ActiveBuffer, ukInsert, FRecordsView.Count - 1);
      SetMemoryRecordData(Buffer, Rec.Data);
    except
      Rec.Free;
      raise;
    end;
    FRecordsView.AddRecord(Rec);
    if not CachedUpdates then
      try
        InternalApplyUpdates(-1);
      except
        FRecordsView.CancelUpdates;
        raise;
      end;
    FRecordPos := FRecordsView.Count - 1;
  end else
  begin
    Rec := FRecordsView.NewRecord;
    try
      SetAutoIncFields(Buffer);
//      if (ProviderDataSet <> nil) and not CachedUpdates then
//        if FRecordPos = -1
//          then UpdateThroughProvider(FRecordsView[FRecordPos], ActiveBuffer, ukInsert, 0)
//          else UpdateThroughProvider(FRecordsView[FRecordPos], ActiveBuffer, ukInsert, FRecordPos);
      SetMemoryRecordData(Buffer, Rec.Data);

      if FRecordPos = -1
        then RecPos := 0
        else RecPos := FRecordPos;
    except
      Rec.Free;
      raise;
    end;

    FRecordsView.InsertRecord(RecPos, Rec);
    if not CachedUpdates then
      try
        InternalApplyUpdates(-1);
      except
        FRecordsView.CancelUpdates;
        raise;
      end;
    FRecordPos := RecPos;
  end;
end;

procedure TCustomMemTableEh.InternalCancel;
begin
  if not CachedUpdates and FRecordsView.MemTableData.RecordsList.HasCachedChanges then
    CancelUpdates;
end;

procedure TCustomMemTableEh.InternalPost;
begin
  if State = dsEdit then
  begin
//    if (ProviderDataSet <> nil) and not CachedUpdates then
//      UpdateThroughProvider(FRecordsView[FRecordPos], ActiveBuffer, ukModify, FRecordPos);
    FRecordsView[FRecordPos].BeginEdit;
    SetMemoryRecordData(ActiveBuffer, FRecordsView[FRecordPos].Data);
    FRecordsView[FRecordPos].EndEdit(True);
    if not CachedUpdates then
      try
        InternalApplyUpdates(-1);
      except
        FRecordsView.CancelUpdates;
        raise;
      end;
  end else
    InternalAddRecord(ActiveBuffer, Eof);
end;

procedure TCustomMemTableEh.InternalDelete;
begin
//  if (ProviderDataSet <> nil) and not CachedUpdates then
//    UpdateThroughProvider(FRecordsView[FRecordPos], ActiveBuffer, ukDelete, FRecordPos);

  FRecordsView.DeleteRecord(FRecordPos);
  if not CachedUpdates then
    InternalApplyUpdates(-1);

  if FRecordPos >= FRecordsView.Count then
    Dec(FRecordPos);
  Resync([]);
end;

{ obsolete
procedure TCustomMemTableEh.UpdateThroughProvider(MemRec: TMemoryRecordEh;
  NewBuffer: PChar; UpdateKind: TUpdateKind; RecPos: Integer);
var
  TmpRecData: TRecDataValues;
begin
  if UpdateKind in [ukModify, ukInsert] then
  begin
    SetLength(TmpRecData, DataFieldsCount);
    SetMemoryRecordData(NewBuffer, @TmpRecData);
    ApplyUpdate(MemRec.Data, @TmpRecData, UpdateKind, ProviderDataSet, @TmpRecData);
    RecordToBuffer(@TmpRecData, NewBuffer)
  end else
    ApplyUpdate(MemRec.Data, MemRec.Data, UpdateKind, ProviderDataSet, nil);
end;
}

procedure TCustomMemTableEh.CreateFields;
(*
  procedure CreateFieldsFromProvider;
  var
    I: Integer;
    AField: TField;
    FieldClass: TFieldClass;
  begin
    for I := 0 to ProviderDataSet.Fields.Count-1 do
    begin
      FieldClass := GetFieldClass(ProviderDataSet.Fields[i].DataType);
//      if Assigned(FieldClass) then
//        FieldClass.CheckTypeSize(ProviderDataSet.Fields[i].Size);
      AField := FieldClass.Create(Self);
      with ProviderDataSet.Fields[i] do
      begin
//        AField.Name := FieldName;
        AField.FieldName := FieldName;
        AField.Size := Size;
        AField.Required := Required;

        AField.Alignment := Alignment;
//        AField.AutoGenerateValue := AutoGenerateValue;
//        AField.CustomConstraint := CustomConstraint;
//        AField.ConstraintErrorMessage := ConstraintErrorMessage;
        AField.DefaultExpression := DefaultExpression;
        AField.DisplayLabel := DisplayLabel;
        AField.DisplayWidth := DisplayWidth;
        AField.FieldKind := FieldKind;
        AField.LookupDataSet := LookupDataSet;
        AField.LookupKeyFields := LookupKeyFields;
        AField.LookupResultField := LookupResultField;
        AField.KeyFields := KeyFields;
        AField.LookupCache := LookupCache;
        AField.ProviderFlags := ProviderFlags;
        AField.ReadOnly := ReadOnly;
        AField.Visible := Visible;
        AField.EditMask := EditMask;

        if (AField is TStringField) and (ProviderDataSet.Fields[i] is TStringField) then
        begin
          TStringField(AField).FixedChar := TStringField(ProviderDataSet.Fields[i]).FixedChar;
          TStringField(AField).Transliterate := TStringField(ProviderDataSet.Fields[i]).Transliterate;
        end
        else if (AField is TNumericField) and (ProviderDataSet.Fields[i] is TNumericField) then
        begin
          with ProviderDataSet.Fields[i] as TNumericField do
          begin
            TNumericField(AField).DisplayFormat := DisplayFormat;
            TNumericField(AField).EditFormat := EditFormat;
          end;
          if (AField is TIntegerField) and (ProviderDataSet.Fields[i] is TIntegerField) then
            with ProviderDataSet.Fields[i] as TIntegerField do
            begin
              TIntegerField(AField).MaxValue := MaxValue;
              TIntegerField(AField).MinValue := MinValue;
            end;
          if (AField is TLargeintField) and (ProviderDataSet.Fields[i] is TLargeintField) then
            with ProviderDataSet.Fields[i] as TLargeintField do
            begin
              TLargeintField(AField).MaxValue := MaxValue;
              TLargeintField(AField).MinValue := MinValue;
            end;
          if (AField is TFloatField) and (ProviderDataSet.Fields[i] is TFloatField) then
            with ProviderDataSet.Fields[i] as TFloatField do
            begin
              TFloatField(AField).currency := currency;
              TFloatField(AField).MaxValue := MaxValue;
              TFloatField(AField).MinValue := MinValue;
              TFloatField(AField).Precision := Precision;
            end;
          if (AField is TBCDField) and (ProviderDataSet.Fields[i] is TBCDField) then
            with ProviderDataSet.Fields[i] as TBCDField do
            begin
              TBCDField(AField).currency := currency;
              TBCDField(AField).MaxValue := MaxValue;
              TBCDField(AField).MinValue := MinValue;
              TBCDField(AField).Precision := Precision;
            end;
{$IFDEF EH_LIB_6}
          if (AField is TFMTBCDField) and (ProviderDataSet.Fields[i] is TFMTBCDField) then
            with ProviderDataSet.Fields[i] as TFMTBCDField do
            begin
              TFMTBCDField(AField).currency := currency;
              TFMTBCDField(AField).MaxValue := MaxValue;
              TFMTBCDField(AField).MinValue := MinValue;
              TFMTBCDField(AField).Precision := Precision;
            end;
{$ENDIF}
        end
        else if (AField is TBooleanField) and (ProviderDataSet.Fields[i] is TBooleanField) then
        begin
          with ProviderDataSet.Fields[i] as TBooleanField do
            TBooleanField(AField).DisplayValues := DisplayValues;
        end
        else if (AField is TDateTimeField) and (ProviderDataSet.Fields[i] is TDateTimeField) then
        begin
          with ProviderDataSet.Fields[i] as TDateTimeField do
            TDateTimeField(AField).DisplayFormat := DisplayFormat;
{$IFDEF EH_LIB_6}
        end
        else if (AField is TSQLTimeStampField) and (ProviderDataSet.Fields[i] is TSQLTimeStampField) then
        begin
          with ProviderDataSet.Fields[i] as TSQLTimeStampField do
            TSQLTimeStampField(AField).DisplayFormat := DisplayFormat;
{$ENDIF}
        end;

        AField.DataSet := Self;
      end;
    end;
    FieldDefs.Clear;
    InitFieldDefsFromFields;
  end;
*)
begin
{  if ProviderDataSet = nil
    then inherited CreateFields
    else CreateFieldsFromProvider;}
  inherited CreateFields;
end;

procedure TCustomMemTableEh.OpenCursor(InfoQuery: Boolean);
begin
  if not InfoQuery then
  begin
    if (ProviderDataSet <> nil) then
    begin
      if MasterSource <> nil then SetParamsFromCursor;
      if FParams.Count > 0 then
        IProviderSupport(ProviderDataSet).PSSetParams(FParams);
      ProviderDataSet.Active := True;
      ProviderDataSet.First;
      FProviderEOF := False;
    end;
    if {(FieldCount = 0) and} (ProviderDataSet <> nil) then
      if (FieldCount > 0) then
        FRecordsView.MemTableData.DataStruct.BuildStructFromFields(Fields)
      else
        FRecordsView.MemTableData.DataStruct.BuildStructFromFields(ProviderDataSet.Fields)
    else
    begin
      {if FieldCount > 0 then
        FieldDefs.Clear;
      InitFieldDefsFromFields;}
      if FRecordsView.MemTableData.IsEmpty then
        DatabaseError('MemTable have not data.',Self);
    end;
  end;
  FActive := True;
  inherited OpenCursor(InfoQuery);
end;

procedure TCustomMemTableEh.InternalOpen;
begin
  BookmarkSize := SizeOf(Integer);
  FieldDefs.Updated := False;
  FieldDefs.Update;
  if DefaultFields then
    CreateFields;
  BindFields(True);
  if FieldCount = 0 then
    DatabaseError('No fields defined. Cannot create dataset');
  InitBufferPointers(True);
  InternalFirst;
//  FRecordsView.RecValCount := DataFieldsCount;
  FInstantBuffer := AllocRecordBuffer;
  PRecBuf(FInstantBuffer).RecInfo.RecordNumber := -1;
  UpdateDetailMode(False);
  FRecordsView.Aggregates.Reset;
end;

procedure TCustomMemTableEh.InternalClose;
begin
  FActive := False;
  DestroyFilterExpr;
  FAutoInc := 1;
  FRecordsView.Aggregates.Reset;
  BindFields(False);
  if DefaultFields then
    DestroyFields;
  if FInstantBuffer <> nil then
  begin
    FreeRecordBuffer(FInstantBuffer);
    FInstantBuffer := nil;
  end;
  if (ProviderDataSet <> nil) and ProviderDataSet.Active then
  begin
    ClearRecords;
    ProviderDataSet.Close;
  end;
end;

procedure TCustomMemTableEh.InternalHandleException;
begin
  Application.HandleException(Self);
end;

procedure TCustomMemTableEh.InternalInitFieldDefs;
begin
  FRecordsView.MemTableData.DataStruct.BuildFieldDefsFromStruct(FieldDefs);
//  if FRecordsView.MemTableData.DataStruct.Count > 0 then
//   FRecordsView.MemTableData.DataStruct.BuildStructFromFields(ProviderDataSet.Fields)

{  if (ProviderDataSet <> nil) then
  begin
    ProviderDataSet.Active := True;
    FieldDefs.Assign(ProviderDataSet.FieldDefs);
  end;
}
end;

function TCustomMemTableEh.IsCursorOpen: Boolean;
begin
  Result := FActive;
end;

{ Informational }

function TCustomMemTableEh.GetRecordCount: Integer;
begin
  CheckActive;
  Result := FRecordsView.Count;
end;

function TCustomMemTableEh.GetRecNo: Integer;
var
  RecBuf: PRecBuf;
begin
  CheckActive;
//  UpdateCursorPos;
  Result := -1;
  if not GetActiveRecBuf(PChar(RecBuf))
    then Exit
    else Result := PRecBuf(RecBuf)^.RecInfo.RecordNumber + 1;
//  if (FRecordPos = -1) and (RecordCount > 0)
//    then Result := 1
//    else Result := FRecordPos + 1;
end;

procedure TCustomMemTableEh.SetRecNo(Value: Integer);
begin
  if (Value > 0) and (Value <= FRecordsView.Count) then
  begin
    FRecordPos := Value - 1;
    Resync([]);
  end;
end;

function TCustomMemTableEh.IsSequenced: Boolean;
begin
  Result := True;
end;

function TCustomMemTableEh.FindRec(const KeyFields: string;
  const KeyValues: Variant; Options: TLocateOptions): Integer;

var
  Fields: TList;
  I: Integer;

  function CompareField(Field: TField; Value: Variant): Boolean;
  var
    S: string;
  begin
    if Field.DataType = ftString then
    begin
      S := Field.AsString;
      if (loPartialKey in Options) then
        System.Delete(S, Length(Value) + 1, MaxInt);
      if (loCaseInsensitive in Options) then
        Result := AnsiCompareText(S, Value) = 0
      else
        Result := AnsiCompareStr(S, Value) = 0;
    end
    else
      Result := (Field.Value = Value);
  end;

  function CompareRecord: Boolean;
  var
    I: Integer;
  begin
    if Fields.Count = 1 then
      Result := CompareField(TField(Fields.First), KeyValues)
    else begin
      Result := True;
      for I := 0 to Fields.Count - 1 do
        Result := Result and CompareField(TField(Fields[I]), KeyValues[I]);
    end;
  end;

begin
  Result := -1;
  Fields := TList.Create;
  try
    GetFieldList(Fields, KeyFields);

    for I := 0 to RecordCount-1 do
    begin
      InstantReadEnter(I);
      try
        if CompareRecord then
        begin
          Result := I;
          Break;
        end;
      finally
        InstantReadLeave;
      end;
    end;

    while (Result = -1) and not FProviderEOF do
    begin
      DoFetchRecords(1);

      InstantReadEnter(RecordCount-1);
      try
        if CompareRecord then
          Result := RecordCount-1;
      finally
        InstantReadLeave;
      end;
    end;

  finally
    Fields.Free;
  end;
end;

function TCustomMemTableEh.Locate(const KeyFields: string;
  const KeyValues: Variant; Options: TLocateOptions): Boolean;
var
  FindedRecPos: Integer;
begin

  Result := False;

  CheckBrowseMode;
  if BOF and EOF then Exit;

  FRecordsView.CatchChanged := False;

  FindedRecPos := FindRec(KeyFields, KeyValues, Options);
  if FindedRecPos <> -1 then
  begin
    FRecordPos := FindedRecPos;
//    FInstantReadCurRow := FindedRecPos;
    Result := True;
  end;

  if Result or FRecordsView.CatchChanged then
  begin
    DoBeforeScroll;
    Resync([rmExact, rmCenter]);
    DoAfterScroll;
  end;
end;

function TCustomMemTableEh.Lookup(const KeyFields: string;
  const KeyValues: Variant; const ResultFields: string): Variant;
var
  FindedRecPos: Integer;
begin
  Result := Unassigned;

  FRecordsView.CatchChanged := False;

  FindedRecPos := FindRec(KeyFields, KeyValues, []);
  if FindedRecPos <> -1 then
  begin
    InstantReadEnter(FindedRecPos);
    try
      Result := FieldValues[ResultFields];
    finally
      InstantReadLeave;
    end;
  end;

  if FRecordsView.CatchChanged then
    Resync([]);
end;

{ Table Manipulation }

procedure TCustomMemTableEh.EmptyTable;
begin
  if Active then
  begin
    CheckBrowseMode;
    ClearRecords;
    ClearBuffers;
    DataEvent(deDataSetChange, 0);
  end;
end;

procedure TCustomMemTableEh.CopyStructure(Source: TDataSet);

  procedure CheckDataTypes(FieldDefs: TFieldDefs);
  var
    I: Integer;
  begin
    for I := FieldDefs.Count - 1 downto 0 do
    begin
      if not (FieldDefs.Items[I].DataType in ftSupported) then
        FieldDefs.Items[I].Free
      else CheckDataTypes(FieldDefs[I].ChildDefs);
    end;
  end;

var
  I: Integer;
begin
  CheckInactive;
  for I := FieldCount - 1 downto 0 do
    Fields[I].Free;
  if (Source = nil) then Exit;
  Source.FieldDefs.Update;
  FieldDefs := Source.FieldDefs;
  CheckDataTypes(FieldDefs);
  CreateFields;
  for I := 0 to FieldDefs.Count - 1 do
  begin
    if (csDesigning in ComponentState) and (Owner <> nil) then
      FieldDefs.Items[I].CreateField(Owner)
    else
      FieldDefs.Items[I].CreateField(Self);
  end;
end;

function TCustomMemTableEh.LoadFromDataSet(Source: TDataSet; RecordCount: Integer;
  Mode: TLoadMode): Integer;
var
  SourceActive: Boolean;
  MovedCount: Integer;
begin
  Result := 0;
  if Source = Self then Exit;
  SourceActive := Source.Active;
  Source.DisableControls;
  try
    DisableControls;
    try
      Filtered := False;
      with Source do
      begin
        Open;
        CheckBrowseMode;
        UpdateCursorPos;
      end;
      if Mode = lmCopy then
      begin
        Close;
        CopyStructure(Source);
      end;
//      FreeIndexList;
      if not Active then Open;
      CheckBrowseMode;
      if FRecordsView.Count > 0 then
        MovedCount := FRecordsView.Count
      else
      begin
        Source.First;
        MovedCount := MaxInt;
      end;
      try
        while not Source.EOF do
        begin
          Append;
//DBUtils          AssignRecord(Source, Self, True);
          Post;
          Inc(Result);
          if Result >= MovedCount then Break;
          Source.Next;
        end;
      finally
        First;
      end;
    finally
      EnableControls;
    end;
  finally
    if not SourceActive then
      Source.Close;
    Source.EnableControls;
  end;
end;

function TCustomMemTableEh.SaveToDataSet(Dest: TDataSet; RecordCount: Integer): Integer;
var
  MovedCount: Integer;
begin
  Result := 0;
  if Dest = Self then Exit;
  CheckBrowseMode;
  UpdateCursorPos;
  Dest.DisableControls;
  try
    DisableControls;
    try
      if not Dest.Active
        then Dest.Open
        else Dest.CheckBrowseMode;
      if RecordCount > 0 then
        MovedCount := RecordCount
      else
      begin
        First;
        MovedCount := MaxInt;
      end;
      try
        while not EOF do
        begin
          Dest.Append;
//DBUtils          AssignRecord(Self, Dest, True);
          Dest.Post;
          Inc(Result);
          if Result >= MovedCount then Break;
          Next;
        end;
      finally
        Dest.First;
      end;
    finally
      EnableControls;
    end;
  finally
    Dest.EnableControls;
  end;
end;

{ Index Related }

type

  TOrderByItem = class(TObject)
  public
    Field: TField;
    FieldNo: Integer;
    Desc: Boolean;
    CaseIns: Boolean;
  end;

  TOrderByList = class(TObjectList)
  private
    function GetItem(Index: Integer): TOrderByItem;
    procedure SetItem(Index: Integer; const Value: TOrderByItem);
  public
    property Items[Index: Integer]: TOrderByItem read GetItem write SetItem; default;
  end;

function TCustomMemTableEh.GetInstantReadCurRow: Integer;
begin
  UpdateCursorPos;
  Result := FInstantReadCurRow;
end;

procedure TCustomMemTableEh.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) then
  begin
    if AComponent = FProviderDataSet then
      ProviderDataSet := nil;
  end;
end;

procedure TCustomMemTableEh.InternalRefresh;
begin
  FRecordsView.RefreshFilteredRecsList;
  InternalFirst;
end;

procedure TCustomMemTableEh.UpdateDetailMode(AutoRefresh: Boolean);
var
  NewDetailMode: Boolean;
begin
  NewDetailMode := False;
  if Fields.Count > 0 then
  begin
    FDetailFieldList.Clear;
    GetFieldList(FDetailFieldList, DetailFields);
    if MasterDetailSide = mdsOnSelfEh then
    begin
      if (FDetailFieldList.Count > 0) and FMasterDataLink.Active and
        (FMasterDataLink.Fields.Count > 0)
      then
        NewDetailMode := True;
    end else if FMasterDataLink.Active then
      NewDetailMode := True;
  end;
  if NewDetailMode <> FDetailMode then
  begin
    FDetailMode := NewDetailMode;
    if not FDetailMode then
      FMasterValues := Unassigned
    else if MasterDetailSide = mdsOnSelfEh then
      FMasterValues := MasterSource.DataSet.FieldValues[MasterFields];
    if AutoRefresh then
      if MasterDetailSide = mdsOnProviderEh
        then RefreshParams
        else Refresh;
  end;
end;

procedure TCustomMemTableEh.MasterChange(Sender: TObject);
var
  OldDetailMode: Boolean;
begin
  OldDetailMode := FDetailMode;
  UpdateDetailMode(False);
  if MasterDetailSide = mdsOnProviderEh then
    RefreshParams
  else if (OldDetailMode <> FDetailMode) or
    (FDetailMode and not VarEquals(FMasterValues, MasterSource.DataSet.FieldValues[MasterFields])) then
  begin
    FMasterValues := MasterSource.DataSet.FieldValues[MasterFields];
    Refresh;
  end;
end;

function TCustomMemTableEh.GetCanModify: Boolean;
begin
  Result := not ReadOnly;
end;

procedure TCustomMemTableEh.DoOnNewRecord;
var
  i: Integer;
begin
  for i := 0 to Fields.Count-1 do
    if (Fields[i].DefaultExpression <> '') and Fields[i].CanModify then
      Fields[i].Text := Fields[i].DefaultExpression;
  if FDetailMode then
    FieldValues[FDetailFields] := MasterSource.DataSet.FieldValues[MasterFields];
  inherited DoOnNewRecord;
end;

procedure TCustomMemTableEh.SetParams(const Value: TParams);
begin
  FParams.Assign(Value);
end;

procedure TCustomMemTableEh.SetMasterDetailSide(const Value: TMasterDetailSideEh);
begin
  if (FMasterDetailSide <> Value) then
  begin
    FMasterDetailSide := Value;
    UpdateDetailMode(False);
    if FDetailMode and Active then
      if MasterDetailSide = mdsOnProviderEh then
      begin
        Close;
        Open;
      end else
        Refresh;
  end;
end;

procedure TCustomMemTableEh.SetParamsFromCursor;
var
  I: Integer;
  DataSet: TDataSet;
begin
  if MasterSource <> nil then
  begin
    DataSet := MasterSource.DataSet;
    if DataSet <> nil then
    begin
      DataSet.FieldDefs.Update;
      for I := 0 to FParams.Count - 1 do
        with FParams[I] do
          if not Bound then
          begin
            AssignField(DataSet.FieldByName(Name));
            Bound := False;
          end;
    end;
  end;
end;

procedure TCustomMemTableEh.RefreshParams;
var
  DataSet: TDataSet;
  Field: TField;
  I: Integer;
begin
  DisableControls;
  try
    if MasterSource <> nil then
    begin
      DataSet := MasterSource.DataSet;
      if DataSet <> nil then
        if DataSet.Active and (DataSet.State <> dsSetKey) then
        begin
          for I := 0 to FParams.Count - 1 do
          begin
            Field := DataSet.FindField(FParams[I].Name);
            if (Field <> nil) and not VarEquals(Field.Value, FParams[I].Value) then
            begin
              Close;
              Open;
              Break;
            end;
          end;
        end;
    end;
  finally
    EnableControls;
  end;
end;

procedure TCustomMemTableEh.FetchParams;
var
  ProviderParams: TParams;
begin
  if ProviderDataSet <> nil then
  begin
    ProviderParams := IProviderSupport(ProviderDataSet).PSGetParams;
    Params.Assign(ProviderParams);
  end;
end;

procedure TCustomMemTableEh.RefreshRecord;
var
  vValues: Variant;
  i: Integer;
  KeyFound: Boolean;
  Bookmark: TBookmarkStr;
  DeltaField, ProviderField: TField;
  DeltaDataSet: TCustomMemTableEh;
begin
  if (ProviderDataSet <> nil) then
  begin
    DeltaDataSet := CreateDeltaDataSet;
    try

      DeltaDataSet.Insert;

      for i := 0 to FieldCount-1 do
        if Fields[i].FieldKind = fkData then
        begin
          DeltaField := DeltaDataSet.FieldByName(Fields[i].FieldName);
          if UpdateStatus = usModified
            then DeltaField.Value := Fields[i].OldValue
            else DeltaField.Value := Fields[i].Value;
        end;

      DeltaDataSet.Post;


      Bookmark := ProviderDataSet.Bookmark;
      try

        vValues := DeltaDataSet.FieldValues[KeyFields];
        KeyFound := ProviderDataSet.Locate(KeyFields, vValues, []);

        DeltaDataSet.Edit;
        if KeyFound then
          for i := 0 to DeltaDataSet.FieldCount-1 do
            if DeltaDataSet.Fields[i].FieldKind = fkData then
            begin
              ProviderField := ProviderDataSet.FieldByName(DeltaDataSet.Fields[i].FieldName);
              DeltaDataSet.Fields[i].Assign(ProviderField);
            end
        else
          raise Exception.Create('Key is not found in ProviderDataSet');
        DeltaDataSet.Post;

      finally
        if (Bookmark <> '') and ProviderDataSet.BookmarkValid(TBookmark(Bookmark)) then
          ProviderDataSet.Bookmark := Bookmark;
      end;

      FRecordsView.RefreshRecord(RecNo-1, DeltaDataSet.FRecordsView[0].Data^);

    finally
      DeltaDataSet.Free;
    end;
    Resync([]);
  end;
end;

procedure TCustomMemTableEh.RevertRecord;
begin
  Cancel;
  CheckBrowseMode;
  UpdateCursorPos;
  if IsEmpty then
    raise Exception.Create('There are no records.');
  FRecordsView.RevertRecord(RecNo-1);
  Resync([]);
end;

function TCustomMemTableEh.UpdateStatus: TUpdateStatus;
begin
  CheckActive;
  if RecNo-1 > -1
    then Result := FRecordsView[RecNo-1].UpdateStatus
    else Result := usUnmodified;
end;

procedure TCustomMemTableEh.CancelUpdates;
begin
  FRecordsView.CancelUpdates;
  Resync([]);
end;

{
function TCustomMemTableEh.LocateProviderRec: Boolean;
var
  vValues: Variant;
  i: Integer;
  AKeyFields: String;
begin
  Result := False;
  if not ((ProviderDataSet <> nil) and ProviderDataSet.Active) then Exit;

  if KeyFields <> ''
    then AKeyFields := KeyFields
    else AKeyFields := IProviderSupport(ProviderDataSet).PSGetKeyFields;

  if AKeyFields = '' then
  begin
    for i := 0 to FieldCount - 1 do
      if pfInKey in Fields[i].ProviderFlags then
        AKeyFields := AKeyFields + Fields[i].FieldName + ';';

    if AKeyFields = '' then
      for i := 0 to FieldCount - 1 do
        AKeyFields := AKeyFields + Fields[i].FieldName + ';';

     System.Delete(AKeyFields, Length(AKeyFields), 1);
  end;

  if UpdateStatus = usModified
    then vValues := GetOldFieldValue(Self, AKeyFields)
    else vValues := FieldValues[AKeyFields];

  if AKeyFields <> '' then
    Result := ProviderDataSet.Locate(AKeyFields, vValues, []);
end;
}

procedure TCustomMemTableEh.DataEvent(Event: TDataEvent; Info: Integer);
begin
  case Event of
    deDataSetChange, deLayoutChange:
      PRecBuf(FInstantBuffer).RecInfo.RecordNumber := -1;
    deFieldListChange:
      FRecordsView.Aggregates.Reset;
  end;
  inherited DataEvent(Event, Info);
end;

procedure TCustomMemTableEh.CreateDataSet;
begin
  CheckInactive;
  InitFieldDefsFromFields;
  FRecordsView.MemTableData.DestroyTable;
  FRecordsView.MemTableData.DataStruct.BuildStructFromFieldDefs(FieldDefs);
  Open;
end;

procedure TCustomMemTableEh.GetChildren(Proc: TGetChildProc; Root: TComponent);
begin
  inherited GetChildren(Proc, Root);
  if (ProviderDataSet = nil) and not FRecordsView.MemTableData.IsEmpty then
    Proc(FRecordsView.MemTableData);
end;

procedure TCustomMemTableEh.AncestorNotFound(Reader: TReader;
  const ComponentName: string; ComponentClass: TPersistentClass;
  var Component: TComponent);
begin
  if (ComponentName = 'MemTableData') and (Reader.Root <> nil) then
    Component := FRecordsView.MemTableData;
end;

procedure TCustomMemTableEh.CreateComponent(Reader: TReader;
  ComponentClass: TComponentClass; var Component: TComponent);
begin
  if ComponentClass.InheritsFrom(TMemTableDataEh) then
    Component := FRecordsView.MemTableData;
end;

procedure TCustomMemTableEh.ReadState(Reader: TReader);
var
  OldOnCreateComponent: TCreateComponentEvent;
  OldOnAncestorNotFound: TAncestorNotFoundEvent;
begin
  OldOnCreateComponent := Reader.OnCreateComponent;
  OldOnAncestorNotFound := Reader.OnAncestorNotFound;
  Reader.OnCreateComponent := CreateComponent;
  Reader.OnAncestorNotFound := AncestorNotFound;

  try
    inherited ReadState(Reader);
  finally
    Reader.OnCreateComponent := OldOnCreateComponent;
    Reader.OnAncestorNotFound := OldOnAncestorNotFound;
  end;
end;

// Aggregates

procedure TCustomMemTableEh.ResetAggField(Field: TField);
var
  I: Integer;
  Agg: TMTAggregateEh;
  AggF: TAggregateField;
begin
  for I := 0 to AggFields.Count - 1 do
    if AggFields[I] = Field then
    begin
      AggF := AggFields[I] as TAggregateField;
      Agg := TMTAggregateEh(AggF.Handle);
      if Agg <> nil then
      begin
        FRecordsView.Aggregates.BeginUpdate;
        Agg.Assign(AggF);
        FRecordsView.Aggregates.EndUpdate;
        Agg.Reset;
        Agg.Recalc;
        if Active then
          DataEvent(deDataSetChange, 0);
      end;
    end;
end;

function TCustomMemTableEh.GetAggregateValue(Field: TField): Variant;
var
 Agg: TMTAggregateEh;
 RecBuf: PChar;
begin
  Result := Null;
  if AggregatesActive and GetActiveRecBuf(RecBuf) then
  begin
    Agg := TMTAggregateEh(TAggregateField(Field).Handle);
    if Agg <> nil then
      Result := Agg.Value;
  end;
end;

procedure TCustomMemTableEh.SetAggregatesActive(const Value: Boolean);
begin
  if AggregatesActive <> Value then
  begin
    FRecordsView.Aggregates.Active := Value;
    if Active then
    begin
      if AggFields.Count > 0 then
      begin
        UpdateCursorPos;
        Resync([]);
      end;
    end;
  end;
end;

function TCustomMemTableEh.GetAggregatesActive: Boolean;
begin
  Result := FRecordsView.Aggregates.Active;
end;

function TCustomMemTableEh.CreateDeltaDataSet: TCustomMemTableEh;
begin
  Result := TCustomMemTableEh.Create(nil);
//  FMemTable.FieldDefs.Update;
  Result.FieldDefs := FieldDefs;
  Result.CachedUpdates := True;
//  Result.Open;
  Result.CreateDataSet;
end;

{ TOrderByList }

function TOrderByList.GetItem(Index: Integer): TOrderByItem;
begin
  Result := TOrderByItem(inherited Items[Index]);
end;

procedure TOrderByList.SetItem(Index: Integer; const Value: TOrderByItem);
begin
  inherited Items[Index] := Value;
end;

// FieldName [ASC|DESC] [,|;] ...

function GetToken(var Exp: PChar): String;
begin
  Result := '';
  while Exp^ = ' ' do
    Inc(Exp);
  if Exp^ in [',', ';'] then
  begin
    Result := Result + Exp^;
    Inc(Exp);
    Exit;
  end;
  while not (Exp^ in [#0, ' ', ',', ';']) do
  begin
    Result := Result + Exp^;
    Inc(Exp);
  end;
end;

procedure TCustomMemTableEh.SortByFields(const SortByStr: string);
begin
  DoOrderBy(SortByStr);
end;

procedure TCustomMemTableEh.DoOrderBy(const OrderByStr: String);

  function CreateOrderByList(Value: String): TOrderByList;
  var
    FieldName, Token: String;
    Exp: PChar;
    Desc: Boolean;
    OByItem: TOrderByItem;
    Field: TField;
  begin
    Result := TOrderByList.Create;
    try
    Exp := PChar(Value);
    FieldName := GetToken(Exp);
    if FieldName = '' then Exit;
    Field := FindField(FieldName);
    if Field = nil then
      raise Exception.Create(' Field - "' + FieldName + '" not found.');
    Desc := False;
    while True do
    begin
      Token := GetToken(Exp);
      if AnsiUpperCase(Token) = 'ASC' then
        Continue
      else if AnsiUpperCase(Token) = 'DESC' then
      begin
        Desc := True;
        Continue
      end else if (Token = ';') or (Token = ',') or (Token = '') then

      else
        raise Exception.Create(' Invalid token - "' + Token + '"');

      OByItem := TOrderByItem.Create;
      OByItem.Field := Field;
      OByItem.FieldNo := Field.FieldNo;
      OByItem.Desc := Desc;
      Result.Add(OByItem);

      FieldName := GetToken(Exp);
      if FieldName = '' then Break;
      Field := FindField(FieldName);
      if Field = nil then
        raise Exception.Create(' Field - "' + FieldName + '" not found.');
      Desc := False;
    end;

    except
      Result.Free;
      raise;
    end;

  end;

begin
  FOrderByList := CreateOrderByList(OrderByStr);
  try
    SortData(FOrderByList);
  finally
    FOrderByList.Free;
  end;
end;

procedure TCustomMemTableEh.SortData(SortList: TList);
var
  OrderByList: TOrderByList;
begin
  OrderByList := TOrderByList(SortList);
  if Active and (FRecordsView <> nil) and (FRecordsView.Count > 0) and (OrderByList.Count > 0) then
  begin
    CheckBrowseMode;
    if FInstantReadMode then
      raise Exception.Create('Sort data in InstantReadMode is not allowed.');
//    Pos := Bookmark;
    try
      FRecordsView.MemTableData.RecordsList.SortData(SortList, CompareRecords);
      SetBufListSize(0);
      InitBufferPointers(False);
      try
        SetBufListSize(BufferCount + 1);
      except
        SetState(dsInactive);
        CloseCursor;
        raise;
      end;
    finally
//      Bookmark := Pos;
    end;
    Resync([]);
  end;
end;

function TCustomMemTableEh.CompareRecords(Item1, Item2: PRecValues): Integer;
var
  AOrderByList: TOrderByList;

  function GetFieldValues(Item: PRecValues): Variant;
  var
    I: Integer;
    UseRecordBuffer: Boolean;
  begin
    UseRecordBuffer := False;
    for I := 0 to AOrderByList.Count-1 do
      if AOrderByList[I].FieldNo <= 0 then
      begin
        UseRecordBuffer := True;
        Break;
      end;

    if UseRecordBuffer then
    begin
      RecordToBuffer(Item, FInstantBuffer);
      FInstantReadMode := True;
      try
        if AOrderByList.Count > 1 then
        begin
          Result := VarArrayCreate([0, Fields.Count - 1], varVariant);
          for I := 0 to AOrderByList.Count - 1 do
            Result[I] := AOrderByList[I].Field.Value;
        end else
          Result := AOrderByList[0].Field.Value
      finally
        FInstantReadMode := False;
      end;
    end else
    begin
      if AOrderByList.Count > 1 then
      begin
        Result := VarArrayCreate([0, Fields.Count - 1], varVariant);
        for I := 0 to AOrderByList.Count - 1 do
          Result[I] := Item^[AOrderByList[I].FieldNo-1];
      end else
        Result := Item^[AOrderByList[0].FieldNo-1]
    end;
  end;

  function CompareSimpleSortVarValues(Data1, Data2: Variant; CaseInsensitive: Boolean): Integer;
  begin
    if VarIsEmpty(Data1) or VarIsNull(Data1) then
      if VarIsEmpty(Data2) or VarIsNull(Data2) then
        Result := 0
      else
        Result := -1
    else
      if VarIsEmpty(Data2) or VarIsNull(Data2) then
        Result := 1
      else if (not CaseInsensitive and (Data1 = Data2)) or
              (    CaseInsensitive and (AnsiCompareText(Data1, Data2) = 0)) then
        Result := 0
      else if (not CaseInsensitive and (Data1 < Data2)) or
              (    CaseInsensitive and (AnsiCompareText(Data1, Data2) < 0)) then
        Result := -1
      else
        Result := 1;
  end;

  function CompareSortItem(Data1, Data2: Variant; OrderByItem: TOrderByItem): Integer;
  var
    CaseInsensitive: Boolean;
  begin
    CaseInsensitive := OrderByItem.CaseIns and
      (OrderByItem.Field.DataType in
        [ftString, ftMemo, ftFmtMemo, ftFixedChar, ftWideString]);
    Result := CompareSimpleSortVarValues(Data1, Data2, CaseInsensitive);
    if OrderByItem.Desc then
      if Result = -1 then Result := 1
      else if Result = 1 then Result := -1;
  end;

var
  Data1, Data2: Variant;
  I: Integer;
begin
  Result := 0;
  AOrderByList := TOrderByList(FOrderByList);
  if AOrderByList <> nil then
  begin
    Data1 := GetFieldValues(Item1);
    Data2 := GetFieldValues(Item2);

    if AOrderByList.Count > 1 then
    begin
      for I := 0 to AOrderByList.Count - 1 do
      begin
        Result := CompareSortItem(Data1[I], Data2[I], AOrderByList[I]);
        if Result <> 0 then
          Exit;
      end;
    end else
      Result := CompareSortItem(Data1, Data2, AOrderByList[0]);
  end;
end;

function TCustomMemTableEh.GetDataFieldsCount: Integer;
begin
  Result := FieldDefs.Count;
end;

procedure TCustomMemTableEh.InstantReadEnter(RowNum: Integer);
begin
  FInstantReadMode := True;
  if (State in [dsEdit, dsInsert]) and (RowNum = FInstantReadCurRow) then
  begin
    CopyBuffer(ActiveBuffer, FInstantBuffer);
    PRecBuf(FInstantBuffer).RecInfo.RecordNumber := -1;
  end else if FRecordsView.Count = 0 then
  begin
    InternalInitRecord(FInstantBuffer);
  end else
  begin
    if (State = dsInsert) and (RowNum > FInstantReadCurRow) then
      Dec(RowNum);
    if PRecBuf(FInstantBuffer).RecInfo.RecordNumber <> RowNum then
    begin
      RecordToBuffer(FRecordsView[RowNum].Data, FInstantBuffer);
      PRecBuf(FInstantBuffer).RecInfo.Bookmark := FRecordsView[RowNum].ID;
      PRecBuf(FInstantBuffer).RecInfo.RecordNumber := RowNum;
    end;
  end;
end;

procedure TCustomMemTableEh.InstantReadLeave;
begin
  FInstantReadMode := False;
end;

function TCustomMemTableEh.InstantReadRowCount: Integer;
begin
  Result := RecordCount;
  if State = dsInsert then
    Inc(Result);
end;

procedure TCustomMemTableEh.InternalInsert;
begin
  if GetBookmarkFlag(ActiveBuffer) = bfEOF then
    FInstantReadCurRow := FRecordsView.Count;
end;

procedure TCustomMemTableEh.SetKeyFields(const Value: String);
begin
  FKeyFields := Value;
end;

procedure TCustomMemTableEh.SetProviderDataSet(const Value: TDataSet);
begin
  if Value <> FProviderDataSet then
  begin
    FProviderDataSet := Value;
    if Value <> nil then Value.FreeNotification(Self);
  end;
end;

function TCustomMemTableEh.DefaultFetchRecord(PacketDataSet: TDataSet; var ProviderEOF: Boolean): Integer;
var
  Field: TField;
  i: Integer;
begin
  PacketDataSet.Append;
  try
    with PacketDataSet do
      for i := 0 to FieldCount-1 do
        if Fields[i].FieldNo > 0 then
        begin
          Field := ProviderDataSet.FieldByName(Fields[i].FieldName);
          Fields[i].Value := Field.Value;
        end;
  except
    PacketDataSet.Cancel;
    ProviderEOF := True;
    raise;
  end;

  ProviderDataSet.Next;

  if ProviderDataSet.Eof then
    ProviderEOF := True;
  Result := 1;
end;

function TCustomMemTableEh.DoFetchRecords(Count: Integer): Integer;
var
  i: Integer;
  Field: TField;
  Rec: TMemoryRecordEh;
  RecInFilter: Boolean;
  PacketDataSet: TCustomMemTableEh;
  Applied, AProviderEOF: Boolean;
begin
  Result := 0;
  if ProviderEOF = True then Exit;
  while Count <> 0 do
  begin
    Applied := False;
    PacketDataSet := nil;
    try

    if Assigned(OnFetchRecord) then
    begin
      PacketDataSet := CreateDeltaDataSet;
      AProviderEOF := False;
      OnFetchRecord(PacketDataSet, AProviderEOF, Applied);
      PacketDataSet.CheckBrowseMode;
      FProviderEOF := AProviderEOF;
      if Applied and (PacketDataSet.RecordCount = 0) and FProviderEOF then //No records at all
        Exit;
      if Applied and (PacketDataSet.RecordCount = 0) and not FProviderEOF then
        DatabaseError('OnFetchRecord have not provide data.');
    end;
    if not Applied then
    begin
      if (ProviderDataSet = nil) or
       ((ProviderDataSet <> nil) and not ProviderDataSet.Active) or
       ((ProviderDataSet <> nil) and ProviderDataSet.Active and ProviderDataSet.Eof)
      then
        FProviderEOF := True;
      if (ProviderDataSet = nil) or (ProviderEOF = True) then
        Exit;
    end;

    Rec := FRecordsView.NewRecord;

    if Applied then
      Rec.Data^ := PacketDataSet.FRecordsView[0].Data^
    else
    begin
      for i := 0 to FieldCount-1 do
        if Fields[i].FieldNo > 0 then
        begin
          Field := ProviderDataSet.FindField(Fields[i].FieldName);
          Rec.Data^[Fields[i].FieldNo-1] := Field.Value;
        end;

      ProviderDataSet.Next;

      if ProviderDataSet.Eof then
        FProviderEOF := True;
    end;

    RecInFilter := FRecordsView.FetchRecord(Rec);
    Inc(Result);

    if FProviderEOF then Exit;

    if RecInFilter and (Count > 0) then
      Dec(Count);

    finally
      PacketDataSet.Free;
    end;
  end;
end;

function TCustomMemTableEh.FetchRecords(Count: Integer): Integer;
begin
  Result := 0;
  if not Active then Exit;
  Result := DoFetchRecords(Count);
  if Result > 0 then
    Resync([]);
end;

procedure TCustomMemTableEh.SetDetailFields(const Value: String);
begin
  FDetailFields := Value;
  UpdateDetailMode(True);
end;

procedure TCustomMemTableEh.SetMasterFields(const Value: String);
begin
  FMasterDataLink.FieldNames := Value;
  UpdateDetailMode(True);
end;

function TCustomMemTableEh.GetMasterFields: String;
begin
  Result := FMasterDataLink.FieldNames;
end;

procedure TCustomMemTableEh.SetMasterSource(const Value: TDataSource);
begin
  FMasterDataLink.DataSource := Value;
  UpdateDetailMode(True);
end;

function TCustomMemTableEh.GetMasterSource: TDataSource;
begin
  Result := FMasterDataLink.DataSource;
end;

function TCustomMemTableEh.InternalApplyUpdates(MaxErrors: Integer): Integer;
var
  I: Integer;
  MemRec: TMemoryRecordEh;
  UpdateKind: TUpdateKind;
begin
  Result := 0;
  for I := 0 to FRecordsView.MemTableData.RecordsList.DeltaList.Count-1 do
  begin
    MemRec := TMemoryRecordEh(FRecordsView.MemTableData.RecordsList.DeltaList[I]);
    if MemRec = nil then Continue;

    case MemRec.UpdateStatus of
      usModified: UpdateKind := ukModify;
      usInserted: UpdateKind := ukInsert;
      usDeleted: UpdateKind := ukDelete;
    else
      raise Exception.Create('Attempt to update Unmodified record');
    end;
    Result := Result +
      ApplyUpdate(MemRec.OLdData, MemRec.Data, UpdateKind, ProviderDataSet, MemRec.Data);
  end;
//  Result := FRecordsView.ApplyUpdates(MaxErrors, ProviderDataSet);

  FRecordsView.MergeChangeLog;
end;

function TCustomMemTableEh.ApplyUpdates(MaxErrors: Integer): Integer;
begin
  Result := InternalApplyUpdates(MaxErrors);
  Resync([]);
end;

function TCustomMemTableEh.ApplyUpdate(OldRecValues,
  NewRecValues: PRecValues; UpdateKind: TUpdateKind;
  TargetDataSet: TDataSet; OutRecValues: PRecValues): Integer;
var
  DeltaDataSet: TCustomMemTableEh;
  j: Integer;
begin
  Result := 0;
  DeltaDataSet := CreateDeltaDataSet;
  try
    DeltaDataSet.Edit;
    for j := 0 to DeltaDataSet.FieldCount-1 do
        case UpdateKind of
        ukInsert: DeltaDataSet.Fields[j].Value := NewRecValues^[j];
        ukModify: DeltaDataSet.Fields[j].Value := OldRecValues^[j];
        ukDelete: DeltaDataSet.Fields[j].Value := NewRecValues^[j];
      end;

    DeltaDataSet.Post;
    if UpdateKind in [ukModify, ukDelete]  then
    begin
      DeltaDataSet.MergeChangeLog;
      DeltaDataSet.Edit;
      for j := 0 to DeltaDataSet.FieldCount-1 do
        DeltaDataSet.Fields[j].Value := NewRecValues^[j];
      DeltaDataSet.Post;
    end;

    Result := Result +
      UpdateRecord(DeltaDataSet, UpdateKind, OutRecValues <> nil);

    if OutRecValues <> nil then
      for j := 0 to DeltaDataSet.FieldCount-1 do
        OutRecValues^[j] := DeltaDataSet.Fields[j].Value;

    DeltaDataSet.ClearRecords;
  finally
    DeltaDataSet.Free;
  end;
end;

function TCustomMemTableEh.UpdateRecord(DeltaDataSet: TDataSet; UpdateKind: TUpdateKind; RefreshRecord: Boolean): Integer;
var
  UpdateAction: TMTUpdateActionEh;
begin
  Result := 1;
  while True do
  begin
    UpdateAction := uaApplyEh;
    if Assigned(OnUpdateRecord) then
      OnUpdateRecord(DeltaDataSet, UpdateKind, UpdateAction);
    if UpdateAction <> uaRetryEh then Break;
  end;

  if UpdateAction in [uaAbortEh, uaSkipEh, uaAppliedEh] then Exit; { TODO : Support uaAbort in CachedUpdates mode }
  if UpdateAction = uaFailEh then
    DatabaseError('UpdateRecord is Fail');
  Result := DefaultUpdateRecord(DeltaDataSet, UpdateKind, RefreshRecord);
end;

function TCustomMemTableEh.DefaultUpdateRecord(DeltaDataSet: TDataSet;
  UpdateKind: TUpdateKind; RefreshRecord: Boolean): Integer;
var
  vOldValues: Variant;
  i: Integer;
  KeyFound: Boolean;
  Bookmark: TBookmarkStr;
  ProviderField: TField;
begin
  Result := 0;
  if (ProviderDataSet <> nil) then
  begin
    Bookmark := ProviderDataSet.Bookmark;
    try

    if UpdateKind in [ukModify, ukDelete] then
    begin
      vOldValues := GetOldFieldValue(DeltaDataSet, KeyFields);
      KeyFound := ProviderDataSet.Locate(KeyFields, vOldValues, []);
    end else
      KeyFound := True;

    if KeyFound then
    begin

      if UpdateKind = ukModify then
        ProviderDataSet.Edit
      else if UpdateKind = ukInsert then
        ProviderDataSet.Insert
      else
        ProviderDataSet.Delete;

      if UpdateKind in [ukModify, ukInsert] then
      begin
        try
          with DeltaDataSet do
            for i := 0 to FieldCount-1 do
              if Fields[i].FieldKind = fkData then
              begin
                ProviderField := ProviderDataSet.FieldByName(Fields[i].FieldName);
                if not ProviderField.ReadOnly then
                  ProviderField.Assign(Fields[i]);
              end;
          ProviderDataSet.Post;
        except
          on E: EDatabaseError do
          begin
            if ProviderDataSet.State in dsEditModes then
              ProviderDataSet.Cancel;
            raise;
          end;
        end;
        if RefreshRecord then
        begin
          DeltaDataSet.Edit;
          for i := 0 to DeltaDataSet.FieldCount-1 do
            if DeltaDataSet.Fields[i].FieldKind = fkData then
              DeltaDataSet.Fields[i].Assign(ProviderDataSet.FieldByName(DeltaDataSet.Fields[i].FieldName));
          DeltaDataSet.Post;
        end;
      end;

      Result := 1;
    end;
    finally
      if (Bookmark <> '') and ProviderDataSet.BookmarkValid(TBookmark(Bookmark)) then
        ProviderDataSet.Bookmark := Bookmark;
    end;
  end;
end;

procedure TCustomMemTableEh.MergeChangeLog;
begin
  FRecordsView.MergeChangeLog;
end;

function TCustomMemTableEh.GetCachedUpdates: Boolean;
begin
  Result := FCachedUpdates;
//  Result := FRecordsView.CachedUpdates;
end;

procedure TCustomMemTableEh.SetCachedUpdates(const Value: Boolean);
begin
  FCachedUpdates := Value;
//  FRecordsView.CachedUpdates := Value;
end;

{ TMemBlobStreamEh }

constructor TMemBlobStreamEh.Create(Field: TBlobField; Mode: TBlobStreamMode);
begin
  FMode := Mode;
  FField := Field;
  FDataSet := FField.DataSet as TCustomMemTableEh;
  if not FDataSet.GetActiveRecBuf(FBuffer) then
    Exit;
  if not FField.Modified and (Mode <> bmRead) then
  begin
    if FField.ReadOnly then
      ErrorFmt(SFieldReadOnly, [FField.DisplayName]);
    if not (FDataSet.State in [dsEdit, dsInsert]) then
      Error(SNotEditing);
    FCached := True;
  end
  else FCached := True;//(FBuffer = FDataSet.ActiveBuffer);
  FOpened := True;
  if Mode = bmWrite then
    Truncate;
end;

destructor TMemBlobStreamEh.Destroy;
begin
  if FOpened and FModified then
    FField.Modified := True;
  if FModified then
  try
    FDataSet.DataEvent(deFieldChange, Longint(FField));
  except
    Application.HandleException(Self);
  end;
end;

function TMemBlobStreamEh.GetBlobFromRecord(Field: TField): TMemBlobData;
var
  Rec: PRecValues;
  Pos: Integer;
begin
  Result := '';
  Pos := PRecBuf(FBuffer)^.RecInfo.RecordNumber;//  FDataSet.FRecordPos;
  if (Pos < 0) and (FDataSet.RecordCount > 0) then
    Pos := 0
  else if Pos >= FDataSet.RecordCount then
    Pos := FDataSet.RecordCount - 1;
  if (Pos >= 0) and (Pos < FDataSet.RecordCount) then
  begin
    Rec := FDataSet.FRecordsView[Pos].Data;
    if Rec <> nil then
      Result := Rec^[FField.FieldNo - 1];
  end;
end;

function TMemBlobStreamEh.Read(var Buffer; Count: Longint): Longint;
begin
  Result := 0;
  if FOpened then
  begin
    if Count > Size - FPosition
      then Result := Size - FPosition
      else Result := Count;
    if Result > 0 then
    begin
      if FCached then
      begin
        Move(PChar(FDataSet.GetBlobData(FField, FBuffer))[FPosition], Buffer, Result);
        Inc(FPosition, Result);
      end else
      begin
        Move(PChar(GetBlobFromRecord(FField))[FPosition], Buffer, Result);
        Inc(FPosition, Result);
      end;
    end;
  end;
end;

function TMemBlobStreamEh.Write(const Buffer; Count: Longint): Longint;
var
  Temp: TMemBlobData;
begin
  Result := 0;
  if FOpened and FCached and (FMode <> bmRead) then
  begin
    Temp := FDataSet.GetBlobData(FField, FBuffer);
    if Length(Temp) < FPosition + Count then
      SetLength(Temp, FPosition + Count);
    Move(Buffer, PChar(Temp)[FPosition], Count);
    FDataSet.SetBlobData(FField, FBuffer, Temp);
    Inc(FPosition, Count);
    Result := Count;
    FModified := True;
  end;
end;

function TMemBlobStreamEh.Seek(Offset: Longint; Origin: Word): Longint;
begin
  case Origin of
    0: FPosition := Offset;
    1: Inc(FPosition, Offset);
    2: FPosition := GetBlobSize + Offset;
  end;
  Result := FPosition;
end;

procedure TMemBlobStreamEh.Truncate;
begin
  if FOpened and FCached and (FMode <> bmRead) then
  begin
    FDataSet.SetBlobData(FField, FBuffer, '');
    FModified := True;
  end;
end;

function TMemBlobStreamEh.GetBlobSize: Longint;
begin
  Result := 0;
  if FOpened then
    if FCached then
      Result := Length(FDataSet.GetBlobData(FField, FBuffer))
    else
      Result := Length(GetBlobFromRecord(FField))
end;

end.
