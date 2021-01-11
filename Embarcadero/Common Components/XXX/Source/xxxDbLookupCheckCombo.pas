{*******************************************************}
{                                                       }
{       Delphi VCL Extensions (RX)                      }
{                                                       }
{       Copyright (c) 1995,1997 Borland International   }
{       Portions copyright (c) 1995, 1996 AO ROSNO      }
{       Portions copyright (c) 1997, 1998 Master-Bank   }
{                                                       }
{*******************************************************}

unit xxxDbLookupCheckCombo;

interface

{$I RX.INC}

uses
  SysUtils,
{$IFDEF WIN32}
  Windows,
  DBCtrls,
{$ELSE}
  WinTypes,
  WinProcs,
{$ENDIF}
  Messages,
  Classes,
  Controls,
  Forms,
  Graphics,
  DB,
{$IFNDEF RX_D3}
  DBTables,
{$ENDIF}
  DBUtils,
  VDBConsts,
  Variants
//  DsgnIntf
  ;

const
  DefFieldsDelim = ',';

type
  TFloatArray = array of Double;

{ TRxLookupControl }

  TLookupListStyle = set of (lsDelimited, lsChecked, lsSizeable);

  TxxxLookupControl = class;

  TGetImageEvent = procedure (Sender: TObject; IsEmpty: Boolean;
    var Graphic: TGraphic; var TextMargin: Integer) of object;

  TDataSourceLink = class(TDataLink)
  private
    FDataControl: TxxxLookupControl;
  protected
    procedure ActiveChanged; override;
    procedure LayoutChanged; override;
    procedure FocusControl(Field: TFieldRef); override;
    procedure RecordChanged(Field: TField); override;
  end;

  TLookupSourceLink = class(TDataLink)
  private
    FDataControl: TxxxLookupControl;
  protected
    procedure ActiveChanged; override;
    procedure LayoutChanged; override;
    procedure DataSetChanged; override;
  end;

  TxxxLookupControl = class(TCustomControl)
  private
    FLookupSource: TDataSource;
    FDataLink: TDataSourceLink;
    FLookupLink: TLookupSourceLink;
    FDataFieldName: string;
    FLookupFieldName: string;
    FLookupDisplay: string;
    FDisplayIndex: Integer;
    FDataField: TField;
    FMasterField: TField;
    FKeyField: TField;
    FDisplayField: TField;
    FListFields: TList;
    FValue: string;
    FDisplayValue: string;
    FDisplayEmpty: string;
    FSearchText: string;
    FEmptyValue: string;
    FEmptyItemColor: TColor;
    FListActive: Boolean;
    FPopup: Boolean;
    FFocused: Boolean;
    FLocate: TLocateObject;
    FIndexSwitch: Boolean;
    FIgnoreCase: Boolean;
    FItemHeight: Integer;
    FFieldsDelim: Char;
    FListStyle: TLookupListStyle;
    FOnChange: TNotifyEvent;
    FOnGetImage: TGetImageEvent;
{$IFDEF WIN32}
    FLookupMode: Boolean;
    FDisplaySelectAll: string;
    procedure CheckNotFixed;
    procedure SetLookupMode(Value: Boolean);
    function GetKeyValue: Variant;
    procedure SetKeyValue(const Value: Variant);
{$ENDIF}
    function CanModify: Boolean;
    procedure CheckNotCircular;
    procedure DataLinkActiveChanged;
    procedure CheckDataLinkActiveChanged;
    procedure DataLinkRecordChanged(Field: TField);
    function GetBorderSize: Integer;
    function GetField: TField;
    function GetDataSource: TDataSource;
    function GetLookupField: string;
    function GetLookupSource: TDataSource;
    function GetReadOnly: Boolean;
    function GetTextHeight: Integer;
    function DefaultTextHeight: Integer;
    function GetItemHeight: Integer;
    function LocateKey: Boolean;
    function LocateDisplay: Boolean;
    function ValueIsEmpty(const S: string): Boolean;
    function StoreEmpty: Boolean;
    procedure ProcessSearchKey(Key: Char);
    procedure UpdateKeyValue;
    procedure SelectKeyValue(const Value: string);
    procedure SetDataFieldName(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetDisplayEmpty(const Value: string);
    procedure SetEmptyValue(const Value: string);
    procedure SetEmptyItemColor(Value: TColor);
    procedure SetLookupField(const Value: string);
    procedure SetValueKey(const Value: string);
    procedure SetValue(const Value: string);
    procedure SetDisplayValue(const Value: string);
    procedure SetListStyle(Value: TLookupListStyle); virtual;
    procedure SetFieldsDelim(Value: Char); virtual;
    procedure SetLookupDisplay(const Value: string);
    procedure SetLookupSource(Value: TDataSource);
    procedure SetReadOnly(Value: Boolean);
    procedure SetItemHeight(Value: Integer);
    function ItemHeightStored: Boolean;
    procedure DrawPicture(Canvas: TCanvas; Rect: TRect; Image: TGraphic);
    function EmptyRowVisible: Boolean;
    procedure WMGetDlgCode(var Message: TMessage); message WM_GETDLGCODE;
    procedure WMKillFocus(var Message: TMessage); message WM_KILLFOCUS;
    procedure WMSetFocus(var Message: TMessage); message WM_SETFOCUS;
    procedure SetDisplaySelectAll(const Value: string);
  protected
    procedure Change; dynamic;
    procedure KeyValueChanged; virtual;
    procedure DisplayValueChanged; virtual;
    procedure ListLinkActiveChanged; virtual;
    procedure ListLinkDataChanged; virtual;
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
    function GetPicture(Current, Empty: Boolean; var TextMargin: Integer): TGraphic; virtual;
    procedure UpdateDisplayValue;
    procedure UpdateDisplayEmpty(const Value: string); virtual;
    function SearchText(var AValue: string): Boolean;
    function GetWindowWidth: Integer;
    property DataField: string read FDataFieldName write SetDataFieldName;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property DisplayEmpty: string read FDisplayEmpty write SetDisplayEmpty;
    property EmptyValue: string read FEmptyValue write SetEmptyValue stored StoreEmpty;
    property EmptyItemColor: TColor read FEmptyItemColor write SetEmptyItemColor default clWindow;
    property IgnoreCase: Boolean read FIgnoreCase write FIgnoreCase default True;
    property IndexSwitch: Boolean read FIndexSwitch write FIndexSwitch default True;
    property ItemHeight: Integer read GetItemHeight write SetItemHeight
      stored ItemHeightStored;
    property ListStyle: TLookupListStyle read FListStyle write SetListStyle default [];
    property FieldsDelimiter: Char read FFieldsDelim write SetFieldsDelim default DefFieldsDelim;
    property LookupDisplay: string read FLookupDisplay write SetLookupDisplay;
    property LookupDisplayIndex: Integer read FDisplayIndex write FDisplayIndex default 0;
    property LookupField: string read GetLookupField write SetLookupField;
    property LookupSource: TDataSource read GetLookupSource write SetLookupSource;
    property ParentColor default False;
    property ReadOnly: Boolean read GetReadOnly write SetReadOnly default False;
    property TabStop default True;
    property Value: string read FValue write SetValue stored False;
    property DisplayValue: string read FDisplayValue write SetDisplayValue stored False;
{$IFDEF WIN32}
    property KeyValue: Variant read GetKeyValue write SetKeyValue stored False;
{$ENDIF}
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnGetImage: TGetImageEvent read FOnGetImage write FOnGetImage;
    function CanSelectAll: boolean;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ClearValue;
    function Locate(const SearchField: TField; const AValue: string;
      Exact: Boolean): Boolean;
    procedure ResetField; virtual;
{$IFDEF RX_D4}
    function ExecuteAction(Action: TBasicAction): Boolean; override;
    function UpdateAction(Action: TBasicAction): Boolean; override;
    function UseRightToLeftAlignment: Boolean; override;
{$ENDIF}
    property Field: TField read GetField;
    property DisplaySelectAll: string read FDisplaySelectAll write SetDisplaySelectAll;
  end;

{ TRxDBLookupList }

  TMouseAction = (maDown, maMove, maUp);
  TTextContents = (tcEmptyValue, tcSelectAll, tcDataValue);

  TxxxDBLookupList = class(TxxxLookupControl)
  private
    FSetWidth: integer;
    FSetHeight: integer;
    FChecks: TStringList;
    FRecordIndex: Integer;
    FRecordCount: Integer;
    FRowCount: Integer;
    FBorderStyle: TBorderStyle;
    FKeySelected: Boolean;
    FTracking: Boolean;
    FTimerActive: Boolean;
    FLockPosition: Boolean;
    FSelectEmpty: Boolean;
    FSelectAll: Boolean;
    FMousePos: Integer;
    FMaxChecksCount: integer;
    function GetKeyIndex: Integer;
    procedure ListDataChanged;
    procedure SelectCurrent;
    procedure SelectItemAt(X, Y: Integer; MouseAction: TMouseAction);
    procedure SetBorderStyle(Value: TBorderStyle);
    procedure SetRowCount(Value: Integer);
    procedure StopTimer;
    procedure StopTracking;
    procedure TimerScroll;
    procedure UpdateScrollBar;
    procedure UpdateBufferCount(Rows: Integer);
    procedure CMCtl3DChanged(var Message: TMessage); message CM_CTL3DCHANGED;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure WMCancelMode(var Message: TMessage); message WM_CANCELMODE;
    procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
    procedure WMTimer(var Message: TMessage); message WM_TIMER;
    procedure WMVScroll(var Message: TWMVScroll); message WM_VSCROLL;
    function  GetKeyValues: TStrings;
    procedure SelectAll;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure KeyValueChanged; override;
    procedure DisplayValueChanged; override;
    procedure ListLinkActiveChanged; override;
    procedure ListLinkDataChanged; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure Loaded; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure Paint; override;
    procedure UpdateDisplayEmpty(const Value: string); override;
{$IFDEF RX_D4}
    function DoMouseWheelDown(Shift: TShiftState; MousePos: TPoint): Boolean; override;
    function DoMouseWheelUp(Shift: TShiftState; MousePos: TPoint): Boolean; override;
{$ENDIF}
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
    procedure DrawItemText(Canvas: TCanvas; Rect: TRect;
      Selected: Boolean; Contents: TTextContents); virtual;
    property RowCount: Integer read FRowCount write SetRowCount stored False;
    property DisplayValue;
    property Value;
{$IFDEF WIN32}
    property KeyValue;
{$ENDIF}
    property KeyValuesStr: TStrings read GetKeyValues;
    property MaxChecksCount: integer read FMaxChecksCount write FMaxChecksCount;
  published
    property BorderStyle: TBorderStyle read FBorderStyle write SetBorderStyle default bsSingle;
    property Align;
    property Color;
    property Ctl3D;
    property DataField;
    property DataSource;
    property DisplayEmpty;
    property DisplaySelectAll;
    property DragCursor;
    property DragMode;
    property EmptyItemColor;
    property EmptyValue;
    property Enabled;
    property FieldsDelimiter;
    property Font;
    property IgnoreCase;
{$IFDEF RX_D4}
    property Anchors;
    property BiDiMode;
    property Constraints;
    property DragKind;
    property ParentBiDiMode;
{$ENDIF}
{$IFDEF WIN32}
  {$IFNDEF VER90}
    property ImeMode;
    property ImeName;
  {$ENDIF}
{$ENDIF}
    property IndexSwitch;
    property ItemHeight;
    property ListStyle;
    property LookupField;
    property LookupDisplay;
    property LookupDisplayIndex;
    property LookupSource;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGetImage;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
{$IFDEF WIN32}
    property OnStartDrag;
{$ENDIF}
{$IFDEF RX_D5}
    property OnContextPopup;
{$ENDIF}
{$IFDEF RX_D4}
    property OnMouseWheelDown;
    property OnMouseWheelUp;
    property OnEndDock;
    property OnStartDock;
{$ENDIF}
  end;

{ TRxDBLookupCombo }

  TxxxPopupDataList = class(TxxxDBLookupList)
  private
    FCombo: TxxxLookupControl;
    procedure WMMouseActivate(var Message: TMessage); message WM_MOUSEACTIVATE;
  protected
    procedure Click; override;
    procedure CreateParams(var Params: TCreateParams); override;
{$IFNDEF WIN32}
    procedure CreateWnd; override;
{$ENDIF}
    procedure KeyPress(var Key: Char); override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

{$IFNDEF WIN32}
  TDropDownAlign = (daLeft, daRight, daCenter);
{$ENDIF}

  TAdvanced = class;
  TSelectionFormClass = class of TForm;

  TxxxDBLookupCheckCombo = class(TxxxLookupControl)
  private
    FAdvanced: TAdvanced;
    FSelectionFormClass: TSelectionFormClass;
    FSelectionForm: TForm;
    FText: string;
    FKeyValues: TStringList;
    FKeyValuesFloat: TFloatArray;
    FDataList: TxxxPopupDataList;
    FButtonWidth: Integer;
    FDropDownCount: Integer;
    FDropDownWidth: Integer;
    FDropDownAlign: TDropDownAlign;
    FEscapeClear: Boolean;
    FListVisible: Boolean;
    FPressed: Boolean;
    FTracking: Boolean;
    FAlignment: TAlignment;
    FSelImage: TPicture;
    FSelMargin: Integer;
    FDisplayValues: TStrings;
    FDisplayAll: Boolean;
{$IFNDEF WIN32}
    FBtnGlyph: TBitmap;
    FBtnDisabled: TBitmap;
{$ENDIF}
    FOnDropDown: TNotifyEvent;
    FOnCloseUp: TNotifyEvent;
    FShowSelectionHint: boolean;
//    FMaxComboItems: integer;
    FKeepSelectionForm: boolean;
    FAutorefresh: boolean;
    procedure ListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StopTracking;
    procedure TrackButton(X, Y: Integer);
    function GetMinHeight: Integer;
    function GetText: string;
    procedure InvalidateText;
    procedure UpdateCurrentImage;
    procedure PaintDisplayValues(Canvas: TCanvas; R: TRect; ALeft: Integer);
    procedure SetFieldsDelim(Value: Char); override;
    procedure SetListStyle(Value: TLookupListStyle); override;
    function GetDisplayAll: Boolean;
    procedure SetDisplayAll(Value: Boolean);
    function GetDisplayValues(Index: Integer): string;
    procedure CMCancelMode(var Message: TCMCancelMode); message CM_CANCELMODE;
{$IFDEF WIN32}
    procedure CNKeyDown(var Message: TWMKeyDown); message CN_KEYDOWN;
    procedure CMCtl3DChanged(var Message: TMessage); message CM_CTL3DCHANGED;
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
{$ENDIF}
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure WMCancelMode(var Message: TMessage); message WM_CANCELMODE;
    procedure WMGetDlgCode(var Message: TMessage); message WM_GETDLGCODE;
    procedure WMKillFocus(var Message: TWMKillFocus); message WM_KILLFOCUS;
    procedure WMSetCursor(var Message: TWMSetCursor); message WM_SETCURSOR;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
{$IFDEF RX_D4}
    procedure CMBiDiModeChanged(var Message: TMessage); message CM_BIDIMODECHANGED;
    procedure SetShowSelectionHint(const Value: boolean);
    function GetKeyValues: TStrings;
//    procedure SetMaxComboItems(const Value: integer);
    procedure ShowSelectionWindow;
    procedure SetSelectionFormClass(const Value: TSelectionFormClass);
    procedure SetKeepSelectionForm(const Value: boolean);
    function GetSelectionForm: TForm;
    procedure SetAutorefresh(const Value: boolean);
    procedure SetKeyValues(const Value: TStrings);
    function GetKeyValuesFloat: TFloatArray;
    procedure SetKeyValuesFloat(const Value: TFloatArray);

{$ENDIF}
  protected
    procedure Click; override;
    procedure CreateParams(var Params: TCreateParams); override;
    function GetPicture(Current, Empty: Boolean; var TextMargin: Integer): TGraphic; override;
    procedure UpdateFieldText;
    procedure KeyValueChanged; override;
    procedure DisplayValueChanged; override;
    procedure ListLinkActiveChanged; override;
    procedure ListLinkDataChanged; override;
    procedure Paint; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure UpdateDisplayEmpty(const Value: string); override;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure CloseUp(Accept: Boolean); dynamic;
    procedure DropDown; virtual;
    procedure ResetField; override;
    procedure SetKeyValuesAll;
    procedure SetDefaults(D: array of const);

    property IsDropDown: Boolean read FListVisible;
    property ListVisible: Boolean read FListVisible;
    property Text: string read GetText;
    property DisplayValue;
    property DisplayValues[Index: Integer]: string read GetDisplayValues;
    property Value;
{$IFDEF WIN32}
    property KeyValue;
{$ENDIF}
    property KeyValuesStr: TStrings read GetKeyValues write SetKeyValues;
    property KeyValuesFloat: TFloatArray read GetKeyValuesFloat write SetKeyValuesFloat;
//    property KeyValues: array of Variant
  published
    property DropDownAlign: TDropDownAlign read FDropDownAlign write FDropDownAlign default daLeft;
    property DropDownCount: Integer read FDropDownCount write FDropDownCount default 7;
    property DropDownWidth: Integer read FDropDownWidth write FDropDownWidth default 0;
    property EscapeClear: Boolean read FEscapeClear write FEscapeClear default True;
    property DisplayAllFields: Boolean read GetDisplayAll write SetDisplayAll default False;
    property Color;
    property Ctl3D;
    property DataField;
    property DataSource;
    property DisplayEmpty;
    property DisplaySelectAll;
    property DragCursor;
    property DragMode;
    property EmptyValue;
    property EmptyItemColor;
    property Enabled;
    property FieldsDelimiter;
    property Font;
    property IgnoreCase;
{$IFDEF RX_D4}
    property Anchors;
    property BiDiMode;
    property Constraints;
    property DragKind;
    property ParentBiDiMode;
{$ENDIF}
{$IFDEF WIN32}
  {$IFNDEF VER90}
    property ImeMode;
    property ImeName;
  {$ENDIF}
{$ENDIF}
    property IndexSwitch;
    property ItemHeight;
    property ListStyle;
    property LookupField;
    property LookupDisplay;
    property LookupDisplayIndex;
    property LookupSource;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnChange;
    property OnClick;
    property OnCloseUp: TNotifyEvent read FOnCloseUp write FOnCloseUp;
    property OnDropDown: TNotifyEvent read FOnDropDown write FOnDropDown;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGetImage;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
{$IFDEF WIN32}
    property OnStartDrag;
{$ENDIF}
{$IFDEF RX_D5}
    property OnContextPopup;
{$ENDIF}
{$IFDEF RX_D4}
    property OnEndDock;
    property OnStartDock;
{$ENDIF}
//    property ShowSelectionHint: boolean read FShowSelectionHint write SetShowSelectionHint;
//    property MaxComboItems: integer read FMaxComboItems write SetMaxComboItems default 64;
//    property KeepSelectionForm: boolean read FKeepSelectionForm write SetKeepSelectionForm default False;
//    property SelectionFormClass: TSelectionFormClass read FSelectionFormClass write SetSelectionFormClass;
//    property Autorefresh: boolean read FAutorefresh write SetAutorefresh;
    property Advanced: TAdvanced read FAdvanced write FAdvanced;
  end;

  TAdvanced = class(TPersistent)
  private
    FOwner: TxxxDBLookupCheckCombo;
    function GetShowSelectionHint: boolean;
    procedure SetShowSelectionHint (Value: boolean);
//    function GetMaxComboItems: integer;
//    procedure SetMaxComboItems(Value: integer);
    function GetKeepSelectionForm: boolean;
    procedure SetKeepSelectionForm(Value: boolean);
    function GetSelectionFormClass: TSelectionFormClass;
    procedure SetSelectionFormClass(Value: TSelectionFormClass);
    function GetAutorefresh: boolean;
    procedure SetAutorefresh(const Value: boolean);
    function GetSelectionForm: TForm;
    procedure SetKeyValues(const Value: TStrings);
    function GetKeyValues: TStrings;
  protected
    function  GetOwner: TPersistent; override;
  public
    constructor Create(AOwner: TxxxDBLookupCheckCombo);
    destructor Destroy; override;
    property SelectionForm: TForm read GetSelectionForm;
    property KeyValuesStr: TStrings read GetKeyValues write SetKeyValues;

  published
    property ShowSelectionHint: boolean read GetShowSelectionHint write SetShowSelectionHint;
//    property MaxComboItems: integer read GetMaxComboItems write SetMaxComboItems default 64;
    property KeepSelectionForm: boolean read GetKeepSelectionForm write SetKeepSelectionForm default False;
    property SelectionFormClass: TSelectionFormClass read GetSelectionFormClass write SetSelectionFormClass;
    property Autorefresh: boolean read GetAutorefresh write SetAutorefresh;
  end;

{
  TFormClassEditor = class(TStringProperty)
    function GetAttributes: TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
  end;
}

{ TPopupDataWindow }

//  TPopupDataWindow = class(TRxPopupDataList)
//  private
//    FEditor: TWinControl;
//    FCloseUp: TCloseUpEvent;
//  protected
//    procedure InvalidateEditor;
//    procedure Click; override;
//    procedure DisplayValueChanged; override;
//    function GetPicture(Current, Empty: Boolean; var TextMargin: Integer): TGraphic; override;
//    procedure KeyPress(var Key: Char); override;
//    procedure PopupMouseUp(Sender: TObject; Button: TMouseButton;
//      Shift: TShiftState; X, Y: Integer);
//    procedure CloseUp(Accept: Boolean); virtual;
//  public
//    constructor Create(AOwner: TComponent); override;
//    procedure Hide;
//    procedure Show(Origin: TPoint);
//    property OnCloseUp: TCloseUpEvent read FCloseUp write FCloseUp;
//  end;

{ TRxLookupEdit }

//  TRxLookupEdit = class(TCustomComboEdit)
//  private
//    FChanging: Boolean;
//    FIgnoreChange: Boolean;
//    FDropDownCount: Integer;
//    FDropDownWidth: Integer;
//    FPopupOnlyLocate: Boolean;
//    FOnCloseUp: TNotifyEvent;
//    FOnDropDown: TNotifyEvent;
//    function GetListStyle: TLookupListStyle;
//    procedure SetListStyle(Value: TLookupListStyle);
//    function GetFieldsDelim: Char;
//    procedure SetFieldsDelim(Value: Char);
//    function GetLookupDisplay: string;
//    procedure SetLookupDisplay(const Value: string);
//    function GetDisplayIndex: Integer;
//    procedure SetDisplayIndex(Value: Integer);
//    function GetLookupField: string;
//    procedure SetLookupField(const Value: string);
//    function GetLookupSource: TDataSource;
//    procedure SetLookupSource(Value: TDataSource);
//    procedure SetDropDownCount(Value: Integer);
//    function GetLookupValue: string;
//    procedure SetLookupValue(const Value: string);
//    function GetOnGetImage: TGetImageEvent;
//    procedure SetOnGetImage(Value: TGetImageEvent);
//  protected
//    procedure Change; override;
//    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
//    procedure KeyPress(var Key: Char); override;
//    procedure ShowPopup(Origin: TPoint); override;
//    procedure HidePopup; override;
//    procedure PopupChange; override;
//    procedure PopupDropDown(DisableEdit: Boolean); override;
{$IFDEF WIN32}
//    function AcceptPopup(var Value: Variant): Boolean; override;
//    procedure SetPopupValue(const Value: Variant); override;
//    function GetPopupValue: Variant; override;
{$ELSE}
//    function AcceptPopup(var Value: string): Boolean; override;
//    procedure SetPopupValue(const Value: string); override;
//    function GetPopupValue: string; override;
{$ENDIF}
//  public
//    constructor Create(AOwner: TComponent); override;
//    destructor Destroy; override;
//    property LookupValue: string read GetLookupValue write SetLookupValue;
//  published
//    property DropDownCount: Integer read FDropDownCount write SetDropDownCount default 8;
//    property DropDownWidth: Integer read FDropDownWidth write FDropDownWidth default 0;
//    property ListStyle: TLookupListStyle read GetListStyle write SetListStyle default [];
//    property FieldsDelimiter: Char read GetFieldsDelim write SetFieldsDelim default DefFieldsDelim;
//    property LookupDisplay: string read GetLookupDisplay write SetLookupDisplay;
//    property LookupDisplayIndex: Integer read GetDisplayIndex write SetDisplayIndex default 0;
//    property LookupField: string read GetLookupField write SetLookupField;
//    property LookupSource: TDataSource read GetLookupSource write SetLookupSource;
//    property PopupOnlyLocate: Boolean read FPopupOnlyLocate write FPopupOnlyLocate default True;
//    property Alignment;
//    property AutoSelect;
//    property BorderStyle;
//    property ButtonHint;
//    property CharCase;
//    property ClickKey;
//    property Color;
//    property Ctl3D;
//    property DirectInput;
//    property DragCursor;
//    property DragMode;
//    property EditMask;
//    property Enabled;
//    property Font;
//    property HideSelection;
{$IFDEF RX_D4}
//    property Anchors;
//    property BiDiMode;
//    property Constraints;
//    property DragKind;
//    property ParentBiDiMode;
{$ENDIF}
{$IFDEF WIN32}
  {$IFNDEF VER90}
//    property ImeMode;
//    property ImeName;
  {$ENDIF}
{$ENDIF}
//    property MaxLength;
//    property OEMConvert;
//    property ParentColor;
//    property ParentCtl3D;
//    property ParentFont;
//    property ParentShowHint;
//    property PopupAlign;
//    property PopupMenu;
//    property ReadOnly;
//    property ShowHint;
//    property TabOrder;
//    property TabStop;
//    property Text;
//    property Visible;
//    property OnCloseUp: TNotifyEvent read FOnCloseUp write FOnCloseUp;
//    property OnDropDown: TNotifyEvent read FOnDropDown write FOnDropDown;
//    property OnGetImage: TGetImageEvent read GetOnGetImage write SetOnGetImage;
//    property OnButtonClick;
//    property OnChange;
//    property OnClick;
//    property OnDblClick;
//    property OnDragDrop;
//    property OnDragOver;
//    property OnEndDrag;
//    property OnEnter;
//    property OnExit;
//    property OnKeyDown;
//    property OnKeyPress;
//    property OnKeyUp;
//    property OnMouseDown;
//    property OnMouseMove;
//    property OnMouseUp;
{$IFDEF WIN32}
//    property OnStartDrag;
{$ENDIF}
{$IFDEF RX_D5}
//    property OnContextPopup;
{$ENDIF}
{$IFDEF RX_D4}
//    property OnEndDock;
//    property OnStartDock;
{$ENDIF}
//  end;

procedure Register;

implementation

uses
{$IFNDEF WIN32}
  Str16,
{$ENDIF}
  VCLUtils,
{$IFNDEF RX_D3}
  BdeUtils,
{$ENDIF}
  DBConsts,
  ClipIcon
  ;

procedure Register;
begin
  RegisterComponents('XXX', [TxxxDbLookupCheckCombo]);
//  RegisterPropertyEditor(TypeInfo(TForm), TxxxDbLookupCheckCombo, 'SelectionFormClass', TFormClassEditor);
end;

function Max(A, B: Longint): Longint;
begin
  if A > B then Result := A
  else Result := B;
end;

function Min(A, B: Longint): Longint;
begin
  if A < B then Result := A
  else Result := B;
end;

{ TDataSourceLink }

procedure TDataSourceLink.ActiveChanged;
begin
  if FDataControl <> nil then FDataControl.DataLinkActiveChanged;
end;

procedure TDataSourceLink.LayoutChanged;
begin
  if FDataControl <> nil then FDataControl.CheckDataLinkActiveChanged;
end;

procedure TDataSourceLink.RecordChanged(Field: TField);
begin
  if FDataControl <> nil then FDataControl.DataLinkRecordChanged(Field);
end;

procedure TDataSourceLink.FocusControl(Field: TFieldRef);
begin
  if (Field^ <> nil) and (FDataControl <> nil) and
    (Field^ = FDataControl.FDataField) and FDataControl.CanFocus then
  begin
    Field^ := nil;
    FDataControl.SetFocus;
  end;
end;

{ TLookupSourceLink }

procedure TLookupSourceLink.ActiveChanged;
begin
  if FDataControl <> nil then FDataControl.ListLinkActiveChanged;
end;

procedure TLookupSourceLink.LayoutChanged;
begin
  if FDataControl <> nil then FDataControl.ListLinkActiveChanged;
end;

procedure TLookupSourceLink.DataSetChanged;
begin
  if FDataControl <> nil then FDataControl.ListLinkDataChanged;
end;

{ TRxLookupControl }

const
  SearchTickCount: Longint = 0;

{$IFNDEF WIN32}
procedure GetFieldList(DataSet: TDataSet; List: TList;
  const FieldNames: string);
var
  Pos: Integer;
begin
  Pos := 1;
  while Pos <= Length(FieldNames) do
    List.Add(DataSet.FieldByName(ExtractFieldName(FieldNames, Pos)));
end;
{$ENDIF}

constructor TxxxLookupControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  if NewStyleControls then
    ControlStyle := [csOpaque]
  else
    ControlStyle := [csOpaque, csFramed];
  ParentColor := False;
  TabStop := True;
  FFieldsDelim := DefFieldsDelim;
  FLookupSource := TDataSource.Create(Self);
  FDataLink := TDataSourceLink.Create;
  FDataLink.FDataControl := Self;
  FLookupLink := TLookupSourceLink.Create;
  FLookupLink.FDataControl := Self;
  FListFields := TList.Create;
  FEmptyValue := EmptyStr;
  FEmptyItemColor := clWindow;
  FValue := FEmptyValue;
{$IFDEF RX_D3}
  FLocate := CreateLocate(nil);
{$ELSE}
  FLocate := TDBLocate.Create;
{$ENDIF}
  FIndexSwitch := True;
  FIgnoreCase := True;
end;

destructor TxxxLookupControl.Destroy;
begin
  FListFields.Free;
  FListFields := nil;
  FLookupLink.FDataControl := nil;
  FLookupLink.Free;
  FLookupLink := nil;
  FDataLink.FDataControl := nil;
  FDataLink.Free;
  FDataLink := nil;
  FLocate.Free;
  FLocate := nil;
  inherited Destroy;
end;

function TxxxLookupControl.CanModify: Boolean;
begin
  Result := FListActive and not ReadOnly and ((FDataLink.DataSource = nil) or
    (FMasterField <> nil) and FMasterField.CanModify);
end;

procedure TxxxLookupControl.Change;
begin
  if Assigned(FOnChange) then FOnChange(Self);
end;

function TxxxLookupControl.ValueIsEmpty(const S: string): Boolean;
begin
  Result := (S = FEmptyValue);
end;

function TxxxLookupControl.StoreEmpty: Boolean;
begin
  Result := (FEmptyValue <> EmptyStr);
end;

{$IFDEF WIN32}
procedure TxxxLookupControl.CheckNotFixed;
begin
  if FLookupMode then _DBError(SPropDefByLookup);
  if FDataLink.DataSourceFixed then _DBError(SDataSourceFixed);
end;

procedure TxxxLookupControl.SetLookupMode(Value: Boolean);
begin
  if FLookupMode <> Value then
    if Value then begin
      FMasterField := FDataField.DataSet.FieldByName(FDataField.KeyFields);
      FLookupSource.DataSet := FDataField.LookupDataSet;
      FLookupFieldName := FDataField.LookupKeyFields;
      FLookupMode := True;
      FLookupLink.DataSource := FLookupSource;
    end else
    begin
      FLookupLink.DataSource := nil;
      FLookupMode := False;
      FLookupFieldName := '';
      FLookupSource.DataSet := nil;
      FMasterField := FDataField;
    end;
end;

function TxxxLookupControl.GetKeyValue: Variant;
begin
  if ValueIsEmpty(Value) then Result := NULL
  else Result := Value;
end;

procedure TxxxLookupControl.SetKeyValue(const Value: Variant);
begin
  Self.Value := Value;
end;
{$ENDIF}

procedure TxxxLookupControl.CheckNotCircular;
begin
  {
  if FDataLink.Active and FDataLink.DataSet.IsLinkedTo(LookupSource) then
    _DBError(SCircularDataLink);
  }
  if FDataLink.Active and ((DataSource = LookupSource) or
    (FDataLink.DataSet = FLookupLink.DataSet)) then
    _DBError(SCircularDataLink);
end;

procedure TxxxLookupControl.CheckDataLinkActiveChanged;
var
  TestField: TField;
begin
  if FDataLink.Active and (FDataFieldName <> '') then begin
    TestField := FDataLink.DataSet.FieldByName(FDataFieldName);
    if Pointer(FDataField) <> Pointer(TestField) then begin
      FDataField := nil;
      FMasterField := nil;
      CheckNotCircular;
      FDataField := TestField;
      FMasterField := FDataField;
      DataLinkRecordChanged(nil);
    end;
  end;
end;

procedure TxxxLookupControl.DataLinkActiveChanged;
begin
  FDataField := nil;
  FMasterField := nil;
  if FDataLink.Active and (FDataFieldName <> '') then begin
    CheckNotCircular;
    FDataField := FDataLink.DataSet.FieldByName(FDataFieldName);
    FMasterField := FDataField;
  end;
{$IFDEF WIN32}
  SetLookupMode((FDataField <> nil) and FDataField.Lookup);
{$ENDIF}
  DataLinkRecordChanged(nil);
end;

procedure TxxxLookupControl.DataLinkRecordChanged(Field: TField);
begin
  if (Field = nil) or (Field = FMasterField) then begin
    if FMasterField <> nil then begin
      SetValueKey(FMasterField.AsString);
    end else SetValueKey(FEmptyValue);
  end;
end;

{$IFDEF RX_D4}
function TxxxLookupControl.ExecuteAction(Action: TBasicAction): Boolean;
begin
  Result := inherited ExecuteAction(Action) or ((FDataLink <> nil) and
    FDataLink.ExecuteAction(Action));
end;

function TxxxLookupControl.UpdateAction(Action: TBasicAction): Boolean;
begin
  Result := inherited UpdateAction(Action) or ((FDataLink <> nil) and
    FDataLink.UpdateAction(Action));
end;

function TxxxLookupControl.UseRightToLeftAlignment: Boolean;
begin
  Result := DBUseRightToLeftAlignment(Self, Field);
end;
{$ENDIF}

function TxxxLookupControl.GetBorderSize: Integer;
var
  Params: TCreateParams;
  R: TRect;
begin
  CreateParams(Params);
  SetRect(R, 0, 0, 0, 0);
{$IFDEF WIN32}
  AdjustWindowRectEx(R, Params.Style, False, Params.ExStyle);
{$ELSE}
  AdjustWindowRect(R, Params.Style, False);
  if (csFramed in ControlStyle) and Ctl3D and
    (Params.Style and WS_BORDER <> 0) then Inc(R.Bottom, 2);
{$ENDIF}
  Result := R.Bottom - R.Top;
end;

function TxxxLookupControl.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

function TxxxLookupControl.GetLookupField: string;
begin
{$IFDEF WIN32}
  if FLookupMode then Result := '' else
{$ENDIF}
  Result := FLookupFieldName;
end;

function TxxxLookupControl.GetLookupSource: TDataSource;
begin
{$IFDEF WIN32}
  if FLookupMode then Result := nil else
{$ENDIF}
  Result := FLookupLink.DataSource;
end;

function TxxxLookupControl.GetReadOnly: Boolean;
begin
  Result := FDataLink.ReadOnly;
end;

function TxxxLookupControl.GetField: TField;
begin
  if Assigned(FDataLink) then Result := FDataField
  else Result := nil;
end;

function TxxxLookupControl.DefaultTextHeight: Integer;
var
  DC: HDC;
  SaveFont: HFont;
  Metrics: TTextMetric;
begin
  DC := GetDC(0);
  SaveFont := SelectObject(DC, Font.Handle);
  GetTextMetrics(DC, Metrics);
  SelectObject(DC, SaveFont);
  ReleaseDC(0, DC);
  Result := Metrics.tmHeight;
end;

function TxxxLookupControl.GetTextHeight: Integer;
begin
  Result := Max(DefaultTextHeight, FItemHeight);
end;

procedure TxxxLookupControl.KeyValueChanged;
begin
end;

procedure TxxxLookupControl.DisplayValueChanged;
begin
end;

procedure TxxxLookupControl.ListLinkActiveChanged;
var
  DataSet: TDataSet;
{$IFDEF WIN32}
  ResultField: TField;
{$ENDIF}
begin
  FListActive := False;
  FKeyField := nil;
  FDisplayField := nil;
  FListFields.Clear;
  if FLookupLink.Active and (FLookupFieldName <> '') then
    begin
    CheckNotCircular;
    DataSet := FLookupLink.DataSet;

{
    if (lsChecked in ListStyle) then
      begin
      if DataSet is TOracleDataSet then
        begin
        end;
      DataSet.First;
      DataSet.Insert;
      DataSet.FieldByName(FLookupDisplay).AsString := 'All';
      DataSet.Post;
      end;
}

    FKeyField := DataSet.FieldByName(FLookupFieldName);
{$IFDEF WIN32}
    DataSet.GetFieldList(FListFields, FLookupDisplay);
{$ELSE}
    GetFieldList(DataSet, FListFields, FLookupDisplay);
{$ENDIF}
{$IFDEF WIN32}
    if FLookupMode then
      begin
      ResultField := DataSet.FieldByName(FDataField.LookupResultField);
      if FListFields.IndexOf(ResultField) < 0 then
        FListFields.Insert(0, ResultField);
      FDisplayField := ResultField;
      end
    else
      begin
      if FListFields.Count = 0 then
        FListFields.Add(FKeyField);
      if (FDisplayIndex >= 0) and (FDisplayIndex < FListFields.Count) then
        FDisplayField := FListFields[FDisplayIndex]
      else
        FDisplayField := FListFields[0];
    end;
{$ELSE}
    if FListFields.Count = 0 then
      FListFields.Add(FKeyField);
    if (FDisplayIndex >= 0) and (FDisplayIndex < FListFields.Count) then
      FDisplayField := FListFields[FDisplayIndex]
    else
      FDisplayField := FListFields[0];
{$ENDIF}
    FListActive := True;
  end;
  FLocate.DataSet := FLookupLink.DataSet;
end;

procedure TxxxLookupControl.ListLinkDataChanged;
begin
end;

function TxxxLookupControl.LocateDisplay: Boolean;
begin
  Result := False;
  try
    Result := Locate(FDisplayField, FDisplayValue, True);
  except
  end;
end;

function TxxxLookupControl.LocateKey: Boolean;
begin
  Result := False;
  try
    Result := not ValueIsEmpty(FValue) and Locate(FKeyField, FValue, True);
  except
  end;
end;

procedure TxxxLookupControl.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if Operation = opRemove then begin
    if (FDataLink <> nil) and (AComponent = DataSource) then
      DataSource := nil;
    if (FLookupLink <> nil) and (AComponent = LookupSource) then
      LookupSource := nil;
  end;
end;

function TxxxLookupControl.SearchText(var AValue: string): Boolean;
begin
  Result := False;
  if (FDisplayField <> nil) then
    if (AValue <> '') and Locate(FDisplayField, AValue, False) then begin
      SelectKeyValue(FKeyField.AsString);
      AValue := Copy(FDisplayField.AsString, 1, Length(AValue));
      Result := True;
    end
    else if AValue = '' then begin
      FLookupLink.DataSet.First;
      SelectKeyValue(FKeyField.AsString);
      AValue := '';
    end;
end;

procedure TxxxLookupControl.ProcessSearchKey(Key: Char);
var
  TickCount: Longint;
  S: string;
begin
  S := '';
  if (FDisplayField <> nil) {and (FDisplayField.DataType = ftString)} then
    case Key of
      #9, #27: FSearchText := '';
      Char(VK_BACK), #32..#255:
        if CanModify then begin
          if not FPopup then begin
            TickCount := GetTickCount;
            if TickCount - SearchTickCount > 2000 then FSearchText := '';
            SearchTickCount := TickCount;
          end;
          if (Key = Char(VK_BACK)) then
            S := Copy(FSearchText, 1, Length(FSearchText) - 1)
          else if Length(FSearchText) < 32 then
            S := FSearchText + Key;
          if SearchText(S) or (S = '') then FSearchText := S;
        end;
    end;
end;

procedure TxxxLookupControl.ResetField;
begin
  if (FDataLink.DataSource = nil) or ((FDataLink.DataSource <> nil) and CanModify) then
    begin
    if (FDataLink.DataSource <> nil) and (FMasterField <> nil) and FDataLink.Edit then
      begin
      if FEmptyValue = EmptyStr then
        FMasterField.Clear
      else
        FMasterField.AsString := FEmptyValue;
      end;
    FValue := FEmptyValue;
    FDisplayValue := EmptyStr;
    inherited Text := DisplayEmpty;
    Invalidate;
    Click;
    end;
end;

procedure TxxxLookupControl.ClearValue;
begin
  SetValueKey(FEmptyValue);
end;

procedure TxxxLookupControl.SelectKeyValue(const Value: string);
begin
  if FMasterField <> nil then
    begin
    if CanModify and FDataLink.Edit then
      begin
      if FDataField = FMasterField then
        FDataField.DataSet.Edit;
      FMasterField.AsString := Value;
      end
    else
      Exit;
    end
  else
    SetValueKey(Value);
  UpdateDisplayValue;
  Repaint;
  Click;
end;

procedure TxxxLookupControl.SetDataFieldName(const Value: string);
begin
  if FDataFieldName <> Value then begin
    FDataFieldName := Value;
    DataLinkActiveChanged;
  end;
end;

procedure TxxxLookupControl.SetDataSource(Value: TDataSource);
begin
  FDataLink.DataSource := Value;
{$IFDEF WIN32}
  if Value <> nil then Value.FreeNotification(Self);
{$ENDIF}
end;

procedure TxxxLookupControl.SetListStyle(Value: TLookupListStyle);
begin
  if FListStyle <> Value then
    begin
    FListStyle := Value;
    Invalidate;
    end;
end;

procedure TxxxLookupControl.SetFieldsDelim(Value: Char);
begin
  if FFieldsDelim <> Value then
    begin
    FFieldsDelim := Value;
//    if ListStyle = lsDelimited then
    if (lsDelimited in ListStyle) then
      Invalidate;
    end;
end;

procedure TxxxLookupControl.SetLookupField(const Value: string);
begin
{$IFDEF WIN32}
  CheckNotFixed;
{$ENDIF}
  if FLookupFieldName <> Value then begin
    FLookupFieldName := Value;
    ListLinkActiveChanged;
    if FListActive then DataLinkRecordChanged(nil);
  end;
end;

procedure TxxxLookupControl.SetDisplayEmpty(const Value: string);
begin
  if FDisplayEmpty <> Value then begin
    UpdateDisplayEmpty(Value);
    FDisplayEmpty := Value;
    if not (csReading in ComponentState) then Invalidate;
  end;
end;

procedure TxxxLookupControl.SetEmptyValue(const Value: string);
begin
  if FEmptyValue <> Value then begin
    if ValueIsEmpty(FValue) then FValue := Value;
    FEmptyValue := Value;
  end;
end;

procedure TxxxLookupControl.SetEmptyItemColor(Value: TColor);
begin
  if FEmptyItemColor <> Value then begin
    FEmptyItemColor := Value;
    if not (csReading in ComponentState) and (DisplayEmpty <> '') then
      Invalidate;
  end;
end;

procedure TxxxLookupControl.UpdateDisplayEmpty(const Value: string);
begin
end;

procedure TxxxLookupControl.SetDisplayValue(const Value: string);
var
  S: string;
begin
  if (FDisplayValue <> Value) and CanModify and (FDataLink.DataSource <> nil) and
    Locate(FDisplayField, Value, True) then
  begin
    S := FValue;
    if FDataLink.Edit then begin
      if FMasterField <> nil then FMasterField.AsString := S
      else FDataField.AsString := S;
    end;
  end
  else if (FDisplayValue <> Value) then begin
    FDisplayValue := Value;
    DisplayValueChanged;
    Change;
  end;
end;

procedure TxxxLookupControl.UpdateKeyValue;
begin
  if FMasterField <> nil then FValue := FMasterField.AsString
  else FValue := FEmptyValue;
  KeyValueChanged;
end;

procedure TxxxLookupControl.SetValueKey(const Value: string);
begin
  if FValue <> Value then
    begin
    FValue := Value;
    KeyValueChanged;
    end;
end;

procedure TxxxLookupControl.SetValue(const Value: string);
begin
  if (Value <> FValue) then
    if CanModify and (FDataLink.DataSource <> nil) and FDataLink.Edit then
    begin
      if FMasterField <> nil then FMasterField.AsString := Value
      else FDataField.AsString := Value;
    end
    else begin
      SetValueKey(Value);
      Change;
    end;
end;

procedure TxxxLookupControl.SetLookupDisplay(const Value: string);
begin
  if FLookupDisplay <> Value then begin
    FLookupDisplay := Value;
    ListLinkActiveChanged;
    if FListActive then DataLinkRecordChanged(nil);
  end;
end;

procedure TxxxLookupControl.SetLookupSource(Value: TDataSource);
begin
{$IFDEF WIN32}
  CheckNotFixed;
{$ENDIF}
  FLookupLink.DataSource := Value;
{$IFDEF WIN32}
  if Value <> nil then Value.FreeNotification(Self);
{$ENDIF}
  if Value <> nil then FLocate.DataSet := Value.DataSet
  else FLocate.DataSet := nil;
  if FListActive then DataLinkRecordChanged(nil);
end;

procedure TxxxLookupControl.SetReadOnly(Value: Boolean);
begin
  FDataLink.ReadOnly := Value;
end;

function TxxxLookupControl.GetItemHeight: Integer;
begin
  Result := {Max(GetTextHeight, FItemHeight);}GetTextHeight;
end;

procedure TxxxLookupControl.SetItemHeight(Value: Integer);
begin
  if not (csReading in ComponentState) then
    FItemHeight := Max(DefaultTextHeight, Value)
  else FItemHeight := Value;
  Perform(CM_FONTCHANGED, 0, 0);
end;

function TxxxLookupControl.ItemHeightStored: Boolean;
begin
  Result := FItemHeight > DefaultTextHeight;
end;

procedure TxxxLookupControl.DrawPicture(Canvas: TCanvas; Rect: TRect;
  Image: TGraphic);
var
  X, Y, SaveIndex: Integer;
{$IFDEF WIN32}
  Ico: HIcon;
  W, H: Integer;
{$ENDIF}
begin
  if Image <> nil then begin
    X := (Rect.Right + Rect.Left - Image.Width) div 2;
    Y := (Rect.Top + Rect.Bottom - Image.Height) div 2;
    SaveIndex := SaveDC(Canvas.Handle);
    try
      IntersectClipRect(Canvas.Handle, Rect.Left, Rect.Top, Rect.Right,
        Rect.Bottom);
      if Image is TBitmap then
        DrawBitmapTransparent(Canvas, X, Y, TBitmap(Image),
          TBitmap(Image).TransparentColor)
{$IFDEF WIN32}
      else if Image is TIcon then begin
        Ico := CreateRealSizeIcon(TIcon(Image));
        try
          GetIconSize(Ico, W, H);
          DrawIconEx(Canvas.Handle, (Rect.Right + Rect.Left - W) div 2,
            (Rect.Top + Rect.Bottom - H) div 2, Ico, W, H, 0, 0, DI_NORMAL);
        finally
          DestroyIcon(Ico);
        end;
      end
{$ENDIF}
      else Canvas.Draw(X, Y, Image);
    finally
      RestoreDC(Canvas.Handle, SaveIndex);
    end;
  end;
end;

function TxxxLookupControl.GetPicture(Current, Empty: Boolean;
  var TextMargin: Integer): TGraphic;
begin
  TextMargin := 0;
  Result := nil;
  if Assigned(FOnGetImage) then FOnGetImage(Self, Empty, Result, TextMargin);
end;

procedure TxxxLookupControl.WMGetDlgCode(var Message: TMessage);
begin
  Message.Result := DLGC_WANTARROWS or DLGC_WANTCHARS;
end;

procedure TxxxLookupControl.WMKillFocus(var Message: TMessage);
begin
  FFocused := False;
  Invalidate;
end;

procedure TxxxLookupControl.WMSetFocus(var Message: TMessage);
begin
  FFocused := True;
  Invalidate;
end;

function TxxxLookupControl.Locate(const SearchField: TField;
  const AValue: string; Exact: Boolean): Boolean;
begin
  FLocate.IndexSwitch := FIndexSwitch;
  Result := False;
  try
    if not ValueIsEmpty(AValue) and (SearchField <> nil) then begin
      Result := FLocate.Locate(SearchField.FieldName, AValue, Exact,
        not IgnoreCase);
      if Result then begin
        if SearchField = FDisplayField then FValue := FKeyField.AsString;
        UpdateDisplayValue;
      end;
    end;
  except
  end;
end;

function TxxxLookupControl.EmptyRowVisible: Boolean;
begin
  Result := (DisplayEmpty <> EmptyStr) and ((lsChecked in FListStyle) and CanSelectAll);
end;

procedure TxxxLookupControl.UpdateDisplayValue;
begin
  if not ValueIsEmpty(FValue) then
    begin
    if FDisplayField <> nil then
      FDisplayValue := FDisplayField.AsString
    else
      FDisplayValue := '';
    end
  else FDisplayValue := '';
end;

function TxxxLookupControl.GetWindowWidth: Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := 0 to FListFields.Count - 1 do
    Inc(Result, TField(FListFields[I]).DisplayWidth);
  Canvas.Font := Font;
  Result := Min(Result * Canvas.TextWidth('M') + FListFields.Count * 4 +
    GetSystemMetrics(SM_CXVSCROLL), Screen.Width);
end;

procedure TxxxLookupControl.SetDisplaySelectAll(const Value: string);
begin
  if (FDisplaySelectAll <> Value) then
    FDisplaySelectAll := Value;
end;

function TxxxLookupControl.CanSelectAll: boolean;
begin
  Result := FDisplaySelectAll <> '';
end;

{ TRxDBLookupList }

constructor TxxxDBLookupList.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Width := 121;
  Ctl3D := True;
  FBorderStyle := bsSingle;
{$IFDEF WIN32}
  ControlStyle := [csOpaque, csDoubleClicks];
{$ELSE}
  ControlStyle := [csFramed, csOpaque, csDoubleClicks];
{$ENDIF}
  RowCount := 7;
  FChecks := TStringList.Create;
  FChecks.Sorted := True;
  FChecks.Duplicates := dupError;
  FSelectAll := False;
  FMaxChecksCount := 0;
end;

destructor TxxxDBLookupList.Destroy;
begin
  FChecks.Free;
  FChecks := nil;
  inherited;
end;

procedure TxxxDBLookupList.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do begin
    Style := Style or WS_VSCROLL;
    if FBorderStyle = bsSingle then
{$IFDEF WIN32}
      if NewStyleControls and Ctl3D then ExStyle := ExStyle or WS_EX_CLIENTEDGE
      else Style := Style or WS_BORDER;
{$ELSE}
      Style := Style or WS_BORDER;
{$ENDIF}
  end;
end;

procedure TxxxDBLookupList.CreateWnd;
begin
  inherited CreateWnd;
  UpdateScrollBar;
end;

procedure TxxxDBLookupList.Loaded;
begin
  inherited Loaded;
  Height := Height;
end;

function TxxxDBLookupList.GetKeyIndex: Integer;
var
  FieldValue: string;
begin
  if not ValueIsEmpty(FValue) then
    for Result := 0 to FRecordCount - 1 do
      begin
      FLookupLink.ActiveRecord := Result;
      FieldValue := FKeyField.AsString;
      FLookupLink.ActiveRecord := FRecordIndex;
      if FieldValue = FValue then Exit;
      end;
  Result := -1;
end;

procedure TxxxDBLookupList.KeyDown(var Key: Word; Shift: TShiftState);
var
  Delta, KeyIndex, EmptyRow: Integer;
begin
  inherited KeyDown(Key, Shift);
  FSelectEmpty := False;
  EmptyRow := Ord(EmptyRowVisible);
  if CanModify then begin
    Delta := 0;
    case Key of
      VK_UP, VK_LEFT: Delta := -1;
      VK_DOWN, VK_RIGHT: Delta := 1;
      VK_PRIOR: Delta := 1 - (FRowCount - EmptyRow);
      VK_NEXT: Delta := (FRowCount - EmptyRow) - 1;
      VK_HOME: Delta := -Maxint;
      VK_END: Delta := Maxint;
    end;
    if Delta <> 0 then begin
      if ValueIsEmpty(Value) and (EmptyRow > 0) and (Delta < 0) then
        FSelectEmpty := True;
      FSearchText := '';
      if Delta = -Maxint then FLookupLink.DataSet.First
      else if Delta = Maxint then FLookupLink.DataSet.Last
      else begin
        KeyIndex := GetKeyIndex;
        if KeyIndex >= 0 then begin
          FLookupLink.DataSet.MoveBy(KeyIndex - FRecordIndex);
        end
        else begin
          KeyValueChanged;
          Delta := 0;
        end;
        FLookupLink.DataSet.MoveBy(Delta);
        if FLookupLink.DataSet.BOF and (Delta < 0) and (EmptyRow > 0) then
          FSelectEmpty := True;
      end;
      SelectCurrent;
    end;
  end;
end;

procedure TxxxDBLookupList.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  ProcessSearchKey(Key);
end;

procedure TxxxDBLookupList.KeyValueChanged;
begin
  if FListActive and not FLockPosition then
    if not LocateKey then FLookupLink.DataSet.First;
end;

procedure TxxxDBLookupList.DisplayValueChanged;
begin
  if FListActive and not FLockPosition then
    if not LocateDisplay then FLookupLink.DataSet.First;
end;

procedure TxxxDBLookupList.ListLinkActiveChanged;
begin
  try
    inherited ListLinkActiveChanged;
  finally
    if FListActive and not FLockPosition then
      begin
      if Assigned(FMasterField) then
        UpdateKeyValue
      else
        KeyValueChanged;
      end
    else
      ListDataChanged;
  end;
end;

procedure TxxxDBLookupList.ListDataChanged;
begin
  if FListActive then
    begin
    FRecordIndex := FLookupLink.ActiveRecord;
    FRecordCount := FLookupLink.RecordCount;
    FKeySelected := not ValueIsEmpty(FValue) or not FLookupLink.DataSet.BOF;
    end
  else
    begin
    FRecordIndex := 0;
    FRecordCount := 0;
    FKeySelected := False;
    end;
  if HandleAllocated then
    begin
    UpdateScrollBar;
    Invalidate;
    end;
end;

procedure TxxxDBLookupList.ListLinkDataChanged;
begin
  ListDataChanged;
end;

procedure TxxxDBLookupList.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  if Button = mbLeft then
    begin
    FSearchText := '';
    if not FPopup then
      begin
      if CanFocus then
        SetFocus;
      if not FFocused then
        Exit;
      end;
    if CanModify then
      if ssDouble in Shift then
        begin
        if FRecordIndex = Y div GetTextHeight then
          DblClick;
        end
      else
        begin
        MouseCapture := True;
        FTracking := True;
        SelectItemAt(X, Y, maDown);
        end;
    end;
  inherited MouseDown(Button, Shift, X, Y);
end;

procedure TxxxDBLookupList.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  if FTracking then
    begin
    SelectItemAt(X, Y, maMove);
    FMousePos := Y;
    TimerScroll;
    end;

  if (lsSizeable in FListStyle) then
    begin
    if Shift = [] then
      begin
      if (X <= ClientWidth) and (X >= ClientWidth-10) and
         (Y <= ClientHeight) and (Y >= ClientHeight-10) then
        Cursor := crSizeNWSE
      else if (X <= ClientWidth) and (X >= ClientWidth-2) then
        Cursor := crSizeWE
      else if (Y <= ClientHeight) and (Y >= ClientHeight-2) then
        Cursor := crSizeNS
      else
        Cursor := crDefault;
      end
    else if Shift = [ssLeft] then
      begin
      if Cursor = crSizeNWSE then
        begin
        Width := X;
        Height := Y;
        end
      else if Cursor = crSizeWE then
        Width := X
      else if Cursor = crSizeNS then
        Height := Y;
      FSetWidth := Width;
      FSetHeight := Height;
      end;
    end;

  inherited MouseMove(Shift, X, Y);
end;

procedure TxxxDBLookupList.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  if FTracking then
    begin
    StopTracking;
    SelectItemAt(X, Y, maUp);
    end;
  inherited MouseUp(Button, Shift, X, Y);
end;

procedure TxxxDBLookupList.DrawItemText(Canvas: TCanvas; Rect: TRect;
  Selected: Boolean; Contents: TTextContents);
var
  J, W, X, ATop, TextWidth, LastFieldIndex: Integer;
  S: string;
  Field: TField;
  R: TRect;
  AAlignment: TAlignment;
  vColor: TColor;
  DrawCheck, FillRect: Boolean;
begin
  TextWidth := Canvas.TextWidth('M');
  LastFieldIndex := FListFields.Count - 1;
  R := Rect;
  R.Right := R.Left;
  S := '';
  ATop := (R.Bottom + R.Top - Canvas.TextHeight('Xy')) div 2;
  for J := 0 to LastFieldIndex do
    begin
    Field := FListFields[J];
//    if FListStyle = lsFixed then
    if not (lsDelimited in FListStyle) then
      begin
      if J < LastFieldIndex then
        W := Field.DisplayWidth * TextWidth + 4
      else
        W := ClientWidth - R.Right;
      if Contents <> tcDataValue then
        begin
        if J = 0 then
          begin
          if Contents = tcSelectAll then
            S := FDisplaySelectAll
          else
            S := DisplayEmpty;
          end
        else
          S := '';
        end
      else
        S := Field.DisplayText;
      X := 2;
      AAlignment := Field.Alignment;
{$IFDEF RX_D4}
      if UseRightToLeftAlignment then
        ChangeBiDiModeAlignment(AAlignment);
{$ENDIF}
      case AAlignment of
        taRightJustify: X := W - Canvas.TextWidth(S) - 3;
        taCenter: X := (W - Canvas.TextWidth(S)) div 2;
      end;
      R.Left := R.Right;
      R.Right := R.Right + W;
{$IFDEF RX_D4}
      if SysLocale.MiddleEast and UseRightToLeftReading then
        Canvas.TextFlags := Canvas.TextFlags or ETO_RTLREADING
      else
        Canvas.TextFlags := Canvas.TextFlags and not ETO_RTLREADING;
{$ENDIF}
      Canvas.TextRect(R, R.Left + X, ATop, S);
      if J < LastFieldIndex then
        begin
        Canvas.MoveTo(R.Right, R.Top);
        Canvas.LineTo(R.Right, R.Bottom);
        Inc(R.Right);
        if R.Right >= ClientWidth then
          Break;
        end;
      end
    else {if FListStyle = lsDelimited then} if Contents <> tcEmptyValue {not IsEmpty} then
      begin
      S := S + Field.DisplayText;
      if J < LastFieldIndex then
        S := S + FFieldsDelim + ' ';
      end;
    end;
//  if (FListStyle = lsDelimited) then
  if (lsDelimited in FListStyle) then
    begin
    if Contents = tcEmptyValue then
      S := DisplayEmpty;
    R.Left := Rect.Left;
    R.Right := Rect.Right;
{$IFDEF RX_D4}
    if SysLocale.MiddleEast and UseRightToLeftReading then
      Canvas.TextFlags := Canvas.TextFlags or ETO_RTLREADING
    else
      Canvas.TextFlags := Canvas.TextFlags and not ETO_RTLREADING;
{$ENDIF}
    Canvas.TextRect(R, R.Left + 2, ATop, S);
  end;

  if (lsChecked in FListStyle) then
    begin
    DrawCheck := False;
    FillRect := False;
    if (Contents = tcSelectAll) then
      // Строка SelectAll
      begin
      if (FSelectAll = True) then
        DrawCheck := True;

      if FMaxChecksCount = 0 then
        begin
        if FChecks.Count > 0 then
           FillRect := True;
        end
      else if (FChecks.Count > 0) and (FChecks.Count < FMaxChecksCount) then
        FillRect := True;

      if FillRect then
        // Закрашиваем квадрат
        begin
        R.Left := Rect.Left - 11;
        R.Top := Rect.Top + 3;
        R.Right := R.Left + 7;
        R.Bottom := R.Top + 7;
        Canvas.Brush.Color := clLtGray;
        Canvas.FillRect(R);
        Canvas.Brush.Color := Color;
        end;
      end
    else if (Assigned(FKeyField) and (FChecks.IndexOfName(FKeyField.DisplayText) <> - 1)) then
      DrawCheck := True;

    // Рисуем галочку
    if DrawCheck = True then
      with Canvas do
        begin
        R.Left := Rect.Left - 13;
        R.Top := Rect.Top + 1;
        vColor := Pen.Color;
        Pen.Color := clBlack;
        MoveTo(R.Left+2, R.Top+4);
        LineTo(R.Left+5, R.Top+7);
        MoveTo(R.Left+2, R.Top+5);
        LineTo(R.Left+5, R.Top+8);
        MoveTo(R.Left+2, R.Top+6);
        LineTo(R.Left+5, R.Top+9);

        MoveTo(R.Left+4, R.Top+6);
        LineTo(R.Left+9, R.Top+1);
        MoveTo(R.Left+4, R.Top+7);
        LineTo(R.Left+9, R.Top+2);
        MoveTo(R.Left+4, R.Top+8);
        LineTo(R.Left+9, R.Top+3);
        Pen.Color := vColor;
        end;
   end;
end;

procedure TxxxDBLookupList.Paint;
var
  CurrentRow, J, TextHeight, TextMargin: Integer;
  Image: TGraphic;
  Bmp: TBitmap;
  R, ImageRect: TRect;
  Selected: Boolean;
  vColor: TColor;
  TextContents: TTextContents;
begin
  Bmp := TBitmap.Create;
  try
    Canvas.Font := Font;
    TextHeight := GetTextHeight;
    if ColorToRGB(Color) <> ColorToRGB(clBtnFace) then
      Canvas.Pen.Color := clBtnFace
    else
      Canvas.Pen.Color := clBtnShadow;
    for CurrentRow := 0 to FRowCount - 1 do
      begin
      J := CurrentRow - Ord(EmptyRowVisible);
      Canvas.Font.Color := Font.Color;
      Canvas.Brush.Color := Color;
      Selected := not FKeySelected and (CurrentRow = 0) and not EmptyRowVisible;

      if (lsChecked in FListStyle) and (CurrentRow  < FRecordCount + Ord(EmptyRowVisible)) then
        begin
        // Рисуем квадрат 11х11
        vColor := Canvas.Pen.Color;
        Canvas.Pen.Color := clSilver;
        R.Left := 2;
        R.Top := (CurrentRow * TextHeight) + 1;
        R.Right := 2 + 11;
        R.Bottom := R.Top + 11;
        Canvas.Rectangle(R);
        Canvas.Pen.Color := vColor;
        end;

      R.Top := CurrentRow * TextHeight;
      R.Bottom := R.Top + TextHeight;
      if CurrentRow  < FRecordCount + Ord(EmptyRowVisible) then
        begin
        if (CurrentRow = 0) and (J = -1) then
          // Draw empty string or SelectAll string
          begin
          if ValueIsEmpty(FValue) then
            begin
            Canvas.Font.Color := clHighlightText;
            Canvas.Brush.Color := clHighlight;
            Selected := True;
            end
          else
            if not (lsChecked in FListStyle) then
              Canvas.Brush.Color := EmptyItemColor;

          if (lsChecked in FListStyle) and CanSelectAll then
            begin
            R.Left := 15;
            TextContents := tcSelectAll;
            end
          else
            begin
            R.Left := 0;
            TextContents := tcEmptyValue;;
            end;

          R.Right := ClientWidth;
          Image := GetPicture(False, True, TextMargin);
          if TextMargin > 0 then
            begin
            with Bmp do
              begin
              Canvas.Font := Self.Canvas.Font;
              Canvas.Brush := Self.Canvas.Brush;
              Canvas.Pen := Self.Canvas.Pen;
              Width := WidthOf(R);
              Height := HeightOf(R);
              end;
            ImageRect := Bounds(0, 0, TextMargin, HeightOf(R));
            Bmp.Canvas.FillRect(ImageRect);
            if Image <> nil then
              DrawPicture(Bmp.Canvas, ImageRect, Image);
            DrawItemText(Bmp.Canvas, Bounds(TextMargin, 0, WidthOf(R) - TextMargin,
              HeightOf(R)), Selected, TextContents);               // Empty str
            Canvas.Draw(R.Left, R.Top, Bmp);
            end
          else
            DrawItemText(Canvas, R, Selected, TextContents);      // Empty str
          end
        else
          // Draw value string
          begin
          FLookupLink.ActiveRecord := J;
          if not ValueIsEmpty(FValue) and (FKeyField.AsString = FValue) then
            begin
            Canvas.Font.Color := clHighlightText;
            Canvas.Brush.Color := clHighlight;
            Selected := True;
            end;
          if (lsChecked in FListStyle) then
            R.Left := 15
          else
            R.Left := 0;
          R.Right := ClientWidth;
          Image := GetPicture(False, False, TextMargin);
          if TextMargin > 0 then
            begin
            with Bmp do
              begin
              Canvas.Font := Self.Canvas.Font;
              Canvas.Brush := Self.Canvas.Brush;
              Canvas.Pen := Self.Canvas.Pen;
              Width := WidthOf(R);
              Height := HeightOf(R);
              end;
            ImageRect := Bounds(0, 0, TextMargin, HeightOf(R));
            Bmp.Canvas.FillRect(ImageRect);
            if Image <> nil then
              DrawPicture(Bmp.Canvas, ImageRect, Image);
            DrawItemText(Bmp.Canvas, Bounds(TextMargin, 0, WidthOf(R) - TextMargin,
              HeightOf(R)), Selected, tcDataValue);          // Value Str
            Canvas.Draw(R.Left, R.Top, Bmp);
            end
          else
            DrawItemText(Canvas, R, Selected, tcDataValue); // Value Str
          end;
        end;

      if (lsChecked in FListStyle) then
        R.Left := 15
      else
        R.Left := 0;
      R.Right := ClientWidth;
      if J >= FRecordCount then
        Canvas.FillRect(R);
      if Selected and (FFocused or FPopup) then
        Canvas.DrawFocusRect(R);
      end;

    // Рисуем SizeGrip
    if (lsSizeable in FListStyle) then
      begin
      vColor := Canvas.Pen.Color;
{
      Canvas.Pen.Color := clWindowFrame;
      Canvas.MoveTo(ClientWidth-4, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-4);
      Canvas.MoveTo(ClientWidth-7, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-7);
      Canvas.MoveTo(ClientWidth-10, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-10);
      Canvas.MoveTo(ClientWidth-13, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-13);

      Canvas.Pen.Color := clWindow;
      Canvas.MoveTo(ClientWidth-3, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-3);
      Canvas.MoveTo(ClientWidth-6, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-6);
      Canvas.MoveTo(ClientWidth-9, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-9);
      Canvas.MoveTo(ClientWidth-12, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-12);

      Canvas.MoveTo(ClientWidth-5, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-5);
      Canvas.MoveTo(ClientWidth-8, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-8);
      Canvas.MoveTo(ClientWidth-11, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-11);
      Canvas.MoveTo(ClientWidth-14, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-14);
}
      Canvas.Pen.Color := clSilver;
      Canvas.MoveTo(ClientWidth-2, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-2);
      Canvas.MoveTo(ClientWidth-3, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-3);
      Canvas.MoveTo(ClientWidth-6, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-6);
      Canvas.MoveTo(ClientWidth-7, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-7);
      Canvas.MoveTo(ClientWidth-10, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-10);
      Canvas.MoveTo(ClientWidth-11, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-11);
      Canvas.Pen.Color := clWindow;
      Canvas.MoveTo(ClientWidth-1, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-1);
      Canvas.MoveTo(ClientWidth-4, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-4);
      Canvas.MoveTo(ClientWidth-5, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-5);
      Canvas.MoveTo(ClientWidth-8, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-8);
      Canvas.MoveTo(ClientWidth-9, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-9);
      Canvas.MoveTo(ClientWidth-12, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-12);
      Canvas.MoveTo(ClientWidth-13, ClientHeight);
      Canvas.LineTo(ClientWidth, ClientHeight-13);
      Canvas.Pen.Color := vColor;
      end;

  finally
    Bmp.Free;
  end;
  if FRecordCount <> 0 then
    FLookupLink.ActiveRecord := FRecordIndex;
end;

procedure TxxxDBLookupList.SelectCurrent;
begin
  FLockPosition := True;
  try
    if FSelectEmpty then
      begin
      if not (lsChecked in ListStyle) then
        ResetField;
      end
    else
      begin
      SelectKeyValue(FKeyField.AsString);
      end;
  finally
    FSelectEmpty := False;
    FLockPosition := False;
  end;
end;

procedure TxxxDBLookupList.SelectItemAt(X, Y: Integer; MouseAction: TMouseAction);
var
  Delta: Integer;
  Row: integer;
begin
  if Y < 0 then
    Y := 0;
  if Y >= ClientHeight then
    Y := ClientHeight - 1;
  Delta := Y div GetTextHeight;
  Row := Delta;
  if (Delta = 0) and EmptyRowVisible then
    begin
    FSelectEmpty := True;
    end
  else
    begin
    Delta := Delta - FRecordIndex;
    if EmptyRowVisible then
      Dec(Delta);
    FLookupLink.DataSet.MoveBy(Delta);
    end;
    if (MouseAction = maDown) and (lsChecked in FListStyle) then
      if (X > 3) and (X < 13) then
        if (Y > (Row * GetTextHeight+1)) and (Y < (Row * GetTextHeight+13)) then
          begin
          if CanSelectAll  and (Row = 0) then  // SelectAll
            begin
            SelectAll;
            Click;
            end
          else
            begin
            Row := FChecks.IndexOfName(FKeyField.AsString);
            if Row = -1 then
              begin
              FChecks.Add(FKeyField.AsString+'='+TField(FListFields[0]).AsString);
              if CanSelectAll and (FChecks.Count = FMaxChecksCount) then
                FSelectAll := True;
              end
            else
              begin
              FChecks.Delete(Row);
              if CanSelectAll then
                FSelectAll := False;
              end;
            end;
          end;
  SelectCurrent;
end;

procedure TxxxDBLookupList.SetBorderStyle(Value: TBorderStyle);
begin
  if FBorderStyle <> Value then begin
    FBorderStyle := Value;
    RecreateWnd;
    if not (csReading in ComponentState) then
      begin
      Height := Height;
      RowCount := RowCount;
      end;
  end;
end;

procedure TxxxDBLookupList.UpdateDisplayEmpty(const Value: string);
begin
  UpdateBufferCount(RowCount - Ord(Value <> EmptyStr));
end;

procedure TxxxDBLookupList.UpdateBufferCount(Rows: Integer);
begin
  if FLookupLink.BufferCount <> Rows then
    begin
    FLookupLink.BufferCount := Rows;
    ListLinkDataChanged;
    end;
end;

procedure TxxxDBLookupList.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
var
  BorderSize, TextHeight, Rows: Integer;
begin
  BorderSize := GetBorderSize;
  TextHeight := GetTextHeight;
  Rows := (AHeight - BorderSize) div TextHeight;
  if Rows < 1 then Rows := 1;
  FRowCount := Rows;
  UpdateBufferCount(Rows - Ord(EmptyRowVisible));
  if not (csReading in ComponentState) then
    AHeight := Rows * TextHeight + BorderSize;
  inherited SetBounds(ALeft, ATop, AWidth, AHeight);
end;

procedure TxxxDBLookupList.SetRowCount(Value: Integer);
begin
  if Value < 1 then Value := 1;
  if Value > 50 then Value := 50; //???
  Height := Value * GetTextHeight + GetBorderSize;
end;

procedure TxxxDBLookupList.StopTimer;
begin
  if FTimerActive then begin
    KillTimer(Handle, 1);
    FTimerActive := False;
  end;
end;

procedure TxxxDBLookupList.StopTracking;
begin
  if FTracking then begin
    StopTimer;
    FTracking := False;
    MouseCapture := False;
  end;
end;

procedure TxxxDBLookupList.TimerScroll;
var
  Delta, Distance, Interval: Integer;
begin
  Delta := 0;
  Distance := 0;
  if FMousePos < 0 then begin
    Delta := -1;
    Distance := -FMousePos;
  end;
  if FMousePos >= ClientHeight then begin
    Delta := 1;
    Distance := FMousePos - ClientHeight + 1;
  end;
  if Delta = 0 then StopTimer
  else begin
    FLookupLink.DataSet.MoveBy(Delta);
    SelectCurrent;
    Interval := 200 - Distance * 15;
    if Interval < 0 then Interval := 0;
    SetTimer(Handle, 1, Interval, nil);
    FTimerActive := True;
  end;
end;

procedure TxxxDBLookupList.UpdateScrollBar;
(*
{$IFDEF RX_D3}
var
  SIOld, SINew: TScrollInfo;
begin
  if FLookuplink.Active and HandleAllocated then begin
    with FLookuplink.DataSet do begin
      SIOld.cbSize := sizeof(SIOld);
      SIOld.fMask := SIF_ALL;
      GetScrollInfo(Self.Handle, SB_VERT, SIOld);
      SINew := SIOld;
      if IsSequenced then begin
        SINew.nMin := 1;
        SINew.nPage := Self.FRowCount - Ord(EmptyRowVisible);
        SINew.nMax := RecordCount + SINew.nPage - 1;
        if State in [dsInactive, dsBrowse, dsEdit] then
          SINew.nPos := RecNo;
      end
      else begin
        SINew.nMin := 0;
        SINew.nPage := 0;
        if Self.FRecordCount = (FRowCount - Ord(EmptyRowVisible)) then begin
          SINew.nMax := 4;
          if BOF then SINew.nPos := 0
          else if EOF then SINew.nPos := 4
          else SINew.nPos := 2;
        end
        else begin
          SINew.nMax := 0;
          SINew.nPos := 0;
        end;
      end;
      if (SINew.nMin <> SIOld.nMin) or (SINew.nMax <> SIOld.nMax) or
        (SINew.nPage <> SIOld.nPage) or (SINew.nPos <> SIOld.nPos) then
        SetScrollInfo(Self.Handle, SB_VERT, SINew, True);
    end;
  end
  else begin
    SetScrollRange(Handle, SB_VERT, 0, 0, False);
    SetScrollPos(Handle, SB_VERT, 0, True);
  end;
end;
{$ELSE}
*)
var
  Pos, Max: Integer;
  CurPos, MaxPos: Integer;
begin
  if FLookupLink.Active then begin
    Pos := 0;
    Max := 0;
    if FRecordCount = (FRowCount - Ord(EmptyRowVisible)) then begin
      Max := 4;
      if not FLookupLink.DataSet.BOF then
        if not FLookupLink.DataSet.EOF then Pos := 2 else Pos := 4;
    end;
    GetScrollRange(Handle, SB_VERT, CurPos, MaxPos);
    if MaxPos = 0 then MaxPos := FRecordCount;
    CurPos := GetScrollPos(Handle, SB_VERT);
    if Max <> MaxPos then SetScrollRange(Handle, SB_VERT, 0, Max, False);
    if CurPos <> Pos then SetScrollPos(Handle, SB_VERT, Pos, True);
  end
  else begin
    SetScrollRange(Handle, SB_VERT, 0, 0, False);
    SetScrollPos(Handle, SB_VERT, 0, True);
  end;
end;

procedure TxxxDBLookupList.CMCtl3DChanged(var Message: TMessage);
begin
{$IFDEF WIN32}
  if NewStyleControls and (FBorderStyle = bsSingle) then begin
    RecreateWnd;
    if not (csReading in ComponentState) then RowCount := RowCount;
  end;
  inherited;
{$ELSE}
  inherited;
  Invalidate;
  if not (csReading in ComponentState) then RowCount := RowCount;
{$ENDIF}
end;

procedure TxxxDBLookupList.CMFontChanged(var Message: TMessage);
begin
  inherited;
  if not (csReading in ComponentState) then Height := Height;
end;

procedure TxxxDBLookupList.WMCancelMode(var Message: TMessage);
begin
  StopTracking;
  inherited;
end;

procedure TxxxDBLookupList.WMTimer(var Message: TMessage);
begin
  TimerScroll;
end;

procedure TxxxDBLookupList.WMNCHitTest(var Msg: TWMNCHitTest);
begin
  if csDesigning in ComponentState then begin
    if FLookupLink.Active then DefaultHandler(Msg)
    else inherited;
  end
  else inherited;
end;

{$IFDEF RX_D4}
function TxxxDBLookupList.DoMouseWheelDown(Shift: TShiftState;
  MousePos: TPoint): Boolean;
begin
  Result := inherited DoMouseWheelDown(Shift, MousePos);
  if not Result then begin
    with FLookupLink.DataSet do
      Result := MoveBy(FRecordCount - FRecordIndex) <> 0;
  end;
end;

function TxxxDBLookupList.DoMouseWheelUp(Shift: TShiftState;
  MousePos: TPoint): Boolean;
begin
  Result := inherited DoMouseWheelUp(Shift, MousePos);
  if not Result then begin
    with FLookupLink.DataSet do
      Result := MoveBy(-FRecordIndex - 1) <> 0;
  end;
end;
{$ENDIF RX_D4}

procedure TxxxDBLookupList.WMVScroll(var Message: TWMVScroll);
begin
  FSearchText := '';
  with Message, FLookupLink.DataSet do
    case ScrollCode of
      SB_LINEUP: MoveBy(-FRecordIndex - 1);
      SB_LINEDOWN: MoveBy(FRecordCount - FRecordIndex);
      SB_PAGEUP: MoveBy(-FRecordIndex - FRecordCount + 1);
      SB_PAGEDOWN: MoveBy(FRecordCount - FRecordIndex + FRecordCount - 2);
      SB_THUMBPOSITION:
        begin
          case Pos of
            0: First;
            1: MoveBy(-FRecordIndex - FRecordCount + 1);
            2: Exit;
            3: MoveBy(FRecordCount - FRecordIndex + FRecordCount - 2);
            4: Last;
          end;
        end;
      SB_BOTTOM: Last;
      SB_TOP: First;
    end;
end;

function TxxxDBLookupList.GetKeyValues: TStrings;
begin
  Result := FChecks;
end;

procedure TxxxDBLookupList.SelectAll;
var
  Bookmark: TBookmark;
  i, c: integer;
begin
  FSelectAll := not FSelectAll;

  FLookupLink.DataSet.DisableControls;

  BookMark := FlookupLink.DataSet.GetBookmark;

  FLookupLink.DataSet.First;
  c := 0;
  while not FLookupLink.DataSet.Eof do
    begin
    i := FChecks.IndexOfName(FKeyField.AsString);
    if (FSelectAll = True) and (i = -1) then
       begin
       FChecks.Add(FKeyField.AsString+'='+TField(FListFields[0]).AsString);
       end
    else if (FSelectAll = False) and (i <> -1) then
      FChecks.Delete(i);

    c := c + 1;
    FLookupLink.DataSet.Next;
    end;
  FMaxChecksCount := c;

  FlookupLink.DataSet.GotoBookmark(Bookmark);
  FlookupLink.DataSet.FreeBookmark(Bookmark);

  FLookupLink.DataSet.EnableControls;
end;

{ TRxPopupDataList }

constructor TxxxPopupDataList.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  if AOwner is TxxxLookupControl then FCombo := TxxxLookupControl(AOwner);
{$IFDEF WIN32}
  ControlStyle := ControlStyle + [csNoDesignVisible, csReplicatable];
{$ELSE}
  ControlStyle := [csOpaque];
{$ENDIF}
  FPopup := True;
  TabStop := False;
  ParentCtl3D := False;
  Ctl3D := False;
end;

procedure TxxxPopupDataList.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do begin
    Style := WS_POPUP or WS_BORDER;
{$IFDEF WIN32}
    ExStyle := WS_EX_TOOLWINDOW;
{$ENDIF}
{$IFDEF RX_D4}
    AddBiDiModeExStyle(ExStyle);
{$ENDIF}
    WindowClass.Style := CS_SAVEBITS;
  end;
end;

{$IFNDEF WIN32}
procedure TxxxPopupDataList.CreateWnd;
begin
  inherited CreateWnd;
  if (csDesigning in ComponentState) then SetParent(nil);
end;
{$ENDIF}

procedure TxxxPopupDataList.WMMouseActivate(var Message: TMessage);
begin
  Message.Result := MA_NOACTIVATE;
end;

procedure TxxxPopupDataList.Click;
begin
  inherited Click;
  if Assigned(FCombo) and TxxxDBLookupCheckCombo(FCombo).FListVisible then
    TxxxDBLookupCheckCombo(FCombo).InvalidateText;
end;

procedure TxxxPopupDataList.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  if Assigned(FCombo) and TxxxDBLookupCheckCombo(FCombo).FListVisible then
    TxxxDBLookupCheckCombo(FCombo).InvalidateText;
end;

{ TRxDBLookupCombo }

constructor TxxxDBLookupCheckCombo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF WIN32}
  ControlStyle := ControlStyle + [csReplicatable] - [csSetCaption];
{$ELSE}
  ControlStyle := [csFramed, csOpaque];
{$ENDIF}
  Width := 145;
  Height := 0;
  FDataList := TxxxPopupDataList.Create(Self);
  FDataList.Visible := False;
  FDataList.Parent := Self;
  FDataList.OnMouseUp := ListMouseUp;
  FButtonWidth := GetSystemMetrics(SM_CXVSCROLL);
  FDropDownCount := 8;
  FDisplayValues := TStringList.Create;
  FSelImage := TPicture.Create;
{$IFNDEF WIN32}
  FBtnGlyph := TBitmap.Create;
  { Load ComboBox button glyph }
  FBtnGlyph.Handle := LoadBitmap(0, PChar(32738));
  FBtnDisabled := CreateDisabledBitmap(FBtnGlyph, clBlack);
{$ENDIF}
  Height := {GetMinHeight}21;
  FIgnoreCase := True;
  FEscapeClear := True;

  FListStyle := [];
