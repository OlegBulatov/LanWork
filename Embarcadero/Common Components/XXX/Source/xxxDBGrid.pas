(*
���-�� ����� � TDBGridRom, ������� �������������
*)
unit xxxDBGrid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, db, xxxDBGridPopupMenu, dbctrls, unt001_Filter;

const
  EMTY_STR = '';

  VAL_COUNT = 2;                   // ������������ ����� ���������� � SQL ���������

  VAL_HIGH_INDEX = VAL_COUNT - 1;

type
  TCalcValue = (
    cv01, // �������
    cv02, // �����
    cv03, // ������� ������ [����� �������]
    cv04, // ������� ������ [������ �������]
    cv05, // ������� ������ [����� �������]
    cv06, // ������� ������ [������ �������]
    cv07, // ������� ����� [����� �������]
    cv08, // ������� ����� [������ �������]
    cv09, // ������� ����� [����� �������]
    cv10, // ������� ����� [������ �������]
    cv11, // ������� ��� [����� �������]
    cv12, // ������� ��� [������ �������]
    cv13, // ������� ��� [����� �������]
    cv14  // ������� ��� [������ �������]
    );

  TDateFunc = function: TDate of object;

const
  // �������� �������
  DISPLAY_CONDITION_TEXT: array [TDisplayCondition] of string = (
    '�����',
    '����� (�����)',
    '�� �����',
    '������ ���',
    '������ ���',
    '��������',
    '�����',
    '�����',
    '�� �����',
    '�� ��������',
    '������ ���',
    '������ ���',
    '�������',
    '�����',
    '������� ������',
    '������� ������',
    '������� �����',
    '������� �����',
    '������� ���',
    '������� ���',
    '�����',
    '�� �����',
    '�����',
    '������',    // (��� �����)
    '������',     // (��� ������)
    '������ ��� ����� ���',
    '������ ��� ����� ���',
    '����� ��� NULL',
    '�� ����� ��� NULL'
    );

  // ������� SQL
  SQL_CONDITION_TEXT: array [TSQLCondition] of string = (
    '(%s = %s)',
    '(%s <> %s)',
    '(%s > %s)',
    '(%s >= %s)',
    '(%s < %s)',
    '(%s <= %s)',
    '(UPPER(%s) LIKE UPPER(%s))',
    '(%s BETWEEN %s AND %s)',
    '(%s IS NULL)',
    '(%s IS NOT NULL)',
    '(UPPER(%s) NOT LIKE UPPER(%s))',
    '(%s = %s)',
    '(%s IN (%s))',
    '(NVL(%s, %s) = $s)',
    '(NVL(%s, %s) <> $s)'
    );

  // ���������� ���������� � ������� - �� 0 �� 2
  ARG_COUNT: array [TSQLCondition] of Integer = (
    1, 1, 1, 1, 1, 1, 1, 2, 0, 0, 1, 1, -1, 2, 2);

  // ������� ��������� ������� ����������� �������������
  AGV_CONDITION = [
    dc13,  // '�������'
    dc14,  // '�����'
    dc15,  // '������� ������'
    dc16,  // '������� ������'
    dc17,  // '������� �����'
    dc18,  // '������� �����'
    dc19,  // '������� ���'
    dc20   // '������� ���'
    ];

  // ����� ����� ��� ��� ���������� � ��� ��� ��������� � SQL
  LINKED: array[TDisplayCondition] of TSQLCondition = (
    sc01,  // '�����'
    sc12,  // '����� (�����)'
    sc02,  // '�� �����'
    sc03,  // '������ ���'
    sc05,  // '������ ���'
    sc07,  // '��������'
    sc08,  // '�����'
    sc09,  // '�����'
    sc10,  // '�� �����'
    sc11,  // '�� ��������'
    sc03,  // '�� ������'
    sc05,  // '�� �������'
    sc01,  // '�������'
    sc01,  // '�����'
    sc08,  // '������� ������'
    sc08,  // '������� ������'
    sc08,  // '������� �����'
    sc08,  // '������� �����'
    sc08,  // '������� ���'
    sc08,  // '������� ���'
    sc01,  // '�����'    (��� ����)
    sc02,  // '�� �����' (��� ����)
    sc08,  // '�����'    (��� ����)
    sc13,  // '������'    (��� �����)
    sc13,  // '������'    (��� ������),
    sc04,  // >=
    sc06,  // <=
    sc14,  // = OR IS NULL
    sc15   // <> OR IS NULL
    );

  // ���������� �������
  NUMBER_COND_INDEX = 9;
  TEXT_COND_INDEX = 5;
  DATE_COND_INDEX = 13;

  CONDITION_COUNT: array[TValueType] of Integer = (
    NUMBER_COND_INDEX,
    TEXT_COND_INDEX,
    DATE_COND_INDEX
    );

  NUMBER_CONDITION: array[0..NUMBER_COND_INDEX] of TDisplayCondition = (
    dc01,  // '�����'
    dc03,  // '�� �����'
    dc04,  // '������ ���'
    dc27,  // '������ ��� ����� ���'
    dc05,  // '������ ���'
    dc28,  // '������ ��� ����� ���'
    dc07,  // '�����'
    dc08,  // '�����'
    dc09,  // '�� �����'
    dc24   // '������'    (��� �����)
    );

  TEXT_CONDITION: array[0..TEXT_COND_INDEX] of TDisplayCondition = (
    dc02,  // '����� (�����)'
    dc06,  // '��������'
    dc10,  // '�� ��������'
    dc08,  // '�����'
    dc09,  // '�� �����'
    dc26   // '������'    (��� ������)
    );

  DATE_CONDITION: array[0..DATE_COND_INDEX] of TDisplayCondition = (
    dc21,  // '�����'
    dc11,  // '�� ������'
    dc12,  // '�� �������'
    dc23,  // '�����'
    dc13,  // '�������'
    dc14,  // '�����'
    dc15,  // '������� ������'
    dc16,  // '������� ������'
    dc17,  // '������� �����'
    dc18,  // '������� �����'
    dc19,  // '������� ���'
    dc20,  // '������� ���'
    dc08,  // '�����'
    dc09   // '�� �����'
    );

  CONDITION_FOR_TYPE: array[TValueType] of Pointer = (
    @NUMBER_CONDITION,
    @TEXT_CONDITION,
    @DATE_CONDITION
    );

  FIELD_TYPE: array[TValueType] of set of TFieldType = (
    [ftFloat, ftSmallint, ftInteger, ftWord, ftBytes, ftVarBytes, ftAutoInc],
    [ftString, ftMemo, ftFmtMemo],
    [ftDate, ftTime, ftDateTime]
    );

type
  TxxxDBGrid = class;

  THeaders = class;

  THeader = class(TCollectionItem)
  private
    FCaption: string;
    FFirstColumn: Integer;
    FLastColumn: Integer;
    FAlignment: TAlignment;
    procedure SetFirstCol(const Value: Integer);
    procedure SetLastCol(const Value: Integer);
    procedure SetCaption(const Value: string);
    procedure SetAlignment(const Value: TAlignment);
    //
    //function IsColExists(const AIndex: Integer): Boolean;
    function GetDBGrid: TxxxDBGrid;
    function GetHeaders: THeaders;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
    //
    function IsIncludeColumn(const AColumnIndex: Integer): Boolean;
    //
    property DBGrid: TxxxDBGrid read GetDBGrid;
    property Headers: THeaders read GetHeaders;
  published
    property FirstCol: Integer read FFirstColumn write SetFirstCol;
    property LastCol: Integer read FLastColumn write SetLastCol;
    property Caption: string read FCaption write SetCaption;
    property Alignment: TAlignment read FAlignment write SetAlignment default taCenter;
  end;

  THeadersLine = class;

  THeaders = class(TCollection)
  private
    FOwner: THeadersLine;
    function GetDBGrid: TxxxDBGrid;
    //
    function MaxColumnIndex: Integer;
    function GetNextIndex: Integer;
    function FindHeader(const AColumnIndex: Integer): THeader;
  protected
    function GetOwner: TPersistent; override;
    procedure Update(Item: TCollectionItem); override;
    function GetItem(Index: Integer): THeader;
    procedure SetItem(Index: Integer; const Value: THeader);
  public
    constructor Create(Owner: THeadersLine);
    function Add: THeader;
    property DBGrid: TxxxDBGrid read GetDBGrid;
    property Items[Index: Integer]: THeader read GetItem write SetItem; default;
  end;

  THeadersLine = class(TCollectionItem)
  private
    FHeaders: THeaders;
    procedure SetHeaders(const Value: THeaders);
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
  published
    property Headers: THeaders read FHeaders write SetHeaders;
  end;

  TAdvSettings = class;

  THeadersLines = class(TCollection)
  private
    FOwner: TxxxDBGrid;
  protected
    function GetOwner: TPersistent; override;
    procedure Update(Item: TCollectionItem); override;
    function GetItem(Index: Integer): THeadersLine;
    procedure SetItem(Index: Integer; const Value: THeadersLine);
  public
    constructor Create(Owner: TxxxDBGrid);
    function Add: THeadersLine;
    property Items[Index: Integer]: THeadersLine read GetItem write SetItem; default;
  end;

  TAdvSettings = class(TPersistent)
  private
    FOwner: TxxxDBGrid;
    FColumnsAutoSize: Boolean;
    function GetAutoFilter: Boolean;
    function GetEnabled: Boolean;
    function GetIndexes: TIndexes;
    function GetGuid: string;
    procedure SetAutoFilter(const Value: Boolean);
    procedure SetEnabled(const Value: Boolean);
    procedure SetGuid(const Value: string);
    procedure SetIndexes(const Value: TIndexes);
    function GetHeadersLines: THeadersLines;
    procedure SetHeadersLines(const Value: THeadersLines);
    function GetLookUpField: TStrings;
    procedure SetLookUpField(const Value: TStrings);
    function GetDesignMode: Boolean;
    procedure SetDesignMode(const Value: Boolean);
    function GetOptimizerHint: String;
    procedure SetOptimizerHint(const Value: String);
  protected
    function  GetOwner: TPersistent; override;
  public
    constructor Create(AOwner: TxxxDBGrid);
    destructor Destroy; override;
  published
    property Guid: string read GetGuid write SetGuid;
    property AutoFilter: Boolean read GetAutoFilter write SetAutoFilter;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property DesignMode: Boolean read GetDesignMode write SetDesignMode;
    property Indexes: TIndexes read GetIndexes write SetIndexes;
    property HeadersLines: THeadersLines read GetHeadersLines write SetHeadersLines;
    property ColumnsAutoSize: Boolean read FColumnsAutoSize write FColumnsAutoSize;
    property LookUpField: TStrings read GetLookUpField write SetLookUpField;
    property OptimizerHint: String read GetOptimizerHint write SetOptimizerHint;
  end;

  TColumnsWidth = array of Real;

  TColumnsProcent = array of Real;

  TOnIndexChanged = procedure (Item: TIndex) of object;

  TOnConditionChanged = procedure (Item: TCondition) of object;

  THackDBLookupComboBox = class(TDBLookupComboBox);

  TFilterList = class;

  TLookUpDataSet = class(TVirtualDataSet)
  private
    FKeyFieldName: string;
    FListFieldName: string;
    FMainDataSet: TVirtualDataSet;
  protected
    procedure SetEnabled(const Value: Boolean); override;
  public
    constructor Create(AOwner: TComponent); override;
    //
    property KeyFieldName: string read FKeyFieldName write FKeyFieldName;
    property ListFieldName: string read FListFieldName write FListFieldName;
    property MainDataSet: TVirtualDataSet read FMainDataSet write FMainDataSet;
  end;

  TFilterDataSet = class(TLookUpDataSet)
  public
    procedure PrepareSQL; override;
  end;

  TVirtualDataSets = class of TLookUpDataSet;

  TOnCloseUp = procedure(Accept: Boolean; ADataSet: TDataSet) of object;

  TFilterList = class(TDBLookupComboBox)
  private
    FDisplayName: string;
    FFilterDataSet: TFilterDataSet;
    FOnCloseUp: TOnCloseUp;
    function IsAsctive: Boolean;
    function GetMainDataSet: TVirtualDataSet;
    procedure SetMainDataSet(const Value: TVirtualDataSet);
    procedure ApplayFilter;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    //
    procedure DropDown; override;
    procedure CloseUp(Accept: Boolean); override;
    //
    property DisplayName: string read FDisplayName write FDisplayName;
    property OnCloseUp: TOnCloseUp read FOnCloseUp write FOnCloseUp;
    property MainDataSet: TVirtualDataSet read GetMainDataSet write SetMainDataSet;
  end;

  TAdvSortType = (astAsc, astDesc, astConvert);

  ExxxDBGrid = class(Exception);

  TxxxDBGridErr = class(TObject)
    class procedure Error(const AMsg: string);
  end;

  TxxxDBGrid = class(TDBGrid)
  private
    FGuid: string;
    FAutoFilter: Boolean;
    FFilterList: TFilterList;
    FMainDataSet: TVirtualDataSet;
    FdmGrid: TdmGrid;
    FColumnsWidth: TColumnsWidth;
    FColumnsProcent: TColumnsProcent;
    FAdvSettings: TAdvSettings;
    FImageList: TImageList;
    FHeadersLines: THeadersLines;
    FSelectedField: string;
    FDragRows: Boolean;
    FShowVscroll: Boolean;
    FFlatStyle: Boolean;
    FOnTopLeftChanged: TNotifyEvent;
    FOnSetColumnAttr : TNotifyEvent;
    FFilteredColumns: TStringList;
    FHiddenColumns: TStringList;
    //
