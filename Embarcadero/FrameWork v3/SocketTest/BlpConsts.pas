unit BlpConsts;

interface

uses ScktComp;

const
//  BLP_HOST:         string = 'localhost';
  BLP_HOST:         string = '127.0.0.1';
  BLP_PORT:         integer = 8085;

  // Log masks
  LM_ALL:           integer = $FFFF;

  // Log types
  LT_ALWAYS:        integer = $0001;
  LT_LISTEN:        integer = $0002;
  LT_CONNECT:       integer = $0004;
  LT_NET_DATA:      integer = $0008;
  LT_REQUEST:       integer = $0010;
  LT_REQUEST_DATA:  integer = $0020;
  LT_RESPONSE_DATA: integer = $0040;
  LT_WAIT_EVENT:    integer = $0080;
  LT_PARSED_DATA:   integer = $0100;

  // Common error codes
  NO_ERROR             = 0;
  BLP_CONNECT_ERROR    = -1;
  INVALID_REQUEST      = -2;
  INVALID_RESPONSE     = -3;

  // Response data error codes
  SECURITY_ERROR      = -10;
  SEC_NO_DATA         = -11;
  FIELD_ERROR         = -12;
  FLD_NO_DATA         = -13;

  WAITING_TIMEOUT:   integer = -1000;

  // Socket Handshake elements
  SERVER_READY:      string = 'READY';

  NEED_SERVICE:      string = 'SERVICE';
  SERVICE_READY:     string = 'ACK SERVICE';
  SERVICE_NOT_READY: string = 'NAK SERVICE';

  REQUEST:           string = 'REQ';
  ACK_REQUEST:       string = 'ACK REQ';
  NAK_REQUEST:       string = 'NAK REQ';

  // Request types
  REFERENCE:         string = 'R';
  HISTORICAL:        string = 'H';
  DATABASE:          string = 'D';
  BLP_CONTROL:       string = 'C';

type
  TBlpNotifyEvent = procedure(Sender: TObject; LogLevel: integer; Msg: string; ToFile: boolean) of object;

function ErrorOn(ErrorEvent: TErrorEvent): string;

implementation

uses SysUtils;

function ErrorOn(ErrorEvent: TErrorEvent): string;
begin
  case ErrorEvent of
    eeGeneral:    Result := 'general';
    eeConnect:    Result := 'connect';
    eeAccept:     Result := 'accept';
    eeSend:       Result := 'send';
    eeReceive:    Result := 'receive';
    eeDisconnect: Result := 'disconnect';
  else
    Result := 'unknown';
  end;
end;

end.
