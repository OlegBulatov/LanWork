unit fm040_LoaderFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm008_DBObjectFrame, Db, OracleData, ActnList, ComCtrls, StdCtrls,
  Oracle, ExtCtrls, A000_ParserDM, A000_File2DbDM, A000_FileDescUnt;

type
  TTimerEndType = (etNone, etMin, etMax);

  TLoaderThread = class;

  TfmLoader = class(TfmDBObject)
    ProgressBar: TProgressBar;
    lbProcessName: TLabel;
    lbStepName: TLabel;
    lbTime: TLabel;
    Timer1: TTimer;
    lbError: TLabel;
    procedure FrameResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FOnThreadFinished: TNotifyEvent;
    FThread: TLoaderThread;

    FBeforeProc: string;
    FLoadProc: string;
    FAfterProc: string;
    FCancelProc: string;
    FFileName: string;
    FParser: TA000_ParserClass;
    FFields: TFileFields;

    FStartTime: TDateTime;
    FCount: integer;
    FBarDirection: integer;

    FInProgress: boolean;
    FTerminated: boolean;
    FError: boolean;

    procedure StartTimer;
    procedure EndTimer(EndType: TTimerEndType);
    procedure RevertTimer;
    procedure KillProcess; virtual;

  public
    procedure InitFrame(Sender: TObject);  override;
    procedure StartProcess; virtual;
    procedure StopProcess; virtual;
    //
    property OnThreadFinished: TNotifyEvent read FOnThreadFinished write FOnThreadFinished;

    property BeforeProc: string read FBeforeProc write FBeforeProc;
    property LoadProc: string read FLoadProc write FLoadProc;
    property AfterProc: string read FAfterProc write FAfterProc;
    property CancelProc: string read FCancelProc write FCancelProc;
    property FileName: string read FFileName write FFileName;
    property ParserClass: TA000_ParserClass read FParser write FParser;
    property Fields: TFileFields read FFields write FFields;

    property InProgress: boolean read FInProgress;
    property Terminated: boolean read FTerminated;
    property Error: boolean read FError;
  end;

  TLoaderThread = class(TThread)
  private
    FOwner: TfmLoader;
    FSession: TOracleSession;
    FQuery: TOracleQuery;

    FQueryFinished: boolean;

    FErrorCode: integer;
    FErrorMessage: string;
    FError: boolean;
    FStepName: string;

    procedure ProgressToStart;
    procedure SetStepName;
    procedure ShowError;

    procedure DoProc(ProcName: string);
  protected
    procedure Execute; override;
    procedure DoTerminate; override;

    procedure DoBeforeProc; virtual;
    procedure DoLoadProc; virtual;
    procedure DoAfterProc; virtual;
    procedure DoCancelProc; virtual;
  public
    constructor Create(AOwner: TfmLoader);
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;

    procedure BreakExecution;

    property Owner: TfmLoader read FOwner write FOwner;
  end;

  TFileLoaderThread = class(TLoaderThread)
  private
    procedure PrepareLoadQuery;
    procedure SaveRow;
  protected
    procedure DoLoadProc; override;
  end;

var
  fmLoader: TfmLoader;

implementation

uses dm005_MainData, Matrix;

{$R *.DFM}

{ TfmLoader }

procedure TfmLoader.InitFrame(Sender: TObject);
begin
  FOnThreadFinished := nil;
  FBeforeProc := '';
  FLoadProc := '';
  FAfterProc := '';
  FCancelProc := '';
  FParser := nil;
  FFields := nil;
  FCount := 0;

  lbError.Caption := '';

  FInProgress := False;
  FTerminated := False;
  FError := False;

  // ��������������, ����� �� ��������� odsList
  FInitialized := True;
end;

procedure TfmLoader.FrameResize(Sender: TObject);
begin
  ProgressBar.Width := Width - ProgressBar.Left * 2;
end;

procedure TfmLoader.StartProcess;
begin
  // �o����� ����� (suspended)
  if FParser = nil then
  begin
    FThread := TLoaderThread.Create(Self)
  end else
  begin
    FThread := TFileLoaderThread.Create(Self);
  end;

  FThread.FreeOnTerminate := True;
  FThread.OnTerminate := FOnThreadFinished;

  // ��������� ������ � ����� �� ����������
  FInProgress := True;
  StartTimer;
  FThread.Resume;
end;

procedure TfmLoader.StopProcess;
begin
  if FInProgress then
    begin
    lbStepName.Caption := '������...';
    RevertTimer;
    KillProcess;
    end;
end;

