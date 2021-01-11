{******************************************************************************
   Название:       frm04_ListForm
   Назначение:	   форма отображения листа данных - предок форм

   ИСПРАВЛЕНИЯ:
   Версия     Дата        Автор            Описание
   ---------  ----------  ---------------  ------------------------------------
   1.0        17.09.2004  Долженко	   1. Создание модуля
*******************************************************************************}

unit frm04_ListForm;

interface

uses
  Windows, Classes, Forms, Menus, ActnList, Controls, StdCtrls, ComCtrls,
  ExtCtrls, ToolWin, Grids, Db, DBGrids, Oracle, OracleData, frm00_ParentForm,
  fm31_FilterFrame, fmSeach, xxxDBGrid, frm04_EditForm, untParams, Graphics, Variants,
  System.Actions
;

const
  IS_DELETE = 'Удалить запись?';
type
  TDefPosition = (dpFirst, dpLast);

  TSelectEvent = function: Boolean of object;

  Tfrm04_List = class(Tfrm00_Parent)
    ToolBar2: TToolBar;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    dsList: TDataSource;
    ActionList: TActionList;
    actAddAttributes: TAction;
    actDeleteAttributes: TAction;
    actEditAttributes: TAction;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    odsList: TOracleDataSet;
    pkList: TOraclePackage;
    xxxDBGrid: TxxxDBGrid;
    actRefresh: TAction;
    actFirst: TAction;
    actLast: TAction;
    ToolButton4: TToolButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    StatusBar: TStatusBar;
    tbExcel: TToolButton;
    tbSep01: TToolButton;
    actExcel: TAction;
    oqAdd: TOracleQuery;
    oqUpdate: TOracleQuery;
    oqDelete: TOracleQuery;
    oqDupl: TOracleQuery;
    fmSeach: TfmSeachFrame;
    N4: TMenuItem;
    mi04: TMenuItem;
    tlbSearch: TToolBar;
    tbSearch: TToolButton;
    sp02: TToolButton;
    actFilterBySelect: TAction;
    actSelectItem: TAction;
    pnlButtons: TPanel;
    OKBtn: TButton;
    CancelBtn: TButton;
    paMain: TPanel;
    paRight: TPanel;
    spRight: TSplitter;
    actSelectAllRows: TAction;
    N5: TMenuItem;
    N6: TMenuItem;
    fm31_Filter: Tfm31_Filter;
    actShowSimpleFilter: TAction;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    pmFilter: TPopupMenu;
    N10: TMenuItem;
    N11: TMenuItem;
    actRemoveAllSettings: TAction;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    tbSimFilter: TToolButton;
    ToolButton13: TToolButton;
    tbExcelZ: TToolButton;
    oqClob: TOracleQuery;
    ActionList1: TActionList;
    actExcelMode1: TAction;
    actExcelMode0: TAction;
    pmExcel: TPopupMenu;
    miExcelMode0: TMenuItem;
    miExcelMode1: TMenuItem;
    procedure actAddAttributesExecute(Sender: TObject);
    procedure actDeleteAttributesExecute(Sender: TObject);
    procedure actEditAttributesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grListDblClick(Sender: TObject);
    procedure actDeleteAttributesUpdate(Sender: TObject);
    procedure actEditAttributesUpdate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actLastExecute(Sender: TObject);
    procedure xxxDBGridDblClick(Sender: TObject);
    procedure actFirstUpdate(Sender: TObject);
    procedure actLastUpdate(Sender: TObject);
    procedure actRefreshUpdate(Sender: TObject);
    procedure actAddAttributesUpdate(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure xxxDBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actFilterBySelectExecute(Sender: TObject);
    procedure actFilterBySelectUpdate(Sender: TObject);
    procedure odsListApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
    procedure actSelectItemExecute(Sender: TObject);
    procedure actSelectAllRowsExecute(Sender: TObject);
    procedure actShowSimpleFilterExecute(Sender: TObject);
    procedure actRemoveAllSettingsExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExcelMode0Execute(Sender: TObject);
    procedure actExcelMode1Execute(Sender: TObject);
  private
    FOnSelect: TSelectEvent;
    FReleaseMemory: boolean;
    FRefreshOnShow: Boolean;
  protected
    FEditType: TEditType;
    // Фильтры на строки
    // равно
    procedure SetStrFilter(const AFieldName, AValue: string); virtual;
    // не равно
    procedure SetStrNotEqualFilter(const AFieldName, AValue: string); virtual;
    // LIKE %AValue%
    procedure SetInStrFilter(const AFieldName, AValue: string); virtual;
    // Равно или NULL
    procedure SetStrOrNullFilter(const AFieldName, AValue: string); virtual;
    // Не равно или NULL
    procedure SetNotStrOrNullFilter(const AFieldName, AValue: string); virtual;
    // Фильтры на числовые столбцы
    // 'равно'
    procedure SetNumbFilter(const AFieldName: string; AValue: Double); virtual;
    // 'больше или равно'
    procedure SetNumbFilter02(const AFieldName: string; AValue: Double); virtual;
    // 'не равно'
    procedure SetNumb03Filter(const AFieldName: string; AValue: Double); virtual;
    // 'строго больше'
    procedure SetNumbFilter04(const AFieldName: string; AValue: Double); virtual;
    //
    procedure SetNumbBetweenFilter(const AFieldName: string; AValueStart: Double; AValueEnd: Double); virtual;
    // IN (0,1,2...)
    procedure SetNumbInFilter(const AFieldName: string; AValues: array of Double); virtual;
    procedure Set24Filter(const AFieldName: string; AFloatArray: TFloatArray); virtual;
    //
    procedure SetStrInFilter(const AFieldName: string; AValues: TStrings); virtual;
    procedure SetStrInFilterA(const AFieldName: string; AValues: array of string); virtual;

    procedure SetStr26Filter(const AFieldName: string; AValuesArray: TStrArray); virtual;
    //
    procedure SetDateBetweenFilter(const AFieldName: string; AValueStart, AValueEnd: TDateTime);
    //
    procedure SetIsNullFilter(const AFieldName: string); virtual;
    procedure SetIsNotNullFilter(const AFieldName: string); virtual;

    function GetRowFontColor: TColor; virtual;
    //
    function DefPosition: TDefPosition; virtual;
    //
    procedure OnAdd; virtual;
    procedure OnEdit; virtual;
    procedure OnDelete; virtual;
    //
    function GetIDFieldName: string; virtual;
    function DoSelect: Boolean; virtual;
    function GetSelected: Boolean; virtual;
    procedure SetSelected(const Value: Boolean); virtual;
    procedure SetSelectedID(const Value: Variant); virtual;
    function GetSelectedID: Variant; virtual;
    //
    function IsDuplicateFound: Boolean; virtual;
    procedure DoInsert; virtual;
    procedure DoEdit; virtual;
    procedure DoDelete; virtual;
    //
    function EditForm: Tfrm04_Edit; virtual;
    function EnableAction(Action: TAction): boolean; virtual;
    procedure WriteLogOnInsert(); virtual;
    procedure WriteLogOnEdit(); virtual;
    procedure WriteLogOnDelete(); virtual;
    //
    function GetDataSet: TOracleDataSet;
    procedure SetEditAttributes; virtual;
  public
    procedure RefreshAfterListChange; virtual;
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); virtual;
    function SaveChange: Boolean;
    function CancelChange: Boolean;
    //
    property ReleaseMemory: Boolean read FReleaseMemory write FReleaseMemory;
    //
    property OnSelect: TSelectEvent read FOnSelect write FOnSelect;
    property Selected: Boolean read GetSelected write SetSelected;
    property SelectedID: Variant read GetSelectedID write SetSelectedID;
    //
    property DataSet: TOracleDataSet read GetDataSet;
    property EditType: TEditType read FEditType write FEditType;
    property RefreshOnShow: Boolean read FRefreshOnShow write FRefreshOnShow;
    //
    class function Instance: Tfrm04_List;

  end;

  Tfrm04_ListClass = class of Tfrm04_List;