//  FMaxComboItems := 64;
  FKeepSelectionForm := False;

  FAdvanced := TAdvanced.Create(Self);

  FKeyValues := TStringList.Create;
  FKeyValues.Duplicates := dupError;
end;

destructor TxxxDBLookupCheckCombo.Destroy;
begin
  SetLength(FKeyValuesFloat, 0);
  FKeyValuesFloat := nil;
  FKeyValues.Free;
  FKeyValues := nil;
{$IFNDEF WIN32}
  FBtnDisabled.Free;
  FBtnGlyph.Free;
{$ENDIF}
  FSelImage.Free;
  FSelImage := nil;
  FDisplayValues.Free;
  FDisplayValues := nil;

  inherited Destroy;
end;

procedure TxxxDBLookupCheckCombo.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
{$IFDEF WIN32}
    if NewStyleControls and Ctl3D then ExStyle := ExStyle or WS_EX_CLIENTEDGE
    else Style := Style or WS_BORDER;
{$ELSE}
    Style := Style or WS_BORDER;
{$ENDIF}
end;

procedure TxxxDBLookupCheckCombo.CloseUp(Accept: Boolean);
var
  ListValue: string;
begin
  if FListVisible then
    begin
    if GetCapture <> 0 then
      SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
    ListValue := FDataList.Value;
    SetWindowPos(FDataList.Handle, 0, 0, 0, 0, 0, SWP_NOZORDER or
      SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE or SWP_HIDEWINDOW);
    FListVisible := False;
    FDataList.LookupSource := nil;
    Invalidate;
    FSearchText := '';
    FDataList.FSearchText := '';
    if Accept and CanModify and (Value <> ListValue) then
      SelectKeyValue(ListValue);
    if CanFocus then SetFocus;
    if Assigned(FOnCloseUp) then FOnCloseUp(Self);
  end;
