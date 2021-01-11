{*******************************************************}
{                                                       }
{                     EhLib vX.X                        }
{                                                       }
{          TMemTableDataEh component (Build 5)          }
{                                                       }
{        Copyright (c) 2003 by EhLib Team and           }
{                Dmitry V. Bolshakov                    }
{                                                       }
{*******************************************************}

unit MemTableDataEh;

{$I EhLib.Inc}

interface

uses Windows, SysUtils, Classes,
{$IFDEF EH_LIB_6}
  Variants, MaskUtils, SqlTimSt, FMTBcd,
{$ELSE}
  ActiveX,
{$ENDIF}
  Db, Contnrs, DBCommon;

type

  TMemTableDataEh = class;
  TMTDataStructEh = class;
  TRecordsViewEh = class;

{ TDataSetExprParserEh }

  TDataSetExprParserTypeEh = (dsptFilterEh, dsptAggregateEh);

  TDataSetExprParserEh = class
  private
    FDataSet: TDataSet;
    FExprData: TExprData;
    FExprDataSize: Integer;
    FExprParserType: TDataSetExprParserTypeEh;
  public
    constructor Create(ADataSet: TDataSet; ExprParserType: TDataSetExprParserTypeEh);
    procedure ParseExpression(Expr: String);
    function IsCurRecordInFilter: Boolean;
    function CalcAggregateValue(RecordsView: TRecordsViewEh): Variant;
    function HasData: Boolean;
  end;

{ TMTDataFieldEh }

  TMTDataFieldEh = class(TComponent)
  private
    FDataStruct: TMTDataStructEh;
    FFieldId: Largeint;
    FFieldName: String;
    FAlignment: TAlignment;
    FDefaultExpression: String;
    FDisplayWidth: Integer;
    FEditMask: String;
    FReadOnly: Boolean;
    FRequired: Boolean;
    FSize: Integer;
    FVisible: Boolean;
    FDisplayLabel: String;
    procedure SetDataStruct(const Value: TMTDataStructEh);
    function GetIndex: Integer;
  protected
    function DefaultSize: Integer; virtual;
    function DefaultAlignment: TAlignment; virtual;
    function DefValueForDefaultExpression: String; virtual;
    function DefaultDisplayLabel: String; virtual;
    function DefaultDisplayWidth: Integer; virtual;
    function DefaultEditMask: String; virtual;
    function DefaultRequired: Boolean; virtual;
    function DefaultVisible: Boolean; virtual;
    function GetAlignment: TAlignment; virtual;
    function GetDataType: TFieldType; virtual;
    function GetDefaultExpression: String; virtual;
    function GetDisplayLabel: String; virtual;
    function GetDisplayWidth: Integer; virtual;
    function GetEditMask: String; virtual;
    function GetFieldName: String; virtual;
    function GetReadOnly: Boolean; virtual;
    function GetRequired: Boolean; virtual;
    function GetSize: Integer; virtual;
    function GetVisible: Boolean; virtual;
    procedure SetAlignment(const Value: TAlignment); virtual;
    procedure SetDefaultExpression(const Value: String); virtual;
    procedure SetDisplayLabel(const Value: String); virtual;
    procedure SetDisplayWidth(const Value: Integer); virtual;
    procedure SetEditMask(const Value: String); virtual;
    procedure SetFieldName(const Value: String); virtual;
    procedure SetReadOnly(const Value: Boolean); virtual;
    procedure SetRequired(const Value: Boolean); virtual;
    procedure SetSize(const Value: Integer); virtual;
    procedure SetVisible(const Value: Boolean); virtual;

    procedure CheckInactive;

    procedure SetParentComponent(AParent: TComponent); override;
    procedure ReadState(Reader: TReader); override;
    procedure AssignDataType(FieldType: TFieldType); virtual;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    function GetParentComponent: TComponent; override;
    function HasParent: Boolean; override;
    function CanDinaSize: Boolean; virtual;
    function GetVarDataType: TVarType; virtual;
    procedure Assign(Source: TPersistent); override;
    procedure AssignProps(Field: TField); virtual;

    property DataStruct: TMTDataStructEh read FDataStruct write SetDataStruct;
    property DataType: TFieldType read GetDataType;
    property Size: Integer read GetSize write SetSize;

    property Alignment: TAlignment read GetAlignment write SetAlignment;
    property DefaultExpression: String read GetDefaultExpression write SetDefaultExpression;
    property DisplayLabel: String read GetDisplayLabel write SetDisplayLabel;
    property DisplayWidth: Integer read GetDisplayWidth write SetDisplayWidth;
    property EditMask: String read GetEditMask write SetEditMask;
    property Required: Boolean read GetRequired write SetRequired;
    property Visible: Boolean read GetVisible write SetVisible;
    property Index: Integer read GetIndex;

  published
    property FieldName: String read GetFieldName write SetFieldName;
  end;

  TStringDataFieldTypesEh = (fdtStringEh, fdtFixedCharEh, fdtWideStringEh);

  TMTDataFieldClassEh = class of TMTDataFieldEh;

{ TMTStringDataFieldEh }

  TMTStringDataFieldEh = class(TMTDataFieldEh)
  private
    FFixedChar: Boolean;
    FTransliterate: Boolean;
    FStringDataType: TStringDataFieldTypesEh;
  protected
    function DefaultSize: Integer; override;
    function GetDataType: TFieldType; override;
    procedure AssignDataType(FieldType: TFieldType); override;
  public
    function CanDinaSize: Boolean; override;
    procedure AssignProps(Field: TField); override;
    procedure Assign(Source: TPersistent); override;
  published
    property StringDataType: TStringDataFieldTypesEh read FStringDataType write FStringDataType;
    property Alignment;
    property DefaultExpression;
    property DisplayLabel;
    property DisplayWidth;
    property EditMask;
    property Required;
    property Visible;

    property FixedChar: Boolean read FFixedChar write FFixedChar default False;
    property Size;// default 20;
    property Transliterate: Boolean read FTransliterate write FTransliterate default True;

  end;

  TNumericDataFieldTypesEh = (fdtSmallintEh, fdtIntegerEh, fdtWordEh,
    fdtFloatEh, fdtCurrencyEh, fdtBCDEh, fdtAutoIncEh, fdtLargeintEh
{$IFDEF EH_LIB_6}
    ,fdtFMTBcdEh
{$ENDIF}
    );

{ TMTNumericDataFieldEh }

  TMTNumericDataFieldEh = class(TMTDataFieldEh)
  private
    FDisplayFormat: string;
    FEditFormat: string;
    FCurrency: Boolean;
    FMaxValue: Double;
    FMinValue: Double;
    FPrecision: Integer;
    FNumericDataType: TNumericDataFieldTypesEh;
  protected
    function GetDataType: TFieldType; override;
    procedure AssignDataType(FieldType: TFieldType); override;
  public
    procedure AssignProps(Field: TField); override;
    procedure Assign(Source: TPersistent); override;
  published
    property NumericDataType: TNumericDataFieldTypesEh read FNumericDataType write FNumericDataType;
    property Alignment;
    property DefaultExpression;
    property DisplayLabel;
    property DisplayWidth;
    property EditMask;
    property Required;
    property Visible;

    property DisplayFormat: string read FDisplayFormat write FDisplayFormat;
    property EditFormat: string read FEditFormat write FEditFormat;
    property currency: Boolean read FCurrency write FCurrency;
    property MaxValue: Double read FMaxValue write FMaxValue;
    property MinValue: Double read FMinValue write FMinValue;
    property Precision: Integer read FPrecision write FPrecision;

  end;

  TDateTimeDataFieldTypesEh = (fdtDateEh, fdtTimeEh, fdtDateTimeEh
{$IFDEF EH_LIB_6}
   ,fdtTimeStampEh
{$ENDIF}
   );

{ TMTDateTimeDataFieldEh }

  TMTDateTimeDataFieldEh = class(TMTDataFieldEh)
  private
    FDisplayFormat: string;
    FDateTimeDataType: TDateTimeDataFieldTypesEh;
  protected
    function GetDataType: TFieldType; override;
    procedure AssignDataType(FieldType: TFieldType); override;
  public
    procedure AssignProps(Field: TField); override;
    procedure Assign(Source: TPersistent); override;
  published
    property DateTimeDataType: TDateTimeDataFieldTypesEh read FDateTimeDataType write FDateTimeDataType;
    property Alignment;
    property DefaultExpression;
    property DisplayLabel;
    property DisplayWidth;
    property EditMask;
    property Required;
    property Visible;

    property DisplayFormat: string read FDisplayFormat write FDisplayFormat;
  end;

{ TMTBlobDataFieldEh }

  TMTBlobDataFieldEh = class(TMTDataFieldEh)
  private
    FGraphicHeader: Boolean;
    FTransliterate: Boolean;
    FBlobType: TBlobType;
  protected
    function GetDataType: TFieldType; override;
    procedure AssignDataType(FieldType: TFieldType); override;
  public
    procedure AssignProps(Field: TField); override;
    procedure Assign(Source: TPersistent); override;
  published
    property Alignment;
    property DefaultExpression;
    property DisplayLabel;
    property DisplayWidth;
    property EditMask;
    property Required;
    property Visible;

    property BlobType: TBlobType read FBlobType write FBlobType;
    property GraphicHeader: Boolean read FGraphicHeader write FGraphicHeader;
    property Transliterate: Boolean read FTransliterate write FTransliterate;
  end;

{ TMTBooleanDataFieldEh }

  TMTBooleanDataFieldEh = class(TMTDataFieldEh)
  private
    FDisplayValues: string;
    procedure SetDisplayValues(const Value: string);
  protected
    function GetDataType: TFieldType; override;
    procedure AssignDataType(FieldType: TFieldType); override;
  public
    procedure AssignProps(Field: TField); override;
    procedure Assign(Source: TPersistent); override;
  published
    property Alignment;
    property DefaultExpression;
    property DisplayLabel;
    property DisplayWidth;
    property EditMask;
    property Required;
    property Visible;

    property DisplayValues: string read FDisplayValues write SetDisplayValues;
  end;

{ TMTDataStructEh }

  TMTDataStructEh = class(TComponent)
  private
    FList: TList;
    FMemTableData: TMemTableDataEh;
    FNextFieldId: Largeint;
    function GetCount: Integer;
    function GetDataField(Index: Integer): TMTDataFieldEh;
  protected
    procedure GetChildren(Proc: TGetChildProc; Root: TComponent); override;
    function GetChildOwner: TComponent; override;
  public
    constructor Create(AMemTableData: TMemTableDataEh); reintroduce;
    destructor Destroy; override;

    function CreateField(FieldClass: TMTDataFieldClassEh): TMTDataFieldEh;
    function FindField(const FieldName: string): TMTDataFieldEh;
    function FieldIndex(const FieldName: string): Integer;
    function FieldByName(const FieldName: string): TMTDataFieldEh;
    procedure Assign(Source: TPersistent); override;
    procedure CheckFieldName(const FieldName: string);
    procedure GetFieldList(List: TList; const FieldNames: string);
    procedure Clear;
    procedure InsertField(Field: TMTDataFieldEh);
    procedure RemoveField(Field: TMTDataFieldEh);
    procedure BuildStructFromFields(Fields: TFields);
    procedure BuildStructFromFieldDefs(FieldDefs: TFieldDefs);
    procedure BuildFieldDefsFromStruct(FieldDefs: TFieldDefs);

    property Count: Integer read GetCount;
    property MemTableData: TMemTableDataEh read FMemTableData;
    property DataFields[Index: Integer]: TMTDataFieldEh read GetDataField; default;
  end;

{ TMemoryRecordsEh }
  TRecordsListEh = class;

  TMemoryRecordsEh = class(TPersistent)
  private
    procedure ReadData(Reader: TReader);
    procedure WriteData(Writer: TWriter);
    function IsEmpty: Boolean;
  protected
    procedure DefineProperties(Filer: TFiler); override;
  end;

{ TMemTableDataEh }

  TMemTableDataEh = class(TComponent)
  private
    FDataStruct: TMTDataStructEh;
    FNewDataStruct: TMTDataStructEh;
    FRestructMode: Boolean;
    FRecordsList: TRecordsListEh;
    procedure AncestorNotFound(Reader: TReader; const ComponentName: string; ComponentClass: TPersistentClass; var Component: TComponent);
    procedure CreateComponent(Reader: TReader; ComponentClass: TComponentClass; var Component: TComponent);
    function GetIsEmpty: Boolean;
  protected
    procedure ReadState(Reader: TReader); override;
    procedure GetChildren(Proc: TGetChildProc; Root: TComponent); override;
    procedure CheckInactive;
    procedure Restruct;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    function BeginRestruct: TMTDataStructEh;
    procedure CancelRestruct;
    procedure CommitRestruct;
    procedure DestroyTable;

    property DataStruct: TMTDataStructEh read FDataStruct;
    property RecordsList: TRecordsListEh read FRecordsList;
    property IsEmpty: Boolean read GetIsEmpty; 
  end;


// MemoryRecords

  TRecDataValues = array of Variant;
  PRecValues = ^TRecDataValues;

  TMemBlobData = string;
  TMemoryRecordEh = class;
  TCompareRecords = function (Item1, Item2: PRecValues): Integer of object;

  TRecordsListNotification =
    (rlnRecAddedEh, rlnRecChangedEh, rlnRecDeletedEh, rlnListChangedEh,
     rlnRecMarkedForDelEh);

  TRecordsListNotificatorDataEventEh =
    procedure (MemRec: TMemoryRecordEh; Index: Integer; Action: TRecordsListNotification) of object;

  TRecIdEh = LongWord;

  TDataValueTypeEh = (dvtOldValueEh, dvtCurValueEh, dvtEditValueEh, dvtValueEh, dvtOldestValue);

{ TMemoryRecordEh }

  TMemoryRecordEh = class(TPersistent)
  private
    FChangeCount: Integer;
    FChanged: Boolean;
    FData: PRecValues;
//    FMemoryData: TCustomMemTableEh;
    FOldData: PRecValues;
    FRecordsList: TRecordsListEh;
    FTmpOldRecValue: PRecValues;
    FUpdateIndex: Integer;
    FUpdateStatus: TUpdateStatus;
    FID: TRecIdEh;
    function GetAttached: Boolean;
    function GetIndex: Integer;
    procedure SetUpdateStatus(const Value: TUpdateStatus);
    function GetDataStruct: TMTDataStructEh;
    function GetDataValues(const FieldNames: string; DataValueType: TDataValueTypeEh): Variant;
    procedure SetDataValues(const FieldNames: string; DataValueType: TDataValueTypeEh; const Value: Variant);
  protected
    procedure SetIndex(Value: Integer);
    procedure ReadData(Reader: TReader);
    procedure WriteData(Writer: TWriter);
  public
    constructor Create;
    destructor Destroy; override;
    procedure BeginEdit;
    procedure EndEdit(Changed: Boolean);
    procedure MergeChanges;
    procedure RevertRecord;
    procedure RefreshRecord(RecValues: TRecDataValues);
    property Attached: Boolean read GetAttached;
    property Data: PRecValues read FData;
    property DataValues[const FieldNames: string; DataValueType: TDataValueTypeEh]:
      Variant read GetDataValues write SetDataValues;
    property Index: Integer read GetIndex write SetIndex;
//    property MemoryData: TCustomMemTableEh read FMemoryData;
    property RecordsList: TRecordsListEh read FRecordsList;
    property DataStruct: TMTDataStructEh read GetDataStruct;
    property ID: TRecIdEh read FID;
    property UpdateStatus: TUpdateStatus read FUpdateStatus write SetUpdateStatus;
    property OldData: PRecValues read FOldData;
    property UpdateIndex: Integer read FUpdateIndex write FUpdateIndex;
  end;

  TMemoryRecordEhClass = class of TMemoryRecordEh;

