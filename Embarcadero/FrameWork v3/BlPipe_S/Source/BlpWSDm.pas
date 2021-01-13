unit BlpWSDm;

interface

uses Classes, Forms, Oracle, Db, OracleData, BlpData, Variants;


type
  TBlpDb = class(TDataModule)
    OracleSession: TOracleSession;
    odsTask: TOracleDataSet;
    odsFields: TOracleDataSet;
    odsArrays: TOracleDataSet;
    oqSaveRequest: TOracleQuery;
    odsTaskL025_REQUEST_TYPE: TStringField;
    odsTaskL025_PERIODICITY: TStringField;
    odsTaskL025_CURRENCY: TStringField;
    odsFieldsL026_FIELD_ID: TFloatField;
    odsFieldsL026_FIELD_NAME: TStringField;
    odsFieldsL026_DATATYPE: TStringField;
    odsArraysL027_FIELD_NAME: TStringField;
    odsArraysL027_DATATYPE: TStringField;
    oqSaveData: TOracleQuery;
    oqFinalize: TOracleQuery;
    odsTaskL025_NEXT: TFloatField;
    odsTaskL025_RESULT_PROC: TStringField;
    odsRequest: TOracleDataSet;
    odsRequestL020_ID: TFloatField;
    odsRequestL020_USER: TStringField;
    odsRequestL020_SECURITY: TStringField;
    odsRequestL020_PERIODICITY: TStringField;
    odsRequestL020_DATE_START: TDateTimeField;
    odsRequestL020_DATE_END: TDateTimeField;
    odsRequestL020_CURRENCY: TStringField;
    odsRequestL020_PARENT_ID: TFloatField;
    odsRequestL025_REQUEST_TYPE: TStringField;
    odsRequestL025_RESULT_PROC: TStringField;
    odsRequestL025_NEXT: TFloatField;
    odsRequestL025_ID: TFloatField;
    odsRequestL020_ISIN: TStringField;
  private
    procedure PrepareSaveQuery(Request: TServerRequest);
    function  FinalizeRequest(RequestID, ResultCode: integer; ResultInfo: string; L025_NEXT: Double): Double;
    procedure AppendStr(var StrDest: string; const Delimiter, StrToAppend: string);
    procedure GetRequestFields(Request: TServerRequest; L025_ID: Double);
    function  RequestNext(L020_ID: Double; var Buf: string): integer;
  public
//    FOwner: TFormMain;

    procedure GetDbRequestData(Request: TServerRequest; ParentRequestID: Double);
    function  SaveDbResultData(Request: TServerRequest; var Data: string): integer;
  end;

var
  BlpDb: TBlpDb;

implementation

uses SysUtils, BlpConsts;

{$R *.DFM}

{ TBlpDb }

procedure TBlpDb.AppendStr(var StrDest: string; const Delimiter, StrToAppend: string);
begin
  if StrDest = '' then
    StrDest := StrToAppend
  else
    StrDest := StrDest + Delimiter + StrToAppend;
end;

procedure TBlpDb.GetRequestFields(Request: TServerRequest; L025_ID: Double);
begin
  try
    // Fields - очищаем и заполняем из базы
    Request.RequestFields.Clear;
    Request.ResponseFields.Clear;

    odsFields.Close;
    odsFields.SetVariable('L025_ID', L025_ID);
    odsFields.Open;
    if odsFields.IsEmpty then
      raise Exception.CreateFmt('No fields set for request %.0f', [L025_ID]);
    while not odsFields.Eof do
      begin
      // Добавляем в RequestFields строку = odsFieldsL026_FIELD_NAME
      Request.RequestFields.Add(odsFieldsL026_FIELD_NAME.AsString);
      if (odsFieldsL026_DATATYPE.AsString <> 'ARRAY') then
        begin
        // Если не ARRAY - добавляем в ResponseFields строку 'odsFieldsL026_FIELD_NAME=odsFieldsL026_DATATYPE'
        Request.ResponseFields.Add(odsFieldsL026_FIELD_NAME.AsString + '=' + odsFieldsL026_DATATYPE.AsString);
        end
      else
        begin
        // Если ARRAY
        odsArrays.Close;
        odsArrays.SetVariable('L025_ID', L025_ID);
        odsArrays.SetVariable('L026_FIELD_ID', odsFieldsL026_FIELD_ID.AsFloat);
        odsArrays.Open;
        if odsArrays.IsEmpty then
          raise Exception.CreateFmt('No array fields set for request %.0f field "%s" (%d)', [L025_ID, odsFieldsL026_FIELD_NAME.AsString, odsFieldsL026_FIELD_ID.AsInteger]);
        while not odsArrays.Eof do
          begin
          // Проверяем, что такого поля еще нет
          if Request.ResponseFields.IndexOfName(odsArraysL027_FIELD_NAME.AsString) = -1 then
            // Добавляем в ResponseFields строку 'odsArraysL027_FIELD_NAME.AsString=odsArraysL027_DATATYPE', если ее там еще нет
            Request.ResponseFields.Add(odsArraysL027_FIELD_NAME.AsString + '=' + odsArraysL027_DATATYPE.AsString);
          odsArrays.Next;
          end;
        end;
      odsFields.Next;
      end;
  finally
    odsArrays.Close;
    odsFields.Close;
  end;
