unit frm27_LinkerForm;

interface

uses
  frm00_ParentForm, Oracle, Classes, ActnList, Db, OracleData,
  fm31_FilterFrame, Forms, fmSeach, DBCtrls, Buttons, Grids, DBGrids,
  xxxDBGrid, StdCtrls, Controls, ExtCtrls, frm04_ListForm, Variants,
  System.Actions;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  ComCtrls, ToolWin,

type
  TMoveType = (mtToLeft, mtToRight);

  TDefPosition = (dpFirst, dpLast);

  TMoveProc = procedure of object;

  Tfrm27_Linker = class(Tfrm00_Parent)
    Panel2: TPanel;
    paLeft: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    odsLookup: TOracleDataSet;
    dsLookup: TDataSource;
    paRight: TPanel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Label1: TLabel;
    lcName: TDBLookupComboBox;
    ActionList1: TActionList;
    actMoveToRight: TAction;
    actMoveAllToRight: TAction;
    actMoveAllToLeft: TAction;
    actMoveToLeft: TAction;
    paCenter: TPanel;
    paButtons: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    oqToLeft: TOracleQuery;
    oqToRight: TOracleQuery;
    SpeedButton5: TSpeedButton;
    actSelect: TAction;
    oqSelect: TOracleQuery;
    SpeedButton6: TSpeedButton;
    actClearSelect: TAction;
    oqClearSelect: TOracleQuery;
    xxxDBGrid: TxxxDBGrid;
    fmSeachFrame: TfmSeachFrame;
    fm31_Filter: Tfm31_Filter;
    procedure FormCreate(Sender: TObject); virtual;
    procedure actMoveToTopExecute(Sender: TObject);
    procedure actMoveAllToTopExecute(Sender: TObject);
    procedure actMoveAllToBottomExecute(Sender: TObject);
    procedure actMoveToBottomExecute(Sender: TObject);
    procedure odsLookupAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actMoveToRightExecute(Sender: TObject);
    procedure actMoveAllToRightExecute(Sender: TObject);
    procedure actMoveAllToLeftExecute(Sender: TObject);
    procedure actMoveToLeftExecute(Sender: TObject);
    procedure actMoveToRightUpdate(Sender: TObject);
    procedure actMoveAllToLeftUpdate(Sender: TObject);
    procedure actSelectExecute(Sender: TObject);
    procedure actClearSelectUpdate(Sender: TObject);
    procedure actClearSelectExecute(Sender: TObject);
    procedure actSelectUpdate(Sender: TObject);
    procedure lcNameCloseUp(Sender: TObject);
    procedure fmSeachFramespbStartSearchClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FLeftForm: Tfrm04_List;
    FRightForm: Tfrm04_List;
    //
    FLeftID: Double;
    FRightID: Double;
    //

    function GetMainDataSet: TOracleDataSet;
    //
    procedure SelectAll(const ADBGrid: TxxxDBGrid);
    procedure SelectItem;
    procedure ClearSelect;
    procedure MoveRecords(const AMoveType: TMoveType; const AMoveAll: Boolean);

    function GetLeftDataSet: TOracleDataSet;
    function GetLeftDBGrid: TxxxDBGrid;
    function GetRightDataSet: TOracleDataSet;
    function GetRightDBGrid: TxxxDBGrid;
  protected
    procedure PlaceFormToPanel(const AForm: Tfrm00_Parent; const AControl: TWinControl);

    function DefPosition: TDefPosition; virtual;
    //
    procedure OnSelectItem; virtual;
    procedure OnClearSelect; virtual;
    //
    procedure OnMoveToRight; virtual;
    procedure OnMoveToLeft; virtual;
    //
    function GetMasterFieldName: string; virtual;
    //
    procedure InitLeftForm; virtual;
    procedure InitRightForm; virtual;
  public
    ActLookup: TDBLookupComboBox;

    procedure SetLookup; virtual;

    procedure RefreshAfter; virtual;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); virtual;


    procedure RefreshLookUp; virtual;
    //
    property LeftForm: Tfrm04_List read FLeftForm write FLeftForm;
    property RightForm: Tfrm04_List read FRightForm write FRightForm;
    //
    property MasterFieldName: string read GetMasterFieldName;
    property MainDataSet: TOracleDataSet read GetMainDataSet;
    //
    property LeftDataSet: TOracleDataSet read GetLeftDataSet;
    property RightDataSet: TOracleDataSet read GetRightDataSet;
    //
    property LeftDBGrid: TxxxDBGrid read GetLeftDBGrid;
    property RightDBGrid: TxxxDBGrid read GetRightDBGrid;
    //
    property LeftID: Double read FLeftID write FLeftID;
    property RightID: Double read FRightID write FRightID;
  end;

