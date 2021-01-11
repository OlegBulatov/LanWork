unit BlpApi;

interface

uses SysUtils, blpapi_inc, Windows;

type
  EBlpapiError = class (Exception)
  private
    FErrorCode: integer;
  public
    constructor Create(AErrorCode: integer; AMsg: string);
    constructor CreateFmt(AErrorCode: integer; const Msg: string; const Args: array of const);
    property ErrorCode: integer read FErrorCode;
  end;

function  Blp_ElementPrint(const element: P_blpapi_Element_t; streamWriter: blpapi_StreamWriter_t;
            stream: Pointer; level: integer; spacesPerLevel: integer): integer;

function  Blp_CreateSessionOptions: P_blpapi_SessionOptions_t;
procedure Blp_SetServerHost(parameters: P_blpapi_SessionOptions_t; const serverHost: PAnsiChar);
procedure Blp_SetServerPort(parameters: P_blpapi_SessionOptions_t; serverPort: integer);
procedure Blp_DestroySessionOptions(parameters: P_blpapi_SessionOptions_t);

function  Blp_CreateSession(parameters: P_blpapi_SessionOptions_t): P_blpapi_Session_t;
procedure Blp_StartSession(session: P_blpapi_Session_t);
procedure Blp_SendRequest(session: P_blpapi_Session_t; const request: P_blpapi_Request_t; correlationId: P_blpapi_CorrelationId_t);
procedure Blp_StopSession(session: P_blpapi_Session_t);
procedure Blp_DestroySession(session: P_blpapi_Session_t);

procedure Blp_OpenService(session: P_blpapi_Session_t; const serviceName: PAnsiChar);
procedure Blp_GetService(session: P_blpapi_Session_t; service: PP_blpapi_Service_t; const serviceName: PAnsiChar);

procedure Blp_CreateRequest(service: P_blpapi_Service_t; request: PP_blpapi_Request_t; const operation: PAnsiChar);
procedure Blp_DestroyRequest(request: PP_blpapi_Request_t);

function  Blp_GetRequestElements(request: P_blpapi_Request_t): P_blpapi_Element_t;
procedure Blp_GetSecurities(const requestElements: P_blpapi_Element_t; securitiesElements: PP_blpapi_Element_t);
procedure Blp_GetFields(const requestElements: P_blpapi_Element_t; fieldsElements: PP_blpapi_Element_t);
procedure Blp_GetOverrides(const requestElements: P_blpapi_Element_t; fieldsElements: PP_blpapi_Element_t);
procedure Blp_AppendElement(const elements: P_blpapi_Element_t; elementName: PAnsiChar);
function  Blp_AddElement(const elements: P_blpapi_Element_t): P_blpapi_Element_t;
procedure Blp_SetElement(const element: P_blpapi_Element_t; elementName, elementValue: PAnsiChar);

procedure Blp_GetEvent(session: P_blpapi_Session_t; event: PP_blpapi_Event_t; timeout: Cardinal);
function  Blp_EventType(const event: P_blpapi_Event_t): integer;
procedure Blp_ReleaseEvent(const event: P_blpapi_Event_t);
function  Blp_CreateMessageIterator(const event: P_blpapi_Event_t): P_blpapi_MessageIterator_t;
procedure Blp_DestroyMessageIterator(iterator: P_blpapi_MessageIterator_t);

function  Blp_GetMessage(iterator: P_blpapi_MessageIterator_t; imessage: PP_blpapi_Message_t): integer;
function  Blp_GetMessageTypeString(const imessage: P_blpapi_Message_t): PAnsiChar;
function  Blp_GetMessageCorrelationId(const imessage: P_blpapi_Message_t): blpapi_CorrelationId_t;
function  Blp_GetMessageElements(const imessage: P_blpapi_Message_t): P_blpapi_Element_t;

function  Blp_HasElement(const elements: P_blpapi_Element_t; const elementName: PAnsiChar): boolean;
procedure Blp_GetElement(const elements: P_blpapi_Element_t; result: PP_blpapi_Element_t; const elementName: PAnsiChar);
function  Blp_ValuesCount(const element: P_blpapi_Element_t): size_t;
function  Blp_ElementsCount(const element: P_blpapi_Element_t): size_t;
procedure Blp_GetValueAsElement(const element: P_blpapi_Element_t; dest: PP_blpapi_Element_t; index: size_t);
function  Blp_ElementName(const element: P_blpapi_Element_t): PAnsiChar;
procedure Blp_GetElementAt(const element: P_blpapi_Element_t; dest: PP_blpapi_Element_t; index: size_t);
function  Blp_ElementIsArray(const element: P_blpapi_Element_t): boolean;
function  Blp_ElementIsComplex(const element: P_blpapi_Element_t): boolean;

