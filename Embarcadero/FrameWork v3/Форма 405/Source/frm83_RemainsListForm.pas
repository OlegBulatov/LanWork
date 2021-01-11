unit frm83_RemainsListForm;

interface

uses
  frm04_TabListForm, frm80_CalcRemainsForm, Windows, ComCtrls, ActnList, Menus,
  Oracle, Db, Grids, DBGrids, frm83_Remains405ListForm,
  frm83_RemainsOtherListForm, frm83_RemainsOthOpsListForm, frm04_EditForm,
  frm04_TabListItemForm, frm00_ParentForm, Forms, OracleData, Classes,
  StdCtrls, fm31_FilterFrame, fmSeach, xxxDBGrid, ToolWin, Controls,
  ExtCtrls, System.Actions;

type
  Tfrm83_RemainsList = class(Tfrm04_TabList, TCalcStepPage)
    oqCalc: TOracleQuery;
    odsListT030_ID: TFloatField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT031_NOMINAL: TFloatField;
    odsListPREV_COUNT_REMAIN_711: TFloatField;
    odsListPREV_MARKET_REMAIN_711: TFloatField;
    odsListPREV_NOMINAL_REMAIN_711: TFloatField;
    odsListPREV_COUNT_REMAIN: TFloatField;
    odsListPREV_MARKET_REMAIN: TFloatField;
    odsListPREV_NOMINAL_REMAIN: TFloatField;
    odsListQUARTAL_PRICE: TFloatField;
    odsListCOUNT_SALDO_711: TFloatField;
    odsListMARKET_SALDO_711: TFloatField;
    odsListNOMINAL_SALDO_711: TFloatField;
    odsListOTH_SALDO_711: TFloatField;
    odsListOTH_MARKET_SALDO_711: TFloatField;
    odsListOTH_NOMINAL_SALDO_711: TFloatField;
    odsListCOUNT_SALDO_405: TFloatField;
    odsListMARKET_SALDO_405: TFloatField;
    odsListNOMINAL_SALDO_405: TFloatField;
    odsListCOUNT_SALDO: TFloatField;
    odsListMARKET_SALDO: TFloatField;
    odsListNOMINAL_SALDO: TFloatField;
    odsListCOUNT_REMAIN_711: TFloatField;
    odsListMARKET_REMAIN_711: TFloatField;
    odsListNOMINAL_REMAIN_711: TFloatField;
    odsListCOUNT_REMAIN: TFloatField;
    odsListMARKET_REMAIN: TFloatField;
    odsListNOMINAL_REMAIN: TFloatField;
    odsListT095_FLAG: TStringField;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    actForm405: TAction;
    actForm711: TAction;
    actShowMarket: TAction;
    ToolButton10: TToolButton;
    oqFlag: TOracleQuery;
    oqSetPeriod: TOracleQuery;
    actShowNom: TAction;
    ToolButton12: TToolButton;
    actShowHistory: TAction;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    odsListUSD_ALL_PEREOC: TFloatField;
    odsListUSD_BUM_PEREOC: TFloatField;
    odsListUSD_SUM_PEREOC: TFloatField;
    odsListUSD_ALL_NOM_PEREOC: TFloatField;
    odsListUSD_BUM_NOM_PEREOC: TFloatField;
    odsListUSD_SUM_NOM_PEREOC: TFloatField;
    odsListT105_COUNT_SALDO: TFloatField;
    odsListT105_USD_SUM_SALDO: TFloatField;
    odsListT105_USD_NOM_SALDO: TFloatField;
    TabSheet3: TTabSheet;
    ToolButton16: TToolButton;
    actRecalc: TAction;
    oqRecalc: TOracleQuery;
    ToolBar3: TToolBar;
    ToolButton11: TToolButton;
    odsListT098_EMISSION_SIZE: TFloatField;
    odsListDELTA_CNT: TFloatField;
    odsListT028_INN: TStringField;
    oq1st2ndRecalc: TOracleQuery;
    odsListT095_FLAG_PREV: TStringField;
    odsListT031_NOMINAL_PREV: TFloatField;
    odsListT031_NOMINAL_MID: TFloatField;
    odsListT098_EMISSION_SIZE_PREV: TFloatField;
    odsListDELTA_CNT_PREV: TFloatField;
    odsListDELTA_CNT_711_PREV: TFloatField;
    odsListDELTA_CNT_711: TFloatField;
    ToolButton20: TToolButton;
    actCheckColumn: TAction;
    pmCheckColumn: TPopupMenu;
    H1: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    actShowEmissionSize: TAction;
    actShowDelta: TAction;
    odsListFI_PB_TYPE: TStringField;
    N19: TMenuItem;
    actShowFinP: TAction;
    procedure actCheckColumnUpdate(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actForm405Execute(Sender: TObject);
    procedure actForm711Execute(Sender: TObject);
    procedure actShowMarketExecute(Sender: TObject);
    procedure dsListDataChange(Sender: TObject; Field: TField);
    procedure actShowNomExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actEditAttributesExecute(Sender: TObject);
    procedure actForm405Update(Sender: TObject);
    procedure actForm711Update(Sender: TObject);
    procedure actShowHistoryExecute(Sender: TObject);
    procedure actShowHistoryUpdate(Sender: TObject);
    procedure actRecalcExecute(Sender: TObject);
    procedure actRecalcUpdate(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure actShowEmissionSizeExecute(Sender: TObject);
    procedure actShowDeltaExecute(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure actShowDetailExecute(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure actShowFinPExecute(Sender: TObject);
    procedure actCheckColumnExecute(Sender: TObject);
  private
    { Private declarations }
    FT030_ID: Double;
    FAddForm: Tfrm83_Remains405List;
    FOtherForm: Tfrm83_RemainsOtherList;
    FOthOpsForm: Tfrm83_RemainsOthOpsList;
    function GetT030_ID: Double;
    procedure CalculateRemains;
    procedure SetFlag(const AFlag: string);
    procedure ChangeImageIndex(Sender: TObject);
  protected
	  //
    procedure DoEdit; override;
    procedure WriteLogOnEdit; override;
    function EditForm: Tfrm04_Edit; override;
    function EnableAction(Action: TAction): boolean; override;
    //
    function GetListItem: Tfrm04_TabListItem; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    //
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    procedure RefreshAfterListChange; override;
    //
    property T030_ID: Double read GetT030_ID;
  end;

var
  frm83_RemainsList: Tfrm83_RemainsList;

implementation

uses
  Graphics, dm005_MainData, frm04_ListForm, Matrix, A00_MatrixConst,
  frm83_RemainsEditForm, frm83_RemainsBreakForm, untMessages, frm01_MainForm,
  frm83_RemainsHisListForm;

resourcestring
CONFIRM_RECALC = 'Будет произведен перерасчет остатков по выбранной эмиссии. Продолжить?';
CONFIRM_OPER_405 = 'Использовать для расчета остатков операции 405 формы?';
CONFIRM_OPER_711 = 'Использовать для расчета остатков операции 711 формы?';

{$R *.DFM}

{ Tfrm83_RemainsList }

procedure Tfrm83_RemainsList.actCheckColumnUpdate(Sender: TObject);
begin
  actCheckColumn.Enabled := True;
end;

procedure Tfrm83_RemainsList.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Applied := True;

  try
    oq1st2ndRecalc.Execute;
    dmMain.Commit;
  finally
    dmMain.Rollback;
  end;
end;

procedure Tfrm83_RemainsList.DoOnShowPage(const AMainForm: TForm);
begin
  ShowDetail(false);

  // смотрим данные
  RefreshAfterListChange;
end;

class function Tfrm83_RemainsList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_RemainsList;
end;

class function Tfrm83_RemainsList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_RemainsList;
end;

class procedure Tfrm83_RemainsList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm83_RemainsList) := AForm;
end;

procedure Tfrm83_RemainsList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T027_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);
  //DataSet.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm83_RemainsList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']);
  oqUpdate.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  oqUpdate.SetVariable('T027_ID', odsList['T027_ID']);
  oqUpdate.Execute;
  FT030_ID := odsList['T030_ID'];
end;

procedure Tfrm83_RemainsList.WriteLogOnEdit;
begin
  Matrix.MA.WriteToLog2(CHANGE_REMAIN, true, '');
end;

function Tfrm83_RemainsList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm83_RemainsEdit.Instance;
end;

procedure Tfrm83_RemainsList.RefreshAfterListChange;
begin
  RefreshData('T030_ID', FT030_ID);
end;

procedure Tfrm83_RemainsList.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
  VColor: TColor;
  VBackColor: TColor;
begin
  // если нет рыночных котировок выделяем красным цветом
  (*
  if ((odsListPREV_COUNT_REMAIN_711.AsFloat <> 0) and (odsListPREV_MARKET_REMAIN_711.AsFloat = 0)) or
     ((odsListCOUNT_SALDO_711.AsFloat <> 0) and (odsListQUARTAL_PRICE.AsFloat = 0)) or
     ((odsListCOUNT_REMAIN_711.AsFloat <> 0) and (odsListMARKET_REMAIN_711.AsFloat = 0)) then
  *)
  if ((odsListCOUNT_SALDO_711.AsFloat <> 0) and (odsListQUARTAL_PRICE.AsFloat = 0)) then
  begin
    VColor := clRed;
  end else
  begin
    if (odsListT095_FLAG.AsString = '1') then
    begin
      //VColor := clBlue;
      VColor := clPurple;
    end else
    begin
      VColor := xxxDBGrid.Font.Color;
    end;
  end;

  VBackColor := Column.Color;

  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
  begin
    if xxxDBGrid.SelectedRows.CurrentRowSelected then
    begin
      if gdSelected in State then
      begin
        xxxDBGrid.Canvas.Brush.Color := clBlue;
        xxxDBGrid.Canvas.Font.Color := VBackColor;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := VBackColor;
        xxxDBGrid.Canvas.Font.Color := clBlue;
      end;
    end else
    begin
      if gdSelected in State then
      begin
        xxxDBGrid.Canvas.Brush.Color := VColor;
        xxxDBGrid.Canvas.Font.Color := VBackColor;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := VBackColor;
	xxxDBGrid.Canvas.Font.Color := VColor;
      end;
    end;
  end;
  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if (Column.Field.FieldName = 'T095_FLAG') then
  begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(
      xxxDBGrid.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      DFCS_BUTTONCHECK or
      VState[Column.Field.AsString = '1'] or
      DFCS_FLAT
      );
  end;

  if (Column.Field.FieldName = 'T095_FLAG_PREV') then
  begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(
      xxxDBGrid.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      DFCS_BUTTONCHECK or
      VState[Column.Field.AsString = '1'] or
      DFCS_FLAT
      );
  end;
end;

function Tfrm83_RemainsList.GetListItem: Tfrm04_TabListItem;
begin
  Result := Tfrm83_RemainsBreak.Instance;
end;

procedure Tfrm83_RemainsList.actForm405Execute(Sender: TObject);
begin
  if TAppMessages.ShowConfirmation(CONFIRM_OPER_405) then
  begin
    SetFlag('1');
  end;
end;

procedure Tfrm83_RemainsList.actForm711Execute(Sender: TObject);
begin
  if TAppMessages.ShowConfirmation(CONFIRM_OPER_711) then
  begin
    SetFlag('2');
  end;
end;

procedure Tfrm83_RemainsList.actShowMarketExecute(Sender: TObject);
const
  CCOLUMNS: array[0..9] of integer = (11, 18, 21, 24, 27, 30, 32, 34, 36, 45);
var
  I: Integer;
begin
  for I := 0 to 9 do
  begin
    xxxDBGrid.Columns[CCOLUMNS[I]].Visible := not xxxDBGrid.Columns[CCOLUMNS[I]].Visible;
    if xxxDBGrid.Columns[CCOLUMNS[I]].Visible then
    begin
      xxxDBGrid.Columns[CCOLUMNS[I]].Width := 48;
    end;
  end;
end;

procedure Tfrm83_RemainsList.dsListDataChange(Sender: TObject;
  Field: TField);
begin
  FT030_ID := odsListT030_ID.AsFloat;
  if not Panel1.Visible and Self.Visible then Exit; // если скрыта панель детализации, то выходим
  if pc01.ActivePageIndex = 1 then
  begin
    FAddForm.RefreshAfterListChange;
  end else
  if pc01.ActivePageIndex = 2 then
  begin
    FOtherForm := Tfrm83_RemainsOtherList.Instance;
    FOtherForm.RefreshAfterListChange;
  end;
end;

procedure Tfrm83_RemainsList.actShowNomExecute(Sender: TObject);
const
  CCOLUMNS: array[0..12] of integer = (5, 12, 15, 19, 22, 25, 28, 31, 33, 35, 37, 39, 46);
var
  I: Integer;
begin
  for I := 0 to 12 do
  begin
    xxxDBGrid.Columns[CCOLUMNS[I]].Visible := not xxxDBGrid.Columns[CCOLUMNS[I]].Visible;
    if xxxDBGrid.Columns[CCOLUMNS[I]].Visible then
    begin
      xxxDBGrid.Columns[CCOLUMNS[I]].Width := 48;
    end;
  end;
end;

procedure Tfrm83_RemainsList.actShowEmissionSizeExecute(Sender: TObject);
const
  CCOLUMNS: array[0..1] of integer = (6, 40);
var
  I: Integer;
begin
  for I := 0 to 1 do
  begin
    xxxDBGrid.Columns[CCOLUMNS[I]].Visible := not xxxDBGrid.Columns[CCOLUMNS[I]].Visible;
    if xxxDBGrid.Columns[CCOLUMNS[I]].Visible then
    begin
      xxxDBGrid.Columns[CCOLUMNS[I]].Width := 48;
    end;
  end;
end;

procedure Tfrm83_RemainsList.actShowDeltaExecute(Sender: TObject);
const
  CCOLUMNS: array[0..3] of integer = (13, 14, 47, 48);
var
  I: Integer;
begin
  for I := 0 to 3 do
  begin
    xxxDBGrid.Columns[CCOLUMNS[I]].Visible := not xxxDBGrid.Columns[CCOLUMNS[I]].Visible;
    if xxxDBGrid.Columns[CCOLUMNS[I]].Visible then
    begin
      xxxDBGrid.Columns[CCOLUMNS[I]].Width := 48;
    end;
  end;
end;

procedure Tfrm83_RemainsList.FormCreate(Sender: TObject);
begin
  inherited;

  // проверка
  if Assigned(FAddForm) then Exit;

  // инициализируем и кладем на панель
  FAddForm := Tfrm83_Remains405List.Instance;
  PlaceFormToWinControl(FAddForm, pc01.Pages[1]);

  // инициализируем и кладем на панель
  FOthOpsForm := Tfrm83_RemainsOthOpsList.Instance;
  PlaceFormToWinControl(FOthOpsForm, pc01.Pages[2]);

  // инициализируем и кладем на панель
  FOtherForm := Tfrm83_RemainsOtherList.Instance;
  PlaceFormToWinControl(FOtherForm, pc01.Pages[3]);

  // скрываем номинальную стоимость
  actShowNomExecute(nil);
  actShowMarketExecute(nil);
  actShowFinPExecute(nil);
end;

procedure Tfrm83_RemainsList.actEditAttributesExecute(Sender: TObject);
begin
  frm01_Main.FindMainEmissInQuartal(
    Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID1,
    Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID2,
    odsListT030_ID.AsFloat
    );
end;

function Tfrm83_RemainsList.GetT030_ID: Double;
begin
  Result := odsListT030_ID.AsFloat;
end;

procedure Tfrm83_RemainsList.actForm405Update(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actForm405.Enabled := not DataSet.IsEmpty and EnableAction(actForm405)
  else
    actForm405.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm83_RemainsList.actForm711Update(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actForm711.Enabled := not DataSet.IsEmpty and EnableAction(actForm711)
  else
    actForm711.Enabled := not DataSet.IsEmpty;
end;

function Tfrm83_RemainsList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actRecalc' then
  begin
    Result := Matrix.MA.IsOperationPermitted(CHANGE_REMAIN_FORM, FALSE)
  end else
  if Action.Name = 'actForm405' then
  begin
    Result := Matrix.MA.IsOperationPermitted(CHANGE_REMAIN_FORM, FALSE)
  end else
  if Action.Name = 'actForm711' then
  begin
    Result := Matrix.MA.IsOperationPermitted(CHANGE_REMAIN_FORM, FALSE)
  end else Result := true;
end;

procedure Tfrm83_RemainsList.actShowHistoryExecute(Sender: TObject);
begin
  with Tfrm83_RemainsHisList.Instance do
  begin
  	//odsList.Master := self.odsList;
    ShowModal;
  end;
end;

procedure Tfrm83_RemainsList.actShowHistoryUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actShowHistory.Enabled := not DataSet.IsEmpty and EnableAction(actShowHistory)
  else
    actShowHistory.Enabled := not DataSet.IsEmpty;

end;

procedure Tfrm83_RemainsList.actRecalcExecute(Sender: TObject);
begin
  if TAppMessages.ShowConfirmation(CONFIRM_RECALC) then
  begin
    // запускаем перерасчет
    CalculateRemains;
  end;
end;

procedure Tfrm83_RemainsList.CalculateRemains;
var
  VOldCursor: TCursor;
  I: Integer;
begin
  odsList.DisableControls;
  try
    VOldCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    try
      // запускаем расчет
      if xxxDBGrid.SelectedRows.Count = 0 then
      begin
        xxxDBGrid.SelectedRows.CurrentRowSelected := True;
      end;
      for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
      begin
        odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);
        oqRecalc.SetVariable('I_T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
        oqRecalc.SetVariable('I_T030_ID', odsListT030_ID.AsFloat);
        oqRecalc.Execute;
        Application.ProcessMessages;
      end;
      xxxDBGrid.SelectedRows.Clear;

      // смотрим данные
      RefreshAfterListChange;
    finally
      Screen.Cursor:= VOldCursor;
    end;
  finally
    odsList.EnableControls;
  end;
end;

procedure Tfrm83_RemainsList.actRecalcUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actRecalc.Enabled := not DataSet.IsEmpty and EnableAction(actRecalc)
  else
    actRecalc.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm83_RemainsList.SetFlag(const AFlag: string);
var
  I: Integer;
  VOldCursor: TCursor;
begin
  odsList.DisableControls;
  try
    VOldCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    try
      // Просиавляем признак для каждой выделенной записи
      if xxxDBGrid.SelectedRows.Count = 0 then
      begin
        xxxDBGrid.SelectedRows.CurrentRowSelected := True;
      end;
      for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
      begin
        odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);
        oqFlag.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
        oqFlag.SetVariable('T027_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);
        oqFlag.SetVariable('T030_ID', odsList['T030_ID']);
        oqFlag.SetVariable('T095_FLAG', AFlag);
        Application.ProcessMessages;
        oqFlag.Execute;
      end;
      xxxDBGrid.SelectedRows.Clear;

      if dmMain.UseMatrix then
      begin
        Matrix.MA.WriteToLog2(CHANGE_REMAIN_FORM, true, '');
      end;

      FT030_ID := odsList['T030_ID'];
      RefreshData('T030_ID', FT030_ID);
    finally
      Screen.Cursor:= VOldCursor;
    end;
  finally
    odsList.EnableControls;
  end;
end;

procedure Tfrm83_RemainsList.ToolButton20Click(Sender: TObject);
var P: TPoint;
begin
  P:=GetClientOrigin;
  pmCheckColumn.Popup(P.X + ToolButton20.Left, P.Y + ToolBar3.Top + ToolBar3.Height);
end;

procedure Tfrm83_RemainsList.ChangeImageIndex(Sender: TObject);
begin
  // меняем картинку на обратную
  if TMenuItem(Sender).ImageIndex = 23 then
    TMenuItem(Sender).ImageIndex := 22
  else
    TMenuItem(Sender).ImageIndex := 23;
end;

procedure Tfrm83_RemainsList.N18Click(Sender: TObject);
begin
  ChangeImageIndex(Sender);
  actShowNomExecute(Sender);
end;

procedure Tfrm83_RemainsList.N17Click(Sender: TObject);
begin
  ChangeImageIndex(Sender);
  actShowMarketExecute(Sender);
end;


procedure Tfrm83_RemainsList.H1Click(Sender: TObject);
begin
  ChangeImageIndex(Sender);
  actShowEmissionSizeExecute(Sender);
end;

procedure Tfrm83_RemainsList.N16Click(Sender: TObject);
begin
  ChangeImageIndex(Sender);
  actShowDeltaExecute(Sender);
end;

procedure Tfrm83_RemainsList.actShowDetailExecute(Sender: TObject);
begin
  //обновляем окно детализации, если требуется показать окно
  if not actShowDetail.Checked then
  begin
    if pc01.ActivePageIndex = 1 then
    begin
      FAddForm.RefreshAfterListChange;
    end else
    if pc01.ActivePageIndex = 2 then
    begin
      FOtherForm := Tfrm83_RemainsOtherList.Instance;
      FOtherForm.RefreshAfterListChange;
    end;
  end;
  inherited;
end;

procedure Tfrm83_RemainsList.N19Click(Sender: TObject);
begin
  ChangeImageIndex(Sender);
  actShowFinPExecute(Sender);
end;

procedure Tfrm83_RemainsList.actShowFinPExecute(Sender: TObject);
begin
  xxxDBGrid.Columns[49].Visible := not xxxDBGrid.Columns[49].Visible;
end;

procedure Tfrm83_RemainsList.actCheckColumnExecute(Sender: TObject);
var P: TPoint;
begin
  P:=GetClientOrigin;
  pmCheckColumn.Popup(P.X + ToolButton20.Left, P.Y + ToolBar3.Top + ToolBar3.Height);
end;

end.
