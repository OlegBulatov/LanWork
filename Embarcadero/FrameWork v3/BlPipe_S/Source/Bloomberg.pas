unit Bloomberg;

interface

uses Classes, Controls, blpapi_inc, BlpData;

const
  RESPONSE_ERROR: string = '*** Пока вот такая ошибка ответа ***';

type
  TBloomberg = class(TObject)
  private
    FOwner: TComponent;
    FConnected: boolean;
    FBlpSession: P_blpapi_Session_t;
    FBlpService: P_blpapi_Service_t;
    FBlpRequest: P_blpapi_Request_t;

    FResponse: string;

    function  CreateSession(const host: PChar; port: integer): P_blpapi_Session_t;
    procedure KillSession;
    //
    procedure SetSecurities(elements: P_blpapi_Element_t; securities: TStrings);
    procedure SetFields(elements: P_blpapi_Element_t; fields: TStrings);
    procedure SetOverrides(elements: P_blpapi_Element_t; overrides: TStrings);
    procedure SetPeriodicity(elements: P_blpapi_Element_t; periodicity: string);
    procedure SetDates(elements: P_blpapi_Element_t; startDate, endDate: TDate);
    procedure SetCurrency(elements: P_blpapi_Element_t; currency: string);
    //
    procedure InitCorrelationId(correlationId: P_blpapi_CorrelationId_t);
    procedure SendReferenceRequest(Request: TServerRequest);
    procedure SendHistoricalRequest(Request: TServerRequest);
    //
    function  ReferenceRequest(Request: TServerRequest): string;
    function  HistoricalRequest(Request: TServerRequest): string;
    //
    function  ProcessEvents: boolean;
    procedure HandleResponseEvent(event: P_blpapi_Event_t);
    function  HandleOtherEvent(event: P_blpapi_Event_t): boolean;
//    procedure ProcessMessage(imessage: P_blpapi_Event_t);
//    procedure ProcessMessageElement(element: P_blpapi_Event_t; parentName: PChar; parentNo: integer);
    //
    function  GetResultData: string;
   public
    constructor Create(AOwner: TComponent);
    destructor  Destroy; override;
    //
    procedure InitSession;
    procedure StartSession;
    procedure StopSession;
    procedure OpenService(const serviceName: PChar);
    //
    procedure SendRequest(Request: TServerRequest; var Buf: string);
    property  Connected: boolean read FConnected;
  end;

implementation

uses SysUtils, Windows, BlpApi, ListenerMainForm, BlpConsts;

function streamWriter(const data: PChar; length: integer; stream: Pointer): integer; cdecl;
begin
  Assert(data <> nil);
//  FormMain.LogData(StringReplace(data, #10, #13#10, [rfReplaceAll]));
  Assert(stream <> nil);
  string(stream^) := string(stream^) + data;
  Result := 0;
end;

{ TBloomberg }

constructor TBloomberg.Create(AOwner: TComponent);
begin
  inherited Create;
  FOwner := AOwner;
  FConnected := False;
  FBlpSession := nil;
end;

destructor TBloomberg.Destroy;
begin
  FConnected := False;
  if FBlpSession <> nil then
    begin
    Blp_StopSession(FBlpSession);
    Blp_DestroySession(FBlpSession);
    end;
  inherited;
end;

function TBloomberg.CreateSession(const host: PChar; port: integer): P_blpapi_Session_t;
var
  vSessionOptions: P_blpapi_SessionOptions_t;
begin
  // создаем сессию с localhost порт 8194
  vSessionOptions := Blp_CreateSessionOptions;

  Blp_SetServerHost(vSessionOptions, host);
  Blp_SetServerPort(vSessionOptions, port);

  Result := Blp_CreateSession(vSessionOptions);

  Blp_DestroySessionOptions(vSessionOptions);

//  FResultData := TResponseData.Create(TBlpSecurityData);
end;

procedure TBloomberg.StartSession;
begin
  Blp_StartSession(FBlpSession);
end;

procedure TBloomberg.StopSession;
begin
  Blp_StopSession(FBlpSession);
end;

procedure TBloomberg.OpenService(const serviceName: PChar);
begin
  Blp_OpenService(FBlpSession, serviceName);
  Blp_GetService(FBlpSession, @FBlpService, serviceName);