procedure InitBlpApi;
procedure FreeBlpApi;

var
  BlpHandle: THandle;
  blpapi_getLastErrorDescription: Tblpapi_getLastErrorDescription;

implementation

{ EBlpapiError }

constructor EBlpapiError.Create(AErrorCode: integer; AMsg: string);
begin
  inherited Create(Amsg);
  FErrorCode := AErrorCode;
end;

constructor EBlpapiError.CreateFmt(AErrorCode: integer; const Msg: string;
  const Args: array of const);
begin
  inherited CreateFmt(Msg, Args);
  FErrorCode := AErrorCode;
end;

{ Инициализация DLL }

procedure InitBlpApi;
begin
  BlpHandle := LoadLibrary('blpapi3_32.dll');
  if BlpHandle <> 0 then
    begin
    @blpapi_getLastErrorDescription := GetProcAddress(BlpHandle, 'blpapi_getLastErrorDescription');
    Assert(@blpapi_getLastErrorDescription <> nil);
    end
  else
    begin
    raise EBlpapiError.Create(-1, 'blpapi3_32.dll: ' + SysErrorMessage(GetLastError));
    end;
end;

procedure FreeBlpApi;
begin
  if BlpHandle <> 0 then
    FreeLibrary(BlpHandle);
end;

{ Обертка blpapi.h }

function  Blp_ElementPrint(const element: P_blpapi_Element_t; streamWriter: blpapi_StreamWriter_t;
            stream: Pointer; level: integer; spacesPerLevel: integer): integer;
var
  blpapi_Element_print: Tblpapi_Element_print;
begin
  @blpapi_Element_print := GetProcAddress(BlpHandle, 'blpapi_Element_print');
  Assert(@blpapi_Element_print <> nil);
  Result := blpapi_Element_print(element, streamWriter, stream {nil}, level, spacesPerLevel);
  if Result <> 0 then
    raise EBlpapiError.CreateFmt(Result, 'Blp_ElementPrint error: %d - %s', [Result, blpapi_getLastErrorDescription(Result)]);
end;

function Blp_CreateSessionOptions: P_blpapi_SessionOptions_t;
var
  blpapi_SessionOptions_create: Tblpapi_SessionOptions_create;
begin
  @blpapi_SessionOptions_create := GetProcAddress(BlpHandle, 'blpapi_SessionOptions_create');
  Assert(@blpapi_SessionOptions_create <> nil);
  Result := blpapi_SessionOptions_create;
  if Result = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_CreateSessionOptions returned NULL', []);
end;

procedure Blp_SetServerHost(parameters: P_blpapi_SessionOptions_t; const serverHost: PAnsiChar);
var
  blpapi_SessionOptions_setServerHost: Tblpapi_SessionOptions_setServerHost;
  vResult: integer;
begin
  @blpapi_SessionOptions_setServerHost := GetProcAddress(BlpHandle, 'blpapi_SessionOptions_setServerHost');
  Assert(@blpapi_SessionOptions_setServerHost <> nil);
  vResult := blpapi_SessionOptions_setServerHost(parameters, serverHost);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_SetServerHost error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
end;

procedure Blp_SetServerPort(parameters: P_blpapi_SessionOptions_t; serverPort: integer);
var
  blpapi_SessionOptions_setServerPort: Tblpapi_SessionOptions_setServerPort;
  vResult: integer;
begin
  @blpapi_SessionOptions_setServerPort := GetProcAddress(BlpHandle, 'blpapi_SessionOptions_setServerPort');
  Assert(@blpapi_SessionOptions_setServerPort <> nil);
  vResult := blpapi_SessionOptions_setServerPort(parameters, serverPort);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_SetServerPort error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
end;

procedure Blp_DestroySessionOptions(parameters: P_blpapi_SessionOptions_t);
var
  blpapi_SessionOptions_destroy: Tblpapi_SessionOptions_destroy;