var
  frm27_Linker: Tfrm27_Linker;

implementation

uses
  untMessages;

// dm02_PictersData, dm005_MainData,

resourcestring
  CONFIRM_OPER = 'ВЫ уверены! Продолжение может привести к потере данных!';

{$R *.DFM}

procedure Tfrm27_Linker.SetLookup;
begin
 ActLookup:=lcName;
end;

procedure Tfrm27_Linker.FormCreate(Sender: TObject);
begin

  SetLookup;

  xxxDBGrid.Columns[0].FieldName:=ActLookup.ListField;

  // Инициализируем формы
  InitLeftForm;
  InitRightForm;

  // Кладем на панели
  PlaceFormToPanel(FLeftForm, paLeft);
  PlaceFormToPanel(FRightForm, paRight);

  // по хорошему надо перенести в компонент (Долженко А.С.)
  xxxDBGrid.MainDataSet.DataSet := xxxDBGrid.DataSource.DataSet;
  xxxDBGrid.MainDataSet.OldSQL.Text := TOracleDataSet(xxxDBGrid.DataSource.DataSet).SQL.Text;

  fmSeachFrame.Visible:=true;
  fmSeachFrame.BorderIcons := [sfStartSearch];
  fmSeachFrame.DBGrid := xxxDBGrid;
  fmSeachFrame.DBLookupCB:=ActLookup;
  fmSeachFrame.KeyFieldName := ActLookup.ListField {xxxDBGrid.Columns[0].FieldName};
  //fmSeach.CalbackMenuItem := mi04;
  //fmSeach.CalbackToolButton := tbSearch;

  // установки фильтра
  fm31_Filter.Visible:=true;
  fm31_Filter.DBGrid := xxxDBGrid;
  fm31_Filter.DBLookupCB:=ActLookup;
  fm31_Filter.KeyFieldName := ActLookup.ListField;
  fm31_Filter.OnFilter :=RefreshAfter;
  //fmSeach.CalbackMenuItem := mi04;
  //fmSeach.CalbackToolButton := tbSearch;
end;

procedure Tfrm27_Linker.InitRightForm;
begin
  FRightForm := nil;
end;

procedure Tfrm27_Linker.InitLeftForm;
begin
  FLeftForm := nil;
end;

procedure Tfrm27_Linker.PlaceFormToPanel(const AForm: Tfrm00_Parent;
  const AControl: TWinControl);
begin
  if Assigned(AForm) and Assigned(AControl) then
  begin
    AForm.PlaceToWinControl(AControl);
  end;
end;

procedure Tfrm27_Linker.actMoveToTopExecute(Sender: TObject);
begin
//
end;

procedure Tfrm27_Linker.actMoveAllToTopExecute(Sender: TObject);
begin
//
end;

procedure Tfrm27_Linker.actMoveAllToBottomExecute(Sender: TObject);
begin
//
end;

procedure Tfrm27_Linker.actMoveToBottomExecute(Sender: TObject);
begin
//
end;

function Tfrm27_Linker.GetMainDataSet: TOracleDataSet;
begin
  Result := odsLookup;
end;

function Tfrm27_Linker.GetMasterFieldName: string;
begin
  Result := '';
