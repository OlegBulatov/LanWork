unit frm05_SumListForm;

interface

uses
  Windows, frm04_ListForm, Db, StdCtrls, ExtCtrls, DBCtrls, fm04_PrmKOFrame,
  fm01_PeriodFrame, Mask, Oracle, OracleData, Menus, Classes, ActnList,
  ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid,
  ToolWin, Controls, frm60_DividentsListForm, frm04_EditForm, frm00_ParentForm,
  untParams, fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, L001_OpCodeFilterFrame, Variants;

type
  TFictiveState = (fsNeedRate, fsFictive, fsNotFictive, fsUnderQuest);

  Tfrm05_SumList = class(Tfrm04_List)
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
    dsType: TDataSource;
    chbType: TCheckBox;
    lcbType: TDBLookupComboBox;
    odsType: TOracleDataSet;
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
    oqMultiUpdate: TOracleQuery;
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
    rgSearchType: TRadioGroup;
    odsListT012_REAL_PARENT_ID: TFloatField;
    odsListT012_FICT_STATE: TStringField;
    odsListT012_FICT_STATE_DESC: TStringField;
    odsListT013_FICT_STATE: TStringField;
    odsListT013_FICT_STATE_DESC: TStringField;
    odsListOP_MONTH: TStringField;
    odsListIS_FIRST: TStringField;
    odsListT027_MAIN_ID: TFloatField;
    tbInfo: TToolButton;
    actInfo: TAction;
    odsListT001_REPO_DATE: TDateTimeField;
    odsListC22_NAME: TStringField;
    odsListC22: TStringField;
    odsListT001_PERCENT: TFloatField;
    odsListT001_ROW_PRFX: TStringField;
    pmEdit: TPopupMenu;
    miEditRecord: TMenuItem;
    miEditSecType: TMenuItem;
    actEditSecType: TAction;
    oqEditSecType: TOracleQuery;
    odsListT001_DR_COUNT: TFloatField;
    odsListT001_DR_COUNT_SRC: TStringField;
    N16: TMenuItem;
    actEditDrCount: TAction;
    odsListDR_COUNT_DIFF: TFloatField;
    oqSetDrCount: TOracleQuery;
    cbDrCountDiff: TComboBox;
    Label11: TLabel;
    ToolButton7: TToolButton;
    ToolButton14: TToolButton;
    actGoTo417: TAction;
    odsListOWN_EMISSION: TFloatField;
    OpCodeFilter: TL001_OpCodeFilter;
    ToolButton21: TToolButton;
    actCheckIsu: TAction;
    oqCheckIsu: TOracleQuery;
    odsListT001_ISU_ERR: TFloatField;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    pmFictive: TPopupMenu;
    N_Fictive: TMenuItem;
    N_NonFictive: TMenuItem;
    N_NotCalc: TMenuItem;
    N_Unknown: TMenuItem;
    actSetFictive: TAction;
    actSetNotFictive: TAction;
    actSetUnderQuest: TAction;
    actSetNeedRate: TAction;
    oqSetFictive: TOracleQuery;
    N_Criteria: TMenuItem;
    actSetByCriteria: TAction;
    odsListT001_TAX: TFloatField;
    odsListT001_TAX_CROSS: TFloatField;
    N17: TMenuItem;
    N18: TMenuItem;
    procedure fmPeriodlcbPeriodCloseUp(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure xxxDBGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actApplayFilterExecute(Sender: TObject);
    procedure actInvStraightExecute(Sender: TObject);
    procedure actInvCaseExecute(Sender: TObject);
    procedure actInvNoCountExecute(Sender: TObject);
    procedure actCloneSumInfoExecute(Sender: TObject);

    procedure odsListAfterOpen(DataSet: TDataSet);
    procedure actMaturDateExecute(Sender: TObject);
    procedure actCloneSumInfoUpdate(Sender: TObject);
    procedure actMaturDateUpdate(Sender: TObject);
    procedure actSetInvStraightUpdate(Sender: TObject);
    procedure actSetInvCaseUpdate(Sender: TObject);
    procedure actSetInvNoCountUpdate(Sender: TObject);
    procedure cbResClick(Sender: TObject);
    procedure rgSearchTypeClick(Sender: TObject);
    procedure actInfoUpdate(Sender: TObject);
    procedure actInfoExecute(Sender: TObject);
    procedure actAddAttributesUpdate(Sender: TObject);
    procedure actEditSecTypeUpdate(Sender: TObject);
    procedure actEditSecTypeExecute(Sender: TObject);
    procedure actEditDrCountUpdate(Sender: TObject);
    procedure actEditDrCountExecute(Sender: TObject);
    procedure cbDrCountDiffDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cbDrCountDiffChange(Sender: TObject);
    procedure actGoTo417Update(Sender: TObject);
    procedure actGoTo417Execute(Sender: TObject);
    procedure actCheckIsuUpdate(Sender: TObject);
    procedure actCheckIsuExecute(Sender: TObject);
    procedure actSetFictiveUpdate(Sender: TObject);
    procedure actSetFictiveExecute(Sender: TObject);
    procedure actSetNotFictiveUpdate(Sender: TObject);
    procedure actSetNotFictiveExecute(Sender: TObject);
    procedure actSetUnderQuestUpdate(Sender: TObject);
    procedure actSetUnderQuestExecute(Sender: TObject);
    procedure actSetNeedRateUpdate(Sender: TObject);
    procedure actSetNeedRateExecute(Sender: TObject);
    procedure actSetByCriteriaUpdate(Sender: TObject);
    procedure actSetByCriteriaExecute(Sender: TObject);
    procedure odsListBeforeOpen(DataSet: TDataSet);
    procedure PopupMenuPopup(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure actRemoveAllSettingsExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    FT002_ID: Double;
    FT001_ID: Double;
    FT001_ROW_PREFIX: Double;
    FT001_ROW_NUM: Double;
    FT001_PART_ID: Double;

    FDividendsForm: Tfrm60_DividentsList;

    FCheckInProgress: Boolean;

    procedure RefreshCountData();
    procedure SetFictiveState(AState: TFictiveState);
    function  GetIsuErrFilterMask: integer;
  protected
    function DoSelect: boolean; override;
    //
    procedure OnAdd; override;
    procedure OnEdit; override;
    //
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
    //
    function EditForm: Tfrm04_Edit; override;
    //
    function MultiEditForm: Tfrm04_Edit;
    function MultiCancelChange: Boolean;
    function MultiSaveChange: Boolean;

    function IsDuplicateFound: Boolean; override;
    function EnableAction(Action: TAction): boolean; override;
    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
    procedure WriteLogOnDelete(); override;
    //
    procedure ClearSumFilter();  // очистка фильтров поиска в операциях


    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    constructor Create(AOwner: TComponent); override;

    procedure FindOper(const AID: Double);
    procedure FindOperFiltered(const AT055_ID1, AT055_ID2, AT027_ID, AT028_ID, AT006_ID, AT033_ID, AT012_ID, AT013_ID: Double; AT001_PART_IDs: array of Double);
    procedure FindAllRezid(const AID: Double);
    procedure FindAllNRezid(const AID: Double);
    procedure FindAllIssuer(const AID: Double);
    procedure FindAllEmission(const AID: Double);
    procedure FindAllEmissInQuartal(const AT055_ID1: Double; const AT055_ID2: Double; const AT030_ID: Double);
    procedure FindAllOperStep3(const AT055_ID: Double; const AT002_BANK_CODE: String);
    procedure FindAllOperStep5(const AT055_ID: Double; const AT002_BANK_CODE: String; const AT027_ID: Double; const AT012_ID: Double);
    //
    procedure FindEmissInPer(const AT055_ID: Double; const AT030_ID: Double);
    procedure FindIssuerInPer(const AT055_ID, AT028_ID: Double; AT027_IDs: array of Double);
    procedure FindRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    procedure FindNRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    //
    procedure FindMainEmissInPer(const AT055_ID: Double; const AT030_ID: Double);
    procedure FindMainEmissInQuartal(const AT055_ID1: Double; const AT055_ID2: Double; const AT030_ID: Double);
    procedure FindMainIssuerInPer(const AT055_ID, AT028_ID: Double; AT027_IDs: array of Double);
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
    procedure FindOpersByMainIssueAndRezInPer(const AT055_ID, AT027_MAIN_ID, AT012_ID: Double);
    procedure FindOpersByMainIssueAndNrezInPer(const AT055_ID, AT027_MAIN_ID, AT013_ID: Double);
    //
    procedure FindMainEmissionsInPeriod(const AT055_ID_S, AT055_ID_E: Double; AT030_IDs: TFloatArray);
    //
    procedure RefreshAfterListChange; override;
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm05_SumList: Tfrm05_SumList;

implementation

uses
  SysUtils, Dialogs, dm005_MainData, frm05_SumEditForm, Matrix, A00_MatrixConst,
  frm05_SumMultiEditForm, frm106_DataSourceForm, frm05_SecTypeEditDlg, Graphics,
  frm05_DrCountEditDlg, frm01_MainForm, C003_FictiveCriteriaForm;

{$R *.DFM}

{ Tfrm05_SumList }

procedure Tfrm05_SumList.RefreshCountData();
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
    odsCount.ClearVariables;
    odsCount.SQL.Text := Format(SQL_TEXT, [odsList.Sql.Text]);
    for I := 0 to odsList.VariableCount - 1 do
      begin                                                                      
      odsCount.DeclareVariable(odsList.VariableName(I), odsList.VariableType(I));
      odsCount.SetVariable(odsList.VariableName(I), odsList.GetVariable(I));
      end;
    odsCount.Open;
  end;
end;

class function Tfrm05_SumList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm05_SumList;
end;

class function Tfrm05_SumList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm05_SumList;
end;

procedure Tfrm05_SumList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
var
  VTime: TDateTime;
  VSec, VMSec, VMin: Integer;
  i: integer;
begin
  // скрываем/показываем колонки BIC и SWIFT с/до марта 2018 (T055_ID = 1972)
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
  xxxDBGrid.MainDataSet.Conditions.ClearFor('DR_COUNT_DIFF');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T001_DR_COUNT_SRC');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T001_DR_COUNT');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T011_TYPE_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T001_TYPE_ID');

  if chbKO.Checked then
  begin
    SetStrFilter('T002_BANK_CODE', Frame11.KeyValue);
  end;

  if chbPeriod.Checked then
  begin
    SetNumbBetweenFilter(
      'T055_ID',
      strtoint(Tfm01_Period1.KeyValue),
      strtoint(Tfm01_Period2.KeyValue)
      );
  end;

  if OpCodeFilter.cb.Checked then
  begin
    SetNumbInFilter('T001_OP_ID', OpCodeFilter.KeyValues);
  end;

  if chbType.Checked then
  begin
    SetNumbFilter('T027_ID', lcbType.KeyValue);
  end;

  if chbPay.Checked then
  begin
    SetNumbFilter('T001_OP_PAY_ID', lcbPay.KeyValue);
  end;

  case cbDrCountDiff.ItemIndex of
    2: begin
      SetStrFilter('T011_TYPE_ID', '11');
      SetStrFilter('T001_TYPE_ID', 'DR1');
//     (odsListT011_TYPE_ID.AsString = '11') and (odsListT001_TYPE_ID.AsString = 'DR1')
      SetIsNullFilter('T001_DR_COUNT'); // Нет расчета
      end;
    3: SetNumbFilter04('DR_COUNT_DIFF', 20); // Расхождение > 20%
    4: SetIsNotNullFilter('T001_DR_COUNT_SRC'); // Ручной ввод
  end;

  DataSet.Open;
  if KeyFields = '' then
    begin
    if DefPosition = dpLast then DataSet.Last;
    end
  else
    DataSet.Locate(KeyFields, KeyValues, []);

  FT001_ID := odsList.FieldByName('T001_ID').AsFloat;
  FT001_ROW_PREFIX := odsList.FieldByName('T001_ROW_PREFIX').AsFloat;
  FT001_ROW_NUM := odsList.FieldByName('T001_ROW_NUM').AsFloat;
  FT001_PART_ID := odsList.FieldByName('T001_PART_ID').AsFloat;
  FT002_ID := odsList.FieldByName('T002_ID').AsFloat; // !!!

  VMSec := Trunc((Now - VTime) * 24 * 3600 * 1000);
  VSec := Trunc(VMSec / 1000);
  VMin := Trunc(VSec / 60);
  if VMin <= 0 then
    lbTime.Caption := Format('%f сек.', [VSec + VMSec / 1000])
  else
    lbTime.Caption := Format('%d мин. %d сек.', [VMin, VSec mod 60]);
end;

class procedure Tfrm05_SumList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm05_SumList) := AForm;
end;