{ TRecordsListNotificatorEh }

  TRecordsListNotificatorEh = class
  private
    FOnDataEvent: TRecordsListNotificatorDataEventEh;
    FRecordsList: TRecordsListEh;
    procedure SetRecordsList(const Value: TRecordsListEh);
  protected
    procedure DataEvent(MemRec: TMemoryRecordEh; Index: Integer; Action: TRecordsListNotification); virtual;
    procedure RecordAdded(MemRec: TMemoryRecordEh; Index: Integer); virtual;
    procedure RecordChanged(MemRec: TMemoryRecordEh; Index: Integer); virtual;
    procedure RecordDeleted(MemRec: TMemoryRecordEh; Index: Integer); virtual;
    procedure RecordListChanged; virtual;
  public
    constructor Create;
    destructor Destroy; override;
    property RecordsList: TRecordsListEh read FRecordsList write SetRecordsList;
    property OnDataEvent: TRecordsListNotificatorDataEventEh read FOnDataEvent write FOnDataEvent;
  end;

  {TRecordsListEh}

  TRecordsListEh = class(TComponent)
  private
    FCachedUpdates: Boolean;
    FDeltaList: TList;
    FItemClass: TMemoryRecordEhClass;
    FNewRecId: TRecIdEh;
    FNotificators: TList;
//    FRecValCount: Integer;
    FRecList: TList;
    FMemTableData: TMemTableDataEh;
//    FRecListById: TList;
    function GetRec(Index: Integer): TMemoryRecordEh;
    function GetRecValues(RecNo: Integer): TRecDataValues;
    function GetValue(RecNo, ValNo: Integer): Variant;
    procedure SetCachedUpdates(const Value: Boolean);
    procedure SetRec(Index: Integer; const Value: TMemoryRecordEh);
//    procedure SetRecValCount(const Value: Integer);
    procedure SetRecValues(RecNo: Integer; const Value: TRecDataValues);
    procedure SetValue(RecNo, ValNo: Integer; const Value: Variant);
    procedure ReadData(Reader: TReader);
    procedure WriteData(Writer: TWriter);
    function IsEmpty: Boolean;
    function GetDataStruct: TMTDataStructEh;
    function GetRecsCount: Integer;
    function GeRecValCount: Integer;
  protected
    function NewRecId: TRecIdEh;
    procedure AddNotificator(RecordsList: TRecordsListNotificatorEh);
    procedure InitRecord(RecValues: PRecValues);
    procedure Notify(MemRec: TMemoryRecordEh; Index: Integer; Action: TRecordsListNotification); reintroduce; virtual;
    procedure RemoveNotificator(RecordsList: TRecordsListNotificatorEh);
    procedure Delete(Index: Integer);
    procedure DefineProperties(Filer: TFiler); override;
  public
    constructor Create(AMemTableData: TMemTableDataEh); reintroduce;
    destructor Destroy; override;

    function AddRecord(Rec: TMemoryRecordEh): Integer;
    function FetchRecord(Rec: TMemoryRecordEh): Integer;
    function NewRecord: TMemoryRecordEh;
    function IndexOf(Item: Pointer): Integer;
    function HasCachedChanges: Boolean;
    procedure MergeChangeLog;
    procedure RevertRecord(Index: Integer);
    procedure CancelUpdates;
    procedure Move(CurIndex, NewIndex: Integer);
    procedure RefreshRecord(Index: Integer; RecValues: TRecDataValues);
    procedure Clear;
    procedure DeleteRecord(Index: Integer);
    procedure InsertRecord(Index: Integer; Rec: TMemoryRecordEh);
    procedure QuickSort(L, R: Integer; Compare: TCompareRecords);
    procedure PersistDeleteRecord(Index: Integer);
    procedure SortData(SortList: TList; Compare: TCompareRecords);
    property MemTableData: TMemTableDataEh read FMemTableData;
    property DataStruct: TMTDataStructEh read GetDataStruct;
    property CachedUpdates: Boolean read FCachedUpdates write SetCachedUpdates;
    property Rec[Index: Integer]: TMemoryRecordEh read GetRec write SetRec; default;
    property RecValCount: Integer read GeRecValCount;// write SetRecValCount;
    property RecValues[RecNo: Integer]: TRecDataValues read GetRecValues write SetRecValues;
    property Value[RecNo, ValNo: Integer]: Variant read GetValue write SetValue;
    property RecsCount: Integer read GetRecsCount;
    property DeltaList: TList read FDeltaList;
  end;

{ TMTAggregateEh }

  TMTAggregatesEh = class;

  TMTAggregateEh = class(TCollectionItem)
  private
    FExpression: string;
    FActive: Boolean;
    FDataSet: TDataSet;
    FValue: Variant;
    FInUse: Boolean;
    FDataType: TFieldType;
    FAggrExpr: TDataSetExprParserEh;
    procedure SetActive(Value: Boolean);
    procedure SetExpression(const Text: string);
  public
    constructor Create(Aggregates: TMTAggregatesEh; ADataSet: TDataSet); reintroduce; overload;
//    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    procedure Recalc;
    procedure Reset;
    function GetDisplayName: string; override;
    function Value: Variant;
    function Aggregates: TMTAggregatesEh;
    property DataSet: TDataSet read FDataSet;
    property DataType: TFieldType read FDataType;
  published
    property Active: Boolean read FActive write SetActive default False;
    property Expression: string read FExpression write SetExpression;
  end;

{ TMTAggregatesEh }

  TMTAggregatesEh = class(TCollection)
  private
    FOwner: TPersistent;
    FActive: Boolean;
    function GetItem(Index: Integer): TMTAggregateEh;
    procedure SetItem(Index: Integer; Value: TMTAggregateEh);
    procedure SetActive(const Value: Boolean);
  protected
    function GetOwner: TPersistent; override;
  public
    constructor Create(Owner: TPersistent);
    function Add: TMTAggregateEh;
    function DataSet: TDataSet;
    procedure Clear;
    procedure Reset;
    procedure Recalc;
    property Items[Index: Integer]: TMTAggregateEh read GetItem write SetItem; default;
    property Active: Boolean read FActive write SetActive;
  end;

{ TRecordsViewEh }
  TRecordsViewFilterEventEh = function (RecValues: PRecValues): Boolean of object;

  TRecordsViewEh = class(TPersistent)
  private
    FCachedUpdates: Boolean;
    FCachedUpdatesLockCount: Integer;
    FCatchChanged: Boolean;
    FFilteredRecsList: TList;
//    FRecordsList: TRecordsListEh;
    FMemTableData: TMemTableDataEh;
    FRLNotificator: TRecordsListNotificatorEh;
    FAggregates: TMTAggregatesEh;
    FOnFilterRecord: TRecordsViewFilterEventEh;
    function GetCount: Integer;
    function GetOldRecVals(Index: Integer): PRecValues;
    function GetRec(Index: Integer): TMemoryRecordEh;
    function GetRecValCount: Integer;
    function GetRecValues(RecNo: Integer): TRecDataValues;
    function GetValue(RecNo, ValNo: Integer): Variant;
    procedure SetCachedUpdates(const Value: Boolean);
    procedure SetRec(Index: Integer; const Value: TMemoryRecordEh);
//    procedure SetRecValCount(const Value: Integer);
    procedure SetRecValues(RecNo: Integer; const Value: TRecDataValues);
    procedure SetValue(RecNo, ValNo: Integer; const Value: Variant);
  protected
    FDisableFilterCount: Integer;
    FDataSet: TDataSet;
    function FilterRecord(MemRec: TMemoryRecordEh; Index: Integer): Boolean; virtual;
    procedure Notify(MemRec: TMemoryRecordEh; Index: Integer; Action: TRecordsListNotification); virtual;
    procedure RLDataEvent(MemRec: TMemoryRecordEh; Index: Integer; Action: TRecordsListNotification);
  public
    constructor Create(ADataSet: TDataSet);
    destructor Destroy; override;
    function FetchRecord(Rec: TMemoryRecordEh): Boolean;
    function AddRecord(Rec: TMemoryRecordEh): Integer;
    function FindRecId(RecId: TRecIdEh): Integer;
    function NewRecord: TMemoryRecordEh;
    function CalcAggrFieldFunc(FieldName, AggrFuncName: String): Variant;
    procedure CancelUpdates;
    procedure DeleteRecord(Index: Integer);
    procedure InsertRecord(Index: Integer; Rec: TMemoryRecordEh);
    procedure LockCachedUpdates;
    procedure MergeChangeLog;
    procedure RevertRecord(Index: Integer);
    procedure RefreshFilteredRecsList;
    procedure RefreshRecord(Index: Integer; RecValues: TRecDataValues);
    procedure UnlockCachedUpdates;
    procedure InstantDisableFilter;
    procedure InstantEnableFilter;
    property CachedUpdates: Boolean read FCachedUpdates write SetCachedUpdates;
    property Count: Integer read GetCount;
    property OldRecVals[Index: Integer]: PRecValues read GetOldRecVals;
    property Rec[Index: Integer]: TMemoryRecordEh read GetRec write SetRec; default;
    property RecValCount: Integer read GetRecValCount;// write SetRecValCount;
    property RecValues[RecNo: Integer]: TRecDataValues read GetRecValues write SetRecValues;
    property Value[RecNo, ValNo: Integer]: Variant read GetValue write SetValue;

    property MemTableData: TMemTableDataEh read FMemTableData;
    property Aggregates: TMTAggregatesEh read FAggregates;
    property CatchChanged: Boolean read FCatchChanged write FCatchChanged;
    property OnFilterRecord: TRecordsViewFilterEventEh read FOnFilterRecord write FOnFilterRecord;
  end;


const
  StringDataFieldsToFields: array[TStringDataFieldTypesEh] of TFieldType =
    (ftString, ftFixedChar, ftWideString);
  NumericDataFieldsToFields: array[TNumericDataFieldTypesEh] of TFieldType =
    (ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftAutoInc,
     ftLargeint
{$IFDEF EH_LIB_6}
     ,ftFMTBcd
{$ENDIF}
     );
  DateTimeDataFieldsToFields: array[TDateTimeDataFieldTypesEh] of TFieldType =
    (ftDate, ftTime, ftDateTime
{$IFDEF EH_LIB_6}
     ,ftTimeStamp
{$ENDIF}
     );

var
  DefaultDataFieldClasses: array[TFieldType] of TMTDataFieldClassEh = (
    nil,                        { ftUnknown }
    TMTStringDataFieldEh,       { ftString }
    TMTNumericDataFieldEh,      { ftSmallint }
    TMTNumericDataFieldEh,      { ftInteger }
    TMTNumericDataFieldEh,      { ftWord }
    TMTBooleanDataFieldEh,      { ftBoolean }
    TMTNumericDataFieldEh,      { ftFloat }
    TMTNumericDataFieldEh,      { ftCurrency }
    TMTNumericDataFieldEh,      { ftBCD }
    TMTDateTimeDataFieldEh,     { ftDate }
    TMTDateTimeDataFieldEh,     { ftTime }
    TMTDateTimeDataFieldEh,     { ftDateTime }
    nil{TBytesField},           { ftBytes }
    nil{TVarBytesField},        { ftVarBytes }
    TMTNumericDataFieldEh,      { ftAutoInc }
    TMTBlobDataFieldEh,         { ftBlob }
    TMTBlobDataFieldEh,         { ftMemo }
    TMTBlobDataFieldEh,         { ftGraphic }
    TMTBlobDataFieldEh,         { ftFmtMemo }
    TMTBlobDataFieldEh,         { ftParadoxOle }
    TMTBlobDataFieldEh,         { ftDBaseOle }
    TMTBlobDataFieldEh,         { ftTypedBinary }
    nil,                        { ftCursor }
    TMTStringDataFieldEh,       { ftFixedChar }
    TMTStringDataFieldEh,       { ftWideString }
    TMTNumericDataFieldEh,      { ftLargeInt }
    nil{TADTField},             { ftADT }
    nil{TArrayField},           { ftArray }
    nil{TReferenceField},       { ftReference }
    nil{TDataSetField},         { ftDataSet }
    TMTBlobDataFieldEh,         { ftOraBlob }
    TMTBlobDataFieldEh,         { ftOraClob }
    nil{TVariantField},         { ftVariant }
    nil{TInterfaceField},       { ftInterface }
    nil{TIDispatchField},       { ftIDispatch }
    TMTStringDataFieldEh        { ftGuid }
{$IFDEF EH_LIB_6}
    ,TMTDateTimeDataFieldEh     { ftTimeStamp }
    ,TMTNumericDataFieldEh      { ftFMTBCD }
{$ENDIF}
    );

function CalcAggregateValue(Aggregate: TMTAggregateEh; DataSet: TDataSet; Records: TRecordsViewEh): Variant;

implementation

uses DBConsts
{$IFDEF EH_LIB_6}
  ,DateUtils
{$ENDIF}
 ;


type
{$IFNDEF EH_LIB_6}
  PWordBool     = ^WordBool;
{$ENDIF}

  TDataSetCrack = class(TDataSet);

function PrepareExpr(Expr: String): String;
var
  i: Integer;
begin
  Result := '';
  for i := 1 to Length(Expr) do
  begin
    if Expr[i] <> ' ' then
      Result := Result + Expr[i];
  end;
  Result := AnsiUpperCase(Result);
end;

function CalcAggregateValue(Aggregate: TMTAggregateEh; DataSet: TDataSet; Records: TRecordsViewEh): Variant;
var
  AggrExpStr: String;
  FuncName: String;
  FieldName: String;
begin
  Result := Null;
  FieldName := '';
  FuncName := '';
  AggrExpStr := PrepareExpr(Aggregate.Expression);

  //Function
  if Copy(AggrExpStr,1,Length('COUNT(')) = 'COUNT(' then
  begin
    FuncName := 'COUNT';
    AggrExpStr := Copy(AggrExpStr, Length('COUNT(')+1, Length(AggrExpStr));
  end else if Copy(AggrExpStr,1,Length('SUM(')) = 'SUM(' then
  begin
    FuncName := 'SUM';
    AggrExpStr := Copy(AggrExpStr, Length('SUM(')+1, Length(AggrExpStr));
  end else if Copy(AggrExpStr,1,Length('MIN(')) = 'MIN(' then
  begin
    FuncName := 'MIN';
    AggrExpStr := Copy(AggrExpStr, Length('MIN(')+1, Length(AggrExpStr));
  end else if Copy(AggrExpStr,1,Length('MAX(')) = 'MAX(' then
  begin
    FuncName := 'MAX';
    AggrExpStr := Copy(AggrExpStr, Length('MAX(')+1, Length(AggrExpStr));
  end else if Copy(AggrExpStr,1,Length('AVG(')) = 'AVG(' then
  begin
    FuncName := 'AVG';
    AggrExpStr := Copy(AggrExpStr, Length('AVG(')+1, Length(AggrExpStr));
  end;

  //Field
  if (Length(AggrExpStr) > 0) and (AggrExpStr[Length(AggrExpStr)] = ')') then
    FieldName := Copy(AggrExpStr, 1, Length(AggrExpStr)-1);

  Result := Records.CalcAggrFieldFunc(FieldName, FuncName);
end;

{ TMemTableDataEh }

function TMemTableDataEh.BeginRestruct: TMTDataStructEh;
begin
  if FRestructMode then
    raise Exception.Create('MemTableData already in RestructMode.');
  FNewDataStruct.Assign(FDataStruct);
  FRestructMode := True;
  Result := FNewDataStruct;
end;

procedure TMemTableDataEh.CancelRestruct;
begin
  FRestructMode := False;
  FNewDataStruct.Clear;
end;

procedure TMemTableDataEh.CheckInactive;
begin

end;

procedure TMemTableDataEh.CommitRestruct;
begin
  FRestructMode := False;
  Restruct;
end;

constructor TMemTableDataEh.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataStruct := TMTDataStructEh.Create(Self);
  FDataStruct.Name := 'DataStruct';
  FNewDataStruct := TMTDataStructEh.Create(Self);
  FRecordsList := TRecordsListEh.Create(Self);
  FRecordsList.Name := 'RecordsList';
end;

destructor TMemTableDataEh.Destroy;
begin
  FDataStruct.Free;
  FNewDataStruct.Free;
  FRecordsList.Free;
  inherited Destroy;
end;

procedure TMemTableDataEh.DestroyTable;
begin
  RecordsList.Clear;
  DataStruct.Clear;
//  FRec
end;

procedure TMemTableDataEh.AncestorNotFound(Reader: TReader;
  const ComponentName: string; ComponentClass: TPersistentClass;
  var Component: TComponent);
begin
  if (ComponentName = 'DataStruct') and (Reader.Root <> nil) then
    Component := FDataStruct
  else if (ComponentName = 'RecordsList') and (Reader.Root <> nil) then
    Component := FRecordsList;
