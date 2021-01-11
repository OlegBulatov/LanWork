unit A000_ProcInfoForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  A000_ProgessForm, StdCtrls, Gauges, Oracle, ExtCtrls;

{*******************************************************************************

  ������ ��� ������ � ������� Pk_405_Process_Info

  ������ �������� ��� �������

  ������ 1. dmMain.OracleSession
    �������� �������� ��������
      CreateProcess
    �������� ��������� �������� � ��������� ��� �� ����������
      StartProcess(const ACaption, AName, AComment: string; const ACurrCnt, ATotalCnt: Double);
      SetProcInfo(const ACaption, AName, AComment: string; const ACurrCnt, ATotalCnt: Double);
      SetCnt(const AComment: string; const ACurrCnt: Double);
      IncCnt(const AComment: string; const ACurrCnt: Double);
      IncCnt(const ACurrCnt: Double);
      IncCnt;
      EndPocess;
    PS ��� ���������� ����� �������� ��� �� Delphi ��� � �� PL/SQL!!!!

  ������ 2. osProgress
    � ������� ������ ������ ������ ���� ������������ ���������� ���������
    �������� � ��� ����������
      GetProcInfo

*******************************************************************************}

type
  TA000_ProcInfo = class(TA000_Progess)
    lbStep: TLabel;
    Timer1: TTimer;
    oqGetPorcInfo: TOracleQuery;
    osProgress: TOracleSession;
    oqStartProcess: TOracleQuery;
    lbPrcElapsed: TLabel;
    lbPrcRemain: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    oqCreateProcess: TOracleQuery;
    oqSetProcInfo: TOracleQuery;
    oqSetCnt: TOracleQuery;
    oqIncCommCnt: TOracleQuery;
    oqIncStepCnt: TOracleQuery;
    oqIncCnt: TOracleQuery;
    oqEndProcess: TOracleQuery;
    oqMatrixDo: TOracleQuery;
    procedure Timer1Timer(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure oqGetPorcInfoThreadFinished(Sender: TOracleQuery);
    procedure oqGetPorcInfoThreadError(Sender: TOracleQuery;
      ErrorCode: Integer; const ErrorMessage: String);
  private
    FIsBusy: Boolean;
    FProcessID: Double;
    FEndTime: TDateTime;
    //
    function GetTimeStr(const ASeconds: Double): string;
    procedure GetProcInfo(const AThreaded: Boolean);
    procedure DoOnProcFinished;
  public
    //
    procedure CreateProcess;
    //
    procedure StartProcess(const ACaption, AName, AComment: string; const ACurrCnt, ATotalCnt: Integer);
    procedure SetProcInfo(const ACaption, AName, AComment: string; const ACurrCnt, ATotalCnt: Integer);
    procedure SetCnt(const AComment: string; const ACurrCnt: Integer);
    procedure IncCommCnt(const AComment: string; const ACnt: Integer);
    procedure IncStepCnt(const ACnt: Integer);
    procedure IncCnt;
    //
    procedure EndProcess(const ACaption: string; const AClose: Boolean = False);
    //
    procedure HaltProcess;
  end;

var
  A000_ProcInfo: TA000_ProcInfo;

implementation

uses dm005_MainData, Db, untMessages, Matrix;

{$R *.DFM}

procedure TA000_ProcInfo.CreateProcess;
begin
  // �������� ID �������� � ������ dmMain.OracleSession
  oqCreateProcess.Execute;
  FProcessID := oqCreateProcess.GetVariable('RETVAL');
end;

procedure TA000_ProcInfo.StartProcess(const ACaption, AName, AComment: string; const ACurrCnt, ATotalCnt: Integer);
begin
  // ��������� ����� ������ � ������� ����� ��������
  // ������� ��������� ��������
  if not osProgress.Connected then
  begin
    TMatrixAgent.CustomizeNewSession(osProgress);
  end;

  // ������� ��� ������� �����
  //
  oqStartProcess.SetVariable('T303_CAPTION',   ACaption);
  oqStartProcess.SetVariable('T303_NAME',      AName);
  oqStartProcess.SetVariable('T303_COMMENT',   AComment);
  oqStartProcess.SetVariable('T303_CURR_CNT',  ACurrCnt);
  oqStartProcess.SetVariable('T303_TOTAL_CNT', ATotalCnt);
  oqStartProcess.Execute;

  // ���������� ���������
  oqMatrixDo.Close;
  if Matrix.MA <> nil then
    begin
      oqMatrixDo.SQL.Text := Matrix.MA.SQLTT;
      if trim(Matrix.MA.SQLTT) <> '' then oqMatrixDo.Execute;
      oqMatrixDo.Close;
    end;
  GetProcInfo(False);

  // ���������� ����� � �������� ������
  btnOk.Enabled := False;
  Self.Show;
  FIsBusy := False;
  Timer1.Enabled := True;

  //
  Application.ProcessMessages;
end;

procedure TA000_ProcInfo.Timer1Timer(Sender: TObject);
begin
  // ��������� ������ ���� Query �� �������
  // � ���� ��������� ����������
  if (oqGetPorcInfo.State = qsIdle) and (FIsBusy = False) then
  begin
    GetProcInfo(True);
  end;
end;

procedure TA000_ProcInfo.btnOkClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TA000_ProcInfo.oqGetPorcInfoThreadFinished(Sender: TOracleQuery);
begin
  // �� ������ ������� ������ ���� ��� ������
  // ���� �� � ��� ������ ���� True
  FIsBusy := True;

  // ����������
  Self.Caption           := oqGetPorcInfo.GetVariable('T303_CAPTION');
  lbStep.Caption         := oqGetPorcInfo.GetVariable('T303_NAME');
  Label1.Caption         := oqGetPorcInfo.GetVariable('T303_COMMENT');
  ProgressBar1.Progress  := oqGetPorcInfo.GetVariable('T303_CURR_CNT');
  ProgressBar1.MaxValue  := oqGetPorcInfo.GetVariable('T303_TOTAL_CNT');
  lbPrcElapsed.Caption   := GetTimeStr(oqGetPorcInfo.GetVariable('O_ELAPSED'));
  lbPrcRemain.Caption    := GetTimeStr(oqGetPorcInfo.GetVariable('O_REMANING'));
  FEndTime               := oqGetPorcInfo.GetVariable('T303_END_TIME');

  Application.ProcessMessages;

  // ��������� ������� ������� ��� ���
  if ProgressBar1.Progress = ProgressBar1.MaxValue then
  begin
    DoOnProcFinished;
  end;

  // ������� ����
  FIsBusy := False;
end;

procedure TA000_ProcInfo.oqGetPorcInfoThreadError(Sender: TOracleQuery;
  ErrorCode: Integer; const ErrorMessage: String);
begin
  // ������ � ��������� ����������
  HaltProcess;
  TAppMessages.ShowError(ErrorMessage);
end;

function TA000_ProcInfo.GetTimeStr(const ASeconds: Double): string;
begin
  Result := FormatDateTime('hh:mm:ss', ASeconds / 24 / 60 / 60);
  //Result := FloatToStr(ASeconds) + ' ���.'
end;

procedure TA000_ProcInfo.IncStepCnt(const ACnt: Integer);
begin
  // �������� ��������� ��������
  // ����������� % ���������� �� ACnt ������
  oqIncStepCnt.SetVariable('T303_CURR_CNT',  ACnt);
  oqIncCommCnt.Execute;
  //
  Application.ProcessMessages;
end;

procedure TA000_ProcInfo.IncCommCnt(const AComment: string;
  const ACnt: Integer);
begin
  // �������� ��������� ��������
  // ��������� ��� ������ ������
  // ����������� % ���������� �� ACnt ������
  oqIncCommCnt.SetVariable('T303_COMMENT',   AComment);
  oqIncCommCnt.SetVariable('T303_CURR_CNT',  ACnt);
  oqIncCommCnt.Execute;
  //
  Application.ProcessMessages;
end;

procedure TA000_ProcInfo.IncCnt;
begin
  // �������� ��������� ��������
  // ����������� % ���������� �� 1 �������
 oqIncCnt.Execute;
  //
  Application.ProcessMessages;
end;

procedure TA000_ProcInfo.SetCnt(const AComment: string;
  const ACurrCnt: Integer);
begin
  // �������� ��������� ��������
  // ��������� ��� ������ ������
  // ������ % ����������
  oqSetCnt.SetVariable('T303_COMMENT',   AComment);
  oqSetCnt.SetVariable('T303_CURR_CNT',  ACurrCnt);
  oqSetCnt.Execute;

  //
  Application.ProcessMessages;
end;

procedure TA000_ProcInfo.SetProcInfo(const ACaption, AName,
  AComment: string; const ACurrCnt, ATotalCnt: Integer);
begin
  // �������� ��������� ��������
  oqSetProcInfo.SetVariable('T303_CAPTION',   ACaption);
  oqSetProcInfo.SetVariable('T303_NAME',      AName);
  oqSetProcInfo.SetVariable('T303_COMMENT',   AComment);
  oqSetProcInfo.SetVariable('T303_CURR_CNT',  ACurrCnt);
  oqSetProcInfo.SetVariable('T303_TOTAL_CNT', ATotalCnt);
  oqSetProcInfo.Execute;
  //
  Application.ProcessMessages;
end;

procedure TA000_ProcInfo.EndProcess(const ACaption: string; const AClose: Boolean = False);
begin
  // ������� ��� ������� �������
  oqEndProcess.SetVariable('T303_CAPTION',   ACaption);
  oqEndProcess.Execute;

  // ���������� �������� ��������
  while ProgressBar1.Progress <> ProgressBar1.MaxValue do
    begin
    Sleep(500);
    Application.ProcessMessages;
    end;
  Sleep(1000);

  // ��������� ���� ���� ��������� ����
  if AClose then
    begin
    Self.Close;
    end;
end;


procedure TA000_ProcInfo.GetProcInfo(const AThreaded: Boolean);
begin
  // ������ ���� ��� ������� ������� ��������� ���-�� � ���������
  FIsBusy := True;

  // ����������� ���������
  oqGetPorcInfo.SetVariable('T303_ID', FProcessID);
  oqGetPorcInfo.Threaded := AThreaded;
  oqGetPorcInfo.Execute;

  // ���� �� � ������ �� ��� �� ���������� ���������
  if not oqGetPorcInfo.Threaded then
  begin
    oqGetPorcInfo.OnThreadFinished(nil);
  end;
end;

procedure TA000_ProcInfo.DoOnProcFinished;
begin
  // ������������� ������
  Timer1.Enabled := False;
  // ��������� ������
  if osProgress.Connected then
  begin
    osProgress.Connected := False;
  end;
  // ������ ������ �� ���������
  btnOk.Enabled := True;
end;

procedure TA000_ProcInfo.HaltProcess;
begin
  // ������ � ��������� ����������
  DoOnProcFinished;
  Self.Close;
end;

end.
