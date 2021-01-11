unit frm40_BankStateForm;

interface

uses
  frm04_ListForm, frm42_ClassificationForm, Db, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, Graphics,
  frm00_ParentForm, System.Actions;
//  Windows, Messages, SysUtils, Dialogs,
//  DBCtrls, DBCGrids,
//  , fm31_FilterFrame, ;

type
  Tfrm40_BankState = class(Tfrm04_List, TStepPage)
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
    odsListT055_START_DATE: TDateTimeField;
    odsListT002_BANK_CODE: TStringField;
    odsListT002_BANK_NAME: TStringField;
    actRecalc: TAction;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    Action1: TAction;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    actZero: TAction;
    ToolButton10: TToolButton;
    actReport: TAction;
    tbShowReports: TToolButton;
    odsListT002_CALC_DATE: TDateTimeField;
    odsListT002_CHANGE_DATE: TDateTimeField;
    actShowHistory: TAction;
    ToolButton6: TToolButton;
    ToolButton11: TToolButton;
    odsListT035_DESC: TStringField;
    odsListT055_Q_ID: TFloatField;
    ToolButton12: TToolButton;
    ToolButton14: TToolButton;
    actShowOper: TAction;
    actKOState: TAction;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    odsListKO_STATE: TFloatField;
    oqCheck: TOracleQuery;
    odsListT001_OP_SUM_IN: TFloatField;
    odsListT001_OP_SUM_OUT: TFloatField;
    odsListT001_OP_SUM_SALDO: TFloatField;
    odsListT001_OP_SUM_OB: TFloatField;
    odsListT001_OP_SUM_IN_F: TFloatField;
    odsListT001_OP_SUM_OUT_F: TFloatField;
    odsListT001_OP_SUM_SALDO_F: TFloatField;
    odsListT001_OP_SUM_OB_F: TFloatField;
    odsListT002_ID: TIntegerField;
    oqGetPeriodName: TOracleQuery;
    oqRecalc: TOracleQuery;
    odsListEVALUATION_STATE_DESC: TStringField;
    odsListT012_FICT_STATE_DESC: TStringField;
    odsListT013_FICT_STATE_DESC: TStringField;
    oqSetNoRating: TOracleQuery;
    oqIsNeedRevalue: TOracleQuery;
    procedure actShowContrExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actRecalcExecute(Sender: TObject);
    procedure odsFilterApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
    procedure actZeroExecute(Sender: TObject);
    procedure actReportExecute(Sender: TObject);
    procedure actShowHistoryExecute(Sender: TObject);
    procedure actShowOperExecute(Sender: TObject);
    procedure actKOStateExecute(Sender: TObject);
    procedure actKOStateUpdate(Sender: TObject);
    procedure actRecalcUpdate(Sender: TObject);
  private
    function GetRegn: String;
    function GetBankName: String;
    //
    function GetT002_ID: Integer;
    function GetKOBalls: Double;
  protected
    function GetRowFontColor: TColor; override;
    //
    procedure OnEdit; override;
    procedure DoEdit; override;

    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshAfterListChange; override;
    //
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm);
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    //
    property T002_ID: Integer read GetT002_ID;
    property Regn: String read GetRegn;
    property BankName: String read GetBankName;
    property KOBalls: Double read GetKOBalls;
  end;

var
  frm40_BankState: Tfrm40_BankState;

implementation

uses
  SysUtils, dm005_MainData, dm04_WorldReportData, frm01_MainForm,
  frm41_ContrStateForm, frm40_ProgressForm, frm04_EditForm, untMessages,
  frm70_BankStateHistoryForm, frm66_KOStateListForm;
//  frm01_MainForm, unt205_Params

{$R *.DFM}

{ Tfrm40_BankState }

class function Tfrm40_BankState.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm40_BankState;
end;

class function Tfrm40_BankState.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm40_BankState;
end;

class procedure Tfrm40_BankState.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm40_BankState) := AForm;
end;

procedure Tfrm40_BankState.actShowContrExecute(Sender: TObject);
begin
  Tfrm41_ContrState.Instance.ShowModal;
end;

procedure Tfrm40_BankState.DoOnShowPage(const AMainForm: TForm);
var
  NeedRating: Boolean;
  Progress: Tfrm40_Progress;
