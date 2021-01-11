unit frm40_ProgressForm;

interface

uses
  Forms, Oracle, ExtCtrls, Controls, StdCtrls, Classes, Gauges;
//  Windows, Messages, Graphics, Dialogs,
//  Db, OracleData,

type
  Tfrm40_Progress = class(TForm)
    ProgressBar: TGauge;
    Timer: TTimer;
    Descr: TLabel;
    TimerDescr: TLabel;
    ProcessedDescr: TLabel;
    btnOk: TButton;
    oqProcessedCnt: TOracleQuery;
    // частность этой загрузки
    oqKOCnt: TOracleQuery;
    oqResidCnt: TOracleQuery;
    oqSecTypeCnt: TOracleQuery;
    //
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FStartTime: TDateTime;
    FCloseOnDone: Boolean;
    // частность этой загрузки
	  FPeriodID: Double;
    FStep: Integer;
    FStepDescription: String;
    procedure setStep(AValue: Integer);
  protected
    function getDescr: String;
    function getProcessedCount: Integer;
    function getMaxProgressValue: Integer;
    procedure DoOnStart;
    procedure DoOnTerminate(Sender: TObject);
  public
    procedure ExecProc;
    // частность этой загрузки
    property PeriodID: Double write FPeriodID;
  end;

  TEventThread = class(TThread)
  private
	  FT055_ID: Double;
    FErrorMessage: string;
    FOracleSession: TOracleSession;
    oqExec: TOracleQuery;
    FProgressForm: Tfrm40_Progress;
		procedure ExecuteStep1;
		procedure ExecuteStep2;
		procedure ExecuteStep3;
		procedure ExecuteStep4;
		procedure ExecuteStep5;
		procedure ExecuteStep6;
  protected
    procedure Execute; override;
  public
    property ErrorMessage: string read FErrorMessage write FErrorMessage;
    property T055_ID: Double write FT055_ID;
  end;

var
  frm40_Progress: Tfrm40_Progress;

implementation

uses SysUtils, dm005_MainData, untMessages;

{$R *.DFM}

{ TEventThread }

procedure TEventThread.Execute;
begin
  try
  	try
	    Synchronize(ExecuteStep1);

    	FOracleSession := TOracleSession.Create(nil);
	    FOracleSession.LogonDatabase := dmMain.OracleSession.LogonDatabase;
  	  FOracleSession.LogonUsername := dmMain.OracleSession.LogonUsername;
    	FOracleSession.LogonPassword := dmMain.OracleSession.LogonPassword;
	    FOracleSession.Connected:= true;

	    Synchronize(ExecuteStep2);

	    oqExec := TOracleQuery.Create(nil);
  	  oqExec.Session := FOracleSession;
      oqExec.SQL.Clear;
	    oqExec.SQL.Add('BEGIN PK_405_CLASSIFICATION.p_prepare_calculation (:I_T055_ID); END;');
  	  oqExec.ClearVariables;
	    oqExec.DeclareVariable('I_T055_ID', otFloat);
  	  oqExec.SetVariable('I_T055_ID', FT055_ID);
    	oqExec.Execute;

	    Synchronize(ExecuteStep3);

	    oqExec := TOracleQuery.Create(nil);
  	  oqExec.Session := FOracleSession;
      oqExec.SQL.Clear;
	    oqExec.SQL.Add('BEGIN PK_405_CLASSIFICATION.p_rate_ko (:I_T055_ID); END;');
  	  oqExec.ClearVariables;
	    oqExec.DeclareVariable('I_T055_ID', otFloat);
  	  oqExec.SetVariable('I_T055_ID', FT055_ID);
    	oqExec.Execute;

	    Synchronize(ExecuteStep4);

	    oqExec := TOracleQuery.Create(nil);
  	  oqExec.Session := FOracleSession;
      oqExec.SQL.Clear;
	    oqExec.SQL.Add('BEGIN PK_405_CLASSIFICATION.p_rate_resid (:I_T055_ID); END;');
  	  oqExec.ClearVariables;
	    oqExec.DeclareVariable('I_T055_ID', otFloat);
  	  oqExec.SetVariable('I_T055_ID', FT055_ID);
    	oqExec.Execute;

      Synchronize(ExecuteStep5);

	    oqExec := TOracleQuery.Create(nil);
  	  oqExec.Session := FOracleSession;
      oqExec.SQL.Clear;
	    oqExec.SQL.Add('BEGIN PK_405_CLASSIFICATION.p_rate_oper_by_sectype (:I_T055_ID); END;');
  	  oqExec.ClearVariables;
	    oqExec.DeclareVariable('I_T055_ID', otFloat);
  	  oqExec.SetVariable('I_T055_ID', FT055_ID);
    	oqExec.Execute;

      Synchronize(ExecuteStep6);

	    oqExec := TOracleQuery.Create(nil);
  	  oqExec.Session := FOracleSession;
      oqExec.SQL.Clear;
	    oqExec.SQL.Add('BEGIN PK_405_CLASSIFICATION.p_finish_calculation (:I_T055_ID); END;');
  	  oqExec.ClearVariables;
	    oqExec.DeclareVariable('I_T055_ID', otFloat);
  	  oqExec.SetVariable('I_T055_ID', FT055_ID);
    	oqExec.Execute;
      
			FOracleSession.Commit;

    finally
      FOracleSession.Rollback;
    	FOracleSession.Connected := false;
    end;
  except
    on E: Exception do
      FErrorMessage := E.Message;
  end;