begin
  @blpapi_SessionOptions_destroy := GetProcAddress(BlpHandle, 'blpapi_SessionOptions_destroy');
  Assert(@blpapi_SessionOptions_destroy <> nil);
  blpapi_SessionOptions_destroy(parameters);
end;

//

function Blp_CreateSession(parameters: P_blpapi_SessionOptions_t): P_blpapi_Session_t;
var
  blpapi_Session_create: Tblpapi_Session_create;
begin
  @blpapi_Session_create := GetProcAddress(BlpHandle, 'blpapi_Session_create');
  Assert(@blpapi_Session_create <> nil);
  Result := blpapi_Session_create(parameters, nil, nil, nil);
  if Result = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_CreateSession returned NULL', []);
end;

procedure Blp_StartSession(session: P_blpapi_Session_t);
var
  blpapi_Session_start: Tblpapi_Session_start;
  vResult: integer;
begin
  @blpapi_Session_start := GetProcAddress(BlpHandle, 'blpapi_Session_start');
  Assert(@blpapi_Session_start <> nil);
  vResult := blpapi_Session_start(session);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_StartSession error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
end;

procedure Blp_SendRequest(session: P_blpapi_Session_t; const request: P_blpapi_Request_t; correlationId: P_blpapi_CorrelationId_t);
var
  blpapi_Session_sendRequest: Tblpapi_Session_sendRequest;
  vResult: integer;
begin
// Выдаем структуру запроса
//blpapi_Element_print(requestElements, @streamWriter, nil, 0, 4);
  @blpapi_Session_sendRequest := GetProcAddress(BlpHandle, 'blpapi_Session_sendRequest');
  Assert(@blpapi_Session_sendRequest <> nil);
  vResult := blpapi_Session_sendRequest(session, request, correlationId, nil, nil, nil, 0);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_SendRequest error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
end;

procedure Blp_StopSession(session: P_blpapi_Session_t);
var
  blpapi_Session_stop: Tblpapi_Session_stop;
  vResult: integer;
begin
  @blpapi_Session_stop := GetProcAddress(BlpHandle, 'blpapi_Session_stop');
  Assert(@blpapi_Session_stop <> nil);
  vResult := blpapi_Session_stop(session);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_StopSession error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
end;

procedure Blp_DestroySession(session: P_blpapi_Session_t);
var
  blpapi_Session_destroy: Tblpapi_Session_destroy;
begin
  @blpapi_Session_destroy := GetProcAddress(BlpHandle, 'blpapi_Session_destroy');
  Assert(@blpapi_Session_destroy <> nil);
  blpapi_Session_destroy(session);
end;

//

procedure Blp_OpenService(session: P_blpapi_Session_t; const serviceName: PAnsiChar);
var
  blpapi_Session_openService: Tblpapi_Session_openService;
  vResult: integer;
begin
  @blpapi_Session_openService := GetProcAddress(BlpHandle, 'blpapi_Session_openService');
  Assert(@blpapi_Session_openService <> nil);
  vResult := blpapi_Session_openService(session, serviceName);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_OpenService error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
end;

procedure Blp_GetService(session: P_blpapi_Session_t; service: PP_blpapi_Service_t; const serviceName: PAnsiChar);
var
  blpapi_Session_getService: Tblpapi_Session_getService;
  vResult: integer;
begin
  @blpapi_Session_getService := GetProcAddress(BlpHandle, 'blpapi_Session_getService');
  Assert(@blpapi_Session_getService <> nil);
  vResult := blpapi_Session_getService(session, service, serviceName);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_GetService error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
  if service^ = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_GetService returned NULL', []);
end;

//

procedure Blp_CreateRequest(service: P_blpapi_Service_t; request: PP_blpapi_Request_t; const operation: PAnsiChar);
var
  blpapi_Service_createRequest: Tblpapi_Service_createRequest;
  vResult: integer;
begin
  @blpapi_Service_createRequest := GetProcAddress(BlpHandle, 'blpapi_Service_createRequest');
  Assert(@blpapi_Service_createRequest <> nil);
  vResult := blpapi_Service_createRequest(service, request, operation);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_CreateRequest error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
  if request^ = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_CreateRequest returned NULL', []);
end;

procedure Blp_DestroyRequest(request: PP_blpapi_Request_t);
var
  blpapi_Request_destroy: Tblpapi_Request_destroy;