end;

procedure TBlpDb.GetDbRequestData(Request: TServerRequest; ParentRequestID: Double);
var
  i: integer;
begin
  try
    try
      Assert(Request <> nil);

      // достаем данные запроса из L025
      if not OracleSession.Connected then
        OracleSession.Connected := true;
      odsTask.SetVariable('L025_ID', Request.RequestNo);
      odsTask.Open;
      if odsTask.IsEmpty then
        raise Exception.CreateFmt('%d - invalid request number', [Request.RequestNo]);

      // заполняем структуру запроса:
      // тип запроса
      Request.RequestType := odsTaskL025_REQUEST_TYPE.AsString;

      // securities - уже заданы, не меняем, но задаем размерность L020_IDS, ResultCodes, ResultErrors
      SetLength(Request.L020_IDS, Request.Securities.Count);
      SetLength(Request.DbResultCodes, Request.Securities.Count);
      SetLength(Request.DbResultErrors, Request.Securities.Count);

      // fields - очищаем вместе с объектами и заполняем из базы
      GetRequestFields(Request, Request.RequestNo);

      // overrides - потом...

      // periodicity - если не задана в запросе, берем из базы
      if Request.Periodicity = '' then
        if not odsTaskL025_PERIODICITY.IsNull then
          Request.Periodicity := odsTaskL025_PERIODICITY.AsString;

      // dates - уже заданы в запросе

      // currency  - если не задана в запросе, берем из базы
      if Request.Currency = '' then
        if not odsTaskL025_CURRENCY.IsNull then
          Request.Currency := odsTaskL025_CURRENCY.AsString;

      // Процедура сохранения результатов
      if not odsTaskL025_RESULT_PROC.IsNull then
        Request.ResultSql := odsTaskL025_RESULT_PROC.AsString
      else
        raise Exception.CreateFmt('No result SQL set for request %d', [Request.RequestNo]);

      // Номер следующего запроса
      if not odsTaskL025_NEXT.IsNull then
        Request.RequestNext := odsTaskL025_NEXT.AsInteger;

      // создаем записи о запросах по каждой security
      for i := 0 to Request.Securities.Count-1 do
        begin
        oqSaveRequest.SetVariable('L020_REQUEST_DATE', Now);
        oqSaveRequest.SetVariable('L020_USER', Request.User);
        oqSaveRequest.SetVariable('ISIN', Request.Securities.Names[i]);
        oqSaveRequest.SetVariable('L020_SECURITY', Request.Securities.Values[Request.Securities.Names[i]]);
        oqSaveRequest.SetVariable('L025_ID', Request.RequestNo);
        oqSaveRequest.SetVariable('L020_PERIODICITY', Request.Periodicity);
        if Request.StartDate <> 0 then
          oqSaveRequest.SetVariable('L020_DATE_START', Request.StartDate);
        if Request.EndDate <> 0 then
          oqSaveRequest.SetVariable('L020_DATE_END', Request.EndDate);
        oqSaveRequest.SetVariable('L020_CURRENCY', Request.Currency);
        if ParentRequestID <> 0 then
          oqSaveRequest.SetVariable('L020_PARENT_ID', ParentRequestID);
        oqSaveRequest.Execute;
        Request.L020_IDS[i] := oqSaveRequest.GetVariable('L020_ID');
        end;
    except
      on E: Exception do
        begin
        raise Exception.CreateFmt('Error creating request: %s', [E.Message]);
        end;
    end;
  finally
    odsTask.Close;
  end;
end;

procedure TBlpDb.PrepareSaveQuery(Request: TServerRequest);
var
  vSaveSQL: string;
  i: integer;
  vType: integer;
