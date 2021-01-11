unit G001_EmissionsFrame;

interface

uses
  fm005_GridFrame, Db, Oracle, Menus, OracleData, Classes, ActnList,
  Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  G002_RatesFrame, Forms, fm031_FilterFrame, System.Actions;
//  Windows, Messages, Graphics, Dialogs,
//  fm000_Parent, fm003_FilterFrame, fm008_DBObjectFrame,
//  fm021_CheckBoxFrame;

type
  TG001_Emissions = class(TfmGrid)
    odsListID_ISIN: TStringField;
    odsListPRIM_TICKER: TStringField;
    odsListPRIM_EXCH_CODE: TStringField;
    odsListTICKER: TStringField;
    odsListEXCH_CODE: TStringField;
    odsListNAME: TStringField;
    odsListCOMPANY_TAX_IDENTIFIER: TStringField;
    odsListCOUNTRY_ISO: TStringField;
    odsListCOUNTRY_FULL_NAME: TStringField;
    odsListINDUSTRY_SECTOR: TStringField;
    odsListCRNCY: TStringField;
    odsListMARKET_STATUS: TStringField;
    odsListEXCH_TRADE_STATUS: TStringField;
    odsListHAS_ADRS: TStringField;
    odsListSECURITY_TYP: TStringField;
    odsListTYPE_OF_BOND: TStringField;
    odsListSINKABLE: TStringField;
    odsListISSUE_DT: TStringField;
    odsListISSUER_INDUSTRY: TStringField;
    odsListMATURITY: TStringField;
    odsListISSUER: TStringField;
    odsListAMT_ISSUED: TFloatField;
    odsListCPN_FREQ: TFloatField;
    odsListFLOATER: TStringField;
    odsListFIRST_CPN_DT: TStringField;
    odsListDAY_CNT_DES: TStringField;
    odsListCPN_TYP: TStringField;
    odsListCPN: TFloatField;
    odsListAMT_OUTSTANDING: TFloatField;
    odsListREAL_BLOOMBERG_DEPT_DES: TStringField;
    odsListRUSSIAN_REGISTRATION_NUMBER: TStringField;
    odsListMARKET_SECTOR_DES: TStringField;
    actShowRates: TAction;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    actLoadRatesAll: TAction;
    actLoadRatesCurrent: TAction;
    actLoadRatesSelected: TAction;
    MenuLoadRates: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    odsListBL_PIPE_ACTIVE: TStringField;
    oqLoad: TOracleQuery;
    procedure actShowRatesExecute(Sender: TObject);
    procedure actLoadRatesCurrentUpdate(Sender: TObject);
    procedure actLoadRatesCurrentExecute(Sender: TObject);
    procedure actLoadRatesSelectedUpdate(Sender: TObject);
    procedure actLoadRatesSelectedExecute(Sender: TObject);
    procedure actLoadRatesAllUpdate(Sender: TObject);
    procedure actLoadRatesAllExecute(Sender: TObject);
  private
    FRates: TG002_Rates;
    procedure SendRequest(Isin, Ticker, Exch_code: string; DateFrom, DateTo: TDate; AUser: string);
  protected
  public
  end;

var
  G001_Emissions: TG001_Emissions;

implementation

uses
  SysUtils, dm005_MainData, G001_RequestDatesDlg;

{$R *.DFM}

procedure TG001_Emissions.actShowRatesExecute(Sender: TObject);
begin
  // показать котировки ценной бумаги
  // отображаем поля
  if not Assigned(FRates) then
  begin
    FRates := TG002_Rates.Create(Self);
    FRates.FrameName := 'Котировки ценной бумаги';
    FRates.DialogForm.CancelBtn.Visible := False;
    FRates.DialogForm.CancelBtn.Enabled := False;
    FRates.DialogForm.OKBtn.Left := FRates.DialogForm.CancelBtn.Left;
  end;
  FRates.ISIN := odsListID_ISIN.AsString;
  FRates.RefreshData;
  FRates.ShowModal;
end;

procedure TG001_Emissions.SendRequest(Isin, Ticker, Exch_code: string; DateFrom,
  DateTo: TDate; AUser: string);