end;

procedure TxxxDBLookupCheckCombo.DropDown;
var
  P: TPoint;
  I, Y: Integer;
  S: string;
begin
  if not FListVisible and {FListActive} CanModify then
    begin
    if Assigned(FOnDropDown) then
      FOnDropDown(Self);
    FDataList.Color := Color;
    FDataList.Font := Font;
    FDataList.ItemHeight := ItemHeight;
    FDataList.ReadOnly := not CanModify;
    FDataList.EmptyValue := EmptyValue;
    FDataList.DisplayEmpty := DisplayEmpty;
    FDataList.DisplaySelectAll := DisplaySelectAll;
    FDataList.EmptyItemColor := EmptyItemColor;
    FDataList.RowCount := FDropDownCount;
    FDataList.LookupField := FLookupFieldName;
    FDataList.ListStyle := FListStyle;
    FDataList.FieldsDelimiter := FFieldsDelim;
    FDataList.IgnoreCase := FIgnoreCase;
    FDataList.IndexSwitch := FIndexSwitch;
    FDataList.OnGetImage := OnGetImage;
    if FDisplayField <> nil then
      FAlignment := FDisplayField.Alignment;
    S := '';
    for I := 0 to FListFields.Count - 1 do
      S := S + TField(FListFields[I]).FieldName + ';';
    FDataList.LookupDisplay := S;
    FDataList.LookupDisplayIndex := FListFields.IndexOf(FDisplayField);
    {FDataList.FLockPosition := True;}
    if FAutorefresh then
      begin
      FLookupLink.DataSource.DataSet.Close;
      FLookupLink.DataSource.DataSet.Open;
      end;
    try
      FDataList.LookupSource := FLookupLink.DataSource;
    finally
      {FDataList.FLockPosition := False;}
    end;
    FDataList.SetValueKey(Value);
    {FDataList.KeyValueChanged;}
    if FDropDownWidth > 0 then
      FDataList.Width := FDropDownWidth
    else if FDropDownWidth < 0 then
      FDataList.Width := Max(Width, FDataList.GetWindowWidth)
    else if FDataList.FSetWidth > 0 then
      FDataList.Width := FDataList.FSetWidth
    else
      FDataList.Width := Width;
    if FDataList.FSetHeight > 0 then
      FDataList.Height := FDataList.FSetHeight;
    P := Parent.ClientToScreen(Point(Left, Top));
    Y := P.Y + Height;
    if Y + FDataList.Height > Screen.Height then
      Y := P.Y - FDataList.Height;
    case FDropDownAlign of
      daRight: Dec(P.X, FDataList.Width - Width);
      daCenter: Dec(P.X, (FDataList.Width - Width) div 2);
    end;
    if P.X + FDataList.Width > Screen.Width then
      P.X := Screen.Width - FDataList.Width;
    SetWindowPos(FDataList.Handle, HWND_TOP, Max(P.X, 0), Y, 0, 0,
      SWP_NOSIZE or SWP_NOACTIVATE or SWP_SHOWWINDOW);
    FListVisible := True;
    InvalidateText;
    Repaint;
  end;