begin
//	if Tfrm42_Classification(Tfrm42_Classification.Instance).needCalculate then
//  begin
  	oqCheck.SetVariable('I_T055_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T055_ID);
	  oqCheck.Execute;
    NeedRating := (oqCheck.GetVariable('O_CHECK') = 'N');
    if NeedRating then
    begin
      Progress := Tfrm40_Progress.Create(Application);
      try
        Progress.PeriodID := Tfrm42_Classification(Tfrm42_Classification.Instance).T055_ID;
		  	Progress.ExecProc;
      finally
        Progress.Release;
      end;
    end;
//    Tfrm42_Classification(Tfrm42_Classification.Instance).needCalculate := false;
//  end;

	// смотрим данные
  RefreshAfterListChange;
end;

procedure Tfrm40_BankState.DoOnClosePage(const AMainForm: TForm);
begin
  Tfrm42_Classification(Tfrm42_Classification.Instance).ClearIds;
end;

procedure Tfrm40_BankState.FormShow(Sender: TObject);
begin
  // inherited;
end;

function Tfrm40_BankState.GetRegn: String;
begin
  Result := odsListT002_BANK_CODE.AsString;
end;

function Tfrm40_BankState.GetBankName: String;
begin
  Result := odsListT002_BANK_NAME.AsString;
end;

procedure Tfrm40_BankState.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
const
  TEXT_01 = 'Всего за %s';
begin
  // ловим появление новых отчетов от КО
  // и получаем название квартала
  oqGetPeriodName.SetVariable('I_T055_ID', Tfrm42_Classification(Tfrm42_Classification.Instance).T055_ID);
  oqGetPeriodName.Execute;
  xxxDBGrid.HeadersLines[0].Headers[0].Caption := Format(TEXT_01, [
    oqGetPeriodName.GetVariable('O_NAME')
    ]);

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

procedure Tfrm40_BankState.actRecalcExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  I: Integer;
begin
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  odsList.DisableControls;

  // Проставляем для выбранных КО признак что их нужно пересчитать
  try
    // запускаем расчет
    if xxxDBGrid.SelectedRows.Count = 0 then
    begin
      xxxDBGrid.SelectedRows.CurrentRowSelected := True;
    end;

    for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);
      oqRecalc.SetVariable('T002_ID', T002_ID);
      oqRecalc.Execute;
      Application.ProcessMessages;
    end;

    dmMain.Commit;
    xxxDBGrid.SelectedRows.Clear;
    odsList.EnableControls;
    Screen.Cursor:= VOldCursor;
  except on e:Exception do
    begin
      xxxDBGrid.SelectedRows.Clear;
      odsList.EnableControls;
      Screen.Cursor:= VOldCursor;
      dmMain.Rollback;
      raise;
    end;
  end;

  // Запускаем пересчет
  DoOnShowPage(nil);
end;

procedure Tfrm40_BankState.odsFilterApplyRecord(Sender: TOracleDataSet;
  Action: Char; var Applied: Boolean; var NewRowId: String);
begin
  // вставка, изменение, удаление осуществляется в методах
  Applied := True;
end;

function Tfrm40_BankState.GetT002_ID: Integer;
begin
  Result := odsListT002_ID.AsInteger;
end;

function Tfrm40_BankState.GetRowFontColor: TColor;
begin
  if odsListEVALUATION_STATE_DESC.AsString = 'Оценка КО произведена' then
  begin
    Result := inherited GetRowFontColor;
  end else
  begin
    Result := clRed;
  end;
end;

procedure Tfrm40_BankState.RefreshAfterListChange;
begin
  // смотрим данные
  RefreshData('T002_BANK_CODE', odsListT002_BANK_CODE.AsString);
end;

procedure Tfrm40_BankState.DoEdit;
begin
end;

procedure Tfrm40_BankState.OnEdit;
begin
  DataSet.Edit;
  EditType := etEdit;
  SaveChange;
end;

procedure Tfrm40_BankState.actZeroExecute(Sender: TObject);
var
  I: Integer;
  VOldCursor: TCursor;
begin
  odsList.DisableControls;
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;

  // Проставляем для КО признак что её нужно пересчитать
  try
    // запускаем расчет
    if xxxDBGrid.SelectedRows.Count = 0 then
    begin
      xxxDBGrid.SelectedRows.CurrentRowSelected := True;
    end;
    for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);
      // меняем статус операций
      oqSetNoRating.SetVariable('T002_ID', odsListT002_ID.AsFloat);
      oqSetNoRating.Execute;
      Application.ProcessMessages;
    end;

    // сморим данные
    RefreshAfterListChange;
    dmMain.Commit;
    xxxDBGrid.SelectedRows.Clear;
    odsList.EnableControls;
    Screen.Cursor:= VOldCursor;
  except on e:Exception do
    begin
      xxxDBGrid.SelectedRows.Clear;
      odsList.EnableControls;
      Screen.Cursor:= VOldCursor;
      dmMain.Rollback;
      raise;
    end;
  end;
end;

procedure Tfrm40_BankState.actReportExecute(Sender: TObject);
var
  IsNeedRevalue: Boolean;
begin
  oqIsNeedRevalue.SetVariable('T002_ID', odsListT002_ID.AsFloat);
  oqIsNeedRevalue.Execute;
  IsNeedRevalue := (oqIsNeedRevalue.GetVariable('NEED_REVALUE') = 'Y');

  if IsNeedRevalue then
  begin
    TAppMessages.ShowError('Изменились данные. Требуется пересчитать КО.');
    Exit;
  end;

  dm04_WorldReport.QuartName := oqGetPeriodName.GetVariable('O_NAME');
  dm04_WorldReport.BuildReport(
    odsListT055_ID.AsFloat,
    odsListT002_ID.AsFloat,
    odsListT002_BANK_NAME.AsString,
    odsListT002_BANK_CODE.AsString
    );
end;

procedure Tfrm40_BankState.actShowHistoryExecute(Sender: TObject);
begin
  Tfrm70_BankStateHistory.Instance.ShowModal;
end;

procedure Tfrm40_BankState.actShowOperExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindAllOperStep3(
    Tfrm42_Classification(Tfrm42_Classification.Instance).T055_ID,
    Tfrm42_Classification(Tfrm42_Classification.Instance).Regn
    );
end;

procedure Tfrm40_BankState.actKOStateExecute(Sender: TObject);
begin
  with Tfrm66_KOStateList.Instance do
  begin
    if ShowModal= mrOk then
      RefreshAfterListChange;
  end;
end;

procedure Tfrm40_BankState.actKOStateUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actKOState.Enabled := not DataSet.IsEmpty and EnableAction(actKOState)
  else
    actKOState.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm40_BankState.actRecalcUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actRecalc.Enabled := not DataSet.IsEmpty and EnableAction(actRecalc)
  else
    actRecalc.Enabled := not DataSet.IsEmpty;
end;

function Tfrm40_BankState.GetKOBalls: Double;
begin
  result := odsListKO_STATE.AsFloat;
end;

end.