procedure TfmLoader.StartTimer;
begin
  FStartTime := Now;
  FBarDirection := 0;
  Timer1Timer(Self);
  Timer1.Enabled := True;
end;

procedure TfmLoader.RevertTimer;
begin
  FBarDirection := 1;
end;

procedure TfmLoader.EndTimer(EndType: TTimerEndType);
begin
  Timer1.Enabled := False;
  case EndType of
    etMin: ProgressBar.Position := ProgressBar.Min;
    etMax: ProgressBar.Position := ProgressBar.Max;
  end;
end;

procedure TfmLoader.Timer1Timer(Sender: TObject);
begin
  lbTime.Caption := TimeToStr(Now - FStartTime);
  if FCount = 0 then
    begin
      if FBarDirection = 0 then
        begin
        if ProgressBar.Position >= ProgressBar.Max then
          ProgressBar.Position := ProgressBar.Min
        else
          ProgressBar.StepBy(5);
        end
      else
        begin
        if ProgressBar.Position <= ProgressBar.Min then
          ProgressBar.Position := ProgressBar.Max
        else
          ProgressBar.StepBy(-5);
        end;
    end;
end;

procedure TfmLoader.KillProcess;
begin
  // ������� ������ ���������
  FThread.Terminate;
  FThread.BreakExecution;
end;

//procedure TfmLoader.SetInProgress(const Value: boolean);
//begin
//  FInProgress := Value;
//end;

{ TLoaderThread }

constructor TLoaderThread.Create(AOwner: TfmLoader);
begin
  // Create suspended
  inherited Create(True);
  FOwner := AOwner;
end;

procedure TLoaderThread.AfterConstruction;
begin
  FError := False;
  FErrorCode := 0;
  FErrorMessage := '';

  // ������� ������
  FSession := TOracleSession.Create(nil);
  FSession.ThreadSafe := True;
  FSession.RollbackOnDisconnect := True; // !!!
  FSession.LogonDatabase := dmMain.OracleSession.LogonDatabase;
  FSession.LogonUsername := dmMain.OracleSession.LogonUsername;
  FSession.LogonPassword := dmMain.OracleSession.LogonPassword;

  // ������� Query
  FQuery := TOracleQuery.Create(nil);
//  FQuery.Threaded := True; // ������ Threaded, ����� Execute ����������� �����
//  FQuery.ThreadSynchronized := True; // Events are synchronized with main thread
  FQuery.Session := FSession;
end;

procedure TLoaderThread.BeforeDestruction;
begin
  // �������, ��� �������
  FQuery.Free;
  FSession.Free;
end;

// Main thread
procedure TLoaderThread.BreakExecution;
begin
  FSession.BreakExecution;
end;

// Synchro
procedure TLoaderThread.ProgressToStart;
begin
  FOwner.ProgressBar.Position := 0;
end;

// Synchro
procedure TLoaderThread.SetStepName;
begin
  FOwner.lbStepName.Caption := FStepName;
end;

// Synchro
procedure TLoaderThread.ShowError;
begin
  FOwner.lbError.Font.Color := clRed;
  FOwner.lbError.Caption := FErrorMessage;
end;

// In thread
procedure TLoaderThread.DoProc(ProcName: string);
const
  ProcCall: string = 'begin' + #13#10 +
                     ' %s;' + #13#10 +
                     'end;';
begin
  if ProcName = '' then Exit;
  Synchronize(SetStepName); // �������������...
  Synchronize(ProgressToStart); // ProgressBar � ������
  // �������������� FQuery
  FQuery.SQL.Clear;
  FQuery.DeleteVariables;
  FQuery.SQL.Text := Format(ProcCall, [ProcName]);
  FQueryFinished := False;
  FError := False;
  // ��������� � ���� ��������� ���������� ��� Exception
  FQuery.Execute;
end;

// In thread
procedure TLoaderThread.DoBeforeProc;
begin
  FStepName := '�������������...';
  DoProc(FOwner.BeforeProc);
end;

// In thread
procedure TLoaderThread.DoLoadProc;
begin
  FStepName := '��������...';
  DoProc(FOwner.LoadProc);
end;

// In thread
procedure TLoaderThread.DoAfterProc;
begin
  FStepName := '����������...';
  DoProc(FOwner.AfterProc);
end;

// In thread
procedure TLoaderThread.DoCancelProc;
begin
  FStepName := '�����...';
  DoProc(FOwner.CancelProc);
end;

