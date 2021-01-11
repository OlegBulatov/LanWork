unit C001_OpersByDateForm;

interface

uses
  frm04_ListForm, Db, xxxDbLookupCheckCombo, DBCtrls, fm04_PrmKOFrame,
  fm01_PeriodFrame, StdCtrls, Mask, Oracle, OracleData, Menus, Classes,
  ActnList, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows, frm60_DividentsListForm,
  frm00_ParentForm, untParams, Variants, System.Actions;

type
  TFictiveState = (fsNeedRate, fsFictive, fsReal, fsNotRate);

  TC001_OpersByDate = class(Tfrm04_List)
    ToolButton5: TToolButton;
    Panel1: TPanel;
    Tfm01_Period1: Tfm01_Period;
    Frame11: Tfm04_PrmKO;
    odsListT002_ID: TFloatField;
    odsListT001_PART_ID: TFloatField;
    odsListT005_DISPLAY_NAME: TStringField;
    odsListT002_BANK_CODE: TStringField;
    odsListT002_REPORT_DATE: TDateTimeField;
    odsListT002_NUMB_IN_YEA: TStringField;
    odsListT002_NUMB_IN_YEA_DESC: TStringField;
    odsListT002_KP_ID: TIntegerField;
    odsListT001_ID: TFloatField;
    odsListT001_ROW_PREFIX: TIntegerField;
    odsListT001_ROW_NUM: TIntegerField;
    odsListT001_DATE_OP: TDateTimeField;
    odsListT001_TYPE_ID: TStringField;
    odsListT016_BOND_ID: TFloatField;
    odsListT001_OP_ID: TFloatField;
    odsListT011_TYPE_ID: TFloatField;
    odsListT001_OP_PAY_ID: TFloatField;
    odsListT006_NAME: TStringField;
    odsListT001_OP_COUNT: TFloatField;
    odsListT001_OP_CR_ID: TStringField;
    odsListT001_OP_CR_DESC: TStringField;
    odsListT001_OP_SUM: TFloatField;
    odsListT001_OP_PROC: TFloatField;
    odsListT012_ID: TFloatField;
    odsListT001_REZID_NAME: TStringField;
    odsListT001_REZID_CO_ID: TStringField;
    odsListT001_REZID_TYPE: TFloatField;
    odsListT013_ID: TFloatField;
    odsListT001_NREZID_NAME: TStringField;
    odsListT001_NREZID_CO_ID: TFloatField;
    odsListT001_NREZID_COUNTRY: TStringField;
    odsListT001_NREZID_TYPE: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListT025_CODE: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT001_REG_NUM: TStringField;
    odsListT001_CR_ID: TStringField;
    odsListT001_CR_DESC: TStringField;
    odsListT001_IS_RANSOM: TStringField;
    odsListT030_ID: TFloatField;
    oqAddDividend: TOracleQuery;
    odsListT001_OP_SUM_CROSS: TFloatField;
    odsListT001_OP_PROC_CROSS: TFloatField;
    chbPeriod: TCheckBox;
    chbKO: TCheckBox;
    Tfm01_Period2: Tfm01_Period;
    Label1: TLabel;
    Button1: TButton;
    actApplayFilter: TAction;
    odsCount: TOracleDataSet;
    Panel2: TPanel;
    dsCount: TDataSource;
    Label2: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    odsCountCOUNT_STR: TFloatField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    odsCountSUM_IN: TFloatField;
    odsCountPROC_IN: TFloatField;
    odsCountCOUNT_IN: TFloatField;
    odsCountSUM_OUT: TFloatField;
    odsCountPROC_OUT: TFloatField;
    odsCountCOUNT_OUT: TFloatField;
    odsCountSUM_SALDO: TFloatField;
    odsCountPROC_SALDO: TFloatField;
    odsCountCOUNT_SALDO: TFloatField;
    odsListT033_NAME: TStringField;
    odsListT034_NAME: TStringField;
    odsListT028_ID: TFloatField;
    lbTime: TLabel;
    Label9: TLabel;
    odsListT001_N8: TFloatField;
    odsListT001_N9: TFloatField;
    odsListT001_10: TFloatField;
    odsListT001_11: TFloatField;
    odsListT001_N99: TFloatField;
    odsListT001_COMMENT: TStringField;
    odsListT055_ID: TFloatField;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label10: TLabel;
    odsListT002_BANK_NAME: TStringField;
    odsListT035_NAME: TStringField;
    odsListT001_OP_MODIF: TFloatField;
    odsListT001_YEAR_OP: TStringField;
    odsListT001_MOD_OP_SUM_CROSS: TFloatField;
    odsCountPRICE_IN: TFloatField;
    odsCountPRICE_OUT: TFloatField;
    odsCountPRICE_SALDO: TFloatField;
    odsListT006_DIRECTION: TIntegerField;
    odsListT006_DIRECTION_DESC: TStringField;
    odsListT001_PARENT_ID: TFloatField;
    odsListT001_C16: TStringField;
    odsListT001_C17: TStringField;
    odsListT001_C18: TStringField;
    odsListT001_C19: TStringField;
    odsListT001_C20: TStringField;
    odsListT001_C11: TStringField;
    odsListT001_C12: TStringField;
    chbOper: TCheckBox;
    odsOper: TOracleDataSet;
    dsType: TDataSource;
    odsOperDESC_FLD: TStringField;
    chbType: TCheckBox;
    lcbType: TDBLookupComboBox;
    odsOperT011_ID: TFloatField;
    odsType: TOracleDataSet;
    dsOper: TDataSource;
    odsTypeT027_ID: TFloatField;
    odsTypeDESC_FLD: TStringField;
    odsListT027_ID: TFloatField;
    chbPay: TCheckBox;
    lcbPay: TDBLookupComboBox;
    odsPay: TOracleDataSet;
    dsPay: TDataSource;
    odsPayT006_ID: TFloatField;
    odsPayDESC_FLD: TStringField;
    odsListT001_DATE_ON: TDateTimeField;
    odsListT001_DATE_OFF: TDateTimeField;
    odsListT001_OP_SUM_RUB: TFloatField;
    odsListT035_ID: TFloatField;
    odsListT030_PARENT_ID: TFloatField;
    odsListT028_PARENT_ID: TFloatField;
    odsListT027_ID_1: TFloatField;
    odsListT012_PARENT_ID: TFloatField;
    odsListT013_PARENT_ID: TFloatField;
    odsListT028_INN: TStringField;
    odsListT001_INV_TYPE_DESCR: TStringField;
    odsListT001_INV_TYPE: TIntegerField;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    actSetInvStraight: TAction;
    actSetInvCase: TAction;
    actSetInvNoCount: TAction;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    oqSetInvType: TOracleQuery;
    odsListT006_ID: TFloatField;
    odsListT001_REPO_TYPE: TStringField;
    odsListT001_DPB_COMMENT: TStringField;
    ToolButton11: TToolButton;
    actCloneSumInfo: TAction;
    oqCloneSumInfo: TOracleQuery;
    actMaturDate: TAction;
    ToolBar3: TToolBar;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton20: TToolButton;
    ToolButton12: TToolButton;
    cbRes: TCheckBox;
    odsListT001_REMAINS_TYPE: TIntegerField;
    odsListT001_PROCESSED: TIntegerField;
    odsListT001_PROCESSED_DESC: TStringField;
    odsListT001_DATA_SOURCE: TIntegerField;
    odsListT013_REAL_PARENT_ID: TFloatField;
    odsListT012_REAL_PARENT_ID: TFloatField;
    odsListT012_FICT_STATE: TStringField;
    odsListT012_FICT_STATE_DESC: TStringField;
    odsListT013_FICT_STATE: TStringField;
    odsListT013_FICT_STATE_DESC: TStringField;
    odsListOP_MONTH: TStringField;
    odsListIS_FIRST: TStringField;
    odsListT012_FI_SNS: TStringField;
    odsListT012_FI_SNS_DESC: TStringField;
    odsListT012_FI_PB: TStringField;
    odsListT012_FI_PB_DESC: TStringField;
    odsListT012_REGION_CODE: TFloatField;
    odsListT012_REGION_NAME: TStringField;
    odsListT012_INDUSTRY_CODE: TStringField;
    odsListT012_INDUSTRY_NAME: TStringField;
    odsListT028_FI_SNS: TStringField;
    odsListT028_FI_SNS_DESC: TStringField;
    odsListT028_FI_PB: TStringField;
    odsListT028_FI_PB_DESC: TStringField;
    odsListT028_REGION_CODE: TFloatField;
    odsListT028_REGION_NAME: TStringField;
    odsListT028_INDUSTRY_CODE: TStringField;
    odsListT028_INDUSTRY_NAME: TStringField;
    tbInfo: TToolButton;
    actInfo: TAction;
    odsListIIP_SHS_FLAG: TStringField;
    odsListT001_SEC_DESC: TStringField;
    odsListT036_COMMENTS: TStringField;
    odsListT001_RATE: TFloatField;
    odsListT001_RATE_DELTA: TFloatField;
    odsListT001_REPO_DATE: TDateTimeField;
    lcbOper: TxxxDBLookupCheckCombo;
    odsOperT011_TYPE_ID: TFloatField;
    odsOperT011_OPERATION_DESC: TStringField;
    odsListT028_ICODE: TStringField;
    odsListT028_INAME: TStringField;
    odsListC22_NAME: TStringField;
    odsListC22: TStringField;
    odsListT001_PERCENT: TFloatField;
    odsListT055_HEADER_ID: TFloatField;
    odsListT001_ROW_PRFX: TStringField;
    actGoTo417: TAction;
    ToolButton7: TToolButton;
    ToolButton14: TToolButton;
    odsListOWN_EMISSION: TFloatField;
    ToolButton21: TToolButton;
    pmSetFictive: TPopupMenu;
    N_SetFictive: TMenuItem;
    N_SetReal: TMenuItem;
    N_SetNotRate: TMenuItem;
    N_SetNeedRate: TMenuItem;
    actSetFictive: TAction;
    actSetReal: TAction;
    actSetNoRate: TAction;
    actSetNeedRate: TAction;
    oqSetFictive: TOracleQuery;
    actSetByCriteria: TAction;
    actSetByCriteria1: TMenuItem;
    procedure fmPeriodlcbPeriodCloseUp(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure xxxDBGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actApplayFilterExecute(Sender: TObject);

    procedure odsListAfterOpen(DataSet: TDataSet);
    procedure cbResClick(Sender: TObject);
    procedure actInfoUpdate(Sender: TObject);
    procedure actInfoExecute(Sender: TObject);
    procedure actGoTo417Update(Sender: TObject);
    procedure actGoTo417Execute(Sender: TObject);
    procedure actSetFictiveUpdate(Sender: TObject);
    procedure actSetFictiveExecute(Sender: TObject);
    procedure actSetRealUpdate(Sender: TObject);
    procedure actSetRealExecute(Sender: TObject);
    procedure actSetNoRateUpdate(Sender: TObject);
    procedure actSetNoRateExecute(Sender: TObject);
    procedure actSetNeedRateUpdate(Sender: TObject);
    procedure actSetNeedRateExecute(Sender: TObject);
    procedure actSetByCriteriaUpdate(Sender: TObject);
    procedure actSetByCriteriaExecute(Sender: TObject);

  private
    FT002_ID: Double;
    FT001_ID: Double;
    FT001_ROW_PREFIX: Double;
    FT001_ROW_NUM: Double;
    FT001_PART_ID: Double;
    FDividendsForm: Tfrm60_DividentsList;
    procedure RefreshCountData();
  protected
    function DoSelect: boolean; override;
    //
    function EnableAction(Action: TAction): boolean; override;
    procedure ClearSumFilter();  // очистка фильтров поиска в операциях
    procedure SetFictiveState(AState: TFictiveState);
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure Find_405_Link_01(const AT055_ID1, AT055_ID2, AT027_ID, AT028_ID: Double);
    //
    procedure FindOper(const AID: Double);
    procedure FindOperFiltered(const AT055_ID1, AT055_ID2, AT027_ID, AT028_ID, AT006_ID, AT033_ID, AT012_ID, AT013_ID: Double);
    procedure FindAllRezid(const AID: Double);
    procedure FindAllNRezid(const AID: Double);
    procedure FindAllIssuer(const AID: Double);
    procedure FindAllEmission(const AID: Double);
    procedure FindAllEmissInQuartal(const AT055_ID1: Double; const AT055_ID2: Double; const AT030_ID: Double);
    procedure FindAllOperStep3(const AT055_ID: Double; const AT002_BANK_CODE: String);
    procedure FindAllOperStep5(const AT055_ID: Double; const AT002_BANK_CODE: String; const AT027_ID: Double; const AT012_ID: Double);
    //
    procedure FindEmissInPer(const AT055_ID: Double; const AT030_ID: Double);
    procedure FindIssuerInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    procedure FindRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    procedure FindNRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    //
    procedure FindMainEmissInPer(const AT055_ID: Double; const AT030_ID: Double);
    procedure FindMainEmissInQuartal(const AT055_ID1: Double; const AT055_ID2: Double; const AT030_ID: Double);
    procedure FindMainIssuerInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    procedure FindMainRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    procedure FindMainNRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    //
    procedure FindAllMainRezid(const AID: Double);
    procedure FindAllOnlyMainRezid(const AID: Double);
    procedure FindAllMainRezidINN(const AINN: String);
    procedure FindAllMainNRezid(const AID: Double);
    procedure FindAllOnlyMainNRezid(const AID: Double);
    procedure FindAllMainIssuer(const AID: Double);
    procedure FindAllMainIssuerINN(const AINN: String);
    //
    procedure RefreshAfterListChange; override;
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  C001_OpersByDate: TC001_OpersByDate;

implementation

uses SysUtils, Dialogs, frm106_DataSourceForm, frm01_MainForm, C003_FictiveCriteriaForm;

{$R *.DFM}

{ Tfrm05_SumList }

procedure TC001_OpersByDate.RefreshCountData();
const
  SQL_TEXT =
    'SELECT count(*) AS COUNT_STR,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 0, T001_OP_SUM_CROSS, 0)) SUM_IN,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 0, T001_OP_PROC_CROSS, 0)) PROC_IN,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 0, T001_OP_COUNT, 0)) COUNT_IN,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 0, DECODE(T001_OP_COUNT, 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), 0)) PRICE_IN,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 1, T001_OP_SUM_CROSS, 0)) SUM_OUT,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 1, T001_OP_PROC_CROSS, 0)) PROC_OUT,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 1, T001_OP_COUNT, 0)) COUNT_OUT,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 1, DECODE(T001_OP_COUNT, 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), 0)) PRICE_OUT,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 0, T001_OP_SUM_CROSS, -T001_OP_SUM_CROSS)) SUM_SALDO,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 0, T001_OP_PROC_CROSS, -T001_OP_PROC_CROSS)) PROC_SALDO,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 0, T001_OP_COUNT, -T001_OP_COUNT)) COUNT_SALDO,' + #13#10 +
    '       SUM(DECODE(T006_DIRECTION, 0, DECODE(T001_OP_COUNT, 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), -DECODE(T001_OP_COUNT, 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT))) PRICE_SALDO' + #13#10 +
    ' FROM   (%S)';
var
  I: Integer;
begin
  if cbRes.Checked then
  begin
    odsCount.Close;
    odsCount.SQL.Text := Format(SQL_TEXT, [odsList.Sql.Text]);
    for I := 0 to odsList.VariableCount - 1 do
    begin
      odsCount.SetVariable(odsList.VariableName(I), odsList.GetVariable(I));
    end;
    odsCount.Open;
  end;
end;

class function TC001_OpersByDate.GetSelfClass: Tfrm00_Parents;
begin
  Result := TC001_OpersByDate;
end;

class function TC001_OpersByDate.GetSelfForm: Tfrm00_Parent;
begin
  Result := C001_OpersByDate;
end;

procedure TC001_OpersByDate.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
var
  VTime: TDateTime;
  VSec, VMSec, VMin: Integer;
  i: integer;
begin
  // скрываем/показываем колонки BIC и SWIFT с/до марта 2018
  if chbPeriod.Checked and (strtoint(Tfm01_Period1.KeyValue) >= 1972) then
    begin
    for i := 0 to xxxDbGrid.Columns.Count - 1 do
      if xxxDbGrid.Columns.Items[i].FieldName = 'T001_C18' then
        begin
        xxxDbGrid.Columns.Items[i].Visible := False;
        break;
        end;

    for i := 0 to xxxDbGrid.Columns.Count - 1 do
      if xxxDbGrid.Columns.Items[i].FieldName = 'T001_C19' then
        begin
        xxxDbGrid.Columns.Items[i].Visible := False;
        break;
        end;

    for i := 0 to xxxDbGrid.Columns.Count - 1 do
      if xxxDbGrid.Columns.Items[i].FieldName = 'OWN_EMISSION' then
        begin
        xxxDbGrid.Columns.Items[i].Visible := True;
        break;
        end;
    end
  else
    begin
    for i := 0 to xxxDbGrid.Columns.Count - 1 do
      if xxxDbGrid.Columns.Items[i].FieldName = 'T001_C18' then
        begin
        xxxDbGrid.Columns.Items[i].Visible := True;
        break;
        end;

    for i := 0 to xxxDbGrid.Columns.Count - 1 do
      if xxxDbGrid.Columns.Items[i].FieldName = 'T001_C19' then
        begin
        xxxDbGrid.Columns.Items[i].Visible := True;
        break;
        end;

    for i := 0 to xxxDbGrid.Columns.Count - 1 do
      if xxxDbGrid.Columns.Items[i].FieldName = 'OWN_EMISSION' then
        begin
        xxxDbGrid.Columns.Items[i].Visible := False;
        break;
        end;
    end;

  // обновляем данные
  VTime := Now;
  DataSet.Close;
  // если смотрим не отчет КО (КО + месяц) то сортировка не нужна
  if (not chbKO.Checked) or (not chbPeriod.Checked) then
    begin
    xxxDBGrid.MainDataSet.Indexes.Clear;
    end;

  // снимаем фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T002_BANK_CODE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T055_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T001_OP_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T001_OP_PAY_ID');

//  xxxDBGrid.MainDataSet.Conditions.ClearFor('T028_PARENT_ID');
//  xxxDBGrid.MainDataSet.Conditions.ClearFor('T012_PARENT_ID');
//  xxxDBGrid.MainDataSet.Conditions.ClearFor('T013_PARENT_ID');

  if chbKO.Checked then
    begin
    SetStrFilter('T002_BANK_CODE', Frame11.KeyValue);
    end;

  if chbPeriod.Checked then
    begin
    SetNumbBetweenFilter(
// 21.02.2018 - по просьбе Сергея Елизарова и Леры
// фильтр по периоду переведен с даты операции на дату отчета
// чтобы было в соответствии со сводной таблицей
      //'T055_ID',
      'T055_HEADER_ID',
      strtoint(Tfm01_Period1.KeyValue),
      strtoint(Tfm01_Period2.KeyValue)
      );
    end;

  if chbOper.Checked then
    begin
    SetNumbInFilter('T001_OP_ID', lcbOper.KeyValuesFloat);
    end;

  if chbType.Checked then
    begin
    SetNumbFilter('T027_ID', lcbType.KeyValue);
    end;

  if chbPay.Checked then
    begin
    SetNumbFilter('T001_OP_PAY_ID', lcbPay.KeyValue);
    end;

  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
  FT001_ID := odsList.FieldByName('T001_ID').AsFloat;
  FT001_ROW_PREFIX := odsList.FieldByName('T001_ROW_PREFIX').AsFloat;
  FT001_ROW_NUM := odsList.FieldByName('T001_ROW_NUM').AsFloat;
  FT001_PART_ID := odsList.FieldByName('T001_PART_ID').AsFloat;
  FT002_ID := odsList.FieldByName('T002_ID').AsFloat; // !!!

  VMSec := Trunc((Now - VTime) * 24 * 3600 * 1000);
  VSec := Trunc(VMSec / 1000);
  VMin := Trunc(VSec / 60);
  if VMin <= 0 then
  begin
    lbTime.Caption := Format('%f сек.', [VSec + VMSec / 1000]);
  end else
  begin
    lbTime.Caption := Format('%d мин. %d сек.', [VMin, VSec mod 60]);
  end;
end;

class procedure TC001_OpersByDate.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(C001_OpersByDate) := AForm;
end;

procedure TC001_OpersByDate.fmPeriodlcbPeriodCloseUp(Sender: TObject);
begin
  RefreshData('', Unassigned);
end;

function TC001_OpersByDate.EnableAction(Action: TAction): boolean;
begin
  Result := True;
end;

procedure TC001_OpersByDate.RefreshAfterListChange;
begin
  RefreshData('T001_ID', FT001_ID);
  odsList.Locate('T001_ID', FT001_ID, []);
end;

procedure TC001_OpersByDate.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
begin
  inherited;
  if (Column.Field.FieldName = 'T001_N8')
  or (Column.Field.FieldName = 'T001_N9')
  or (Column.Field.FieldName = 'T001_10')
  or (Column.Field.FieldName = 'T001_11')
  or (Column.Field.FieldName = 'T001_N99')
  or (Column.Field.FieldName = 'OWN_EMISSION') then
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
      VState[Column.Field.AsInteger = 1] or
      DFCS_FLAT
      );
  end;