end;

function TxxxDBLookupCheckCombo.GetMinHeight: Integer;
begin
  Result := DefaultTextHeight + GetBorderSize + 3;
end;

procedure TxxxDBLookupCheckCombo.UpdateFieldText;
var
  I: Integer;
  S: string;
begin
  if FDisplayValues <> nil then
    FDisplayValues.Clear;
  if DisplayAllFields then
    begin
    S := '';
    for I := 0 to FListFields.Count - 1 do
      begin
      if S <> '' then
        S := S + FFieldsDelim + ' ';
      S := S + TField(FListFields[I]).DisplayText;
//      if (ListStyle = lsFixed) and Assigned(FDisplayValues) then
      if (not (lsDelimited in ListStyle)) and Assigned(FDisplayValues) then
        begin
        with TField(FListFields[I]) do
          FDisplayValues.AddObject(DisplayText, TObject(MakeLong(DisplayWidth, Ord(Alignment))));
        end;
      end;
    if S = '' then
      S := FDisplayField.DisplayText;
    inherited Text := S;
    end
  else
    inherited Text := FDisplayField.DisplayText;
  FAlignment := FDisplayField.Alignment;
end;

function TxxxDBLookupCheckCombo.GetDisplayValues(Index: Integer): string;
begin
  if Assigned(FDisplayValues) and (FDisplayValues.Count > Index) then
    Result := FDisplayValues[Index]
  else
    Result := FDisplayValue;