procedure Tfrm05_SumList.fmPeriodlcbPeriodCloseUp(Sender: TObject);
begin
  RefreshData('', Unassigned);
end;

function Tfrm05_SumList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm05_SumEdit.Instance;
end;

procedure Tfrm05_SumList.OnAdd;
var
  xQuery: TOracleQuery;
begin
  if EditForm = nil then Exit;

  //FT001_ID := odsList['T001_ID'];
  FT002_ID := odsList['T002_ID'];
  FT001_PART_ID := odsList['T001_PART_ID'];
  FT001_ROW_NUM := odsList['T001_ROW_NUM'];
  FT001_ROW_PREFIX := odsList['T001_ROW_PREFIX'];

  if chbPeriod.Checked then
    Tfrm05_SumEdit(EditForm).T055_ID := strtoint(Tfm01_Period1.KeyValue)
  else
    Tfrm05_SumEdit(EditForm).T055_ID := DataSet['T055_ID'];

  if chbKO.Checked then
    Tfrm05_SumEdit(EditForm).BankCode := Frame11.lcbPeriod.KeyValue
  else
    Tfrm05_SumEdit(EditForm).BankCode := odsList['T002_BANK_CODE'];

  // отображаем форму для добавления записи
  EditType := etInsert;
  DataSet.Insert;
  DataSet.FieldByName('T002_ID').AsFloat := FT002_ID;
  DataSet.FieldByName('T001_PART_ID').AsFloat := FT001_PART_ID;
  xQuery := TOracleQuery.Create(nil);
  xQuery.Session := dmMain.OracleSession;
  try
    xQuery.SQL.Text := 'select max(T001_ROW_NUM)+1 as maxnum from T001_SUM ' +
      'where T002_ID = ' + FloatToStr(FT002_ID) +
      ' and T001_ROW_PREFIX = ' + FloatToStr(FT001_ROW_PREFIX);
    xQuery.Execute;
    DataSet.FieldByName('T001_ROW_NUM').AsFloat := xQuery.Field('MAXNUM');
    DataSet.FieldByName('T001_ROW_PREFIX').AsFloat := FT001_ROW_PREFIX;
  finally
    xQuery.Free;
  end;
  DataSet.FieldByName('T001_DATE_OP').AsDateTime := Trunc(Now);
  DataSet.FieldByName('T001_DATE_ON').AsDateTime := Trunc(Now);
  DataSet.FieldByName('T001_DATE_OFF').AsDateTime := Trunc(Now);
  DataSet.FieldByName('T001_IS_RANSOM').AsString := 'N';
  DataSet.FieldByName('T001_PROCESSED').AsFloat := 1;

  with EditForm do
  begin
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

