unit fm009_ProgressFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm008_DBObjectFrame, ExtCtrls, Gauges, StdCtrls,
  Db, OracleData, ActnList, Oracle, ComCtrls, System.Actions;

type
  TEventThread = class;

  TfmProgress = class(TfmDBObject)
    ProgressBar1: TGauge;
    Timer1: TTimer;
    Bevel1: TBevel;
    Label6: TLabel;
    lbTime: TLabel;
    lbProcessName: TLabel;
    lbResult: TLabel;
    lbProgressStep: TLabel;
    osThread: TOracleSession;
    oqThread: TOracleQuery;
    oqMaxCount: TOracleQuery;
    oqBeforeProcess: TOracleQuery;
    oqMatrixDo: TOracleQuery;
    procedure Timer1Timer(Sender: TObject);
    procedure FrameResize(Sender: TObject);
  private
    FMaxCount: integer;
    FProcessTime: TDateTime;
    FInProgress: Boolean;
    FErrorMessage: string;
    FEventThread: TEventThread;

    function GetInProgress: Boolean;
    procedure StartThread;
  protected
    procedure StepIt; virtual;

    procedure DoOnExecute(Sender: TObject); virtual;
    procedure DoOnTerminate(Sender: TObject); virtual;
  public
    procedure InitFrame(Sender: TObject);  override;

    procedure StartProcess; virtual;
    procedure EndProcess(Sender: TObject); virtual;
    //
    property MaxCount: integer read FMaxCount write FMaxCount;
    property InProgress: Boolean read GetInProgress;
    property ErrorMessage: string read FErrorMessage write FErrorMessage;
  end;

  TEventThread = class(TThread)
  private
    FProgress: TfmProgress;
  protected
    procedure Execute; override;
  public
    property Progress: TfmProgress read FProgress write FProgress;
  end;

var
  fmProgress: TfmProgress;

implementation

uses untMessages, dm005_MainData, Matrix;

{$R *.DFM}

procedure TfmProgress.InitFrame(Sender: TObject);
begin
  // ��������������, ����� �� ��������� odsList
  FInitialized := True;
end;

procedure TfmProgress.FrameResize(Sender: TObject);
begin
  Bevel1.Width := Width - Bevel1.Left * 2;
  ProgressBar1.Width := Bevel1.Width - 2;
end;

procedure TfmProgress.StartProcess;
begin
  // ��������� ������ - �������� �����
  ProgressBar1.Progress := 0;
  FProcessTime := Now;
  Timer1.Enabled := True;

  // ��������� ������� PL/SQl - ������ �����
  lbResult.Visible := False;
  lbResult.Caption := '';
  FInProgress := True;

  StartThread;
end;

procedure TfmProgress.EndProcess(Sender: TObject);
begin
  // �������� ������
  Timer1.Enabled := False;

  // ����������� ������
//  Timer1.OnTimer(nil);    // ???

  FInProgress := False;

  // ���������� ��������� ����������
  if ErrorMessage <> '' then
    begin
    lbResult.Font.Color := clRed;
    lbResult.Caption := '������: ' + ErrorMessage;
    end
  else
    begin
    lbResult.Font.Color := clWindowText;
    lbResult.Caption := '������� ������� ��������!';
    ProgressBar1.Progress := 100;
    end;
  lbResult.Visible := True;

  // ���� ������� ������������
  Application.ProcessMessages;
end;

procedure TfmProgress.StepIt;
begin
  // �� ����� ���������� ��� ���������� ��������
  // ����������� � �������� ������
  (*
  lbTime.Caption := '';
  Label1.Caption := '���������� ������������ �������: '  + IntToStr(ProgressBar1.MaxValue) + '/' + IntToStr(Calculated);
  ProgressBar1.MaxValue := total;
  ProgressBar1.Progress := curr;
  *)
  lbTime.Caption := TimeToStr(Now - FProcessTime);
end;

procedure TfmProgress.Timer1Timer(Sender: TObject);
begin
  // ��������� �����
  StepIt;
end;

function TfmProgress.GetInProgress: Boolean;
begin
  Result := FInProgress;
end;

procedure TfmProgress.StartThread;
begin
  ErrorMessage := '';
  FEventThread := TEventThread.Create(True);
  FEventThread.FreeOnTerminate := True;  // ???
  FEventThread.FProgress := Self;
  FEventThread.OnTerminate := DoOnTerminate;
  FEventThread.Resume;
end;

procedure TfmProgress.DoOnExecute(Sender: TObject);
begin
  // ��������� ���������� PL/SQL ���������
  oqThread.Execute;
end;

procedure TfmProgress.DoOnTerminate(Sender: TObject);
begin
  EndProcess(nil);
end;

{ TEventThread }

procedure TEventThread.Execute;
begin
  // ��������� ����� ������ � ��������� �������
  try
    try
      FProgress.osThread.LogonDatabase := dmMain.OracleSession.LogonDatabase;
      FProgress.osThread.LogonUsername := dmMain.OracleSession.LogonUsername;
      FProgress.osThread.LogonPassword := dmMain.OracleSession.LogonPassword;
      FProgress.osThread.Connected := True;

      if Matrix.MA <> nil then
        begin
          if Matrix.MA.SQLTT <> '' then
          begin
            FProgress.oqMatrixDo.Close;
            FProgress.oqMatrixDo.SQL.Text := 'begin execute immediate ''alter session set current_schema =' + dmMain.GetDefUserName + '''; end;';
            FProgress.oqMatrixDo.Execute;
            FProgress.oqMatrixDo.SQL.Text := Matrix.MA.SQLTT;
            FProgress.oqMatrixDo.Execute;
            FProgress.oqMatrixDo.Close;
          end;
        end;

      FProgress.DoOnExecute(nil);
      FProgress.osThread.Commit;
    except
      on E: Exception do
	begin
	FProgress.ErrorMessage := E.Message;
	FProgress.osThread.Rollback;
	end;
    end;
  finally
    FProgress.osThread.Connected := False;
  end;
end;

end.