//    FOnMouseDown: TMouseEvent;
    //procedure MyUpdateEdit;
    function PicterBorder: Integer;
    function PicterHeight: Integer;
    procedure DrawPicters(var ARect: TRect; const AColumn: TColumn);
    procedure DrawButtom(var ARect: TRect; const AColumn: TColumn);
    // ���������
    //procedure xxxGotoBookmark(ABookmark: TBookmark);
    //procedure xxxResync(Mode: TResyncMode);
    // ������
    // ���������� ������ ��������
    //procedure IncColumnWidth(const AIndex, AValue: Integer);
    //procedure DecColumnWidth(const AIndex, AValue: Integer);
    procedure SetColumnWidth(const AIndex, AValue: Integer);
    procedure SaveColumnsWidth;
//    procedure SaveColumnsProcent;
//    procedure CheckWidth(AColumn: TColumn);
//    procedure DoOnColWidthsChanged;
//    procedure DoOnResize;
    function DistributeColumns(AFirst, ALast: Integer; var AWidth: Integer): Integer;
//    function GetGridWidth: Integer;
    function GetVisSumColumnsWidth(const AFirst, ALast: Integer): Integer;
    //function GetVisColumnsWidth: Integer;
    function GetVisibleColumnsCount: Integer;
    function GetExtSumColumnsWidth(const AFirst, ALast: Integer): Real;
    // ��������� ����������
    procedure CalcTitleHeight;
    //function GetHeaderRect(ACol: Integer): TRect;
    procedure DrawTitleCell(ACol, ARow: Integer; ARect: TRect; AState: TGridDrawState; AText: string; Alignment: TAlignment; const ADrawPic: Boolean);
    function GetColLinesWidth: Integer;
    function GetRowLinesHeight: Integer;
    //
    property ColLinesWidth: Integer read GetColLinesWidth;
    property RowLinesHeight: Integer read GetRowLinesHeight;
    // ����������� ���������
    procedure CMHintShow(var Message: TMessage); message CM_HINTSHOW;
    // ����������� DataSet
    procedure SetAutoFilter(const Value: Boolean);
    //procedure SetAutoEnabled(const Value: Boolean);
    //function GetAutoEnabled: Boolean;
    function GetTitleLines: Integer;
//    function GetEnabled: Boolean;
//    procedure SetEnabled(const Value: Boolean);
    function GetShowVscroll: Boolean;
    procedure SetShowVscroll(const Value: Boolean);
    function GetFlatStyle: Boolean;
    procedure SetFlatStyle(const Value: Boolean);
  protected
    // ���������� + ����������
    procedure TitleClick(Column: TColumn); override;
    // ��������� ������
    function AcquireFocus: Boolean;
    function DoMouseWheelDown(Shift: TShiftState; MousePos: TPoint): Boolean; override;
    function DoMouseWheelUp(Shift: TShiftState; MousePos: TPoint): Boolean; override;
    // ��������� ����������
    procedure CreateWnd; override;
    procedure LayoutChanged; override;
    procedure DrawCell(ACol, ARow: Integer; ARect: TRect; AState: TGridDrawState); override;
    // ���������� ������ ��������
    procedure ColWidthsChanged; override;
    procedure Resize; override;
    procedure DblClick; override;
    // ����������� ����
    procedure DoContextPopup(MousePos: TPoint; var Handled: Boolean); override;
    //
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure Paint; override;
    procedure SetColumnAttributes; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    //
    procedure DoOnIndexChanged(Item: TIndex);
    procedure DoOnConditionChanged(Item: TCondition);
    // ���������� ������ �������
    procedure ColumnAutoSize(const AColumn: TColumn);
    // ���������� ������ �������
    procedure FillColumnList(const AStrings: TStrings);
    function GetFullColumnName(const AColumn: TColumn): string;
    //
    procedure SaveColumnsProcent;       // !!!
    procedure DoOnResize;               // !!!
    function GetGridWidth: Integer;     // !!!
    procedure FillColumnsValues(const AColumn: TColumn; AList: TStrings);
    //
    procedure Refresh;
    procedure SortByField(const AField: TField; const ASortType: TAdvSortType = astConvert);
    function IsFiltered(AFieldName: string): Boolean;
    function IsColumnFiltered(AFieldName: string): Boolean;
    function IsColumnHidden(AFieldName: string): Boolean;
    function IndexOf(AFieldName: string): TIndex;
    procedure FilterBySelect;
    function  IsFilterBySelectActive: Boolean;
    //
    procedure AutoFilterDropDown(const AColumn: TColumn);
    property AutoFilter: Boolean read FAutoFilter write SetAutoFilter;
    property AutoFilterEnabled: Boolean read GetEnabled write SetEnabled;
    property MainDataSet: TVirtualDataSet read FMainDataSet write FMainDataSet;
    //
    property TitleLines: Integer read GetTitleLines;
    property HeadersLines: THeadersLines read FHeadersLines write FHeadersLines;
    // ����������� �������� TDBGrid (����������� �� DBGrids.pas)
    property Canvas;
    property SelectedRows;
    procedure TopLeftChanged; override;
    property LeftCol;
    procedure SetColumnFiltered(AFieldName: string; AFiltered: boolean);
    procedure SetColumnHidden(AFieldName: string; AHidden: boolean);
  published
    // ����� ��������
    property AdvSettings: TAdvSettings read FAdvSettings write FAdvSettings;
    property DragRows: Boolean read FDragRows write FDragRows;
    //property DataSource: TxxxDataSource read GetDataSource write SetDataSource;
    // ����������� �������� TDBGrid (����������� �� DBGrids.pas)
    property Align;
    property Anchors;
    property BiDiMode;
    property BorderStyle;
    property Color;
    property Columns stored False; //StoreColumns;
    property Constraints;
    property Ctl3D;
    property DataSource;
    property DefaultDrawing;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property FixedColor;
    property Font;
    property ImeMode;
    property ImeName;
    property Options;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property TitleFont;
    property Visible;
    property OnCellClick;
    property OnColEnter;
    property OnColExit;
    property OnColumnMoved;
    property OnDrawDataCell;  { obsolete }
    property OnDrawColumnCell;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEditButtonClick;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
//    property OnMouseDown: TMouseEvent read FOnMouseDown write FOnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
    property OnTitleClick;
    property ShowVscroll: Boolean read GetShowVscroll write SetShowVscroll;
    property FlatStyle: Boolean read GetFlatStyle write SetFlatStyle;
    property OnTopLeftChanged: TNotifyEvent read FOnTopLeftChanged write FOnTopLeftChanged;
    property OnSetColumnAttr: TNotifyEvent read FOnSetColumnAttr  write FOnSetColumnAttr;
  end;

  function GetTypeForField(const AField: TField): TValueType;


implementation

{$R xxxDBGrid.res}

uses Math, ComObj, menus, TypInfo, Imglist{, frmFilterList};

const
  ITEM_NOT_FOUND = - 1;                         // ������ �� ������
  MIN_COLUMN_WIDTH = 20;                        //
  SQL_PROP_NAME = 'SQL';                        // �������� �������� SQL
  SQL_SORT: array[TSortType] of string = ('ASC', 'DESC');

  SQL_OR = ' %s OR %s ';

  SQL_COMMA = ' %s , %s ';

  SQL_FIELD_IN_SELECT =
   '(%s IN ( SELECT %s  ' + #13#10 +
   '           FROM (%s)' + #13#10 +
   '          WHERE %s ))';

  ALIGN_FLAGS: array [TAlignment] of Integer =
   (DT_LEFT or DT_EXPANDTABS or DT_NOPREFIX,
    DT_RIGHT or DT_EXPANDTABS or DT_NOPREFIX,
    DT_CENTER or DT_EXPANDTABS or DT_NOPREFIX);

  WORD_WRAPS: array[Boolean] of Word = (DT_SINGLELINE, DT_WORDBREAK);

