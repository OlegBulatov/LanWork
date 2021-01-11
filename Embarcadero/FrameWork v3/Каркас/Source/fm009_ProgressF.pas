unit fm009_ProgressF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm008_DBObjectFrame, ExtCtrls, Gauges, StdCtrls, 
  Db, OracleData, ActnList;

type
  TfmProgress = class(TfmDBObject)
    ProgressBar1: TGauge;
    Timer1: TTimer;
    Bevel1: TBevel;
    Label6: TLabel;
    lbTime: TLabel;
    lbProcessName: TLabel;
    lbResult: TLabel;
    lbProgressStep: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    FProcessTime: TDateTime;
    FInProgress: Boolean;
    function GetInProgress: Boolean;
  protected
    procedure StepIt; virtual;
  public
    procedure StartProcess; virtual;
    procedure EndProcess(Sender: TObject); virtual;
    //
    property InProgress: Boolean read GetInProgress;
  end;

var
  fmProgress: TfmProgress;

implementation

uses untMessages;

{$R *.DFM}

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
//  TactProgress(Actions).actStartThread.Execute;
end;

procedure TfmProgress.EndProcess(Sender: TObject);
begin
  FInProgress := False;
  // �������� ������
  Timer1.Enabled := False;

  // ����������� ������
  Timer1.OnTimer(nil);

  // ���������� ��������� ����������
  {
  VAction := TactProgress(Actions);
  if VAction.ErrorMessage <> '' then
  begin
    lbResult.Caption := '������: ' + VAction.ErrorMessage;
  end else
  begin
    lbResult.Caption := '������� ������� ��������!';
    ProgressBar1.Progress := 100;
  end;
  lbResult.Visible := True;

  // ���� ������� ������������
  Application.ProcessMessages;
  }
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

end.
