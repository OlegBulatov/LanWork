unit frm89_WaitForm;

interface

uses
  Forms, ExtCtrls, Controls, StdCtrls, Gauges, Classes, ComCtrls, untTask;
//  Dialogs,

type
  TProgressThread = class(TThread)
  private
    FErrorMessage: string;
    FOnExecute: TNotifyEvent;
    //FSleepTime: Cardinal;
  protected
    procedure Execute; override;
  private
    //property SleepTime: Cardinal read FSleepTime write FSleepTime;
    property OnExecute: TNotifyEvent read FOnExecute write FOnExecute;
    property ErrorMessage: string read FErrorMessage write FErrorMessage;
  end;

  Tfrm89_Wait = class(TForm)
    ProgressBar1: TGauge;
    Bevel1: TBevel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Timer1: TTimer;
    btnOk: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    //
  private
    FTask: TTask;
    //FStep: Double;
    FStartTime: Cardinal;
    FTaskDelay: Cardinal;
    FCloseOnDone: Boolean;
  protected
    procedure StepIt;
    procedure DoOnTerminate(Sender: TObject);
  public
    class procedure ExecProc(const ATask: TTask; const AOnExecute: TNotifyEvent;
      const ACloseOnDone: Boolean; var ATaskDelay: Integer);
  end;

  TStatusProgressBar = class(TComponent)
  private
    FStatusPanel: TStatusPanel;
    FProgressBar: TGauge;
    //function GetStatusPanel: TStatusPanel;
  public
    constructor Create(AOwner: TStatusBar; const AIndex: Integer); reintroduce;
    //property StatusPanel: TStatusPanel read GetStatusPanel;
  end;

var
  frm89_Wait: Tfrm89_Wait;

implementation

uses Windows, Messages, SysUtils, Graphics, untPrmRestorer, untMessages,
  unt205_Params, CommCtrl;

const
  BORDER = 2;

resourcestring
  STaskTime = 'Осталось %d сек.';

  (*
  TTASK_PRM_COUNT = 1;
  TTASK_PRM_HIGH_INDEX = TTASK_PRM_COUNT - 1;
  TTASK_PRM_NAME: array[0..TTASK_PRM_HIGH_INDEX] of string =
    ('Delay');
  TTASK_PRM_TYPE: array[0..TTASK_PRM_HIGH_INDEX] of TDataType =
    (dtBoolean);
  TTASK_PRM_SECTION = 'TTaskDelay';
  *)

type
  TTasksPropertyRestorer = class(TComponentPropertyRestorer)
  private
    function GetForm: Tfrm89_Wait;
    function GetAttrName: string;
  protected
    function GetTypeName: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure LoadParams; override;
    procedure SaveParams; override;
    property Form: Tfrm89_Wait read GetForm;
  end;

{$R *.DFM}

class procedure Tfrm89_Wait.ExecProc(const ATask: TTask;
  const AOnExecute: TNotifyEvent; const ACloseOnDone: Boolean;
  var ATaskDelay: Integer);
var
  VProgressThread: TProgressThread;
begin
  if not Assigned(frm89_Wait) then
  begin
    frm89_Wait := Tfrm89_Wait.Create(Application);
  end;
  frm89_Wait.FCloseOnDone := ACloseOnDone;
  frm89_Wait.FTask := ATask;
  frm89_Wait.Caption := TASK_NAME[frm89_Wait.FTask];
  frm89_Wait.btnOk.Enabled := False;
  frm89_Wait.btnOk.Visible := False;
  frm89_Wait.Cursor := crHourGlass;
  frm89_Wait.Label2.Enabled := True;
  frm89_Wait.Label4.Enabled := True;
  frm89_Wait.Label5.Enabled := True;
  frm89_Wait.Label6.Enabled := True;

  // запоминаем текущее время
  frm89_Wait.FStartTime := GetTickCount;

  // запускаем таймер
  frm89_Wait.FTaskDelay := ATaskDelay;
  frm89_Wait.Timer1.Enabled := True;


  // запускаем процесс
  VProgressThread := TProgressThread.Create(True);
  try
    VProgressThread.ErrorMessage := '';
    VProgressThread.FreeOnTerminate := False;
    VProgressThread.OnExecute := AOnExecute;
    VProgressThread.OnTerminate := frm89_Wait.DoOnTerminate;
    VProgressThread.Resume;
    frm89_Wait.ShowModal;
    if VProgressThread.ErrorMessage <> '' then
    begin
      TAppMessages.ErrorFmt(ERROR_MS[frm89_Wait.FTask], [VProgressThread.ErrorMessage]);
    end;
  finally
    VProgressThread.Free;
  end;
  frm89_Wait.Timer1.Enabled := False;
  ATaskDelay := frm89_Wait.FTaskDelay;
end;

procedure Tfrm89_Wait.StepIt;
var
  VTic, VOst: Cardinal;
