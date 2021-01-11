unit A000_ProgessDBForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  A000_ProgessForm, StdCtrls, Gauges, Oracle, ExtCtrls;

type
  TA000_ProgessDB = class(TA000_Progess)
    lbStep: TLabel;
    Timer1: TTimer;
    oqGetState: TOracleQuery;
    osProgress: TOracleSession;
    oqStartProgress: TOracleQuery;
    lbPrcElapsed: TLabel;
    lbPrcRemain: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure oqGetStateThreadFinished(Sender: TOracleQuery);
    procedure FormCreate(Sender: TObject);
    procedure oqGetStateThreadError(Sender: TOracleQuery;
      ErrorCode: Integer; const ErrorMessage: String);
  private
    FIsBusy: Boolean;
    FProcessID: Double;
    FStartTime: TDateTime;
    //
    function GetTimeStr(const ASeconds: Double): string;
  public
    procedure StartProcess(const ACode: string);
    procedure EndProcess;
    //
    //
  end;

var
  A000_ProgessDB: TA000_ProgessDB;

implementation

uses dm005_MainData, Db, untMessages, Matrix;

{$R *.DFM}

procedure TA000_ProgessDB.EndProcess;
begin
  osProgress.Connected := False;
  Timer1.Enabled := False;
  btnOk.Enabled := True;  
end;

procedure TA000_ProgessDB.StartProcess(const ACode: string);
begin
  FStartTime := Now;

  // ��������� ����� ������ � ������� ����� ��������
  // ������� ��������� ��������
  if not osProgress.Connected then
  begin
    TMatrixAgent.CustomizeNewSession(osProgress);
  end;

  // �������� ID �������� � ������ dmMain.OracleSession
  oqStartProgress.SetVariable('I_CODE', ACode);
  oqStartProgress.Execute;
  FProcessID := oqStartProgress.GetVariable('RETVAL');

  // �������� ���������
  Self.Caption := '';
  ProgressBar1.Progress := 0;
  lbPrcRemain.Caption := '00:00:00';
  lbPrcElapsed.Caption := '00:00:00';
  lbStep.Caption := '';
  Label1.Caption := '';
  btnOk.Enabled := False;
  Self.Show;
  FIsBusy := False;
  Timer1.Enabled := True;
end;

procedure TA000_ProgessDB.Timer1Timer(Sender: TObject);
begin
  // ��������� ������ ���� Query �� �������
  // � ���� ��������� ����������
  if (oqGetState.State <> qsIdle) or (FIsBusy = True) then
  begin
    Exit;
  end;

  FIsBusy := True;

  oqGetState.SetVariable('I_CONTEXT', FProcessID);
  try
    oqGetState.Execute;
  except
    TAppMessages.ShowError('������ ���� �� ������');
  end;
end;

procedure TA000_ProgessDB.btnOkClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TA000_ProgessDB.oqGetStateThreadFinished(Sender: TOracleQuery);
begin
  // �� ������ ������� ������ ���� ��� ������
  FIsBusy := True;
  //
  Self.Caption           := oqGetState.GetVariable('O_PROC_CAPTION');
  //
  lbStep.Caption         := oqGetState.GetVariable('O_STEP_CAPTION');
  Label1.Caption         := oqGetState.GetVariable('O_STEP_DESC');
  //
  ProgressBar1.MaxValue  := oqGetState.GetVariable('O_PROC_TOTAL');
  ProgressBar1.Progress  := oqGetState.GetVariable('O_PROC_CNT');
  //
  lbPrcElapsed.Caption   := GetTimeStr(oqGetState.GetVariable('O_PROC_ELAPSED'));
  lbPrcRemain.Caption    := GetTimeStr(oqGetState.GetVariable('O_PROC_REMANING'));
  //
  //Application.ProcessMessages;
  //
  if ProgressBar1.Progress = 100 then
  begin
    Timer1.Enabled := False;
    EndProcess;
  end;
  // ������� ����
  FIsBusy := False;
end;

procedure TA000_ProgessDB.FormCreate(Sender: TObject);
begin
  osProgress.LogonDatabase := dmMain.OracleSession.LogonDatabase;
  osProgress.LogonUsername := dmMain.OracleSession.LogonUsername;
  osProgress.LogonPassword := dmMain.OracleSession.LogonPassword;
end;

procedure TA000_ProgessDB.oqGetStateThreadError(Sender: TOracleQuery;
  ErrorCode: Integer; const ErrorMessage: String);
begin
  Self.EndProcess;
  Self.Close;
  TAppMessages.ShowError(ErrorMessage);
end;

function TA000_ProgessDB.GetTimeStr(const ASeconds: Double): string;
begin
  Result := FormatDateTime('hh:mm:ss', ASeconds / 24 / 60 / 60);
  //Result := FloatToStr(ASeconds) + ' ���.'
end;

end.