end;

procedure TMemTableDataEh.CreateComponent(Reader: TReader;
  ComponentClass: TComponentClass; var Component: TComponent);
begin
  if ComponentClass.InheritsFrom(TMTDataStructEh) then
    Component := FDataStruct
  else if ComponentClass.InheritsFrom(TRecordsListEh) then
    Component := FRecordsList;
end;

procedure TMemTableDataEh.ReadState(Reader: TReader);
var
  OldOnCreateComponent: TCreateComponentEvent;
  OldOnAncestorNotFound: TAncestorNotFoundEvent;
begin
  DestroyTable; //Clear before read

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

procedure TMemTableDataEh.GetChildren(Proc: TGetChildProc; Root: TComponent);
begin
  Proc(DataStruct);
  Proc(RecordsList);
end;

procedure TMemTableDataEh.Restruct;

  function FieldId(AFieldId: Longint): TMTDataFieldEh;
  var
    i: Integer;
  begin
    Result := nil;
    for i := 0 to DataStruct.Count-1 do
    begin
      if DataStruct[i].FFieldId = AFieldId then
      begin
        Result := DataStruct[i];
        Exit;
      end;
    end;
  end;

var
  i: Integer;
begin
  for i := 0 to FNewDataStruct.Count-1 do
  begin
    if FieldId(FNewDataStruct[i].FFieldId) <> nil then
    begin
      { TODO : Really do change struct}
    end;
  end;
end;

function TMemTableDataEh.GetIsEmpty: Boolean;
begin
  Result := (DataStruct.Count = 0);
end;

{ TMTDataStructEh }

constructor TMTDataStructEh.Create(AMemTableData: TMemTableDataEh);
begin
  inherited Create(AMemTableData);
  FMemTableData := AMemTableData;
  FList := TList.Create;
end;

destructor TMTDataStructEh.Destroy;
begin
  Clear;
  FList.Free;
  inherited Destroy;
end;

procedure TMTDataStructEh.Clear;
var
  i: Integer;
begin
  for i := 0 to FList.Count-1 do
    TMTDataFieldEh(FList[i]).Free;
  FList.Clear;  
end;

function TMTDataStructEh.GetCount: Integer;
begin
  Result := FList.Count;
end;

function TMTDataStructEh.GetDataField(Index: Integer): TMTDataFieldEh;
begin
  Result := FList[Index];
end;

function TMTDataStructEh.CreateField(FieldClass: TMTDataFieldClassEh): TMTDataFieldEh;
begin
  Result := FieldClass.Create(Self);
  Result.DataStruct := Self;
  Result.FFieldId := FNextFieldId;
  Inc(FNextFieldId);
end;

procedure TMTDataStructEh.InsertField(Field: TMTDataFieldEh);
begin
//  if Field.FDataStruct <> nil then
//    Field.DataStruct.RemoveField(Field);
  FList.Add(Field);
  Field.FDataStruct := Self;
end;

procedure TMTDataStructEh.RemoveField(Field: TMTDataFieldEh);
var
  Index: Integer;
begin
  if Field.DataStruct <> Self then Exit;
  Index := FList.IndexOf(Field);
  if Index >= 0 then
  begin
    FList.Delete(Index);
    Field.FDataStruct := nil;
  end;
end;

procedure TMTDataStructEh.CheckFieldName(const FieldName: string);
begin
  if FieldName = '' then DatabaseError('SFieldNameMissing', MemTableData);
  if FindField(FieldName) <> nil then
    DatabaseErrorFmt(SDuplicateFieldName, [FieldName], MemTableData);
end;

function TMTDataStructEh.FindField(const FieldName: string): TMTDataFieldEh;
var
  I: Integer;
begin
  for I := 0 to FList.Count - 1 do
  begin
    Result := FList.Items[I];
    if AnsiCompareText(Result.FFieldName, FieldName) = 0 then Exit;
  end;
  Result := nil;
end;

procedure TMTDataStructEh.GetChildren(Proc: TGetChildProc; Root: TComponent);
var
  I: Integer;
  Field: TMTDataFieldEh;
begin
  for I := 0 to Count - 1 do
  begin
    Field := DataFields[I];
    Proc(Field);
  end;
end;

function TMTDataStructEh.GetChildOwner: TComponent;
begin
  Result := Self;
end;

procedure TMTDataStructEh.BuildStructFromFieldDefs(FieldDefs: TFieldDefs);
var
  i: Integer;
  DataField: TMTDataFieldEh;
begin
  MemTableData.DestroyTable;
  for i := 0 to FieldDefs.Count-1 do
  begin
    DataField := CreateField(DefaultDataFieldClasses[FieldDefs[i].DataType]);
    DataField.AssignDataType(FieldDefs[i].DataType);
    DataField.FieldName := FieldDefs[i].Name;
//    property FieldNo: Integer read GetFieldNo write FFieldNo stored False;
//    property InternalCalcField: Boolean read FInternalCalcField write FInternalCalcField;
//    property ParentDef: TFieldDef read GetParentDef;
    DataField.Required := FieldDefs[i].Required;
//    property Attributes: TFieldAttributes read FAttributes write SetAttributes default [];
//    property ChildDefs: TFieldDefs read GetChildDefs write SetChildDefs stored HasChildDefs;
//    property DataType: TFieldType read FDataType write SetDataType default ftUnknown;
    if DataField is TMTNumericDataFieldEh then
      (DataField as TMTNumericDataFieldEh).Precision := FieldDefs[i].Precision;
    if DataField.CanDinaSize then
      DataField.Size := FieldDefs[i].Size;
  end;
end;

procedure TMTDataStructEh.BuildStructFromFields(Fields: TFields);
var
  i: Integer;
  DataField: TMTDataFieldEh;
begin
  MemTableData.DestroyTable;
  for i := 0 to Fields.Count-1 do
  begin
    if Fields[i].FieldKind in [fkData, fkInternalCalc] then
    begin
      DataField := CreateField(DefaultDataFieldClasses[Fields[i].DataType]);
      DataField.AssignDataType(Fields[i].DataType);
      DataField.FieldName := Fields[i].FieldName;
      DataField.AssignProps(Fields[i]);
    end;
  end;
end;

procedure TMTDataStructEh.BuildFieldDefsFromStruct(FieldDefs: TFieldDefs);

  procedure CreateFieldDefs(FieldDefs: TFieldDefs);
  var
    I: Integer;
    F: TMTDataFieldEh;
    FieldDef: TFieldDef;
  begin
    for I := 0 to Count - 1 do
    begin
      F := DataFields[I];
      with F do
      begin
        FieldDef := FieldDefs.AddFieldDef;
        FieldDef.Name := F.FieldName;
        FieldDef.DataType := DataType;
        FieldDef.Size := Size;
        if Required then
          FieldDef.Attributes := [faRequired];
//        if ReadOnly then
//          FieldDef.Attributes := FieldDef.Attributes + [faReadonly];
        if (DataType = ftBCD) and (F is TMTNumericDataFieldEh) then
          FieldDef.Precision := TMTNumericDataFieldEh(F).Precision;
//        if F is TObjectField then
//          CreateFieldDefs(TObjectField(F).Fields, FieldDef.ChildDefs);
      end;
    end;
  end;

begin
  FieldDefs.BeginUpdate;
  FieldDefs.Clear;
  try
    CreateFieldDefs(FieldDefs);
  finally
    FieldDefs.EndUpdate;
  end;
end;

function TMTDataStructEh.FieldIndex(const FieldName: string): Integer;
var
  I: Integer;
begin
  Result := -1;
  for I := 0 to Count - 1 do
    if UpperCase(DataFields[I].FieldName) = UpperCase(FieldName) then
    begin
      Result := I;
      Exit;
    end;
  if Result = -1 then
    DatabaseErrorFmt(SFieldNotFound, [FieldName], Self);
end;

procedure TMTDataStructEh.GetFieldList(List: TList; const FieldNames: string);
var
  Pos: Integer;
  Field: TMTDataFieldEh;
begin
  Pos := 1;
  while Pos <= Length(FieldNames) do
  begin
    Field := FieldByName(ExtractFieldName(FieldNames, Pos));
    if Assigned(List) then List.Add(Field);
  end;
end;

function TMTDataStructEh.FieldByName(const FieldName: string): TMTDataFieldEh;
begin
  Result := FindField(FieldName);
  if Result = nil then
    DatabaseErrorFmt(SFieldNotFound, [FieldName], Self);
end;

procedure TMTDataStructEh.Assign(Source: TPersistent);
var
  i: Integer;
  DataField: TMTDataFieldEh;
begin
  if Source is TMTDataStructEh then
  begin
    if MemTableData.RecordsList.RecsCount > 0 then
      raise Exception.Create('Can not assign struct for not empty list of records');
    Clear;
    for i:=0 to TMTDataStructEh(Source).Count-1 do
    begin
      DataField := CreateField(TMTDataFieldClassEh(TMTDataStructEh(Source)[i].ClassType));
      DataField.Assign(TMTDataStructEh(Source)[i]);
      InsertField(DataField);
    end;
  end else
    inherited Assign(Source);
end;

{ TMTDataFieldEh }

constructor TMTDataFieldEh.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TMTDataFieldEh.Destroy;
begin
  inherited Destroy;
end;

function TMTDataFieldEh.DefaultAlignment: TAlignment;
begin
  Result := taLeftJustify;
end;

function TMTDataFieldEh.DefaultDisplayLabel: String;
begin
  Result := Name;
end;

function TMTDataFieldEh.DefaultDisplayWidth: Integer;
begin
  Result := 50;
end;

function TMTDataFieldEh.DefaultEditMask: String;
begin
  Result := '';
end;

function TMTDataFieldEh.DefaultRequired: Boolean;
begin
  Result := False;
end;

function TMTDataFieldEh.DefaultSize: Integer;
begin
  Result := 0;
end;

function TMTDataFieldEh.DefaultVisible: Boolean;
begin
  Result := True;
end;

function TMTDataFieldEh.DefValueForDefaultExpression: String;
begin
  Result := '';
end;

function TMTDataFieldEh.GetAlignment: TAlignment;
begin
  Result := FAlignment;
end;

function TMTDataFieldEh.GetDataType: TFieldType;
begin
  Result := ftUnknown;
end;

function TMTDataFieldEh.GetDefaultExpression: String;
begin
  Result := FDefaultExpression;
end;

function TMTDataFieldEh.GetDisplayLabel: String;
begin
  Result := FDisplayLabel;
end;

function TMTDataFieldEh.GetDisplayWidth: Integer;
begin
  Result := FDisplayWidth;
end;

function TMTDataFieldEh.GetEditMask: String;
begin
  Result := FEditMask;
end;

function TMTDataFieldEh.GetFieldName: String;
begin
  Result := FFieldName;
end;

function TMTDataFieldEh.GetReadOnly: Boolean;
begin
  Result := FReadOnly;
end;

function TMTDataFieldEh.GetRequired: Boolean;
begin
  Result := FRequired;
end;

function TMTDataFieldEh.GetSize: Integer;
begin
  Result := FSize;
end;

function TMTDataFieldEh.GetVisible: Boolean;
begin
  Result := FVisible;
end;

procedure TMTDataFieldEh.SetAlignment(const Value: TAlignment);
begin
  FAlignment := Value;
end;

procedure TMTDataFieldEh.SetDataStruct(const Value: TMTDataStructEh);
begin
  if FDataStruct <> nil then
    FDataStruct.RemoveField(Self);
  if Value <> nil then
    Value.InsertField(Self);
//  FList.Add(Field);
//  Field.FDataStruct := Self;
end;

procedure TMTDataFieldEh.SetDefaultExpression(const Value: String);
begin
  FDefaultExpression := Value;
end;

procedure TMTDataFieldEh.SetDisplayLabel(const Value: String);
begin
  FDisplayLabel := Value;
end;

procedure TMTDataFieldEh.SetDisplayWidth(const Value: Integer);
begin
  FDisplayWidth := Value;
end;

procedure TMTDataFieldEh.SetEditMask(const Value: String);
begin
  FEditMask := Value;
end;

procedure TMTDataFieldEh.SetFieldName(const Value: String);
begin
  CheckInactive;
  if (DataStruct <> nil) and (AnsiCompareText(Value, FFieldName) <> 0) then
    DataStruct.CheckFieldName(Value);
  FFieldName := Value;
  Name := Value;
//  if FDisplayLabel = Value then FDisplayLabel := '';
//  if FDataSet <> nil then FDataSet.FFields.Changed;
end;

procedure TMTDataFieldEh.SetReadOnly(const Value: Boolean);
begin
  FReadOnly := Value;
end;

procedure TMTDataFieldEh.SetRequired(const Value: Boolean);
begin
  FRequired := Value;
end;

procedure TMTDataFieldEh.SetSize(const Value: Integer);
begin
  if not CanDinaSize then
    DatabaseError(SInvalidFieldSize);
  FSize := Value;
end;

procedure TMTDataFieldEh.SetVisible(const Value: Boolean);
begin
  FVisible := Value;
end;

function TMTDataFieldEh.GetParentComponent: TComponent;
begin
  Result := DataStruct;
end;

procedure TMTDataFieldEh.SetParentComponent(AParent: TComponent);
begin
  if not (csLoading in ComponentState) then
    FDataStruct := AParent as TMTDataStructEh;
end;

function TMTDataFieldEh.HasParent: Boolean;
begin
  Result := True;
end;

procedure TMTDataFieldEh.ReadState(Reader: TReader);
begin
  inherited ReadState(Reader);
  DataStruct := TMTDataStructEh(Reader.Parent);
end;

procedure TMTDataFieldEh.Assign(Source: TPersistent);
begin
  if Source is TMTDataFieldEh then
  begin
    FieldName := TMTDataFieldEh(Source).FieldName;
    if CanDinaSize then
      Size := TMTDataFieldEh(Source).Size;
    Alignment := TMTDataFieldEh(Source).Alignment;
    DefaultExpression := TMTDataFieldEh(Source).DefaultExpression;
    DisplayLabel := TMTDataFieldEh(Source).DisplayLabel;
    DisplayWidth := TMTDataFieldEh(Source).DisplayWidth;
    EditMask := TMTDataFieldEh(Source).EditMask;
    Required := TMTDataFieldEh(Source).Required;
    Visible := TMTDataFieldEh(Source).Visible;
  end else
    inherited Assign(Source);
end;

procedure TMTDataFieldEh.CheckInactive;
begin
  if (DataStruct <> nil) and (DataStruct.MemTableData <> nil) then
    DataStruct.MemTableData.CheckInactive;
end;

function TMTDataFieldEh.CanDinaSize: Boolean;
begin
  Result := False;
end;

procedure TMTDataFieldEh.AssignProps(Field: TField);
begin
  Alignment := Field.Alignment;
  DefaultExpression := Field.DefaultExpression;
  DisplayLabel := Field.DisplayLabel;
  DisplayWidth := Field.DisplayWidth;
  EditMask := Field.EditMask;
  Required := Field.Required;
  if CanDinaSize then
    Size := Field.Size;
  Visible := Field.Visible;
end;

function TMTDataFieldEh.GetVarDataType: TVarType;
begin
  case DataType of
    ftUnknown: Result := varError;
    ftString: Result := varString;
    ftSmallint: Result := varSmallint;
    ftInteger: Result := varInteger;
    ftWord: Result := varInteger;
    ftBoolean: Result := varBoolean;
    ftFloat: Result := varDouble;
    ftCurrency: Result := varCurrency;
    ftBCD: Result := varCurrency;
    ftDate: Result := varDate;
    ftTime: Result := varDate;
    ftDateTime: Result := varDate;
    ftBytes: Result := varString;
    ftVarBytes: Result := varString;
    ftAutoInc: Result := varInteger;
    ftBlob: Result := varString;
    ftMemo: Result := varString;
    ftGraphic: Result := varString;
    ftFmtMemo: Result := varString;
    ftParadoxOle: Result := varString;
    ftDBaseOle: Result := varString;
    ftTypedBinary: Result := varString;
    ftCursor: Result := varError;
    ftFixedChar: Result := varString;
    ftWideString: Result := varOleStr;
{$IFDEF EH_LIB_6}
    ftLargeint: Result := varInt64;
{$ELSE}
    ftLargeint: Result := varError;
{$ENDIF}
    ftADT: Result := varError;
    ftArray: Result := varError;
    ftReference: Result := varError;
    ftDataSet: Result := varError;
    ftOraBlob: Result := varString;
    ftOraClob: Result := varString;
    ftVariant: Result := varVariant;
    ftInterface: Result := varUnknown;
    ftIDispatch: Result := varDispatch;
    ftGuid: Result := varString;
{$IFDEF EH_LIB_6}
    ftTimeStamp: Result := varSQLTimeStamp;
    ftFMTBcd: Result := varFMTBcd;
{$ENDIF}
  else
    Result := varEmpty;
  end;