end;

function TxxxDBLookupCheckCombo.GetText: string;
begin
  Result := inherited Text;
end;

procedure TxxxDBLookupCheckCombo.InvalidateText;
var
  R: TRect;
begin
  SetRect(R, 1, 1, ClientWidth - FButtonWidth - 1, ClientHeight - 1);
{$IFNDEF WIN32}
  InflateRect(R, -1, -1);
{$ENDIF}
  InvalidateRect(Self.Handle, @R, False);
  UpdateWindow(Self.Handle);
end;

procedure TxxxDBLookupCheckCombo.KeyDown(var Key: Word; Shift: TShiftState);
var
  Delta: Integer;
begin
  if FListActive and ((Key = VK_UP) or (Key = VK_DOWN)) then
    if ssAlt in Shift then begin
      if FListVisible then CloseUp(True) else DropDown;
      Key := 0;
    end
    else if (not FListVisible) and (not ReadOnly) then begin
      if not LocateKey then FLookupLink.DataSet.First
      else begin
        if Key = VK_UP then Delta := -1 else Delta := 1;
        FLookupLink.DataSet.MoveBy(Delta);
      end;
      SelectKeyValue(FKeyField.AsString);
      Key := 0;
    end;
  if (Key <> 0) and FListVisible then FDataList.KeyDown(Key, Shift);
  inherited KeyDown(Key, Shift);
