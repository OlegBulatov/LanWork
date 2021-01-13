unit ListenerMainForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, StdCtrls, ShellApi, BlpData, Bloomberg, BlpListener, ImgList,
  ActnList, BlpLog, ExtCtrls;

const
  PROG_NAME:       string = 'BlpListener';
  WM_ICONTRAY = WM_USER + 1032;
  SHOW_ON_START:   string = 'Y';

type
  TIconType  = (iServerOff, iServerOn, iServerRequest, iServerError);

  TFormMain = class(TForm)
    MainMenu: TMainMenu;
    miExit: TMenuItem;
    miSevice: TMenuItem;
    miReference: TMenuItem;
    miOptions: TMenuItem;
    LogMemo: TMemo;
    StatusBar: TStatusBar;
    TrayMenu: TPopupMenu;
    pmiQuit: TMenuItem;
    ImageList32: TImageList;
    ActionList1: TActionList;
    actStart: TAction;
    actQuit: TAction;
    actShow: TAction;
    pmiStart: TMenuItem;
    pmiShow: TMenuItem;
    QueueTimer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actStartExecute(Sender: TObject);
    procedure actQuitExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure miReferenceClick(Sender: TObject);
    procedure miOptionsClick(Sender: TObject);
    procedure QueueTimerTimer(Sender: TObject);
  private
    TrayIconData: TNotifyIconData;
    //
    IconServerOff: TIcon;
    IconServerOn: TIcon;
    IconServerRequest: TIcon;
    IconServerError: TIcon;
    //
    FLog: TBlpLog;
    //
    FBloomberg: TBloomberg;
    FListener: TBlpListener;
    //
    FDbCheckTime: integer;
    //
    FLastOracleErrorCode: integer;
    FLastBlpErrorCode: integer;
    //
    procedure WmIconTray(var Msg: TMessage); message WM_ICONTRAY;
    procedure WMSysCommand(var Msg: TWMSysCommand) ; message WM_SYSCOMMAND;
    //
    procedure SetIcon(AIcon: TIconType);
    //
    procedure ConnectBlp(IsRetry: boolean);
    function  ConnectDb(IsRetry: boolean): boolean;
    procedure StartRequestMonitor(IsRetry: boolean);
  public
    dbPassword: string;
    procedure Log(Sender: TObject; LogLevel: integer; Msg: string; ToFile: boolean);
    procedure LogResult(ResultText: string; ToFile: boolean);
    //
    function  BlpReady: boolean;
    function  DoRequest(var Buf: string): integer;
    procedure SendRequest(Request: TServerRequest; var Buf: string);

    property  DbCheckTime: integer read FDbCheckTime write FDbCheckTime;
  end;

var
  FormMain: TFormMain;

implementation

uses FileCtrl, BlpDm, BlpConsts, BlpApi, Oracle, BlpClient, SetOptionsDlg;

{$R *.DFM}

procedure TFormMain.FormCreate(Sender: TObject);
begin
  BlpDb.FOwner := Self;

  // Log
  FLog := TBlpLog.Create(Self);
  FLog.Init(LogMemo);

  CreateMutex(nil, True, PChar(PROG_NAME));
  if GetLastError = ERROR_ALREADY_EXISTS then
    begin
    Log(Self, LT_ALWAYS, 'Already running. Terminating...', True);
    Application.Terminate;
    Exit;
    end;

  Log(Self, LT_ALWAYS, 'Старт программы.', True);

  // Иконки
  IconServerOff := TIcon.Create;
  ImageList32.GetIcon(0, IconServerOff);
  IconServerOn := TIcon.Create;
  ImageList32.GetIcon(1, IconServerOn);
  IconServerRequest := TIcon.Create;
  ImageList32.GetIcon(2, IconServerRequest);
  IconServerError := TIcon.Create;
  ImageList32.GetIcon(3, IconServerError);

  Application.Icon := IconServerOff;

  // Tray
  with TrayIconData do
    begin
    cbSize := SizeOf(TrayIconData);
    Wnd := Handle;
    uID := 0;
    uFlags := NIF_MESSAGE + NIF_ICON + NIF_TIP;
    uCallbackMessage := WM_ICONTRAY;
    hIcon := IconServerOff.Handle; // Для начала - Server OFF
    StrPCopy(szTip, Application.Title);
    end;

  Shell_NotifyIcon(NIM_ADD, @TrayIconData);

  // Bloomberg
  try
    InitBlpApi;
  except
    on E: Exception do
      begin
      Log(Self, LT_ALWAYS, E.Message + '. Terminating...', True);
      if Pos('blpapi3_32.dll: Не найден указанный модуль', E.Message) = 0 then
        Application.Terminate;
      Exit;
      end;
  end;

  FBloomberg := TBloomberg.Create(Self);

  // Oracle - соединение в Start

  // Listener
  try
    FListener := TBlpListener.Create(Self);
    FListener.OnLog := Log;
  except
    on E: Exception do
      begin
      Log(Self, LT_ALWAYS, E.Message + '. Terminating...', True);
      Application.Terminate;
      Exit;
      end;
  end;