end;

procedure TBloomberg.InitSession;
begin
  if FConnected = True then Exit;

  FBlpSession := CreateSession('localhost', 8194);
  StartSession;
  OpenService('//blp/refdata');
  FConnected := True;
end;

procedure TBloomberg.KillSession;
begin
  if FBlpSession <> nil then
    begin
    Blp_StopSession(FBlpSession);
    Blp_DestroySession(FBlpSession);
    FBlpSession := nil;
    FConnected := False;
    end;
end;

// В  случае ошибки - не  код возврата, а Exception
procedure TBloomberg.SendRequest(Request: TServerRequest; var Buf: string);
var
  i: integer;
begin
  // Проверяем структуру запроса
  if (Request.RequestType <> REFERENCE) and (Request.RequestType <> HISTORICAL) then
    raise EBlpApiError.Create(INVALID_REQUEST, 'Invalid request type: ''' + Request.RequestType + '''');
  if (Request.Securities.Count = 0) then
    raise EBlpApiError.Create(INVALID_REQUEST, 'No securities specified');
  // проверяем формат security на вид 'код ISIN'='/ISIN/XXXXXXXXXXXX' или 'код ISIN'='LUKOY RX EQUITY'
  for i := 0 to Request.Securities.Count-1 do
    if (Request.Securities.Values[Request.Securities.Names[i]] = '') then
      raise EBlpApiError.Create(INVALID_REQUEST, 'Invalid security format (not ''Isin=Sec''): ''' + Request.Securities[i] + '''');
  if (Request.RequestFields.Count = 0) then
    raise EBlpApiError.Create(INVALID_REQUEST, 'No fields specified');
  if (Request.User = '') then
    raise EBlpApiError.Create(INVALID_REQUEST, 'No user specified');

  Buf := '';
  if Request.RequestType = REFERENCE then
    // Reference
    Buf := ReferenceRequest(Request)
  else if Request.RequestType = HISTORICAL then
    // Historical
    Buf := HistoricalRequest(Request)
  else
    raise EBlpApiError.Create(INVALID_REQUEST, 'Invalid request type: ''' + Request.RequestType + '''');

  // Выдаем структуру ответа
  TFormMain(FOwner).Log(Self, LT_RESPONSE_DATA, 'SDEBUG: ' + Buf, True); /// Для  отладки
end;

function TBloomberg.ReferenceRequest(Request: TServerRequest): string;
begin
  try
    Assert(FBlpSession <> nil);
    FormMain.Log(Self, LT_REQUEST, 'Reference request for '+ Request.Securities[0] + '...', True);
    // запрашиваем Bloomberg
    try
      SendReferenceRequest(Request);
    except
      // Здесь проверить обрыв сессии и повторить
      on E: Exception do
        begin
        if Pos('Blp_SendRequest error: 65545 - Session Not Started', E.Message) <> 0 then
          begin
          // убиваем сессию
          KillSession;
          // пересоздаем сессию
          InitSession;
          // повторяем запрос еще раз
          SendReferenceRequest(Request);
          end
        else
          raise;
        end;
    end;
    // Получаем  ответ
    Result := GetResultData;
    FormMain.LogResult('Ok.', True);
    if Result = RESPONSE_ERROR then
      begin
      KillSession; // ??? Зачем ???
      end;
  except
    on E: Exception do
      begin
        Result := E.Message;
        raise Exception.CreateFmt('Reference request error: ' + #13#10 +
          ' Securities: "%s".' + #13#10 +
          ' Fields: "%s".' + #13#10 +
          ' Error: %s.', [
          StringsToText(Request.Securities),
          StringsToText(Request.RequestFields),
          E.Message
          ]);
      end;
  end;
end;

function TBloomberg.HistoricalRequest(Request: TServerRequest): string;
begin
  try
    Assert(FBlpSession <> nil);
    FormMain.Log(Self, LT_REQUEST, 'Historical request for ' + Request.Securities[0] + '...', True);
    // запрашиваем Bloomberg
    try
      SendHistoricalRequest(Request);
    except
      // Здесь проверить обрыв сессии и повторить
      on E: Exception do
        begin
        if Pos('Blp_SendRequest error: 65545 - Session Not Started', E.Message) <> 0 then
          begin
          // убиваем сессию
          KillSession;
          // пересоздаем сессию
          InitSession;
          // повторяем запрос еще раз
          SendHistoricalRequest(Request);
          end
        else
          raise;
        end;
    end;
    // Получаем  ответ
    Result := GetResultData;
    FormMain.LogResult('Ok.', True);
    if Result = RESPONSE_ERROR then
      begin
      KillSession; // ???
      end;
  except
    on E: Exception do
      begin
        Result := E.Message;
        raise Exception.CreateFmt('Historical request error: ' + #13#10 +
          ' Securities: "%s".' + #13#10 +
          ' Fields: "%s".' + #13#10 +
          ' Error:  %s.', [
          StringsToText(Request.Securities),
          StringsToText(Request.RequestFields),
          E.Message
          ]);
      end;
  end;
end;

procedure TBloomberg.SetSecurities(elements: P_blpapi_Element_t; securities: TStrings);
var
  securitiesElements: P_blpapi_Element_t;
  i:  integer;
begin
  // Get "securities" element
  Blp_GetSecurities(elements, @securitiesElements);
  // Set securities specified
  for i := 0 to securities.Count-1 do
    Blp_AppendElement(securitiesElements, PChar(securities.Values[securities.Names[i]]));
end;

procedure TBloomberg.SetFields(elements: P_blpapi_Element_t; fields: TStrings);
var
  fieldsElements: P_blpapi_Element_t;
  i: integer;
begin
  // Get "fields" element
  Blp_GetFields(elements, @fieldsElements);
  // Set fields specified
  for i := 0 to fields.Count-1 do
    Blp_AppendElement(fieldsElements, PChar(fields[i]));
end;

procedure TBloomberg.SetOverrides(elements: P_blpapi_Element_t; overrides: TStrings);
var
  overridesElements: P_blpapi_Element_t;
  i: integer;
  vPos: integer;
  vFieldId: string;
  vValue: string;
  overrideElement: P_blpapi_Element_t;
begin
  if overrides.Count > 0 then
    begin
    // Get "overrides" element
    Blp_GetOverrides(elements, @overridesElements);
    // Set overrides specified
    for i := 0 to overrides.Count-1 do
      begin
      vPos := Pos('=', overrides[i]);
      if vPos = 0 then
        continue;
      vFieldId := Trim(Copy(overrides[i], 1, vPos-1));
      vValue := Trim(Copy(overrides[i], vPos+1, Length(overrides[i])));
      overrideElement := Blp_AddElement(overridesElements);
      Blp_SetElement(overrideElement, 'fieldId', PChar(vFieldId));
      Blp_SetElement(overrideElement, 'value', PChar(vValue));
      end;
    end;
end;

procedure TBloomberg.SetPeriodicity(elements: P_blpapi_Element_t; periodicity: string);
begin
  if periodicity = '' then
    Blp_SetElement(elements, 'periodicitySelection', 'DAILY')
  else
    Blp_SetElement(elements, 'periodicitySelection', PChar(periodicity));
end;

procedure TBloomberg.SetDates(elements: P_blpapi_Element_t; startDate, endDate: TDate);
var
  stdShortDateFormat: string;
begin
  if (startDate = 0) or (endDate = 0) then
    raise Exception.Create('Start or end date not set');

  stdShortDateFormat := ShortDateFormat;
  ShortDateFormat := 'yyyyMMdd';
  Blp_SetElement(elements, 'startDate', PChar(DateToStr(startDate)));
  Blp_SetElement(elements, 'endDate', PChar(DateToStr(endDate)));
  ShortDateFormat := stdShortDateFormat;
end;

procedure TBloomberg.SetCurrency(elements: P_blpapi_Element_t; currency: string);
begin
  if Currency <> '' then
    Blp_SetElement(elements, 'currency', PChar(currency));
end;

procedure TBloomberg.InitCorrelationId(correlationId: P_blpapi_CorrelationId_t);
begin
  ZeroMemory(correlationId, SizeOf(correlationId));                       //  FillChar
  correlationId^.size := SizeOf(correlationId);
  correlationId^.valueType := BLPAPI_CORRELATION_TYPE_INT;
  correlationId^.intValue := 1;
end;

procedure TBloomberg.SendReferenceRequest(Request: TServerRequest);
var
  requestElements: P_blpapi_Element_t;
  correlationId: blpapi_CorrelationId_t;
  Buf: string;
begin
  try
    // Create request
    Blp_CreateRequest(FBlpService, @FBlpRequest, 'ReferenceDataRequest');
    // Get request elements
    requestElements := Blp_GetRequestElements(FBlpRequest);
    // Set securities
    SetSecurities(requestElements, Request.Securities);
    // Set fields
    SetFields(requestElements, Request.RequestFields);
    // Set overrides
    SetOverrides(requestElements, Request.Overrides);
    // Initialize Correlation ID object
    InitCorrelationId(@correlationId);

    // Выдаем структуру запроса
    Buf := '';
    Blp_ElementPrint(requestElements, @streamWriter, @Buf, 0, 1);
    TFormMain(FOwner).Log(Self, LT_REQUEST_DATA, 'SDEBUG: ' + Buf, True); /// Для  отладки

    // Send request
    Blp_SendRequest(FBlpSession, FBlpRequest, @correlationId);
  finally
    // Destroy request
    Blp_DestroyRequest(FBlpRequest);
  end;
end;

procedure TBloomberg.SendHistoricalRequest(Request: TServerRequest);
var
  requestElements: P_blpapi_Element_t;
  correlationId: blpapi_CorrelationId_t;
  Buf: string;
begin
  try
    // Create request
    Blp_CreateRequest(FBlpService, @FBlpRequest, 'HistoricalDataRequest');
    // Get request elements
    requestElements := Blp_GetRequestElements(FBlpRequest);
    // Set securities
    SetSecurities(requestElements, Request.Securities);
    // Set fields
    SetFields(requestElements, Request.RequestFields);
    // Set overrides
    SetOverrides(requestElements, Request.Overrides);
    // Set periodicity
    SetPeriodicity(requestElements, Request.Periodicity);
    // Set dates
    SetDates(requestElements, Request.StartDate, Request.EndDate);
    // Set currency
    SetCurrency(requestElements, Request.Currency);

    // Выдаем структуру запроса
    Buf := '';
    Blp_ElementPrint(requestElements, @streamWriter, @Buf, 0, 1);
    TFormMain(FOwner).Log(Self, LT_REQUEST_DATA, 'SDEBUG: ' + Buf, True); /// Для  отладки

    // Initialize Correlation ID object
    InitCorrelationId(@correlationId);
    // Send request
    Blp_SendRequest(FBlpSession, FBlpRequest, @correlationId);
  finally
    // Destroy request
    Blp_DestroyRequest(FBlpRequest);
  end;
end;

function TBloomberg.GetResultData: string;
begin
  // Process Events
  if ProcessEvents = True then
    begin
    Result := FResponse;
    end
  else
    begin
    // Session terminated, free resources
    Result := '';
    end;
end;

function TBloomberg.ProcessEvents: boolean;
var
  event: P_blpapi_Event_t;
begin
  Result := True;
  FResponse := '';

  // Receiving events
  while (True) do
    begin
    Blp_GetEvent(FBlpSession, @event, 10000);
    Assert(event <> nil);
    case Blp_EventType(event) of
      BLPAPI_EVENTTYPE_RESPONSE:
        begin
	// Process the response event. This event indicates that
        // request has been fully satisfied, and that no additional events
        // should be expected.
	handleResponseEvent(event);
	break;
        end;
      BLPAPI_EVENTTYPE_PARTIAL_RESPONSE:
        begin
	// Process the partial response event to get data. This event indicates
       	// that request has not been fully satisfied.
	handleResponseEvent(event);
        end;
      BLPAPI_EVENTTYPE_TIMEOUT:
        break;
      else
        begin
	// Process events other than PARTIAL_RESPONSE or RESPONSE.
	if handleOtherEvent(event) = True then
          begin
          // Session terminated
          Result := False;
          break;
          end;
        end;
      end; // end case

    // release the event
    Blp_ReleaseEvent(event);
    end; // end while
end;

procedure TBloomberg.HandleResponseEvent(event: P_blpapi_Event_t);
var
  iter: P_blpapi_MessageIterator_t;
  imessage: P_blpapi_Message_t;
  messageElements: P_blpapi_Element_t;
begin
  Assert(event <> nil);
  if event = nil then Exit;
  iter := Blp_CreateMessageIterator(event);

  while Blp_GetMessage(iter, @imessage) = 0 do
    begin
    // Get the message elements
    messageElements := Blp_GetMessageElements(imessage);
//    FResponseType := blpapi_Element_nameString(messageElements);

    // Check for responseError
    if Blp_HasElement(messageElements, 'responseError') = True then
      begin
//      blpapi_Element_print(referenceDataResponse, streamWriter, nil {stdout}, 0, 4);
      // здесь в FResultData надо загнать объект-ошибку ответа
      FResponse := RESPONSE_ERROR;
      break;
      end;

    // ProcessMessage(messageElements); - пока что!!!
    Blp_ElementPrint(messageElements, streamWriter, @FResponse, 0, 1);

    //FResponse := ParseMessage(vResponseStr);
{
    // Handle ReferenceDataResponse
    if Blp_ElementName(messageElements) = 'ReferenceDataResponse' then
      HandleReferenceDataResponse(messageElements);
    else if Blp_ElementName(messageElements) = 'HistoricalDataResponse' then
      HandleHistoricalDataResponse(messageElements);
}
    end; // end while

  Blp_DestroyMessageIterator(iter);
end;

function TBloomberg.HandleOtherEvent(event: P_blpapi_Event_t): boolean;
var
  iter: P_blpapi_MessageIterator_t;
  imessage: P_blpapi_Message_t;
begin
  Result := False;
  if event =  nil then
    Exit;
  if (Blp_EventType(event) = BLPAPI_EVENTTYPE_SESSION_STATUS) then
    begin
    // Event has one or more messages. Create message iterator for event
    iter := Blp_CreateMessageIterator(event);

    // Iterate through messages received
    while Blp_GetMessage(iter, @imessage) = 0 do
      begin
      // If session status is 'session terminated', release allocated resource
      // and exit the program. (i.e. return 'True')
      if  (Blp_GetMessageTypeString(imessage) = 'SessionTerminated') then
        begin
        Result := True;
        break;
        end;
      end;

    // Destroy the message iterator.
    Blp_DestroyMessageIterator(iter);
    end;
end;

{
procedure TBloomberg.ProcessMessage(imessage: P_blpapi_Event_t);
var
  numElements: integer;
  i: integer;
  element: P_blpapi_Element_t;
begin
  Assert(imessage <> nil);

  numElements := Blp_ElementsCount(imessage);
  if numElements > 0 then
    begin
    for i := 0 to numElements -1 do
      begin
      Blp_GetElementAt(imessage, @element, i);
      ProcessMessageElement(element, 'root', 0);
      end;
    end;
end;
}

{
procedure TBloomberg.ProcessMessageElement(element: P_blpapi_Event_t;
  parentName: PChar; parentNo: integer);
var
  elementName: PChar;
  valuesCount: integer;
  elementsCount: integer;
  i: integer;
  arrayElement: P_blpapi_Event_t;
  elementValue: Variant;
//  elementType: TDataType;
//  VField: TBlpField;
begin
  Assert(element <> nil);
  elementName := Blp_ElementName(element);

  if (Blp_ElementIsArray(element) = True) then
    begin
    // массив
    valuesCount := Blp_ValuesCount(element);
    if valuesCount > 0 then
      begin
      // обрабатываем каждый элемент массива
      for  i := 0 to valuesCount -1 do
        begin
        Blp_GetValueAsElement(element, @arrayElement, i);
        Assert(arrayElement <> nil);
        ProcessMessageElement(arrayElement, elementName, i);
        end;
      end;
    end
  else if (Blp_ElementIsComplex(element) = True) then
    begin
    // структура (!!! не массив !!!)
    elementsCount := Blp_ElementsCount(element);
    if elementsCount > 0 then
      begin
      // securityData
      if (elementName = 'securityData') then
        begin
        // добавляем объект security в ответ
        Assert(FResultData <> nil);
        FSecurity := FResultData.Add;
        end
      // securityError в securityData
      else if (parentName = 'securityData') and (elementName = 'securityError') then
        begin
        // добавляем объект securityError в security
        Assert(FSecurity <> nil);
        FSecurity.SecurityError := TBlpErrorInfo.Create;
        end
      // fieldExceptions в fieldExceptions
      else if (parentName = 'fieldExceptions') and (elementName = 'fieldExceptions') then
        begin
        // добавляем объект FieldException в security.FieldExceptions
        Assert(FSecurity <> nil);
        Assert(FSecurity.FieldExceptions <> nil);
        FFieldException := FSecurity.FieldExceptions.Add;
        end
      // fieldData в securityData (Reference request)
      else if (parentName = 'securityData') and (elementName = 'fieldData') then
        begin
        // создаем элемент fieldData в security.FieldsData
        Assert(FSecurity <> nil);
        Assert(FSecurity.FieldsData <> nil);
        FFieldData := FSecurity.FieldsData.Add;
        end
      // fieldData в fieldData (Historical request)
      else if (parentName = 'fieldData') and (elementName = 'fieldData') then
        begin
        // создаем элемент fieldData в security.FieldsData
        Assert(FSecurity <> nil);
        Assert(FSecurity.FieldsData <> nil);
        FFieldData := FSecurity.FieldsData.Add;
        end;

      // обрабатываем каждый элемент структуры
      for  i := 0 to elementsCount -1 do
        begin
        blpapi_Element_getElementAt(element, @arrayElement, i);
        Assert(arrayElement <> nil);
        ProcessMessageElement(arrayElement, elementName, i);
        end;
      end;
    end
  else
    begin
    // простой элемент
    elementValue := GetElementValue(element, elementType);

///Memo1.Lines.Add(Format('%s[%d]: Element %s = %s', [parentName, parentNo, eName, eValue]));
//ShowMessage(Format('Processing %s[%d]: Element %s = %s', [parentName, parentNo, elementName, elementValue]));

    if (parentName = 'securityData') and (elementName = 'security') then
      begin
      Assert(FSecurity <> nil);
      FSecurity.SecurityName := elementValue;
      end
    else if (parentName = 'securityData') and (elementName = 'sequenceNumber') then
      begin
      Assert(FSecurity <> nil);
      FSecurity.SequenceNumber := elementValue;
      end
    else if (parentName = 'securityError') and (elementName = 'code') then
      begin
      // Вставляем код ошибки в элемент security
      Assert(FSecurity <> nil);
      Assert(FSecurity.SecurityError <> nil);
      FSecurity.SecurityError.eiCode := elementValue;
      end
    else if (parentName = 'securityError') and (elementName = 'category') then
      begin
      // Вставляем категорию ошибки в элемент security
      Assert(FSecurity <> nil);
      Assert(FSecurity.SecurityError <> nil);
      FSecurity.SecurityError.eiCategory := elementValue;
      end
    else if (parentName = 'securityError') and (elementName = 'message') then
      begin
      // Вставляем сообщение ошибки в элемент security
      Assert(FSecurity <> nil);
      Assert(FSecurity.SecurityError <> nil);
      FSecurity.SecurityError.eiMessage := elementValue;
      end
    else if (parentName = 'securityError') and (elementName = 'subcategory') then
      begin
      Assert(FSecurity <> nil);
      Assert(FSecurity.SecurityError <> nil);
      FSecurity.SecurityError.eiSubcategory := elementValue;
      end
    else if (parentName = 'fieldExceptions') and (elementName = 'fieldId') then
      begin
      Assert(FFieldException <> nil);
      FFieldException.FieldId := elementValue;
      end
    else if (parentName = 'errorInfo') and (elementName = 'code') then
      begin
      Assert(FFieldException <> nil);
      FFieldException.ErrorInfo.eiCode := elementValue;
      end
    else if (parentName = 'errorInfo') and (elementName = 'category') then
      begin
      Assert(FFieldException <> nil);
      FFieldException.ErrorInfo.eiCategory := elementValue;
      end
    else if (parentName = 'errorInfo') and (elementName = 'message') then
      begin
      Assert(FFieldException <> nil);
      FFieldException.ErrorInfo.eiMessage := elementValue;
      end
    else if (parentName = 'errorInfo') and (elementName = 'subcategory') then
      begin
      Assert(FFieldException <> nil);
      FFieldException.ErrorInfo.eiSubcategory := elementValue;
      end
    else if (parentName = 'fieldData') then
      begin
      // добавляем объект field в FFields
      Assert(FFieldData <> nil);
      Assert(FFieldData.Fields <> nil);
//        VField := FFieldData.Fields.Add(elementType);
      VField := FFieldData.Fields.Add;
      Assert(VField <> nil);
      VField.Name := elementName;
      VField.Value := elementValue;
      FResultData.IsEmpty := False;
      end;
    end;

end;
}

{
function TBloomberg.CreateResultData(Data: TResponseData): Variant;
var
  i, j, k: integer;
  vSecurities:  Variant;
  vSecurity:  Variant;
  vSecurityError: Variant;
  vFields: Variant;
  vField: Variant;
  vFieldError: Variant;
  vFieldValues: Variant;
begin
  Assert(Data <> nil);
  // Цикл  по Securities
  vSecurities := Unassigned;
  if Length(Data.Securities) <> 0 then
    begin
    vSecurities := VarArrayCreate([Low(Data.Securities), High(Data.Securities)], varVariant);
    for i := Low(Data.Securities) to High(Data.Securities) do
      begin
      vSecurity := VarArrayCreate([0, 2], varVariant);
      vSecurity[0] := Data.Securities[i].SecurityName;

      vSecurityError := Unassigned;
      if Data.Securities[i].SecurityError <> nil then
        begin
        vSecurityError := VarArrayCreate([0, 4], varVariant);
        vSecurityError[0] := Data.Securities[i].SecurityError.Source;
        vSecurityError[1] := Data.Securities[i].SecurityError.Code;
        vSecurityError[2] := Data.Securities[i].SecurityError.Category;
        vSecurityError[3] := Data.Securities[i].SecurityError.Message;
        vSecurityError[4] := Data.Securities[i].SecurityError.Subcategory;
        end;
      vSecurity[1] := vSecurityError;

      vFields := Unassigned;
      if Length(Data.Securities[i].Fields) <> 0 then
        begin
        vFields := VarArrayCreate([Low(Data.Securities[i].Fields), High(Data.Securities[i].Fields)], varVariant);
        for j := Low(Data.Securities[i].Fields) to High(Data.Securities[i].Fields) do
          begin
          vField := Unassigned;
          vField := VarArrayCreate([0, 2], varVariant);
          vField[0] := Data.Securities[i].Fields[j].FieldName;
          vFieldError := Unassigned;
          if Data.Securities[i].Fields[j].FieldError <> nil then
            begin
            vFieldError := VarArrayCreate([0, 4], varVariant);
            vFieldError[0] := Data.Securities[i].Fields[j].FieldError.Source;
            vFieldError[1] := Data.Securities[i].Fields[j].FieldError.Code;
            vFieldError[2] := Data.Securities[i].Fields[j].FieldError.Category;
            vFieldError[3] := Data.Securities[i].Fields[j].FieldError.Message;
            vFieldError[4] := Data.Securities[i].Fields[j].FieldError.Subcategory;
            end;
          vField[1] := vFieldError;

          vFieldValues := Unassigned;
          if Length(Data.Securities[i].Fields[j].FieldValues) <> 0 then
            begin
            vFieldValues := VarArrayCreate([Low(Data.Securities[i].Fields[j].FieldValues), High(Data.Securities[i].Fields[j].FieldValues)], varVariant);
            for k := Low(Data.Securities[i].Fields[j].FieldValues) to High(Data.Securities[i].Fields[j].FieldValues) do
              begin
              vFieldValues := VarArrayCreate([0, 1], varVariant);
              vFieldValues[0] := Data.Securities[i].Fields[j].FieldValues[k].Name;
              vFieldValues[1] := Data.Securities[i].Fields[j].FieldValues[k].Value;
              end;
            end;

          vField[2] := vFieldValues;

          vFields[j] := vField;
          end;

        vSecurity[2] := vFields;
        end;


      vSecurities[i] := vSecurity;
      end;
    end;

  Result := vSecurities;
end;
}
end.