procedure Tfrm05_SumList.OnEdit;
begin
  if EditForm = nil then Exit;

  FT001_ID := odsList['T001_ID'];
  FT002_ID := odsList['T002_ID'];
  FT001_PART_ID := odsList['T001_PART_ID'];
  FT001_ROW_NUM := odsList['T001_ROW_NUM'];
  FT001_ROW_PREFIX := odsList['T001_ROW_PREFIX'];

  DataSet.Edit;
  EditType := etEdit;
  if DataSet.FieldByName('T001_IS_RANSOM').AsString = '' then
    DataSet.FieldByName('T001_IS_RANSOM').AsString := 'N';

  if chbPeriod.Checked then
    begin
    Tfrm05_SumEdit(EditForm).T055_ID := strtoint(Tfm01_Period1.KeyValue);
    end
  else
    begin
    Tfrm05_SumEdit(EditForm).T055_ID := DataSet['T055_ID'];
    end;

  if chbKO.Checked then
  begin
    Tfrm05_SumEdit(EditForm).BankCode := Frame11.lcbPeriod.KeyValue;
  end
  else
  begin
    Tfrm05_SumEdit(EditForm).BankCode := DataSet['T002_BANK_CODE'];
  end;

  with EditForm do
  begin
    DataSource := dsList;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

procedure Tfrm05_SumList.DoDelete;
begin
  // вызываем процедуру удаления записи
  oqDelete.SetVariable('T001_ID', odsList['T001_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT001_ID := odsList['T001_ID'];
  FT002_ID := odsList['T002_ID'];
  FT001_PART_ID := odsList['T001_PART_ID'];
  FT001_ROW_NUM := odsList['T001_ROW_NUM'];
  FT001_ROW_PREFIX := odsList['T001_ROW_PREFIX'];
end;

procedure Tfrm05_SumList.DoEdit;
begin
  // редактируем запись
  oqUpdate.SetVariable('T001_ID', odsList['T001_ID']);
  oqUpdate.SetVariable('T002_ID', odsList['T002_ID']);
  oqUpdate.SetVariable('T001_PART_ID', odsList['T001_PART_ID']);
  oqUpdate.SetVariable('T001_ROW_PREFIX', odsList['T001_ROW_PREFIX']);
  oqUpdate.SetVariable('T001_ROW_PRFX', odsList['T001_ROW_PRFX']);
  oqUpdate.SetVariable('T001_ROW_NUM', odsList['T001_ROW_NUM']);
  oqUpdate.SetVariable('T001_DATE_OP', odsList['T001_DATE_OP']);
  oqUpdate.SetVariable('T001_OP_ID', odsList['T001_OP_ID']);
  oqUpdate.SetVariable('T001_OP_PAY_ID', odsList['T001_OP_PAY_ID']);
  oqUpdate.SetVariable('T001_OP_COUNT', odsList['T001_OP_COUNT']);
  oqUpdate.SetVariable('T001_OP_CR_ID', odsList['T001_OP_CR_ID']);
  oqUpdate.SetVariable('T001_OP_SUM', odsList['T001_OP_SUM']);
  oqUpdate.SetVariable('T001_OP_PROC', odsList['T001_OP_PROC']);
  oqUpdate.SetVariable('T012_ID', odsList['T012_ID']);
  oqUpdate.SetVariable('T013_ID', odsList['T013_ID']);
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']);
  oqUpdate.SetVariable('T001_DATE_ON', odsList['T001_DATE_ON']);
  oqUpdate.SetVariable('T001_DATE_OFF', odsList['T001_DATE_OFF']);
  oqUpdate.SetVariable('T001_CR_ID', odsList['T001_CR_ID']);
  oqUpdate.SetVariable('T001_IS_RANSOM', odsList['T001_IS_RANSOM']);
  oqUpdate.SetVariable('T035_ID', odsList['T035_ID']);
  oqUpdate.SetVariable('T001_N8', odsList['T001_N8']);
  oqUpdate.SetVariable('T001_N9', odsList['T001_N9']);
  oqUpdate.SetVariable('T001_10', odsList['T001_10']);
  oqUpdate.SetVariable('T001_11', odsList['T001_11']);
  oqUpdate.SetVariable('T001_N99', odsList['T001_N99']);
  oqUpdate.SetVariable('T001_COMMENT', odsList['T001_COMMENT']);
  oqUpdate.SetVariable('T001_C11', odsList['T001_C11']);
  oqUpdate.SetVariable('T001_C12', odsList['T001_C12']);
  oqUpdate.SetVariable('T001_C16', odsList['T001_C16']);
  oqUpdate.SetVariable('T001_C17', odsList['T001_C17']);
  oqUpdate.SetVariable('T001_C18', odsList['T001_C18']);
  oqUpdate.SetVariable('T001_C19', odsList['T001_C19']);
  oqUpdate.SetVariable('T001_C20', odsList['T001_C20']);
  oqUpdate.SetVariable('T001_INV_TYPE', odsList['T001_INV_TYPE']);
  oqUpdate.SetVariable('T001_PROCESSED', odsList['T001_PROCESSED']);
  oqUpdate.SetVariable('T001_DPB_COMMENT', odsList['T001_DPB_COMMENT']);
  oqUpdate.SetVariable('T001_DATA_SOURCE', odsList['T001_DATA_SOURCE']);
  oqUpdate.SetVariable('IS_FIRST', odsList['IS_FIRST']);

  oqUpdate.Execute;

  FT001_ID := oqUpdate.GetVariable('T001_ID');
end;

procedure Tfrm05_SumList.DoInsert;
begin
  // Добавляем запись
  oqAdd.SetVariable('T002_ID', odsList['T002_ID']);
  oqAdd.SetVariable('T001_PART_ID', odsList['T001_PART_ID']);
  oqAdd.SetVariable('T001_ROW_PREFIX', odsList['T001_ROW_PREFIX']);
  oqAdd.SetVariable('T001_ROW_PRFX', odsList['T001_ROW_PRFX']);
  oqAdd.SetVariable('T001_ROW_NUM', odsList['T001_ROW_NUM']);
  oqAdd.SetVariable('T001_DATE_OP', odsList['T001_DATE_OP']);
  oqAdd.SetVariable('T001_OP_ID', odsList['T001_OP_ID']);
  oqAdd.SetVariable('T001_OP_PAY_ID', odsList['T001_OP_PAY_ID']);
  oqAdd.SetVariable('T001_OP_COUNT', odsList['T001_OP_COUNT']);
  oqAdd.SetVariable('T001_OP_CR_ID', odsList['T001_OP_CR_ID']);
  oqAdd.SetVariable('T001_OP_SUM', odsList['T001_OP_SUM']);
  oqAdd.SetVariable('T001_OP_PROC', odsList['T001_OP_PROC']);
  oqAdd.SetVariable('T012_ID', odsList['T012_ID']);
  oqAdd.SetVariable('T013_ID', odsList['T013_ID']);
  oqAdd.SetVariable('T030_ID', odsList['T030_ID']);
  oqAdd.SetVariable('T001_DATE_ON', odsList['T001_DATE_ON']);
  oqAdd.SetVariable('T001_DATE_OFF', odsList['T001_DATE_OFF']);
  oqAdd.SetVariable('T001_CR_ID', odsList['T001_CR_ID']);
  oqAdd.SetVariable('T001_IS_RANSOM', odsList['T001_IS_RANSOM']);
  oqAdd.SetVariable('T001_INV_TYPE', odsList['T001_INV_TYPE']);
  oqAdd.SetVariable('T001_PROCESSED', odsList['T001_PROCESSED']);
  oqAdd.SetVariable('T001_DPB_COMMENT', odsList['T001_DPB_COMMENT']);
  oqAdd.Execute;
  FT001_ID := oqAdd.GetVariable('T001_ID');
  FT002_ID := oqAdd.GetVariable('T002_ID');
  FT001_PART_ID := oqAdd.GetVariable('T001_PART_ID');
  FT001_ROW_PREFIX := oqAdd.GetVariable('T001_ROW_PREFIX');
  FT001_ROW_NUM := oqAdd.GetVariable('T001_ROW_NUM');
end;

procedure Tfrm05_SumList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_DATA_1, true, '');
end;

procedure Tfrm05_SumList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_DATA_1, true, '');
end;