end;

procedure TMTDataFieldEh.AssignDataType(FieldType: TFieldType);
begin
  raise Exception.Create('Can not assign DataType from Field');
end;

function TMTDataFieldEh.GetIndex: Integer;
begin
  Result := DataStruct.FList.IndexOf(Self);
end;

{ TMTBooleanDataFieldEh }

procedure TMTBooleanDataFieldEh.Assign(Source: TPersistent);
begin
  inherited Assign(Source);
  if Source is TMTBooleanDataFieldEh then
  begin
    DisplayValues := TMTBooleanDataFieldEh(Source).DisplayValues;
  end;
end;

procedure TMTBooleanDataFieldEh.AssignDataType(FieldType: TFieldType);
begin
  if DataType <> ftBoolean then
    raise Exception.Create('Can not assign DataType from Field');
end;

procedure TMTBooleanDataFieldEh.AssignProps(Field: TField);
begin
  inherited AssignProps(Field);
  if (Field is TBooleanField) then
    DisplayValues := TBooleanField(Field).DisplayValues;
end;

function TMTBooleanDataFieldEh.GetDataType: TFieldType;
begin
  Result := ftBoolean;
end;

procedure TMTBooleanDataFieldEh.SetDisplayValues(const Value: string);
begin
  FDisplayValues := Value;
end;

{ TMTStringDataFieldEh }

procedure TMTStringDataFieldEh.AssignDataType(FieldType: TFieldType);
begin
  case FieldType of
    ftString: FStringDataType := fdtStringEh;
    ftFixedChar: FStringDataType := fdtFixedCharEh;
    ftWideString: FStringDataType := fdtWideStringEh;
  else
    raise Exception.Create('Can not assign DataType from Field');
  end;
end;

procedure TMTStringDataFieldEh.Assign(Source: TPersistent);
begin
  inherited Assign(Source);
  if Source is TMTStringDataFieldEh then
  begin
    StringDataType := TMTStringDataFieldEh(Source).StringDataType;
    FixedChar := TMTStringDataFieldEh(Source).FixedChar;
    Transliterate := TMTStringDataFieldEh(Source).Transliterate;
  end;
end;

procedure TMTStringDataFieldEh.AssignProps(Field: TField);
begin
  inherited AssignProps(Field);

  if (Field is TStringField) then
  begin
    FixedChar := TStringField(Field).FixedChar;
    Transliterate := TStringField(Field).Transliterate;
  end
end;

function TMTStringDataFieldEh.CanDinaSize: Boolean;
begin
  Result := True;
end;

function TMTStringDataFieldEh.DefaultSize: Integer;
begin
  Result := 20;
end;

function TMTStringDataFieldEh.GetDataType: TFieldType;
begin
  Result := StringDataFieldsToFields[FStringDataType];
end;

{ TMTNumericDataFieldEh }

procedure TMTNumericDataFieldEh.Assign(Source: TPersistent);
begin
  inherited Assign(Source);
  if Source is TMTNumericDataFieldEh then
  begin
    NumericDataType := TMTNumericDataFieldEh(Source).NumericDataType;
    DisplayFormat := TMTNumericDataFieldEh(Source).DisplayFormat;
    EditFormat := TMTNumericDataFieldEh(Source).EditFormat;
    currency := TMTNumericDataFieldEh(Source).currency;
    MaxValue := TMTNumericDataFieldEh(Source).MaxValue;
    MinValue := TMTNumericDataFieldEh(Source).MinValue;
    Precision := TMTNumericDataFieldEh(Source).Precision;
  end;
end;

procedure TMTNumericDataFieldEh.AssignDataType(FieldType: TFieldType);
begin
  case FieldType of
    ftSmallint: FNumericDataType := fdtSmallintEh;
    ftInteger: FNumericDataType := fdtIntegerEh;
    ftWord: FNumericDataType := fdtWordEh;
    ftFloat: FNumericDataType := fdtFloatEh;
    ftCurrency: FNumericDataType := fdtCurrencyEh;
    ftBCD: FNumericDataType := fdtBCDEh;
    ftAutoInc: FNumericDataType := fdtAutoIncEh;
{$IFDEF EH_LIB_6}
    ftLargeint: FNumericDataType := fdtLargeintEh;
    ftFMTBcd: FNumericDataType := fdtFMTBcdEh;
{$ENDIF}
  else
    raise Exception.Create('Can not assign DataType from Field');
  end;
end;

procedure TMTNumericDataFieldEh.AssignProps(Field: TField);
begin
  inherited AssignProps(Field);
  if (Field is TNumericField) then
  begin
    DisplayFormat := TNumericField(Field).DisplayFormat;
    EditFormat := TNumericField(Field).EditFormat;
    if (Field is TIntegerField) then
    begin
      MaxValue := TIntegerField(Field).MaxValue;
      MinValue := TIntegerField(Field).MinValue;
    end;
    if (Field is TLargeintField) then
    begin
      MaxValue := TLargeintField(Field).MaxValue;
      MinValue := TLargeintField(Field).MinValue;
    end;
    if (Field is TFloatField) then
    begin
      currency := TFloatField(Field).currency;
      MaxValue := TFloatField(Field).MaxValue;
      MinValue := TFloatField(Field).MinValue;
      Precision := TFloatField(Field).Precision;
    end;
    if (Field is TBCDField) then
    begin
      currency := TBCDField(Field).currency;
      MaxValue := TBCDField(Field).MaxValue;
      MinValue := TBCDField(Field).MinValue;
      Precision := TBCDField(Field).Precision;
    end;
{$IFDEF EH_LIB_6}
    if (Field is TFMTBCDField) then
    begin
      currency := TFMTBCDField(Field).currency;
//      MaxValue := TFMTBCDField(Field).MaxValue;
//      MinValue := TFMTBCDField(Field).MinValue;
      Precision := TFMTBCDField(Field).Precision;
    end;
{$ENDIF}
  end
end;

function TMTNumericDataFieldEh.GetDataType: TFieldType;
begin
  Result := NumericDataFieldsToFields[FNumericDataType];
end;

{ TMTDateTimeDataFieldEh }

procedure TMTDateTimeDataFieldEh.AssignDataType(FieldType: TFieldType);
begin
  case FieldType of
    ftDate: FDateTimeDataType := fdtDateEh;
    ftTime: FDateTimeDataType := fdtTimeEh;
    ftDateTime: FDateTimeDataType := fdtDateTimeEh;
{$IFDEF EH_LIB_6}
    ftTimeStamp: FDateTimeDataType := fdtTimeStampEh;
{$ENDIF}
  else
    raise Exception.Create('Can not assign DataType from Field');
  end;
end;

procedure TMTDateTimeDataFieldEh.Assign(Source: TPersistent);
begin
  inherited Assign(Source);
  if Source is TMTDateTimeDataFieldEh then
  begin
    DateTimeDataType := TMTDateTimeDataFieldEh(Source).DateTimeDataType;
    DisplayFormat := TMTDateTimeDataFieldEh(Source).DisplayFormat;
  end;
end;

procedure TMTDateTimeDataFieldEh.AssignProps(Field: TField);
begin
  inherited AssignProps(Field);
  if (Field is TDateTimeField) then
    DisplayFormat := TDateTimeField(Field).DisplayFormat;
end;

function TMTDateTimeDataFieldEh.GetDataType: TFieldType;
begin
  Result := DateTimeDataFieldsToFields[FDateTimeDataType];
end;

{ TMTBlobDataFieldEh }

procedure TMTBlobDataFieldEh.AssignDataType(FieldType: TFieldType);
begin
//  if not (Field is TBlobField) then
//    raise Exception.Create('Can not assign DataType from Field');
end;

procedure TMTBlobDataFieldEh.Assign(Source: TPersistent);
begin
  inherited Assign(Source);
  if Source is TMTBlobDataFieldEh then
  begin
    BlobType := TMTBlobDataFieldEh(Source).BlobType;
    GraphicHeader := TMTBlobDataFieldEh(Source).GraphicHeader;
    Transliterate := TMTBlobDataFieldEh(Source).Transliterate;
  end;
end;

procedure TMTBlobDataFieldEh.AssignProps(Field: TField);
begin
  inherited AssignProps(Field);
  if (Field is TBlobField) then
  begin
    BlobType := TBlobField(Field).BlobType;
{$IFDEF EH_LIB_6}
    GraphicHeader := TBlobField(Field).GraphicHeader;
{$ENDIF}
    Transliterate := TBlobField(Field).Transliterate;
  end;
end;

function TMTBlobDataFieldEh.GetDataType: TFieldType;
begin
  Result := BlobType;
end;

{ TMemoryRecordsEh }

procedure TMemoryRecordsEh.DefineProperties(Filer: TFiler);
begin
  Filer.DefineProperty('Data', ReadData, WriteData, not IsEmpty);
end;

function TMemoryRecordsEh.IsEmpty: Boolean;
begin
  Result := True;
end;

procedure TMemoryRecordsEh.ReadData(Reader: TReader);
begin

end;

procedure TMemoryRecordsEh.WriteData(Writer: TWriter);
var
  i: Integer;
begin
  with Writer do
  begin
    WriteListBegin;
    for i := 0 to 0 do
    begin

    end;
    WriteListEnd;
  end;
end;

{ TMemoryRecordEh }

constructor TMemoryRecordEh.Create;
begin
  inherited Create;
  New(FData);
  FUpdateStatus := usUnmodified;
  FUpdateIndex := -1;
end;

destructor TMemoryRecordEh.Destroy;
begin
  MergeChanges;
  Dispose(FData);
  inherited Destroy;
end;

function TMemoryRecordEh.GetAttached: Boolean;
begin
  Result := (Index <> -1);
end;

procedure TMemoryRecordEh.BeginEdit;
begin
  if FChangeCount = 0 then
  begin
    if FTmpOldRecValue = nil then
      New(FTmpOldRecValue);
    FTmpOldRecValue^ := FData^;
  end;
  Inc(FChangeCount);
end;

procedure TMemoryRecordEh.EndEdit(Changed: Boolean);
begin
  if Changed then
    FChanged := Changed;
  if FChangeCount > 0 then
    Dec(FChangeCount);
  if FChangeCount = 0 then
  begin
    if FChanged and (RecordsList <> nil) then
      RecordsList.Notify(Self, Index, rlnRecChangedEh);
    if FChanged and (RecordsList <> nil) and RecordsList.CachedUpdates then
    begin
      if FUpdateStatus = usDeleted then
         raise Exception.Create('Can not modify deleted record')
      else if FUpdateStatus = usInserted then
      begin
        // Nothing to do
      end else
      begin
        FUpdateStatus := usModified;
        if FUpdateIndex = -1 then
          FUpdateIndex := RecordsList.FDeltaList.Add(Self);
        if FOldData = nil then
        begin
  //        Dispose(FOldData);
          FOldData := FTmpOldRecValue;
          FTmpOldRecValue := nil;
        end;
      end;
    end;
    if FTmpOldRecValue <> nil then
    begin
      Dispose(FTmpOldRecValue);
      FTmpOldRecValue := nil;
    end;
    FChanged := False;
  end;
end;

procedure TMemoryRecordEh.MergeChanges;
begin
  if FOldData = nil then Exit;
  Dispose(FOldData);
  FOldData := nil;
  FUpdateStatus := usUnmodified;
end;

function TMemoryRecordEh.GetIndex: Integer;
begin
  if FRecordsList <> nil then
    Result := FRecordsList.IndexOf(Self) else
    Result := -1;
end;

procedure TMemoryRecordEh.SetIndex(Value: Integer);
var
  CurIndex: Integer;
begin
  CurIndex := GetIndex;
  if (CurIndex >= 0) and (CurIndex <> Value) then
    FRecordsList.Move(CurIndex, Value);
end;

procedure TMemoryRecordEh.RevertRecord;
begin
  case FUpdateStatus of
    usModified:
      begin
        Dispose(FData);
        FData := FOldData;
        FOldData := nil;
        FUpdateStatus := usUnmodified;
        RecordsList.Notify(Self, Index, rlnRecChangedEh);
      end;
    usDeleted:
      begin
        FUpdateStatus := usUnmodified;
        RecordsList.Notify(Self, Index, rlnRecChangedEh);
      end;
  end;
end;

procedure TMemoryRecordEh.RefreshRecord(RecValues: TRecDataValues);
begin
  if FUpdateStatus = usModified
    then FOldData^ := RecValues
    else FData^ := RecValues;
end;

procedure TMemoryRecordEh.SetUpdateStatus(const Value: TUpdateStatus);
begin
  FUpdateStatus := Value;
end;

{$IFNDEF EH_LIB_6}

function ReadVariantProp(Reader: TReader): Variant;
const
  ValTtoVarT: array[TValueType] of Integer = (varNull, varError, varByte,
    varSmallInt, varInteger, varDouble, varString, varError, varBoolean,
    varBoolean, varError, varError, varString, varEmpty, varError, varSingle,
    varCurrency, varDate, varOleStr, varError);
var
  Value: Variant;
  ValType: TValueType;
begin
  ValType := Reader.NextValue;
  case ValType of
    vaNil, vaNull:
    begin
      if Reader.ReadValue = vaNil then
        VarClear(Value) else
        Value := NULL;
    end;
    vaInt8: TVarData(Value).VByte := Byte(Reader.ReadInteger);
    vaInt16: TVarData(Value).VSmallint := Smallint(Reader.ReadInteger);
    vaInt32: TVarData(Value).VInteger := Reader.ReadInteger;
    vaExtended: TVarData(Value).VDouble := Reader.ReadFloat;
    vaSingle: TVarData(Value).VSingle := Reader.ReadSingle;
    vaCurrency: TVarData(Value).VCurrency := Reader.ReadCurrency;
    vaDate: TVarData(Value).VDate := Reader.ReadDate;
    vaString, vaLString: Value := Reader.ReadString;
    vaWString: Value := Reader.ReadWideString;
    vaFalse, vaTrue: TVarData(Value).VBoolean := Reader.ReadValue = vaTrue;
  else
    raise EReadError.Create('SReadError');
  end;
  TVarData(Value).VType := ValTtoVarT[ValType];
  Result := Value;
end;

procedure WriteVariantProp(Writer: TWriter; Value: Variant);
var
  VType: Integer;

  procedure WriteValue(Value: TValueType);
  begin
    Writer.Write(Value, SizeOf(Value));
  end;

begin
  if VarIsArray(Value) then raise EWriteError.Create('SWriteError');
  VType := VarType(Value);
  case VType and varTypeMask of
    varEmpty: WriteValue(vaNil);
    varNull: WriteValue(vaNull);
    varOleStr: Writer.WriteWideString(Value);
    varString: Writer.WriteString(Value);
    varByte, varSmallInt, varInteger: Writer.WriteInteger(Value);
    varSingle: Writer.WriteSingle(Value);
    varDouble: Writer.WriteFloat(Value);
    varCurrency: Writer.WriteCurrency(Value);
    varDate: Writer.WriteDate(Value);
    varBoolean:
      if Value then
        WriteValue(vaTrue) else
        WriteValue(vaFalse);
  else
    try
      Writer.WriteString(Value);
    except
      raise EWriteError.Create('SWriteError');
    end;
  end;
end;

{$ENDIF}

procedure TMemoryRecordEh.ReadData(Reader: TReader);
var
  v: Variant;
  i: Integer;
begin
  Reader.ReadListBegin;
  for i := 0 to Length(Data^)-1 do
  begin
{$IFDEF EH_LIB_6}
    v := Reader.ReadVariant;
{$ELSE}
    v := ReadVariantProp(Reader);
{$ENDIF}
    if VarIsEmpty(v) then
      Data^[i] := Null
    else
      VarCast(Data^[i], v, DataStruct[i].GetVarDataType);
  end;
  Reader.ReadListEnd;
