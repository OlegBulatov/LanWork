unit BlpWSClient;

interface
uses BlpClient, Classes, SysUtils, Dialogs, IdHTTPWebsocketClient, BlpConsts, BlpData, BlpWSDm, superobject, Vcl.Forms;

type
  TWSClientRequest = class(TServerRequest)

  end;
  TBlpWSClient = class(TBlpClient)
  private
    FResultData: string;
    function GetRequest: TWSClientRequest;
  protected
      FWebClient: TIdHTTPWebsocketClient;
      procedure ClientTextDataReceived(const aData: string);
      procedure ClientBinDataReceived(const aData: TStream);

  public
      constructor Create(AOwner: TComponent; APort: string = ''; AHost: string = ''; AResource: string = '');
      function SendRequest(var Data: string): integer; override;
      property Request: TWSClientRequest read GetRequest;

end;

implementation

{ TBlpWSClient }

procedure TBlpWSClient.ClientBinDataReceived(const aData: TStream);
begin

end;

procedure TBlpWSClient.ClientTextDataReceived(const aData: string);
begin
  FResultData := aData;
end;

constructor TBlpWSClient.Create(AOwner: TComponent; APort, AHost,
  AResource: string);
begin
  FRequest := TWSClientRequest.Create;
  FWebClient := TIdHTTPWebsocketClient.Create(AOwner);
  FWebClient.Port := StrToint(APort);
  FWebClient.Host := AHost;
  FWebClient.WSResourceName := AResource;
  FWebClient.OnTextData := ClientTextDataReceived;
  FWebClient.OnBinData  := ClientBinDataReceived;

  FWebClient.Connect;
  FWebClient.UpgradeToWebsocket;

end;

function TBlpWSClient.GetRequest: TWSClientRequest;
begin
    Result := TWSClientRequest(FRequest);
end;

function TBlpWSClient.SendRequest(var Data: string): integer;
begin
    if RequestType = DATABASE then
        BlpDb.GetDbRequestData(Request, 0);
    FWebClient.IOHandler.Write(SO([ 'securities', Request.Securities.Text]).AsJSon());
    while FResultData = '' do
      Application.ProcessMessages;
    Data := FResultData;//'Эта функциональность еще не реализована';
    Result := -1;
end;

end.