begin
  @blpapi_Request_destroy := GetProcAddress(BlpHandle, 'blpapi_Request_destroy');
  Assert(@blpapi_Request_destroy <> nil);
  blpapi_Request_destroy(request);
end;

//

function Blp_GetRequestElements(request: P_blpapi_Request_t): P_blpapi_Element_t;
var
  blpapi_Request_elements: Tblpapi_Request_elements;
begin
  @blpapi_Request_elements := GetProcAddress(BlpHandle, 'blpapi_Request_elements');
  Assert(@blpapi_Request_elements <> nil);
  Result := blpapi_Request_elements(request);
  if Result = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_GetRequestElelemenst returned NULL', []);
end;

procedure Blp_GetSecurities(const requestElements: P_blpapi_Element_t; securitiesElements: PP_blpapi_Element_t);
var
  blpapi_Element_getElement: Tblpapi_Element_getElement;
  vResult: integer;
begin
  @blpapi_Element_getElement := GetProcAddress(BlpHandle, 'blpapi_Element_getElement');
  Assert(@blpapi_Element_getElement <> nil);
  vResult := blpapi_Element_getElement(requestElements, securitiesElements, 'securities', nil);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_GetSecurities error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
  if securitiesElements^ = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_GetSecurities returned NULL', []);
end;

procedure Blp_GetFields(const requestElements: P_blpapi_Element_t; fieldsElements: PP_blpapi_Element_t);
var
  blpapi_Element_getElement: Tblpapi_Element_getElement;
  vResult: integer;
begin
  @blpapi_Element_getElement := GetProcAddress(BlpHandle, 'blpapi_Element_getElement');
  Assert(@blpapi_Element_getElement <> nil);
  vResult := blpapi_Element_getElement(requestElements, fieldsElements, 'fields', nil);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_GetFields error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
  if fieldsElements^ = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_GetFields returned NULL', []);
end;

procedure Blp_GetOverrides(const requestElements: P_blpapi_Element_t; fieldsElements: PP_blpapi_Element_t);
var
  blpapi_Element_getElement: Tblpapi_Element_getElement;
  vResult: integer;
begin
  @blpapi_Element_getElement := GetProcAddress(BlpHandle, 'blpapi_Element_getElement');
  Assert(@blpapi_Element_getElement <> nil);
  vResult := blpapi_Element_getElement(requestElements, fieldsElements, 'overrides', nil);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_GetFields error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
  if fieldsElements^ = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_GetFields returned NULL', []);
end;

procedure Blp_AppendElement(const elements: P_blpapi_Element_t; elementName: PAnsiChar);
var
  blpapi_Element_setValueString: Tblpapi_Element_setValueString;
  vResult: integer;
begin
  @blpapi_Element_setValueString := GetProcAddress(BlpHandle, 'blpapi_Element_setValueString');
  Assert(@blpapi_Element_setValueString <> nil);
  vResult := blpapi_Element_setValueString(elements, elementName, BLPAPI_ELEMENT_INDEX_END);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_AppendElement error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
end;

function Blp_AddElement(const elements: P_blpapi_Element_t): P_blpapi_Element_t;
var
  blpapi_Element_appendElement: Tblpapi_Element_appendElement;
  vResult: P_blpapi_Element_t;
  vError: integer;
begin
  @blpapi_Element_appendElement := GetProcAddress(BlpHandle, 'blpapi_Element_appendElement');
  Assert(@blpapi_Element_appendElement <> nil);
  vError := blpapi_Element_appendElement(elements, @vResult);
  if (vError <> 0) then
    raise EBlpapiError.CreateFmt(vError, 'Blp_AddElement error: %d - %s', [vError, blpapi_getLastErrorDescription(vError)]);
  Result := vResult;
end;

procedure Blp_SetElement(const element: P_blpapi_Element_t; elementName, elementValue: PAnsiChar);
var
  blpapi_Element_setElementString: Tblpapi_Element_setElementString;
  vResult: integer;
begin
  @blpapi_Element_setElementString := GetProcAddress(BlpHandle, 'blpapi_Element_setElementString');
  Assert(@blpapi_Element_setElementString <> nil);
  vResult := blpapi_Element_setElementString(element, elementName, nil, elementValue);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_SetElement error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
end;

//

procedure Blp_GetEvent(session: P_blpapi_Session_t; event: PP_blpapi_Event_t; timeout: Cardinal);
var
  blpapi_Session_nextEvent: Tblpapi_Session_nextEvent;
  vResult: integer;