end;

procedure TMemoryRecordEh.WriteData(Writer: TWriter);
var
  i: Integer;
begin
  Writer.WriteListBegin;
  for i := 0 to Length(Data^)-1 do
  begin
    if VarIsNull(Data^[i]) then
{$IFDEF EH_LIB_6}
    Writer.WriteVariant(Unassigned)
{$ELSE}
    WriteVariantProp(Writer, Unassigned)
{$ENDIF}
    else if VarIsEmpty(Data^[i]) then
      raise Exception.Create('"TMemoryRecordEh.WriteData" - Invalid variant type - varEmpty')
    else
{$IFDEF EH_LIB_6}
      Writer.WriteVariant(Data^[i]);
{$ELSE}
      WriteVariantProp(Writer, Data^[i]);
{$ENDIF}
  end;
  Writer.WriteListEnd;
end;

function TMemoryRecordEh.GetDataStruct: TMTDataStructEh;
begin
  Result := RecordsList.DataStruct;
end;

function TMemoryRecordEh.GetDataValues(const FieldNames: string; DataValueType: TDataValueTypeEh): Variant;
var
  I: Integer;
  Fields: TList;
begin
  if (DataValueType = dvtOldValueEh) and (FOldData = nil) then
    raise Exception.Create('TMemoryRecordEh.GetDataValues: Old values is not accessible.');
  if Pos(';', FieldNames) <> 0 then
  begin
    Fields := TList.Create;
    try
      DataStruct.GetFieldList(Fields, FieldNames);
      Result := VarArrayCreate([0, Fields.Count - 1], varVariant);
      for I := 0 to Fields.Count - 1 do
        Result[I] := Data^[TMTDataFieldEh(Fields[I]).Index];
    finally
      Fields.Free;
    end;
  end else
    if DataValueType = dvtOldValueEh
      then Result := OldData^[DataStruct.FieldIndex(FieldNames)]
      else Result := Data^[DataStruct.FieldIndex(FieldNames)];
end;

procedure TMemoryRecordEh.SetDataValues(const FieldNames: string;
  DataValueType: TDataValueTypeEh; const Value: Variant);
var
  I: Integer;
  Fields: TList;
begin
  if Pos(';', FieldNames) <> 0 then
  begin
    Fields := TList.Create;
    try
      DataStruct.GetFieldList(Fields, FieldNames);
      for I := 0 to Fields.Count - 1 do
        TField(Fields[I]).Value := Value[I];
    finally
      Fields.Free;
    end;
  end else
    Data^[DataStruct.FieldIndex(FieldNames)] := Value;
end;

{ TRecordsListNotificatorEh }

constructor TRecordsListNotificatorEh.Create;
begin
  inherited Create;
end;

destructor TRecordsListNotificatorEh.Destroy;
begin
  RecordsList := nil;
  inherited Destroy;
end;

procedure TRecordsListNotificatorEh.DataEvent(MemRec: TMemoryRecordEh;
  Index: Integer; Action: TRecordsListNotification);
begin
  if Assigned(FOnDataEvent) then
    FOnDataEvent(MemRec, Index, Action);
  case Action of
    rlnRecAddedEh: RecordAdded(MemRec, Index);
    rlnRecChangedEh: RecordChanged(MemRec, Index);
    rlnRecDeletedEh: RecordDeleted(MemRec, Index);
    rlnListChangedEh: RecordListChanged;
  end;
end;

procedure TRecordsListNotificatorEh.SetRecordsList(const Value: TRecordsListEh);
begin
  if Value = FRecordsList then Exit;
  if FRecordsList <> nil then FRecordsList.RemoveNotificator(Self);
  if Value <> nil then Value.AddNotificator(Self);
  FRecordsList := Value;
end;

procedure TRecordsListNotificatorEh.RecordAdded(MemRec: TMemoryRecordEh; Index: Integer);
begin
end;

procedure TRecordsListNotificatorEh.RecordChanged(MemRec: TMemoryRecordEh; Index: Integer);
begin
end;

procedure TRecordsListNotificatorEh.RecordDeleted(MemRec: TMemoryRecordEh; Index: Integer);
begin
end;

procedure TRecordsListNotificatorEh.RecordListChanged;
begin
end;

{ TRecordsListEh }

constructor TRecordsListEh.Create(AMemTableData: TMemTableDataEh);
begin
  inherited Create(nil);
  FItemClass := TMemoryRecordEh;
  FNotificators := TList.Create;
  FDeltaList := TList.Create;
  FNewRecId := 1;
  FRecList := TList.Create;
  FMemTableData := AMemTableData;
  FCachedUpdates := True;
end;

destructor TRecordsListEh.Destroy;
var
  i: Integer;
begin
  for i := 0 to FRecList.Count-1 do
    Rec[i].FUpdateIndex := -1;
  while FNotificators.Count > 0 do
    TRecordsListNotificatorEh(FNotificators[0]).RecordsList := nil;
  FNotificators.Free;
  FDeltaList.Free;
  FRecList.Free;
  inherited Destroy;
end;

function TRecordsListEh.NewRecord: TMemoryRecordEh;
begin
  Result := TMemoryRecordEh.Create;
  Result.FID := NewRecId;
  SetLength(Result.Data^, RecValCount);
  InitRecord(Result.Data);
  Result.FRecordsList := Self;
end;

function TRecordsListEh.AddRecord(Rec: TMemoryRecordEh): Integer;
begin
  Result := FRecList.Add(Rec);
  Rec.FRecordsList := Self;
  if CachedUpdates then
  begin
    Rec.FUpdateStatus := usInserted;
    if Rec.FUpdateIndex = -1 then
      Rec.FUpdateIndex := FDeltaList.Add(Rec);
  end else
    Rec.FUpdateStatus := usUnmodified;
  Notify(Rec, Result, rlnRecAddedEh);
end;

procedure TRecordsListEh.InsertRecord(Index: Integer; Rec: TMemoryRecordEh);
begin
  FRecList.Insert(Index, Rec);
  Rec.FRecordsList := Self;
  if CachedUpdates then
  begin
    Rec.FUpdateStatus := usInserted;
    if Rec.FUpdateIndex = -1 then
      Rec.FUpdateIndex := FDeltaList.Add(Rec);
  end else
    Rec.FUpdateStatus := usUnmodified;
  Notify(Rec, Index, rlnRecAddedEh);
end;

procedure TRecordsListEh.DeleteRecord(Index: Integer);
var
  ARec: TMemoryRecordEh;
begin
  if CachedUpdates then
  begin
    ARec := Rec[Index];
    if ARec.FUpdateStatus = usDeleted then
      raise Exception.Create('Can not MarkDel Deleted record');

    if ARec.FUpdateStatus = usInserted then
    begin
      if ARec.FUpdateIndex >= 0 then
        FDeltaList.Items[Rec[Index].FUpdateIndex] := nil;
      PersistDeleteRecord(Index);
    end else
    begin
      ARec.MergeChanges;
      ARec.FUpdateStatus := usDeleted;
      if ARec.FUpdateIndex = -1 then
        ARec.FUpdateIndex := FDeltaList.Add(Rec[Index]);
      Notify(ARec, Index, rlnRecMarkedForDelEh);
    end;
  end else
    PersistDeleteRecord(Index);
end;

procedure TRecordsListEh.PersistDeleteRecord(Index: Integer);
begin
  Notify(Rec[Index], Index, rlnRecDeletedEh);
  Delete(Index);
end;

function TRecordsListEh.GetValue(RecNo, ValNo: Integer): Variant;
begin
  Result := Rec[RecNo].Data^[ValNo];
end;

procedure TRecordsListEh.Notify(MemRec: TMemoryRecordEh; Index: Integer;
  Action: TRecordsListNotification);
var
  i: Integer;
begin
  for i := 0 to FNotificators.Count-1 do
    TRecordsListNotificatorEh(FNotificators[i]).DataEvent(MemRec, Index, Action);
end;

{
procedure TRecordsListEh.SetRecValCount(const Value: Integer);
begin
  if FRecValCount <> Value then
  begin
    Clear;
    FRecValCount := Value;
  end;
end;
}

procedure TRecordsListEh.SetValue(RecNo, ValNo: Integer; const Value: Variant);
var
  OldRecValue: TRecDataValues;
begin
  OldRecValue := Rec[RecNo].Data^;
  Rec[RecNo].Data^[ValNo] := Value;
  Notify(@OldRecValue, RecNo, rlnRecChangedEh);
end;

procedure TRecordsListEh.AddNotificator(RecordsList: TRecordsListNotificatorEh);
begin
  FNotificators.Add(RecordsList);
end;

procedure TRecordsListEh.RemoveNotificator(RecordsList: TRecordsListNotificatorEh);
begin
  FNotificators.Remove(RecordsList);
end;

procedure TRecordsListEh.InitRecord(RecValues: PRecValues);
var
  i: Integer;
begin
  for i := 0 to RecValCount-1 do
    RecValues^[i] := Null;
end;

procedure TRecordsListEh.Clear;
var
  i: Integer;
begin
  for i := 0 to FRecList.Count - 1 do
    Rec[i].Free;
  FRecList.Clear;
  Notify(nil, -1, rlnListChangedEh);
end;

function TRecordsListEh.GetRecValues(RecNo: Integer): TRecDataValues;
begin
  Result := Rec[RecNo].Data^;
end;

procedure TRecordsListEh.SetRecValues(RecNo: Integer; const Value: TRecDataValues);
var
  OldRecValue: TRecDataValues;
begin
  OldRecValue := Rec[RecNo].Data^;
  Rec[RecNo].Data^ := Value;
  Notify(@OldRecValue, RecNo, rlnRecChangedEh);
end;

function TRecordsListEh.GetRec(Index: Integer): TMemoryRecordEh;
begin
  Result := TMemoryRecordEh(FRecList.Items[Index]);
end;

procedure TRecordsListEh.SetRec(Index: Integer; const Value: TMemoryRecordEh);
begin
  FRecList.Items[Index] := Value;
end;

procedure TRecordsListEh.SetCachedUpdates(const Value: Boolean);
begin
  FCachedUpdates := Value;
end;

procedure TRecordsListEh.QuickSort(L, R: Integer; Compare: TCompareRecords);
var
  I, J: Integer;
  P: PRecValues;
begin
  repeat
    I := L;
    J := R;
    P := Rec[(L + R) shr 1].Data;
    repeat
      while Compare(Rec[I].Data, P) < 0 do
        Inc(I);
      while Compare(Rec[J].Data, P) > 0 do
        Dec(J);
      if I <= J then
      begin
        FRecList.Exchange(I, J);
        Inc(I);
        Dec(J);
      end;
    until I > J;
    if L < J then
      QuickSort(L, J, Compare);
    L := I;
  until I >= R;
end;

procedure TRecordsListEh.SortData(SortList: TList; Compare: TCompareRecords);
begin
  QuickSort(0, FRecList.Count-1, Compare);
  Notify(nil, -1, rlnListChangedEh);
end;

function TRecordsListEh.NewRecId: TRecIdEh;
begin
  Result := FNewRecId;
  Inc(FNewRecId);
end;

procedure TRecordsListEh.RevertRecord(Index: Integer);
begin
  if Rec[Index].UpdateStatus = usInserted then
    PersistDeleteRecord(Index)
  else
    Rec[Index].RevertRecord;
end;

procedure TRecordsListEh.RefreshRecord(Index: Integer; RecValues: TRecDataValues);
begin
  Rec[Index].RefreshRecord(RecValues);
end;

function TRecordsListEh.IndexOf(Item: Pointer): Integer;
begin
  Result := FRecList.IndexOf(Item);
end;

procedure TRecordsListEh.Move(CurIndex, NewIndex: Integer);
begin
  FRecList.Move(CurIndex, NewIndex);
end;

procedure TRecordsListEh.Delete(Index: Integer);
begin
  Rec[Index].Free;
  FRecList.Delete(Index);
end;

procedure TRecordsListEh.DefineProperties(Filer: TFiler);
begin
  Filer.DefineProperty('Data', ReadData, WriteData, not IsEmpty);
end;

function TRecordsListEh.IsEmpty: Boolean;
begin
  Result := (FRecList.Count = 0);
end;

procedure TRecordsListEh.ReadData(Reader: TReader);
var
  Rec: TMemoryRecordEh;
begin
  { TODO : Lock send notification about changes in RecordsList }
  Clear;
  with Reader do
  begin
    ReadListBegin;
    while not Reader.EndOfList do
    begin
      Rec := NewRecord;
      Rec.ReadData(Reader);
      AddRecord(Rec);
    end;
    ReadListEnd;
  end;
end;

procedure TRecordsListEh.WriteData(Writer: TWriter);
var
  i: Integer;
begin
  with Writer do
  begin
    WriteListBegin;
    for i := 0 to FRecList.Count-1 do
    begin
      Rec[i].WriteData(Writer);
    end;
    WriteListEnd;
  end;
end;

function TRecordsListEh.GetDataStruct: TMTDataStructEh;
begin
  Result := MemTableData.DataStruct;
end;

function TRecordsListEh.GetRecsCount: Integer;
begin
  Result := FRecList.Count;
end;

function TRecordsListEh.GeRecValCount: Integer;
begin
  Result := MemTableData.DataStruct.Count;
end;

function TRecordsListEh.HasCachedChanges: Boolean;
begin
  Result := (DeltaList.Count > 0);
end;

procedure TRecordsListEh.CancelUpdates;
var
  i: Integer;
begin
  for i := FRecList.Count - 1 downto 0 do
  begin
    with Rec[i] do
      case UpdateStatus of
        usModified:
          begin
            if FOldData = nil then Exit;
            Dispose(FData);
            FData := FOldData;
            FOldData := nil;
            FUpdateStatus := usUnmodified;
            Rec[i].UpdateIndex := -1;
          end;
        usInserted:
          Delete(Index);
        usDeleted:
          begin
            FUpdateStatus := usUnmodified;
            Rec[i].UpdateIndex := -1;
          end;
      end;
  end;
  FDeltaList.Clear;
  Notify(nil, -1, rlnListChangedEh);
end;

procedure TRecordsListEh.MergeChangeLog;
var
  i: Integer;
begin
  for i := RecsCount-1 downto 0 do
  begin
    if Rec[i].UpdateStatus = usDeleted then
      PersistDeleteRecord(i)
    else
    begin
      Rec[i].MergeChanges;
      Rec[i].UpdateStatus := usUnmodified;
      Rec[i].UpdateIndex := -1;
    end;
  end;
  DeltaList.Clear;
end;

function TRecordsListEh.FetchRecord(Rec: TMemoryRecordEh): Integer;
var
  OldCachedUpdates: Boolean;
begin
  OldCachedUpdates := FCachedUpdates;
  FCachedUpdates := False;
  try
    Result := AddRecord(Rec);
  finally
    FCachedUpdates := OldCachedUpdates;
  end;
end;

{ TMTAggregatesEh }

constructor TMTAggregatesEh.Create(Owner: TPersistent);
begin
  inherited Create(TMTAggregateEh);
  FOwner := Owner;
end;

function TMTAggregatesEh.Add: TMTAggregateEh;
begin
  //Result := TMTAggregateEh(inherited Add);
  //Result.FDataSet := DataSet;
  Result := TMTAggregateEh.Create(Self, DataSet);
end;

procedure TMTAggregatesEh.Clear;
begin
  inherited Clear;
end;

function TMTAggregatesEh.GetItem(Index: Integer): TMTAggregateEh;
begin
  Result := TMTAggregateEh(inherited GetItem(Index));
end;

function TMTAggregatesEh.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TMTAggregatesEh.SetItem(Index: Integer; Value: TMTAggregateEh);
begin
  inherited SetItem(Index, Value);
end;

procedure TMTAggregatesEh.SetActive(const Value: Boolean);
begin
  if FActive <> Value then
  begin
    FActive := Value;
    Recalc;
  end;
end;

procedure TMTAggregatesEh.Recalc;
var
  I: Integer;