begin
  // Готовим QUERY сохранения результатов
  oqSaveData.Clear;
  // Обязательные дополнительные параметры: ID запроса  и ISIN
  vSaveSQL := Request.ResultSql + '(:i_L020_ID,:i_ISIN';
  oqSaveData.DeclareVariable('i_L020_ID', otFloat);
  oqSaveData.DeclareVariable('i_ISIN', otString);

  for i := 0 to Request.ResponseFields.Count-1 do
    begin
    // Если такой переменной еще нет - создаем
    if oqSaveData.VariableIndex(Request.ResponseFields.Names[i]) = -1 then
        begin
        vSaveSQL := vSaveSQL + ',:' + Request.ResponseFields.Names[i];
        if Request.ResponseFields.Values[Request.ResponseFields.Names[i]] = 'NUMBER' then
          vType := otFloat
        else if Pos('VARCHAR', Request.ResponseFields.Values[Request.ResponseFields.Names[i]]) > 0 then
          vType := otString
        else if Request.ResponseFields.Values[Request.ResponseFields.Names[i]] = 'DATE' then
          vType := otDate
        else
          begin
        // генерируем ошибку
          raise Exception.CreateFmt('Ошибка запроса %d: ''%s'' - неправильный тип данных.', [
            Request.RequestNo,
            Request.ResponseFields.Values[Request.ResponseFields.Names[i]]
            ]);
          end;

        oqSaveData.DeclareVariable(Request.ResponseFields.Names[i], vType);
        end;
    end;

  vSaveSQL := vSaveSQL + ');';

  oqSaveData.SQL.Add('BEGIN');
  oqSaveData.SQL.Add(vSaveSQL);
  oqSaveData.SQL.Add('COMMIT;');
  oqSaveData.SQL.Add('END;');
end;

function TBlpDb.FinalizeRequest(RequestID, ResultCode: integer; ResultInfo: string; L025_NEXT: Double): Double;
var
  vResult: Char;
begin
  oqFinalize.SetVariable('L020_ID', RequestID);
  case ResultCode of
    NO_ERROR:         vResult := 'Y';
    INVALID_RESPONSE: vResult := 'E';
    SECURITY_ERROR:   vResult := 'S';
    SEC_NO_DATA:      vResult := 'N';
    FIELD_ERROR:      vResult := 'F';
    FLD_NO_DATA:      vResult := 'D';
    else              vResult := 'E';
  end;
  oqFinalize.SetVariable('L020_RESULT', vResult);
  oqFinalize.SetVariable('L020_ERROR_INFO', ResultInfo);
  oqFinalize.SetVariable('L025_NEXT', L025_NEXT);
  oqFinalize.Execute;
  Result := oqFinalize.GetVariable('RESULT');
end;

function TBlpDb.SaveDbResultData(Request: TServerRequest; var Data: string): integer;
var
  Parser: TBlpParser;
  Response: TResponseData;
  i, j, k, m: integer;
  vValue: string;
  SecDataFound: boolean;
  FldDataFound: TStringList;
  StdDateSeparator: Char;
  StdShortDateFormat: string;
//  StdTimeSeparator: Char;
  StdDecimalSeparator: Char;
  vL020_ID_NEXT: Double;
  Buf: string;
  vNextResult: integer;
  vFieldName: string;
begin
  Result := NO_ERROR;
  if Data = '' then Exit;

//TFormMain(FOwner).Log(Self, 6, 'SDEBUG: ' + Data, True); /// Для  отладки

  Assert(Request <> nil);
  Parser := nil;
  try
    // Парсим ответ
    Parser := TBlpParser.Create;
    Response := Parser.Parse(Request, Data);


//TFormMain(FOwner).Log(Self, LT_PARSED_DATA, 'SDEBUG: Response parsed:', True); /// Для  отладки
for i := 0 to Response.SecuritiesCount-1 do
  begin
  //TFormMain(FOwner).Log(Self, LT_PARSED_DATA, 'SDEBUG: Security ' + Response.Securities[i].SecurityName, True); // Для  отладки
  for j := 0 to Response.Securities[i].RecordsCount-1 do
    begin
    //TFormMain(FOwner).Log(Self, LT_PARSED_DATA, 'SDEBUG:   Record ' + IntToStr(j + 1), True); // Для  отладки
    for k := 0 to Response.Securities[i].Records[j].FieldsCount-1 do
      begin
      //TFormMain(FOwner).Log(Self, LT_PARSED_DATA, 'SDEBUG:     Field ' + Response.Securities[i].Records[j].Fields[k].FieldName + '=' + Response.Securities[i].Records[j].Fields[k].FieldValue, True); // Для  отладки
      end;
    end;
  end;

    PrepareSaveQuery(Request);