procedure Tfrm05_SumList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_DATA_1, true, '');
end;

function Tfrm05_SumList.EnableAction(Action: TAction): boolean;
begin
  if dmMain.ViewHistory then
  begin
    Result := False;
    exit;
  end;

  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_DATA_1, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_DATA_1, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_DATA_1, FALSE)
  else if Action.Name= 'actCloneSumInfo' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_DATA_1, FALSE)
  else if Action.Name= 'actMaturDate' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_DATA_1, FALSE)
  else if Action.Name= 'actSetInvStraight' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_DATA_1, FALSE)
  else if Action.Name= 'actSetInvCase' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_DATA_1, FALSE)
  else if Action.Name= 'actSetInvNoCount' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_DATA_1, FALSE)
  else result:= true;
end;

function Tfrm05_SumList.IsDuplicateFound: Boolean;
begin
  // проверяем существует ли уже такая запись
  oqDupl.SetVariable('T002_ID', odsList['T002_ID']);
  oqDupl.SetVariable('T001_PART_ID', odsList['T001_PART_ID']);
  oqDupl.SetVariable('T001_ROW_PREFIX', odsList['T001_ROW_PREFIX']);
  oqDupl.SetVariable('T001_ROW_NUM', odsList['T001_ROW_NUM']);
  oqDupl.SetVariable('T001_DATE_OP', odsList['T001_DATE_OP']);
  oqDupl.SetVariable('T001_OP_ID', odsList['T001_OP_ID']);
  oqDupl.SetVariable('T001_OP_PAY_ID', odsList['T001_OP_PAY_ID']);
  oqDupl.SetVariable('T001_OP_COUNT', odsList['T001_OP_COUNT']);
  oqDupl.SetVariable('T001_OP_CR_ID', odsList['T001_OP_CR_ID']);
  oqDupl.SetVariable('T001_OP_SUM', odsList['T001_OP_SUM']);
  oqDupl.SetVariable('T001_OP_PROC', odsList['T001_OP_PROC']);
  oqDupl.SetVariable('T001_DATE_ON', odsList['T001_DATE_ON']);
  oqDupl.SetVariable('T001_DATE_OFF', odsList['T001_DATE_OFF']);
  oqDupl.SetVariable('T001_CR_ID', odsList['T001_CR_ID']);
  oqDupl.SetVariable('T012_ID', odsList['T012_ID']);
  oqDupl.SetVariable('T013_ID', odsList['T013_ID']);
  oqDupl.SetVariable('T030_ID', odsList['T030_ID']);
  oqDupl.Execute;
  Result := oqDupl.GetVariable('o_result') > 0;
end;

procedure Tfrm05_SumList.RefreshAfterListChange;
begin
//  frm15_Remains.RefreshData('D014_DATE_FROM', FDate);
  RefreshData('T001_ID', FT001_ID);
  odsList.Locate('T001_ID', FT001_ID, []);
end;