const
  SColumnNotInit = '������! �������� TDBGridColumns �� ����������������!';
  SColNotFound = '������! ������� � �������� %d �� �������!';
  SInvalidFirst = '';
  SInvalidLast = '';

  SInvalidDataSet = '������! � ������� DataSet �� ������� �������� SQL: TStrings!';
  SFieldIsNil = '������! �������� Column.Field = nil!';
  SFieldKind = '������! �������� Field.FieldKind <> fkData!';
  SDataSetNil = '������! �������� DataSet = nil!';
  SDataSetNotActive = '������! DataSet �� ������ ���� �������!';
  SInvalidFactory = '������! �������� ����� TFactoryDataSet!';
  SFactoryNotInit = '������! �� ��������������� ����� TFactoryDataSet!';

procedure WriteText(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer;
  const Text: string; Alignment: TAlignment; ARightToLeft: Boolean);
var
  VNeedRect, VDrawRect: TRect;
  VDrawHeight, VNeedHeight: Integer;
  VWordWraps: Boolean;
begin
  // ��������� ��������� VNeedRect ��� ��������� ������ � ��������� �����
  VNeedRect := ARect;
  DrawText(
    ACanvas.Handle,
    PChar(Text),
    Length(Text),
    VNeedRect,
    ALIGN_FLAGS[Alignment] or WORD_WRAPS[True] or DT_CALCRECT);

  // ��������� ����������� �� ����� � ��������� ����� � �������� �������
  // ���� ��� �� ������ � ���� ������
  VDrawRect := ARect;
  VNeedHeight := VNeedRect.Bottom - VNeedRect.Top;
  VDrawHeight := VDrawRect.Bottom - VDrawRect.Top;
  VWordWraps := VDrawHeight > VNeedHeight;
  if VWordWraps then
  begin
    VDrawRect.Top := VDrawRect.Top + (VDrawHeight - VNeedHeight) div 2;
    VDrawRect.Bottom := VDrawRect.Top + VNeedHeight;
  end;

  // ������� �����
  DrawText(
    ACanvas.Handle,
    PChar(Text),
    Length(Text),
    VDrawRect,
    ALIGN_FLAGS[Alignment] or WORD_WRAPS[VWordWraps]);
end;

{ TAdvSettings }

constructor TAdvSettings.Create(AOwner: TxxxDBGrid);
begin
  inherited Create;
  FOwner := AOwner;
end;

destructor TAdvSettings.Destroy;
begin
  inherited Destroy;
end;

function TAdvSettings.GetAutoFilter: Boolean;
begin
  Result := FOwner.AutoFilter;
end;

function TAdvSettings.GetDesignMode: Boolean;
begin
  Result := FOwner.FMainDataSet.DesignMode;
end;

function TAdvSettings.GetEnabled: Boolean;
begin
  Result := FOwner.FMainDataSet.Enabled;
end;

function TAdvSettings.GetGuid: string;
begin
  Result := FOwner.FGuid;
end;

function TAdvSettings.GetHeadersLines: THeadersLines;
begin
  Result := FOwner.FHeadersLines;
end;

function TAdvSettings.GetIndexes: TIndexes;
begin
  Result := FOwner.FMainDataSet.Indexes;
end;

function TAdvSettings.GetLookUpField: TStrings;
begin
  Result := FOwner.FMainDataSet.LookUpField;
end;

function TAdvSettings.GetOptimizerHint: String;
begin
  Result := FOwner.FMainDataSet.OptimizerHint;
end;

function TAdvSettings.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TAdvSettings.SetAutoFilter(const Value: Boolean);
begin
  FOwner.AutoFilter := Value;
end;

procedure TAdvSettings.SetDesignMode(const Value: Boolean);
begin
  FOwner.FMainDataSet.DesignMode := Value;
end;

procedure TAdvSettings.SetEnabled(const Value: Boolean);
begin
  FOwner.FMainDataSet.Enabled := Value;
end;

procedure TAdvSettings.SetGuid(const Value: string);
begin
  FOwner.FGuid := Value;
end;

procedure TAdvSettings.SetHeadersLines(const Value: THeadersLines);
begin
  FOwner.FHeadersLines.Assign(Value);
end;

procedure TAdvSettings.SetIndexes(const Value: TIndexes);
begin
  FOwner.FMainDataSet.Indexes.Assign(Value);
end;

procedure TAdvSettings.SetLookUpField(const Value: TStrings);
begin
  FOwner.FMainDataSet.LookUpField := Value;
end;

procedure TAdvSettings.SetOptimizerHint(const Value: String);
begin
  FOwner.FMainDataSet.OptimizerHint := Value;
end;

{ TxxxDBGrid }

function TxxxDBGrid.AcquireFocus: Boolean;
begin
  Result := True;
  if FAcquireFocus and CanFocus and not (csDesigning in ComponentState) then
  begin
    SetFocus;
    Result := Focused or (InplaceEditor <> nil) and InplaceEditor.Focused;
  end;
end;

procedure TxxxDBGrid.CalcTitleHeight;
begin
  if dgTitles in Options then
  begin
    // ������ �����
    RowHeights[0] := DefaultRowHeight * TitleLines;
    // ����� �����
    RowHeights[0] := RowHeights[0] + RowLinesHeight * (TitleLines - 1);
  end else
  begin
    RowHeights[0] := DefaultRowHeight;
  end;
end;

procedure TxxxDBGrid.CMHintShow(var Message: TMessage);
var
  VMess: TCMHintShow;
  VRect: TRect;
  VGridCoord: TGridCoord;
  VRow, VCol: Integer;
  VHint: string;
  VOldActive: Integer;
begin
  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  // ���� ����� �� ���������� � ������ �� ���������� ��� HINT
  VMess := TCMHintShow(Message);
  VGridCoord := Self.MouseCoord(VMess.HintInfo.CursorPos.X, VMess.HintInfo.CursorPos.Y);
  VRow := VGridCoord.Y;
  VCol := RawToDataColumn(VGridCoord.X);
  if dgTitles in Options then Dec(VRow);
  if (DataLink.Active) and (VCol >= 0) and (VRow >= 0) then
  begin
    // ����� ������
    VOldActive := DataLink.ActiveRecord;
    try
      DataLink.ActiveRecord := VRow;
      VHint := Columns[VCol].Field.DisplayText;
    finally
      DataLink.ActiveRecord := VOldActive;
    end;
    // ��������� ���������� �� ����� � ������
    if Canvas.TextWidth(VHint) > Columns[VCol].Width then
    begin
      VRect := CellRect(VGridCoord.X, VGridCoord.Y);
      VRect.TopLeft := ClientToScreen(VRect.TopLeft);
      VRect.BottomRight := ClientToScreen(VRect.BottomRight);
      VMess.HintInfo.CursorRect := VRect;
      VMess.HintInfo.HintStr := VHint;
      VMess.HintInfo.HintPos.Y := VMess.HintInfo.CursorRect.Top - ColLinesWidth;
      VMess.HintInfo.HintPos.X := VMess.HintInfo.CursorRect.Left - RowLinesHeight;
      VMess.HintInfo.HintMaxWidth := ClientWidth;
      VMess.Result := 0;
    end;
  end;
end;

(*
function TxxxDBGrid.GetVisColumnsWidth: Integer;
begin
  // ��������� ������ �������
  Result := GetVisSumColumnsWidth(0, Columns.Count - 1);
end;
*)

procedure TxxxDBGrid.ColWidthsChanged;
begin
  inherited ColWidthsChanged;

//  DoOnResize;
//  DoOnColWidthsChanged;
end;

constructor TxxxDBGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  // GUID
  FGuid := CreateClassID;
  // ����������� ����
  FdmGrid := TdmGrid.Create(Self);
  // ����������� DataSet
  FMainDataSet := TVirtualDataSet.Create(Self);
  FMainDataSet.OnIndexChanged := DoOnIndexChanged;
  FMainDataSet.OnConditionChanged := DoOnConditionChanged;
  // ���������� ������
  FFilterList := TFilterList.Create(Self);
  FFilterList.Parent := Self;
  FFilterList.MainDataSet := FMainDataSet;
  // ���������
  FHeadersLines := THeadersLines.Create(Self);
  // ��������
  FImageList := TImageList.Create(Self);
  FImageList.ResourceLoad(rtBitmap, 'SORT_ASC', clSilver);
  FImageList.ResourceLoad(rtBitmap, 'SORT_DESC', clSilver);
  FImageList.ResourceLoad(rtBitmap, 'FILT_ON', clSilver);
  FImageList.ResourceLoad(rtBitmap, 'FILT_OF', clSilver);
  // ��� �������� ������ � Object Inspector'e
  FAdvSettings := TAdvSettings.Create(Self);
  FShowVscroll := True;
  FFilteredColumns := TStringList.Create;
  FHiddenColumns := TStringList.Create;
end;

procedure TxxxDBGrid.CreateWnd;
begin
  BeginUpdate();
  try
    inherited CreateWnd;
    CalcTitleHeight;
    // �������� DataSet
    if not Assigned(FMainDataSet.DataSet) then
    begin
      FMainDataSet.DataSet := DataLink.DataSet;
    end;
  finally
    EndUpdate();
  end;
end;

(*
procedure TxxxDBGrid.DecColumnWidth(const AIndex, AValue: Integer);
begin
  // ��������� ������ ������� �� AValue
  SetColumnWidth(AIndex, Columns[AIndex].Width - AValue);
end;
*)

destructor TxxxDBGrid.Destroy;
begin
  FFilteredColumns.Free;
  FHiddenColumns.Free;
  inherited Destroy;
end;

function TxxxDBGrid.DistributeColumns(AFirst, ALast: Integer;
  var AWidth: Integer): Integer;
const
  INVALID_WIDTH = - 999;
var
//  I: Integer;
//  VFlag: Boolean;
 (*
  function CalcNewWidth(const AColumnWidth: Integer): Integer;
  begin
    // ������������ ����� ������ �������
    Result := Trunc(AWidth * AColumnWidth / VColumsWidth);
  end;
  *)

  //VColumsWidth: TColumnWidth;
  VWidth: Real;