//  if dmMain.ParamList.Values['Show on start'] = 'Y' then
  if SHOW_ON_START = 'Y' then
    Self.Visible := True
  else
    begin
   // dmMain.ParamList.Values['Show on start'] := 'N';
    Self.Visible := False;
    end;

  Application.ProcessMessages;

  // Стартуем Bloomberg, Oracle и Listener с монитором запросов из базы;
  FDbCheckTime := FLog.IniFile.ReadInteger('Parameters', 'DB Check Time', 5);
  actStartExecute(Self);

  Application.ProcessMessages;

  if (FBloomberg.Connected = True) or (FListener.Active = True) then
    SetIcon(iServerOn);

end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  FLog.Free;
end;

procedure TFormMain.SetIcon(AIcon: TIconType);
begin
  case AIcon of
    iServerOff:     TrayIconData.hIcon := IconServerOff.Handle;
    iServerOn:      TrayIconData.hIcon := IconServerOn.Handle;
    iServerRequest: TrayIconData.hIcon := IconServerRequest.Handle;
    iServerError:   TrayIconData.hIcon := IconServerError.Handle;
  end;
  Shell_NotifyIcon(NIM_Modify, @TrayIconData);
  Application.ProcessMessages;
end;

procedure TFormMain.WmIconTray(var Msg: TMessage);
var
  CursorPos : TPoint;
begin
  case Msg.lParam of
    WM_LBUTTONDBLCLK:
      begin
      WindowState := wsNormal;
      SetForegroundWindow(handle);
      Show;
      end;
    WM_RBUTTONDOWN:
      begin
      GetCursorPos(CursorPos);
      SetForegroundWindow(Handle);
      TrayMenu.Popup(CursorPos.x, CursorPos.y);
      PostMessage(Handle, WM_NULL, 0, 0);
      end;
  else
    inherited;
  end;
end;

procedure TFormMain.WMSysCommand(var Msg: TWMSysCommand);
begin
  if Msg.CmdType = SC_MINIMIZE then
    begin
    Hide;
    end
//  else if Msg.CmdType = SC_CLOSE then
//    begin
//    Hide;
//    end
  else
    inherited;
end;

procedure TFormMain.Log(Sender: TObject; LogLevel: integer; Msg: string; ToFile: boolean);
begin
  FLog.LogLn(Sender, LogLevel, Msg, ToFile);
end;

procedure TFormMain.LogResult(ResultText: string; ToFile: boolean);
begin
  FLog.LogResult(ResultText, ToFile);
end;

function TFormMain.BlpReady: boolean;
begin
  if FBloomberg.Connected = False then
    ConnectBlp(True);
  Result := FBloomberg.Connected;
//  Result := True; // Для отладки !!!
end;

// Запрос для цепочек
// В случае ошибки - Exception
procedure TFormMain.SendRequest(Request: TServerRequest; var Buf: string);
begin
  FBloomberg.SendRequest(Request, Buf);
end;

function TFormMain.DoRequest(var Buf: string): integer;
var
  vRequest: TServerRequest;
begin
  Result := 0;
  vRequest := nil;
  try
    try
      if Buf = '' then
        raise Exception.Create('Invalid reqiest: no request data');

      vRequest := TServerRequest.Create;
      vRequest.Unpack(Buf);

      if (vRequest.RequestType <> REFERENCE) and (vRequest.RequestType <> HISTORICAL) and (vRequest.RequestType <> DATABASE) then
        raise Exception.CreateFmt('Invalid request type: "%s"', [vRequest.RequestType]);

      if (vRequest.RequestType = DATABASE) then
        begin
        if ConnectDb(True) = False then
          raise Exception.Create('Database connection error. ');

        BlpDb.GetDbRequestData(vRequest, 0);
        end;

      FBloomberg.SendRequest(vRequest, Buf);

      // Если запрос через DB (RequestNo <> 0) и выполнен успешно (Result = 0)
      if (vRequest.RequestNo <> 0) then
        begin
        BlpDb.SaveDbResultData(vRequest, Buf); // здесь может быть Exception:
        // - надо заполнить ResultCode и ResultInfo в Request
        // - и записать их в Buf
        end;

    except
      on E: EBlpApiError do
        begin
        Buf := E.Message;
//        Log(Self, 6, E.Message, True);
        Result := E.ErrorCode;
        end;
      on E: Exception do
        begin
        Buf := E.Message;
//        Log(Self, 6, E.Message, True);
        Result := -1; // А надо Error Code
        end;
    end;
  finally
    vRequest.Free;
  end;
end;