begin
  oqLoad.SetVariable('ISIN', Isin);
  oqLoad.SetVariable('TICKER', Ticker);
  oqLoad.SetVariable('EXCH_CODE', Exch_code);
  oqLoad.SetVariable('DATE_FROM', Int(DateFrom));
  oqLoad.SetVariable('DATE_TO', Int(DateTo));
  oqLoad.SetVariable('USER', AUser);
  oqLoad.Execute;
end;

procedure TG001_Emissions.actLoadRatesCurrentUpdate(Sender: TObject);
begin
  actLoadRatesCurrent.Enabled := (not odsList.IsEmpty) and (odsListBL_PIPE_ACTIVE.AsString = 'Y');
end;

procedure TG001_Emissions.actLoadRatesCurrentExecute(Sender: TObject);
var
  vDlg: TG001_RequestDates;
begin
  vDlg := TG001_RequestDates.Create(Self);
  vDlg.dtUpto.Date := Date;
  vDlg.dtFrom.Date := IncMonth(Date, -1);

  if vDlg.ShowModal = MrOk then
    begin
    SendRequest(
      odsListID_ISIN.AsString,
      odsListPRIM_TICKER.AsString,
      odsListPRIM_EXCH_CODE.AsString,
      vDlg.dtFrom.Date,
      vDlg.dtUpto.Date,
      dmMain.GetUser
      );
    end;

  vDlg.Free;
end;

procedure TG001_Emissions.actLoadRatesSelectedUpdate(Sender: TObject);
begin
  actLoadRatesSelected.Enabled := (not odsList.IsEmpty) and (xxxDBGrid.SelectedRows.Count <> 0) and (odsListBL_PIPE_ACTIVE.AsString = 'Y');
end;

procedure TG001_Emissions.actLoadRatesSelectedExecute(Sender: TObject);
var
  vDlg: TG001_RequestDates;
  vCursor: TCursor;
  bm: TBookmark;
  i: integer;
  vUser: string;
begin
  vDlg := TG001_RequestDates.Create(Self);
  vDlg.dtUpto.Date := Date;
  vDlg.dtFrom.Date := IncMonth(Date, -1);

  if vDlg.ShowModal = MrOk then
    begin
    vCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    odsList.DisableControls;
    bm := odsList.GetBookmark;
    vUser := dmMain.GetUser;
    for i := 0 to xxxDBGrid.SelectedRows.Count -1 do
      begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[i]);
      SendRequest(
        odsListID_ISIN.AsString,
        odsListPRIM_TICKER.AsString,
        odsListPRIM_EXCH_CODE.AsString,
        vDlg.dtFrom.Date,
        vDlg.dtUpto.Date,
        vUser
        );
      end;
    xxxDBGrid.SelectedRows.Clear;
    odsList.GotoBookmark(bm);
    odsList.FreeBookmark(bm);
    odsList.EnableControls;
    Screen.Cursor:= vCursor;
    end;

  vDlg.Free;
end;

procedure TG001_Emissions.actLoadRatesAllUpdate(Sender: TObject);
begin
  actLoadRatesSelected.Enabled := (not odsList.IsEmpty) and (odsListBL_PIPE_ACTIVE.AsString = 'Y');
end;

procedure TG001_Emissions.actLoadRatesAllExecute(Sender: TObject);
var
  vDlg: TG001_RequestDates;
  vCursor: TCursor;
  bm: TBookmark;
  vUser: string;
begin
  vDlg := TG001_RequestDates.Create(Self);
  vDlg.dtUpto.Date := Date;
  vDlg.dtFrom.Date := IncMonth(Date, -1);

  if vDlg.ShowModal = MrOk then
    begin
    vCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    odsList.DisableControls;
    bm := odsList.GetBookmark;
    vUser := dmMain.GetUser;
    odsList.First;
    while not odsList.Eof do
      begin
      SendRequest(
        odsListID_ISIN.AsString,
        odsListPRIM_TICKER.AsString,
        odsListPRIM_EXCH_CODE.AsString,
        vDlg.dtFrom.Date,
        vDlg.dtUpto.Date,
        vUser
        );
      odsList.Next;
      end;
    odsList.GotoBookmark(bm);
    odsList.FreeBookmark(bm);
    odsList.EnableControls;
    Screen.Cursor:= vCursor;
    end;

  vDlg.Free;
end;

end.
