unit untProgressThreads;

interface

uses
  Classes, Controls, Oracle, frm52_ProgressForm;
//  Windows, Messages, OracleData,

type
  TEventThreadClass = class of TEventThread;

  TEventThread = class(TThread)
  private
    FH008_ID: Double;
    FOperID: Double;
    FErrorMessage: string;
    FOracleSession: TOracleSession;
    oqExec: TOracleQuery;
    FProgressForm: Tfrm52_Progress;
    FOldCursor: TCursor;
    procedure InitForm;
		procedure StartWork;
    procedure FinishWork;
    procedure CloseForm;
  protected
    class function GetSelfClass(): TEventThreadClass; virtual;
    procedure SetLongOperation(); virtual;
    procedure RunLongOperation(); virtual;
    procedure Execute(); override;
  public
    class function Init(): TEventThread;
    procedure Run();
    property ErrorMessage: string read FErrorMessage write FErrorMessage;
    property H008_ID: Double read FH008_ID;
    property OperID: Double read FOperID;
  end;

  TRemainsCalcThread = class(TEventThread)
  private
    FT027_ID: Double;
    FT055_ID: Double;
  protected
    class function GetSelfClass(): TEventThreadClass; override;
    procedure SetLongOperation(); override;
    procedure RunLongOperation(); override;
  public
    property T027_ID: Double read FT027_ID write FT027_ID;
    property T055_ID: Double read FT055_ID write FT055_ID;
  end;

  TPortfelCalcThread = class(TEventThread)
  private
    FT027_ID: Double;
    FT055_ID: Double;
  protected
    class function GetSelfClass(): TEventThreadClass; override;
    procedure SetLongOperation(); override;
    procedure RunLongOperation(); override;
  public
    property T027_ID: Double read FT027_ID write FT027_ID;
    property T055_ID: Double read FT055_ID write FT055_ID;
  end;

implementation

uses SysUtils, Forms, untMessages, dm005_MainData;

{ TEventThread }

class function TEventThread.Init(): TEventThread;
var
  VThread: TEventThread;
  VForm: Tfrm52_Progress;
begin
  VThread := GetSelfClass.Create(True);
  VThread.ErrorMessage := '';
  VThread.FreeOnTerminate := False;
  VThread.SetLongOperation; // Устанавливаем VThread.OperID (H008_ID) в дочернем классе и по нему H010_ID

  VForm := Tfrm52_Progress(Tfrm52_Progress.Instance);
  VForm.InitForm(VThread.H008_ID, VThread.OperID);
  VThread.FProgressForm := VForm;

  Result := VThread;
end;

procedure TEventThread.Run();
begin
  // запускаем процесс
  ErrorMessage := '';
  FOldCursor := FProgressForm.Cursor;
  FProgressForm.Cursor := crHourGlass;
  FProgressForm.Panel1.Cursor := crHourGlass;

  try
    Resume;
    FProgressForm.ShowModal;
  finally
    FProgressForm.Panel1.Cursor := FOldCursor;
    FProgressForm.Cursor := FOldCursor;
  end;

  if ErrorMessage <> '' then
  begin
    TAppMessages.Error('Ошибка при выполнении операции: ' + ErrorMessage);
    Application.ProcessMessages;
  end;
end;

procedure TEventThread.Execute();
begin
  try
  	try
	    Synchronize(InitForm);

    	FOracleSession := TOracleSession.Create(nil);
	    FOracleSession.LogonDatabase := dmMain.OracleSession.LogonDatabase;
  	  FOracleSession.LogonUsername := dmMain.OracleSession.LogonUsername;
    	FOracleSession.LogonPassword := dmMain.OracleSession.LogonPassword;
	    FOracleSession.Connected:= true;

      Synchronize(StartWork);

      // запускаем длинную операцию
      RunLongOperation;

			FOracleSession.Commit;

      Synchronize(FinishWork);

    finally
    	FOracleSession.Connected := false;
    end;
  except
    on E: Exception do
    begin
      FErrorMessage := E.Message;
      try
        FOracleSession.Rollback;
      except end;
      Synchronize(CloseForm);
    end;
  end;
end;

procedure TEventThread.RunLongOperation();
begin
  // запускаем длинную операцию
  oqExec.SQL.Clear;
  oqExec.SQL.Add('BEGIN SELECT NULL FROM DUAL; END;');
 	oqExec.Execute;
end;

procedure TEventThread.InitForm();
begin
  FProgressForm.ProgressBar1.Progress := 0;
  FProgressForm.Label2.Caption := 'Установка соединения с БД';
  FProgressForm.Label1.Caption := '';
  FProgressForm.btnOk.Enabled := False;