end;

procedure Tfrm27_Linker.odsLookupAfterScroll(DataSet: TDataSet);
begin
  if not lcName.ListVisible then
  begin
	  RightForm.RefreshData('', Unassigned);
  end;
end;

procedure Tfrm27_Linker.FormShow(Sender: TObject);
begin
  RefreshLookUp;
  lcName.KeyValue := odsLookup.FieldByName(MasterFieldName).AsFloat;
end;

procedure Tfrm27_Linker.SelectItem;
begin
  LeftDataSet.DisableControls;
  RightDataSet.DisableControls;
  try
    // выбираем запись
    OnSelectItem;

    // обновляем выпадающий список
    RefreshLookUp;
    lcName.KeyValue := RightID;

    // обновляем списки
    FLeftForm.RefreshAfterListChange;
    RightForm.RefreshAfterListChange;    
  finally
    LeftDataSet.EnableControls;
    RightDataSet.EnableControls;
  end;
end;

procedure Tfrm27_Linker.OnMoveToLeft;
begin
  //
end;

procedure Tfrm27_Linker.OnMoveToRight;
begin
  //
end;

procedure Tfrm27_Linker.SelectAll(const ADBGrid: TxxxDBGrid);
var
  VSavePlace: TBookmark;
  VDataSet: TDataSet;
begin
  // выделяем все записи
  VDataSet := ADBGrid.DataSource.DataSet;
  VSavePlace := VDataSet.GetBookmark;
  try
    VDataSet.First;
    while not VDataSet.Eof do
    begin
      ADBGrid.SelectedRows.CurrentRowSelected := True;
      VDataSet.Next;
    end;
  finally
    VDataSet.GotoBookmark(VSavePlace);
    VDataSet.FreeBookmark(VSavePlace);
  end;
end;

procedure Tfrm27_Linker.actMoveToRightExecute(Sender: TObject);
begin
  // переносим запись вправо
  MoveRecords(mtToRight, False);
end;

procedure Tfrm27_Linker.actMoveAllToRightExecute(Sender: TObject);
begin
  // переносим все записи вправо
  MoveRecords(mtToRight, True);
end;

procedure Tfrm27_Linker.actMoveAllToLeftExecute(Sender: TObject);
begin
  // переносим все записи влево
  MoveRecords(mtToLeft, True);
end;

procedure Tfrm27_Linker.actMoveToLeftExecute(Sender: TObject);
begin
  // переносим запись влево
  MoveRecords(mtToLeft, False);
end;

function Tfrm27_Linker.GetLeftDataSet: TOracleDataSet;
begin
  Result := FLeftForm.DataSet;
end;

function Tfrm27_Linker.GetLeftDBGrid: TxxxDBGrid;
begin
  Result := FLeftForm.xxxDBGrid;
end;

function Tfrm27_Linker.GetRightDataSet: TOracleDataSet;
begin
  Result := FRightForm.DataSet;
end;

function Tfrm27_Linker.GetRightDBGrid: TxxxDBGrid;
begin
  Result := FRightForm.xxxDBGrid;
end;

procedure Tfrm27_Linker.actMoveToRightUpdate(Sender: TObject);
var
  VEnabled: Boolean;
begin
  VEnabled := (not LeftDataSet.IsEmpty) and (not odsLookup.IsEmpty);
  actMoveToRight.Enabled := VEnabled;
  actMoveAllToRight.Enabled := VEnabled;
end;

procedure Tfrm27_Linker.actMoveAllToLeftUpdate(Sender: TObject);
begin
  actMoveToLeft.Enabled := not RightDataSet.IsEmpty;
  actMoveAllToLeft.Enabled := not RightDataSet.IsEmpty;
end;

procedure Tfrm27_Linker.actSelectExecute(Sender: TObject);
begin
  // выбираем элемент
  SelectItem;
end;

procedure Tfrm27_Linker.MoveRecords(const AMoveType: TMoveType;
  const AMoveAll: Boolean);
