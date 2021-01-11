unit BlpLog;

interface

uses Classes, StdCtrls, IniFiles;

const
  LOG_DIR:         string = 'Logs';

type
  TBlpLog = class(TComponent)
  private
    FLogMemo: TMemo;

    FIniFile: TIniFile;

    FLogLevel: integer;
    FLogFileName: string;
    FLogFile: File of Char;

    procedure ChangeLogFile;
    procedure WriteLn(AText: string);
    procedure AddLogMemoLine(AText: string);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    //
    procedure   Init(LogMemo: TMemo);
    procedure   LogLn(Sender: TObject; LogType: integer; LogText: string; ToFile: boolean);
    procedure   LogResult(ResultText: string; ToFile: boolean);
    //
//    procedure   SetOptions;
  end;

implementation

uses Forms, SysUtils, FileCtrl, BlpListener, BlpClient, BlpConsts, Controls;

{ TBlpLog }

constructor TBlpLog.Create(AOwner: TComponent);
begin
  inherited;
end;

destructor TBlpLog.Destroy;
begin
  CloseFile(FLogFile);
  FIniFile.Free;
  inherited;
end;

procedure TBlpLog.Init(LogMemo: TMemo);
var
  vLogLevel: string;
  vFileName: string;
begin
  // INI - инициализация
  vFileName := ExtractFilePath(Application.ExeName) + 'BlpListener.cfg';
  FIniFile := TIniFile.Create(vFileName);

  vLogLevel := FIniFile.ReadString('Logging', 'Log level', 'FFFF');
  if vLogLevel = 'FFFF' then
    begin
    FLogLevel := LM_ALL;
    FIniFile.WriteString('Logging', 'Log level', IntToHex(FLogLevel, 4));
    end
  else
    FLogLevel := StrToInt('$' + vLogLevel);

  // Лог - инициализация
  FLogMemo := LogMemo;
  if Assigned(FLogMemo) then
    FLogMemo.Clear;
  vFileName := ExtractFilePath(Application.ExeName)+LOG_DIR;
  if not DirectoryExists(vFileName) then
    CreateDir(vFileName);
  vFileName := vFileName + '\' + FormatDateTime('"BlpListener_"yyyy-mm-dd".log"',Date);

  AssignFile(FLogFile, vFileName);
  FLogFileName := vFileName;

  if not FileExists(vFileName) then
    Rewrite(FLogFile)
  else
    begin
    Reset(FlogFile);
    Seek(FLogFile, FileSize(FLogFile));
    end;

  WriteLn('***');
end;

procedure TBlpLog.ChangeLogFile;
var
  vFileName: string;
begin
  vFileName := ExtractFilePath(Application.ExeName)+LOG_DIR;
  vFileName := vFileName + '\' + FormatDateTime('"BlpListener_"yyyy-mm-dd".log"',Now);

  if vFileName <> FLogFileName then
    begin
    CloseFile(FLogFile);

    AssignFile(FLogFile, vFileName);
    FLogFileName := vFileName;

    if not FileExists(vFileName) then
      Rewrite(FLogFile)
    else
      begin
      Reset(FlogFile);
      Seek(FLogFile, FileSize(FLogFile));
      end;
   end;
end;

procedure TBlpLog.WriteLn(AText: string);
var
  i: integer;
begin
  ChangeLogFile;
  AText := AText + #13#10;
  for i := 1 to Length(AText) do
    Write(FLogFile, AText[i]);
end;

procedure TBlpLog.AddLogMemoLine(AText: string);
begin
  if Assigned(FLogMemo) then
    begin
    while FLogMemo.Lines.Count >= 512 do
      FLogMemo.Lines.Delete(0);

    FLogMemo.Lines.Add(AText);
    end;
end;

procedure TBlpLog.LogLn(Sender: TObject; LogType: integer; LogText: string; ToFile: boolean);
var
  Buf: string;
begin
  if (LogType and FLogLevel) <> 0  then
    begin
    Buf := DateTimeToStr(Now) + ': ';
    if Sender is TBlpListener then
      Buf := Buf + 'S - '
    else if Sender is TBlpClient then
      Buf := Buf + 'C - ';
    Buf := Buf + LogText;
    AddLogMemoLine(Buf);
    if ToFile = True then
      WriteLn(Buf);
    end;
end;

procedure TBlpLog.LogResult(ResultText: string; ToFile: boolean);
var
  Buf: string;
begin
  if Assigned(FLogMemo) then
    begin
    Buf := FLogMemo.Lines[FLogMemo.Lines.Count-1];
    Buf := Copy(Buf, 1, Length(Buf) - 3);
    FLogMemo.Lines[FLogMemo.Lines.Count-1] := Buf + ' - ' + ResultText;
    end;

  if ToFile = True then
    begin
    Seek(FLogFile, FileSize(FLogFile) - 5);
    WriteLn(' - ' + ResultText);
    end;
end;

{
procedure TBlpLog.SetOptions;
var
  vDlg: TOptionsDlg;
begin
  vDlg := TOptionsDlg.Create(Self);
  // Logging
  vDlg.LogMask := FLogLevel;

  if vDlg.ShowModal = mrOk then
    begin
    FLogLevel := vDlg.LogMask;
    FIniFile.WriteString('Logging', 'Log level', IntToHex(FLogLevel, 4));
    end;

  vDlg.Free;

end;
}

end.