//TFormMain(FOwner).Log(Self, 6, 'SDEBUG: ' + oqSaveData.SQL.Text, True); /// Для  отладки

    // По каждой security
    for i := 0 to Response.SecuritiesCount-1 do
        begin
        try
            Request.DbResultCodes[i] := NO_ERROR;
            Request.DbResultErrors[i] := '';
            SecDataFound := False;
            if Response.Securities[i].Error = True then
                // Security has error
                begin
                Request.DbResultCodes[i] := SECURITY_ERROR;
                Request.DbResultErrors[i] := Response.Securities[i].SecurityError.Category;
                end
            else
                // Security has no error
                begin
                // Сохраняем результат по security в БД:

                // Очищаем переменные oqSaveData
                for j := 0 to oqSaveData.VariableCount-1 do
                   oqSaveData.SetVariable(oqSaveData.VariableName(j), Null);

                // Обязательные доп. параметры
                oqSaveData.SetVariable('i_L020_ID', Request.L020_IDS[i]);
                oqSaveData.SetVariable('i_ISIN', Request.Securities.Names[i]);

                // Сheck for error fields
                for j := 0 to Response.Securities[i].FieldExceptionsCount-1 do
                    begin
                    Request.DbResultCodes[i] := FIELD_ERROR;
                    AppendStr(Request.DbResultErrors[i], '; ', Response.Securities[i].FieldExceptions[j].FieldName + ': ' + Response.Securities[i].FieldExceptions[j].FieldError.Category);
                    end;

                FldDataFound := TStringList.Create;
                // По каждой записи
                for j := 0 to Response.Securities[i].RecordsCount-1 do
                    begin
                    // По каждому полю
                    for k := 0 to Response.Securities[i].Records[j].FieldsCount-1 do
                        begin
                        vFieldName := Response.Securities[i].Records[j].Fields[k].FieldName;

                        // Add FldDataFound '0' string for this field (if field is not in FieldExceptions)
                        if Response.Securities[i].IsErrorField(vFieldName) = False then
                            if FldDataFound.IndexOfName(vFieldName) = -1 then
                                FldDataFound.Add(vFieldName + '=0');

                        vValue := Response.Securities[i].Records[j].Fields[k].FieldValue;
//TFormMain(FOwner).Log(Self, 6, 'SDEBUG: ' + vFieldName + '=>' + vValue, True);
                        if vValue <> '' then
                            begin
                            SecDataFound := True;
                            FldDataFound.Values[vFieldName] := '1';

                            if oqSaveData.VariableType(oqSaveData.VariableIndex(vFieldName)) = otFloat then
                                // float
                                begin
                                StdDecimalSeparator := FormatSettings.DecimalSeparator;
                                FormatSettings.DecimalSeparator := '.';
                                oqSaveData.SetVariable(vFieldName, StrToFloat(vValue));
                                FormatSettings.DecimalSeparator := StdDecimalSeparator;
                                end
                            else if oqSaveData.VariableType(oqSaveData.VariableIndex(vFieldName)) = otDate then
                                // date
                                begin
                                StdDateSeparator := FormatSettings.DateSeparator;
                                StdShortDateFormat := FormatSettings.ShortDateFormat;
                                FormatSettings.DateSeparator := '-';
                                FormatSettings.ShortDateFormat := 'yyyy-MM-dd';
                                oqSaveData.SetVariable(vFieldName, StrToDate(vValue));
                                FormatSettings.DateSeparator :=  StdDateSeparator;
                                FormatSettings.ShortDateFormat := StdShortDateFormat;
                                end
                            else
                                // string
                                oqSaveData.SetVariable(vFieldName, vValue);
                            end;
                        end; // k цикл по fields

                    if SecDataFound = True then
                        begin
//TFormMain(FOwner).Log(Self, 6, 'SDEBUG: ' + oqSaveData.SQL.Text, True); /// Для  отладки
                        oqSaveData.Execute;
//TFormMain(FOwner).Log(Self, 6, 'SDEBUG: Saved', True); /// Для  отладки
                        end;
                    end; // j цикл по записям

                for j := 0 to FldDataFound.Count-1 do
                    if FldDataFound.Values[FldDataFound.Names[j]] = '0' then
                        begin
                        Request.DbResultCodes[i] := FLD_NO_DATA;
                        AppendStr(Request.DbResultErrors[i], '; ', FldDataFound.Names[j] + ': No data found');
                        end;
                FldDataFound.Free;

                if SecDataFound = False then
                    begin
                    Request.DbResultCodes[i] := SEC_NO_DATA;
                    Request.DbResultErrors[i] := 'No data found';
                    end;
            end; // Security has no error