procedure Tfrm05_SumList.xxxDBGridDrawColumnCell(Sender: TObject;
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
  or (Column.Field.FieldName = 'OWN_EMISSION')  then
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
     end
   else if (Column.Field.FieldName = 'T001_DR_COUNT') then
     begin
     if (odsListT011_TYPE_ID.AsString = '11') and (odsListT001_TYPE_ID.AsString = 'DR1') then
       begin
       if odsListT001_DR_COUNT_SRC.AsString <> '' then
         xxxDbGrid.Canvas.Brush.Color := RGB($D0, $FF, $D0) //clGreen // ручной ввод
       else if odsListDR_COUNT_DIFF.AsFloat > 20 then
         xxxDbGrid.Canvas.Brush.Color := RGB($FF, $D0, $D0) //clRed    // > разница >20%
       else if odsListT001_DR_COUNT.AsString = '' then
         xxxDbGrid.Canvas.Brush.Color := RGB($FF, $FF, $D0) //clYellow // не смогли рассчитать
       else
         xxxDbGrid.Canvas.Brush.Color := RGB($F7, $F7, $F7); //clLtGray // Ok
       end;

     xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end
   // заменен ИНН на Рег.№
   else if (Column.Field.FieldName = 'T001_REZID_CO_ID') then
     begin
     if Pos('* Замена ИНН резидента', odsListT001_DPB_COMMENT.AsString) <> 0 then
       xxxDbGrid.Canvas.Brush.Color := clYellow;

     xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end
   // тип ц.б.
   else if (Column.Field.FieldName = 'T001_TYPE_ID') then
     begin
     if (odsListT001_ISU_ERR.AsInteger and $00000080) <> 0 then // 128 - Неправильный тип ц.б. (не ISU)
       xxxDbGrid.Canvas.Brush.Color := $00CCCCFF;

     xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end
   // рег.№ ц.б.
   else if (Column.Field.FieldName = 'T001_REG_NUM') then
     begin
     if (odsListT001_ISU_ERR.AsInteger and $00000100) <> 0 then // 256 - Неправильный рег.№ ц.б. (не ISUxxxx или не найден в реестре ISU)
       xxxDbGrid.Canvas.Brush.Color := $00CCCCFF;

     xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end
   // ИНН эмитента
   else if (Column.Field.FieldName = 'T028_CODE') then
     begin
     if (odsListT001_ISU_ERR.AsInteger and $00000400) <> 0 then // 1024 - Неправильный ИНН эмитента
       xxxDbGrid.Canvas.Brush.Color := $00CCCCFF;

     xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end
   // Дата регистрации
   else if (Column.Field.FieldName = 'T001_DATE_ON') then
     begin
     if (odsListT001_ISU_ERR.AsInteger and $00000800) <> 0 then // 2048 - Неправильная дата регистрации ц.б.
       xxxDbGrid.Canvas.Brush.Color := $00CCCCFF;

     xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;
end;

procedure Tfrm05_SumList.FormShow(Sender: TObject);
begin
  if OpCodeFilter.odsList.Active then Exit;

  Tfm01_Period1.Init;
  Tfm01_Period2.Init;
  Frame11.odsPeriod.Close;
  Frame11.odsPeriod.Open;
  Frame11.KeyValue := Frame11.odsPeriod.FieldByName('REGN').AsString;
  OpCodeFilter.InitFrame(Self);
 // OpCodeFilter.lcb.KeyValuesFloat := [odsOperT011_ID.AsFloat];
  odsType.Close;
  odsType.Open;
  lcbType.KeyValue := odsTypeT027_ID.AsFloat;
  odsPay.Close;
  odsPay.Open;
  lcbPay.KeyValue := odsPayT006_ID.AsFloat;

  cbDrCountDiffChange(cbDrCountDiff);
  inherited;
end;

procedure Tfrm05_SumList.xxxDBGridMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
Showmessage('MouseDown');
end;

function Tfrm05_SumList.DoSelect: Boolean;
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

procedure Tfrm05_SumList.actApplayFilterExecute(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure Tfrm05_SumList.odsListAfterOpen(DataSet: TDataSet);
begin
  RefreshCountData;
end;

procedure Tfrm05_SumList.FindAllRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;  

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T012_ID', AID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindAllNRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T013_ID', AID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindAllIssuer(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T028_ID', AID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindAllEmission(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T030_ID', AID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindAllOperStep3(const AT055_ID: Double; const AT002_BANK_CODE: String);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
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

procedure Tfrm05_SumList.FindAllOperStep5(const AT055_ID: Double; const AT002_BANK_CODE: String; const AT027_ID: Double; const AT012_ID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
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

procedure Tfrm05_SumList.FindOper(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T001_ID', AID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindEmissInPer(const AT055_ID, AT030_ID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T030_ID', AT030_ID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindIssuerInPer(const AT055_ID, AT028_ID: Double; AT027_IDs: array of Double);
begin
  // снимаем все фильтры по данному полю
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  // устанавливаем фильтр по эмитенту
  SetNumbFilter('T028_ID', AT028_ID);

  // устанавливаем фильтр по типам ц.б.
  if Length(AT027_IDs) <> 0 then
    begin
    SetNumbInFilter('T027_ID_1', AT027_IDs);
    end;

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
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

procedure Tfrm05_SumList.FindNRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
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

procedure Tfrm05_SumList.FindMainEmissInPer(const AT055_ID, AT030_ID: Double);
begin
  // снимаем все фильтры по данному полю
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T030_PARENT_ID', AT030_ID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindMainEmissInQuartal(const AT055_ID1, AT055_ID2, AT030_ID: Double);
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

procedure Tfrm05_SumList.ClearSumFilter;
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  chbKO.Checked := False;
  opCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

end;

procedure Tfrm05_SumList.FindMainIssuerInPer(const AT055_ID, AT028_ID: Double; AT027_IDs: array of Double);
begin
  // очищаем фильтры
  ClearSumFilter;

  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T028_PARENT_ID', AT028_ID);
  SetNumbInFilter('T027_ID_1', AT027_IDs);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindMainNRezidInPer(const AT055_ID,
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

procedure Tfrm05_SumList.FindMainRezidInPer(const AT055_ID,
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

procedure Tfrm05_SumList.FindAllEmissInQuartal(const AT055_ID1, AT055_ID2,
  AT030_ID: Double);
begin
  // снимаем все фильтры
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := True;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID1);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID2);
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по бумаге
  SetNumbFilter('T030_ID', AT030_ID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindAllMainIssuer(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по эмитенту
  SetNumbFilter('T028_PARENT_ID', AID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindAllMainIssuerINN(const AINN: String);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по ИНН эмитента
  SetStrFilter('T028_INN', AINN);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindAllMainNRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по нерезиденту
  SetNumbFilter('T013_PARENT_ID', AID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindAllOnlyMainNRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по нерезиденту
  SetNumbFilter('T013_REAL_PARENT_ID', AID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindAllMainRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T012_PARENT_ID', AID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindAllOnlyMainRezid(const AID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по нерезиденту
  SetNumbFilter('T012_REAL_PARENT_ID', AID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindAllMainRezidINN(const AINN: String);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  chbPeriod.Checked := False;
  chbKO.Checked := False;
  OpCodeFilter.cb.Checked := False;
  chbType.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по ИНН резидента
  SetStrFilter('T001_REZID_CO_ID', AINN);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindOperFiltered(const AT055_ID1, AT055_ID2,
  AT027_ID, AT028_ID, AT006_ID, AT033_ID, AT012_ID, AT013_ID: Double; AT001_PART_IDs: array of Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;

  chbPeriod.Checked := true;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID1);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID2);

  chbType.Checked := true;
  lcbType.KeyValue := FloatToStr(AT027_ID);

  OpCodeFilter.cb.Checked := False;
  //lcbOper.KeyValue := T011_TYPE_ID;

  chbKO.Checked := False;
  chbPay.Checked := False;

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

  // устанавливаем фильтр по разделу
  if Length(AT001_PART_IDs) <> 0 then
    SetNumbInFilter('T001_PART_ID', AT001_PART_IDs);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindOpersByMainIssueAndRezInPer(const AT055_ID,
  AT027_MAIN_ID, AT012_ID: Double);
begin
  // снимаем все фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;

  chbPeriod.Checked := true;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  chbType.Checked := false;
  OpCodeFilter.cb.Checked := False;
  chbKO.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по типу главной бумаги
  SetNumbFilter('T027_MAIN_ID', AT027_MAIN_ID);

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T012_ID', AT012_ID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindOpersByMainIssueAndNrezInPer(const AT055_ID,
  AT027_MAIN_ID, AT013_ID: Double);
begin
  // снимаем все фильтры
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;

  chbPeriod.Checked := true;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID);

  chbType.Checked := false;
  OpCodeFilter.cb.Checked := False;
  chbKO.Checked := False;
  chbPay.Checked := False;

  // устанавливаем фильтр по типу главной бумаги
  SetNumbFilter('T027_MAIN_ID', AT027_MAIN_ID);

  // устанавливаем фильтр по нерезиденту
  SetNumbFilter('T013_ID', AT013_ID);

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.FindMainEmissionsInPeriod(const AT055_ID_S,
  AT055_ID_E: Double; AT030_IDs: TFloatArray);
begin
  // снимаем все фильтры
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;
  // ставим фильтр по периоду
  chbPeriod.Checked := true;
  Tfm01_Period1.KeyValue := FloatToStr(AT055_ID_S);
  Tfm01_Period2.KeyValue := FloatToStr(AT055_ID_E);

  chbType.Checked := false;
  OpCodeFilter.cb.Checked := False;
  chbKO.Checked := False;
  chbPay.Checked := False;

  // ставим фильтр по T030_ID
  Set24Filter('T030_PARENT_ID', AT030_IDS);
  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.actInvCaseExecute(Sender: TObject);
var
  I: Integer;
begin
  odsList.DisableControls;
  try

    // Просиавляем признак для каждой выделенной записи
    if xxxDBGrid.SelectedRows.Count = 0 then
    begin
      xxxDBGrid.SelectedRows.CurrentRowSelected := True;
    end;
    for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);
      oqSetInvType.SetVariable ('T001_INV_TYPE',2);
      oqSetInvType.SetVariable ('T001_ID', odsListT001_ID.asfloat);
      oqSetInvType.Execute;
    end;
    xxxDBGrid.SelectedRows.Clear;

    // сморим данные
    FT001_ID := oqSetInvType.GetVariable('T001_ID');
    RefreshAfterListChange;
  finally
    odsList.EnableControls;
  end;
end;

procedure Tfrm05_SumList.actInvNoCountExecute(Sender: TObject);
var
  I: Integer;
begin
  odsList.DisableControls;
  try

    // Просиавляем признак для каждой выделенной записи
    if xxxDBGrid.SelectedRows.Count = 0 then
    begin
      xxxDBGrid.SelectedRows.CurrentRowSelected := True;
    end;
    for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);
      oqSetInvType.SetVariable ('T001_INV_TYPE',3);
      oqSetInvType.SetVariable ('T001_ID', odsListT001_ID.asfloat);
      oqSetInvType.Execute;
    end;
    xxxDBGrid.SelectedRows.Clear;

    // сморим данные
    FT001_ID := oqSetInvType.GetVariable('T001_ID');
    RefreshAfterListChange;
  finally
    odsList.EnableControls;
  end;
end;

procedure Tfrm05_SumList.actInvStraightExecute(Sender: TObject);
var
  I: Integer;
begin
  odsList.DisableControls;
  try

    // Просиавляем признак для каждой выделенной записи
    if xxxDBGrid.SelectedRows.Count = 0 then
    begin
      xxxDBGrid.SelectedRows.CurrentRowSelected := True;
    end;
    for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);
      oqSetInvType.SetVariable ('T001_INV_TYPE',1);
      oqSetInvType.SetVariable ('T001_ID', odsListT001_ID.asfloat);
      oqSetInvType.Execute;
    end;
    xxxDBGrid.SelectedRows.Clear;

    // сморим данные
    FT001_ID := oqSetInvType.GetVariable('T001_ID');
    RefreshAfterListChange;
  finally
    odsList.EnableControls;
  end;
end;

procedure Tfrm05_SumList.actCloneSumInfoExecute(Sender: TObject);
begin
  try
    dmMain.StartTransaction;

    // Добавляем запись
    oqCloneSumInfo.SetVariable('T001_ID', odsList['T001_ID']);
    oqCloneSumInfo.Execute;
    FT001_ID := oqCloneSumInfo.GetVariable('T001_ID');
    {
    FT002_ID := oqCloneSumInfo.GetVariable('T002_ID');
    FT001_PART_ID := oqCloneSumInfo.GetVariable('T001_PART_ID');
    FT001_ROW_PREFIX := oqCloneSumInfo.GetVariable('T001_ROW_PREFIX');
    FT001_ROW_NUM := oqCloneSumInfo.GetVariable('T001_ROW_NUM');
    }

    dmMain.Commit;
  except
    on e:Exception do
    begin
      dmMain.Rollback;
      raise e;
    end;
  end;

  RefreshAfterListChange;
end;

procedure Tfrm05_SumList.actMaturDateExecute(Sender: TObject);
begin
  if MultiEditForm = nil then exit;

  with MultiEditForm do
  begin
    OnSaveChange := MultiSaveChange;
    OnCancelChange := MultiCancelChange;
    if odsListT001_DATE_OFF.IsNull then
      odsListT001_DATE_OFF.AsDateTime := Trunc(Now);

    ShowModal;
  end;
end;

function Tfrm05_SumList.MultiEditForm: Tfrm04_Edit;
begin
  Result := Tfrm05_SumMultiEdit.Instance;
end;

function Tfrm05_SumList.MultiCancelChange: Boolean;
begin
  Result := true;
end;

function Tfrm05_SumList.MultiSaveChange: Boolean;
var
  I: Integer;
  Bmk: TBookmark;
  VOldCursor: TCursor;
  VDate: TDateTime;
begin
  DataSet.DisableControls;
  VOldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    VDate := odsListT001_DATE_OFF.AsDateTime;
    Bmk := DataSet.GetBookmark;
    for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin
      DataSet.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);
      oqMultiUpdate.SetVariable('T001_ID', odsListT001_ID.AsFloat);
      oqMultiUpdate.SetVariable('T001_DATE_OFF', VDate);
      oqMultiUpdate.Execute;
    end;
    DataSet.GotoBookmark(Bmk);
    RefreshAfterListChange;
  finally
    DataSet.EnableControls;
    xxxDBGrid.SelectedRows.Clear;
    Screen.Cursor := VOldCursor;
  end;
  Result := true;
end;


procedure Tfrm05_SumList.actCloneSumInfoUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actCloneSumInfo.Enabled := not DataSet.IsEmpty and EnableAction(actCloneSumInfo)
  else
    actCloneSumInfo.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm05_SumList.actMaturDateUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actMaturDate.Enabled := not DataSet.IsEmpty and EnableAction(actMaturDate)
  else
    actMaturDate.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm05_SumList.actSetInvStraightUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSetInvStraight.Enabled := not DataSet.IsEmpty and EnableAction(actSetInvStraight)
  else
    actSetInvStraight.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm05_SumList.actSetInvCaseUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSetInvCase.Enabled := not DataSet.IsEmpty and EnableAction(actSetInvCase)
  else
    actSetInvCase.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm05_SumList.actSetInvNoCountUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSetInvNoCount.Enabled := not DataSet.IsEmpty and EnableAction(actSetInvNoCount)
  else
    actSetInvNoCount.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm05_SumList.cbResClick(Sender: TObject);
begin
  RefreshCountData;
end;

procedure Tfrm05_SumList.rgSearchTypeClick(Sender: TObject);
begin
  if rgSearchType.ItemIndex = 0 then
  begin
    // простой поиск (rule)
    xxxDBGrid.AdvSettings.OptimizerHint := '/*+rule*/';
  end
  else
  begin
    // используя статистику (choose)
    xxxDBGrid.AdvSettings.OptimizerHint := '/*+choose*/';
  end;
end;

procedure Tfrm05_SumList.actInfoUpdate(Sender: TObject);
begin
  actInfo.Enabled := not odsList.FieldByName('T002_ID').IsNull;
end;

procedure Tfrm05_SumList.actInfoExecute(Sender: TObject);
var
  SourceForm: Tfrm106_DataSource;
begin
  SourceForm := Tfrm106_DataSource.Create(Self);
  SourceForm.InitData(if405, odsList.FieldByName('T002_ID').AsFloat);
  SourceForm.ShowModal;
  SourceForm.Free;
end;

procedure Tfrm05_SumList.actAddAttributesUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actAddAttributes.Enabled := DataSet.Active and (not odsList.IsEmpty) and (EditForm <> nil) and EnableAction(actAddAttributes)
  else
    actAddAttributes.Enabled := DataSet.Active and (not odsList.IsEmpty) and (EditForm <> nil);
end;

procedure Tfrm05_SumList.actEditSecTypeUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actEditSecType.Enabled := DataSet.Active and (not odsList.IsEmpty) and (EditForm <> nil) and EnableAction(actEditAttributes)
  else
    actEditSecType.Enabled := DataSet.Active and (not odsList.IsEmpty) and (EditForm <> nil);
end;

procedure Tfrm05_SumList.actEditSecTypeExecute(Sender: TObject);
var
  vCursor: TCursor;
  vEditForm: Tfrm05_SecTypeEdit;
  i: integer;
begin
  vEditForm := nil;
  vCursor := Screen.Cursor;
  odsList.DisableControls;
  try
    vEditForm := Tfrm05_SecTypeEdit.Create(Self);
    vEditForm.lcb.KeyValue := odsListT027_ID.AsFloat;

    if vEditForm.ShowModal = mrOk then
      begin
      Screen.Cursor := crSQLWait;

      if xxxDBGrid.SelectedRows.Count = 0 then
        xxxDBGrid.SelectedRows.CurrentRowSelected := True;

      FT001_ID := odsListT001_ID.AsFloat;

      for i := 0 to xxxDBGrid.SelectedRows.Count - 1 do
        begin
        odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[i]);
        oqEditSecType.SetVariable('T001_ID', odsListT001_ID.AsFloat);
        oqEditSecType.SetVariable('T027_ID_NEW', vEditForm.lcb.KeyValue);
        oqEditSecType.Execute;
        end;

      xxxDBGrid.SelectedRows.Clear;
      end;
  finally
    vEditForm.Close;
    RefreshAfterListChange;
    odsList.EnableControls;
    Screen.Cursor := vCursor;
  end;
end;

procedure Tfrm05_SumList.actEditDrCountUpdate(Sender: TObject);
begin
  actEditDrCount.Enabled := (not odsList.IsEmpty) and
                            (odsListT027_MAIN_ID.AsFloat = 30) and
                            (odsListT001_OP_ID.AsFloat = 1);
end;

procedure Tfrm05_SumList.actEditDrCountExecute(Sender: TObject);
var
  vDlg: Tfrm05_DrCountEdit;
begin
  vDlg := Tfrm05_DrCountEdit.Create(Self);
  vDlg.ed1.Text := odsListT001_OP_COUNT.AsString;
  vDlg.ed2.Clear;
  try
    if vDlg.ShowModal = mrOk then
      begin
      if vDlg.ed1.Text = '' then
        odsListT001_DR_COUNT.Clear
      else
        odsListT001_DR_COUNT.AsString := vDlg.ed1.Text;
      oqSetDrCount.SetVariable('T001_ID', odsListT001_ID.AsFloat);
      oqSetDrCount.SetVariable('T001_DR_COUNT', odsList['T001_DR_COUNT']);
      oqSetDrCount.SetVariable('COMMENT', vDlg.ed2.Text);
      oqSetDrCount.SetVariable('USER', dmMain.GetUser);
      oqSetDrCount.Execute;
      Self.RefreshData('T001_ID', odsListT001_ID.AsFloat);
      end;
  finally
    vDlg.Free;
  end;      
end;

constructor Tfrm05_SumList.Create(AOwner: TComponent);
begin
  inherited;
  cbDrCountDiff.ItemIndex := 0;
  FCheckInProgress := False;
end;

procedure Tfrm05_SumList.cbDrCountDiffDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  with (Control as TCombobox) do
    begin
    case Index of
    0: begin
       Canvas.Brush.Color := clWhite;
       Canvas.Font.Color := clBlack;
       end;
    1: begin
       Canvas.Brush.Color := RGB($F7, $F7, $F7); //clLtGray;
       Canvas.Font.Color := clBlack;
       end;
    2: begin
       Canvas.Brush.Color := RGB($FF, $FF, $D0); //clYellow;
       Canvas.Font.Color := clBlack;
       end;
    3: begin
       Canvas.Brush.Color := RGB($FF, $D0, $D0); // clRed;
       Canvas.Font.Color := clBlack;
       end;
    4: begin
       Canvas.Brush.Color := RGB($D0, $FF, $D0); //clGreen;
       Canvas.Font.Color := clBlack;
       end;
    end;
    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left,Rect.Top,Items[Index]);
    end;
end;

procedure Tfrm05_SumList.cbDrCountDiffChange(Sender: TObject);
begin
  case cbDrCountDiff.ItemIndex of
  0: xxxDBGrid.Columns[8].Visible := False;   // Не показывать
  1: xxxDBGrid.Columns[8].Visible := True;    // Все
  2: xxxDBGrid.Columns[8].Visible := True;    // Нет расчета
  3: xxxDBGrid.Columns[8].Visible := True;    // Diff > 20%
  4: xxxDBGrid.Columns[8].Visible := True;    // Ручной ввод
  end;
  RefreshData('', Unassigned);  // Накладываем фильтр
end;

procedure Tfrm05_SumList.actGoTo417Update(Sender: TObject);
begin
  actGoTo417.Enabled := not odsList.IsEmpty;
end;

procedure Tfrm05_SumList.actGoTo417Execute(Sender: TObject);
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

procedure Tfrm05_SumList.actCheckIsuUpdate(Sender: TObject);
var
  vEnabled: boolean;
begin
  vEnabled := not odsList.IsEmpty and (FCheckInProgress = False);
  if dmMain.UseMatrix then
    actCheckIsu.Enabled := vEnabled and Matrix.MA.IsOperationPermitted(CHECK_ISU_DATA, FALSE)
  else
    actCheckIsu.Enabled := vEnabled;
end;

procedure Tfrm05_SumList.actCheckIsuExecute(Sender: TObject);
var
  vCursor: TCursor;
begin
  FCheckInProgress := True;
  actCheckIsu.Enabled := False;
  vCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  try
    oqCheckIsu.Execute;
  finally
    Screen.Cursor := vCursor;
    FCheckInProgress := False;
  end;
end;

procedure Tfrm05_SumList.actSetFictiveUpdate(Sender: TObject);
var
  vEnabled: boolean;
begin
  vEnabled := not odsList.IsEmpty and (FCheckInProgress = False);
  if dmMain.UseMatrix then
    actSetFictive.Enabled := vEnabled and Matrix.MA.IsOperationPermitted(SET_FICTIVE_STATE, FALSE)
  else
    actSetFictive.Enabled := vEnabled;
end;

procedure Tfrm05_SumList.actSetFictiveExecute(Sender: TObject);
begin
  SetFictiveState(fsFictive);
end;

procedure Tfrm05_SumList.actSetNotFictiveUpdate(Sender: TObject);
var
  vEnabled: boolean;
begin
  vEnabled := not odsList.IsEmpty and (FCheckInProgress = False);
  if dmMain.UseMatrix then
    actSetNotFictive.Enabled := vEnabled and Matrix.MA.IsOperationPermitted(SET_FICTIVE_STATE, FALSE)
  else
    actSetNotFictive.Enabled := vEnabled;
end;

procedure Tfrm05_SumList.actSetNotFictiveExecute(Sender: TObject);
begin
  SetFictiveState(fsNotFictive);
end;

procedure Tfrm05_SumList.actSetUnderQuestUpdate(Sender: TObject);
var
  vEnabled: boolean;
begin
  vEnabled := not odsList.IsEmpty and (FCheckInProgress = False);
  if dmMain.UseMatrix then
    actSetUnderQuest.Enabled := vEnabled and Matrix.MA.IsOperationPermitted(SET_FICTIVE_STATE, FALSE)
  else
    actSetUnderQuest.Enabled := vEnabled;
end;

procedure Tfrm05_SumList.actSetUnderQuestExecute(Sender: TObject);
begin
  SetFictiveState(fsUnderQuest);
end;

procedure Tfrm05_SumList.actSetNeedRateUpdate(Sender: TObject);
var
  vEnabled: boolean;
begin
  vEnabled := not odsList.IsEmpty and (FCheckInProgress = False);
  if dmMain.UseMatrix then
    actSetNeedRate.Enabled := vEnabled and Matrix.MA.IsOperationPermitted(SET_FICTIVE_STATE, FALSE)
  else
    actSetNeedRate.Enabled := vEnabled;
end;

procedure Tfrm05_SumList.actSetNeedRateExecute(Sender: TObject);
begin
  SetFictiveState(fsNeedRate);
end;

procedure Tfrm05_SumList.SetFictiveState(AState: TFictiveState);
var
  vCursor: TCursor;
  vT035_ID: Double;
  i: integer;
  bm: TBookmark;
  vT001_ID: Double;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  FCheckInProgress := True;
  case AState of
    fsNeedRate:   vT035_ID := 1; // Требуется оценка
    fsFictive:    vT035_ID := 2; // Фиктивная
    fsNotFictive: vT035_ID := 5; // Нефиктивная
    fsUnderQuest: vT035_ID := 6; // Под вопросом
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
    FCheckInProgress := False;
    Screen.Cursor:= vCursor;
  end;
end;

procedure Tfrm05_SumList.actSetByCriteriaUpdate(Sender: TObject);
var
  vEnabled: boolean;
begin
  vEnabled := not odsList.IsEmpty and (FCheckInProgress = False);
  if dmMain.UseMatrix then
    actSetByCriteria.Enabled := vEnabled and Matrix.MA.IsOperationPermitted(SET_FICTIVE_STATE, FALSE)
  else
    actSetByCriteria.Enabled := vEnabled;
end;

procedure Tfrm05_SumList.actSetByCriteriaExecute(Sender: TObject);
var
  vForm: TC003_FictiveCriteria;
begin
  vForm := TC003_FictiveCriteria.Create(Self);
  vForm.FDataSelect := TOracleDataSet(xxxDbGrid.MainDataset.DataSet).SubstitutedSQL;
  if vForm.ShowModal = mrOk then;
    RefreshData('', Unassigned);
  vForm.Free;
end;

procedure Tfrm05_SumList.odsListBeforeOpen(DataSet: TDataSet);
var
  i: integer;
begin
  inherited;
  // признак МЕНА
  if chbPeriod.Checked and (Tfm01_Period1.lcbPeriod.KeyValue < 1985) then // до 2019
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'T001_N8') then
        xxxDbGrid.Columns[i].Visible := True;
      end;
    end
  else
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'T001_N8') then
        xxxDbGrid.Columns[i].Visible := False;
      end;
    end;

  // Удержано налога
  if chbPeriod.Checked and (Tfm01_Period2.lcbPeriod.KeyValue < 1985) then // до 2019
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'T001_TAX') or
         (xxxDbGrid.Columns[i].FieldName = 'T001_TAX_CROSS') then
        xxxDbGrid.Columns[i].Visible := False;
      end;
    end
  else
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'T001_TAX') or
         (xxxDbGrid.Columns[i].FieldName = 'T001_TAX_CROSS') then
        if not xxxDBGrid.IsColumnHidden(xxxDbGrid.Columns[i].FieldName) then
          xxxDbGrid.Columns[i].Visible := True;
      end;
    end;