end;

procedure TC001_OpersByDate.FormShow(Sender: TObject);
begin
  if odsOper.Active then Exit;
  
  Tfm01_Period1.Init;
  Tfm01_Period2.Init;
  Frame11.odsPeriod.Close;
  Frame11.odsPeriod.Open;
  Frame11.KeyValue := Frame11.odsPeriod.FieldByName('REGN').AsString;
  odsOper.Close;
  odsOper.Open;
  lcbOper.KeyValue := odsOperT011_ID.AsFloat;
  odsType.Close;
  odsType.Open;
  lcbType.KeyValue := odsTypeT027_ID.AsFloat;
  odsPay.Close;
  odsPay.Open;
  lcbPay.KeyValue := odsPayT006_ID.AsFloat;
  inherited;
end;

procedure TC001_OpersByDate.xxxDBGridMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ShowMessage('MouseDown');
end;

function TC001_OpersByDate.DoSelect: Boolean;
var
  I: Integer;
  VOldCursor: TCursor;
begin
  odsList.DisableControls;
  try
    // Проставляем для КО признак что её нужно пересчитать
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
        // проставляем связь с дивидендами
        oqAddDividend.SetVariable('T001_ID', odsList['T001_ID']);
        oqAddDividend.SetVariable('T050_ID', FDividendsForm.SelectedID);
        oqAddDividend.Execute;
        Application.ProcessMessages;
      end;
      xxxDBGrid.SelectedRows.Clear;
      // сморим данные
      FT001_ID := oqAddDividend.GetVariable('T001_ID');
      RefreshAfterListChange;
      Result := True;
    finally
      Screen.Cursor:= VOldCursor;
    end;
  finally
    odsList.EnableControls;
  end;