//TFormMain(FOwner).Log(Self, 6, 'SDEBUG: Finalizing ' + IntToStr(Request.L020_IDS[i]), True); /// Для  отладки

            vL020_ID_NEXT := FinalizeRequest(Request.L020_IDS[i], Request.DbResultCodes[i], Request.DbResultErrors[i], Request.RequestNext);

//TFormMain(FOwner).Log(Self, 6, 'SDEBUG: Next request ' + FloatToStr(vL020_ID_NEXT), True); /// Для  отладки

            // Здесь сделать следующий запрос цепочки
            if vL020_ID_NEXT <> 0 then
                begin
                vNextResult := RequestNext(vL020_ID_NEXT, Buf);
                if vNextResult <> 0 then
                    begin
                    Request.DbResultCodes[i] := vNextResult;
                    Request.DbResultErrors[i] := Buf;
                    end;
                end;
        except
            on E: Exception do
                begin
                Request.DbResultCodes[i] := INVALID_RESPONSE;
                Request.DbResultErrors[i] := E.Message;
                raise; // Лог в MainForm.SendRequest
                end;
        end; // try
        end; // i цикл по securities

    // Формируем общие код и описание ошибки общего результата всего запроса
    Data := '*Y*';
    for  i := 0 to Response.SecuritiesCount-1 do
      begin
      if (Request.DbResultCodes[i] = FLD_NO_DATA) and (Data[2] <> 'E') then
        begin
        Data[2] := 'D';
        Result := FLD_NO_DATA;
        end
      else if (Request.DbResultCodes[i] = FIELD_ERROR) and (Data[2] <> 'E') then
        begin
        Data[2] := 'F';
        Result := FIELD_ERROR;
        end
      else if (Request.DbResultCodes[i] = SEC_NO_DATA) and (Data[2] <> 'E') then
        begin
        Data[2] := 'N';
        Result := SEC_NO_DATA;
        end
      else if (Request.DbResultCodes[i] = SECURITY_ERROR) and (Data[2] <> 'E') then
        begin
        Data[2] := 'S';
        Result := SECURITY_ERROR;
        end
      else if Request.DbResultCodes[i] = INVALID_RESPONSE then
        begin
        Data[2] := 'E';
        Result := INVALID_RESPONSE;
        end;

      if Request.DbResultErrors[i] <> '' then
        AppendStr(Data, '; ', Request.DbResultErrors[i]);
      end; // end for
  finally
    Parser.Free;
  end;
end;

function TBlpDb.RequestNext(L020_ID: Double; var Buf: string): integer;
var
  vRequest: TServerRequest;
begin
  Result := 0;
  Buf := '';
  vRequest := nil;
  try
    // Формируем новый запрос на 1 security
    vRequest:= TServerRequest.Create;
    odsRequest.SetVariable('L020_ID', L020_ID);
    odsRequest.Open;
    if not odsRequest.IsEmpty then
      begin
      vRequest.RequestType := odsRequestL025_REQUEST_TYPE.AsString;
      vRequest.Securities.Add(odsRequestL020_ISIN.AsString + '=' + odsRequestL020_SECURITY.AsString);
      SetLength(vRequest.L020_IDS, vRequest.Securities.Count);
      SetLength(vRequest.DbResultCodes, vRequest.Securities.Count);
      SetLength(vRequest.DbResultErrors, vRequest.Securities.Count);
      GetRequestFields(vRequest, odsRequestL025_ID.AsFloat);
      // overrides - потом...
      vRequest.Periodicity := odsRequestL020_PERIODICITY.AsString;
      vRequest.StartDate := odsRequestL020_DATE_START.AsDateTime;
      vRequest.EndDate := odsRequestL020_DATE_END.AsDateTime;
      vRequest.Currency := odsRequestL020_CURRENCY.AsString;
      vRequest.ResultSql := odsRequestL025_RESULT_PROC.AsString;
      vRequest.RequestNext := odsRequestL025_NEXT.AsInteger;
      vRequest.User := odsRequestL020_USER.AsString;
      vRequest.L020_IDS[0] := Trunc(L020_ID);

//TFormMain(FOwner).Log(Self, 6, 'SDEBUG: Next request ' + FloatToStr(L020_ID), True); /// Для  отладки

      //TFormMain(FOwner).SendRequest(vRequest, Buf); // Здесь может быть Exception

//TFormMain(FOwner).Log(Self, 6, 'SDEBUG: Request ' + FloatToStr(L020_ID) + ' result ' + IntToStr(Result), True); /// Для  отладки

      Result := SaveDbResultData(vRequest, Buf); // здесь может быть Exception:
      end;
  finally
    odsRequest.Close;
    vRequest.Free;
  end;
end;

end.