var
  I: Integer;
  VFrom: TxxxDBGrid;
  VProc: TMoveProc;
begin
  LeftDataSet.DisableControls;
  RightDataSet.DisableControls;
  try
    // Определяем источник
    if AMoveType = mtToLeft then
    begin
      VFrom := RightDBGrid;
      VProc := OnMoveToLeft;
    end else
    begin
      VFrom := LeftDBGrid;
      VProc := OnMoveToRight;
    end;

    // Выделяем все записи
    if AMoveAll then
    begin
      SelectAll(VFrom);
    end;

    // Переносим каждую выделенную запись
    if VFrom.SelectedRows.Count = 0 then
    begin
      VFrom.SelectedRows.CurrentRowSelected := True;
    end;
    for I := 0 to VFrom.SelectedRows.Count - 1 do
    begin
      VFrom.DataSource.DataSet.GotoBookmark(VFrom.SelectedRows.Items[I]);
      VProc;
    end;
    RightDBGrid.SelectedRows.Clear;
    LeftDBGrid.SelectedRows.Clear;

    // обновляем списки
    FLeftForm.RefreshAfterListChange;
    FRightForm.RefreshAfterListChange;
  finally
    LeftDataSet.EnableControls;
    RightDataSet.EnableControls;
  end;
end;

procedure Tfrm27_Linker.OnSelectItem;
begin
  //
end;

procedure Tfrm27_Linker.actClearSelectUpdate(Sender: TObject);
begin
  actClearSelect.Enabled := not odsLookup.IsEmpty;
end;

procedure Tfrm27_Linker.actClearSelectExecute(Sender: TObject);
begin
  // отменяем выбор элемента
  if TAppMessages.ShowConfirmation(CONFIRM_OPER) then
    ClearSelect;
end;

procedure Tfrm27_Linker.OnClearSelect;
begin
  //
end;

procedure Tfrm27_Linker.ClearSelect;
begin
  // отменяем выбор элемента
  LeftDataSet.DisableControls;
  RightDataSet.DisableControls;
  try
    // выбираем запись
    OnClearSelect;

    // обновляем выпадающий список
    RefreshLookUp;
    lcName.KeyValue := odsLookup.FieldByName(MasterFieldName).AsFloat;

    // обновляем списки
    FLeftForm.RefreshAfterListChange;
    RightForm.RefreshAfterListChange;
  finally
    LeftDataSet.EnableControls;
    RightDataSet.EnableControls;
  end;
end;

procedure Tfrm27_Linker.actSelectUpdate(Sender: TObject);
begin
  actSelect.Enabled := not LeftDataSet.IsEmpty;
end;


procedure Tfrm27_Linker.RefreshLookUp;
begin
  odsLookup.Close;
  odsLookup.Open;
end;

procedure Tfrm27_Linker.lcNameCloseUp(Sender: TObject);
begin
	RightForm.RefreshData('', Unassigned);
end;

procedure Tfrm27_Linker.fmSeachFramespbStartSearchClick(Sender: TObject);
begin
  inherited;
  fmSeachFrame.actSearchExecute(Sender);
  //lcName.KeyValue := odsLookup[xxxDBGrid.Columns[0].FieldName];
end;

procedure Tfrm27_Linker.RefreshData(const KeyFields: string; const KeyValues: Variant);
begin
  // обновляем данные
  ActLookup.ListSource.DataSet.Close;
  ActLookup.ListSource.DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then odsLookup.Last;
  end else
  begin
    ActLookup.ListSource.DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm27_Linker.RefreshAfter;
begin
{ RefreshData(lcName.KeyField, odsLookup[lcName.KeyField]);}
 RefreshData('', Unassigned);
end;

function Tfrm27_Linker.DefPosition: TDefPosition;
begin
  Result := dpFirst;
end;


procedure Tfrm27_Linker.Button2Click(Sender: TObject);
begin
  odsLookup.Close;
  odsLookup.Open;
end;

end.