begin
  @blpapi_Session_nextEvent := GetProcAddress(BlpHandle, 'blpapi_Session_nextEvent');
  Assert(@blpapi_Session_nextEvent <> nil);
  vResult := blpapi_Session_nextEvent(session, event, timeout);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_GetEvent error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
  if event^ = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_GetEvent returned NULL', []);
end;

function Blp_EventType(const event: P_blpapi_Event_t): integer;
var
  blpapi_Event_eventType: Tblpapi_Event_eventType;
begin
  @blpapi_Event_eventType := GetProcAddress(BlpHandle, 'blpapi_Event_eventType');
  Assert(@blpapi_Event_eventType <> nil);
  Result := blpapi_Event_eventType(event);
end;

procedure Blp_ReleaseEvent(const event: P_blpapi_Event_t);
var
  blpapi_Event_release: Tblpapi_Event_release;
  vResult: integer;
begin
  @blpapi_Event_release := GetProcAddress(BlpHandle, 'blpapi_Event_release');
  Assert(@blpapi_Event_release <> nil);
  vResult := blpapi_Event_release(event);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_ReleaseEvent error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
end;

function Blp_CreateMessageIterator(const event: P_blpapi_Event_t): P_blpapi_MessageIterator_t;
var
  blpapi_MessageIterator_create: Tblpapi_MessageIterator_create;
begin
  @blpapi_MessageIterator_create := GetProcAddress(BlpHandle, 'blpapi_MessageIterator_create');
  Assert(@blpapi_MessageIterator_create <> nil);
  Result := blpapi_MessageIterator_create(event);
  if Result = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_CreateMessageIterator returned NULL', []);
end;

procedure Blp_DestroyMessageIterator(iterator: P_blpapi_MessageIterator_t);
var
  blpapi_MessageIterator_destroy: Tblpapi_MessageIterator_destroy;
begin
  @blpapi_MessageIterator_destroy := GetProcAddress(BlpHandle, 'blpapi_MessageIterator_destroy');
  Assert(@blpapi_MessageIterator_destroy <> nil);
  blpapi_MessageIterator_destroy(iterator);
end;

//

function Blp_GetMessage(iterator: P_blpapi_MessageIterator_t; imessage: PP_blpapi_Message_t): integer;
var
  blpapi_MessageIterator_next: Tblpapi_MessageIterator_next;
begin
  @blpapi_MessageIterator_next := GetProcAddress(BlpHandle, 'blpapi_MessageIterator_next');
  Assert(@blpapi_MessageIterator_next <> nil);
  Result := blpapi_MessageIterator_next(iterator, imessage);
  if Result = 0 then
    if imessage^ = nil then
      raise EBlpapiError.CreateFmt(-1, 'Blp_GetMessage returned NULL', []);
end;

function  Blp_GetMessageTypeString(const imessage: P_blpapi_Message_t): PAnsiChar;
var
  blpapi_Message_typeString: Tblpapi_Message_typeString;
begin
  @blpapi_Message_typeString := GetProcAddress(BlpHandle, 'blpapi_Message_typeString');
  Assert(@blpapi_Message_typeString <> nil);
  Result := blpapi_Message_typeString(imessage);
end;

function Blp_GetMessageCorrelationId(const imessage: P_blpapi_Message_t): blpapi_CorrelationId_t;
var
  blpapi_Message_correlationId: Tblpapi_Message_correlationId;
begin
  @blpapi_Message_correlationId := GetProcAddress(BlpHandle, 'blpapi_Message_correlationId');
  Assert(@blpapi_Message_correlationId <> nil);
  Result := blpapi_Message_correlationId(imessage, 0);
end;

function Blp_GetMessageElements(const imessage: P_blpapi_Message_t): P_blpapi_Element_t;
var
  blpapi_Message_elements: Tblpapi_Message_elements;
begin
  @blpapi_Message_elements := GetProcAddress(BlpHandle, 'blpapi_Message_elements');
  Assert(@blpapi_Message_elements <> nil);
  Result := blpapi_Message_elements(imessage);
  if Result = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_GetMessageElements returned NULL', []);
end;

//

function Blp_HasElement(const elements: P_blpapi_Element_t; const elementName: PAnsiChar): boolean;
var
  blpapi_Element_hasElement: Tblpapi_Element_hasElement;
  vResult: integer;
