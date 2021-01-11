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
  // запускаем таймер - основной поток
  ProgressBar1.Progress := 0;
  FProcessTime := Now;
  Timer1.Enabled := True;

  // запускаем процесс PL/SQl - второй поток
  lbResult.Visible := False;
  lbResult.Caption := '';
  FInProgress := True;
//  TactProgress(Actions).actStartThread.Execute;
end;

procedure TfmProgress.EndProcess(Sender: TObject);
begin
  FInProgress := False;
  // торомзим таймер
  Timer1.Enabled := False;

  // контрольный запрос
  Timer1.OnTimer(nil);

  // показываем результат выполнения
  {
  VAction := TactProgress(Actions);
  if VAction.ErrorMessage <> '' then
  begin
    lbResult.Caption := 'Ошибка: ' + VAction.ErrorMessage;
  end else
  begin
    lbResult.Caption := 'Процесс успешно завершен!';
    ProgressBar1.Progress := 100;
  end;
  lbResult.Visible := True;

  // даем команду отрисоваться
  Application.ProcessMessages;
  }
end;

procedure TfmProgress.StepIt;
begin
  // на форме отображаем ход выполнения процесса
  // выполняется в основном потоке
  (*
  lbTime.Caption := '';
  Label1.Caption := 'Количество обработанных записей: '  + IntToStr(ProgressBar1.MaxValue) + '/' + IntToStr(Calculated);
  ProgressBar1.MaxValue := total;
  ProgressBar1.Progress := curr;
  *)
  lbTime.Caption := TimeToStr(Now - FProcessTime);
end;

procedure TfmProgress.Timer1Timer(Sender: TObject);
begin
  // обновляем форму
  StepIt;
end;

function TfmProgress.GetInProgress: Boolean;
begin
  Result := FInProgress;
end;

end.