begin
  for I := 0 to Count-1 do
    if TDataSetCrack(DataSet).IsCursorOpen
      and not (csLoading in DataSet.ComponentState) and (UpdateCount = 0)
    then
      Items[I].Recalc
    else
      Items[I].FValue := Null;
end;

function TMTAggregatesEh.DataSet: TDataSet;
begin
  Result := TRecordsViewEh(GetOwner).FDataSet;
end;

procedure TMTAggregatesEh.Reset;
var
  I: Integer;
  Aggr: TMTAggregateEh;
  Field: TAggregateField;
begin
  BeginUpdate;
  try
    Clear;
    for I := 0 to DataSet.AggFields.Count-1 do
    begin
      Field := DataSet.AggFields[I] as TAggregateField;
      Aggr := Add;
      Aggr.Assign(Field);
      Aggr.Reset;
      Field.Handle := Pointer(Aggr);
      Field.ResultType := Aggr.DataType;
    end;
  finally
    EndUpdate;
  end;
  Recalc;
end;

{ TMTAggregateEh }


constructor TMTAggregateEh.Create(Aggregates: TMTAggregatesEh; ADataSet: TDataSet);
begin
  FDataSet := ADataSet;
  inherited Create(Aggregates);
  FValue := Null;
  FInUse := False;
  FAggrExpr := TDataSetExprParserEh.Create(FDataSet, dsptAggregateEh);
end;

{constructor TMTAggregateEh.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FValue := Null;
  FAggrExpr := TDataSetExprParserEh.Create(FDataSet, dsptAggregateEh);
end;
}

destructor TMTAggregateEh.Destroy;
var
  I: Integer;
begin
  if Assigned(FDataSet) and Assigned(FDataSet.AggFields) then
    for I := 0 to FDataSet.AggFields.Count - 1 do
      if TAggregateField(FDataSet.AggFields[I]).Handle = Self then
        TAggregateField(FDataSet.AggFields[I]).Handle := nil;
  FAggrExpr.Free;
  inherited Destroy;
end;

procedure TMTAggregateEh.Assign(Source: TPersistent);
begin
  if Source is TMTAggregateEh then
  begin
    Active := TMTAggregateEh(Source).Active;
    Expression := TMTAggregateEh(Source).Expression;
  end
  else if Source is TAggregateField then
  begin
    Active := TAggregateField(Source).Active;
    Expression := TAggregateField(Source).Expression;
  end
  else
    inherited Assign(Source);
end;

function TMTAggregateEh.GetDisplayName: string;
begin
  Result := Expression;
  if Result = '' then
    Result := inherited GetDisplayName;
end;

procedure TMTAggregateEh.SetActive(Value: Boolean);
begin
  if Value <> FActive then
  begin
    FActive := Value;
    if (FDataSet <> nil) and (Aggregates.UpdateCount = 0) then
    try
      Recalc;
//      FDataSet.ResetAgg(Self);
    except
      FActive := False;
      raise;
    end;
  end;
end;

procedure TMTAggregateEh.SetExpression(const Text: string);
begin
{  if ( FDataSet <> nil ) and (FExpression <> Text ) and Active
    and not (csLoading in FDataSet.ComponentState)
  then
    DatabaseError(SAggActive, FDataSet);}
  if Text <> FExpression then
  begin
    FExpression := Text;
    Reset;
    if Aggregates.UpdateCount = 0 then
      Recalc;
  end;
end;

function TMTAggregateEh.Value: Variant;
begin
  Result := FValue;
end;

procedure TMTAggregateEh.Recalc;
begin
  if FInUse
  { TODO : For Sergo }
//    then FValue := FAggrExpr.CalcAggregateValue(TRecordsViewEh(Aggregates.Owner))
    then FValue := CalcAggregateValue(Self, DataSet, TRecordsViewEh(Aggregates.GetOwner))
    else FValue := Null;
end;

function TMTAggregateEh.Aggregates: TMTAggregatesEh;
begin
  Result := TMTAggregatesEh(Collection);
end;

procedure TMTAggregateEh.Reset;
begin
  FInUse := False;
  if (FDataSet <> nil) and TDataSetCrack(FDataSet).IsCursorOpen
    and Active and (Expression <> '') and Aggregates.Active then
  begin
    FAggrExpr.ParseExpression(Expression);
    FDataType := ftFloat;  { TODO : Check real datatype of expression }
    FInUse := True;
  end else
    FValue := Null;
end;

{ TRecordsViewEh }

constructor TRecordsViewEh.Create(ADataSet: TDataSet);
begin
  inherited Create;
  FDataSet := ADataSet;
//  FRecordsList := TRecordsListEh.Create;
  FMemTableData := TMemTableDataEh.Create(ADataSet);
  FMemTableData.Name := 'MemTableData';

  FRLNotificator := TRecordsListNotificatorEh.Create;
  FRLNotificator.RecordsList := FMemTableData.RecordsList;
//  FRecordsList.AddNotificator(FRLNotificator);
  FRLNotificator.OnDataEvent := RLDataEvent;
  FFilteredRecsList := TList.Create;
  FAggregates := TMTAggregatesEh.Create(Self);
  FCachedUpdates := True;
end;

destructor TRecordsViewEh.Destroy;
begin
  FFilteredRecsList.Free;
  FRLNotificator.RecordsList := nil;
  FMemTableData.Free;
//  FRecordsList.Free;
  FRLNotificator.Free;
  FAggregates.Free;
  inherited Destroy;
end;

function TRecordsViewEh.FilterRecord(MemRec: TMemoryRecordEh; Index: Integer): Boolean;
begin
  if MemRec.UpdateStatus = usDeleted
    then Result := False
    else Result := True;
  if Result and Assigned(OnFilterRecord) then
    Result := OnFilterRecord(MemRec.Data);
//    Result := FMemTable.IsRecordInFilter(MemRec.Data);
end;

procedure TRecordsViewEh.Notify(MemRec: TMemoryRecordEh;
  Index: Integer; Action: TRecordsListNotification);
begin
  FCatchChanged := True;
  FAggregates.Recalc;
end;

function BinSearch(SortedList: TList; Value: Integer): Integer;
var
  CurIndex, AMin, AMax : Integer;
begin
  if (SortedList.Count = 0) or (Integer(SortedList[0]) > Value) then
  begin
    Result := 0;
    Exit;
  end;
  if Integer(SortedList[SortedList.Count - 1]) < Value then
  begin
    Result := SortedList.Count;
    Exit;
  end;
  AMin := 0; AMax := SortedList.Count - 1;
  CurIndex := (AMax - AMin) div 2;
  Result := CurIndex;
  while True do
  begin
    if Integer(SortedList.Items[CurIndex]) > Value then
    begin
      AMax := CurIndex;
      CurIndex := (AMax + AMin) div 2;
    end else if Integer(SortedList.Items[CurIndex]) < Value then
    begin
      AMin := CurIndex;
      CurIndex := (AMax + AMin) div 2;
    end else
    begin
      Result := CurIndex;
      Exit;
    end;
    if Result = CurIndex then
    begin
      Inc(Result);
      Exit;
    end;
    Result := CurIndex;
  end;
end;

procedure TRecordsViewEh.RLDataEvent(MemRec: TMemoryRecordEh;
  Index: Integer; Action: TRecordsListNotification);
var
  NewIndex: Integer;
  NeedAdd, IndexInList: Boolean;
  i: Integer;

  procedure AddToFilterList;
  var
    I: Integer;
  begin
    if NeedAdd then
      FFilteredRecsList.Add(Pointer(Index))
    else
    begin
      FFilteredRecsList.Insert(NewIndex, Pointer(Index));
      for I := NewIndex+1 to FFilteredRecsList.Count - 1 do
        FFilteredRecsList[I] := Pointer(Integer(FFilteredRecsList[i]) + 1);
    end;
    Notify(MemRec, NewIndex, rlnRecAddedEh);
  end;

begin

  if FDisableFilterCount > 0 then
    Exit;
  IndexInList := False;

  if Index > -1 then
  begin
    NewIndex := BinSearch(FFilteredRecsList, Index);
    NeedAdd := (NewIndex > FFilteredRecsList.Count-1) or (FFilteredRecsList.Count = 0);
    IndexInList := (NewIndex <= FFilteredRecsList.Count-1) and not NeedAdd and
      (Integer(FFilteredRecsList[NewIndex]) = Index);
  end;

  case Action of
    rlnRecAddedEh:
      if FilterRecord(MemRec, Index) then
        AddToFilterList;
    rlnRecChangedEh, rlnRecMarkedForDelEh:
      if FilterRecord(MemRec, Index) then
      begin
        if IndexInList then //Was in visible buffer
          Notify(MemRec, NewIndex, Action)
        else
          AddToFilterList;
      end else
      begin
        if IndexInList then //Was in visible buffer
        begin
          FFilteredRecsList.Delete(NewIndex);
//          for i := NewIndex to FFilteredRecsList.Count - 1 do
//            FFilteredRecsList[i] := Pointer(Integer(FFilteredRecsList[i]) - 1);
          Notify(MemRec, NewIndex, Action);
        end;
      end;
    rlnRecDeletedEh:
      begin
        if IndexInList then //Was in visible buffer
        begin
          FFilteredRecsList.Delete(NewIndex);
  //        for i := NewIndex to FFilteredRecsList.Count - 1 do
  //          FFilteredRecsList[i] := Pointer(Integer(FFilteredRecsList[i]) - 1);
          Notify(MemRec, NewIndex, Action);
        end;
        for i := 0 to FFilteredRecsList.Count - 1 do
          if Integer(FFilteredRecsList[i]) >= NewIndex then
            FFilteredRecsList[i] := Pointer(Integer(FFilteredRecsList[i]) - 1);
      end;
    rlnListChangedEh:
      begin
        RefreshFilteredRecsList;
//        Notify(MemRec, Index, rlnListChangedEh);
      end;
  end;

end;

procedure TRecordsViewEh.RefreshFilteredRecsList;
var
  i: Integer;
begin
  FFilteredRecsList.Clear;
  for i := 0 to FMemTableData.RecordsList.RecsCount-1 do
    if FilterRecord(FMemTableData.RecordsList.Rec[i], i) then
      FFilteredRecsList.Add(Pointer(i));
  Notify(nil, -1, rlnListChangedEh);
end;

function TRecordsViewEh.FetchRecord(Rec: TMemoryRecordEh): Boolean;
begin
  LockCachedUpdates;
  try
    FCatchChanged := False;
    AddRecord(Rec);
    Result := FCatchChanged;
  finally
    UnlockCachedUpdates;
  end;
end;

procedure TRecordsViewEh.LockCachedUpdates;
begin
  Inc(FCachedUpdatesLockCount);
  FMemTableData.RecordsList.CachedUpdates := False;
end;

procedure TRecordsViewEh.UnlockCachedUpdates;
begin
  if FCachedUpdatesLockCount > 0 then
    Dec(FCachedUpdatesLockCount);
  if FCachedUpdatesLockCount = 0 then
  begin
    FMemTableData.RecordsList.CachedUpdates := FCachedUpdates;
  end;
end;

function TRecordsViewEh.GetCount: Integer;
begin
  Result := FFilteredRecsList.Count;
end;

function TRecordsViewEh.NewRecord: TMemoryRecordEh;
begin
  Result := FMemTableData.RecordsList.NewRecord;
end;

function TRecordsViewEh.AddRecord(Rec: TMemoryRecordEh): Integer;
begin
  Result := FMemTableData.RecordsList.AddRecord(Rec);
end;

procedure TRecordsViewEh.DeleteRecord(Index: Integer);
begin
  FMemTableData.RecordsList.DeleteRecord(Integer(FFilteredRecsList[Index]));
end;

function TRecordsViewEh.GetRec(Index: Integer): TMemoryRecordEh;
begin
  Result := FMemTableData.RecordsList[Integer(FFilteredRecsList[Index])];
end;

function TRecordsViewEh.GetRecValues(RecNo: Integer): TRecDataValues;
begin
  Result := FMemTableData.RecordsList.RecValues[Integer(FFilteredRecsList[RecNo])];// GetRecValues(Integer(FFilteredRecsList[RecNo]));
end;

function TRecordsViewEh.GetValue(RecNo, ValNo: Integer): Variant;
begin
  Result := FMemTableData.RecordsList.Value[RecNo, ValNo];// GetValue(Integer(FFilteredRecsList[RecNo]), ValNo);
end;

procedure TRecordsViewEh.InsertRecord(Index: Integer; Rec: TMemoryRecordEh);
begin
  FMemTableData.RecordsList.InsertRecord(Integer(FFilteredRecsList[Index]), Rec);
end;

procedure TRecordsViewEh.SetRec(Index: Integer; const Value: TMemoryRecordEh);
begin
  FMemTableData.RecordsList.Rec[Integer(FFilteredRecsList[Index])] := Value;//  SetRec(Integer(FFilteredRecsList[Index]), Value);
end;

{procedure TRecordsViewEh.SetRecValCount(const Value: Integer);
begin
//  FMemTableData.RecordsList.RecValCount := Value;
//  FRecordsList.SetRecValCount(Value);
end;}

procedure TRecordsViewEh.SetRecValues(RecNo: Integer; const Value: TRecDataValues);
begin
  //FRecordsList.SetRecValues(Integer(FFilteredRecsList[RecNo]), Value);
  FMemTableData.RecordsList.RecValues[Integer(FFilteredRecsList[RecNo])] := Value;
end;

procedure TRecordsViewEh.SetValue(RecNo, ValNo: Integer; const Value: Variant);
begin
//  FRecordsList.SetValue(Integer(FFilteredRecsList[RecNo]), ValNo, Value);
  FMemTableData.RecordsList.Value[Integer(FFilteredRecsList[RecNo]), ValNo] := Value;
end;

function TRecordsViewEh.GetRecValCount: Integer;
begin
//  Result := FRecordsList.RecValCount;
  Result := FMemTableData.RecordsList.RecValCount;
end;

function TRecordsViewEh.GetOldRecVals(Index: Integer): PRecValues;
begin
  Result := Rec[Index].OldData;
end;

procedure TRecordsViewEh.MergeChangeLog;
begin
  FMemTableData.RecordsList.MergeChangeLog;
end;

procedure TRecordsViewEh.SetCachedUpdates(const Value: Boolean);
begin
  if FCachedUpdates <> Value then
  begin
    FCachedUpdates := Value;
    FMemTableData.RecordsList.CachedUpdates := Value;
  end;
end;

function TRecordsViewEh.FindRecId(RecId: TRecIdEh): Integer;
var
  I: Integer;
begin
  Result := -1;
  for I := 0 to FFilteredRecsList.Count-1 do
    if FMemTableData.RecordsList[Integer(FFilteredRecsList[I])].ID = RecId then
    begin
      Result := I;
      Exit;
    end;
end;

procedure TRecordsViewEh.RevertRecord(Index: Integer);
begin
  FMemTableData.RecordsList.RevertRecord(Integer(FFilteredRecsList[Index]));
end;

procedure TRecordsViewEh.CancelUpdates;
begin
  FMemTableData.RecordsList.CancelUpdates;
end;

procedure TRecordsViewEh.RefreshRecord(Index: Integer; RecValues: TRecDataValues);
begin
  FMemTableData.RecordsList.RefreshRecord(Integer(FFilteredRecsList[Index]), RecValues);
end;

function TRecordsViewEh.CalcAggrFieldFunc(FieldName, AggrFuncName: String): Variant;
type
  TAggrFunc = (afSUM, afCOUNT, afMIN, afMAX, afAVG);
var
  FIndex, I: Integer;
  AggrFunc: TAggrFunc;
  CurValue: Variant;
