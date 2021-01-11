unit A000_ProcInfoForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  A000_ProgessForm, StdCtrls, Gauges, Oracle, ExtCtrls;

{*******************************************************************************

  Модуль для работы с пакетом Pk_405_Process_Info

  Всегда работают две ссессии

  Сессия 1. dmMain.OracleSession
    Вызываем создание процесса
      CreateProcess
    Начинаем выполнять действия и указываем ход их выполнения
      StartProcess(const ACaption, AName, AComment: string; const ACurrCnt, ATotalCnt: Double);
      SetProcInfo(const ACaption, AName, AComment: string; const ACurrCnt, ATotalCnt: Double);
      SetCnt(const AComment: string; const ACurrCnt: Double);
      IncCnt(const AComment: string; const ACurrCnt: Double);
      IncCnt(const ACurrCnt: Double);
      IncCnt;
      EndPocess;
    PS ход выполнения можем вызывать как из Delphi так и из PL/SQL!!!!

  Сессия 2. osProgress
    У второго потока всегда задача одна периодически опрашивать состояние
    процесса и его отображать
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
  // получаем ID процесса в сессии dmMain.OracleSession
  oqCreateProcess.Execute;
  FProcessID := oqCreateProcess.GetVariable('RETVAL');
end;

procedure TA000_ProcInfo.StartProcess(const ACaption, AName, AComment: string; const ACurrCnt, ATotalCnt: Integer);
begin
  // открываем новую сессию в которой будем получать
  // текущее состояние процесса
  if not osProgress.Connected then
  begin
    TMatrixAgent.CustomizeNewSession(osProgress);
  end;

  // говорим что процесс пошел
  //
  oqStartProcess.SetVariable('T303_CAPTION',   ACaption);
  oqStartProcess.SetVariable('T303_NAME',      AName);
  oqStartProcess.SetVariable('T303_COMMENT',   AComment);
  oqStartProcess.SetVariable('T303_CURR_CNT',  ACurrCnt);
  oqStartProcess.SetVariable('T303_TOTAL_CNT', ATotalCnt);
  oqStartProcess.Execute;

  // отображаем состояние
  oqMatrixDo.Close;
  if Matrix.MA <> nil then
    begin
      oqMatrixDo.SQL.Text := Matrix.MA.SQLTT;
      if trim(Matrix.MA.SQLTT) <> '' then oqMatrixDo.Execute;
      oqMatrixDo.Close;
    end;
  GetProcInfo(False);

  // показываем форму и стартуем таймер
  btnOk.Enabled := False;
  Self.Show;
  FIsBusy := False;
  Timer1.Enabled := True;

  //
  Application.ProcessMessages;
end;

procedure TA000_ProcInfo.Timer1Timer(Sender: TObject);
begin
  // запускаем вопрос если Query не активно
  // и если результат отрисовали
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
  // на всякий случаем ставим флаг что заняты
  // хотя он и так должен быть True
  FIsBusy := True;

  // отображаем
  Self.Caption           := oqGetPorcInfo.GetVariable('T303_CAPTION');
  lbStep.Caption         := oqGetPorcInfo.GetVariable('T303_NAME');
  Label1.Caption         := oqGetPorcInfo.GetVariable('T303_COMMENT');
  ProgressBar1.Progress  := oqGetPorcInfo.GetVariable('T303_CURR_CNT');
  ProgressBar1.MaxValue  := oqGetPorcInfo.GetVariable('T303_TOTAL_CNT');
  lbPrcElapsed.Caption   := GetTimeStr(oqGetPorcInfo.GetVariable('O_ELAPSED'));
  lbPrcRemain.Caption    := GetTimeStr(oqGetPorcInfo.GetVariable('O_REMANING'));
  FEndTime               := oqGetPorcInfo.GetVariable('T303_END_TIME');

  Application.ProcessMessages;

  // проверяем окончен процесс или нет
  if ProgressBar1.Progress = ProgressBar1.MaxValue then
  begin
    DoOnProcFinished;
  end;

  // снимаем флаг
  FIsBusy := False;
end;

procedure TA000_ProcInfo.oqGetPorcInfoThreadError(Sender: TOracleQuery;
  ErrorCode: Integer; const ErrorMessage: String);
begin
  // ошибка в получении информации
  HaltProcess;
  TAppMessages.ShowError(ErrorMessage);
end;

function TA000_ProcInfo.GetTimeStr(const ASeconds: Double): string;
begin
  Result := FormatDateTime('hh:mm:ss', ASeconds / 24 / 60 / 60);
  //Result := FloatToStr(ASeconds) + ' сек.'
end;

procedure TA000_ProcInfo.IncStepCnt(const ACnt: Integer);
begin
  // изменяем состояние процесса
  // увеличиваем % выполнения на ACnt единиц
  oqIncStepCnt.SetVariable('T303_CURR_CNT',  ACnt);
  oqIncCommCnt.Execute;
  //
  Application.ProcessMessages;
end;

procedure TA000_ProcInfo.IncCommCnt(const AComment: string;
  const ACnt: Integer);
begin
  // изменяем состояние процесса
  // указываем что сейчас делаем
  // увеличиваем % выполнения на ACnt единиц
  oqIncCommCnt.SetVariable('T303_COMMENT',   AComment);
  oqIncCommCnt.SetVariable('T303_CURR_CNT',  ACnt);
  oqIncCommCnt.Execute;
  //
  Application.ProcessMessages;
end;

procedure TA000_ProcInfo.IncCnt;
begin
  // изменяем состояние процесса
  // увеличиваем % выполнения на 1 единицу
 oqIncCnt.Execute;
  //
  Application.ProcessMessages;
end;

procedure TA000_ProcInfo.SetCnt(const AComment: string;
  const ACurrCnt: Integer);
begin
  // изменяем состояние процесса
  // указываем что сейчас делаем
  // ставим % выполнения
  oqSetCnt.SetVariable('T303_COMMENT',   AComment);
  oqSetCnt.SetVariable('T303_CURR_CNT',  ACurrCnt);
  oqSetCnt.Execute;

  //
  Application.ProcessMessages;
end;

procedure TA000_ProcInfo.SetProcInfo(const ACaption, AName,
  AComment: string; const ACurrCnt, ATotalCnt: Integer);
begin
  // изменяем состояние процесса
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
  // говорим что процесс окончен
  oqEndProcess.SetVariable('T303_CAPTION',   ACaption);
  oqEndProcess.Execute;

  // дожидаемся оночания процесса
  while ProgressBar1.Progress <> ProgressBar1.MaxValue do
    begin
    Sleep(500);
    Application.ProcessMessages;
    end;
  Sleep(1000);

  // закрываем окно если выставлен флаг
  if AClose then
    begin
    Self.Close;
    end;
end;


procedure TA000_ProcInfo.GetProcInfo(const AThreaded: Boolean);
begin
  // ставим флаг что запущен процесс получения инф-ии о состоянии
  FIsBusy := True;

  // запрашиваем состояние
  oqGetPorcInfo.SetVariable('T303_ID', FProcessID);
  oqGetPorcInfo.Threaded := AThreaded;
  oqGetPorcInfo.Execute;

  // если не в потоке то тут же отображаем результат
  if not oqGetPorcInfo.Threaded then
  begin
    oqGetPorcInfo.OnThreadFinished(nil);
  end;
end;

procedure TA000_ProcInfo.DoOnProcFinished;
begin
  // останавливаем таймер
  Timer1.Enabled := False;
  // закрываем ссесию
  if osProgress.Connected then
  begin
    osProgress.Connected := False;
  end;
  // делаем кнопку ОК доступной
  btnOk.Enabled := True;
end;

procedure TA000_ProcInfo.HaltProcess;
begin
  // ошибка в получении информации
  DoOnProcFinished;
  Self.Close;
end;

end.