begin
  @blpapi_Element_hasElement := GetProcAddress(BlpHandle, 'blpapi_Element_hasElement');
  Assert(@blpapi_Element_hasElement <> nil);
  vResult := blpapi_Element_hasElement(elements, elementName, nil);
  Result := vResult <> 0;
end;

procedure Blp_GetElement(const elements: P_blpapi_Element_t; result: PP_blpapi_Element_t; const elementName: PAnsiChar);
var
  blpapi_Element_getElement: Tblpapi_Element_getElement;
  vResult: integer;
begin
  @blpapi_Element_getElement := GetProcAddress(BlpHandle, 'blpapi_Element_getElement');
  Assert(@blpapi_Element_getElement <> nil);
  vResult := blpapi_Element_getElement(elements, result, elementName, nil);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_GetElement error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
  if result^ = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_GetElement returned NULL', []);
end;

function Blp_ValuesCount(const element: P_blpapi_Element_t): size_t;
var
  blpapi_Element_numValues: Tblpapi_Element_numValues;
begin
  @blpapi_Element_numValues := GetProcAddress(BlpHandle, 'blpapi_Element_numValues');
  Assert(@blpapi_Element_numValues <> nil);
  Result := blpapi_Element_numValues(element);
end;

function Blp_ElementsCount(const element: P_blpapi_Element_t): size_t;
var
  blpapi_Element_numElements: Tblpapi_Element_numElements;
begin
  @blpapi_Element_numElements := GetProcAddress(BlpHandle, 'blpapi_Element_numElements');
  Assert(@blpapi_Element_numElements <> nil);
  Result := blpapi_Element_numElements(element);
end;

procedure Blp_GetValueAsElement(const element: P_blpapi_Element_t; dest: PP_blpapi_Element_t; index: size_t);
var
  blpapi_Element_getValueAsElement: Tblpapi_Element_getValueAsElement;
  vResult: integer;
begin
  @blpapi_Element_getValueAsElement := GetProcAddress(BlpHandle, 'blpapi_Element_getValueAsElement');
  Assert(@blpapi_Element_getValueAsElement <> nil);
  vResult := blpapi_Element_getValueAsElement(element, dest, index);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_GetValueAsElement error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
  if dest^ = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_GetValueAsElement returned NULL', []);
end;

function Blp_ElementName(const element: P_blpapi_Element_t): PAnsiChar;
var
  blpapi_Element_nameString: Tblpapi_Element_nameString;
begin
  @blpapi_Element_nameString := GetProcAddress(BlpHandle, 'blpapi_Element_nameString');
  Assert(@blpapi_Element_nameString <> nil);
  Result := blpapi_Element_nameString(element);
end;

procedure Blp_GetElementAt(const element: P_blpapi_Element_t; dest: PP_blpapi_Element_t; index: size_t);
var
  blpapi_Element_getElementAt: Tblpapi_Element_getElementAt;
  vResult: integer;
begin
  @blpapi_Element_getElementAt := GetProcAddress(BlpHandle, 'blpapi_Element_getElementAt');
  Assert(@blpapi_Element_getElementAt <> nil);
  vResult := blpapi_Element_getElementAt(element, dest, index);
  if vResult <> 0 then
    raise EBlpapiError.CreateFmt(vResult, 'Blp_GetElementAt error: %d - %s', [vResult, blpapi_getLastErrorDescription(vResult)]);
  if dest^ = nil then
    raise EBlpapiError.CreateFmt(-1, 'Blp_GetElementAt returned NULL', []);
end;

function Blp_ElementIsArray(const element: P_blpapi_Element_t): boolean;
var
  blpapi_Element_isArray: Tblpapi_Element_isArray;
begin
  @blpapi_Element_isArray := GetProcAddress(BlpHandle, 'blpapi_Element_isArray');
  Assert(@blpapi_Element_isArray <> nil);
  Result := (blpapi_Element_isArray(element) <> 0);
end;

function Blp_ElementIsComplex(const element: P_blpapi_Element_t): boolean;
var
  blpapi_Element_isComplexType:  Tblpapi_Element_isComplexType;
begin
  @blpapi_Element_isComplexType := GetProcAddress(BlpHandle, 'blpapi_Element_isComplexType');
  Assert(@blpapi_Element_isComplexType <> nil);
  Result := (blpapi_Element_isComplexType(element) <> 0);
end;



end.