begin
  Result := 0;
  CurValue := Null;
  if (FieldName = '*') and (AggrFuncName = 'COUNT') then
  begin
    Result := Count;
    Exit;
  end;
  FIndex := FMemTableData.RecordsList.DataStruct.FieldIndex(FieldName);
  if FIndex = -1 then
    raise Exception.Create('Invalid field name: ' + FieldName);

  if AggrFuncName = 'SUM' then AggrFunc := afSUM
  else if AggrFuncName = 'COUNT' then AggrFunc := afCOUNT
  else if AggrFuncName = 'MIN' then AggrFunc := afMIN
  else if AggrFuncName = 'MAX' then AggrFunc := afMAX
  else if AggrFuncName = 'AVG' then AggrFunc := afAVG
  else raise Exception.Create('Unsupported aggrigate function: ' + AggrFuncName);

  for I := 0 to Count-1 do
  begin
    if not VarIsNull(Value[I,FIndex]) then
      case AggrFunc of
        afSUM, afAVG:
          Result := Result + Value[I,FIndex];
        afCOUNT:
          Result := Result + 1;
        afMIN:
          if VarIsNull(CurValue) then
            CurValue := Value[I,FIndex]
          else if Value[I,FIndex] < CurValue then
            CurValue := Value[I,FIndex];
        afMAX:
          if Value[I,FIndex] > CurValue then
            CurValue := Value[I,FIndex];
      end;
  end;

  case AggrFunc of
    afAvg:
      Result := Result / Count;
    afMin, afMax:
      Result := CurValue;
  end;

end;

const
{ Field Types (Logical) - Originally from BDE.PAS }
  fldUNKNOWN         = 0;
  fldZSTRING         = 1;               { Null terminated string }
  fldDATE            = 2;               { Date     (32 bit) }
  fldBLOB            = 3;               { Blob }
  fldBOOL            = 4;               { Boolean  (16 bit) }
  fldINT16           = 5;               { 16 bit signed number }
  fldINT32           = 6;               { 32 bit signed number }
  fldFLOAT           = 7;               { 64 bit floating point }
  fldBCD             = 8;               { BCD }
  fldBYTES           = 9;               { Fixed number of bytes }
  fldTIME            = 10;              { Time        (32 bit) }
  fldTIMESTAMP       = 11;              { Time-stamp  (64 bit) }
  fldUINT16          = 12;              { Unsigned 16 bit integer }
  fldUINT32          = 13;              { Unsigned 32 bit integer }
  fldFLOATIEEE       = 14;              { 80-bit IEEE float }
  fldVARBYTES        = 15;              { Length prefixed var bytes }
  fldLOCKINFO        = 16;              { Look for LOCKINFO typedef }
  fldCURSOR          = 17;              { For Oracle Cursor type }
  fldINT64           = 18;              { 64 bit signed number }
  fldUINT64          = 19;              { Unsigned 64 bit integer }
  fldADT             = 20;              { Abstract datatype (structure) }
  fldARRAY           = 21;              { Array field type }
  fldREF             = 22;              { Reference to ADT }
  fldTABLE           = 23;              { Nested table (reference) }
  fldDATETIME        = 24;              { Datetime structure for DBExpress }
  fldFMTBCD          = 25;              { BCD Variant type: required by Midas, same as BCD for DBExpress}

{$IFDEF EH_LIB_6}
  MAXLOGFLDTYPES     = 26;              { Number of logical fieldtypes }
{$ELSE}
  MAXLOGFLDTYPES     = 24;              { Number of logical fieldtypes }
{$ENDIF}

{ FieldType Mappings }
  FieldTypeMap: TFieldMap = (
    fldUNKNOWN, fldZSTRING, fldINT16, fldINT32, fldUINT16, fldBOOL,
    fldFLOAT, fldFLOAT, fldBCD, fldDATE, fldTIME, fldTIMESTAMP, fldBYTES,
    fldVARBYTES, fldINT32, fldBLOB, fldBLOB, fldBLOB, fldBLOB, fldBLOB,
    fldBLOB, fldBLOB, fldCURSOR, fldZSTRING, fldZSTRING, fldINT64, fldADT,
    fldArray, fldREF, fldTABLE, fldBLOB, fldBLOB, fldUNKNOWN, fldUNKNOWN,
    fldUNKNOWN, fldZSTRING
{$IFDEF EH_LIB_6}
    , fldDATETIME, fldFMTBCD
{$ENDIF}
    );

  DataTypeMap: array[0..MAXLOGFLDTYPES - 1] of TFieldType = (
    ftUnknown, ftString, ftDate, ftBlob, ftBoolean, ftSmallint,
    ftInteger, ftFloat, ftBCD, ftBytes, ftTime, ftDateTime,
    ftWord, ftInteger, ftUnknown, ftVarBytes, ftUnknown, ftUnknown,
    ftLargeInt, ftLargeInt, ftADT, ftArray, ftReference, ftDataSet
{$IFDEF EH_LIB_6}
    , ftTimeStamp, ftFMTBcd
{$ENDIF}
    );