end;

function Tfrm05_SumList.GetIsuErrFilterMask: integer;
var
  sMask: string;
  a, b: integer;
begin
  sMask := Trim(odsList.GetVariable('ISU_ERR_FILTER'));
  if sMask = '' then
    Result := 0
  else
    begin
    a := Pos(',', sMask) + 2;
    b := Pos(')', sMask);
    sMask := Copy(sMask, a, b-a);
    Result := StrToInt(sMask);
    end;
end;

procedure Tfrm05_SumList.PopupMenuPopup(Sender: TObject);
var
  vMask: integer;
begin
  if (xxxDbGrid.SelectedField.FieldName = 'T001_TYPE_ID') or // Тип ц.б.
     (xxxDbGrid.SelectedField.FieldName = 'T001_REG_NUM') or // рег.№ ц.б.
     (xxxDbGrid.SelectedField.FieldName = 'T028_CODE') or // ИНН эмитента
     (xxxDbGrid.SelectedField.FieldName = 'T001_DATE_ON') then // Дата регистрации
    begin
    N18.Enabled := True;
    vMask := GetIsuErrFilterMask;
    // Тип ц.б.
    if (xxxDbGrid.SelectedField.FieldName = 'T001_TYPE_ID') and (vMask and 128 <> 0) then
      N18.Checked := True
    // рег.№ ц.б.
    else if (xxxDbGrid.SelectedField.FieldName = 'T001_REG_NUM') and (vMask and 256 <> 0) then
      N18.Checked := True
    // ИНН эмитента
    else if (xxxDbGrid.SelectedField.FieldName = 'T028_CODE') and (vMask and 1024 <> 0) then
      N18.Checked := True
    // Дата регистрации
    else if (xxxDbGrid.SelectedField.FieldName = 'T001_DATE_ON') and (vMask and 2048 <> 0) then
      N18.Checked := True
    else
      N18.Checked := False;
    end
  else
    begin
    N18.Enabled := False;
    N18.Checked := False;
    end;