// In thread
procedure TLoaderThread.Execute;
begin
  // ��������� ������
  FSession.Connected := False;  
  TMatrixAgent.CustomizeNewSession(FSession);
  try
    try
      // ����� ��������� ������ �� �����
      if not Terminated then
        DoBeforeProc;

      // �������� ������ �� �����
      if not Terminated then
        DoLoadProc;

      // ����� �������� ������ �� �����
      if not Terminated then
        DoAfterProc;

      if not Terminated then
        FSession.Commit;

//      if not Terminated then
//        Owner.FSuccess := True;
    except
      on E:Exception do
      begin
        if E is EOracleError then
          begin
           if EOracleError(E).ErrorCode = 1013 then
             begin
             E.Message := '�������� �������� �������������';
             Owner.FTerminated := True;
             end;
          end
        else
          FError := True;

        FErrorMessage := E.Message;
        Synchronize(ShowError);
        FSession.Rollback;
      end;
    end;
  finally
    if Terminated or FError then
      // Execute rollback procedure, if any
      DoCancelProc;

    if Terminated then
      Owner.FTerminated := True;
    if FError then
      Owner.FError := True;

    FSession.Connected := False;
  end;
end;

procedure TLoaderThread.DoTerminate;
begin
  // ��������� ����������� ���� ��������
  if Terminated then
    FOwner.EndTimer(etMin)
  else
    FOwner.EndTimer(etNone);

  Owner.FInProgress := False;

  // ����� ����� OnTerminate
  inherited;
end;

{ TFileLoaderThread }

// in thread
procedure TFileLoaderThread.DoLoadProc;
resourcestring
  SErrorLoad =
    '������ ��� �������� �����!' + #13#10 +
    '������ %s!' + #13#10 +
    ' ' + #13#10 +
    '%s';
var
  VParser: TA000_Parser;
  vRowNum: integer;
begin
  if (FOwner.ParserClass = nil) then Exit;

  FStepName := '�������� ������ �� �����...';
  Synchronize(SetStepName);
  VRowNum := 0;
  try
    VParser := FOwner.ParserClass.Create(nil);
    try
      try
        // ��������� ����
        VParser.OpenFile(FOwner.FileName, FOwner.Fields);
        FStepName := '���� ������ �������!';
        Synchronize(SetStepName);
        application.ProcessMessages;

        // ������ �� ������ ������
        VParser.First;
        PrepareLoadQuery;

        // ����� �� ���� �������
        while not VParser.Eof do
          begin
          // ���� �������� �������� �� ��������� ���������
          if Terminated then Exit;

          // ������ ������ �� �����
          VParser.GetRowData(FOwner.Fields);

          // ��������� � ��
          SaveRow;

          // ���� ������� ������� ��������� ����� ���������
          VRowNum := VParser.StrNum;
          FStepName := Format('�������� ������. ���������� ������������ �������: %d �� %d', [VParser.RowNum, VParser.RowCount]);
          //FStepName := IntToStr(VRowNum);
          Synchronize(SetStepName);

          // ��������� � ��������� ������
          VParser.Next;
          end;
      finally
        VParser.CloseFile;
        FStepName := '���� ������!';
        Synchronize(SetStepName);
      end;
    finally
      VParser.Free;
    end;
    FStepName := '�������� ������ ���������';
    Synchronize(SetStepName);
  except
    on E: Exception do
    begin
      E.Message := Format(SErrorLoad, [IntToStr(VRowNum), E.Message]);
      raise;
    end;
  end;
end;

procedure TFileLoaderThread.PrepareLoadQuery;
const
  SQL_TEXT =
    'BEGIN' +
    ' %s( %s ); ' +
    'END;';
var
  i: Integer;
  vSqlText: string;
begin
  // �������������� FQuery
  FQuery.SQL.Clear;
  FQuery.DeleteVariables;

  // ��������� SQL
  vSqlText := '';
  for i := 0  to FOwner.Fields.Count - 1 do
  begin
    if vSqlText <> '' then
      vSqlText := Concat(vSqlText, ' ,');
    vSqlText := Concat(vSqlText, ' :', FOwner.Fields[I].ParamName);
    // ������� ��������� ���������
    FQuery.DeclareVariable(FOwner.Fields[I].ParamName, otString);
  end;

  FQuery.SQL.Text := Format(SQL_TEXT, [FOwner.LoadProc, vSqlText]);
end;

// In thread
procedure TFileLoaderThread.SaveRow;
var
  i: Integer;
begin
  // ������������� ��������
  for i := 0  to FOwner.Fields.Count - 1 do
    FQuery.SetVariable(FOwner.Fields[I].ParamName, FOwner.Fields[I].FieldData);
  // ����������
  FQueryFinished := False;
  FError := False;
  FQuery.Execute;
end;

end.
