unit BlpListener;

interface

uses Classes, ScktComp, BlpData, BlpConsts;

type
  TBlpListener = class
  private
    FOwner:  TComponent;
    FServer: TServerSocket;
    FOnLog:  TBlpNotifyEvent;
    //
//    FRequests: TStringList;
    //
    procedure DoOnClientError (Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure DoOnListen(Sender: TObject; Socket: TCustomWinSocket);
    procedure DoOnClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure DoOnClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure DoOnClientRead(Sender: TObject; Socket: TCustomWinSocket);
    //
    function  GetActive: boolean;
    procedure SetActive(const Value: boolean);
    procedure Log(LogLevel: integer; Msg: string);
    //
    function  RemoteAddr(Socket: TCustomWinSocket): string;
    function  HandshakeType(Data: string): string;
    //
    procedure Send(Data: string; Socket: TCustomWinSocket);
  protected
  public
    //
    constructor Create(AOwner: TComponent);
    destructor  Destroy; override;
    //
    function GetDataTag(Data: string): string;
    //
    property Active: boolean read GetActive write SetActive;
    property OnLog: TBlpNotifyEvent read FOnLog write FOnLog;
  end;

implementation

uses SysUtils, Dialogs, ListenerMainForm;

{ TBlpListener }

constructor TBlpListener.Create(AOwner: TComponent);
begin
  inherited Create;

  FOwner := AOwner;

//  FRequests := TStringList.Create;

  FServer := TServerSocket.Create(AOwner);
//  Fserver.ServerType := stThreadBlocking;
  Fserver.ServerType := stNonBlocking;

  FServer.OnClientError := DoOnClientError;
  FServer.OnListen := DoOnListen;
  FServer.OnClientConnect := DoOnClientConnect;
  FServer.OnClientDisconnect := DoOnClientDisconnect;

  FServer.OnClientRead := DoOnClientRead;

  FServer.Port := BLP_PORT;
end;

destructor TBlpListener.Destroy;
begin
  FServer.Free;
//  FRequests.Free;
  inherited;
end;

function TBlpListener.GetActive: boolean;
begin
  Result := FServer.Active;
end;

procedure TBlpListener.SetActive(const Value: boolean);
begin
  try
    FServer.Active := Value;
  except
    on E: Exception do
      if E is ESocketError then
        begin
        Log(0, E.Message);
        end;
  end;    
end;

procedure TBlpListener.Log(LogLevel: integer; Msg: string);
begin
  if Assigned(FOnLog) then FOnLog(Self, LogLevel, Msg, True); // Лог BLP - всегда в файл
end;

function TBlpListener.RemoteAddr(Socket: TCustomWinSocket): string;
begin
  Result := Socket.RemoteAddress + ':' + IntToStr(Socket.RemotePort);
end;

procedure TBlpListener.Send(Data: string; Socket: TCustomWinSocket);
var
  Msg: string;
begin
  Socket.SendText(Data);
  if Pos(ACK_REQUEST, Data) <> 0 then
    Msg := 'Blp listener send ''' + ACK_REQUEST + ''' to ' + RemoteAddr(Socket)
  else
    Msg := 'Blp listener send ''' + Data + ''' to ' + RemoteAddr(Socket);
  Log(LT_NET_DATA, Msg);
end;

procedure TBlpListener.DoOnClientError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
var
  Msg: string;
begin
  Msg := 'Blp listener ' + ErrorOn(ErrorEvent) + ' error ' + IntToStr(ErrorCode) + ': ' + SysErrorMessage(ErrorCode);
  Log(LT_ALWAYS, Msg);
  ErrorCode := 0;
end;

procedure TBlpListener.DoOnListen(Sender: TObject; Socket: TCustomWinSocket);
begin
  Log(LT_LISTEN, 'Listening on port ' + IntToStr(Socket.LocalPort) + '...');
end;

procedure TBlpListener.DoOnClientConnect(Sender: TObject; Socket: TCustomWinSocket);
var
  Msg: string;
  i: integer;
begin
  Msg := 'Blp listener connected to ' + RemoteAddr(Socket);
  Log(LT_CONNECT, Msg);
  for i := 0 to FServer.Socket.ActiveConnections-1 do
    begin
    if (FServer.Socket.Connections[i].RemoteAddress = Socket.RemoteAddress) and
       (FServer.Socket.Connections[i].RemotePort = Socket.RemotePort) then
      begin
      Send(SERVER_READY, Socket);
      // Создаем объект Request
//      FRequests.AddObject(RemoteAddr(Socket), TRequestData.Create);
      end;
    end;
end;

procedure TBlpListener.DoOnClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
var
  Msg: string;
begin
//  Assert(FRequests <> nil);
//  Assert(FRequests.IndexOf(RemoteAddr(Socket)) <> -1);
//  Assert(FRequests.Objects[FRequests.IndexOf(RemoteAddr(Socket))] <> nil);

//  TRequestData(FRequests.Objects[FRequests.IndexOf(RemoteAddr(Socket))]).Free;
//  FRequests.Delete(FRequests.IndexOf(RemoteAddr(Socket)));

  Msg := 'Blp listener disconnected from ' + RemoteAddr(Socket);
  Log(LT_CONNECT, Msg);
end;

procedure TBlpListener.DoOnClientRead(Sender: TObject; Socket: TCustomWinSocket);
var
  i: integer;
  Buf: string;
  Msg: string;
//  vRequest: TRequestData;
begin
  for i := 0 to FServer.Socket.ActiveConnections-1 do
    begin
    if (FServer.Socket.Connections[i].RemoteAddress = Socket.RemoteAddress) and
       (FServer.Socket.Connections[i].RemotePort = Socket.RemotePort) then
      begin
      Buf := FServer.Socket.Connections[i].ReceiveText;
      if Buf <> '' then
        begin
        if HandShakeType(Buf) = REQUEST then
          Msg := 'Received ''' + REQUEST + ''' from ' + RemoteAddr(Socket)
        else
          Msg := 'Received ''' + Buf + ''' from ' + RemoteAddr(Socket);
        Log(LT_NET_DATA, Msg);
        
//        Log(LT_NET_DATA, Buf);
//        vRequest := TRequestData(FRequests.Objects[FRequests.IndexOf(RemoteAddr(Socket))]);
//        Assert(vRequest <> nil);

        if HandShakeType(Buf) = NEED_SERVICE then
          begin
          // ... здесь проверить доступность сервиса ...
          if TFormMain(FOwner).BlpReady = True then
            begin
            Send(SERVICE_READY, Socket);
            end
          else
            begin
            Send(SERVICE_NOT_READY, Socket);
            Socket.Close;
            end;
          end

        else if HandShakeType(Buf) = REQUEST then
          begin
          Buf := GetDataTag(Buf);
          if TFormMain(FOwner).DoRequest(Buf) = 0 then
            begin
            Send(ACK_REQUEST + ' <' + Buf + '>', Socket);
            end
          else
            begin
            Send(NAK_REQUEST + ' <' + Buf + '>', Socket);
            end;

          Socket.Close;
          end

        end;
      end;
    end;
end;

function TBlpListener.GetDataTag(Data: string): string;
var
  Buf: string;
  i: integer;
  TagLevel: integer;
begin
  Buf := '';
  TagLevel := 0;
  for i := Length(Data) downto 1 do
    begin
    if Data[i] = '>' then
      Inc(TagLevel);
    if Data[i] = '<' then
      begin
      Dec(TagLevel);
      if TagLevel = 0 then
        break;
      end;
    end;
  Inc(i);
  TagLevel := 1;
  while i < Length(Data) do
    begin
    if Data[i] = '<' then
      Inc(TagLevel);
    if Data[i] = '>' then
      begin
      Dec(TagLevel);
      if TagLevel = 0 then
        break;
      end;
    Buf := Buf + Data[i];
    Inc(i);
    end;
  Result := Buf;
end;

function TBlpListener.HandshakeType(Data: string): string;
var
  Buf: string;
  i: integer;
begin
  // Убираем первый  тэг с RemoteAddr
  i := Pos('>', Data) + 1;
  Buf := TrimLeft(Copy(Data, i, Length(Data)));
  // Убираем последующий тэг (если он есть)
  i := Pos('<', Buf);
  if i <> 0 then
    begin
    Buf := TrimRight(Copy(Buf, 1, i-1));
    end;
  Result := Buf;
end;

end.