begin
  (*
  ������������ ������� AFirst �� ������ AWidth
  *)

  Result := 0;

  // ��������� ������ �������
  VWidth := GetExtSumColumnsWidth(AFirst, ALast);

  // ������� ������� �� ��������� ������ �������
  VWidth := FColumnsWidth[AFirst] / VWidth;

  // ����� ������ �������
  VWidth := AWidth * VWidth;

  // ��������� ������ �������
  FColumnsWidth[AFirst] := VWidth;

  // ������������� ������ ������� ��� �����������
  SetColumnWidth(AFirst, Round(VWidth));

  // ��������� ��������� �����
  AWidth := AWidth - Columns[AFirst].Width;

  // ������� ������� ������ ������� ����� ��������� ����� ������ ����������� ������
  (*
  VFlag := True;
  while VFlag do
  begin
    VFlag := False;
    for I := AFirst to ALast do
    begin
      if (Columns[I].Visible) and
         (Columns[I].Width <> INVALID_WIDTH) then
//          and
//         (CalcNewWidth(Columns[I].Width) < MIN_COLUMN_WIDTH) then
      begin
        //Dec(VColumsWidth, MIN_COLUMN_WIDTH - Columns[I].Width);
        Dec(AWidth, MIN_COLUMN_WIDTH);
        Columns[I].Width := INVALID_WIDTH;
        VFlag := True;
      end;
    end;
  end;


  // ������������ AWidth ��������������� ������ ��������
  for I := AFirst to ALast do
  begin
    if (Columns[I].Visible) and
       (Columns[I].Width <> INVALID_WIDTH) then
    begin
      Columns[I].Width := CalcNewWidth(Columns[I].Width);
    end else
    begin
      Columns[I].Width := MIN_COLUMN_WIDTH;
    end;
  end;
  *)

  // ������������ ��������� �������
  (*
  VColumsWidth := GetVisSumColumnsWidth(AFirst, ALast);
  if VColumsWidth <> AWidth then
  begin
    IncColumnWidth(Columns.Count - 1, AWidth - VColumsWidth);
  end;
  *)
end;

function TxxxDBGrid.DoMouseWheelDown(Shift: TShiftState;
  MousePos: TPoint): Boolean;
begin
  Result := False;
  if not AcquireFocus then Exit;
  if Datalink.Active then
  begin
    Result := Datalink.DataSet.MoveBy(1) <> 0;
  end;
end;

function TxxxDBGrid.DoMouseWheelUp(Shift: TShiftState;
  MousePos: TPoint): Boolean;
begin
  Result := False;
  if not AcquireFocus then Exit;
  if Datalink.Active then
  begin
    Result := Datalink.DataSet.MoveBy( - 1) <> 0;
  end;
end;

