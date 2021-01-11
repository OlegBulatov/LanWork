unit E001_RemainsFrame;

interface

uses
  fm005_GridFrame, Db, StdCtrls, Forms, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, G001_IssuerGroupFrame, Oracle,
  Menus, OracleData, Classes, ActnList, Controls, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, xxxDBGrid, Windows, E001_RemFieldsFrame,
  fm004_ListFrame, fm002_EditFrame, fm031_FilterFrame, E001_RequestDialog;

type
  IRemainsLink = interface
    function GetT055_ID: Double;
    function GetT027_ID: Double;
  end;

  TE001_Remains = class(TfmGrid)
    odsListT027_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT170_ID: TFloatField;
    odsListT094_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;               
    odsListT028_INN: TStringField;
    odsListT170_S_EMISS_SIZE: TFloatField;
    odsListT170_S_USD_RATE: TFloatField;
    odsListT170_S_711_CNT_REM: TFloatField;
    odsListT170_S_711_USD_REM: TFloatField;
    odsListT170_S_170_711_PRC: TFloatField;
    odsListT170_S_NB_CNT_REM: TFloatField;
    odsListT170_S_NB_USD_REM: TFloatField;
    odsListT170_S_CNT_REM: TFloatField;
    odsListT170_S_USD_REM: TFloatField;
    odsListT170_S_170_CNT_REM: TFloatField;
    odsListT170_S_170_USD_REM: TFloatField;
    odsListT170_S_170_EMISS_PRC: TFloatField;
    odsListT170_O_FLAG: TStringField;
    odsListT170_O_405_CNT_SAL: TFloatField;
    odsListT170_O_405_USD_SAL: TFloatField;
    odsListT170_O_USD_RATE: TFloatField;
    odsListT170_E_EMISS_SIZE: TFloatField;
    odsListT170_E_USD_RATE: TFloatField;
    odsListT170_E_711_CNT_REM: TFloatField;
    odsListT170_E_711_USD_REM: TFloatField;
    odsListT170_E_170_711_PRC: TFloatField;
    odsListT170_E_NB_CNT_REM: TFloatField;
    odsListT170_E_NB_USD_REM: TFloatField;
    odsListT170_E_CNT_REM: TFloatField;
    odsListT170_E_USD_REM: TFloatField;
    odsListT170_E_170_CNT_REM: TFloatField;
    odsListT170_E_170_USD_REM: TFloatField;
    odsListT170_E_170_EMISS_PRC: TFloatField;
    odsListT167_NAME: TStringField;
    odsListT167_EXCHANGE: TStringField;
    oqCheckCalc: TOracleQuery;
    actGoTo405: TAction;
    odsListT170_O_711_CNT_SAL: TFloatField;
    odsListT170_O_711_USD_SAL: TFloatField;
    odsListT170_O_NB_CNT_SAL: TFloatField;
    odsListT170_O_NB_USD_SAL: TFloatField;
    odsListT170_O_CNT_SAL: TFloatField;
    odsListT170_O_USD_SAL: TFloatField;
    odsListT170_O_170_CNT_SAL: TFloatField;
    odsListT170_O_170_USD_SAL: TFloatField;
    oqGetMonth: TOracleQuery;
    actGoTo711: TAction;
    actRecalcActive: TAction;
    oqDoCalc: TOracleQuery;
    actSettings: TAction;
    actGoToND: TAction;
    odsListT030_ID: TFloatField;
    odsListT031_ID: TFloatField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    paFilter: TPanel;
    G001_IssuerGroup1: TG001_IssuerGroup;
    Button1: TButton;
    odsListMARKET_STATUS: TStringField;
    Label1: TLabel;
    odsListT030_TYPE: TStringField;
    ToolButton8: TToolButton;
    MenuJumps: TPopupMenu;
    N4051: TMenuItem;
    N7111: TMenuItem;
    N1: TMenuItem;
    NIssuer: TMenuItem;
    NEmissions: TMenuItem;
    actGoToIssuers: TAction;
    actGoToEmissions: TAction;
    odsListT170_O_PER_USD: TFloatField;
    odsListT170_O_405_CNT_SAL_C: TFloatField;
    odsListT170_O_405_CNT_SAL_C_PRC: TFloatField;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton7: TToolButton;
    ToolButton4: TToolButton;
    odsListT027_SEC_TYPE: TStringField;
    odsListT170_S_PRC: TFloatField;
    odsListT170_E_PRC: TFloatField;
    odsListT170_O_405_CNT_E: TFloatField;
    odsListT170_O_405_USD_E: TFloatField;
    odsListT170_COMMENTS: TStringField;
    odsListT170_CHANGED: TStringField;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    actHistory: TAction;
    odsListT170_O_OTH_CNT_E: TFloatField;
    odsListT170_O_OTH_USD_E: TFloatField;
    odsListT170_E_FIXED: TStringField;
    oqSaveCheck: TOracleQuery;
    ToolButton9: TToolButton;
    MenuCheck: TPopupMenu;
    actCheckAll: TAction;
    N2: TMenuItem;
    actUncheckAll: TAction;
    N3: TMenuItem;
    ToolButton10: TToolButton;
    actCheckSelected: TAction;
    actUncheckSelected: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    MenuCalc: TPopupMenu;
    N6: TMenuItem;
    actRecalcSelected: TAction;
    actRecalcAll: TAction;
    N7: TMenuItem;
    N10: TMenuItem;
    tbRequestRates: TToolButton;
    MenuLoadRates: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    actRatesLoadCurrent: TAction;
    actRatesLoadSelected: TAction;
    actRatesLoadAll: TAction;
    oqSaveRates: TOracleQuery;
    odsListT170_E_711_CNT_RES: TFloatField;
    odsListT170_E_415_CNT_RES: TFloatField;
    odsDates: TOracleDataSet;
    oqSaveEmissSize: TOracleQuery;
    odsListT170_O_DR_CNT_SAL: TFloatField;
    odsListT170_O_DR_USD_SAL: TFloatField;
    odsListT170_O_DR_KOEFF: TFloatField;
    odsListT170_O_DR_405_CNT_SAL: TFloatField;
    odsListT170_O_DR_405_USD_SAL: TFloatField;
    odsListT028_REGION_CODE: TFloatField;
    odsListT028_REGION_NAME: TStringField;
    odsListT028_INDUSTRY_CODE: TStringField;
    odsListT028_INDUSTRY_NAME: TStringField;
    odsListT028_ICODE: TStringField;
    odsListT028_INAME: TStringField;
    odsListT028_FI_SNS: TStringField;
    odsListT028_FI_SNS_DESC: TStringField;
    odsListT170_O_405_PERCENT: TFloatField;
    odsListT170_S_RATE_BLM: TFloatField;
    odsListT170_S_RATE_BLM_DATE: TDateTimeField;
    odsListT170_S_RATE_MVB: TFloatField;
    odsListT170_S_RATE_MVB_DATE: TDateTimeField;
    odsListT170_S_RATE_REU: TFloatField;
    odsListT170_S_RATE_REU_DATE: TDateTimeField;
    odsListT170_S_RATE_405: TFloatField;
    odsListT170_S_RATE_405_DATE: TDateTimeField;
    odsListT170_S_RATE_417: TFloatField;
    odsListT170_S_RATE_417_DATE: TDateTimeField;
    odsListT170_S_RATE_MOE: TFloatField;
    odsListT170_S_RATE_MOE_DATE: TDateTimeField;
    odsListT170_S_RATE_HND: TFloatField;
    odsListT170_E_RATE_BLM: TFloatField;
    odsListT170_E_RATE_BLM_DATE: TDateTimeField;
    odsListT170_E_RATE_MVB: TFloatField;
    odsListT170_E_RATE_MVB_DATE: TDateTimeField;
    odsListT170_E_RATE_REU: TFloatField;
    odsListT170_E_RATE_REU_DATE: TDateTimeField;
    odsListT170_E_RATE_405: TFloatField;
    odsListT170_E_RATE_405_DATE: TDateTimeField;
    odsListT170_E_RATE_417: TFloatField;
    odsListT170_E_RATE_417_DATE: TDateTimeField;
    odsListT170_E_RATE_MOE: TFloatField;
    odsListT170_E_RATE_MOE_DATE: TDateTimeField;
    odsListT170_E_RATE_HND: TFloatField;
    odsListT170_S_RATE_415: TFloatField;
    odsListT170_S_RATE_415_DATE: TDateTimeField;
    odsListT170_E_RATE_415: TFloatField;
    odsListT170_E_RATE_415_DATE: TDateTimeField;
    odsListT170_E_RATE_405_CNT: TFloatField;
    odsListT170_E_RATE_415_CNT: TFloatField;
    odsListT170_S_RATE_405_CNT: TFloatField;
    odsListT170_S_RATE_415_CNT: TFloatField;
    odsListT170_S_711_CNT_RES: TFloatField;
    odsListT170_S_415_CNT_RES: TFloatField;
    odsListT170_S_PERCENT: TFloatField;
    odsListT170_E_PERCENT: TFloatField;
    odsListT170_S_RATE_711: TFloatField;
    odsListT170_S_RATE_711_DATE: TDateTimeField;
    odsListT170_S_RATE_711_CNT: TFloatField;
    odsListT170_E_RATE_711: TFloatField;
    odsListT170_E_RATE_711_DATE: TDateTimeField;
    odsListT170_E_RATE_711_CNT: TFloatField;
    actGoTo415: TAction;
    odsListT010_ISIN_TRANSL: TStringField;
    odsListT170_S_RATE_417_CNT: TFloatField;
    odsListT170_E_RATE_417_CNT: TFloatField;
    oqSetRate: TOracleQuery;
    oqGetRates: TOracleQuery;
    oqCalcLight: TOracleQuery;
    odsListT170_E_SI_PRC_HND: TFloatField;
    odsListT170_S_SI_PRC_HND: TFloatField;
    odsListT170_S_SI_PRC_SRC: TFloatField;
    odsListT170_E_SI_PRC_SRC: TFloatField;
    odsListT170_S_SI_PRC: TFloatField;
    odsListT170_S_SI_PRC_NR: TFloatField;
    odsListT170_E_SI_PRC: TFloatField;
    odsListT170_E_SI_PRC_NR: TFloatField;
    miDetails: TMenuItem;
    N16: TMenuItem;
    actSiDetails: TAction;
    oqSetInvPart: TOracleQuery;
    oqSiData: TOracleQuery;
    odsListT170_CALC_DATE: TDateTimeField;
    odsListT170_S_SI_PRC_HND_DS: TStringField;
    odsListT170_E_SI_PRC_HND_DS: TStringField;
    odsListT170_S_RES_PRC_HND: TFloatField;
    odsListT170_S_RES_PRC_HND_DS: TStringField;
    odsListT170_S_RES_PRC_CLC: TFloatField;
    odsListT170_S_RES_PRC: TFloatField;
    odsListT170_E_RES_PRC_HND: TFloatField;
    odsListT170_E_RES_PRC_HND_DS: TStringField;
    odsListT170_E_RES_PRC_CLC: TFloatField;
    odsListT170_E_RES_PRC: TFloatField;
    odsListT170_S_PORTF_PRC: TFloatField;
    odsListT170_E_PORTF_PRC: TFloatField;
    odsListT170_LOG_DATE: TDateTimeField;
    odsListT170_LOG_TYPE: TStringField;
    odsListT170_LOG_USER: TStringField;
    odsListT170_O_405_SHS3_USD_SAL: TFloatField;
    odsListT170_O_405_SHS3_CNT_SAL: TFloatField;
    odsListT170_O_OTH_CNT_711_405: TFloatField;
    odsListT170_SHORT_NAME: TStringField;
    odsListT170_INN: TStringField;
    odsListT170_E_CNT_RATE: TFloatField;
    odsListT170_LOG_FILE_NAME: TStringField;
    odsListT170_O_417_CNT: TFloatField;
    odsListT170_O_417_USD: TFloatField;
    N417: TMenuItem;
    actGoTo417: TAction;
    odsListT170_S_711_CNT_S2_RUS: TFloatField;
    odsListT170_S_711_CNT_S2_BEL: TFloatField;
    odsListT170_S_711_CNT_S2_UNK: TFloatField;
    odsListT170_S_711_CNT_S2_NREZ: TFloatField;
    odsListT170_S_711_CNT_NS2_RUS: TFloatField;
    odsListT170_S_711_CNT_NS2_BEL: TFloatField;
    odsListT170_S_711_CNT_NS2_UNK: TFloatField;
    odsListT170_S_711_CNT_NS2_NREZ: TFloatField;
    odsListT170_E_711_CNT_S2_RUS: TFloatField;
    odsListT170_E_711_CNT_S2_BEL: TFloatField;
    odsListT170_E_711_CNT_S2_UNK: TFloatField;
    odsListT170_E_711_CNT_S2_NREZ: TFloatField;
    odsListT170_E_711_CNT_NS2_RUS: TFloatField;
    odsListT170_E_711_CNT_NS2_BEL: TFloatField;
    odsListT170_E_711_CNT_NS2_UNK: TFloatField;
    odsListT170_E_711_CNT_NS2_NREZ: TFloatField;
    odsListT170_S_415_CNT_S2_RUS: TFloatField;
    odsListT170_S_415_CNT_S2_BEL: TFloatField;
    odsListT170_S_415_CNT_S2_UNK: TFloatField;
    odsListT170_S_415_CNT_S2_NREZ: TFloatField;
    odsListT170_S_415_CNT_NS2_RUS: TFloatField;
    odsListT170_S_415_CNT_NS2_BEL: TFloatField;
    odsListT170_S_415_CNT_NS2_UNK: TFloatField;
    odsListT170_S_415_CNT_NS2_NREZ: TFloatField;
    odsListT170_E_415_CNT_S2_RUS: TFloatField;
    odsListT170_E_415_CNT_S2_BEL: TFloatField;
    odsListT170_E_415_CNT_S2_UNK: TFloatField;
    odsListT170_E_415_CNT_S2_NREZ: TFloatField;
    odsListT170_E_415_CNT_NS2_RUS: TFloatField;
    odsListT170_E_415_CNT_NS2_BEL: TFloatField;
    odsListT170_E_415_CNT_NS2_UNK: TFloatField;
    odsListT170_E_415_CNT_NS2_NREZ: TFloatField;
    odsListT170_S_711_CNT_11_RUS: TFloatField;
    odsListT170_S_711_CNT_11_BEL: TFloatField;
    odsListT170_S_711_CNT_11_NREZ: TFloatField;
    odsListT170_E_711_CNT_11_RUS: TFloatField;
    odsListT170_E_711_CNT_11_BEL: TFloatField;
    odsListT170_E_711_CNT_11_NREZ: TFloatField;
    procedure actGoTo405Execute(Sender: TObject);
    procedure actGoTo711Execute(Sender: TObject);
    procedure actRecalcAllExecute(Sender: TObject);
    procedure actExcelUpdate(Sender: TObject);
    procedure actSettingsExecute(Sender: TObject);
    procedure actGoToNDExecute(Sender: TObject);
    procedure actGoToIssuersExecute(Sender: TObject);
    procedure actGoToEmissionsExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actHistoryUpdate(Sender: TObject);
    procedure actHistoryExecute(Sender: TObject);
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure odsList_GetTextCNT(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure odsList_GetTextUSD(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actCheckAllExecute(Sender: TObject);
    procedure actUncheckAllExecute(Sender: TObject);
    procedure actCheckSelectedExecute(Sender: TObject);
    procedure actUncheckSelectedExecute(Sender: TObject);
    procedure actUncheckSelectedUpdate(Sender: TObject);
    procedure actCheckSelectedUpdate(Sender: TObject);
    procedure actCheckAllUpdate(Sender: TObject);
    procedure actUncheckAllUpdate(Sender: TObject);
    procedure odsList_GetTextRATE(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure odsList_GetTextPRC(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure odsList_SetText(Sender: TField;
      const Text: String);
    procedure actRecalcSelectedExecute(Sender: TObject);
    procedure actRecalcActiveExecute(Sender: TObject);
    procedure actRecalcSelectedUpdate(Sender: TObject);
    procedure actRecalcAllUpdate(Sender: TObject);
    procedure actRatesLoadCurrentUpdate(Sender: TObject);
    procedure actRatesLoadCurrentExecute(Sender: TObject);
    procedure actRatesLoadSelectedUpdate(Sender: TObject);
    procedure actRatesLoadSelectedExecute(Sender: TObject);
    procedure actRatesLoadAllUpdate(Sender: TObject);
    procedure actRatesLoadAllExecute(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure odsListAfterOpen(DataSet: TDataSet);
    procedure actGoTo415Execute(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure mi02Click(Sender: TObject);
    procedure xxxDBGridDblClick(Sender: TObject);
    procedure actSiDetailsUpdate(Sender: TObject);
    procedure actSiDetailsExecute(Sender: TObject);
    procedure actGoTo417Execute(Sender: TObject);
  private
    FLink: IRemainsLink;
    FFrame: TE001_RemFields;
    //
    procedure GetMonthId(var AT055_S_ID, AT055_E_ID: Double);
    procedure CheckData;
    procedure CellClick(Column: TColumn);
    procedure SaveCheck;
    procedure CheckAll(ACheck: string);
    procedure CheckAllSelected(ACheck: string);
    procedure CalcRecord;
    procedure SendRequest(T170_ID: Double; ISIN, Ticker, Exch_code: string; T055_ID: Double; AskEmissSize, AskRates: boolean);
    procedure LoadRates(vDlg: TE001_RequestDlg; vEndDate: TDateTime);
    procedure Recalc;
  protected
    function GetDefRefreshType: TRefreshType; override;
    //
    function GetMatrixUpdName: string; override;
    //
    procedure RefreshAllRecords; override;
    //
    procedure SetConditions; override;
    procedure DoEdit; override;
    function GetKeyFieldName: string; override;
    procedure DoCheck(CheckColumnName: String); override;
    procedure DoUnCheck(CheckColumnName: String); override;
  public
    function GetEditClass: TfmEditClass; override;
    //
    procedure InitFrame(Sender: TObject);  override;
    //
    property Link: IRemainsLink read FLink write FLink;
  end;

var
  E001_Remains: TE001_Remains;

implementation

uses
  Graphics, SysUtils, dm005_MainData, frm01_MainForm, untMessages,
  E001_RemainsEditFrame, E001_HistoryListForm, BlpClient, BlpConsts,
  Dialogs, E001_RateEditDlg, E001_SiDetailsForm;

{$R *.DFM}

{ TE001_Remains }

function TE001_Remains.GetKeyFieldName: string;
begin
  Result := 'T170_ID';
end;

procedure TE001_Remains.RefreshAllRecords;
begin
  // расчет
  CheckData;

  inherited;
end;

procedure TE001_Remains.SetConditions;
begin
  inherited;

  odsList.SetVariable('T055_ID', FLink.GetT055_ID);
  odsList.SetVariable('T027_ID', FLink.GetT027_ID);

  if G001_IssuerGroup1.cb.Checked then
    odsList.SetVariable('T042_ID', G001_IssuerGroup1.KeyValue)
  else
    odsList.SetVariable('T042_ID', 1); // все
end;

procedure TE001_Remains.GetMonthId(var AT055_S_ID, AT055_E_ID: Double);
begin
  // получаем ID первого и последнего месяца
  oqGetMonth.SetVariable('I_T055_ID', FLink.GetT055_ID);
  oqGetMonth.Execute;
  AT055_S_ID := oqGetMonth.GetVariable('O_T055_S_ID');
  AT055_E_ID := oqGetMonth.GetVariable('O_T055_E_ID');
end;

procedure TE001_Remains.CheckData;
begin
  // вызываем процедуру запуска расчета остатков
  // если уже расчитано то ничего не будет сделано
  oqCheckCalc.SetVariable('I_T055_ID', FLink.GetT055_ID);
  oqCheckCalc.SetVariable('I_T027_ID', FLink.GetT027_ID);
  oqCheckCalc.SetVariable('I_USER', dmMain.GetUser);
  oqCheckCalc.Execute;
end;

procedure TE001_Remains.actRecalcAllUpdate(Sender: TObject);
begin
  actRecalcAll.Enabled := not odsList.IsEmpty;
end;

procedure TE001_Remains.actRecalcAllExecute(Sender: TObject);
var
  vCursor: TCursor;
begin
  if not TAppMessages.ShowConfirmation('Все записи за квартал будут пересчитаны. Продолжить?') then Exit;

  vCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    // вызываем процедуру расчета за квартал
    oqDoCalc.SetVariable('I_T055_ID', FLink.GetT055_ID);
    oqDoCalc.SetVariable('I_T027_ID', FLink.GetT027_ID);
    oqDoCalc.SetVariable('I_T030_ID', -1);
    oqDoCalc.SetVariable('I_USER', dmMain.GetUser);
    oqDoCalc.Execute;

    // обновляем данные
    RefreshAllRecords;
  finally
    Screen.Cursor := vCursor;
  end;
end;

procedure TE001_Remains.actRecalcSelectedUpdate(Sender: TObject);
begin
  actRecalcSelected.Enabled := xxxDBGrid.SelectedRows.Count > 0;
end;

procedure TE001_Remains.actRecalcSelectedExecute(Sender: TObject);
var
  vMark: TBookmark;
  i: integer;
begin
  if not TAppMessages.ShowConfirmation('Все отмеченные записи будут пересчитаны. Продолжить?') then Exit;
  // пересчитываем все записи
  odsList.DisableControls;
  vMark := odsList.GetBookmark;
  for i := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin
    odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[i]);
    CalcRecord;
    end;
  xxxDBGrid.SelectedRows.Clear;
  odsList.GotoBookmark(vMark);
  odsList.FreeBookmark(vMark);
  odsList.EnableControls;
end;

procedure TE001_Remains.actRecalcActiveExecute(Sender: TObject);
//var
//  vTime: TDateTime;
begin
  if not TAppMessages.ShowConfirmation('Данные текущей записи будут пересчитаны. Продолжить?') then Exit;
//  vTime := Time;
  CalcRecord;
//  vTime := Time - vTime;
//  ShowMessage(TimeToStr(vTime));
end;

procedure TE001_Remains.CalcRecord;
var
  vCursor: TCursor;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    oqDoCalc.SetVariable('I_T055_ID', FLink.GetT055_ID);
    oqDoCalc.SetVariable('I_T027_ID', FLink.GetT027_ID);
    oqDoCalc.SetVariable('I_T030_ID', odsList['T030_ID']);
    oqDoCalc.SetVariable('I_USER', dmMain.GetUser);
    oqDoCalc.Execute;
    RefreshOneRecord;
  finally
    Screen.Cursor := vCursor;
  end;
end;

procedure TE001_Remains.actExcelUpdate(Sender: TObject);
begin
  actExcel.Enabled := True;
end;

procedure TE001_Remains.actSettingsExecute(Sender: TObject);
begin
  // отображаем поля
  try
    if not Assigned(FFrame) then
    begin
      FFrame := TE001_RemFields.Create(Self);
      FFrame.xxxGrid := xxxDBGrid;
      FFrame.FrameName := 'Выбор колонок';
    end;
    FFrame.ShowModal;
  finally
    FFrame.Free;
    FFrame := nil;
  end;
end;

procedure TE001_Remains.actGoTo405Execute(Sender: TObject);
var
  VT055_S_ID, VT055_E_ID: Double;
begin
  // получаем ID первого и последнего месяца
  GetMonthId(VT055_S_ID, VT055_E_ID);

  // переходим к операциям формы 405
  frm01_Main.Find_405_Link_01(
    VT055_S_ID, VT055_E_ID,
    odsListT027_ID.AsFloat,
    odsListT028_ID.AsFloat
    );
end;

procedure TE001_Remains.actGoTo711Execute(Sender: TObject);
var
  VT055_S_ID, VT055_E_ID, VT027_ID: Double;
begin
  // получаем ID первого и последнего месяца
  GetMonthId(VT055_S_ID, VT055_E_ID);
  VT027_ID := odsListT027_ID.AsFloat;

  // для 711 переводим наши DR1 (30) в DR (9)
  if VT027_ID = 30 then
    VT027_ID := 9;

  // переходим к данным 711 формы (данные за последний месяц отчетного квартала)
  frm01_Main.FindIssuer_711_12_InPer(
    odsListT028_ID.AsFloat,
    VT055_E_ID,
    VT055_E_ID,
//    [FLink.GetT027_ID]
    [VT027_ID]
    );
end;

procedure TE001_Remains.actGoToNDExecute(Sender: TObject);
begin
  // переходим к операциям формы ND
  frm01_Main.ND_Find_01(
    FLink.GetT055_ID,
    odsListT027_ID.AsFloat,
    odsListT028_ID.AsFloat
    );
end;

procedure TE001_Remains.actGoTo415Execute(Sender: TObject);
var
  VT055_S_ID, VT055_E_ID: Double;
begin
  // получаем ID первого и последнего месяца
  GetMonthId(VT055_S_ID, VT055_E_ID);

  // переходим к данным 415 формы на конец последнего месяца отчетного квартала
  frm01_Main.FindIssuer_415_12_InPer(
    odsListT028_ID.AsFloat,
    VT055_E_ID,
    VT055_E_ID,
    odsListT027_ID.AsFloat
    );
end;

procedure TE001_Remains.actGoTo417Execute(Sender: TObject);
var
  VDateStart, vDateEnd: TDateTime;
  vSecType: string;
begin
  // получаем даты начала и конца квартала
  odsDates.Close;
  odsDates.SetVariable('T055_ID', FLink.GetT055_ID);
  odsDates.Open;
  VDateStart := odsDates.FieldByName('T055_START_DATE').AsDateTime;
  VDateEnd := odsDates.FieldByName('T055_END_DATE').AsDateTime;

  // для 417 переводим наши DR1 (30) в DR (9)
  vSecType := odsListT027_SEC_TYPE.AsString;
  if (vSecType = 'DR1') or (vSecType = 'DR2') then
    vSecType := 'DR';

  // переходим к данным 417 формы (данные за 3 месяца отчетного квартала)
  frm01_Main.FindIssuer_417_InPer(
    odsListT028_ID.AsFloat,
    vDateStart,
    vDateEnd,
    vSecType,
    odsListT010_ISIN_TRANSL.AsString
    );
end;

procedure TE001_Remains.actGoToIssuersExecute(Sender: TObject);
begin
  // Переходим в каталог эмитентов (контрагентов)
  frm01_Main.FindIssuer(
    odsListT028_ID.AsFloat
    );
end;

procedure TE001_Remains.actGoToEmissionsExecute(Sender: TObject);
begin
  // Переходим в каталог эмиссий
  frm01_Main.FindEmisByIssuer(
    odsListT027_ID.AsFloat,
    odsListT028_ID.AsFloat,
    odsListT010_ISIN_TRANSL.AsString,
    odsListT028_INN.AsString,
    odsList.GetVariable('T027_ID')
    );
end;

procedure TE001_Remains.InitFrame(Sender: TObject);
var
  VColumnDef: TColumnDef;
begin
  // инициализируем фильтры
  if not G001_IssuerGroup1.odsList.Active then
    begin
    // инициализируем группу и устанавливаем по умолчанию группу 103 (IIP)
    G001_IssuerGroup1.InitFrame(nil);
    G001_IssuerGroup1.KeyValue := 103;
    end;

   Label1.Left := paFilter.Width - Label1.Width - 24;

  inherited;

  ColumnDefs.Clear;
  VColumnDef := ColumnDefs.AddSelectionColumn(xxxDBGrid.Columns[49]);
  VColumnDef.Images.Clear;
  VColumnDef.Images.AddStr(57, 'N');
  VColumnDef.Images.AddStr(58, 'Y');
  VColumnDef.OnCellClick := CellClick;
end;

procedure TE001_Remains.CellClick(Column: TColumn);
begin
  if (Column.Field.FieldName = 'T170_E_FIXED') and (not Column.Field.IsNull) then
    begin
    if Column.Field.AsString = 'Y' then
      begin
      // снимаем признак
      DoUnCheck(Column.Field.FieldName);
      end
    else
      begin
      // ставим признак
      DoCheck(Column.Field.FieldName);
      end;

    SaveCheck;
    end;
end;

procedure TE001_Remains.DoCheck(CheckColumnName: String);
begin
  // выделяем запись
  odsList.Edit;
  odsList.FieldByName(CheckColumnName).AsString := 'Y';
  odsList.Post;
end;

procedure TE001_Remains.DoUnCheck(CheckColumnName: String);
begin
  // снимем выделение
  odsList.Edit;
  odsList.FieldByName(CheckColumnName).AsString := 'N';
  odsList.Post;
end;

procedure TE001_Remains.SaveCheck;
begin
  oqSaveCheck.SetVariable('T170_ID', odsList['T170_ID']);
  oqSaveCheck.SetVariable('T170_E_FIXED', odsList['T170_E_FIXED']);
  oqSaveCheck.Execute;
end;

procedure TE001_Remains.actEditUpdate(Sender: TObject);
begin
  actEdit.Enabled := True;
end;

function TE001_Remains.GetMatrixUpdName: string;
begin
  Result := '';
end;


function TE001_Remains.GetEditClass: TfmEditClass;
begin
  Result := TE001_RemainsEdit;
end;

procedure TE001_Remains.DoEdit;
begin
  oqUpdate.SetVariable('T170_ID', odsList['T170_ID']);
  oqUpdate.SetVariable('T170_S_USD_RATE', odsList['T170_S_USD_RATE']);
  oqUpdate.SetVariable('T170_S_170_CNT_REM', odsList['T170_S_170_CNT_REM']);
  oqUpdate.SetVariable('T170_S_170_USD_REM', odsList['T170_S_170_USD_REM']);
  oqUpdate.SetVariable('T170_O_USD_RATE', odsList['T170_O_USD_RATE']);
  oqUpdate.SetVariable('T170_O_405_CNT_E', odsList['T170_O_405_CNT_E']);
  oqUpdate.SetVariable('T170_O_405_USD_E', odsList['T170_O_405_USD_E']);
  oqUpdate.SetVariable('T170_O_170_CNT_SAL', odsList['T170_O_170_CNT_SAL']);
  oqUpdate.SetVariable('T170_O_170_USD_SAL', odsList['T170_O_170_USD_SAL']);
  oqUpdate.SetVariable('T170_O_OTH_CNT_E', odsList['T170_O_OTH_CNT_E']);
  oqUpdate.SetVariable('T170_O_OTH_USD_E', odsList['T170_O_OTH_USD_E']);
  oqUpdate.SetVariable('T170_O_PER_USD', odsList['T170_O_PER_USD']);
  oqUpdate.SetVariable('T170_E_USD_RATE', odsList['T170_E_USD_RATE']);
  oqUpdate.SetVariable('T170_E_170_CNT_REM', odsList['T170_E_170_CNT_REM']);
  oqUpdate.SetVariable('T170_E_170_USD_REM', odsList['T170_E_170_USD_REM']);
  oqUpdate.SetVariable('T170_COMMENTS', odsList['T170_COMMENTS']);
  oqUpdate.SetVariable('T170_E_FIXED', odsList['T170_E_FIXED']);
  oqUpdate.SetVariable('T170_LOG_USER', dmMain.GetUser);
  oqUpdate.Execute;
end;

function TE001_Remains.GetDefRefreshType: TRefreshType;
begin
  // по умолчанию рефрешим одну строку
  Result := rtOneRow;
end;

procedure TE001_Remains.actHistoryUpdate(Sender: TObject);
begin
  actHistory.Enabled := (not odsList.IsEmpty) and (odsListT170_CHANGED.AsString = 'Y');
end;

procedure TE001_Remains.actHistoryExecute(Sender: TObject);
var
  vForm: TE001_HistoryList;
  i, j: integer;
begin
  vForm := TE001_HistoryList.Create(Self);

  // показываем/прячем колонки таблицы
  for i := 0 to xxxDBGrid.Columns.Count-1 do
    begin
    for j := 0 to vForm.xxxDBGrid.Columns.Count-1 do
      begin
      if xxxDBGrid.Columns[i].FieldName = vForm.xxxDBGrid.Columns[j].FieldName then
        begin
        vForm.xxxDBGrid.Columns[j].Visible := xxxDBGrid.Columns[i].Visible;
        vForm.xxxDBGrid.Columns[j].Width := xxxDBGrid.Columns[i].Width;
        break;
        end;
      end;
    end;
  vForm.T170_ID := odsListT170_ID.AsFloat;

  vForm.ShowModal;
  vForm.Free;
end;

procedure TE001_Remains.xxxDBGridCellClick(Column: TColumn);
begin
  if Assigned(Column.Field) then
    begin
    if (Column.Field.FieldName = 'T170_E_FIXED') then
      xxxDBGrid.Options := xxxDBGrid.Options - [dgEditing]
    else
      xxxDBGrid.Options := xxxDBGrid.Options + [dgEditing];
    end;

  inherited;
end;

procedure TE001_Remains.actCheckAllUpdate(Sender: TObject);
begin
  actCheckAll.Enabled := not odsList.IsEmpty;
end;

procedure TE001_Remains.actCheckAllExecute(Sender: TObject);
begin
  CheckAll('Y');
end;

procedure TE001_Remains.actUncheckAllUpdate(Sender: TObject);
begin
  actUnCheckAll.Enabled := not odsList.IsEmpty;
end;

procedure TE001_Remains.actUncheckAllExecute(Sender: TObject);
begin
  CheckAll('N');
end;

procedure TE001_Remains.actCheckSelectedUpdate(Sender: TObject);
begin
  actCheckSelected.Enabled := xxxDBGrid.SelectedRows.Count > 0;
end;

procedure TE001_Remains.actCheckSelectedExecute(Sender: TObject);
begin
  CheckAllSelected('Y');
end;

procedure TE001_Remains.actUncheckSelectedUpdate(Sender: TObject);
begin
  actUncheckSelected.Enabled := xxxDBGrid.SelectedRows.Count > 0;
end;

procedure TE001_Remains.actUncheckSelectedExecute(Sender: TObject);
begin
  CheckAllSelected('N');
end;

procedure TE001_Remains.CheckAll(ACheck: string);
var
  vT170_ID: Double;
begin
  vT170_ID := odsListT170_ID.AsFloat;
  odsList.DisableControls;
  odsList.First;
  while not odsList.Eof do
    begin
    odsList.Edit;
    odsList.FieldByName('T170_E_FIXED').AsString := ACheck;
    odsList.Post;
    SaveCheck;
    odsList.Next;
    end;
  DataSet.Locate('T170_ID', vT170_ID, []);
  odsList.EnableControls;
end;

procedure TE001_Remains.CheckAllSelected(ACheck: string);
var
  vT170_ID: Double;
  i: integer;
begin
  vT170_ID := odsListT170_ID.AsFloat;
  odsList.DisableControls;
  for i := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin
    odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[i]);
    odsList.Edit;
    odsList.FieldByName('T170_E_FIXED').AsString := ACheck;
    odsList.Post;
    SaveCheck;
    end;
  DataSet.Locate('T170_ID', vT170_ID, []);
  odsList.EnableControls;
end;

procedure TE001_Remains.odsList_GetTextCNT(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if DisplayText = True then
    begin
    if not Sender.IsNull then
      Text := FormatFloat(',##0.0', Sender.Value / 1000000);
    end
  else
    begin
    if not Sender.IsNull then
      Text := FloatToStrF(Sender.Value / 1000000, ffFixed, 15, 6);
    end;
end;

procedure TE001_Remains.odsList_GetTextUSD(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if DisplayText = True then
    begin
    if not Sender.IsNull then
      Text := FormatFloat(',##0.0', Sender.Value / 1000000);
    end
  else
    begin
    if not Sender.IsNull then
      Text := FloatToStr(Sender.Value / 1000000);
    end;
end;

procedure TE001_Remains.odsList_GetTextRATE(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if DisplayText = True then
    begin
    if not Sender.IsNull then
      Text := FormatFloat(',##0.000', Sender.Value);
    end
  else
    begin
    if not Sender.IsNull then
      Text := FloatToStr(Sender.Value);
    end;
end;

procedure TE001_Remains.odsList_GetTextPRC(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if DisplayText = True then
    begin
    if not Sender.IsNull then
      Text := FormatFloat(',##0.0', Sender.Value);
    end
  else
    begin
    if not Sender.IsNull then
      Text := FloatToStr(Sender.Value);
    end;
end;

procedure TE001_Remains.odsList_SetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := StrToFloat(Text) * 1000000;
end;

procedure TE001_Remains.SendRequest(T170_ID: Double; ISIN, Ticker, Exch_code: string; T055_ID: Double;
  AskEmissSize, AskRates: boolean);
var
  vCursor: TCursor;
  vClient: TBlpClient;
  vSecurity: string;
  vUser: string;
  vResult: integer;
  vData: string;
  vT055_ID_S: double;
  vT055_ID_E: double;
begin
  if ISIN = '' then Exit;
  if Ticker = '' then Exit;
  if Exch_code = '' then Exit;

  vCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  vSecurity := Ticker + ' ' + Exch_Code + ' ' + 'Equity';
  vUser := dmMain.GetUser;

  if AskEmissSize = True then
    begin
    // Запрашиваем размер и дату эмиссии
    vClient := TBlpClient.Create(Self, dmMain.ParamList.Values['Bloomberg IP']);
//    vClient.OnLog := frm01_Main.Log;
    vClient.RequestType := DATABASE;
    vClient.RequestNo := 9;  // размер эмиссии EQY_SH_OUT_REAL, его дата EQY_SH_OUT_DT, и MARKET_STATUS
    vClient.AddSecurity(ISIN, vSecurity);
    vClient.User := vUser;
    vResult := vClient.SendRequest(vData);
    if (vResult = 0) and (vData <> 'BAD_SEC') then
      begin
      // Сохраняем размер эмиссии в T098
      oqSaveEmissSize.SetVariable('ISIN', ISIN);
      oqSaveEmissSize.SetVariable('T055_ID', T055_ID);
      oqSaveEmissSize.SetVariable('USER', vUser);
      oqSaveEmissSize.Execute;
      end;
    vClient.Free;
    end;

  if AskRates = True then
    begin
    // Запрашиваем котировки:
    // Определяем даты (начало квартала и конец квартала )[и проверяем, надо ли запрашивать]
    odsDates.Close;
    odsDates.SetVariable('T055_ID', T055_ID); // T055_ID квартала
    odsDates.Open;

    vClient := TBlpClient.Create(Self, dmMain.ParamList.Values['Bloomberg IP']);
//    vClient.ClearRequest;
    vClient.RequestType := DATABASE;
    vClient.RequestNo := 10; // запрос за котировками PX_LAST
    vClient.AddSecurity(ISIN, vSecurity);
    vClient.StartDate := odsDates.FieldByName('T055_START_DATE').AsDateTime;
    vClient.EndDate := odsDates.FieldByName('T055_END_DATE').AsDateTime;
    vClient.Currency := 'USD';
    vClient.User := vUser;
    vResult := vClient.SendRequest(vData);
    odsDates.Close;
    vClient.Free;

    if (vResult = 0) and (vData <> 'BAD_SEC') then
      begin
      // Сохраняем котировки в T001 для сводной таблицы
      // получаем ID первого и последнего месяца квартала
      GetMonthId(vT055_ID_S, vT055_ID_E);
      oqSaveRates.SetVariable('ISIN', ISIN);
      oqSaveRates.SetVariable('TICKER', Ticker);
      oqSaveRates.SetVariable('EXCH_CODE', Exch_Code);
      oqSaveRates.SetVariable('T030_ID', odsListT030_ID.asFloat);
      oqSaveRates.SetVariable('T055_ID_S', vT055_ID_S);
      oqSaveRates.SetVariable('T055_ID_E', vT055_ID_E);
      oqSaveRates.Execute;
      end;
    end;

  Screen.Cursor := vCursor;
end;

procedure TE001_Remains.actRatesLoadCurrentUpdate(Sender: TObject);
begin
  actRatesLoadCurrent.Enabled := not odsList.IsEmpty;
end;

procedure TE001_Remains.actRatesLoadCurrentExecute(Sender: TObject);
var
  vDlg: TE001_RequestDlg;
  vCursor: TCursor;
  vEndDate: TDateTime;
begin
  vEndDate := 0;
  vCursor := Screen.Cursor;
  vDlg := TE001_RequestDlg.Create(Self, 'Данные текущей записи будут обновлены. Продолжить?');
  try
    if vDlg.ShowModal = mrOk then
      begin
      Screen.Cursor := crSQLWait;
      if (vDlg.cbRates.Checked = True) or (vDlg.cbSi.Checked = True) then
        begin
        odsDates.Close;
        odsDates.SetVariable('T055_ID', odsListT055_ID.AsFloat); // T055_ID квартала
        odsDates.Open;
        vEndDate := odsDates.FieldByName('T055_END_DATE').AsDateTime;
        odsDates.Close;
        end;

      LoadRates(vDlg, vEndDate);
      if vDlg.Recalc = True then
        Recalc;
      RefreshOneRecord;
      end;
  finally
    vDlg.Free;
    Screen.Cursor := vCursor;
  end;
end;

procedure TE001_Remains.actRatesLoadSelectedUpdate(Sender: TObject);
begin
  actRatesLoadSelected.Enabled := (not odsList.IsEmpty) and (xxxDBGrid.SelectedRows.Count <> 0);
end;

procedure TE001_Remains.actRatesLoadSelectedExecute(Sender: TObject);
var
  vDlg: TE001_RequestDlg;
  vEndDate:  TDateTime;
  vCursor: TCursor;
  bm: TBookmark;
  i: integer;
begin
  vEndDate := 0;
  vDlg := TE001_RequestDlg.Create(Self, 'Данные выделенных записей будут обновлены. Продолжить?');
  if vDlg.ShowModal = mrOk then
//  if TAppMessages.ShowConfirmation('Котировки выделенных записей будут обновлены. Продолжить?') = True then
    begin
    vCursor:= Screen.Cursor;
    odsList.DisableControls;
    bm := odsList.GetBookmark;
    try
      for i := 0 to xxxDBGrid.SelectedRows.Count -1 do
        begin
        odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[i]);
          if vDlg.cbRates.Checked = True then
            begin
            Screen.Cursor:= crSQLWait;
            odsDates.Close;
            odsDates.SetVariable('T055_ID', odsListT055_ID.AsFloat); // T055_ID квартала
            odsDates.Open;
            vEndDate := odsDates.FieldByName('T055_END_DATE').AsDateTime;
            odsDates.Close;
            end;
          LoadRates(vDlg, vEndDate);
          if vDlg.Recalc = True then
            Recalc;
          RefreshOneRecord;
          end;
    finally
      xxxDBGrid.SelectedRows.Clear;
      odsList.GotoBookmark(bm);
      odsList.FreeBookmark(bm);
      odsList.EnableControls;
      Screen.Cursor:= vCursor;
    end;
  end;

  vDlg.Free;
end;

procedure TE001_Remains.actRatesLoadAllUpdate(Sender: TObject);
begin
  actRatesLoadAll.Enabled := (not odsList.IsEmpty);
end;

procedure TE001_Remains.actRatesLoadAllExecute(Sender: TObject);
var
  vDlg: TE001_RequestDlg;
  vEndDate: TDateTime;
  vCursor: TCursor;
  bm: TBookmark;
begin
  vEndDate := 0;
  vDlg := TE001_RequestDlg.Create(Self, 'Данные всех записей будут обновлены. Продолжить?');
  if vDlg.ShowModal = mrOk then
//  if TAppMessages.ShowConfirmation('Котировки всех записей будут обновлены. Продолжить?') = True then
    begin
    vCursor:= Screen.Cursor;
    odsList.DisableControls;
    bm := odsList.GetBookmark;
    odsList.First;
    try
      while not odsList.Eof do
        begin
        Screen.Cursor:= crSQLWait;
        if vDlg.cbRates.Checked = True then
          begin
          odsDates.Close;
          odsDates.SetVariable('T055_ID', odsListT055_ID.AsFloat); // T055_ID квартала
          odsDates.Open;
          vEndDate := odsDates.FieldByName('T055_END_DATE').AsDateTime;
          odsDates.Close;
          end;
        LoadRates(vDlg, vEndDate);
        if vDlg.Recalc = True then
          Recalc;
        odsList.Next;
        end;

//      if vDlg.Recalc = True then
//        begin
        // вызываем процедуру легкого перерасчета за квартал
//        oqDoCalc.SetVariable('I_T055_ID', FLink.GetT055_ID);
//        oqDoCalc.SetVariable('I_T027_ID', FLink.GetT027_ID);
//        oqDoCalc.SetVariable('I_T030_ID', -1);
//        oqDoCalc.SetVariable('I_USER', dmMain.GetUser);
//        oqDoCalc.Execute;
//        end;

      odsList.GotoBookmark(bm);
      odsList.FreeBookmark(bm);
      odsList.EnableControls;
      RefreshAllRecords;
    finally
      Screen.Cursor:= vCursor;
      vDlg.Free;
    end;
    end;
end;

procedure TE001_Remains.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  vFontColor: TColor;
  vBrushColor: TColor;
begin
  vFontColor := xxxDbGrid.Font.Color;
  vBrushColor := xxxDbGrid.Color;

  if odsListMARKET_STATUS.AsString <> 'ACTV' then
    begin
//    vFontColor := clDkGray;
    vFontColor := $007F7F7F;

//    vBrushColor := clDkGray;
    end;

  if odsListT170_E_PERCENT.AsFloat > 100 then
    begin
//    vBrushColor := clPurple;
//    vBrushColor := $00CF9FFF;
    vBrushColor := $00F5C9F3;
//    vFontColor := clWhite;
    end;

  if odsListT170_E_PERCENT.AsFloat < 100 then
    begin
//    vBrushColor := $006FBFFF;
    vBrushColor := $00AAD5FF;
    end;

  if odsListT170_E_PERCENT.AsFloat < 90 then
    begin
//    vBrushColor := $008484FF;
    vBrushColor := $00BBBBFF;
    end;

  if Column.FieldName = 'T170_S_SI_PRC' then
    begin
    if not odsListT170_S_SI_PRC_HND.IsNull then
      if odsListT170_S_SI_PRC_HND.AsFloat <> odsListT170_S_SI_PRC_SRC.AsFloat then
        vBrushColor := clYellow;
    end
  else if Column.FieldName = 'T170_S_SI_PRC_NR' then
    begin
    if odsListT170_S_SI_PRC_SRC.AsFloat <> odsListT170_S_SI_PRC_NR.AsFloat then
      vBrushColor := clYellow;
    end
  else if Column.FieldName = 'T170_E_SI_PRC' then
    begin
    if not odsListT170_E_SI_PRC_HND.IsNull then
      if odsListT170_E_SI_PRC_HND.AsFloat <> odsListT170_E_SI_PRC_SRC.AsFloat then
        vBrushColor := clYellow;
    end
  else if Column.FieldName = 'T170_E_SI_PRC_NR' then
    begin
    if odsListT170_E_SI_PRC_SRC.AsFloat <> odsListT170_E_SI_PRC_NR.AsFloat then
      vBrushColor := clYellow;
    end
  else if Column.FieldName = 'T170_E_RES_PRC' then
    begin
    if not odsListT170_E_RES_PRC_HND.IsNull then
      if odsListT170_E_RES_PRC_HND.AsFloat <> odsListT170_E_RES_PRC_CLC.AsFloat then
        vBrushColor := clYellow;
    end;

  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
    begin
    if xxxDBGrid.SelectedRows.CurrentRowSelected then
      begin
      if gdSelected in State then
        begin
        xxxDBGrid.Canvas.Brush.Color := clBlue;
        xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
        end
      else
        begin
        xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := clBlue;
        end;
      end
    else
      begin
      if gdSelected in State then
        begin
        xxxDBGrid.Canvas.Brush.Color := vFontColor;
        xxxDBGrid.Canvas.Font.Color := vBrushColor;
        end
      else
        begin
        xxxDBGrid.Canvas.Brush.Color := vBrushColor;
        xxxDBGrid.Canvas.Font.Color := vFontColor;
        end;
      end;
    end;

  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TE001_Remains.odsListAfterOpen(DataSet: TDataSet);
begin
  inherited;

  if odsListT055_ID.AsFloat < 1926 then // 3кв. 2015
    begin
    N1.Action := actGoToND;
    N1.Caption := 'Перейти к НД...';
    N1.Hint := 'Перейти к данным небанковских депозитариев...';
    N1.OnClick := actGoToNDExecute;
    end
  else
    begin
    N1.Action := actGoTo415;
    N1.Caption := 'Перейти к 415...';
    N1.Hint := 'Перейти к данным формы 415...';
    N1.OnClick := actGoTo415Execute;
    end;
end;

procedure TE001_Remains.PopupMenuPopup(Sender: TObject);
begin
  if odsList.IsEmpty then Exit;

  if (xxxDbGrid.SelectedField.FieldName = 'T170_E_RATE_HND') or
     (xxxDbGrid.SelectedField.FieldName = 'T170_E_SI_PRC') or
     (xxxDbGrid.SelectedField.FieldName = 'T170_E_RES_PRC') then
    mi02.Enabled := True
  else
    mi02.Enabled := False;

  if (xxxDbGrid.SelectedField.FieldName = 'T170_S_SI_PRC_NR') or
     (xxxDbGrid.SelectedField.FieldName = 'T170_E_SI_PRC_NR') then
    begin
    actSiDetails.Visible := True;
    end
  else
    begin
    actSiDetails.Visible := False;
    // RethinkLines - скрывает разделители
    end;
end;

procedure TE001_Remains.xxxDBGridDblClick(Sender: TObject);
begin
  if (xxxDbGrid.SelectedField.FieldName = 'T170_E_RATE_HND') or
     (xxxDbGrid.SelectedField.FieldName = 'T170_E_SI_PRC') or
     (xxxDbGrid.SelectedField.FieldName = 'T170_E_RES_PRC') then
    mi02Click(Sender);
end;

procedure TE001_Remains.mi02Click(Sender: TObject);
var
  vDlg: TE001_RateEdit;
  vCursor: TCursor;
begin
  if odsList.IsEmpty then Exit;
  vDlg := TE001_RateEdit.Create(Self);
  if (xxxDbGrid.SelectedField.FieldName = 'T170_E_RATE_HND') then
    begin
    vDlg.Mode := 1;
    vDlg.Caption := 'Котировка';
    vDlg.Value := odsListT170_E_RATE_HND.AsFloat;
//    vDlg.ed2.DisplayFormat := ',0.000;-,0.000';
    vDlg.Label2.Visible := False;
    vDlg.edComment.Visible := False;
    odsList.Edit;
    if vDlg.ShowModal = mrOk then
      begin
      odsListT170_E_RATE_HND.AsVariant := vDlg.Value;
      odsList.Post;
      vCursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;
      try
        oqSetRate.SetVariable('T170_ID', odsListT170_ID.AsFloat);
        oqSetRate.SetVariable('RATE_VALUE', vDlg.Value);
        oqSetRate.SetVariable('USER', dmMain.GetUser);
        oqSetRate.Execute;
        RefreshDataAfterChange;
      finally
        Screen.Cursor := vCursor;
      end;
      end
    else
      begin
      odsList.Cancel;
      end;
    end
  else if (xxxDbGrid.SelectedField.FieldName = 'T170_E_SI_PRC') then
    begin
    vDlg.Mode := 2;
    vDlg.Caption := 'Доля ПИ';
    vDlg.Value := odsListT170_E_SI_PRC_HND.AsFloat;
//    vDlg.ed2.DisplayFormat := ',0.000;-,0.000';
    vDlg.Label2.Visible := True;
    vDlg.edComment.Visible := True;
    vDlg.edComment.Text := Copy(odsListT170_E_SI_PRC_HND_DS.AsString, 1, Pos(' - ', odsListT170_E_SI_PRC_HND_DS.AsString) -1);
    odsList.Edit;
    if vDlg.ShowModal = mrOk then
      begin
      odsListT170_E_SI_PRC_HND.AsVariant := vDlg.Value;
      odsList.Post;
      vCursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;
      try
        oqSetInvPart.SetVariable('T170_ID', odsListT170_ID.AsFloat);
        oqSetInvPart.SetVariable('VALUE', vDlg.Value);
        oqSetInvPart.SetVariable('DATA_SOURCE', vDlg.edComment.Text);
        oqSetInvPart.SetVariable('USER', dmMain.GetUser);
        oqSetInvPart.SetVariable('INV_TYPE', 1);
        oqSetInvPart.Execute;
        RefreshDataAfterChange;
      finally
        Screen.Cursor := vCursor;
      end;
      end
    else
      begin
      odsList.Cancel;
      end;
    end
  else if (xxxDbGrid.SelectedField.FieldName = 'T170_E_RES_PRC') then
    begin
    vDlg.Mode := 2;
    vDlg.Caption := 'Доля резидентов';
    vDlg.Value := odsListT170_E_RES_PRC_HND.AsFloat;
//    vDlg.ed2.DisplayFormat := ',0.000;-,0.000';
    vDlg.Label2.Visible := True;
    vDlg.edComment.Visible := True;
    vDlg.edComment.Text := Copy(odsListT170_E_RES_PRC_HND_DS.AsString, 1, Pos(' - ', odsListT170_E_RES_PRC_HND_DS.AsString) -1);
    odsList.Edit;
    if vDlg.ShowModal = mrOk then
      begin
      odsListT170_E_RES_PRC_HND.AsVariant := vDlg.Value;
      odsList.Post;
      vCursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;
      try
        oqSetInvPart.SetVariable('T170_ID', odsListT170_ID.AsFloat);
        oqSetInvPart.SetVariable('VALUE', vDlg.Value);
        oqSetInvPart.SetVariable('DATA_SOURCE', vDlg.edComment.Text);
        oqSetInvPart.SetVariable('USER', dmMain.GetUser);
        oqSetInvPart.SetVariable('INV_TYPE', 2);
        oqSetInvPart.Execute;
        RefreshDataAfterChange;
      finally
        Screen.Cursor := vCursor;
      end;
      end
    else
      begin
      odsList.Cancel;
      end;
    end;

  vDlg.Free;
end;

procedure TE001_Remains.LoadRates(vDlg: TE001_RequestDlg; vEndDate: TDateTime);
var
  vCursor: TCursor;
begin
  vCursor := Screen.Cursor;
  try
    // запрос за котировками и размером эмиссии
    if (vDlg.AskBlmRates = True) or (vDlg.AskEmissSize = True) then
      begin
      Screen.Cursor := crHourglass;
      SendRequest(
        odsListT170_ID.AsFloat,
        odsListT010_ISIN_TRANSL.AsString,
        odsListT167_NAME.AsString,
        odsListT167_EXCHANGE.AsString,
        odsListT055_ID.AsFloat,
        vDlg.AskEmissSize,
        vDlg.AskBlmRates
        );
      // сохраняем в T170
      Screen.Cursor := crSQLWait;
      oqGetRates.SetVariable('T170_ID', odsListT170_ID.AsFloat);
      oqGetRates.SetVariable('ISIN', odsListT010_ISIN_TRANSL.AsString);
      oqGetRates.SetVariable('END_DATE', vEndDate);
      oqGetRates.SetVariable('RATE_SOURCE', 'BLM');
      oqGetRates.Execute;
      end;
    if (vDlg.AskMvbRates = True) then
      begin
      Screen.Cursor := crSQLWait;
      oqGetRates.SetVariable('T170_ID', odsListT170_ID.AsFloat);
      oqGetRates.SetVariable('ISIN', odsListT010_ISIN_TRANSL.AsString);
      oqGetRates.SetVariable('END_DATE', vEndDate);
      oqGetRates.SetVariable('RATE_SOURCE', 'MVB');
      oqGetRates.Execute;
      end;
    if (vDlg.AskReuRates = True) then
      begin
      Screen.Cursor := crSQLWait;
      oqGetRates.SetVariable('T170_ID', odsListT170_ID.AsFloat);
      oqGetRates.SetVariable('ISIN', odsListT010_ISIN_TRANSL.AsString);
      oqGetRates.SetVariable('END_DATE', vEndDate);
      oqGetRates.SetVariable('RATE_SOURCE', 'REU');
      oqGetRates.Execute;
      end;
    if (vDlg.Ask405Rates = True) then
      begin
      Screen.Cursor := crSQLWait;
      oqGetRates.SetVariable('T170_ID', odsListT170_ID.AsFloat);
      oqGetRates.SetVariable('ISIN', odsListT010_ISIN_TRANSL.AsString);
      oqGetRates.SetVariable('END_DATE', vEndDate);
      oqGetRates.SetVariable('RATE_SOURCE', '405');
      oqGetRates.Execute;
      end;
    if (vDlg.Ask417Rates = True) then
      begin
      Screen.Cursor := crSQLWait;
      oqGetRates.SetVariable('T170_ID', odsListT170_ID.AsFloat);
      oqGetRates.SetVariable('ISIN', odsListT010_ISIN_TRANSL.AsString);
      oqGetRates.SetVariable('END_DATE', vEndDate);
      oqGetRates.SetVariable('RATE_SOURCE', '417');
      oqGetRates.Execute;
      end;
    if (vDlg.AskMoeRates = True) then
      begin
      Screen.Cursor := crSQLWait;
      oqGetRates.SetVariable('T170_ID', odsListT170_ID.AsFloat);
      oqGetRates.SetVariable('ISIN', odsListT010_ISIN_TRANSL.AsString);
      oqGetRates.SetVariable('END_DATE', vEndDate);
      oqGetRates.SetVariable('RATE_SOURCE', 'MOE');
      oqGetRates.Execute;
      end;
   if (vDlg.Ask711Rates = True) then
      begin
      Screen.Cursor := crSQLWait;
      oqGetRates.SetVariable('T170_ID', odsListT170_ID.AsFloat);
      oqGetRates.SetVariable('ISIN', odsListT010_ISIN_TRANSL.AsString);
      oqGetRates.SetVariable('END_DATE', vEndDate);
      oqGetRates.SetVariable('RATE_SOURCE', '711');
      oqGetRates.Execute;
      end;
    if (vDlg.Ask415Rates = True) then
      begin
      Screen.Cursor := crSQLWait;
      oqGetRates.SetVariable('T170_ID', odsListT170_ID.AsFloat);
      oqGetRates.SetVariable('ISIN', odsListT010_ISIN_TRANSL.AsString);
      oqGetRates.SetVariable('END_DATE', vEndDate);
      oqGetRates.SetVariable('RATE_SOURCE', '415');
      oqGetRates.Execute;
      end;
    if (vDlg.AskSiData = True) then
      begin
      Screen.Cursor := crSQLWait;
      oqSiData.SetVariable('T170_ID', odsListT170_ID.AsFloat);
      oqSiData.SetVariable('ISIN', odsListT010_ISIN_TRANSL.AsString);
      oqSiData.SetVariable('END_DATE', vEndDate);
      oqSiData.SetVariable('USER', dmMain.GetUser);
      oqSiData.Execute;
      end;

  finally
    Screen.Cursor := vCursor;
  end;
end;

procedure TE001_Remains.Recalc;
var
  vCursor: TCursor;
begin
  vCursor := Screen.Cursor;
  try
    Screen.Cursor := crSQLWait;
    oqCalcLight.SetVariable('T170_ID', odsListT170_ID.AsFloat);
    oqCalcLight.Execute;
  finally
    Screen.Cursor := vCursor;
  end;
end;

procedure TE001_Remains.actSiDetailsUpdate(Sender: TObject);
begin
  actSiDetails.Enabled := not odsList.IsEmpty;
end;

procedure TE001_Remains.actSiDetailsExecute(Sender: TObject);
var
  vDetails: TE001_SiDetails;
begin
  odsDates.Close;
  odsDates.SetVariable('T055_ID', odsListT055_ID.AsFloat);
  odsDates.Open;
  vDetails := TE001_SiDetails.Create(Self, odsListT027_ID.AsFloat, odsListT028_ID.AsFloat, odsDates.FieldByName('T055_END_DATE').AsDateTime);
  odsDates.Close;
  vDetails.ShowModal;
  vDetails.Free;
end;

end.
