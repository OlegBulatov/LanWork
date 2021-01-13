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

    FLogText: string;

    procedure ChangeLogFile;
    procedure WriteLn(AText: string);
    procedure AddLogMemoLine(AText: string);

    function  StrDecode(AString, AMask: string): string;
    function  StrEncode(AString, AMask: string): string;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    //
    procedure   Init(LogMemo: TMemo);
    procedure   LogLn(Sender: TObject; LogType: integer; LogText: string; ToFile: boolean);
    procedure   LogResult(ResultText: string; ToFile: boolean);

    property    LogLevel: integer read FlogLevel write FLogLevel;
    property    IniFile: TIniFile read FIniFile;
  end;

implementation

uses
  Forms, SysUtils, FileCtrl, BlpListener, BlpClient, BlpConsts, Controls, SetOptionsDlg,
  ListenerMainForm;

{ TBlpLog }

constructor TBlpLog.Create(AOwner: TComponent);
begin
  inherited;
  FLogText := '';
end;

destructor TBlpLog.Destroy;
begin
  CloseFile(FLogFile);
  FIniFile.Free;
  inherited;
end;

procedure TBlpLog.Init(LogMemo: TMemo);
var
  vFileName: string;
  vLogLevel: string;
  vDlg: TOptionsDlg;
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

  FormMain.dbPassword := StrDecode(FIniFile.ReadString('OnEnter', 'Data', ''), 'AMS');
  if FormMain.dbPassword = '' then
    begin
    vDlg := TOptionsDlg.Create(Self);
    // Init
    vDlg.LogMask := FLogLevel;
    vDlg.DbCheckTime := FormMain.DbCheckTime;
    vDlg.ed1.Text := '';

    if vDlg.ShowModal = mrOk then
      begin
      LogLevel := vDlg.LogMask;
      FIniFile.WriteString('Logging', 'Log level', IntToHex(LogLevel, 4));

      FormMain.dbPassword := vDlg.ed1.Text;
      if vDlg.ed1.Text <> '' then
        FIniFile.WriteString('OnEnter', 'Data', StrEncode(vDlg.ed1.Text, 'AMS'));

      if FormMain.DbCheckTime <> vDlg.DbCheckTime then
        begin
        FormMain.DbCheckTime := vDlg.DbCheckTime;
        FIniFile.WriteInteger('Parameters', 'DB Check Time', FormMain.DbCheckTime);
//        StartRequestMonitor(True);
        end;
      end;

    vDlg.Free;
    end;

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
  if FLogText <> LogText then
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

    FLogText := LogText;
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

function TBlpLog.StrDecode(AString, AMask: string): string;
var
  vMaskStr: string;
  i: integer;
begin
  Result := '';
  if AString <> '' then
    begin
    Result := StringOfChar(' ', Length(AString) div 2);
    vMaskStr := '';
    for i := 0 to ((Length(Result) div Length(AMask)) + 1)do
      vMaskStr := vMaskStr + AMask;
    for i := 0 to (Length(Result) - 1) do
      Result[i+1] := Char(StrToInt('$'+Copy(AString,i*2+1,2)) xor Byte(vMaskStr[i+1]));
    end;
end;

function TBlpLog.StrEncode(AString, AMask: string): string;
var
  vMaskStr: string;
  i: integer;
begin
  Result := '';
  if AString <> '' then
    begin
    vMaskStr := '';
    for i := 0 to (((Length(AString) div Length(AMask))) + 1) do
      vMaskStr := vMaskStr + AMask;
    for i := 1 to Length(AString) do
      Result := Result + IntToHex(Byte(AString[i]) xor Byte(vMaskStr[i]), 2);
    end;
end;

end.