var
  frm04_List: Tfrm04_List;

implementation

uses
  dm005_MainData, untMessages, SysUtils, untDBGridExport, Matrix,
  A00_MatrixConst, unt001_Filter  ,z_ReportStruct , unt204_ReportBuilder;

{$R *.DFM}

resourcestring
  INVALID_SAVE =
    'Ошибка сохранения изменений!' + #13#10 +
    '%s';
  DUPL_FOUND = 'Такая запись уже существует!';

{ TfrmListForm }

procedure Tfrm04_List.DoDelete;
begin
  // вызываем процедуру удаления записи
end;

function Tfrm04_List.GetDataSet: TOracleDataSet;
begin
  Result := odsList;
end;

function Tfrm04_List.IsDuplicateFound: Boolean;
begin
  // при добавлении (изменении) проверяем есть ли уже такая запись или нет
  Result := False;
end;

procedure Tfrm04_List.RefreshData(const KeyFields: string; const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

function Tfrm04_List.SaveChange: Boolean;
var
  VOldCursor: TCursor;
begin
  // сохраняем изменения
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    Result := False;
    dmMain.StartTransaction;
    try
      if FEditType = etInsert then
      begin
        if IsDuplicateFound then
        begin
          TAppMessages.Error(DUPL_FOUND);
        end;
        DoInsert;
        if dmMain.UseMatrix then
        begin
          WriteLogOnInsert;
        end;
      end else
      if FEditType = etEdit then
      begin
        if IsDuplicateFound then
        begin
          TAppMessages.Error(DUPL_FOUND);
        end;
        DoEdit;
        if dmMain.UseMatrix then
        begin
          WriteLogOnEdit;
        end;
      end else
      if FEditType = etDelete then
      begin
        DoDelete;
        if dmMain.UseMatrix then
        begin
          WriteLogOnDelete;
        end;
      end;
      dmMain.Commit;
      DataSet.Cancel;
      Result := True;
    except
      on E: Exception do
      begin
        dmMain.Rollback;
        E.Message := Format(INVALID_SAVE, [E.Message]);
        raise;
      end;
    end;
    // рефрешим всё
    if Result then RefreshAfterListChange;
  finally
    Screen.Cursor:= VOldCursor;  
  end;
end;

procedure Tfrm04_List.DoInsert;
begin
  // вызываем процедуру добавления новой записи
end;

procedure Tfrm04_List.DoEdit;
begin
  // вызываем процедуру изменения записи
end;

function Tfrm04_List.EnableAction(Action: TAction): boolean;
begin
  // проверка доступности action в матриксе
  result:= true;
end;

procedure Tfrm04_List.WriteLogOnInsert();
begin
  // вызываем процедуру вставки лога добавленя новой записи
end;

procedure Tfrm04_List.WriteLogOnEdit();
begin
  // вызываем процедуру вставки лога изменения записи
end;

procedure Tfrm04_List.WriteLogOnDelete();
begin
  // вызываем процедуру вставки лога удаления записи
end;

procedure Tfrm04_List.actAddAttributesExecute(Sender: TObject);
begin
  OnAdd;
end;

procedure Tfrm04_List.actDeleteAttributesExecute(Sender: TObject);
begin
  OnDelete;
end;

procedure Tfrm04_List.actEditAttributesExecute(Sender: TObject);
begin
  OnEdit;
end;

function Tfrm04_List.EditForm: Tfrm04_Edit;
begin
  Result := nil;
end;

procedure Tfrm04_List.OnAdd;
begin
  if EditForm = nil then Exit;

  // отображаем форму для добавления записи
  FEditType := etInsert;
  DataSet.Insert;
  with EditForm do
    begin
    DataSource := dsList;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    SetEditAttributes;
    ShowModal;
    end;
end;

procedure Tfrm04_List.OnDelete;
begin
  EditType := etDelete;
  // удаляем запись
  if TAppMessages.ShowConfirmation(IS_DELETE) then
  begin
    SaveChange;
  end;
end;

procedure Tfrm04_List.OnEdit;
begin
  if EditForm = nil then Exit;

  // отображаем форму для изменения записи
  DataSet.Edit;
  FEditType := etEdit;
  with EditForm do
    begin
    DataSource := dsList;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    SetEditAttributes;
    ShowModal;
    end;
end;

procedure Tfrm04_List.FormShow(Sender: TObject);
begin
  if DataSet.Active then Exit;

  if not RefreshOnShow then Exit;

  RefreshData('', Unassigned);
end;

class function Tfrm04_List.Instance: Tfrm04_List;
begin
  Result := Tfrm04_List(inherited Instance);
end;

function Tfrm04_List.CancelChange: Boolean;
begin
  // отменяем изменения
  DataSet.Cancel;
  Result := True;
end;

procedure Tfrm04_List.grListDblClick(Sender: TObject);
begin
  if actEditAttributes.Enabled then actEditAttributes.Execute;
end;

procedure Tfrm04_List.actDeleteAttributesUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actDeleteAttributes.Enabled := not DataSet.IsEmpty and EnableAction(actDeleteAttributes)
  else
    actDeleteAttributes.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm04_List.actEditAttributesUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actEditAttributes.Enabled := not DataSet.IsEmpty and (EditForm <> nil) and EnableAction(actEditAttributes)
  else
    actEditAttributes.Enabled := not DataSet.IsEmpty and (EditForm <> nil);
end;

procedure Tfrm04_List.actRefreshExecute(Sender: TObject);
begin
  // обновляем DataSet
  RefreshData('', Unassigned);
end;

procedure Tfrm04_List.actFirstExecute(Sender: TObject);
begin
  // на первую запись
  DataSet.First;
end;

procedure Tfrm04_List.actLastExecute(Sender: TObject);
begin
  // на последнюю запись
  DataSet.Last;
end;

procedure Tfrm04_List.xxxDBGridDblClick(Sender: TObject);
begin
  if not actEditAttributes.Enabled then Exit;
  actEditAttributes.Execute;
end;

procedure Tfrm04_List.actFirstUpdate(Sender: TObject);
begin
  actFirst.Enabled := DataSet.Active;
end;

procedure Tfrm04_List.actLastUpdate(Sender: TObject);
begin
  actLast.Enabled := DataSet.Active;
end;

procedure Tfrm04_List.actRefreshUpdate(Sender: TObject);
begin
  actRefresh.Enabled := True;
end;

procedure Tfrm04_List.actAddAttributesUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actAddAttributes.Enabled := DataSet.Active and (EditForm <> nil) and EnableAction(actAddAttributes)
  else
    actAddAttributes.Enabled := DataSet.Active and (EditForm <> nil);
end;

procedure Tfrm04_List.actExcelExecute(Sender: TObject);
begin
  unt204_ReportBuilder.ExportToExcel(xxxDBGrid);

  if dmMain.UseMatrix then
    begin
    Matrix.MA.WriteToLog2(format(EXPORT_EXCEL, [Self.Caption]), true, '');
    end;
end;

function Tfrm04_List.DefPosition: TDefPosition;
begin
  Result := dpFirst;
end;

procedure Tfrm04_List.RefreshAfterListChange;
begin
  RefreshData('', Unassigned);
end;

procedure Tfrm04_List.FormCreate(Sender: TObject);
var i: integer;
  action: TAction;
begin
  FReleaseMemory := False; // по умолчанию не закрываем DataSet при закрытии окна
  FRefreshOnShow := True; // по умолчанию обновляем DataSet при onShow

  // по хорошему надо перенести в компонент (Долженко А.С.)
  xxxDBGrid.MainDataSet.DataSet := xxxDBGrid.DataSource.DataSet;
  xxxDBGrid.MainDataSet.OldSQL.Text := TOracleDataSet(xxxDBGrid.DataSource.DataSet).SQL.Text;

  if dmMain.UseMatrix then
  begin
    for i:= 0 to ActionList.ActionCount-1 do
    begin
      action:= TAction(ActionList.Actions[i]);
      action.Enabled:= EnableAction(action);
    end;
 // actOpnExecut();
  end;
// actOpnExecute(nil)  ;
  // установки поиска
  fmSeach.BorderIcons := [sfSelect, sfSelectHint, sfStartSearch, sfClose];
  fmSeach.DBGrid := xxxDBGrid;
  fmSeach.KeyFieldName := xxxDBGrid.Columns[0].FieldName;
  fmSeach.CalbackMenuItem := mi04;
  fmSeach.CalbackToolButton := tbSearch;

  // установки фильтра
  fm31_Filter.DBGrid := xxxDBGrid;
  fm31_Filter.KeyFieldName := xxxDBGrid.Columns[0].FieldName;
  fm31_Filter.OnFilter := RefreshAfterListChange;
  //fmSeach.CalbackMenuItem := mi04;
  //fmSeach.CalbackToolButton := tbSearch;
//   {$IFDEF BANK_VERSION}
//  tbExcelZ.Visible := False;
//  tbExcelZ.Enabled := False;
//  {$ENDIF}
end;

procedure Tfrm04_List.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
  begin
    if xxxDBGrid.SelectedRows.CurrentRowSelected then
    begin
      if gdSelected in State then
      begin
        xxxDBGrid.Canvas.Brush.Color := clBlue;
        xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := clBlue;
      end;
    end else
    begin
      if gdSelected in State then
      begin
        xxxDBGrid.Canvas.Brush.Color := GetRowFontColor;
        xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := GetRowFontColor;
      end;
    end;
  end;
  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm04_List.xxxDBGridMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (ssCtrl in Shift) and (mbLeft = Button) then
    begin
    // инвертируем выделение
    with xxxDBGrid.SelectedRows do
      begin
      CurrentRowSelected := not CurrentRowSelected;
      end;
    end
  else
    begin
    xxxDBGrid.SelectedRows.Clear;
    end;
end;

procedure Tfrm04_List.xxxDBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 45 then
  begin
    // инвертируем выделение
    with xxxDBGrid.SelectedRows do
    begin
      CurrentRowSelected := not CurrentRowSelected;
    end;
    xxxDBGrid.DataSource.DataSet.Next;
  end;
end;

procedure Tfrm04_List.actFilterBySelectExecute(Sender: TObject);
begin
  // установить фильтр по выделенному значению
  xxxDBGrid.FilterBySelect;
end;

procedure Tfrm04_List.actFilterBySelectUpdate(Sender: TObject);
begin
  // показываем установлен ли фильтр или нет
  actFilterBySelect.Checked := xxxDBGrid.IsFilterBySelectActive;
end;

procedure Tfrm04_List.odsListApplyRecord(Sender: TOracleDataSet;
  Action: Char; var Applied: Boolean; var NewRowId: String);
begin
  // вставка, изменение, удаление осуществляется в методах
  // DoInsert, DoEdit, DoDelete
  Applied := True;
end;

function Tfrm04_List.DoSelect: Boolean;
begin
  Result := True;
  if Assigned(FOnSelect) then
  begin
    Result := FOnSelect;
  end;
end;

procedure Tfrm04_List.actSelectItemExecute(Sender: TObject);
begin
  if DoSelect then
  begin
    ModalResult := mrOk;
  end;
end;

function Tfrm04_List.GetSelected: Boolean;
begin
  Result := actSelectItem.Enabled;
end;

procedure Tfrm04_List.SetSelected(const Value: Boolean);
begin
  actSelectItem.Enabled := Value;
  actSelectItem.Visible := actSelectItem.Enabled;
  pnlButtons.Visible := Value;
end;

procedure Tfrm04_List.SetSelectedID(const Value: Variant);
begin
  if VarIsEmpty(Value) or VarIsNull(Value) then Exit;

  DataSet.Locate(GetIDFieldName, Value, []);
end;

function Tfrm04_List.GetSelectedID: Variant;
begin
  Result := DataSet.FieldByName(GetIDFieldName).AsVariant;
end;

function Tfrm04_List.GetIDFieldName: string;
begin
  Result := '';
end;

function Tfrm04_List.GetRowFontColor: TColor;
begin
  Result := xxxDBGrid.Font.Color;
end;

type
  THackCustomDBGrid = class(TCustomDBGrid)

end;

procedure Tfrm04_List.actSelectAllRowsExecute(Sender: TObject);
var
  VSavePlace: TBookmark;
begin
  odsList.DisableControls;
  try
    // выделяем все записи
    VSavePlace := odsList.GetBookmark;
    try
      odsList.First;
      while not odsList.Eof do
      begin
        xxxDBGrid.SelectedRows.CurrentRowSelected := True;
        odsList.Next;
        Application.ProcessMessages;
      end;
    finally
      odsList.GotoBookmark(VSavePlace);
      odsList.FreeBookmark(VSavePlace);
    end;
  finally
    odsList.EnableControls;
  end;
end;

procedure Tfrm04_List.SetNumbFilter(const AFieldName: string;
  AValue: Double);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.Error('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc01;
  VCondition.ListName := VColumn.FieldName;
  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValue;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValue;
end;

procedure Tfrm04_List.SetNumbFilter02(const AFieldName: string;
  AValue: Double);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc27;
  VCondition.ListName := VColumn.FieldName;
  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValue;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValue;
end;

procedure Tfrm04_List.SetStrFilter(const AFieldName, AValue: string);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc02;
  VCondition.ListName := VColumn.FieldName;
  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.Value := AValue;
  VValue.ListValue.Value := AValue;
end;

procedure Tfrm04_List.SetStrNotEqualFilter(const AFieldName, AValue: string);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc03;
  VCondition.ListName := VColumn.FieldName;
  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.Value := AValue;
  VValue.ListValue.Value := AValue;
end;

procedure Tfrm04_List.SetNumbBetweenFilter(const AFieldName: string;
  AValueStart, AValueEnd: Double);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc07;
  VCondition.ListName := VColumn.FieldName;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValueStart;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValueStart;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValueEnd;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValueEnd;
end;

procedure Tfrm04_List.actShowSimpleFilterExecute(Sender: TObject);
begin
  fm31_Filter.ShowOrHide;
end;

procedure Tfrm04_List.actRemoveAllSettingsExecute(Sender: TObject);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;

  RefreshAfterListChange;
end;

procedure Tfrm04_List.SetNumb03Filter(const AFieldName: string;
  AValue: Double);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc03;
  VCondition.ListName := VColumn.FieldName;
  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValue;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValue;
end;

procedure Tfrm04_List.Set24Filter(const AFieldName: string;
  AFloatArray: TFloatArray);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
  J: Integer;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // добавляем условие
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc24;
  VCondition.ListName := VColumn.FieldName;
  for J := Low(AFloatArray) to High(AFloatArray) do
  begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtNumber;
    VValue.KeyValue.AsFloat := AFloatArray[J];
    VValue.ListValue.ValueType := vtNumber;
    VValue.ListValue.AsFloat := AFloatArray[J];
  end;
end;

procedure Tfrm04_List.SetStrInFilter(const AFieldName: string;
  AValues: TStrings);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
  J: Integer;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
    begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
      begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
      end;
    end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // добавляем условие
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc26;
  VCondition.ListName := VColumn.FieldName;
  for J := 0 to AValues.Count-1 do
    begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtString;
    VValue.KeyValue.Value := AValues[J];
    VValue.ListValue.ValueType := vtString;
    VValue.ListValue.Value := AValues[J];
  end;
end;

procedure Tfrm04_List.SetStrInFilterA(const AFieldName: string;
  AValues: array of string);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
  J: Integer;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
    begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
      begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
      end;
    end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // добавляем условие
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc26;
  VCondition.ListName := VColumn.FieldName;

  for J := Low(AValues) to High(AValues) do
    begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtString;
    VValue.KeyValue.Value := AValues[J];
    VValue.ListValue.ValueType := vtString;
    VValue.ListValue.Value := AValues[J];
    end;
end;

procedure Tfrm04_List.SetStr26Filter(const AFieldName: string; AValuesArray: TStrArray);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
  J: Integer;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
    begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
      begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
      end;
    end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // добавляем условие
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc26;
  VCondition.ListName := VColumn.FieldName;

  for J := Low(AValuesArray) to High(AValuesArray) do
    begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtString;
    VValue.KeyValue.Value := AValuesArray[J];
    VValue.ListValue.ValueType := vtString;
    VValue.ListValue.Value := AValuesArray[J];
  end;
end;

procedure Tfrm04_List.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ReleaseMemory then DataSet.Close;
end;

procedure Tfrm04_List.SetDateBetweenFilter(const AFieldName: string;
  AValueStart, AValueEnd: TDateTime);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc23;
  VCondition.ListName := VColumn.FieldName;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := Trunc(AValueStart);
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := Trunc(AValueStart);

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := Trunc(AValueEnd);
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := Trunc(AValueEnd);
end;

procedure Tfrm04_List.SetNumbFilter04(const AFieldName: string;
  AValue: Double);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc04;
  VCondition.ListName := VColumn.FieldName;
  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValue;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValue;
end;

procedure Tfrm04_List.SetInStrFilter(const AFieldName, AValue: string);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc06;
  VCondition.ListName := VColumn.FieldName;
  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.Value := '%'+AValue+'%';
  VValue.ListValue.Value := '%'+AValue+'%';
end;

procedure Tfrm04_List.SetIsNullFilter(const AFieldName: string);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc08;
  VCondition.ListName := VColumn.FieldName;
end;

procedure Tfrm04_List.SetIsNotNullFilter(const AFieldName: string);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc09;
  VCondition.ListName := VColumn.FieldName;
end;

procedure Tfrm04_List.SetNumbInFilter(const AFieldName: string;
  AValues: array of Double);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
  i: integer;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  // снимаем фильтр по выделенному
  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc24;
  VCondition.ListName := VColumn.FieldName;

  // Добавляем значения
  for i := Low(AValues) to High(AValues) do
    begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtNumber;
    VValue.KeyValue.AsFloat := AValues[i];
    VValue.ListValue.ValueType := vtNumber;
    VValue.ListValue.AsFloat := AValues[i];
    end;
end;

procedure Tfrm04_List.SetStrOrNullFilter(const AFieldName, AValue: string);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc29;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtString;
  VValue.KeyValue.Value := AValue;
  VValue.ListValue.ValueType := vtString;
  VValue.ListValue.Value := AValue;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtString;
  VValue.KeyValue.Value := AValue;
  VValue.ListValue.ValueType := vtString;
  VValue.ListValue.Value := AValue;
end;

procedure Tfrm04_List.SetNotStrOrNullFilter(const AFieldName,
  AValue: string);
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    if xxxDBGrid.Columns[VIndex].FieldName = AFieldName then
    begin
      VColumn := xxxDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then
    TAppMessages.ShowError('Колонка ' + AFieldName + ' в таблице отсутствует.');

  VCondition := xxxDBGrid.MainDataSet.Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc30;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtString;
  VValue.KeyValue.Value := AValue;
  VValue.ListValue.ValueType := vtString;
  VValue.ListValue.Value := AValue;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtString;
  VValue.KeyValue.Value := AValue;
  VValue.ListValue.ValueType := vtString;
  VValue.ListValue.Value := AValue;
end;

procedure Tfrm04_List.SetEditAttributes;
begin
// Если что-то надо добавить в форму редактирования, переопределяем в наследниках
end;

procedure Tfrm04_List.actExcelMode0Execute(Sender: TObject);
begin
  z_ReportStruct.SetExcelMode(0);
  z_ReportStruct.ExportToExcel(xxxDBGrid);
end;

procedure Tfrm04_List.actExcelMode1Execute(Sender: TObject);
begin
  z_ReportStruct.SetExcelMode(1);
  z_ReportStruct.ExportToExcel(xxxDBGrid);
end;

end.