(*
procedure TxxxDBGrid.DoOnColWidthsChanged;
//var
//  VColumnIndex, I,
//  StartIndex, FinishIndex,
//  MinColumnsWidth, FreeSpace: Integer;
begin
(*
  if not FAdvSettings.ColumnsAutoSize then Exit;

  // ������� ����� ������� � ������������ �������
  VColumnIndex := NOT_FOUND_INDEX;
  for I := 0 to Columns.Count - 1 do
  begin
    if Columns[I].Width <> FColumnsWidth[I] then
    begin
      VColumnIndex := I;
      FResizeFieldIndex := VColumnIndex;
      Break;
    end;
  end;
  if ColumnIndex = NOT_FOUND_INDEX then Exit;

  // ������������� ������ ������� ������ ������� ���������� ���������������
  // � ����������� "���������" ����� ��� ���
  if (ColumnIndex = Columns.Count - 1) then
  begin
    StartIndex := 0;
    FinishIndex := ColumnIndex - 1;
    FreeSpace := GridWidth - Columns[ColumnIndex].Width;
  end else
  begin
    StartIndex := ColumnIndex + 1;
    FinishIndex := Columns.Count - 1;
    FreeSpace := GridWidth - GetSumColumnsWidth(0, ColumnIndex);
  end;

  // ��������� �� ������� �� ������� ColumnIndex �� ������� Grid'a
  if FreeSpace < 0 then
  begin
    IncColumnWidth(ColumnIndex, FreeSpace);
    FreeSpace := 0;
  end;

  // ��������� ������ �� FreeSpace ��� ������� � StartIndex �� FinishIndex
  MinColumnsWidth := (FinishIndex - StartIndex + 1) * MIN_COLUMN_WIDTH;
  if FreeSpace < MinColumnsWidth then
  begin
    DecColumnWidth(ColumnIndex, MinColumnsWidth - FreeSpace);
    FreeSpace := MinColumnsWidth;
  end;

  // ������������� ������ ��������
  DistributeColumns(StartIndex, FinishIndex, FreeSpace);

  // ��������� ������� ������ �������
  SaveGridColumnsWidth;
  SaveGridColumnsProcent;
  *)
//end;


procedure TxxxDBGrid.DoOnResize;
var
  //I, VCheckWidth, VGridWidth, VColumnsWidth: Integer;
  I, VGridWidth: Integer;
begin
  if not FAdvSettings.ColumnsAutoSize then Exit;

  // ��������� �������� Columns
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  // ���� �� ��������� �� ���������
  if Length(FColumnsWidth) <> Columns.Count then
//  if Length(FColumnsWidth) <> GetVisibleColumnsCount then
  begin
    SaveColumnsWidth;
  end;
  (*
  if Length(FColumnsProcent) <> GetVisibleColumnsCount then
  begin
    SaveColumnsProcent;
  end;
  *)

  // ����������� "������" ������ Grid'a
  VGridWidth := GetGridWidth;

  for I := 0 to Columns.Count - 1 do
  begin
    if not Columns[I].Visible then Exit;  
    DistributeColumns(I, Columns.Count - 1, VGridWidth);
  end;

  if VGridWidth <> 0 then showmessage('���-�� �� ������������!!!');


  // ������������ ����� ������ �������
  (*
  VCheckWidth := 0;
  for I := 0 to Columns.Count - 1 do
  begin
    if not Columns[I].Visible then Exit;
    SetColumnWidth(I, Trunc(VGridWidth * FColumnsProcent[I]));
    //SetColumnWidth(I, Round(VGridWidth * FColumnsProcent[I]));
    Columns[I].Title.Caption := IntToStr(Columns[I].Width);
    Inc(VCheckWidth, Columns[I].Width);
  end;

  *)
  
  // ������������ ������ ��������� �������
  (*
  if VCheckWidth <> VGridWidth then
  begin
    IncColumnWidth(Columns.Count - 1, VGridWidth - VCheckWidth);
  end;
  *)

  // ��������� ������ �������
  //SaveColumnsWidth;
end;

procedure TxxxDBGrid.DrawCell(ACol, ARow: Integer; ARect: TRect;
  AState: TGridDrawState);
var
  VIndicator: Integer;
  VTitle: Integer;
  VRect: TRect;
  I, K: Integer;
  VCIndex: Integer;
  VLineCount: Integer;
  VHeader: THeader;
begin
  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  if dgIndicator in Options then
    VIndicator := 1
  else
    VIndicator := 0;

  // ������ ��� TColumns
  VCIndex := ACol - VIndicator;

  if dgTitles in Options then
    VTitle := 1
  else
    VTitle := 0;

  if (gdFixed in AState) and (ACol >= VIndicator) and (ARow < VTitle) then
    begin
    // ������ ������������ ���������� Header � ���������� Title
    for I := 0 to AdvSettings.HeadersLines.Count - 1 do
      begin
      VHeader := AdvSettings.HeadersLines[I].Headers.FindHeader(VCIndex);
      if not Assigned(VHeader) then Continue;
      // ������������ ������
      VRect := BoxRect(
        VHeader.FirstCol + VIndicator, 0,
        VHeader.LastCol + VIndicator, 0);
      // ������������ ������
      VLineCount := 0;
      for K := I - 1 downto 0 do
        begin
        if Assigned(AdvSettings.HeadersLines[K].Headers.FindHeader(VCIndex)) then
          Break
        else
          Inc(VLineCount);
        end;
      VRect.Top := VRect.Top +
                     (I - VLineCount) * DefaultRowHeight +
                     (I - VLineCount) * RowLinesHeight;
      VRect.Bottom := VRect.Top +
                       (VLineCount + 1) * DefaultRowHeight +
                        VLineCount * RowLinesHeight;
      DrawTitleCell(
        VCIndex,
        ARow,
        VRect,
        AState,
        VHeader.Caption,
        VHeader.Alignment,
        False
        );
      end;

    // ������ ����������� ��������� Title
    // ������������ ������
    VLineCount := 0;
    for K := AdvSettings.HeadersLines.Count - 1 downto 0 do
      begin
      if Assigned(AdvSettings.HeadersLines[K].Headers.FindHeader(VCIndex)) then
        begin
        Break;
        end
      else
        begin
        Inc(VLineCount);
        end;
      end;
    VRect := ARect;
    VRect.Top :=
      VRect.Bottom -
      (VLineCount + 1) * DefaultRowHeight -
      VLineCount * RowLinesHeight;
    //VRect.Bottom := VRect.Top + DefaultRowHeight;
    DrawTitleCell(
      VCIndex,
      ARow,
      VRect,
      AState,
      Columns[VCIndex].Title.Caption,
      Columns[VCIndex].Title.Alignment,
      True);
    end
  else
    begin
    // ������ ������� ������
    inherited DrawCell(ACol, ARow, ARect, AState);
    end;
end;

procedure TxxxDBGrid.DrawTitleCell(ACol, ARow: Integer; ARect: TRect;
  AState: TGridDrawState; AText: string; Alignment: TAlignment;
  const ADrawPic: Boolean);
var
  VFrameOffs: Byte;
  VOldColor: TColor;
  VOldPenColor: TColor;
  VOldFont: TFont;
  VRect: TRect;
begin
  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  VOldPenColor := Canvas.Pen.Color;
  VOldColor := Canvas.Brush.Color;
  VOldFont := Canvas.Font;
  try
    Canvas.Brush.Color := Columns[ACol].Title.Color;
    Canvas.Font := Columns[ACol].Title.Font;

    // ������ �������
    Canvas.FillRect(ARect);

    // ��������� �����
    if [dgRowLines, dgColLines] * Options = [dgRowLines, dgColLines] then
    begin
      InflateRect(ARect, -1, -1);
      VFrameOffs := 1;
    end else
    begin
      VFrameOffs := 2;
    end;

    VRect := ARect;
    if ADrawPic then
    begin
      DrawButtom(VRect, Columns[ACol]);
      DrawPicters(VRect, Columns[ACol]);
    end;

    WriteText(Canvas, VRect, VFrameOffs, VFrameOffs, AText, Alignment,
      IsRightToLeft);

    InflateRect(ARect, 1, 1);
    if [dgRowLines, dgColLines] * Options = [dgRowLines, dgColLines] then
    begin
      // ������� ������ ��������� ��������������
      DrawEdge(Canvas.Handle, ARect, BDR_RAISEDINNER, BF_BOTTOMRIGHT);
      DrawEdge(Canvas.Handle, ARect, BDR_RAISEDINNER, BF_TOPLEFT);

//      DrawEdge(Canvas.Handle, ARect, BDR_RAISEDINNER, BF_FLAT);

      // ������ ������� �����
      Canvas.Pen.Color:= clBlack;
      Canvas.MoveTo(ARect.Left, ARect.Bottom);
      Canvas.LineTo(ARect.Right, ARect.Bottom);
    end;
  finally
    Canvas.Pen.Color := VOldPenColor;
    Canvas.Brush.Color := VOldColor;
    Canvas.Font := VOldFont;
  end;
end;

function TxxxDBGrid.GetColLinesWidth: Integer;
begin
  if dgColLines in Options then
  begin
    Result := 1
  end else
  begin
    Result := 0;
  end;
end;

function TxxxDBGrid.GetGridWidth: Integer;
var
  VColLine: Integer;
begin
  // ������������ ����� ��� �������
  Result := ClientWidth;

  // ���������� �������������� �����
  VColLine := GetVisibleColumnsCount;

  // ������ ������� ����������
  if dgIndicator in Options then
  begin
    Inc(VColLine);
    Dec(Result, IndicatorWidth);
  end;

  // ������ ������������ ������ ���������
  (*
  if DataLink.Active and (DataLink.DataSet.RecordCount > 2) then
  begin
    Inc(VColumns);
    Dec(Result, GetSystemMetrics(SM_CXVSCROLL));
  end;
  *)

  // ��������� ������ ���� �������������� �����
  if dgColLines in Options then
  begin
    Dec(Result, VColLine)
  end;
end;

(*
function TxxxDBGrid.GetHeaderRect(ACol: Integer): TRect;
begin

  if [dgColLines] * Options = [dgColLines] then
    Shift := 1
  else
    Shift := 0;

  Index := ACol;
  Count := 1;
  if Assigned(FOnGetHeaderRect) then
    FOnGetHeaderRect(ACol, Index, Count);

  if Index + Count - 1 > Columns.Count - 1 then
  begin
    Index := ACol;
    Count := 1;
  end;

  Result := CalcTitleRect(Columns[Index], 0, MasterCol);

  for i := Index + 1 to Index + Count - 1 do
    Result.Right := Result.Right + RectWidth(CalcTitleRect(Columns[i], 0,
      MasterCol)) + Shift;
end;
*)

function TxxxDBGrid.GetRowLinesHeight: Integer;
begin
  if dgRowLines in Options then
  begin
    Result := 1
  end else
  begin
    Result := 0;
  end;
end;

function TxxxDBGrid.GetVisSumColumnsWidth(const AFirst,
  ALast: Integer): Integer;
var
  I: Integer;
begin
  Result := 0;

  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  // ��������� ������ ������� ��������
  for I := AFirst to ALast do
  begin
    if Columns[I].Visible then
    begin
      Inc(Result, Columns[I].Width);
    end;
  end;
end;

(*
procedure TxxxDBGrid.IncColumnWidth(const AIndex, AValue: Integer);
begin
  // ����������� ������ ������� �� AValue
  SetColumnWidth(AIndex, Columns[AIndex].Width + AValue);
end;
*)

procedure TxxxDBGrid.LayoutChanged;
begin
  inherited LayoutChanged;
  CalcTitleHeight;

  //DoOnResize;
end;

procedure TxxxDBGrid.Resize;
begin
  inherited Resize;

  //DoOnResize;
end;

procedure TxxxDBGrid.SaveColumnsProcent;
var
  I, VSumColumnWidth: Integer;
begin
  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  // ����������� ������� ��������� ���������� ������ ������� �� ����� �����
  VSumColumnWidth := GetVisSumColumnsWidth(0, Columns.Count - 1);
  SetLength(FColumnsProcent, Columns.Count);
  for I := 0 to Columns.Count - 1 do
  begin
    if Columns[I].Visible then
    begin
      FColumnsProcent[I] := Columns[I].Width / VSumColumnWidth;
    end else
    begin
      // �� ����������
      FColumnsProcent[I] := 0;
    end;
  end;
end;

procedure TxxxDBGrid.SaveColumnsWidth;
var
  I: Integer;
begin
  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  // ��������� ������� ������ ��������
  SetLength(FColumnsWidth, Columns.Count);
  for I := 0 to Columns.Count - 1 do
  begin
    FColumnsWidth[I] := Columns[I].Width;
  end;
  //TColumnsRestorer.SaveCompParams(Self);
end;

(*
procedure TxxxDBGrid.CheckWidth(AColumn: TColumn);
begin
  if AColumn.Width < MIN_COLUMN_WIDTH then
  begin
    AColumn.Width := MIN_COLUMN_WIDTH;
  end;
end;
*)

function TxxxDBGrid.GetVisibleColumnsCount: Integer;
var
  I: Integer;
begin
  Result := 0;

  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;
  
  // ���������
  for I := 0 to Columns.Count - 1 do
  begin
    if Columns[I].Visible then
    begin
      Inc(Result);
    end;
  end;
end;

procedure TxxxDBGrid.SetColumnWidth(const AIndex, AValue: Integer);
begin
  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  // ������������� ������ ������� �� ����� ���� ������ MIN_COLUMN_WIDTH
  if AValue > MIN_COLUMN_WIDTH then
  begin
    Columns[AIndex].Width := AValue;
  end else
  begin
//    Columns[AIndex].Width := MIN_COLUMN_WIDTH;
    Columns[AIndex].Width := AValue; // !!!
  end;
  Columns[AIndex].Title.Caption := IntToStr(Columns[AIndex].Width);
end;

type
  THackDataSet = class(TDataSet)
  end;

procedure TxxxDBGrid.FillColumnsValues(const AColumn: TColumn;
  AList: TStrings);
var
  VOldActive: Integer;
  VFieldValue: string;
  VOldCursor: TCursor;
  //VCurrentPos: TBookmark;
  I: Integer;
begin
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    DataLink.DataSet.DisableControls;
    try
      VOldActive := DataLink.ActiveRecord;
      try
        //VCurrentPos:= DataLink.DataSet.GetBookmark;
        try
         // DataLink.DataSet.Filtered := False;
          try
            // ����� � ������ ������
            DataLink.DataSet.First;
            while not DataLink.DataSet.Eof do
            begin
              VFieldValue := AColumn.Field.AsString;
              // ���� �� �������� � ������
              if (VFieldValue <> '') and
                 (AList.IndexOf(VFieldValue) = - 1) then
              begin
                // ���������
                AList.Add(VFieldValue);
              end;
              DataLink.DataSet.Next;
              DataLink.DataSet.RecNo
            end
          finally
          //  DataLink.DataSet.Filtered := True;
          end;
        finally
          (*
	  try
            //xxxGotoBookMark(VCurrentPos);
            DataLink.DataSet.GotoBookMark(VCurrentPos);
          finally
            DataLink.DataSet.FreeBookmark(VCurrentPos);
          end;
          *)
        end;
        for I := 1 to (VOldActive - ((THackDataSet(DataLink.DataSet).BufferCount - 1) div 2)) do
        begin
          //THackDataSet(DataLink.DataSet).GetPriorRecord;
        end;
      finally
        DataLink.ActiveRecord := VOldActive;
      end;
    finally
      DataLink.DataSet.EnableControls;
    end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

(*
procedure TxxxDBGrid.xxxGotoBookmark(ABookmark: TBookmark);
begin
  // ����������� �� Db.TDataSet.GotoBookMark
  // ������� �� ��������� ������ �� ������
  with THackDataSet(DataLink.DataSet) do
  begin
    if ABookmark <> nil then
    begin
      CheckBrowseMode;
      DoBeforeScroll;
      InternalGotoBookmark(ABookmark);
      Resync([rmExact{, rmCenter}]);                          // !!!
      DoAfterScroll;
    end;
  end;
end;
*)

//procedure TxxxDBGrid.xxxResync(Mode: TResyncMode);
//var
//  Count: Integer;
//begin
  // ����������� �� Db.TDataSet.Resync
  // ������� �� ��������� ������ �� ������
  (*
  with THackDataSet(DataLink.DataSet) do
  begin
    if rmExact in Mode then
    begin
      CursorPosChanged;
      if GetRecord(FBuffers[FRecordCount], gmCurrent, True) <> grOK then
        DatabaseError(SRecordNotFound, Self);
    end else
      if (GetRecord(FBuffers[FRecordCount], gmCurrent, False) <> grOK) and
        (GetRecord(FBuffers[FRecordCount], gmNext, False) <> grOK) and
        (GetRecord(FBuffers[FRecordCount], gmPrior, False) <> grOK) then
      begin
        ClearBuffers;
        DataEvent(deDataSetChange, 0);
        Exit;
      end;
    if rmCenter in Mode then
      Count := (FBufferCount - 1) div 2 else
      Count := FActiveRecord;
    MoveBuffer(FRecordCount, 0);
    ActivateBuffers;
    try
      while (Count > 0) and GetPriorRecord do Dec(Count);
      GetNextRecords;
      GetPriorRecords;
    finally
      DataEvent(deDataSetChange, 0);
    end;
  end;
  *)
//end;

procedure TxxxDBGrid.DblClick;
var
  VRect: TRect;
  VCurPos: TPoint;
  VGridCoord: TGridCoord;
  VRow, VCol: Integer;
begin
  inherited DblClick;

  (*
  ���������� ������ ������� (��������� ������ �� ����� ������)
  *)

  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  // DataSet ������ ���� ��������
  if not DataLink.Active then Exit;

  // ���������� DblClick ����� ��������� (������ ������ ���� crHSplit)
  if (Windows.GetCursor <> Screen.Cursors[crHSplit]) then Exit;

  // ���������� ������ Grid'a ��� ������� ��� DblClick
  GetCursorPos(VCurPos);
  VCurPos := ScreenToClient(VCurPos);
  VGridCoord := MouseCoord(VCurPos.X, VCurPos.Y);
  VRow := VGridCoord.Y;
  //VCol := VGridCoord.X;
  if dgTitles in Options then Dec(VRow);
  VCol := RawToDataColumn(VGridCoord.X);

  // ���� �� ��������� �� �����
  if VRow > 0 then Exit;

  // ��������� �� ����� �������� ������� ��� DblClick
  // ���� �� ����� �������� �� �������� ������ �� ���������� �������
  VRect := CellRect(VGridCoord.X, VGridCoord.Y);
  if VCurPos.X < (VRect.Left + (VRect.Right - VRect.Left) div 2) then
  begin
    Dec(VCol);
  end;

  ColumnAutoSize(Columns[VCol]);
end;

procedure TxxxDBGrid.ColumnAutoSize(const AColumn: TColumn);
const
  SPAICING = 6; // ���-�� �������� �� ����� ������ �� ���� �������
var
  I: Integer;
  VWidth, VCaptionWidth, VMaxWidth: Integer;
  VOldActive: Integer;
  VNeedRect: TRect;
begin
  // ���������� ������ ������� (��������� ������ �� ����� ������)
  // ��������� �� ������� ������� � ���������� ������������ ����� ������ �����
  VMaxWidth := 0;
  VOldActive := DataLink.ActiveRecord;
  try
    for I := 0 to DataLink.BufferCount - 1 do
    begin
      DataLink.ActiveRecord := I;
      VWidth := Canvas.TextWidth(AColumn.Field.DisplayText) + SPAICING;
      if VMaxWidth < VWidth then
      begin
        VMaxWidth := VWidth;
      end;
    end;
  finally
    DataLink.ActiveRecord := VOldActive;
  end;

  // ���������� ������� ����� ��� ��������� ���������
  VNeedRect.Left := 0;
  VNeedRect.Right := 0;
  VNeedRect.Top := 0;
  VNeedRect.Bottom := 0;
  DrawText(
    Self.Canvas.Handle,
    PChar(AColumn.Title.Caption),
    Length(AColumn.Title.Caption),
    VNeedRect,
    ALIGN_FLAGS[AColumn.Title.Alignment] or WORD_WRAPS[False] or DT_CALCRECT);
  VCaptionWidth := VNeedRect.Right - VNeedRect.Left + 4;

  // ��������� �� ����������
  if AutoFilter then
  begin
    Inc(VCaptionWidth, DefaultRowHeight);
  end;

  // ���� �� ���������� �� ���� �������
  if Assigned(FMainDataSet.Indexes.IndexOf(AColumn.FieldName)) then
  begin
    Inc(VCaptionWidth, DefaultRowHeight);
  end;

  // �������� ������������
  if VCaptionWidth > VMaxWidth then
  begin
    VMaxWidth := VCaptionWidth;
  end;

  // ������������� ����� ������ �������
  AColumn.Width := VMaxWidth;
end;

procedure TxxxDBGrid.DoContextPopup(MousePos: TPoint;
  var Handled: Boolean);
var
  VGridCoord: TGridCoord;
begin
  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  // ���� ������� PopupMenu �� ��������� �� ���������� ��� ����
  VGridCoord := MouseCoord(MousePos.X, MousePos.Y);
  if VGridCoord.Y = 0 then
  begin
    MousePos := ClientToScreen(MousePos);
    FdmGrid.Column := Columns[RawToDataColumn(VGridCoord.X)];
    FdmGrid.pmPopupMenu.Popup(MousePos.X, MousePos.Y);
    Handled := True;
  end else
  begin
    inherited;
  end;
end;

function TxxxDBGrid.GetExtSumColumnsWidth(const AFirst,
  ALast: Integer): Real;
var
  I: Integer;
begin
  Result := 0;

  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  // ��������� ������ ������� ��������
  for I := AFirst to ALast do
  begin
    if Columns[I].Visible then
    begin
      Result := Result + FColumnsWidth[I];
    end;
  end;
end;

procedure TxxxDBGrid.TitleClick(Column: TColumn);
var
  VRect: TRect;
  VCurPos: TPoint;
  VGridCoord: TGridCoord;
begin
  inherited TitleClick(Column);

  // ���� �� ������ ���������� ������ �� �������
  if Windows.GetCursor = Screen.Cursors[crHSplit] then Exit;  

  if not Assigned(Column.Field) then Exit;

  // ���������� ������ Grid'a ��� ������� ��� Click
  GetCursorPos(VCurPos);
  VCurPos := ScreenToClient(VCurPos);
  VGridCoord := MouseCoord(VCurPos.X, VCurPos.Y);
  VRect := CellRect(VGridCoord.X, VGridCoord.Y);

  // ��������� �������� �� ������ �����������
  if AutoFilter and
     (VCurPos.X >= (VRect.Right - DefaultRowHeight)) then
    begin
    AutoFilterDropDown(Column);
    end
  else
    begin
    SortByField(Column.Field);
    end;
end;

procedure TxxxDBGrid.DrawButtom(var ARect: TRect; const AColumn: TColumn);
const
  PIC_INDEX: array [Boolean] of Integer = (3, 2);
var
  VRect: TRect;
  VHeight: Integer;
  VFiltered: Boolean;
begin
  if (not Assigned(AColumn)) or (not Assigned(AColumn.Field)) then Exit;

  if PicterHeight > (ARect.Right - ARect.Left) then Exit;

  VFiltered := IsColumnFiltered(AColumn.FieldName);

  if VFiltered then
    begin
    // ������ ������ � ������ ������� ����
    Canvas.Pen.Color := clRed;
    Canvas.MoveTo(ARect.Right - 10, ARect.Top + 1); // ���� �����

    Canvas.LineTo(ARect.Right - 2, ARect.Top + 1); // ����
    Canvas.LineTo(ARect.Right - 3, ARect.Top + 2); // ���� ����
    Canvas.LineTo(ARect.Right - 5, ARect.Top + 4); // ����� 2 � ���� 2
    Canvas.LineTo(ARect.Right - 5, ARect.Top + 7); // ���� 3
    Canvas.LineTo(ARect.Right - 7, ARect.Top + 7); // ����� 2
    Canvas.LineTo(ARect.Right - 7, ARect.Top + 4); // ����� 3
    Canvas.LineTo(ARect.Right - 9, ARect.Top + 2); // ����� 2 � ����� 2
    Canvas.LineTo(ARect.Right - 10, ARect.Top + 1); // ���� �����
    end;

  if not AutoFilter then Exit;

  VFiltered := IsFiltered(AColumn.FieldName);
  // �������� ����� ����������, ������� ����� ������ ������ ����� 2
  VHeight := DefaultRowHeight - 2;
  VRect.Left := ARect.Right - VHeight - 1;
  VRect.Right := VRect.Left + VHeight;
  VRect.Top := ARect.Top + (ARect.Bottom - ARect.Top - VHeight) div 2;
  VRect.Bottom := VRect.Top + VHeight;

  FImageList.Draw(Canvas, VRect.Left, VRect.Top, PIC_INDEX[VFiltered]);

  ARect.Right := ARect.Right - (DefaultRowHeight - 1);
end;

(*
procedure TxxxDBGrid.DrawButtom(var ARect: TRect; const AColumn: TColumn);
var
  VRect: TRect;
  VHeight: Integer;
begin
  // ������ ����� ����������, ������� ����� ������ ������ ����� 2
  if PicterHeight > (ARect.Right - ARect.Left) then Exit;

  if not AdvSettings.SQLBuilder.AutoFilter then Exit;

  VHeight := DefaultRowHeight - 2;
  VRect.Left := ARect.Right - VHeight - 1;
  VRect.Right := VRect.Left + VHeight;
  VRect.Top := ARect.Top + (ARect.Bottom - ARect.Top - VHeight) div 2;
  VRect.Bottom := VRect.Top + VHeight;

  DrawFrameControl(
    Canvas.Handle,
    VRect,
    DFC_SCROLL,
    DFCS_SCROLLDOWN  or DFCS_FLAT);

  ARect.Right := ARect.Right - (DefaultRowHeight - 1);
end;
*)

procedure TxxxDBGrid.DrawPicters(var ARect: TRect; const AColumn: TColumn);
const
  PIC_INDEX: array [TSortType] of Integer = (0, 1);
var
  VRect: TRect;
  VHeight: Integer;
  VIndex: TIndex;
begin
  if csLoading in ComponentState then Exit;

  if not AutoFilterEnabled then Exit;

  if (not Assigned(AColumn)) or (not Assigned(AColumn.Field)) then Exit;

  if PicterHeight > (ARect.Right - ARect.Left) then Exit;

  VIndex := IndexOf(AColumn.FieldName);
  if not Assigned(VIndex) then Exit;

  // �������� ����� ����������, ������� ����� ������ ������ ����� 2
  VHeight := DefaultRowHeight - 2;
  VRect.Left := ARect.Right - VHeight - 1;
  VRect.Right := VRect.Left + VHeight;
  VRect.Top := ARect.Top + (ARect.Bottom - ARect.Top - VHeight) div 2;
  VRect.Bottom := VRect.Top + VHeight;

  FImageList.Draw(Canvas, VRect.Left, VRect.Top, PIC_INDEX[VIndex.SortType]);

  ARect.Right := ARect.Right - (DefaultRowHeight - 1);
end;

function TxxxDBGrid.PicterBorder: Integer;
begin
  Result := 1;
end;

function TxxxDBGrid.PicterHeight: Integer;
begin
  Result := DefaultRowHeight - 2 * PicterBorder;
end;


//procedure TxxxDBGrid.MyUpdateEdit;
(*
  procedure UpdateEditor;
  begin
    FInplaceCol := Col;
    FInplaceRow := Row;
    FInplaceEdit.UpdateContents;
    if FInplaceEdit.MaxLength = -1 then FCanEditModify := False
    else FCanEditModify := True;
    FInplaceEdit.SelectAll;
  end;
*)
//begin
(*
  if CanEditShow then
  begin
    if FInplaceEdit = nil then
    begin
      FInplaceEdit := CreateEditor;
      FInplaceEdit.SetGrid(Self);
      FInplaceEdit.Parent := Self;
      UpdateEditor;
    end
    else
    begin
      if (Col <> FInplaceCol) or (Row <> FInplaceRow) then
      begin
        HideEdit;
        UpdateEditor;
      end;
    end;
    if CanEditShow then FInplaceEdit.Move(CellRect(Col, Row));
  end;
*)
//end;

(*
function TxxxDBGrid.GetDataSource: TxxxDataSource;
begin
  Result := TxxxDataSource(inherited DataSource);
end;

procedure TxxxDBGrid.SetDataSource(const Value: TxxxDataSource);
begin
  inherited DataSource := Value;
end;
*)

procedure TxxxDBGrid.FillColumnList(const AStrings: TStrings);
var
  I: Integer;
begin
  if not Assigned(Columns) then Exit;

  // ���������� ������ �������
  AStrings.Clear;
  for I := 0 to Columns.Count - 1 do
  begin
    if Assigned(Columns[I].Field) and (Columns[I].Field.FieldKind = fkData) then
    begin
      AStrings.AddObject(Columns[I].Title.Caption, Columns[I].Field);
    end;
  end;
end;

procedure TxxxDBGrid.DoOnConditionChanged(Item: TCondition);
begin
  if csLoading in ComponentState then Exit;
  LayoutChanged;
end;

procedure TxxxDBGrid.DoOnIndexChanged(Item: TIndex);
begin
  if csLoading in ComponentState then Exit;
  LayoutChanged;
end;

(*
function TxxxDBGrid.GetAutoEnabled: Boolean;
begin
  Result := FMainDataSet.Enabled;
end;
*)

procedure TxxxDBGrid.SetAutoFilter(const Value: Boolean);
begin
  if FAutoFilter = Value then Exit;

  // �������� VirtualDataSet
  if Value then
  begin
    FMainDataSet.Enabled := True;
  end;

  FAutoFilter := Value;

  // ��������� ������������
  if csLoading in ComponentState then Exit;
  LayoutChanged;
end;

(*
procedure TxxxDBGrid.SetAutoEnabled(const Value: Boolean);
begin
  // ������� ��������� ����������
  if not Value then
  begin
    AutoFilter := False;
  end;

  FMainDataSet.Enabled := Value;

  // ��������� ������������
  if csLoading in ComponentState then Exit;
  LayoutChanged;
end;
*)

procedure TxxxDBGrid.AutoFilterDropDown(const AColumn: TColumn);
begin
  // ��������� ����������� ������
  if not FAutoFilter then Exit;

  if not (Assigned(AColumn) and Assigned(AColumn.Field)) then Exit;

  FFilterList.Left := CellRect(AColumn.Index + 1, 0).Left;
  FFilterList.Top := CellRect(AColumn.Index + 1, 0).Bottom - FFilterList.Height - 1;
  FFilterList.DropDownWidth := CellRect(AColumn.Index + 1, 0).Right - CellRect(AColumn.Index + 1, 0).Left;
  FFilterList.DisplayName := AColumn.Title.Caption;
  FFilterList.KeyField := AColumn.FieldName;
  FFilterList.ListField := AColumn.FieldName;
  FFilterList.DropDown;
end;

procedure TxxxDBGrid.SortByField(const AField: TField;
  const ASortType: TAdvSortType);
var
//  VField: TField;
  VSortType: TSortType;
  VIndex: TIndex;
begin
  if not FMainDataSet.Enabled then Exit;

  VIndex := nil;
  VSortType := stAsc;
  case ASortType of
    astConvert:
      begin
      // ���� ������������ ����������
      VIndex := FMainDataSet.Indexes.IndexOf(AField.FieldName);
      if Assigned(VIndex) then
        begin
        // ���� ����� CTRL - ������� ������ ����������
        if (GetKeyState(VK_CONTROL) shr 1) <> 0 then
          begin
          FMainDataSet.Indexes.Delete(VIndex.Index);
          Refresh;
          Exit;
          end;

        // ����� - ������ ����������� ���������� ��� ������� ��
        VSortType := VIndex.SortType;
        if VSortType = stAsc then
          begin
          VSortType := stDesc;
          end
        else
          begin
          VSortType := stAsc;
          end;
        end
      else
        begin
          // �� ����� - �� ��������� ������� ��������� �� ������������
          VSortType := stAsc;
        end;
      end;
    astAsc:
      begin
      VIndex := nil;
      VSortType := stAsc;
      end;
    astDesc:
      begin
      VIndex := nil;
      VSortType := stDesc;
      end;
  end;

  // ���� �� ����� Shift �� ������� ��� �������
  if (GetKeyState(VK_SHIFT) shr 1) = 0 then
    begin
    FMainDataSet.Indexes.Clear;
    VIndex := nil;
    end;

  if not Assigned(VIndex) then
  begin
    // ��������� ������
    VIndex := FMainDataSet.Indexes.Add;
    VIndex.FieldName := AField.FieldName;
    VIndex.SortType := VSortType;
  end else
  begin
    // �������� ������
    VIndex.SortType := VSortType;
  end;

  Refresh;
end;

procedure TxxxDBGrid.Refresh;
begin
  if not Assigned(FMainDataSet.DataSet) then
  begin
    FMainDataSet.DataSet := DataLink.DataSet;
  end;
  FMainDataSet.Refresh;
end;

function TxxxDBGrid.IsFiltered(AFieldName: string): Boolean;
begin
  // ��������� ���������� ���� ��� ���������� nil
  Result := FMainDataSet.Conditions.IsFiltered(AFieldName);
end;

function TxxxDBGrid.IsColumnFiltered(AFieldName: string): Boolean;
begin
  // ��������� ���������� ���� ��� ���������� nil
  Result := FFilteredColumns.IndexOf(AFieldName) <> -1;
end;

function TxxxDBGrid.IsColumnHidden(AFieldName: string): Boolean;
begin
  // ��������� ���������� ���� ��� ���������� nil
  Result := FHiddenColumns.IndexOf(AFieldName) <> -1;
end;

function TxxxDBGrid.IndexOf(AFieldName: string): TIndex;
begin
  // ��������� ���������� ���� ��� ���������� nil
  Result := FMainDataSet.Indexes.IndexOf(AFieldName);
end;

function TxxxDBGrid.GetTitleLines: Integer;
begin
  Result := 1 + HeadersLines.Count;
end;

procedure TxxxDBGrid.FilterBySelect;
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // �� ������ ������
  if not Assigned(Columns) then Exit;
  if Columns.Count = 0 then Exit;

  // ���������� ������ �������
  VIndex := Self.SelectedIndex;
  (*
  if dgIndicator in Options then
  begin
    Inc(VIndex);
  end;
  *)

  VColumn := Columns[VIndex];

  // ������� ������� �� ������� ����
  MainDataSet.Conditions.ClearFor(FSelectedField);

  // ��� ��� ��������� ������ ������� ��� ������� ������������
  if FSelectedField <> VColumn.FieldName then
  begin
    // ��������� �� ���������� ��������
    FSelectedField := VColumn.FieldName;

    // ������� ������ �� �����������
    VCondition := MainDataSet.Conditions.Add;
    VCondition.DisplayName := VColumn.Title.Caption;
    VCondition.Condition := dc01;
    VCondition.ListName := FSelectedField;
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.CopyFieldValue(FSelectedField, MainDataSet.DataSet, MainDataSet.DataSet);
    VValue.ListValue.CopyFieldValue(FSelectedField, MainDataSet.DataSet, MainDataSet.DataSet);
  end else
  begin
    // ������� ����� ������������� ������ �� �����������
    FSelectedField := '';
  end;

  // ��������� ����� ������
  Refresh;
end;

function TxxxDBGrid.IsFilterBySelectActive: Boolean;
begin
  Result := FSelectedField <> '';
end;

function TxxxDBGrid.GetFullColumnName(const AColumn: TColumn): string;
var
  I, J: Integer;
  VCaption: string;
  VHeader: THeader;
begin
  // � �������� ������� ��������� �������� ������� ������� ���� ��� ����
  Result := AColumn.Title.Caption;
  for I := Self.AdvSettings.HeadersLines.Count - 1 downto 0 do
  begin
    for J := Self.AdvSettings.HeadersLines[I].Headers.Count - 1 downto 0 do
    begin
      VHeader := Self.AdvSettings.HeadersLines[I].Headers[J];
      VCaption := VHeader.Caption;
      if (VHeader.FirstCol <= AColumn.Index) and
         (VHeader.LastCol >= AColumn.Index) and
         (VCaption <> '') then
      begin
        // ���� ������ �������� ������ 15 ��������
        // � ���������� ������� ������ 1 �� ����� ������ ������ 15 ��������
        if (Length(VCaption) > 15) and
           (Self.AdvSettings.HeadersLines[I].Headers.Count > 1) then
        begin
          VCaption := Concat(Copy(VCaption, 1, 15), '...');
        end;
        Result := Concat(VCaption, ' - ', Result);
      end;
    end;
  end;
end;

procedure TxxxDBGrid.Paint;
begin
  if not ShowVscroll then
    SetScrollRange(Handle, SB_VERT, 0, 0, false);
  inherited;
end;

{
function TxxxDBGrid.GetEnabled: Boolean;
begin

end;

procedure TxxxDBGrid.SetEnabled(const Value: Boolean);
begin

end;
}

function TxxxDBGrid.GetShowVscroll: Boolean;
begin
  Result := FShowVscroll;
end;

procedure TxxxDBGrid.SetShowVscroll(const Value: Boolean);
begin
  FShowVscroll := Value;
end;

procedure TxxxDBGrid.TopLeftChanged;
begin
  inherited;
  if Assigned(FOnTopLeftChanged) then FOnTopLeftChanged(Self);
end;

procedure TxxxDBGrid.SetColumnAttributes;
begin
  inherited;
  if Assigned(FOnSetColumnAttr) then FOnSetColumnAttr(Self);
end;

function TxxxDBGrid.GetFlatStyle: Boolean;
begin
  Result := FFlatStyle;
end;

procedure TxxxDBGrid.SetFlatStyle(const Value: Boolean);
begin
  if FFlatStyle <> Value then
    begin
    FFlatStyle := Value;
    Refresh;
    end;
end;

procedure TxxxDBGrid.SetColumnFiltered(AFieldName: string; AFiltered: boolean);
begin
  if AFiltered = True then
    begin
    if FFilteredColumns.IndexOf(AFieldName) = - 1 then
      FFilteredColumns.Add(AFieldName);
    end
  else
    begin
    if FFilteredColumns.IndexOf(AFieldName) <> - 1 then
      FFilteredColumns.Delete(FFilteredColumns.IndexOf(AFieldName));
    end;
end;

procedure TxxxDBGrid.SetColumnHidden(AFieldName: string; AHidden: boolean);
begin
  if AHidden = True then
    begin
    if FHiddenColumns.IndexOf(AFieldName) = - 1 then
      FHiddenColumns.Add(AFieldName);
    end
  else
    begin
    if FHiddenColumns.IndexOf(AFieldName) <> - 1 then
      FHiddenColumns.Delete(FHiddenColumns.IndexOf(AFieldName));
    end;
end;

{ THeader }

procedure THeader.AssignTo(Dest: TPersistent);
begin
  if Dest is THeader then
  begin
    with THeader(Dest) do
    begin
      FCaption := Self.Caption;
      FFirstColumn := Self.FirstCol;
      FLastColumn := Self.LastCol;
      FAlignment := Self.FAlignment;
      Changed(False);
    end;
  end else
  begin
    inherited AssignTo(Dest);
  end;
end;

constructor THeader.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  if Headers.Count = 1 then
  begin
    FFirstColumn := 0;
    FLastColumn := 1;
  end else
  begin
    FFirstColumn := Headers.GetNextIndex;
    FLastColumn := FFirstColumn + 1;
  end;
  Alignment := taCenter;
end;

function THeader.GetDBGrid: TxxxDBGrid;
begin
  Result := Headers.DBGrid;
end;

function THeader.GetHeaders: THeaders;
begin
  Result := THeaders(Collection);
end;

(*
function THeader.IsColExists(const AIndex: Integer): Boolean;
var
  VColCount: Integer;
begin
  VColCount := DBGrid.Columns.Count;
  if DBGrid.Columns.Count = 0 then
  
//  Result := (AIndex >= DBGrid) and (AIndex <= LastCol);
end;
*)

function THeader.IsIncludeColumn(const AColumnIndex: Integer): Boolean;
begin
  Result := (AColumnIndex >= FirstCol) and (AColumnIndex <= LastCol);
end;

procedure THeader.SetAlignment(const Value: TAlignment);
begin
  if FAlignment <> Value then
  begin
    FAlignment := Value;
    Changed(False);
  end;
end;

procedure THeader.SetCaption(const Value: string);
begin
  if FCaption <> Value then
  begin
    FCaption := Value;
    Changed(False);
  end;
end;

procedure THeader.SetFirstCol(const Value: Integer);
begin
  // 
  if FFirstColumn <> Value then
  begin
    if Value > FLastColumn then
    begin
      FLastColumn := Value;
    end;
    FFirstColumn := Value;
    Changed(False);
  end;

  (*
  if FFirstColumn <> Value then
  begin
    if Value < FLastColumn then
    begin
      FFirstColumn := Value;
      Changed(False);
    end;
  end;
  *)  
end;

procedure THeader.SetLastCol(const Value: Integer);
begin
  if FLastColumn <> Value then
  begin
    if Value < FFirstColumn then
    begin
      FFirstColumn := Value;
    end;
    FLastColumn := Value;
    Changed(False);
  end;

  (*
  if FLastColumn <> Value then
  begin
    if Value > FFirstColumn then
    begin
      FLastColumn := Value;
      Changed(False);
    end;
  end;
  *)
end;

{ THeaders }

function THeaders.Add: THeader;
begin
  Result := THeader(inherited Add);
end;

constructor THeaders.Create(Owner: THeadersLine);
begin
  inherited Create(THeader);
  FOwner := Owner;
end;

function THeaders.FindHeader(const AColumnIndex: Integer): THeader;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to Count - 1 do
  begin
    if Items[I].IsIncludeColumn(AColumnIndex) then
    begin
      Result := Items[I];
      Exit;
    end;
  end;
end;

function THeaders.GetDBGrid: TxxxDBGrid;
begin
  Result := THeadersLines(FOwner.Collection).FOwner;
end;

function THeaders.GetItem(Index: Integer): THeader;
begin
  Result := THeader(inherited Items[Index]);
end;

function THeaders.GetNextIndex: Integer;
begin
  // ��������� �������
  Result := MaxColumnIndex + 1;
end;

function THeaders.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

function THeaders.MaxColumnIndex: Integer;
var
  I: Integer;
begin
  // ���� ������������ ������������ ������ �������
  // - 1 ���� ��� �� ������ ���������
  Result := - 1;
  for I := 0 to Count - 1 do
  begin
    if Items[I].FLastColumn > Result then
    begin
      Result := Items[I].FLastColumn;
    end;
  end;
end;

procedure THeaders.SetItem(Index: Integer; const Value: THeader);
begin
  Items[Index].Assign(Value);
end;

procedure THeaders.Update(Item: TCollectionItem);
begin
  if (DBGrid = nil) or (csLoading in DBGrid.ComponentState) then Exit;
  DBGrid.LayoutChanged;
end;

{ THeadersLine }

procedure THeadersLine.AssignTo(Dest: TPersistent);
begin
  if Dest is THeadersLine then
  begin
    with THeadersLine(Dest) do
    begin
      Headers := Self.Headers;
      Changed(False);
    end;
  end else
  begin
    inherited AssignTo(Dest);
  end;
end;

constructor THeadersLine.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FHeaders := THeaders.Create(Self);
end;

destructor THeadersLine.Destroy;
begin
  FHeaders.Free;
  inherited Destroy;
end;

procedure THeadersLine.SetHeaders(const Value: THeaders);
begin
  if FHeaders <> Value then
  begin
    FHeaders.Assign(Value);
    Changed(False);
  end;
end;

{ THeadersLines }

function THeadersLines.Add: THeadersLine;
begin
  Result := THeadersLine(inherited Add);
end;

constructor THeadersLines.Create(Owner: TxxxDBGrid);
begin
  inherited Create(THeadersLine);
  FOwner := Owner;
end;

function THeadersLines.GetItem(Index: Integer): THeadersLine;
begin
  Result := THeadersLine(inherited Items[Index]);
end;

function THeadersLines.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure THeadersLines.SetItem(Index: Integer; const Value: THeadersLine);
begin
  Items[Index].Assign(Value);
end;

procedure THeadersLines.Update(Item: TCollectionItem);
begin
  if csLoading in FOwner.ComponentState then Exit;
  FOwner.LayoutChanged;
end;

{ TAutoFilter }

function GetTypeForField(
  const AField: TField): TValueType;
begin
  // ���������� ��� ������� � ����������� �� ����
  case AField.DataType of
    ftFloat, ftSmallint, ftInteger, ftWord, ftBytes, ftVarBytes, ftAutoInc:
      begin
        Result := vtNumber;
      end;
    ftDate, ftTime, ftDateTime:
      begin
        Result := vtDate;
      end;
    else
      begin
        Result := vtString;
      end;
  end;
end;

{ TxxxDBGridErr }

class procedure TxxxDBGridErr.Error(const AMsg: string);
begin
  raise ExxxDBGrid.Create(AMsg);
end;

{ TFilterList }

function TFilterList.IsAsctive: Boolean;
begin
  Result :=
    Assigned(MainDataSet) and
    Assigned(MainDataSet.DataSet) and
    Assigned(FFilterDataSet.DataSet);
end;

procedure TFilterList.CloseUp(Accept: Boolean);
//var
//  VID: Integer;
begin
  inherited CloseUp(Accept);

  if not IsAsctive then Exit;
  Enabled := False;
  Visible := False;

  // ��������� ������
  ApplayFilter;

  FFilterDataSet.DataSet.Close;
  FFilterDataSet.Enabled := False;
end;

constructor TFilterList.Create(AOwner: TComponent);
begin
  inherited Create(nil);
  FFilterDataSet := TFilterDataSet.Create(Self);
  ListSource := TDataSource.Create(Self);
  ListSource.DataSet := FFilterDataSet.DataSet;
  Visible := False;
  TabStop := False;
  ShowHint := True;
  DropDownRows := 15;
  DropDownWidth := 150;
  DropDownAlign := daLeft;
  Width := 0;
end;

destructor TFilterList.Destroy;
begin
  inherited Destroy;
end;

procedure TFilterList.DropDown;
begin
  if not IsAsctive then Exit;

  // ��������� DataSet
  FFilterDataSet.KeyFieldName := KeyField;
  FFilterDataSet.ListFieldName := ListField;
  FFilterDataSet.Enabled := True;
  FFilterDataSet.Refresh;
  Visible := True;
  Enabled := True;
  if CanFocus then SetFocus;
  inherited DropDown;
end;

function TFilterList.GetMainDataSet: TVirtualDataSet;
begin
  Result := FFilterDataSet.MainDataSet;
end;

procedure TFilterList.SetMainDataSet(const Value: TVirtualDataSet);
begin
  FFilterDataSet.MainDataSet := Value;
end;

procedure TFilterList.ApplayFilter;
var
  VID: Integer;
  //VKeyField, VListField: TField;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ������������ ���������� ������
  if not FFilterDataSet.DataSet.Active then Exit;

  VID := FFilterDataSet.DataSet.FieldByName('FIELD_ID').AsInteger;
  if VID = 1 then
  begin
    // ���
    MainDataSet.Conditions.ClearFor(ListField);
  end else
  if VID = 3 then
  begin
    // ������
    MainDataSet.Conditions.ClearFor(ListField);
    VCondition := MainDataSet.Conditions.Add;
    VCondition.Condition := dc08;
    VCondition.ListName := ListField;
    VCondition.DisplayName := FDisplayName;
  end else
  if VID = 4 then
  begin
    // �� ������
    MainDataSet.Conditions.ClearFor(ListField);
    VCondition := MainDataSet.Conditions.Add;
    VCondition.Condition := dc09;
    VCondition.ListName := ListField;
    VCondition.DisplayName := FDisplayName;
  end else
  begin
    // �����
    MainDataSet.Conditions.ClearFor(ListField);
    VCondition := MainDataSet.Conditions.Add;
    VCondition.DisplayName := FDisplayName;
    VCondition.Condition := dc01;
    VCondition.ListName := ListField;
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.CopyFieldValue(KeyField, MainDataSet.DataSet, FFilterDataSet.DataSet);
    VValue.ListValue.CopyFieldValue(ListField, MainDataSet.DataSet, FFilterDataSet.DataSet);
  end;
  MainDataSet.Refresh;
end;

{ TFilterDataSet }

procedure TFilterDataSet.PrepareSQL;
const
  // ������ ����� ���������� ��� ���� FIELD_ID, FIELD_KEY, FIELD_VALUE
  SQL_WITH_FILTER =
    'SELECT 1 AS FIELD_ID, ''(���)'' as %s, '''' AS %s from DUAL UNION ALL ' +
    'SELECT 3 AS FIELD_ID, ''(������...)'' as %s, '''' AS %s from DUAL UNION ALL ' +
    'SELECT 4 AS FIELD_ID, ''(�� ������...)'' as %s, '''' AS %s from DUAL UNION ALL ' +
    'SELECT 99 AS FIELD_ID, TO_CHAR(FIELD_NAME) AS %s , TO_CHAR(FIELD_KEY) AS %s ' +
    'FROM (SELECT DISTINCT %s FIELD_NAME, %s as FIELD_KEY FROM (%s) %s %s ORDER BY 1, 2)';
var
  VWhere: string;
begin
  if not (Enabled and Assigned(DataSet)) then Exit;

  // ��������� ������� WHERE
  if Conditions.Count > 0 then
  begin
    VWhere := 'WHERE';
  end else
  begin
    VWhere := '';
  end;
  SQL.Text := Format(SQL_WITH_FILTER, [
    ListFieldName, KeyFieldName, ListFieldName, KeyFieldName,
    ListFieldName, KeyFieldName, ListFieldName, KeyFieldName,
    ListFieldName, KeyFieldName,
    FOldSQL.Text,
    VWhere,
    Conditions.BuildSQL
    ]);

  PrepareForClientSQL;
end;

constructor TLookUpDataSet.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  if Assigned(unt001_Filter.DataSetFactory) then
  begin
    DataSet := DataSetFactory.GetDataSetClass.Create(Self);
  end;
end;

procedure TLookUpDataSet.SetEnabled(const Value: Boolean);
begin
  // ��������
  if not Assigned(DataSetFactory) then Exit;
  if not (Assigned(MainDataSet) and Assigned(MainDataSet.DataSet)) then Exit;

  // �������� �������� (����������, ��������� � �.�.)
  DataSetFactory.CloneDataSet(FMainDataSet.DataSet, DataSet);

  // �������� �������� SQL
  SQL.Assign(MainDataSet.OldSQL);

  // �������� ������ LookUp �����
  LookUpField.Assign(MainDataSet.LookUpField);

  // �������� �������
  Conditions.Assign(MainDataSet.Conditions);

  // ��������� ������� not null
  with Conditions.Add do
  begin
    Condition := dc09;
    ListName := ListFieldName;
  end;

  inherited SetEnabled(Value);
end;

procedure TxxxDBGrid.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
var
  Cell: TGridCoord;
begin
//  if Assigned(FOnMouseDown) then
//    FOnMouseDown(Self, Button, Shift, X, Y);

  inherited MouseDown(Button, Shift, X, Y);

  if not FDragRows then exit;
  Cell := MouseCoord(X, Y);
  if (Cell.X > 0) or (Cell.Y > 0) then
  begin
    if Button = mbLeft then
    	BeginDrag(False);
  end;
end;

procedure TxxxDBGrid.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;

  if not FDragRows then exit;
end;


initialization
finalization
  TDataSetFactory.DestroyDataSetFactory;        // ���������� �������
end.