end;

procedure TEventThread.ExecuteStep1;
begin
  FProgressForm.setStep(1);
end;

procedure TEventThread.ExecuteStep2;
begin
  FProgressForm.setStep(2);
end;

procedure TEventThread.ExecuteStep3;
begin
  FProgressForm.setStep(3);
end;

procedure TEventThread.ExecuteStep4;
begin
  FProgressForm.setStep(4);
end;

procedure TEventThread.ExecuteStep5;
begin
  FProgressForm.setStep(5);
end;

procedure TEventThread.ExecuteStep6;
begin
  FProgressForm.setStep(6);
end;

{ Tfrm40_Progress }

procedure Tfrm40_Progress.ExecProc;
var
  VThread: TEventThread;
begin
  // запускаем прогресс
  DoOnStart;

  // запускаем процесс
  VThread := TEventThread.Create(True);
  try
    VThread.ErrorMessage := '';
    VThread.T055_ID := FPeriodID;
    VThread.FreeOnTerminate := False;
    VThread.FProgressForm := Self;
    VThread.OnTerminate := Self.DoOnTerminate;
    VThread.Resume;
    Self.ShowModal;
    if VThread.ErrorMessage <> '' then
    begin
      TAppMessages.Error('Ошибка при выполнении расчета: ' + VThread.ErrorMessage);
    end;
  finally
    VThread.Free;
  end;
  Application.ProcessMessages;
end;

function Tfrm40_Progress.getMaxProgressValue: Integer;
begin
  case FStep of
    3:
    begin
      oqKOCnt.SetVariable('T055_ID', FPeriodID);
      oqKOCnt.Execute;
      Result := oqKOCnt.GetVariable('O_CNT');
    end;
    4:
    begin
      oqResidCnt.SetVariable('T055_ID', FPeriodID);
      oqResidCnt.Execute;
      Result := oqResidCnt.GetVariable('O_CNT');
    end;
    5:
    begin
      oqSecTypeCnt.SetVariable('T055_ID', FPeriodID);
      oqSecTypeCnt.Execute;
      Result := oqSecTypeCnt.GetVariable('O_CNT');
    end;
    else
    begin
	    Result := 1;
    end;
  end;
end;

procedure Tfrm40_Progress.setStep(AValue: Integer);
begin
  FStep := AValue;
  ProgressBar.Progress := 0;
  ProgressBar.MaxValue := getMaxProgressValue;

  case FStep of
    1:FStepDescription := 'Установление соединения с БД';
    2:FStepDescription := 'Подготовка данных для оценки';
    3:FStepDescription := 'Оценка КО';
    4:FStepDescription := 'Оценка резидентов';
    5:FStepDescription := 'Оценка операций по типам бумаг';
    6:FStepDescription := 'Завершение оценок';
  end;

  ProcessedDescr.Visible := (FStep in [3, 4, 5]);

  Application.ProcessMessages;
end;

function Tfrm40_Progress.getProcessedCount: Integer;
var
  PgssName: String;
begin
  PgssName := '';

  case FStep of
    3:PgssName := 'Оценка групп операций по КО';
    4:PgssName := 'Оценка групп операций по резидентам';
    5:PgssName := 'Оценка групп операций по типам бумаг';
	end;

  if PgssName <> '' then
  begin
    oqProcessedCnt.SetVariable('PGSS_NAME', PgssName);
    oqProcessedCnt.Execute;
    Result := oqProcessedCnt.GetVariable('O_CNT');
  end
  else
  begin
    Result := 0;
  end;
end;

function Tfrm40_Progress.getDescr: String;
begin
  Result := 'Шаг '  + IntToStr(FStep) + ': ' + FStepDescription;
end;

procedure Tfrm40_Progress.TimerTimer(Sender: TObject);
var
  CurTime: TDateTime;
  Processed: Integer;
begin
  CurTime := Now;
  TimerDescr.Caption := Format('Прошло времени: %s', [FormatDateTime('HH:NN:SS', CurTime - FStartTime)]);
  Descr.Caption := getDescr;

  Processed := getProcessedCount;
  ProgressBar.Progress := Processed;
  ProcessedDescr.Caption := 'Количество обработанных записей: ' + IntToStr(Processed) + ' из ' + IntToStr(ProgressBar.MaxValue);
end;

procedure Tfrm40_Progress.DoOnStart;
begin
  Cursor := crHourGlass;
  btnOk.Enabled := False;
  ProgressBar.Progress := 0;
  ProgressBar.MaxValue := getMaxProgressValue;
  FStartTime := Now;
  Timer.Enabled := True;
end;

procedure Tfrm40_Progress.DoOnTerminate(Sender: TObject);
begin
  Cursor :=  crDefault;
  Timer.Enabled := False;
  ProgressBar.Progress := ProgressBar.MaxValue;

  if FCloseOnDone then
  begin
    Close;
  end;
end;

procedure Tfrm40_Progress.FormCreate(Sender: TObject);
begin
  FCloseOnDone := true;
end;

end.