end;

procedure Tfrm05_SumList.N18Click(Sender: TObject);
var
  vMask: integer;
begin
  vMask := GetIsuErrFilterMask;

  // Тип ц.б.
  if (xxxDbGrid.SelectedField.FieldName = 'T001_TYPE_ID') then
    begin
    vMask := vMask xor 128;
    xxxDbGrid.SetColumnFiltered('T001_TYPE_ID', (vMask and 128) <> 0);
    end
  // рег.№ ц.б.
  else if (xxxDbGrid.SelectedField.FieldName = 'T001_REG_NUM') then
    begin
    vMask := vMask xor 256;
    xxxDbGrid.SetColumnFiltered('T001_REG_NUM', (vMask and 256) <> 0);
    end
  // ИНН эмитента
  else if (xxxDbGrid.SelectedField.FieldName = 'T028_CODE') then
    begin
    vMask := vMask xor 1024;
    xxxDbGrid.SetColumnFiltered('T028_CODE', (vMask and 1024) <> 0);
    end
  // Дата регистрации
  else if (xxxDbGrid.SelectedField.FieldName = 'T001_DATE_ON') then
    begin
    vMask := vMask xor 2048;
    xxxDbGrid.SetColumnFiltered('T001_DATE_ON', (vMask and 2048) <> 0);
    end;

  if vMask = 0 then
    odsList.SetVariable('ISU_ERR_FILTER', '')
  else
    odsList.SetVariable('ISU_ERR_FILTER', ' and BITAND(T001_ISU_ERR, ' + IntToStr(vMask) + ') <> 0');

  RefreshData('', Unassigned);
end;

procedure Tfrm05_SumList.actRemoveAllSettingsExecute(Sender: TObject);
begin
  // Ошибки ИСУ
  odsList.SetVariable('ISU_ERR_FILTER', '');
  xxxDbGrid.SetColumnFiltered('T001_TYPE_ID', False);
  xxxDbGrid.SetColumnFiltered('T001_REG_NUM', False);
  xxxDbGrid.SetColumnFiltered('T028_CODE', False);
  xxxDbGrid.SetColumnFiltered('T001_DATE_ON', False);

  inherited;
end;

procedure Tfrm05_SumList.FormCreate(Sender: TObject);
begin
  inherited;
  xxxDbGrid.MainDataSet.Enabled := False;
  odsList.BeforeOpen := odsListBeforeOpen;
  xxxDbGrid.MainDataSet.Enabled := True;
end;

end.