end;

procedure TC001_OpersByDate.actApplayFilterExecute(Sender: TObject);
begin
  xxxDBGrid.MainDataSet.Conditions.Clear;
  RefreshData('', Unassigned);
end;

procedure TC001_OpersByDate.odsListAfterOpen(DataSet: TDataSet);
begin
  RefreshCountData;
end;

procedure TC001_OpersByDate.FindAllRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T012_ID', AID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllNRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T013_ID', AID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllIssuer(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T028_ID', AID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllEmission(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T030_ID', AID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllOperStep3(const AT055_ID: Double; const AT002_BANK_CODE: String);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  SetNumbFilter('T055_ID', AT055_ID);
  SetStrFilter('T002_BANK_CODE', AT002_BANK_CODE);

  Tfm01_Period1.lcbPeriod.KeyValue := AT055_ID;
  Tfm01_Period2.lcbPeriod.KeyValue := AT055_ID;
  Frame11.lcbPeriod.KeyValue := AT002_BANK_CODE;
  chbKO.Checked := True;
  chbPeriod.Checked := True;

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllOperStep5(const AT055_ID: Double; const AT002_BANK_CODE: String; const AT027_ID: Double; const AT012_ID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  SetNumbFilter('T055_ID', AT055_ID);
  SetStrFilter('T002_BANK_CODE', AT002_BANK_CODE);
  SetNumbFilter('T027_ID', AT027_ID);
  SetNumbFilter('T012_PARENT_ID', AT012_ID);

  Tfm01_Period1.lcbPeriod.KeyValue := AT055_ID;
  Tfm01_Period2.lcbPeriod.KeyValue := AT055_ID;
  Frame11.lcbPeriod.KeyValue := AT002_BANK_CODE;
  lcbType.KeyValue := AT027_ID;

  chbKO.Checked := True;
  chbPeriod.Checked := True;
  chbType.Checked := True;

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindOper(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T001_ID', AID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindEmissInPer(const AT055_ID, AT030_ID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T030_ID', AT030_ID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindIssuerInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
begin
  // снимаем все фильтры по данному полю
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T028_ID', AT028_ID);
  Set24Filter('T027_ID_1', AFloatArray);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
begin
  // снимаем все фильтры по данному полю
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T012_ID', AT028_ID);
  Set24Filter('T027_ID_1', AFloatArray);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindNRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
begin
  // снимаем все фильтры по данному полю
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T013_ID', AT028_ID);
  Set24Filter('T027_ID_1', AFloatArray);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindMainEmissInPer(const AT055_ID, AT030_ID: Double);
begin
  // снимаем все фильтры по данному полю
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T030_PARENT_ID', AT030_ID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindMainEmissInQuartal(const AT055_ID1, AT055_ID2, AT030_ID: Double);
var
  vOperTypes: TFloatArray;
begin
  // снимаем все фильтры по данному полю
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID1);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID2);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T030_PARENT_ID', AT030_ID);
  // раздел 1
  SetNumbInFilter('T001_PART_ID', [1,4]);
//  // тип операции = 11
//  SetNumbFilter('T011_TYPE_ID', 11);
  // фильтр по типам операции
  SetLength(vOperTypes, 6);
  vOperTypes[0] := 11;
  vOperTypes[1] := 21;
  vOperTypes[2] := 22;
  vOperTypes[3] := 23;
  vOperTypes[4] := 30;
  vOperTypes[5] := 40;
  Set24Filter('T011_TYPE_ID', vOperTypes);
  vOperTypes := nil;

  // исключая фиктивные операции
  SetNumb03Filter('T035_ID', 2);
  // не берем прочие
  SetNumbFilter('T001_REMAINS_TYPE', 0);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.ClearSumFilter;
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

end;

procedure TC001_OpersByDate.FindMainIssuerInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
begin
  // очищаем фильтры
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T028_PARENT_ID', AT028_ID);
  Set24Filter('T027_ID_1', AFloatArray);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindMainNRezidInPer(const AT055_ID,
  AT028_ID: Double; AFloatArray: TFloatArray);
begin
  // очищаем фильтры
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T013_PARENT_ID', AT028_ID);
  Set24Filter('T027_ID_1', AFloatArray);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindMainRezidInPer(const AT055_ID,
  AT028_ID: Double; AFloatArray: TFloatArray);
begin
  // очищаем фильтры
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T012_PARENT_ID', AT028_ID);
  Set24Filter('T027_ID_1', AFloatArray);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllEmissInQuartal(const AT055_ID1, AT055_ID2,
  AT030_ID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID1);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID2);
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T030_ID', AT030_ID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllMainIssuer(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по эмитенту
  SetNumbFilter('T028_PARENT_ID', AID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllMainIssuerINN(const AINN: String);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по ИНН эмитента
  SetStrFilter('T028_INN', AINN);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllMainNRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по нерезиденту
  SetNumbFilter('T013_PARENT_ID', AID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllOnlyMainNRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по нерезиденту
  SetNumbFilter('T013_REAL_PARENT_ID', AID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllMainRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T012_PARENT_ID', AID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllOnlyMainRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по нерезиденту
  SetNumbFilter('T012_REAL_PARENT_ID', AID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindAllMainRezidINN(const AINN: String);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  chbOper.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по ИНН резидента
  SetStrFilter('T001_REZID_CO_ID', AINN);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.FindOperFiltered(const AT055_ID1, AT055_ID2,
  AT027_ID, AT028_ID, AT006_ID, AT033_ID, AT012_ID, AT013_ID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;

  chbPeriod.Checked := true;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID1);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID2);

  chbType.Checked := true;
  lcbType.KeyValue := FloatToStr(AT027_ID);

  chbOper.Checked := False;
  //lcbOper.KeyValue := T011_TYPE_ID;

  chbKO.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbInFilter('T001_PART_ID', [1,4]);
  SetNumbInFilter('T001_PART_ID', [2,5]);

  // устанавливаем фильтр по эмитенту
  SetNumbFilter('T028_PARENT_ID', AT028_ID);

  // устанавливаем фильтр по направлению платежа
  SetNumbFilter('T006_DIRECTION', AT006_ID);

  // устанавливаем фильтр
  //SetIsNullFilter('T030_PARENT_ID');

  // устанавливаем фильтр по типу репо
  SetStrFilter('T001_REPO_TYPE', 'S');

  // устанавливаем фильтр по типу резидентов
  SetNumb03Filter('T001_REZID_TYPE', AT033_ID);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T012_ID', AT012_ID);

  // устанавливаем фильтр по нерезиденту
  SetNumbFilter('T013_ID', AT013_ID);

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.cbResClick(Sender: TObject);
begin
  RefreshCountData;
end;

procedure TC001_OpersByDate.Find_405_Link_01(const AT055_ID1, AT055_ID2, AT027_ID,
  AT028_ID: Double);
begin
  // очищаем фильтры
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID1);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID2);

  chbType.Checked := true;
  lcbType.KeyValue := FloatToStr(AT027_ID);

  // устанавливаем фильтр по эмитенту
  SetNumbFilter('T028_ID', AT028_ID);

  // IIP SHS3
  SetStrFilter('IIP_SHS_FLAG', 'Y');

  RefreshAfterListChange;
end;

procedure TC001_OpersByDate.actInfoUpdate(Sender: TObject);
begin
  actInfo.Enabled := not odsList.FieldByName('T002_ID').IsNull;
end;

procedure TC001_OpersByDate.actInfoExecute(Sender: TObject);
var
  SourceForm: Tfrm106_DataSource;
begin
  SourceForm := Tfrm106_DataSource.Create(Self);
  SourceForm.InitData(if405, odsList.FieldByName('T002_ID').AsFloat);
  SourceForm.ShowModal;
  SourceForm.Free;
end;

procedure TC001_OpersByDate.actGoTo417Update(Sender: TObject);
begin
  actGoTo417.Enabled := not odsList.IsEmpty;
end;

procedure TC001_OpersByDate.actGoTo417Execute(Sender: TObject);
begin
  frm01_Main.Find_417(
    odsListT001_TYPE_ID.AsString,        // Тип ц.б.
    odsListT001_DATE_OP.AsDateTime,      // Дата операции
    odsListT002_BANK_CODE.AsString,      // Код банка
    odsListT011_TYPE_ID.AsString,        // Код операции (T011_ID)
    odsListT030_PARENT_ID.AsFloat,       // для Isin
    odsListT006_NAME.AsString,           // Направление платежа
    odsListT001_OP_CR_ID.AsString,       // Валюта '643'
    odsListT001_OP_COUNT.AsFloat,        // Количество бумаг
    odsListT001_OP_SUM.AsFloat           // Сумма
    );
end;

procedure TC001_OpersByDate.actSetFictiveUpdate(Sender: TObject);
begin
  actSetFictive.Enabled := not odsList.IsEmpty and (xxxDbGrid.SelectedRows.Count <> 0);
end;

procedure TC001_OpersByDate.actSetFictiveExecute(Sender: TObject);
begin
  SetFictiveState(fsFictive);
end;

procedure TC001_OpersByDate.actSetRealUpdate(Sender: TObject);
begin
  actSetReal.Enabled := not odsList.IsEmpty and (xxxDbGrid.SelectedRows.Count <> 0);
end;

procedure TC001_OpersByDate.actSetRealExecute(Sender: TObject);
begin
  SetFictiveState(fsReal);
end;

procedure TC001_OpersByDate.actSetNoRateUpdate(Sender: TObject);
begin
  actSetNoRate.Enabled := not odsList.IsEmpty and (xxxDbGrid.SelectedRows.Count <> 0);
end;

procedure TC001_OpersByDate.actSetNoRateExecute(Sender: TObject);
begin
  SetFictiveState(fsNotRate);
end;

procedure TC001_OpersByDate.actSetNeedRateUpdate(Sender: TObject);
begin
  actSetNeedRate.Enabled := not odsList.IsEmpty and (xxxDbGrid.SelectedRows.Count <> 0);
end;

procedure TC001_OpersByDate.actSetNeedRateExecute(Sender: TObject);
begin
  SetFictiveState(fsNeedRate);
end;

procedure TC001_OpersByDate.SetFictiveState(AState: TFictiveState);
var
  vCursor: TCursor;
  vT035_ID: Double;
  i: integer;
  bm: TBookmark;
  vT001_ID: Double;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  case AState of
    fsNeedRate: vT035_ID := 1;
    fsFictive:  vT035_ID := 2;
    fsReal:     vT035_ID := 3;
    fsNotRate:  vT035_ID := 4;
  else
    vT035_ID := 0;
  end;
  odsList.DisableControls;
  bm := odsList.GetBookmark;
  try
    if xxxDBGrid.SelectedRows.Count = 0 then
      xxxDBGrid.SelectedRows.CurrentRowSelected := True;

    for i := 0 to xxxDbGrid.SelectedRows.Count-1 do
      begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[i]);
      vT001_ID := odsListT001_ID.AsFloat;
      oqSetFictive.SetVariable('T001_ID', odsListT001_ID.AsFloat);
      oqSetFictive.SetVariable('T035_ID', vT035_ID);
      oqSetFictive.Execute;
      RefreshData('T001_ID', vT001_ID);
      end;
  finally
    xxxDBGrid.SelectedRows.Clear;
    odsList.GotoBookmark(bm);
    odsList.FreeBookmark(bm);
    odsList.EnableControls;
    Screen.Cursor:= vCursor;
  end;
end;

procedure TC001_OpersByDate.actSetByCriteriaUpdate(Sender: TObject);
begin
  actSetByCriteria.Enabled := not odsList.IsEmpty;
end;

procedure TC001_OpersByDate.actSetByCriteriaExecute(Sender: TObject);
var
  vForm: TC003_FictiveCriteria;
begin
  vForm := TC003_FictiveCriteria.Create(Self);
  vForm.FDataSelect := xxxDbGrid.MainDataset.SQL.Text;
  if vForm.ShowModal = mrOk then;
    RefreshData('', Unassigned);
  vForm.Free;
end;

end.
