unit fm009_ProgressA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dm002_Actions, ActnList, Db, OracleData, Oracle;

type
  TEventThread = class;

  TactProgress = class(TActions)
    oqThread: TOracleQuery;
    osThread: TOracleSession;
    actStartThread: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure actStartThreadExecute(Sender: TObject);
  private
    FErrorMessage: string;
    FEventThread: TEventThread;
  protected
    procedure DoOnExecute(Sender: TObject); virtual;
    procedure DoOnTerminate(Sender: TObject); virtual;
  public
    property ErrorMessage: string read FErrorMessage write FErrorMessage;
  end;

  TEventThread = class(TThread)
  private
    FProgress: TactProgress;
  protected
    procedure Execute; override;
  public
    property Progress: TactProgress read FProgress write FProgress;
  end;

var
  actProgress: TactProgress;

implementation

uses dm005_MainData, untMessages, fm009_ProgressF;

{$R *.DFM}

{ TEventThread }

procedure TEventThread.Execute;
//var
//  VOldCursor: TCursor;
begin
  // ставим часики
  //VOldCursor:= Screen.Cursor;
  //Screen.Cursor:= crHourGlass;
  try
    // открываем новую ссесию и запускаем процесс
    FProgress.osThread.Connected := True;
    try
      try
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
  finally
    //Screen.Cursor:= VOldCursor;
  end;
end;

procedure TactProgress.DataModuleCreate(Sender: TObject);
begin
  // читаем настройки
  osThread.LogonDatabase := dmMain.OracleSession.LogonDatabase;
  osThread.LogonUsername := dmMain.OracleSession.LogonUsername;
  osThread.LogonPassword := dmMain.OracleSession.LogonPassword;
end;

procedure TactProgress.actStartThreadExecute(Sender: TObject);
begin
  ErrorMessage := '';
  FEventThread := TEventThread.Create(True);
  FEventThread.FreeOnTerminate := True;  // ???
  FEventThread.FProgress := Self;
  FEventThread.OnTerminate := DoOnTerminate;
  FEventThread.Resume;
end;

procedure TactProgress.DoOnExecute(Sender: TObject);
begin
  // запускаем выполнение PL/SQL процедуры
  oqThread.Execute;
end;

procedure TactProgress.DoOnTerminate(Sender: TObject);
var
  VList: TfmProgress;
begin
  VList := TfmProgress(Self.Owner);
  VList.EndProcess(nil);
end;

end.