begin
  VTic := GetTickCount - FStartTime;
  VOst := FTaskDelay - VTic;

  ProgressBar1.Progress := Trunc(VTic / FTaskDelay * 100);

  (*
  if VOst < 0 then
  begin
    // превышено ожидаемое время выполнения - добавляем 5 сек
    FTaskDelay := FTaskDelay + 5 * 1000 * 100000;
    VOst := FTaskDelay - VTic;
  end;
  *)

  (*
  Label1.Caption := to_string(VOst);
  Label3.Caption :=
  *)

  // осталось секунд
  Label4.Caption := FormatDateTime('hh:mm:ss', VOst div 1000 / 100000);

  // прошло времени
  Label5.Caption := FormatDateTime('hh:mm:ss', VTic div 1000 / 100000);


  // осталось секунд
  //Label4.Caption := FormatDateTime('hh:mm:ss', VOst div 1000 / 100000);

  // прошло времени
  //Label5.Caption := FormatDateTime('hh:mm:ss', VTic div 1000 / 100000);

  Self.Update;
end;


{ TProgressThread }

procedure TProgressThread.Execute;
begin
  try
    if Assigned(FOnExecute) then
    begin
      FOnExecute(nil);
    end;
  except
    on E: Exception do FErrorMessage := E.Message;
  end;
  (*
  while True do
  begin
    if Terminated then Break;
    //Synchronize(StepIt);
    //StepIt;
    //Sleep(FSleepTime);
  end;
  *)
end;

procedure Tfrm89_Wait.FormDestroy(Sender: TObject);
begin
end;

{ TTasksPropertyRestorer }

constructor TTasksPropertyRestorer.Create(AOwner: TComponent);
var
  NewParam: TRepParam;
begin
  inherited;
  NewParam := Params.Add(dtInteger);
  NewParam.Name := GetAttrName;
end;

function TTasksPropertyRestorer.GetAttrName: string;
begin
  Result := Format('Task_%d', [Integer(Form.FTask)]);
end;

function TTasksPropertyRestorer.GetForm: Tfrm89_Wait;
begin
  Result := FComponent as Tfrm89_Wait;
end;

function TTasksPropertyRestorer.GetTypeName: string;
begin
  Result := 'TasksDelay';
end;

procedure TTasksPropertyRestorer.LoadParams;
begin
  inherited;
  Form.FTaskDelay := ParamByName[GetAttrName].AsInteger;
end;

procedure TTasksPropertyRestorer.SaveParams;
begin
  ParamByName[GetAttrName].AsInteger := Form.FTaskDelay;
  inherited;
end;

{ TStatusProgressBar }

constructor TStatusProgressBar.Create(AOwner: TStatusBar; const AIndex: Integer);
var
  VPanelRect: TRect;
begin
  inherited Create(AOwner);
  FProgressBar := TGauge.Create(AOwner);
  FProgressBar.Parent := AOwner;
  FProgressBar.Color := AOwner.Color;
  FProgressBar.BackColor := AOwner.Color;
  FProgressBar.ForeColor := clBlue;
  FProgressBar.BorderStyle := bsNone;
  FProgressBar.ShowText := False;
  FStatusPanel  := AOwner.Panels[AIndex];
  // получаем положение панельки на которой будем показывать FProgressBar
  SendMessage(AOwner.Handle, SB_GETRECT, AIndex, Integer(@VPanelRect));
  // устанавливаем положение FProgressBar
  VPanelRect.Left := VPanelRect.Left + BORDER;
  VPanelRect.Top := VPanelRect.Top + BORDER;
  VPanelRect.Right := VPanelRect.Right - BORDER - 1;
  VPanelRect.Bottom := VPanelRect.Bottom - BORDER - 1;
  FProgressBar.BoundsRect := VPanelRect;
  FProgressBar.Progress := 0;
end;

(*
function TStatusProgressBar.GetStatusPanel: TStatusPanel;
begin
//  Result := Owner as TStatusPanel;
end;
*)

procedure Tfrm89_Wait.Timer1Timer(Sender: TObject);
begin
  // обновляем форму
  StepIt;
end;

procedure Tfrm89_Wait.DoOnTerminate(Sender: TObject);
begin
  // сохраняем сколько времени занимала процедура и закрываем форму
  // запускаем таймер
  frm89_Wait.Cursor :=  crDefault;
  Timer1.Enabled := False;
  frm89_Wait.Label2.Enabled := False;
  frm89_Wait.Label4.Enabled := False;
  frm89_Wait.Label5.Enabled := False;
  frm89_Wait.Label6.Enabled := False;
  FTaskDelay := GetTickCount - FStartTime;
  ProgressBar1.Progress := frm89_Wait.ProgressBar1.MaxValue;
  frm89_Wait.Caption := ALL_DONE[frm89_Wait.FTask];
  btnOk.Enabled := True;
  btnOk.Visible := True;
  //sleep(1000);
  if frm89_Wait.FCloseOnDone then
  begin
    frm89_Wait.Close;
  end;
end;

end.