var
  ListBuffer: array of Variant; { container for some function's agruments values }

{ Type of function in LIKE expression }
type
  TTrimType = (
    TRIM_CHARS,
    TRIM_CHARS_LEFT,
    TRIM_CHARS_RIGHT
  );

const
  ErrOpStr: String = 'Operator <%d:%d> not supported.';
  ErrFuncStr: String = 'Function <%s> not supported.';

{$IFNDEF EH_LIB_6}

function DateOf(const AValue: TDateTime): TDateTime;
begin
  Result := Trunc(AValue);
end;

function TimeOf(const AValue: TDateTime): TDateTime;
begin
  Result := Frac(AValue);
end;

{$ENDIF}

function IsLike(SourceStr: string; LikeExpr: string; IgnoreCase: Boolean): Boolean;

 function InStr(const SourceStr: string; const LikeExpr: string): Integer;
 var
   i, j: Integer;
   Diff: Integer;
 begin
   i := Pos('_', LikeExpr);
   if i = 0 then
   begin
     Result := Pos(LikeExpr, SourceStr);
     Exit;
   end;

   Diff := Length(SourceStr) - Length(LikeExpr);
   if Diff < 0 then
   begin
     Result := 0;
     Exit;
   end;

   for i := 0 to Diff do
   begin
     for j := 1 to Length(LikeExpr) do
     begin
       if (SourceStr[i + j] = LikeExpr[j]) or (LikeExpr[j] = '_') then
       begin
         if j = Length(LikeExpr) then
         begin
           Result := i + 1;
           Exit;
         end;
       end
       else Break;
     end;
   end;

   Result := 0;
 end;

var
  LikeCurPos, SourceCurPos, SourceLen, LikeLen: Integer;
  i, iTemp: Integer;
  sTemp: string;
begin
  if SourceStr = LikeExpr then
  begin
    Result := True;
    Exit;
  end;

  repeat
    i := Pos('%%', LikeExpr);
    if i > 0 then
      LikeExpr := Copy(LikeExpr, 1, i - 1) + '%' + Copy(LikeExpr, i + 2, MaxInt);
  until i = 0;
  repeat
    i := Pos('_%', LikeExpr);
    if i > 0 then
      LikeExpr := Copy(LikeExpr, 1, i - 1) + '%' + Copy(LikeExpr, i + 2, MaxInt);
  until i = 0;
  repeat
    i := Pos('%_', LikeExpr);
    if i > 0 then
      LikeExpr := Copy(LikeExpr, 1, i - 1) + '%' + Copy(LikeExpr, i + 2, MaxInt);
  until i = 0;

  if LikeExpr = '%' then
  begin
    Result := True;
    Exit;
  end;

  SourceLen := Length(SourceStr);
  LikeLen   := Length(LikeExpr);

  if (LikeLen = 0) or (SourceLen = 0) then
  begin
    Result := False;
    Exit;
  end;

  if IgnoreCase then
  begin 
    SourceStr := AnsiUpperCase(SourceStr);
    LikeExpr  := AnsiUpperCase(LikeExpr);
  end;

  SourceCurPos := 1;
  LikeCurPos   := 1;
  Result := True;

  repeat
    if SourceStr[SourceCurPos] = LikeExpr[LikeCurPos] then
    begin
      Inc(LikeCurPos);
      Inc(SourceCurPos);
      Continue;
    end;

    if LikeExpr[LikeCurPos] = '_' then
    begin
      Inc(LikeCurPos);
      Inc(SourceCurPos);
      Continue;
    end;

    if LikeExpr[LikeCurPos] = '%' then
    begin
      sTemp := Copy(LikeExpr, LikeCurPos + 1, LikeLen);
      i := Pos('%', sTemp);
      if i > 0 then sTemp := Copy(sTemp, 1, i - 1);
      iTemp := Length(sTemp);

      if i = 0 then
      begin
        if iTemp = 0 then Exit;

        for i := 0 to iTemp - 1 do
        begin
          if (sTemp[iTemp - i] <> SourceStr[SourceLen - i]) and
             (sTemp[iTemp - i] <> '_') then
          begin
            Result := False;
            Exit;
          end;
        end;
        Exit;
      end;
      Inc(LikeCurPos, 1 + iTemp);

      i := InStr(Copy(SourceStr, SourceCurPos, MaxInt), sTemp);
      if i = 0 then
      begin
        Result := False;
        Exit;
      end;
      SourceCurPos := i + iTemp;
      Continue;
    end;

    Result := False;
    Exit;
  until (SourceCurPos > SourceLen) or (LikeCurPos > LikeLen);

  if SourceCurPos <= SourceLen then Result := False;
  if (LikeCurPos <= LikeLen) and (LikeExpr[LikeLen] <> '%') then Result := False;
end;

function GetNodeResult(DataSet: TDataSet; FilterData: TExprData; StartPos: Integer): Variant;

 function GetLiteralValue(var Dest: TExprData;
                          const Source: TExprData;
                          const StartPos: Integer;
                          const Count: Integer): Integer;
 var
   iCount, iLiteralStart: Integer;
 begin
   iLiteralStart := PWordArray(PChar(Source))^[4];

   if Count = -1 then
   begin
     iCount := 0;
     while Source[iLiteralStart + StartPos + iCount] <> 0 do Inc(iCount);
     Inc(iCount);
   end
   else
     iCount := Count;
   SetLength(Dest, iCount);
   Move(Source[iLiteralStart + StartPos], Dest[0], iCount);

   Result := iCount;
 end;

 function GetValueByType(var Source: TExprData;
                         const DataSize: Integer;
                         const ValueType: TFieldType): Variant;
 var
   i: Integer;
   sValue: String;
   TimeStamp: TTimeStamp;
   curTemp: Currency;
 begin
   try
     case ValueType of
       ftSmallInt, ftInteger, ftWord, ftAutoInc:
         Result := Integer(PInteger(@Source[0])^);

       ftFloat, ftCurrency:
         Result := Double(PDouble(@Source[0])^);

       ftString, ftWideString, ftFixedChar, ftGuid:
       begin
         for i := 0 to DataSize - 2 do
           sValue := sValue + String(Chr(Source[i]));
         Result := sValue;
       end;

       ftDate:
       begin
         TimeStamp.Time := 0;
         TimeStamp.Date := Integer(PInteger(@Source[0])^);
         Result := TimeStampToDateTime(TimeStamp);
       end;

       ftTime:
       begin
         TimeStamp.Date := DateDelta;
         TimeStamp.Time := Integer(PInteger(@Source[0])^);
         Result := TimeStampToDateTime(TimeStamp);
       end;

       ftDateTime:
       begin
         TimeStamp := MSecsToTimeStamp(Double(PDouble(@Source[0])^));
         Result := TimeStampToDateTime(TimeStamp);
       end;

{$IFDEF EH_LIB_6}
       ftTimeStamp:
         Result := Variant(TSQLTimeStamp(PSQLTimeStamp(@Source[0])^));
{$ENDIF}

       ftBoolean:
         Result := Boolean(PWordBool(@Source[0])^);

       ftBCD {$IFDEF EH_LIB_6}, ftFMTBcd {$ENDIF}:
       begin
         if BCDToCurr(TBcd(PBcd(@Source[0])^), curTemp) = True then
           Result := curTemp
         else
           // I don't know there is right or not
           Result := Null;
       end;

     else
       raise Exception.CreateFmt('Not supported data type: [%d].', [Integer(ValueType)]);
     end;
   finally
     SetLength(Source, 0);
   end;
 end;

 function TrimChars(const TrimType: TTrimType; const S: String; const sCmp: String = ' '): String;
 var
   i: Integer;
 begin
   case TrimType of
     TRIM_CHARS:
       Result := TrimChars(TRIM_CHARS_RIGHT, TrimChars(TRIM_CHARS_LEFT, S, sCmp), sCmp);

     TRIM_CHARS_LEFT:
     begin
       i := 1;
       while S[i] = sCmp do Inc(i);
       if i = 1 then
         Result := S
       else
         Result := Copy(S, i, MaxInt);
     end;

     TRIM_CHARS_RIGHT:
     begin
       i := Length(S);
       while S[i] = sCmp do Dec(i);
       Result := Copy(S, 1, i);
     end;
   end;
 end;

var
  Result_Left, Result_Right: Variant;
  i, NodeType, NodeOp, NodeOp1, NodeOp2, NodeOp3, NodeOp4: Integer;
  Year_Hour, Month_Min, Day_Sec, MSec: Word;
  FuncName: String;
  Buffer: TExprData;
begin
  NodeType := Integer(PInteger(@FilterData[StartPos + 0])^);
  NodeOp := Integer(PInteger(@FilterData[StartPos + 4])^);

  case NODEClass(NodeType) of
    nodeUNARY:
    begin
      // LEFT node's start position
      NodeOp1 := PWordArray(PChar(FilterData) + CANHDRSIZE + StartPos)^[0];

      Result_Left := GetNodeResult(DataSet, FilterData, CANEXPRSIZE + NodeOp1);

      case TCANOperator(NodeOp) of
        coISBLANK:
          Result := (Result_Left = Null);

        coNOTBLANK:
          Result := (Result_Left <> Null);

        coNOT:
          Result := not Boolean(TVarData(Result_Left).VBoolean);

        {coMINUS:}
        coUPPER:
          Result := AnsiUpperCase(string(TVarData(Result_Left).VString));

        coLOWER:
          Result := AnsiLowerCase(string(TVarData(Result_Left).VString));
      else
        raise Exception.CreateFmt(ErrOpStr, [NodeType, NodeOp]);
      end;
    end;

    nodeBINARY:
    begin
      // LEFT node's start position
      NodeOp1 := PWordArray(PChar(FilterData) + StartPos + CANHDRSIZE)^[0];
      // RIGHT node's start position
      NodeOp2 := PWordArray(PChar(FilterData) + StartPos + CANHDRSIZE)^[1];

      Result_Left  := GetNodeResult(DataSet, FilterData, CANEXPRSIZE + NodeOp1);
      if TCANOperator(NodeOp) <> coIN then
        Result_Right := GetNodeResult(DataSet, FilterData, CANEXPRSIZE + NodeOp2);

      case TCANOperator(NodeOp) of
        coEQ:
          if (VarType(Result_Left) = varString) or (VarType(Result_Right) = varString) then
          begin
            if foCaseInsensitive in DataSet.FilterOptions then
              Result := (StrIComp(PChar(string(TVarData(Result_Left).VString)),
                                  PChar(string(TVarData(Result_Right).VString))) = 0)
            else
              Result := (StrComp(PChar(string(TVarData(Result_Left).VString)),
                                 PChar(string(TVarData(Result_Right).VString))) = 0);
          end
          else
            Result := (Result_Left = Result_Right);

        coNE:
          if (VarType(Result_Left) = varString) or (VarType(Result_Right) = varString) then
          begin
            if foCaseInsensitive in DataSet.FilterOptions then
              Result := (StrIComp(PChar(string(TVarData(Result_Left).VString)),
                                  PChar(string(TVarData(Result_Right).VString))) <> 0)
            else
              Result := (StrComp(PChar(string(TVarData(Result_Left).VString)),
                                 PChar(string(TVarData(Result_Right).VString))) <> 0);
          end
          else
            Result := (Result_Left <> Result_Right);

        coGT:
          if (VarType(Result_Left) = varString) or (VarType(Result_Right) = varString) then
          begin
            if foCaseInsensitive in DataSet.FilterOptions then
              Result := (StrIComp(PChar(string(TVarData(Result_Left).VString)),
                                  PChar(string(TVarData(Result_Right).VString))) > 0)
            else
              Result := (StrComp(PChar(string(TVarData(Result_Left).VString)),
                                 PChar(string(TVarData(Result_Right).VString))) > 0);
          end
          else
            Result := (Result_Left > Result_Right);

        coLT:
          if (VarType(Result_Left) = varString) or (VarType(Result_Right) = varString) then
          begin
            if foCaseInsensitive in DataSet.FilterOptions then
              Result := (StrIComp(PChar(string(TVarData(Result_Left).VString)),
                                  PChar(string(TVarData(Result_Right).VString))) < 0)
            else
              Result := (StrComp(PChar(string(TVarData(Result_Left).VString)),
                                 PChar(string(TVarData(Result_Right).VString))) < 0);
          end
          else
            Result := (Result_Left < Result_Right);

        coGE:
          if (VarType(Result_Left) = varString) or (VarType(Result_Right) = varString) then
          begin
            if foCaseInsensitive in DataSet.FilterOptions then
              Result := (StrIComp(PChar(string(TVarData(Result_Left).VString)),
                                  PChar(string(TVarData(Result_Right).VString))) >= 0)
            else
              Result := (StrComp(PChar(string(TVarData(Result_Left).VString)),
                                 PChar(string(TVarData(Result_Right).VString))) >= 0);
          end
          else
            Result := (Result_Left >= Result_Right);

        coLE:
          if (VarType(Result_Left) = varString) or (VarType(Result_Right) = varString) then
          begin
            if foCaseInsensitive in DataSet.FilterOptions then
              Result := (StrIComp(PChar(string(TVarData(Result_Left).VString)),
                                  PChar(string(TVarData(Result_Right).VString))) <= 0)
            else
              Result := (StrComp(PChar(string(TVarData(Result_Left).VString)),
                                 PChar(string(TVarData(Result_Right).VString))) <= 0);
          end
          else
            Result := (Result_Left <= Result_Right);

        coAND:
          Result := (Result_Left and Result_Right);

        coOR:
          Result := (Result_Left or Result_Right);

        coADD:
          if (VarType(Result_Left) = varString) or (VarType(Result_Right) = varString) then
            Result := (string(TVarData(Result_Left).VString) + string(TVarData(Result_Right).VString))
          else
            Result := (Result_Left + Result_Right);

        coSUB:
          Result := (Result_Left - Result_Right);

        coMUL:
          Result := (Result_Left * Result_Right);

        coDIV:
          Result := (Result_Left / Result_Right);

        coLIKE:
          Result := IsLike(string(TVarData(Result_Left).VString),
                           string(TVarData(Result_Right).VString),
                           (foCaseInsensitive in DataSet.FilterOptions));

        coIN:
        try
          if NodeOp2 > 0 then
          begin
            GetNodeResult(DataSet, FilterData, CANEXPRSIZE + NodeOp2);
            NodeOp3 := Length(ListBuffer);
          end
          else
            NodeOp3 := 0;

          Result := False;
          for i := 0 to NodeOp3 - 1 do
          begin
            if Result_Left = ListBuffer[i] then
            begin
              Result := True;
              Exit;
            end;
          end;
        finally
          SetLength(ListBuffer, 0);
        end;

      else
        raise Exception.CreateFmt(ErrOpStr, [NodeType, NodeOp]);
      end;
    end;

    nodeCOMPARE:
    begin
      // CaseInsensitive flag
      NodeOp1 := PWordArray(PChar(FilterData) + StartPos + CANHDRSIZE)^[0];
      // Partial length
      NodeOp2 := PWordArray(PChar(FilterData) + StartPos + CANHDRSIZE)^[1];
      // Start position of operator
      NodeOp3 := PWordArray(PChar(FilterData) + StartPos + CANHDRSIZE)^[2];
      // Get start position of compare string in the literal part of storage
      NodeOp4 := PWordArray(PChar(FilterData) + StartPos + CANHDRSIZE)^[3];

      Result_Left  := GetNodeResult(DataSet, FilterData, CANEXPRSIZE + NodeOp3);
      Result_Right := GetNodeResult(DataSet, FilterData, CANEXPRSIZE + NodeOp4);

      case TCANOperator(NodeOp) of
        coEQ:
          if NodeOp1 = 1 then
          begin
            if NodeOp2 > 0 then
              Result := (StrLIComp(PChar(string(TVarData(Result_Left).VString)),
                                   PChar(string(TVarData(Result_Right).VString)), NodeOp2) = 0)
            else
              Result := (StrIComp(PChar(string(TVarData(Result_Left).VString)),
                                  PChar(string(TVarData(Result_Right).VString))) = 0);
          end
          else
          begin
            if NodeOp2 > 0 then
              Result := (StrLComp(PChar(string(TVarData(Result_Left).VString)),
                                  PChar(string(TVarData(Result_Right).VString)), NodeOp2) = 0)
            else
              Result := (StrComp(PChar(string(TVarData(Result_Left).VString)),
                                 PChar(string(TVarData(Result_Right).VString))) = 0);
          end;

        coNE:
          if NodeOp1 = 1 then
          begin
            if NodeOp2 > 0 then
              Result := (StrLIComp(PChar(string(TVarData(Result_Left).VString)),
                                   PChar(string(TVarData(Result_Right).VString)), NodeOp2) <> 0)
            else
              Result := (StrIComp(PChar(string(TVarData(Result_Left).VString)),
                                  PChar(string(TVarData(Result_Right).VString))) <> 0);
          end
          else
          begin
            if NodeOp2 > 0 then
              Result := (StrLComp(PChar(string(TVarData(Result_Left).VString)),
                                  PChar(string(TVarData(Result_Right).VString)), NodeOp2) <> 0)
            else
              Result := (StrComp(PChar(string(TVarData(Result_Left).VString)),
                                 PChar(string(TVarData(Result_Right).VString))) <> 0);
          end;

        coLIKE:
          Result := IsLike(string(TVarData(Result_Left).VString),
                           string(TVarData(Result_Right).VString),
                           (NodeOp1 = 1));

      else
        raise Exception.CreateFmt(ErrOpStr, [NodeType, NodeOp]);
      end;
    end;

    nodeFIELD:
      if TCANOperator(NodeOp) = coFIELD2 then
      begin
        {// Get Field No
        NodeOp1 := PWordArray(PChar(FilterData) + CANHDRSIZE + StartPos)^[0];}
        // Get start position of field's name in the literal part of storage
        NodeOp2 := PWordArray(PChar(FilterData) + CANHDRSIZE + StartPos)^[1];
        NodeOp3 := GetLiteralValue(Buffer, FilterData, NodeOp2, -1);

        Result := Dataset.FieldValues[GetValueByType(Buffer, NodeOp3, ftString)];
      end
      else
        raise Exception.CreateFmt(ErrOpStr, [NodeType, NodeOp]);

    nodeCONST:
      if TCANOperator(NodeOp) = coCONST2 then
      begin
        // Get data type of value
        NodeOp1 := PWordArray(PChar(FilterData) + CANHDRSIZE + StartPos)^[0];
        // Get length of value
        NodeOp2 := PWordArray(PChar(FilterData) + CANHDRSIZE + StartPos)^[1];
        // Get start position of value in the literal part of storage
        NodeOp3 := PWordArray(PChar(FilterData) + CANHDRSIZE + StartPos)^[2];

        GetLiteralValue(Buffer, FilterData, NodeOp3, NodeOp2);
        if NodeOp1 < MAXLOGFLDTYPES then
          Result := GetValueByType(Buffer, NodeOp2, DataTypeMap[NodeOp1])
        else
          Result := Null;
      end
      else
        raise Exception.CreateFmt(ErrOpStr, [NodeType, NodeOp]);

    nodeFUNC:
      if TCANOperator(NodeOp) = coFUNC2 then
      begin
        try
          // Get start position of function's name in the literal part of storage
          NodeOp1 := PWordArray(PChar(FilterData) + CANHDRSIZE + StartPos)^[0];
          // Get begin list's node
          NodeOp2 := PWordArray(PChar(FilterData) + CANHDRSIZE + StartPos)^[1];

          NodeOp3 := GetLiteralValue(Buffer, FilterData, NodeOp1, -1);
          FuncName := string(TVarData(GetValueByType(Buffer, NodeOp3, ftString)).VString);

          if NodeOp2 > 0 then
          begin
            GetNodeResult(DataSet, FilterData, CANEXPRSIZE + NodeOp2);
            NodeOp3 := Length(ListBuffer);
          end
          else
            NodeOp3 := 0;

          { ================================================================= }
          if CompareText(FuncName, 'SUBSTRING') = 0 then
          begin
            if NodeOp3 = 2 then
              Result := Copy(string(TVarData(ListBuffer[0]).VString),
                             Integer(TVarData(ListBuffer[1]).VInteger), MaxInt)
            else
            if NodeOp3 = 3 then
              Result := Copy(string(TVarData(ListBuffer[0]).VString),
                             Integer(TVarData(ListBuffer[1]).VInteger),
                             Integer(TVarData(ListBuffer[2]).VInteger))
            else
              Result := Null;
          end
          else
          { ================================================================= }
          if CompareText(FuncName, 'UPPER') = 0 then
          begin
            if NodeOp3 = 1 then
              Result := AnsiUpperCase(string(TVarData(ListBuffer[0]).VString))
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'LOWER') = 0 then
          begin
            if NodeOp3 = 1 then
              Result := AnsiLowerCase(string(TVarData(ListBuffer[0]).VString))
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'TRIM') = 0 then
          begin
            if NodeOp3 = 1 then
              Result := TrimChars(TRIM_CHARS, string(TVarData(ListBuffer[0]).VString))
            else
            if NodeOp3 = 2 then
              Result := TrimChars(TRIM_CHARS,
                                  string(TVarData(ListBuffer[0]).VString),
                                  string(TVarData(ListBuffer[1]).VString))
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'TRIMLEFT') = 0 then
          begin
            if NodeOp3 = 1 then
              Result := TrimChars(TRIM_CHARS_LEFT, string(TVarData(ListBuffer[0]).VString))
            else
            if NodeOp3 = 2 then
              Result := TrimChars(TRIM_CHARS_LEFT,
                                  string(TVarData(ListBuffer[0]).VString),
                                  string(TVarData(ListBuffer[1]).VString))
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'TRIMRIGHT') = 0 then
          begin
            if NodeOp3 = 1 then
              Result := TrimChars(TRIM_CHARS_RIGHT, string(TVarData(ListBuffer[0]).VString))
            else
            if NodeOp3 = 2 then
              Result := TrimChars(TRIM_CHARS_RIGHT,
                                  string(TVarData(ListBuffer[0]).VString),
                                  string(TVarData(ListBuffer[1]).VString))
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'YEAR') = 0 then
          begin
            if NodeOp3 = 1 then
            begin
              DecodeDate(TDateTime(TVarData(ListBuffer[0]).VDate), Year_Hour, Month_Min, Day_Sec);
              Result := Year_Hour;
            end
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'MONTH') = 0 then
          begin
            if NodeOp3 = 1 then
            begin
              DecodeDate(TDateTime(TVarData(ListBuffer[0]).VDate), Year_Hour, Month_Min, Day_Sec);
              Result := Month_Min;
            end
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'DAY') = 0 then
          begin
            if NodeOp3 = 1 then
            begin
              DecodeDate(TDateTime(TVarData(ListBuffer[0]).VDate), Year_Hour, Month_Min, Day_Sec);
              Result := Day_Sec;
            end
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'HOUR') = 0 then
          begin
            if NodeOp3 = 1 then
            begin
              DecodeTime(TDateTime(TVarData(ListBuffer[0]).VDate), Year_Hour, Month_Min, Day_Sec, MSec);
              Result := Year_Hour;
            end
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'MINUTE') = 0 then
          begin
            if NodeOp3 = 1 then
            begin
              DecodeTime(TDateTime(TVarData(ListBuffer[0]).VDate), Year_Hour, Month_Min, Day_Sec, MSec);
              Result := Month_Min;
            end
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'SECOND') = 0 then
          begin
            if NodeOp3 = 1 then
            begin
              DecodeTime(TDateTime(TVarData(ListBuffer[0]).VDate), Year_Hour, Month_Min, Day_Sec, MSec);
              Result := Day_Sec;
            end
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'GETDATE') = 0 then
          begin
            if NodeOp3 = 0 then
              Result := Now
            else
              Result := Null;
          end
          { ================================================================= }
          else if CompareText(FuncName, 'DATE') = 0 then
          begin
            if NodeOp3 = 1 then
              Result := DateOf(TDateTime(TVarData(ListBuffer[0]).VDate))
            else
              Result := Null
          end
          { ================================================================= }
          else if CompareText(FuncName, 'TIME') = 0 then
          begin
            if NodeOp3 = 1 then
              Result := TimeOf(TDateTime(TVarData(ListBuffer[0]).VDate))
            else
              Result := Null
          end
          else
            raise Exception.CreateFmt(ErrFuncStr, [FuncName]);
        finally
          SetLength(ListBuffer, 0);
        end;
      end
      else
        raise Exception.CreateFmt(ErrOpStr, [NodeType, NodeOp]);

    nodeLISTELEM:
      if TCANOperator(NodeOp) = coLISTELEM2 then
      begin
        // Get node with parameter value
        NodeOp1 := PWordArray(PChar(FilterData) + CANHDRSIZE + StartPos)^[0];
        // Get next list's node
        NodeOp2 := PWordArray(PChar(FilterData) + CANHDRSIZE + StartPos)^[1];

        Result_Left := GetNodeResult(DataSet, FilterData, CANEXPRSIZE + NodeOp1);

        NodeOp3 := Length(ListBuffer);
        SetLength(ListBuffer, NodeOp3 + 1);
        ListBuffer[NodeOp3] := Result_Left;

        if NodeOp2 > 0 then GetNodeResult(DataSet, FilterData, CANEXPRSIZE + NodeOp2);

        Result := True;
      end
      else
        raise Exception.CreateFmt(ErrOpStr, [NodeType, NodeOp]);
  end;
end;

function IsCurRecordInFilter(DataSet: TDataSet; ExprParser: TExprParser): Boolean;
begin
  if ExprParser.DataSize > 0 then
  begin
    SetLength(ListBuffer, 0);
    Result := Boolean(TVarData(GetNodeResult(DataSet, ExprParser.FilterData, CANEXPRSIZE)).VBoolean)
  end
  else
    Result := False;
end;

procedure TRecordsViewEh.InstantDisableFilter;
begin
  Inc(FDisableFilterCount);
end;

procedure TRecordsViewEh.InstantEnableFilter;
begin
  Dec(FDisableFilterCount);
end;

{ TDataSetExprParserEh }

constructor TDataSetExprParserEh.Create(ADataSet: TDataSet; ExprParserType: TDataSetExprParserTypeEh);
begin
  inherited Create;
  FDataSet := ADataSet;
  FExprParserType := ExprParserType;
end;

function TDataSetExprParserEh.HasData: Boolean;
begin
  Result := (FExprDataSize > 0)
end;

procedure TDataSetExprParserEh.ParseExpression(Expr: String);
const
  ParserTypeOptionsArr: array[TDataSetExprParserTypeEh] of TParserOptions =
    ([poExtSyntax], [poExtSyntax, poAggregate]);
var
  ExprParser: TExprParser;
begin
  ExprParser := TExprParser.Create(FDataSet, Expr, FDataSet.FilterOptions,
    ParserTypeOptionsArr[FExprParserType], '', nil, FieldTypeMap);
  FExprDataSize := ExprParser.DataSize;
  FExprData := ExprParser.FilterData;
  ExprParser.Free;
end;

function TDataSetExprParserEh.IsCurRecordInFilter: Boolean;
begin
  if FExprDataSize > 0 then
  begin
    SetLength(ListBuffer, 0);
    Result := GetNodeResult(FDataSet, FExprData, CANEXPRSIZE)
  end else
    Result := False;
end;

function TDataSetExprParserEh.CalcAggregateValue(RecordsView: TRecordsViewEh): Variant;
begin
  if FExprDataSize > 0 then
  begin
    SetLength(ListBuffer, 0);
    { TODO : For Sergo }
//    Result := GetNodeResult(FDataSet, RecordsView, FExprData, CANEXPRSIZE)
  end else
    Result := False;
end;

{ RegisterMemTableClasses }

procedure RegisterMemTableClasses;
begin
  RegisterClass(TMemTableDataEh);
  RegisterClass(TMTDataStructEh);
  RegisterClass(TRecordsListEh);
  RegisterClasses([TMTDataFieldEh, TMTStringDataFieldEh, TMTNumericDataFieldEh,
    TMTDateTimeDataFieldEh, TMTBlobDataFieldEh, TMTBooleanDataFieldEh]);
end;

initialization
  RegisterMemTableClasses;
end.
