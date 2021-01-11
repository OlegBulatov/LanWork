unit BlpClient;

interface

uses Classes, ScktComp, BlpConsts, BlpData, Controls;

type
  PTFlag = ^boolean;

  TBlpClient = class
  private
    FClient: TClientSocket;
    FOnLog: TBlpNotifyEvent;

    FRequest: TClientRequest;

    FError: integer;
    FResponseData: string;

    // Flags
    FWaitExit: boolean;
    FDisconnect: boolean;
    FServiceReady: boolean;
    FResponseReceived: boolean;
    //
    procedure DoOnError (Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure DoOnConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure DoOnDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure DoOnRead(Sender: TObject; Socket: TCustomWinSocket);
    //
    procedure Log(LogLevel: integer; const Msg: string);
    //
    function  LocalAddr(Socket: TCustomWinSocket): string;
    function  RemoteAddr(Socket: TCustomWinSocket): string;
    //
    function  WaitFor(Flag: PTFlag; const TimeOut: integer): integer;
    function  SendAndWait(const Data: string; var Msg: string; Flag: PTFlag; const TimeOut: integer; Socket: TCustomWinSocket): integer;
    function  GetRequestType: string;
    procedure SetRequestType(const Value: string);
    function  GetRequestUser: string;
    procedure SetRequestUser(const Value: string);
    function  GetStartDate: TDate;
    procedure SetStartDate(const Value: TDate);
    function  GetEndDate: TDate;
    procedure SetEndDate(const Value: TDate);
    function  GetCurrency: string;
    procedure SetCurrency(const Value: string);
    function  GetRequestNo: integer;
    procedure SetRequestNo(const Value: integer);
    function  GetPeriodicity: string;
    procedure SetPeriodicity(const Value: string);
  public
    //
    constructor Create(AOwner: TComponent);
    destructor  Destroy; override;
    //
    function Connect: integer;
    function Disconnect: integer;
    //
    procedure ClearRequest;
    // Common request
    // Должен вернуть 0 и данные в Data или отрицательный код ошибки и описание ошибки в Data или L020_ID и пустой Data
    function SendRequest(var Data: string): integer;
    //
    procedure AddSecurity(ISIN, Security: string);
    procedure AddField(RequestField: string); overload;
    procedure AddField(RequestField: string; ResponseFields: array of string); overload;
    //
    function  Parse(const Data: string): TResponseData;
    //
    property OnLog: TBlpNotifyEvent read FOnLog write FOnLog;

    property RequestType: string read GetRequestType write SetRequestType;
    property RequestNo: integer read GetRequestNo write SetRequestNo;
    property StartDate: TDate read GetStartDate write SetStartDate;
    property EndDate: TDate read GetEndDate write SetEndDate;
    property Currency: string read GetCurrency write SetCurrency;
    property Periodicity: string read GetPeriodicity write SetPeriodicity;
    property User: string read GetRequestUser write SetRequestUser;
  end;


implementation

uses SysUtils, Windows, Forms;

{ TBlpClient }

constructor TBlpClient.Create(AOwner: TComponent);
begin
  inherited Create;

  FError := 0;

  FClient := TClientSocket.Create(AOwner);
//  FClient.ClientType := ctThreadBlocking;
  FClient.ClientType := ctNonBlocking;

  FClient.OnError := DoOnError;
  FClient.OnConnect := DoOnConnect;
  FClient.OnDisconnect := DoOnDisconnect;
  FClient.OnRead := DoOnRead;

  FClient.Host := BLP_HOST;
  FClient.Port := BLP_PORT;

  FRequest := TClientRequest.Create;
end;

destructor TBlpClient.Destroy;
begin
  FRequest.Free;
  FClient.Free;
  inherited;
end;

procedure TBlpClient.Log(LogLevel: integer; const Msg: string);
begin
//  if Assigned(FOnLog) then FOnLog(Self, LogLevel, Msg, False); // Лог клиента - только в Memo
  if Assigned(FOnLog) then FOnLog(Self, LogLevel, Msg, True); // Лог клиента - пока в файл тоже
end;

function TBlpClient.RemoteAddr(Socket: TCustomWinSocket): string;
begin
  Result := Socket.RemoteAddress + ':' + IntToStr(Socket.RemotePort);
end;

function TBlpClient.LocalAddr(Socket: TCustomWinSocket): string;
begin
  Result := '<' + Socket.LocalAddress + ':' + IntToStr(Socket.LocalPort) + '>';
end;

procedure TBlpClient.DoOnError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
var
  Msg: string;
begin
  Msg := 'Blp client ' + ErrorOn(ErrorEvent) + ' error ' + IntToStr(ErrorCode) + ': ' + SysErrorMessage(ErrorCode);
  Log(LT_ALWAYS, Msg);
  FError := ErrorCode;
  ErrorCode := 0;
end;

procedure TBlpClient.DoOnConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  Log(LT_CONNECT, 'Connected to ' + RemoteAddr(Socket));
end;

procedure TBlpClient.DoOnDisconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  FDisconnect := True;
  Log(LT_CONNECT, 'Disconnected from ' + RemoteAddr(Socket));
end;

procedure TBlpClient.DoOnRead(Sender: TObject; Socket: TCustomWinSocket);
var
  Buf: string;
begin
  FResponseData := '';
  Buf := Socket.ReceiveText;
  if Pos(ACK_REQUEST, Buf) <> 0 then
    Log(LT_NET_DATA, 'Received ''' + ACK_REQUEST + ''' from ' + RemoteAddr(Socket))
  else
    Log(LT_NET_DATA, 'Received ''' + Buf + ''' from ' + RemoteAddr(Socket));

  if (Buf = SERVER_READY) then
    begin
    Buf := LocalAddr(Socket) + ' ' + NEED_SERVICE;
    Socket.SendText(Buf);
    Log(LT_NET_DATA, 'Send ''' + Buf + ''' to ' + RemoteAddr(Socket));
    end

  else if (Buf = SERVICE_NOT_READY) then
    begin
    Log(LT_ALWAYS, 'Bloomberg not connected. Disconnecting from ' + RemoteAddr(Socket));
    FError := BLP_CONNECT_ERROR; // Здесь дать код и текст ошибки Bloommberg
    FClient.Close;
    end
  else if (Buf = SERVICE_READY) then
    begin
    FServiceReady := True;
    end

  else if Pos(NAK_REQUEST, Buf) = 1 then
    begin
    Log(LT_ALWAYS, 'Request error: ' + Buf);
    Log(LT_CONNECT, 'Disconnecting from ' + RemoteAddr(Socket));

    FResponseData := StringReplace(Buf, NAK_REQUEST+' ', '', [rfReplaceAll]);
    FResponseData := StringReplace(FResponseData, '<', '', [rfReplaceAll]);
    FResponseData := StringReplace(FResponseData, '>', '', [rfReplaceAll]);

    FError := INVALID_REQUEST; // Здесь дать код ошибки ответа
    FClient.Close;
    FResponseReceived := True;
    end
  else if Pos(ACK_REQUEST, Buf) = 1 then
    begin
    FResponseData := StringReplace(Buf, ACK_REQUEST+' ', '', [rfReplaceAll]);
    FResponseData := StringReplace(FResponseData, '<', '', [rfReplaceAll]);
    FResponseData := StringReplace(FResponseData, '>', '', [rfReplaceAll]);
    // Здесь дать код ошибки в из FResponseData (-1|Nо data found>) в FError
    if FResponseData[1] = '*' then
      begin
      if FResponseData[2] <> 'Y' then
        begin
//        FError := INVALID_RESPONSE; // Здесь дать код ошибки ответа
        FResponseData := Copy(FResponseData, 6, Length(FResponseData));
        Log(LT_ALWAYS, 'Response result: ' + FResponseData);
        end;
      end;
    FResponseReceived := True;
    end

end;

function TBlpClient.Connect: integer;
begin
  Result := 0;
  //  ClearFlags; // ??? здесь выйти из всех процедур ожидания

  Application.ProcessMessages; // Это чтобы отловить discinnect со стороны сервера
  if not FClient.Active then
    begin
    FServiceReady := False;
    FClient.Open;
    Log(LT_WAIT_EVENT, 'Waiting for service 5 sec...');
    Result := WaitFor(@FServiceReady, 5000);
    Log(LT_WAIT_EVENT, 'Waited for service: ' + IntToStr(Result));
   end;
end;

function TBlpClient.Disconnect: integer;
begin
  Result := 0;
  FClient.Close;
  if FClient.Active then
    begin
    FDisconnect := False;
    FClient.Close;
    Log(LT_WAIT_EVENT, 'Waiting for disconnect 5 sec...');
    Result := WaitFor(@FDisconnect, 5000);
    Log(LT_WAIT_EVENT, 'Waited for disconnect: ' + IntToStr(Result));
    end
  else
    Log(LT_WAIT_EVENT, 'Already disconnected');
end;

function TBlpClient.WaitFor(Flag: PTFlag; const TimeOut: integer): integer;
var
  i: integer;
begin
  Result := WAITING_TIMEOUT;
  for i := 1 to (TimeOut div 10) do
    begin
    Application.ProcessMessages;
    if (FError <> 0) or (FWaitExit = True) or (Flag^ = True) then
      begin
      Result := FError;
      FError := 0;
      break;
      end;

    sleep(10);
    end;
end;

function TBlpClient.SendAndWait(const Data: string; var Msg: string; Flag: PTFlag; const TimeOut: integer; Socket: TCustomWinSocket): integer;
var
  Buf: string;
begin
  Flag^ := False;
  Buf := LocalAddr(Socket) + ' ' + Data;
  Socket.SendText(Buf);
  if Pos(REQUEST, Data) <> 0 then
    Buf := 'Blp listener send ''' + REQUEST + ''' to ' + RemoteAddr(Socket)
  else
    Buf := 'Blp listener send ''' + Data + ''' to ' + RemoteAddr(Socket);
  Log(6, Buf);

  // ждем ответа
  Log(LT_WAIT_EVENT, 'Waiting for ' + Msg + ' ' + IntToStr(Timeout div 1000) + ' sec...');
  Result := WaitFor(Flag, TimeOut);
  Log(LT_WAIT_EVENT, 'Waited for ' + Msg + ': ' + IntToStr(Result));

  if Result = WAITING_TIMEOUT then
    Msg := 'Request response waiting timeout'
  else
    Msg := 'Request result ' + IntToStr(Result) + ': ' + FResponseData;
end;

function TBlpClient.SendRequest(var Data: string): integer;
var
  Buf: string;
  Msg: string;
begin
  Result := Connect;
  if Result <> 0 then
    begin
    if Result = WAITING_TIMEOUT then
      Data := 'Listener connect timeout'
    else
      if Result = 10051 then
        Data := 'Listener connect error ' + IntToStr(Result) + ' (Not responding)'
      else
        Data := 'Listener connect error ' + IntToStr(Result) + ' (' + SysErrorMessage(Result) + ')';
    Exit;
    end;

  // Посылаем дать запрос и ждем ответа 30 секунд
  Buf := REQUEST + ' <' + FRequest.Pack + '>';
  Msg := 'Response';
  Result := SendAndWait(Buf, Msg, @FResponseReceived, 30000, FClient.Socket);
  Disconnect;
  if Result <> 0 then
    begin
    Data := Msg;
    Exit;
    end;

  Data := FResponseData;
  Log(LT_RESPONSE_DATA, 'SDEBUG client: Response data: ' + Data); // Для  отладки
end;

function TBlpClient.GetRequestType: string;
begin
  Result := '';
  if Assigned(FRequest) then
    Result := FRequest.RequestType;
end;

procedure TBlpClient.SetRequestType(const Value: string);
begin
  if Assigned(FRequest) then
    FRequest.RequestType := Value;
end;

function TBlpClient.GetRequestUser: string;
begin
  Result := '';
  if Assigned(FRequest) then
    Result := FRequest.User;
end;

procedure TBlpClient.SetRequestUser(const Value: string);
begin
  if Assigned(FRequest) then
    FRequest.User := Value;
end;

procedure TBlpClient.AddSecurity(ISIN, Security: string);
begin
  FRequest.Securities.Add(ISIN + '=' + Security);
end;

procedure TBlpClient.AddField(RequestField: string);
begin
  FRequest.RequestFields.Add(RequestField);
  FRequest.ResponseFields.Add(RequestField + '=VOID');
end;

procedure TBlpClient.AddField(RequestField: string; ResponseFields: array of string);
var
  i: integer;
begin
  FRequest.RequestFields.Add(RequestField);
  for i := Low(ResponseFields) to High(ResponseFields) do
    FRequest.ResponseFields.Add(ResponseFields[i] + '=VOID');
end;

function TBlpClient.GetStartDate: TDate;
begin
  Result := FRequest.StartDate;
end;

procedure TBlpClient.SetStartDate(const Value: TDate);
begin
  FRequest.StartDate := Value;
end;

function TBlpClient.GetEndDate: TDate;
begin
  Result := FRequest.EndDate;
end;

procedure TBlpClient.SetEndDate(const Value: TDate);
begin
  FRequest.EndDate := Value;
end;

function TBlpClient.GetCurrency: string;
begin
  Result := FRequest.Currency;
end;

procedure TBlpClient.SetCurrency(const Value: string);
begin
  FRequest.Currency := Value;
end;

function TBlpClient.GetRequestNo: integer;
begin
  Result := FRequest.RequestNo;
end;

procedure TBlpClient.SetRequestNo(const Value: integer);
begin
  FRequest.RequestNo := Value;
end;

function TBlpClient.GetPeriodicity: string;
begin
  Result := FRequest.Periodicity;
end;

procedure TBlpClient.SetPeriodicity(const Value: string);
begin
  FRequest.Periodicity := Value;
end;

function TBlpClient.Parse(const Data: string): TResponseData;
var
  Parser: TBlpParser;
begin
  Parser := TBlpParser.Create;
  Result := Parser.Parse(FRequest, Data);
  Parser.Free;
end;

procedure TBlpClient.ClearRequest;
begin
  FRequest.Clear;
end;

end.