end;

procedure TEventThread.StartWork();
begin
  // запускаем таймер
  FProgressForm.Timer1.Enabled := True;
end;

procedure TEventThread.FinishWork();
begin
  FProgressForm.Timer1.Enabled := False;
  FProgressForm.Label2.Caption := 'Операция завершена';
  FProgressForm.Label1.Caption := '';
  FProgressForm.btnOk.Enabled := True;
  FProgressForm.Panel1.Cursor := FOldCursor;
  FProgressForm.Cursor := FOldCursor;
  FProgressForm.ProgressBar1.Visible := False;
end;

procedure TEventThread.CloseForm();
begin
  FProgressForm.Close;
end;

procedure TEventThread.SetLongOperation();
var
  oqInit: TOracleQuery;
begin
  // инициализируем
  oqInit := TOracleQuery.Create(nil);
  try
    oqInit.Session := dmMain.OracleSession;
    oqInit.SQL.Clear;
    // делаем новый H010_ID
    oqInit.SQL.Add('BEGIN :o_result := Pk_405_Long_Ops_Utils.f_get_op_id(:H008_ID); END;');
    oqInit.DeclareVariable('O_RESULT', otFloat);
    oqInit.DeclareVariable('H008_ID', otFloat);

    oqInit.SetVariable('H008_ID', FH008_ID);
    oqInit.Execute;
    FOperID := oqInit.GetVariable('O_RESULT');
  finally
    oqInit.Free;
  end;
end;

class function TEventThread.GetSelfClass: TEventThreadClass;
begin
  Result := nil;
end;

{ TRemainsCalcThread }

class function TRemainsCalcThread.GetSelfClass: TEventThreadClass;
begin
  Result := TRemainsCalcThread;
end;

procedure TRemainsCalcThread.RunLongOperation();
begin
  // запускаем длинную операцию
  oqExec := TOracleQuery.Create(nil);
  oqExec.Session := FOracleSession;
  oqExec.SQL.Clear;
  oqExec.SQL.Add('BEGIN ');
  oqExec.SQL.Add('Pk_405_Long_Ops_Utils.p_set_op_id(:H008_ID, :H010_ID);'); // уст. глоб. H008_ID и H001_ID
  oqExec.SQL.Add('Pk_405_Calc_Remains.p_set_period_id(:T055_ID1);');
  oqExec.SQL.Add('Pk_405_Calc_Remains.p_do_calculation(:T027_ID, :T055_ID2);');
  oqExec.SQL.Add('END;');
  oqExec.ClearVariables;
  oqExec.DeclareVariable('H008_ID', otFloat);
  oqExec.DeclareVariable('H010_ID', otFloat);
  oqExec.DeclareVariable('T027_ID', otFloat);
  oqExec.DeclareVariable('T055_ID1', otFloat);
  oqExec.DeclareVariable('T055_ID2', otFloat);
  oqExec.SetVariable('H010_ID', FOperID);
  oqExec.SetVariable('T027_ID', FT027_ID);
  oqExec.SetVariable('T055_ID1', FT055_ID);
  oqExec.SetVariable('T055_ID2', FT055_ID);
 	oqExec.Execute;
end;

procedure TRemainsCalcThread.SetLongOperation();
begin
  FH008_ID := 1;
  inherited;
end;

{ TPortfelCalcThread }

class function TPortfelCalcThread.GetSelfClass: TEventThreadClass;
begin
  Result := TPortfelCalcThread;
end;

procedure TPortfelCalcThread.RunLongOperation();
begin
  // запускаем длинную операцию
  oqExec := TOracleQuery.Create(nil);
  oqExec.Session := FOracleSession;
  oqExec.SQL.Clear;
  oqExec.SQL.Add('BEGIN Pk_405_Long_Ops_Utils.p_set_op_id(:H008_ID, :H010_ID);');
  oqExec.SQL.Add('Pk_Portf_Data_FIFO.p_calc_portf(:T055_ID, :T027_ID); END;');
  oqExec.ClearVariables;
  oqExec.DeclareVariable('H008_ID', otFloat);
  oqExec.DeclareVariable('H010_ID', otFloat);
  oqExec.DeclareVariable('T027_ID', otFloat);
  oqExec.DeclareVariable('T055_ID', otFloat);
  oqExec.SetVariable('H010_ID', FOperID);
  oqExec.SetVariable('T027_ID', FT027_ID);
  oqExec.SetVariable('T055_ID', FT055_ID);
  oqExec.Execute;
end;

procedure TPortfelCalcThread.SetLongOperation();
begin
  FH008_ID := 2;
  inherited;
end;

end.