end;

procedure TxxxDBLookupCheckCombo.KeyPress(var Key: Char);
begin
  if FListVisible then begin
    if Key in [#13, #27] then begin
      CloseUp(Key = #13);
      Key := #0;
    end
    else FDataList.KeyPress(Key)
  end
  else begin
    if Key in [#32..#255] then begin
      DropDown;
      if FListVisible then FDataList.KeyPress(Key);
    end
    else if (Key = #27) and FEscapeClear and (not ValueIsEmpty(FValue)) and
      CanModify then
    begin
      ResetField;
      Key := #0;
    end;
  end;
  inherited KeyPress(Key);
  if (Key in [#13, #27]) then
    GetParentForm(Self).Perform(CM_DIALOGKEY, Byte(Key), 0);
end;

procedure TxxxDBLookupCheckCombo.DisplayValueChanged;
begin
  if FListActive and LocateDisplay then
    begin
    FValue := FKeyField.AsString;
    UpdateFieldText;
    end
  else
    begin
    FValue := FEmptyValue;
    inherited Text := DisplayEmpty;
    if FDisplayValues <> nil then FDisplayValues.Clear;
    FAlignment := taLeftJustify;
    end;
  UpdateDisplayValue;
  UpdateCurrentImage;
  Invalidate;
end;

procedure TxxxDBLookupCheckCombo.KeyValueChanged;
begin
{$IFDEF WIN32}
  if FLookupMode then begin
    if FDisplayValues <> nil then FDisplayValues.Clear;
    if FDataLink.Active and (FDataField <> nil) then begin
      inherited Text := FDataField.DisplayText;
      FAlignment := FDataField.Alignment;
    end
    else inherited Text := '';
  end else
{$ENDIF}
  if FListActive and LocateKey then
    UpdateFieldText
  else if FListActive then begin
    FValue := FEmptyValue;
    inherited Text := DisplayEmpty;
    if FDisplayValues <> nil then FDisplayValues.Clear;
    FAlignment := taLeftJustify;
  end
  else begin
    inherited Text := '';
    if FDisplayValues <> nil then FDisplayValues.Clear;
  end;
  UpdateDisplayValue;
  UpdateCurrentImage;
  Invalidate;
end;

procedure TxxxDBLookupCheckCombo.SetFieldsDelim(Value: Char);
begin
  if (FFieldsDelim <> Value) then begin
    inherited SetFieldsDelim(Value);
//    if (ListStyle = lsDelimited) and DisplayAllFields and
    if (lsDelimited in ListStyle) and DisplayAllFields and
      not (csReading in ComponentState) then KeyValueChanged;
  end;
end;

procedure TxxxDBLookupCheckCombo.SetListStyle(Value: TLookupListStyle);
begin
  if (FListStyle <> Value) then
    begin
    FListStyle := Value;
    if lsChecked in Value then
      FDataList.OnMouseUp := nil
    else
      FDataList.OnMouseUp := ListMouseUp;
    if DisplayAllFields and not (csReading in ComponentState) then
      KeyValueChanged;
    end;
end;

function TxxxDBLookupCheckCombo.GetDisplayAll: Boolean;
begin
{$IFDEF WIN32}
  if FLookupMode then Result := False else
{$ENDIF}
  Result := FDisplayAll;
end;

procedure TxxxDBLookupCheckCombo.SetDisplayAll(Value: Boolean);
begin
  if FDisplayAll <> Value then begin
{$IFDEF WIN32}
    if FLookupMode then FDisplayAll := False else
{$ENDIF}
    FDisplayAll := Value;
    if not (csReading in ComponentState)
      {$IFDEF WIN32} and not FLookupMode {$ENDIF} then
      KeyValueChanged
    else Invalidate;
  end;
end;

procedure TxxxDBLookupCheckCombo.ListLinkDataChanged;
begin
  if FDataLink.Active and FDataLink.DataSet.IsLinkedTo(LookupSource) then
    if FListActive then
      DataLinkRecordChanged(nil);
end;

procedure TxxxDBLookupCheckCombo.ListLinkActiveChanged;
begin
  inherited ListLinkActiveChanged;
  if FListActive and Assigned(FMasterField) then
    UpdateKeyValue
  else
    KeyValueChanged;
end;

procedure TxxxDBLookupCheckCombo.ListMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    CloseUp(PtInRect(FDataList.ClientRect, Point(X, Y)));
end;

procedure TxxxDBLookupCheckCombo.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  if Button = mbLeft then
    begin
    if CanFocus then
      SetFocus;
    if not FFocused then
      Exit;
    if FListVisible then
      CloseUp(False)
    else if {FListActive} CanModify then
      begin
      MouseCapture := True;
      FTracking := True;
      TrackButton(X, Y);
      if not ((lsChecked in FListStyle) and
//        (FLookupLink.DataSource.DataSet.RecordCount > FMaxComboItems)
        ((FSelectionFormClass <> nil) or (FSelectionForm <> nil))) then
//        begin
//        ShowSelectionWindow;
//        end
//      else
        DropDown;
      end;
    end;

  inherited MouseDown(Button, Shift, X, Y);
end;

procedure TxxxDBLookupCheckCombo.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  ListPos: TPoint;
  MousePos: TSmallPoint;
begin
  if FTracking then begin
    TrackButton(X, Y);
    if FListVisible then begin
      ListPos := FDataList.ScreenToClient(ClientToScreen(Point(X, Y)));
      if PtInRect(FDataList.ClientRect, ListPos) then begin
        StopTracking;
        MousePos := PointToSmallPoint(ListPos);
        SendMessage(FDataList.Handle, WM_LBUTTONDOWN, 0, Longint(MousePos));
        Exit;
      end;
    end;
  end;

  inherited MouseMove(Shift, X, Y);
end;

procedure TxxxDBLookupCheckCombo.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  StopTracking;
  if (lsChecked in FListStyle) and
    ((FSelectionFormClass <> nil) or (FSelectionForm <> nil)) then
    ShowSelectionWindow;

  inherited MouseUp(Button, Shift, X, Y);
end;

procedure TxxxDBLookupCheckCombo.UpdateCurrentImage;
begin
  FSelImage.Assign(nil);
  FSelMargin := 0;
  FSelImage.Graphic := inherited GetPicture(False, ValueIsEmpty(Value),
    FSelMargin);
end;

function TxxxDBLookupCheckCombo.GetPicture(Current, Empty: Boolean;
  var TextMargin: Integer): TGraphic;
begin
  if Current then begin
    TextMargin := 0;
    Result := nil;
    if (FSelImage <> nil) and (FSelImage.Graphic <> nil) and
      not FSelImage.Graphic.Empty then
    begin
      Result := FSelImage.Graphic;
      TextMargin := FSelMargin;
    end;
  end
  else Result := inherited GetPicture(Current, Empty, TextMargin);
end;

procedure TxxxDBLookupCheckCombo.PaintDisplayValues(Canvas: TCanvas; R: TRect;
  ALeft: Integer);
var
  I, LastIndex, TxtWidth: Integer;
  X, W, ATop, ARight: Integer;
  S: string;
begin
  if ColorToRGB(Self.Color) <> ColorToRGB(clBtnFace) then
    Canvas.Pen.Color := clBtnFace
  else
    Canvas.Pen.Color := clBtnShadow;
  LastIndex := FDisplayValues.Count - 1;
  TxtWidth := Canvas.TextWidth('M');
  ATop := Max(0, (HeightOf(R) - Canvas.TextHeight('Xy')) div 2);
  ARight := R.Right;
  Inc(R.Left, ALeft);
  for I := 0 to LastIndex do
    begin
    S := FDisplayValues[I];
    W := LoWord(Longint(FDisplayValues.Objects[I]));
    if I < LastIndex then
      W := W * TxtWidth + 4
    else
      W := ARight - R.Left;
    X := 2;
    R.Right := R.Left + W;
    case TAlignment(HiWord(Longint(FDisplayValues.Objects[I]))) of
      taRightJustify: X := W - Canvas.TextWidth(S) - 3;
      taCenter: X := (W - Canvas.TextWidth(S)) div 2;
    end;
    Canvas.TextRect(R, R.Left + Max(0, X), ATop, S);
    Inc(R.Left, W);
    if I < LastIndex then
      begin
      Canvas.MoveTo(R.Right, R.Top);
      Canvas.LineTo(R.Right, R.Bottom);
      Inc(R.Left);
      end;
    if R.Left >= ARight then
      Break;
    end;
end;

procedure TxxxDBLookupCheckCombo.Paint;
const
  TransColor: array[Boolean] of TColor = (clBtnFace, clWhite);
var
  W, X, Flags, TextMargin: Integer;
  Selected, DrawList, IsEmpty: Boolean;
  R, ImageRect: TRect;
  Image: TGraphic;
  Bmp: TBitmap;
  Alignment: TAlignment;
  i: integer;
{$IFNDEF WIN32}
  Target: TRect;
{$ENDIF}
begin
  Canvas.Font := Font;
  Canvas.Brush.Color := Color;
  Selected := FFocused and not FListVisible {$IFDEF WIN32} and
    not (csPaintCopy in ControlState) {$ENDIF};
  if Selected then
    begin
    Canvas.Font.Color := clHighlightText;
    Canvas.Brush.Color := clHighlight;
    end
  else if not Enabled and NewStyleControls then
    Canvas.Font.Color := clGrayText;

  if (lsChecked in FListStyle) then
    begin
    FText := '';
    if FDataList.FChecks.Count = 0 then
      FText := FDisplayEmpty
    else if FDataList.FSelectAll = True then
      FText := FDisplaySelectAll
    else
      begin
      for i := 0 to FDataList.FChecks.Count-1 do
        begin
        if (Length(FText) <> 0) and (Copy(FText,Length(FText),1) <> FFieldsDelim) then
          FText := FText + FFieldsDelim + ' ';
        FText := FText + FDataList.FChecks.Values[FDataList.FChecks.Names[i]];
        end;
      end;
    if FShowSelectionHint then
      begin
      if Length(FText) <= 80 then
        Hint := Copy(FText,1,80)
      else
        Hint := Copy(Ftext,1,77) + '...';
      end;
    if not Selected and NewStyleControls and Enabled and (FText = FDisplayEmpty) then
      Canvas.Font.Color := EmptyItemColor;
    end
  else
    FText := inherited Text;

  Alignment := FAlignment;
  Image := nil;
  IsEmpty := False;
  DrawList := DisplayAllFields;
{$IFDEF WIN32}
  if (csPaintCopy in ControlState) and (FDataField <> nil) then
    begin
    DrawList := False;
    if not (lsChecked in FListStyle) then
      FText := FDataField.DisplayText;
    Alignment := FDataField.Alignment;
    end;
{$ENDIF}

  TextMargin := 0;
  if FListVisible then
    begin
    DrawList := False;
    if FDataList.FSearchText <> '' then
      begin
      if not (lsChecked in FListStyle) then
        FText := FDataList.FSearchText;
      end
    else
      begin
      if FDataList.ValueIsEmpty(FDataList.Value) then
        begin
//        if not (lsChecked in FListStyle) then
        if FDataList.FSelectAll = True then
          FText := FDisplaySelectAll
        else
          FText := DisplayEmpty;

        IsEmpty := True;
        Image := GetPicture(False, True, TextMargin);
        end
      else if (FDataList.FKeyField.AsString = FDataList.Value) then
        begin
        if not (lsChecked in FListStyle) then
          FText := FDataList.FDisplayField.DisplayText;
        Image := FDataList.GetPicture(False, False, TextMargin);
        end
      else
        begin
        Image := GetPicture(True, False, TextMargin);
        end;
      end;
    end
  else
    begin
{$IFDEF WIN32}
    if (csPaintCopy in ControlState) then
      Image := nil
    else
{$ENDIF}
      begin
      if (lsChecked in ListStyle) then
        IsEmpty := FDataList.FChecks.Count = 0
      else
        IsEmpty := ValueIsEmpty(Value);
      Image := GetPicture(True, IsEmpty, TextMargin);
      end;
    end;
{$IFDEF RX_D4}
  if UseRightToLeftAlignment then
    ChangeBiDiModeAlignment(Alignment);
{$ENDIF}
  W := ClientWidth - FButtonWidth;
  if W > 4 then
    begin
    SetRect(R, 1, 1, W - 1, ClientHeight - 1);
{$IFNDEF WIN32}
    InflateRect(R, -1, -1);
{$ENDIF}
    if TextMargin > 0 then
      Inc(TextMargin);
    X := 2 + TextMargin;
    if not (FListVisible and (FDataList.FSearchText <> '')) and not DrawList then
      case Alignment of
        taRightJustify: X := W - Canvas.TextWidth(FText) - 6;
        taCenter: X := (W + TextMargin - Canvas.TextWidth(FText)) div 2;
      end;
    Bmp := TBitmap.Create;
    try
      with Bmp.Canvas do
        begin
        Font := Self.Canvas.Font;
        Brush := Self.Canvas.Brush;
        Pen := Self.Canvas.Pen;
        end;
{$IFDEF RX_D4}
      if (BiDiMode = bdRightToLeft) then
        begin
        Inc(X, FButtonWidth);
        Inc(R.Left, FButtonWidth);
        R.Right := ClientWidth;
        end;
      if SysLocale.MiddleEast then
        begin
        TControlCanvas(Self.Canvas).UpdateTextFlags;
        Bmp.Canvas.TextFlags := Self.Canvas.TextFlags;
        end;
{$ENDIF}
      Bmp.Width := WidthOf(R);
      Bmp.Height := HeightOf(R);
      ImageRect := Rect(0, 0, WidthOf(R), HeightOf(R));
//      if DrawList and (ListStyle = lsFixed) and (FDisplayValues <> nil) and
      if DrawList and (not (lsDelimited in ListStyle)) and (FDisplayValues <> nil) and
        (FDisplayValues.Count > 0) then
        begin
        if IsEmpty then
          begin
//          if not (lsChecked in FListStyle) then
            FText := DisplayEmpty;
          Bmp.Canvas.TextRect(ImageRect, X, Max(0, (HeightOf(R) -
            Canvas.TextHeight(FText)) div 2), FText);
          end
        else
          PaintDisplayValues(Bmp.Canvas, ImageRect, TextMargin);
        end
      else
        begin
        Bmp.Canvas.TextRect(ImageRect, X, Max(0, (HeightOf(R) -
          Canvas.TextHeight(FText)) div 2), FText);
        end;
      if Image <> nil then
        begin
        ImageRect.Right := ImageRect.Left + TextMargin + 2;
        DrawPicture(Bmp.Canvas, ImageRect, Image);
        end;
      Canvas.Draw(R.Left, R.Top, Bmp);
    finally
      Bmp.Free;
    end;
    if Selected then Canvas.DrawFocusRect(R);
  end;
  SetRect(R, W, 0, ClientWidth, ClientHeight);
{$IFDEF RX_D4}
  if (BiDiMode = bdRightToLeft) then
    begin
    R.Left := 0;
    R.Right:= FButtonWidth;
    end;
{$ENDIF}
{$IFDEF WIN32}
  if (not FListActive) or (not Enabled) or ReadOnly then
    Flags := DFCS_SCROLLCOMBOBOX or DFCS_INACTIVE
  else if FPressed then
    Flags := DFCS_SCROLLCOMBOBOX or DFCS_FLAT or DFCS_PUSHED
  else
    Flags := DFCS_SCROLLCOMBOBOX;
  DrawFrameControl(Canvas.Handle, R, DFC_SCROLL, Flags);
{$ELSE}
  if NewStyleControls then begin
    InflateRect(R, -1, -1); Dec(R.Left);
  end
  else begin
    InflateRect(R, 1, 1); Inc(R.Left);
  end;
  R := DrawButtonFace(Canvas, R, 1, bsWin31, False, FPressed, False);
  { draw button glyph }
  if (not FListActive) or (not Enabled) or ReadOnly then
    Bmp := FBtnDisabled
  else
    Bmp := FBtnGlyph;
  Target := Bounds(R.Left, R.Top, Bmp.Width, Bmp.Height);
  OffsetRect(Target, ((R.Right - R.Left) div 2) - (Bmp.Width div 2),
    ((R.Bottom - R.Top) div 2) - (Bmp.Height div 2));
  { Canvas.Draw(Target.Left, Target.Top, Bmp); }
  DrawBitmapTransparent(Canvas, Target.Left, Target.Top, Bmp,
    TransColor[Bmp = FBtnGlyph]);
{$ENDIF}
end;

procedure TxxxDBLookupCheckCombo.ResetField;
begin
  if FListVisible then CloseUp(False);
  inherited ResetField;
  UpdateCurrentImage;
  Invalidate;
end;

procedure TxxxDBLookupCheckCombo.StopTracking;
begin
  if FTracking then begin
    TrackButton(-1, -1);
    FTracking := False;
    MouseCapture := False;
  end;
end;

procedure TxxxDBLookupCheckCombo.TrackButton(X, Y: Integer);
var
  NewState: Boolean;
begin
  NewState := PtInRect(Rect(ClientWidth - FButtonWidth, 0, ClientWidth,
    ClientHeight), Point(X, Y));
  if FPressed <> NewState then begin
    FPressed := NewState;
    Repaint;
  end;
end;

procedure TxxxDBLookupCheckCombo.UpdateDisplayEmpty(const Value: string);
begin
  if Text = FDisplayEmpty then inherited Text := Value;
end;

procedure TxxxDBLookupCheckCombo.Click;
begin
  inherited Click;
  Change;
end;

procedure TxxxDBLookupCheckCombo.CMCancelMode(var Message: TCMCancelMode);
begin
  if (Message.Sender <> Self) and (Message.Sender <> FDataList) then
    CloseUp(False);
end;

{$IFDEF WIN32}
procedure TxxxDBLookupCheckCombo.CMCtl3DChanged(var Message: TMessage);
begin
  if NewStyleControls then begin
    RecreateWnd;
    if not (csReading in ComponentState) and (Height < GetMinHeight) then
      Height := GetMinHeight;
  end;
  inherited;
end;

procedure TxxxDBLookupCheckCombo.CNKeyDown(var Message: TWMKeyDown);
begin
  if not (csDesigning in ComponentState) then
    if (Message.CharCode in [VK_RETURN, VK_ESCAPE]) and FListVisible and
      FLookupMode and FDataLink.DataSourceFixed then
    begin
      CloseUp(Message.CharCode = VK_RETURN);
      Message.Result := 1;
      Exit;
    end;
  inherited;
end;
{$ENDIF WIN32}

procedure TxxxDBLookupCheckCombo.CMFontChanged(var Message: TMessage);
begin
  inherited;
  if not (csReading in ComponentState) then
    Height := Max(Height, GetMinHeight);
end;

procedure TxxxDBLookupCheckCombo.CMEnabledChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

{$IFDEF WIN32}
procedure TxxxDBLookupCheckCombo.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;
{$ENDIF}

procedure TxxxDBLookupCheckCombo.WMCancelMode(var Message: TMessage);
begin
  StopTracking;
  inherited;
end;

procedure TxxxDBLookupCheckCombo.WMGetDlgCode(var Message: TMessage);
begin
  inherited;
  Message.Result := DLGC_BUTTON or DLGC_WANTALLKEYS or DLGC_WANTARROWS
    or DLGC_WANTCHARS;
end;

procedure TxxxDBLookupCheckCombo.WMKillFocus(var Message: TWMKillFocus);
begin
  inherited;
  CloseUp(False);
end;

procedure TxxxDBLookupCheckCombo.WMSetCursor(var Message: TWMSetCursor);
var
  P: TPoint;
begin
  GetCursorPos(P);
  with ClientRect do
    if PtInRect(Bounds(Right - FButtonWidth, Top, FButtonWidth, Bottom - Top),
      ScreenToClient(P)) then
{$IFDEF WIN32}
      Windows.SetCursor(LoadCursor(0, IDC_ARROW))
{$ELSE}
      WinProcs.SetCursor(LoadCursor(0, IDC_ARROW))
{$ENDIF}
    else inherited;
end;

procedure TxxxDBLookupCheckCombo.WMSize(var Message: TWMSize);
begin
  inherited;
  if not (csReading in ComponentState) and (Height < GetMinHeight) then
    Height := GetMinHeight
  else begin
    if (csDesigning in ComponentState) then
      FDataList.SetBounds(0, Height + 1, 10, 10);
  end;
end;

{$IFDEF RX_D4}
procedure TxxxDBLookupCheckCombo.CMBiDiModeChanged(var Message: TMessage);
begin
  inherited;
  FDataList.BiDiMode := BiDiMode;
end;
{$ENDIF}

procedure TxxxDBLookupCheckCombo.SetShowSelectionHint(
  const Value: boolean);
begin
  if FShowSelectionHint <> Value then
    begin
    FShowSelectionHint := Value;
    if Value then
      ShowHint := True;
    end;
end;

//procedure TxxxDBLookupCheckCombo.SetMaxComboItems(const Value: integer);
//begin
//  FMaxComboItems := Value;
//end;

function TxxxDBLookupCheckCombo.GetKeyValues: TStrings;
var
  i: integer;
begin
  FKeyValues.Clear;
  for i := 0 to FDataList.FChecks.Count-1 do
    FKeyValues.Add(FDataList.FChecks.Names[i]);
  Result := FKeyValues;
end;

procedure TxxxDBLookupCheckCombo.SetKeyValues(const Value: TStrings);
var
  i: integer;
  vBookmark: TBookmark;
  p: integer;
begin
  if Value <> nil then
    begin
    FDataList.FChecks.Clear;
    with LookupSource.DataSet do
      begin
      DisableControls;
      vBookmark := GetBookmark;
      for i := 0 to Value.Count-1 do
        begin
        if Locate(LookupField, Value[i], []) then
          begin
          p := Pos(';',LookupDisplay);
          if p > 0 then
            FDataList.FChecks.Add(FieldByName(LookupField).AsString+'='+
                                  FieldByName(Copy(LookupDisplay,1,Pos(';',LookupDisplay)-1)).AsString)
          else
            FDataList.FChecks.Add(FieldByName(LookupField).AsString+'='+
                                  FieldByName(LookupDisplay).AsString);
          end;
        end;
      GotoBookmark(vBookmark);
      FreeBookmark(vBookmark);
      EnableControls;
      end;
    Invalidate;
    end;
end;

function TxxxDBLookupCheckCombo.GetKeyValuesFloat: TFloatArray;
var
  i: integer;
begin
  SetLength(FKeyValuesFloat, 0);
  for i := 0 to FDataList.FChecks.Count-1 do
    begin
    SetLength(FKeyValuesFloat, Length(FKeyValuesFloat) + 1);
    FKeyValuesFloat[High(FKeyValuesFloat)] := StrToFloat(FDataList.FChecks.Names[i]);
    end;
  Result := FKeyValuesFloat;
{
  if lcb.KeyValuesStr.Count > 0 then
    try
      for i := 0 to lcb.KeyValuesStr.Count-1 do
        if lcb.KeyValuesStr[i] <> '' then
          begin
          SetLength(Result, Length(Result)+1);
          Result[High(Result)] := StrToFloat(lcb.KeyValuesStr[i]);
          end;
    except
      on E: EConvertError do
        begin
        SetLength(Result, 0);
        raise;
        end;
    end;
}
end;

procedure TxxxDBLookupCheckCombo.SetKeyValuesFloat(const Value: TFloatArray);
var
  vValues: TStringList;
  i: integer;
begin
  vValues := TStringList.Create;
  for i := Low(Value) to High(Value) do
    vValues.Add(FloatToStr(Value[i]));
  SetKeyValues(vValues);
  vValues.Free;
end;

procedure TxxxDBLookupCheckCombo.SetKeyValuesAll;
var
  vBookmark: TBookmark;
  p: integer;
begin
  FDataList.FChecks.Clear;
  if DisplaySelectAll = '' then Exit;
  with LookupSource.DataSet do
    begin
    DisableControls;
    vBookmark := GetBookmark;
    First;
    FDataList.MaxChecksCount := 0;
    while not Eof do
      begin
      p := Pos(';',LookupDisplay);
      if p > 0 then
        FDataList.FChecks.Add(FieldByName(LookupField).AsString+'='+
                              FieldByName(Copy(LookupDisplay,1,Pos(';',LookupDisplay)-1)).AsString)
      else
        FDataList.FChecks.Add(FieldByName(LookupField).AsString+'='+
                              FieldByName(LookupDisplay).AsString);
      FDataList.MaxChecksCount := FDataList.MaxChecksCount + 1;
      Next;
      end;
    GotoBookmark(vBookmark);
    FreeBookmark(vBookmark);
    EnableControls;
    end;
  FDataList.FSelectAll := True;
end;

procedure TxxxDBLookupCheckCombo.SetDefaults(D: array of const);
var
  Ds: TStringList;
  i: integer;
  Str: string;
begin
  if Length(D) > 0 then
    begin
    Ds := TStringList.Create;
    for i := Low(D) to High(D) do
      begin
      Str := '';
      case D[i].VType of
        vtInteger:    Str := IntToStr(D[i].VInteger);
//        vtBoolean:    Result := Result + BoolChars[D[i].VBoolean];
        vtChar:       Str := D[i].VChar;
        vtExtended:   Str := FloatToStr(D[i].VExtended^);
        vtString:     Str := D[i].VString^;
        vtPChar:      Str := D[i].VPChar;
//        vtObject:     Result := Result + VObject.ClassName;
//        vtClass:      Result := Result + VClass.ClassName;
        vtAnsiString: Str := string(D[i].VAnsiString);
        vtCurrency:   Str := CurrToStr(D[i].VCurrency^);
        vtVariant:    Str := string(D[i].VVariant^);
        vtInt64:      Str := IntToStr(D[i].VInt64^);
        end;

      Ds.Add(Str);
      end;
    SetKeyValues(Ds);
    Ds.Free;
    end;
end;

procedure TxxxDBLookupCheckCombo.SetSelectionFormClass(
  const Value: TSelectionFormClass);
begin
  if FSelectionFormClass <> Value then
    begin
    if Assigned (FSelectionForm) then
      FSelectionForm := nil;
    FSelectionFormClass := Value;
    end;
end;

procedure TxxxDBLookupCheckCombo.SetKeepSelectionForm(
  const Value: boolean);
begin
  FKeepSelectionForm := Value;
end;

function TxxxDBLookupCheckCombo.GetSelectionForm: TForm;
begin
  if Assigned (FSelectionFormClass) then
    if not Assigned (FSelectionForm) then
      FSelectionForm := FSelectionFormClass.Create(Self);
  Result := FSelectionForm;
end;

procedure TxxxDBLookupCheckCombo.SetAutorefresh(const Value: boolean);
begin
  FAutorefresh := Value;
end;


{ TPopupDataWindow }

//constructor TPopupDataWindow.Create(AOwner: TComponent);
//begin
//  inherited Create(AOwner);
//  FEditor := TWinControl(AOwner);
//  Visible := False;
//  Parent := FEditor;
//  OnMouseUp := PopupMouseUp;
//end;

//procedure TPopupDataWindow.InvalidateEditor;
//var
//  R: TRect;
//begin
//  if (FEditor is TCustomComboEdit) then begin
//    with TComboEdit(FEditor) do
//      SetRect(R, 0, 0, ClientWidth - Button.Width - 2, ClientHeight + 1);
//  end
//  else R := FEditor.ClientRect;
//  InvalidateRect(FEditor.Handle, @R, False);
//  UpdateWindow(FEditor.Handle);
//end;

//procedure TPopupDataWindow.Click;
//begin
//  inherited Click;
//  if Value <> '' then
//    with TRxLookupEdit(FEditor) do begin
//      if not (FChanging or ReadOnly) then begin
//        FChanging := True;
//        try
//          Text := Self.DisplayValue;
//          if AutoSelect then SelectAll;
//        finally
//          FChanging := False;
//        end;
//      end;
//    end;
//  InvalidateEditor;
//end;

//procedure TPopupDataWindow.DisplayValueChanged;
//begin
//  if not FLockPosition then
//    if FListActive then begin
//      if LocateDisplay then
//        FValue := FKeyField.AsString
//      else begin
//        FLookupLink.DataSet.First;
//        FValue := EmptyValue;
//      end;
//    end
//    else FValue := FEmptyValue;
//end;

//procedure TPopupDataWindow.KeyPress(var Key: Char);
//begin
//  inherited KeyPress(Key);
//  InvalidateEditor;
//end;

//procedure TPopupDataWindow.PopupMouseUp(Sender: TObject; Button: TMouseButton;
//  Shift: TShiftState; X, Y: Integer);
//begin
//  if Button = mbLeft then CloseUp(PtInRect(Self.ClientRect, Point(X, Y)));
//end;

//procedure TPopupDataWindow.CloseUp(Accept: Boolean);
//begin
//  if Assigned(FCloseUp) then FCloseUp(Self, Accept);
//end;

//function TPopupDataWindow.GetPicture(Current, Empty: Boolean;
//  var TextMargin: Integer): TGraphic;
//begin
//  TextMargin := 0;
//  Result := nil;
//  if Assigned(FOnGetImage) then FOnGetImage(FEditor, Empty, Result, TextMargin);
//end;

//procedure TPopupDataWindow.Hide;
//begin
//  SetWindowPos(Handle, 0, 0, 0, 0, 0, SWP_NOZORDER or
//    SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE or SWP_HIDEWINDOW);
//  Visible := False;
//end;

//procedure TPopupDataWindow.Show(Origin: TPoint);
//begin
//  SetWindowPos(Handle, HWND_TOP, Origin.X, Origin.Y, 0, 0,
//    SWP_NOACTIVATE or SWP_SHOWWINDOW or SWP_NOSIZE);
//  Visible := True;
//end;

{ TRxLookupEdit }

//constructor TRxLookupEdit.Create(AOwner: TComponent);
//begin
//  inherited Create(AOwner);
//  FDropDownCount := 8;
//  FPopupOnlyLocate := True;
//  ControlState := ControlState + [csCreating];
//  try
//    FPopup := TPopupDataWindow.Create(Self);
//    TPopupDataWindow(FPopup).OnCloseUp := PopupCloseUp;
//    GlyphKind := gkDropDown; { force update }
//  finally
//    ControlState := ControlState - [csCreating];
//  end;
//end;

//destructor TRxLookupEdit.Destroy;
//begin
//  if FPopup <> nil then
//    with TPopupDataWindow(FPopup) do begin
//      OnCloseUp := nil;
//      OnGetImage := nil;
//    end;
//  FPopup.Free;
//  FPopup := nil;
//  inherited Destroy;
//end;

//procedure TRxLookupEdit.SetDropDownCount(Value: Integer);
//begin
//  if Value < 1 then Value := 1;
//  if Value > 50 then Value := 50;
//  FDropDownCount := Value;
//end;

//function TRxLookupEdit.GetListStyle: TLookupListStyle;
//begin
//  Result := TPopupDataWindow(FPopup).ListStyle;
//end;

//procedure TRxLookupEdit.SetListStyle(Value: TLookupListStyle);
//begin
//  TPopupDataWindow(FPopup).ListStyle := Value;
//end;

//function TRxLookupEdit.GetFieldsDelim: Char;
//begin
//  Result := TPopupDataWindow(FPopup).FieldsDelimiter;
//end;

//procedure TRxLookupEdit.SetFieldsDelim(Value: Char);
//begin
//  TPopupDataWindow(FPopup).FieldsDelimiter := Value;
//end;

//function TRxLookupEdit.GetLookupDisplay: string;
//begin
//  Result := TPopupDataWindow(FPopup).LookupDisplay;
//end;

//procedure TRxLookupEdit.SetLookupDisplay(const Value: string);
//begin
//  TPopupDataWindow(FPopup).LookupDisplay := Value;
//end;

//function TRxLookupEdit.GetDisplayIndex: Integer;
//begin
//  Result := TPopupDataWindow(FPopup).LookupDisplayIndex;
//end;

//procedure TRxLookupEdit.SetDisplayIndex(Value: Integer);
//begin
//  TPopupDataWindow(FPopup).LookupDisplayIndex := Value;
//end;

//function TRxLookupEdit.GetLookupField: string;
//begin
//  Result := TPopupDataWindow(FPopup).LookupField;
//end;

//procedure TRxLookupEdit.SetLookupField(const Value: string);
//begin
//  TPopupDataWindow(FPopup).LookupField := Value;
//end;

//function TRxLookupEdit.GetLookupSource: TDataSource;
//begin
//  Result := TPopupDataWindow(FPopup).LookupSource;
//end;

//procedure TRxLookupEdit.SetLookupSource(Value: TDataSource);
//begin
//  TPopupDataWindow(FPopup).LookupSource := Value;
//end;

//function TRxLookupEdit.GetOnGetImage: TGetImageEvent;
//begin
//  Result := TPopupDataWindow(FPopup).OnGetImage;
//end;

//procedure TRxLookupEdit.SetOnGetImage(Value: TGetImageEvent);
//begin
//  TPopupDataWindow(FPopup).OnGetImage := Value;
//end;

//function TRxLookupEdit.GetLookupValue: string;
//begin
//  TPopupDataWindow(FPopup).DisplayValue := Text;
//  Result := TPopupDataWindow(FPopup).Value;
//end;

//procedure TRxLookupEdit.SetLookupValue(const Value: string);
//begin
//  TPopupDataWindow(FPopup).Value := Value;
//  Text := TPopupDataWindow(FPopup).DisplayValue;
//end;

//procedure TRxLookupEdit.ShowPopup(Origin: TPoint);
//begin
//  TPopupDataWindow(FPopup).Show(Origin);
//end;

//procedure TRxLookupEdit.HidePopup;
//begin
//  TPopupDataWindow(FPopup).Hide;
//end;

//procedure TRxLookupEdit.PopupDropDown(DisableEdit: Boolean);
//begin
//  if not (ReadOnly or PopupVisible) then begin
//    if Assigned(FOnDropDown) then FOnDropDown(Self);
//    with TPopupDataWindow(FPopup) do begin
//      Color := Self.Color;
//      Font := Self.Font;
//      if FDropDownWidth > 0 then
//        Width := FDropDownWidth
//      else if FDropDownWidth < 0 then
//        Width := Max(Self.Width, GetWindowWidth)
//      else Width := Self.Width;
//      ReadOnly := Self.ReadOnly;
//      RowCount := FDropDownCount;
//    end;
//  end;
//  inherited PopupDropDown(False);
//end;

//procedure TRxLookupEdit.KeyDown(var Key: Word; Shift: TShiftState);
//begin
//  if (Key in [VK_PRIOR, VK_NEXT, VK_UP, VK_DOWN]) and
//    PopupVisible then
//  begin
//    TPopupDataWindow(FPopup).KeyDown(Key, Shift);
//    Key := 0;
//  end;
//  inherited KeyDown(Key, Shift);
//  FIgnoreChange := (SelLength > 0) or (Key = VK_BACK);
//  if not (PopupVisible or ReadOnly) and (Key in [VK_UP, VK_DOWN]) and
//    (Shift = []) then
//  begin
//    with TPopupDataWindow(FPopup) do begin
//      KeyDown(Key, Shift);
//      if Value <> EmptyValue then Key := 0;
//    end;
//  end;
//end;

//procedure TRxLookupEdit.KeyPress(var Key: Char);
//begin
//  inherited KeyPress(Key);
//  FIgnoreChange := (SelLength > 0) or (Key = Char(VK_BACK));
//end;

//procedure TRxLookupEdit.Change;
//begin
//  if PopupOnlyLocate or PopupVisible then
//    inherited Change
//  else begin
//    PopupChange;
//    DoChange;
//  end;
//end;

//procedure TRxLookupEdit.PopupChange;
//var
//  S: string;
//  Len: Integer;
//begin
//  if FChanging or FIgnoreChange or ReadOnly then begin
//    FIgnoreChange := False;
//    Exit;
//  end;
//  FChanging := True;
//  try
//    S := Text;
//    if TPopupDataWindow(FPopup).SearchText(S) then begin
//      Len := Length(Text);
//      Text := TPopupDataWindow(FPopup).DisplayValue;
//      SelStart := Len;
//      SelLength := Length(Text) - Len;
//    end
//    else with TPopupDataWindow(FPopup) do Value := EmptyValue;
//  finally
//    FChanging := False;
//  end;
//end;

{$IFDEF WIN32}
//procedure TRxLookupEdit.SetPopupValue(const Value: Variant);
{$ELSE}
//procedure TRxLookupEdit.SetPopupValue(const Value: string);
{$ENDIF}
//begin
{$IFDEF WIN32}
//  if VarIsNull(Value) or VarIsEmpty(Value) then
//    TPopupDataWindow(FPopup).Value := TPopupDataWindow(FPopup).EmptyValue
//  else
{$ENDIF}
//    TPopupDataWindow(FPopup).DisplayValue := Value;
//end;

{$IFDEF WIN32}
//function TRxLookupEdit.GetPopupValue: Variant;
{$ELSE}
//function TRxLookupEdit.GetPopupValue: string;
{$ENDIF}
//begin
//  with TPopupDataWindow(FPopup) do
//    if Value <> EmptyValue then Result := DisplayValue
//    else Result := Self.Text;
//end;

{$IFDEF WIN32}
//function TRxLookupEdit.AcceptPopup(var Value: Variant): Boolean;
{$ELSE}
//function TRxLookupEdit.AcceptPopup(var Value: string): Boolean;
{$ENDIF}
//begin
//  Result := True;
//  if Assigned(FOnCloseUp) then FOnCloseUp(Self);
//end;

procedure TxxxDBLookupCheckCombo.ShowSelectionWindow;
begin
  if not Assigned (FSelectionFormClass) then Exit;

  if not Assigned (FSelectionForm) then
    FSelectionForm := FSelectionFormClass.Create(Self);
  FSelectionForm.ShowModal;

  if not FKeepSelectionForm then
    begin
    FSelectionForm.Free;
    FSelectionForm := nil;
    end;
end;

{ TAdvanced }

constructor TAdvanced.Create(AOwner: TxxxDBLookupCheckCombo);
begin
  inherited Create;
  FOwner := AOwner;
end;

destructor TAdvanced.Destroy;
begin
  inherited;
end;

function TAdvanced.GetAutorefresh: boolean;
begin
  Result := FOwner.FAutorefresh;
end;

function TAdvanced.GetKeepSelectionForm: boolean;
begin
  Result := FOwner.FKeepSelectionForm;
end;

function TAdvanced.GetKeyValues: TStrings;
begin
  Result := FOwner.KeyValuesStr;
end;

//function TAdvanced.GetMaxComboItems: integer;
//begin
//  Result := FOwner.FMaxComboItems;
//end;

function TAdvanced.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

function TAdvanced.GetSelectionForm: TForm;
begin
  Result := FOwner.GetSelectionForm;
end;

function TAdvanced.GetSelectionFormClass: TSelectionFormClass;
begin
  Result := FOwner.FSelectionFormClass;
end;

function TAdvanced.GetShowSelectionHint: boolean;
begin
  Result := FOwner.FShowSelectionHint;
end;

procedure TAdvanced.SetAutorefresh(const Value: boolean);
begin
  FOwner.SetAutoRefresh(Value);
end;

procedure TAdvanced.SetKeepSelectionForm(Value: boolean);
begin
  FOwner.SetKeepSelectionForm(Value);
end;

procedure TAdvanced.SetKeyValues(const Value: TStrings);
begin
  FOwner.KeyValuesStr := Value;
end;

//procedure TAdvanced.SetMaxComboItems(Value: integer);
//begin
//  FOwner.SetMaxComboItems(Value);
//end;

procedure TAdvanced.SetSelectionFormClass(Value: TSelectionFormClass);
begin
  FOwner.SetSelectionFormClass(Value);
end;

procedure TAdvanced.SetShowSelectionHint(Value: boolean);
begin
  FOwner.SetShowSelectionHint(Value);
end;

{ TFormClassEditor }

{
function TFormClassEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [paValueList,paSortList,paRevertable];
end;

procedure TFormClassEditor.GetValues(Proc: TGetStrProc);
var
  I: Integer;
  Values: TStringList;
begin
  Values := TStringList.Create;
  try
    GetValueList(Values); // достать список форм проекта
    for i := 0 to Values.Count-1 do
      Proc(Values[i]);
  finally
    Values.Free;
  end;
end;
}

end.