procedure TFormMain.ConnectBlp(IsRetry: boolean);
begin
  if not FBloomberg.Connected then
    begin
    if IsRetry = False then
      Log(Self, LT_ALWAYS, 'Установление связи с Bloomberg...', True)
    else
      Log(Self, LT_ALWAYS, 'Восстановление связи с Bloomberg...', True);

    try
      FBloomberg.InitSession;
      SetIcon(iServerOn);
      LogResult('Ок', True);
    except
      on E: Exception do
        begin
        if E is EBlpapiError then
          begin
          // пропускаем повторяющиеся ошибки
          if EBlpapiError(E).ErrorCode <> FLastBlpErrorCode then
            begin
            FLastBlpErrorCode := EBlpapiError(E).ErrorCode;
            LogResult(TrimRight(E.Message), True);
            end;
          end
        else
          LogResult(TrimRight(E.Message), True);
        end;
    end;
    end;
end;

function TFormMain.ConnectDb(IsRetry: boolean): boolean;
begin
  Result := False;
  if BlpDb.OracleSession.CheckConnection(False) = ccOk then
    Result := True
//  if BlpDb.OracleSession.CheckConnection(False) <> ccOk then
  else
    begin
    if IsRetry = False then
      Log(Self, LT_ALWAYS, 'Установление сессии Oracle...', True)
    else
      Log(Self, LT_ALWAYS, 'Восстановление сессии Oracle...', True);

    try
      BlpDb.OracleSession.LogOn;
      SetIcon(iServerOn);
      LogResult('Ок', True);
      Result := True;
    except
      on E: Exception do
        begin
        if E is EOracleError then
//ORA-03113: end-of-file on communication channel - как-то надо обработать...
          begin
          // пропускаем повторяющиеся ошибки
          if EOracleError(E).ErrorCode <> FLastOracleErrorCode then
            begin
            FLastOracleErrorCode := EOracleError(E).ErrorCode;
            // Если текст ошибки из нескольких строк - отсекаем строки детализации ошибки
            if Pos(#10, TrimRight(E.Message)) <> 0 then
              LogResult(Copy(TrimRight(E.Message), 0, Pos(#10, TrimRight(E.Message))), True)
            else
              LogResult(TrimRight(E.Message), True);
            end;
          end
        else
          LogResult(TrimRight(E.Message), True);
        end;
    end;
    end;
end;

procedure TFormMain.StartRequestMonitor(IsRetry: boolean);
begin
  if IsRetry = True then
    QueueTimer.Enabled := False;
  QueueTimer.Interval := FDbCheckTime * 1000;
  QueueTimer.Enabled := True;
end;

procedure TFormMain.actStartExecute(Sender: TObject);
begin
  // Стартуем Bloomberg
  ConnectBlp(False);
  // Стартуем Oracle
  ConnectDb(False);
  // Стартуем Listener
  FListener.Active := True;
  // Стартуем монитор запросов
  StartRequestMonitor(False);
end;

procedure TFormMain.actQuitExecute(Sender: TObject);
begin
  // Выход
  Shell_NotifyIcon(NIM_DELETE, @TrayIconData);
  Close;
end;

procedure TFormMain.actShowExecute(Sender: TObject);
begin
  WindowState := wsNormal;
  SetForegroundWindow(handle);
  Show;
end;

procedure TFormMain.miReferenceClick(Sender: TObject);
var
  vClient: TBlpClient;
  vResult: integer;
  vData: string;
begin
  vClient := TBlpClient.Create(Self);
  vClient.OnLog := Log;

  vClient.RequestType := REFERENCE;
  vClient.AddSecurity('USXXXXXXXXX', 'LUKOY US Equity');
  vClient.AddField('ID_ISIN');
//  vRequest.StartDate := '01.01.2016';
//  vRequest.EndDate := '15.01.2016';
  vClient.User := 'TestUser';


  vResult := vClient.SendRequest(vData);

Log(Self, $FFFF, 'Result = ' + IntToStr(vResult), True);

  vClient.Free;
end;

procedure TFormMain.miOptionsClick(Sender: TObject);
var
  vDlg: TOptionsDlg;
begin
  vDlg := TOptionsDlg.Create(Self);
  // Init
  vDlg.LogMask := FLog.LogLevel;
  vDlg.DbCheckTime := FDbCheckTime;

  if vDlg.ShowModal = mrOk then
    begin
    FLog.LogLevel := vDlg.LogMask;
    FLog.IniFile.WriteString('Logging', 'Log level', IntToHex(FLog.LogLevel, 4));
    if FDbCheckTime <> vDlg.DbCheckTime then
      begin
      FDbCheckTime := vDlg.DbCheckTime;
      FLog.IniFile.WriteInteger('Parameters', 'DB Check Time', FDbCheckTime);
      StartRequestMonitor(True);
      end;
    end;

  vDlg.Free;
end;

procedure TFormMain.QueueTimerTimer(Sender: TObject);
begin
  if ConnectDb(True) = True then
    begin
    try
      BlpDb.CheckRequests;
    except
      on E: Exception do
        begin
        Log(Self, LT_ALWAYS, TrimRight(E.Message), True);
        end;
    end;
    end;
end;

end.

