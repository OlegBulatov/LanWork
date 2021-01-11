unit BlpData;

interface

uses Classes, Controls, SysUtils;

type
  TClientRequest = class(TObject)
  private
    procedure PackChr(var Buf: Pointer; var BufLen: integer; Value: AnsiChar);
    procedure PackInt(var Buf: Pointer; var BufLen: integer; Value: integer);
    procedure PackStr(var Buf: Pointer; var BufLen: integer; Value: string);
    procedure PackStrList(var Buf: Pointer; var BufLen: integer; Value: TStrings);
    procedure PackDate(var Buf: Pointer; var BufLen: integer; Value: TDate);
  public
    RequestType: string;     // R - Reference, H - Historical, D - Database
    RequestNo: integer;      // [] for DB request
    // Isins: TStringList;
    Securities: TStringList; // В виде 'код ISIN'='/ISIN/XXXXXXXXXXXX' или 'код ISIN'='LUKOY RX EQUITY'
//    Fields: TStringList;     // [] with optional objects as TStringList of result field names and result field datatypes (PX_LAST=NUMBER)
//                             //    if no object is asssigned then result field name and datatype are the same as of the request field
    RequestFields: TStringList;  // В виде 'PX_LAST'
    ResponseFields: TStringList; // В виде 'PX_LAST=NUMBER'
    Overrides: TStringList;  // []
    Periodicity: string;     // []
    StartDate: TDate;        // []
    EndDate: TDate;          // []
    Currency: string;        // []
    User: string;            // []
    //
    ResultCode: integer;
    ResultData: string;
    //
    constructor Create;
    destructor  Destroy; override;
    //
    procedure Clear; virtual;
    function Pack: string;
  end;

  TServerRequest = class(TClientRequest)
  private
    function  UnpackChar(var Buf: Pointer): AnsiChar;
    function  UnpackInt(var Buf: Pointer): integer;
    function  UnpackStr(var Buf: Pointer): string;
    function  UnpackDate(var Buf: Pointer): TDate;
  public
    //  Для запросов через DB
    L020_IDS:     array of integer;
    ResultSql:    string;
    RequestNext:  integer;
    //
    DbResultCodes:  array of integer; // Response error codes
    DbResultErrors: array of string;
    //
    constructor Create;
    destructor  Destroy; override;
    //
    procedure Clear; override;
    procedure Unpack(const Data: string);
  end;

    // Pack:  TNRFJOPSECU
    //
    // 'T' - тип запроса
    // (Int)     Длина строки типа запроса
    // (Byte*N)  Строка типа  запроса в виде 'R' или 'H' или 'D'
    // [ Optional
    //   'N' - номер запроса
    //   (Int)      Номер запроса
    // 'R' - securities
    // (Int)     Число строк Security
    // (Int)     Длина строки Security
    // (Byte*N)  Строка Security в виде 'код ISIN'='/ISIN/XXXXXXXXXXXX' или 'код ISIN'='LUKOY RX EQUITY'
    // [ Optional
    //   'F' - request fields
    //   (Int)     Число строк Fields
    //   (Int)     Длина строки Fields
    //   (Byte*N)  Строка Field в виде 'ID_ISIN'
    // ]
    // [ Optional
    //   'J' - request fields
    //   (Int)     Число строк Fields
    //   (Int)     Длина строки Fields
    //   (Byte*N)  Строка Field в виде 'ID_ISIN'
    // ]
    // [ Optional
    //   'O' - overrides
    //   (Int)     Число строк Overrides
    //   (Int)     Длина строки Overrides
    //   (Byte*N)  Строка Overrides в виде ???
    // ]
    // [ Optional
    //   'P' - Periodicity
    //   (Int)     Длина строки Periodicity
    //   (Byte*N)  Строка Periodicity в виде DAILY, WEEKLY, MONTHLY, QUARTERLY, SEMI_ANNUALLY, YEARLY
    // ]
    // [ Optional
    //   'S' - Start date
    //   Double    TDateTime
    // ]
    // [ Optional
    //   'E' - Start date
    //   Double    TDateTime
    // ]
    // [ Optional
    //   'C' - Currency
    //   (Int)     Длина строки Currency
    //   (Byte*N)  Строка Currency в виде 'USD'
    // ]
    // [ Optional
    //   'U' - User
    //   (Int)     Длина строки User
    //   (Byte*N)  Строка User в виде 'ccccccc/ddddd/dgfdgd'
    // ]

  {
Array of TSecurity:
  SecurityName              XS0224002740
  SecurityError:
    Source                  446::bbdbl2
    Code                    15
    Category                Unknown/Invalid security [nid:446]
    Message                 BAD_SEC
    Subcategory             INVALID_SECURITY
  Array of TFieldException:
    FieldName               ID_ISIN
    FieldError:
      Source
      Code
      Category
      Message
      Subcategory
  Array of Records:
    Array or TField: (response fields)
      FieldName               ID_SIN
      FieldValue              XS0224002740
      ...

      FieldName               date
      FieldValue              01.01.2000
      FieldName               PX_ASK
      FieldValue              80.000
      FieldName               PX_LAST
      FieldValue              81.000
      ...

      FieldName               ADR
      FieldValue              HYDR LI
      ...
}

  TErrorInfo = class(TObject)
    Source: string;
    Code: integer;
    Category: string;
    Message: string;
    Subcategory:  string;
  end;

  TResponseField = class(TObject)
  public
    FieldName: string;
    FieldValue: string;
  end;

  TResponseRecord = class(TObject)
  private
    function GetFieldsCount: integer;
  public
    Fields: array of TResponseField;
    //
    constructor Create(RecordStruct: TStringList);
    destructor  Destroy; override;
    //
    function AddField: TResponseField;
    function GetField(AName: string): TResponseField;
    function IsEmpty: boolean;
    //
    property FieldsCount: integer read GetFieldsCount;
  end;

  TFieldException = class(TObject)
  public
    FieldName: string;
    FieldError: TErrorInfo;
    //
    constructor Create;
    destructor  Destroy; override;
    //
    function AddFieldError: TErrorInfo;
  end;

  TSecurityData = class(TObject)
  private
    function GetErrorCode: integer;
    function GetErrorSource: string;
    function GetErrorCategory: string;
    function GetErrorMessage: string;
    function GetErrorSubcategory: string;
    function GetRecordsCount: integer;
    function GetError: boolean;
    function GetFieldExceptionsCount: integer;
  public
    SecurityName: string;
    //eidData: array of TEidData;
    SecurityError: TErrorInfo;
    FieldExceptions: array of  TFieldException;
    SequenceNumber: integer;
    Records: array of TResponseRecord;

    ResponseRecordStruct: TStringList; // в виде 'response field name=response field datatype'
    //
    constructor Create;
    destructor  Destroy; override;
    //
    function AddSecurityError: TErrorInfo;
    function AddFieldException: TFieldException;
    function AddResponseRecord: TResponseRecord;
    //
    function IsErrorField(AField: string): boolean;
    property ErrorCode: integer read GetErrorCode;
    property ErrorSource: string read GetErrorSource;
    property ErrorCategory: string read GetErrorCategory;
    property ErrorMessage: string read GetErrorMessage;
    property ErrorSubcategory: string read GetErrorSubcategory;
    //
    property FieldExceptionsCount: integer read GetFieldExceptionsCount;
    property RecordsCount: integer read GetRecordsCount;
    property Error: boolean read GetError;
  end;

  TResponseData = class(TObject)
  private
    function GetSecuritiesCount: integer;
  public
    ResponseType: string;
    Securities: array of TSecurityData;
    //
    constructor Create;
    destructor  Destroy; override;
    //
    function AddSecurity: TSecurityData;
    function GetSecurity(const AName: string): TSecurityData;
    //
    property SecuritiesCount: integer read GetSecuritiesCount;
  end;

  TBlpParser = class(TObject)
  private
    FResponse: TResponseData;

    function GetStringDataName(Data: string): string;
    function GetStringDataValue(Data: string): string;
  public
    //
    constructor Create;
    destructor  Destroy; override;
    //
    function  Parse(Request: TClientRequest; Data: string): TResponseData;
  end;

function  StringsToText(AStrings: TStrings): string;

implementation

uses BlpConsts, Dialogs;

function StringsToText(AStrings: TStrings): string;
var
  i: integer;
begin
  Result := '';
  for i := 0 to AStrings.Count-1 do
    begin
    if Result <> '' then
      Result := Result + ', ';
    Result := Result + AStrings[i];
    end;
end;

{ TClientRequest }

constructor TClientRequest.Create;
begin
  Securities := TStringList.Create;
//  Fields     := TStringList.Create;
  RequestFields := TStringList.Create;
  ResponseFields := TStringList.Create;
  Overrides := TStringList.Create;
  Clear;
end;

destructor TClientRequest.Destroy;
begin
  Overrides.Free;
//  Fields.Free;
  ResponseFields.Free;
  RequestFields.Free;
  Securities.Free;
  inherited;
end;

procedure TClientRequest.Clear;
begin
  RequestType := '';
  RequestNo := 0;
  Securities.Clear;
//  Fields.Clear;
  RequestFields.Clear;
  ResponseFields.Clear;
  Overrides.Clear;
  Periodicity := '';
  StartDate := 0;
  EndDate := 0;
  Currency := '';
  User := '';
  ResultCode := 0;
  ResultData := '';
end;

procedure TClientRequest.PackChr(var Buf: Pointer; var BufLen: integer; Value: AnsiChar);
var
  P:   integer;
  Ptr: Pointer;
begin
  P := BufLen;
  BufLen := BufLen + SizeOf(AnsiChar);
  ReallocMem(Buf, BufLen);
  Ptr := PAnsiChar(Buf) + P;
  AnsiChar(Ptr^) := Value;
end;

procedure TClientRequest.PackInt(var Buf: Pointer; var BufLen: integer; Value: integer);
var
  P:   integer;
  Ptr: Pointer;
begin
  P := BufLen;
  BufLen := BufLen + SizeOf(integer);
  ReallocMem(Buf, BufLen);
  Ptr := PAnsiChar(Buf) + P;
  integer(Ptr^) := Value;
end;

procedure TClientRequest.PackStr(var Buf: Pointer; var BufLen: integer; Value: string);
var
  P:   integer;
  i:   integer;
  Ptr: Pointer;
begin
  PackInt(Buf, BufLen, Length(Value));
  P := BufLen;
  BufLen := BufLen + Length(Value);
  ReallocMem(Buf, BufLen);
  for i := 1 to Length(Value)  do
    begin
    Ptr := PAnsiChar(Buf) + P;
    AnsiChar(Ptr^) := AnsiChar(Value[i]);
    Inc(P);
    end;
end;

procedure TClientRequest.PackStrList(var Buf: Pointer; var BufLen: integer; Value: TStrings);
var
  i: integer;
begin
  PackInt(Buf, BufLen, Value.Count);
  for i := 0 to Value.Count-1 do
    PackStr(Buf, BufLen, Value[i]);
end;

procedure TClientRequest.PackDate(var Buf: Pointer; var BufLen: integer; Value: TDate);
var
  P:   integer;
  Ptr: Pointer;
begin
  P := BufLen;
  BufLen := BufLen + SizeOf(TDate);
  ReallocMem(Buf, BufLen);
  Ptr := PAnsiChar(Buf) + P;
  TDate(Ptr^) := Value;
end;

function TClientRequest.Pack: string;
var
  Buf: Pointer;
  BufLen: integer;
begin
  // Очищаем на всякий случай
  Buf := nil;
  BufLen := 0;

  // Тип запроса
  PackChr(Buf, BufLen, 'T');
  PackStr(Buf, BufLen, RequestType);
  // [Номер запроса]
  if RequestNo <> 0 then
    begin
    PackChr(Buf, BufLen, 'N');
    PackInt(Buf, BufLen, RequestNo);
    end;
  // Securities
  PackChr(Buf, BufLen, 'R');
  PackStrList(Buf, BufLen, Securities);
  // [Fields]
  //if Fields.Count > 0 then
  if RequestFields.Count > 0 then
    begin
    PackChr(Buf, BufLen, 'F');
//    PackStrList(Buf, BufLen, Fields);
    PackStrList(Buf, BufLen, RequestFields);
    end;
  if ResponseFields.Count > 0 then
    begin
    PackChr(Buf, BufLen, 'J');
    PackStrList(Buf, BufLen, ResponseFields);
    end;
  // [Overrides]
  if Overrides.Count > 0 then
    begin
    PackChr(Buf, BufLen, 'F');
    PackStrList(Buf, BufLen, Overrides);
    end;
  // [Periodicity]
  if Periodicity <> '' then
    begin
    PackChr(Buf, BufLen, 'P');
    PackStr(Buf, BufLen, Periodicity);
    end;
  // [Start date]
  if StartDate <> 0 then
    begin
    PackChr(Buf, BufLen, 'S');
    PackDate(Buf, BufLen, StartDate);
    end;
  // [End date]
  if EndDate <> 0 then
    begin
    PackChr(Buf, BufLen, 'E');
    PackDate(Buf, BufLen, EndDate);
    end;
  // [Currency]
  if Currency <> '' then
    begin
    PackChr(Buf, BufLen, 'C');
    PackStr(Buf, BufLen, Currency);
    end;
  // User
  if User <> ''  then
    begin
    PackChr(Buf, BufLen, 'U');
    PackStr(Buf, BufLen, User);
    end;

  // Last #0 (end of  string) ???
  PackChr(Buf, BufLen, #00);

  SetString(Result, PAnsiChar(Buf), BufLen-1);

  FreeMem(Buf);
end;

{ TServerRequest }

constructor TServerRequest.Create;
begin
  inherited;
  //
end;

destructor TServerRequest.Destroy;
begin
  L020_IDS := nil;
  DbResultCodes := nil;
  DbResultErrors := nil;
  inherited;
end;

procedure TServerRequest.Clear;
begin
  inherited;
  RequestNext := 0;
end;

function TServerRequest.UnpackChar(var Buf: Pointer): AnsiChar;
begin
  Result := AnsiChar(Buf^);
  Buf := PAnsiChar(Buf) + SizeOf(AnsiChar);
end;

function TServerRequest.UnpackInt(var Buf: Pointer): integer;
begin
  Result := Integer(Buf^);
  Buf := PAnsiChar(Buf) + SizeOf(integer);
end;

function TServerRequest.UnpackStr(var Buf: Pointer): string;
var
  Len, i: integer;
begin
  Result := '';
  Len := UnpackInt(Buf);
  for i := 1 to Len do
    begin
    Result := Result + AnsiChar(Buf^);
    Buf := PAnsiChar(Buf) ++ SizeOf(AnsiChar);
    end;
end;

function TServerRequest.UnpackDate(var Buf: Pointer): TDate;
begin
  Result := TDate(Buf^);
  Buf := PAnsiChar(Buf) + SizeOf(TDate);
end;

procedure TServerRequest.Unpack(const Data: string);
var
  Ptr: Pointer;
  Cnt: integer;
  i: integer;
  bts: TBytes;
begin
  Clear;
  if Data = '' then
    raise Exception.Create('Invalid request format: no request data');
  bts := TEncoding.UTF8.GetBytes(Data);
  // Тип запроса
  Ptr := Pointer(bts);
  if UnpackChar(Ptr) <> 'T' then
    raise Exception.Create('Invalid request format: no request type');
  RequestType := UnpackStr(Ptr);
  // [Номер запроса]
  if UnpackChar(Ptr) = 'N' then
    RequestNo := UnpackInt(Ptr)
  else
    Ptr := PAnsiChar(Ptr) - 1;
  // Securities
  if UnpackChar(Ptr) <> 'R' then
    raise Exception.Create('Invalid request format: no securities');
  Cnt := UnpackInt(Ptr);
  for i := 1 to Cnt do
    Securities.Add(UnpackStr(Ptr));
  // [Fields]
  if UnpackChar(Ptr) = 'F' then
    begin
    Cnt := UnpackInt(Ptr);
    for i := 1 to Cnt do
      RequestFields.Add(UnpackStr(Ptr));
    end
  else
    Ptr := PAnsiChar(Ptr) - 1;
  // [ResponseFields]
  if UnpackChar(Ptr) = 'J' then
    begin
    Cnt := UnpackInt(Ptr);
    for i := 1 to Cnt do
      ResponseFields.Add(UnpackStr(Ptr));
    end
  else
    Ptr := PAnsiChar(Ptr) - 1;
  // [Overrides]
  if UnpackChar(Ptr) = 'O' then
    begin
    Cnt := UnpackInt(Ptr);
    for i := 1 to Cnt do
      Overrides.Add(UnpackStr(Ptr));
    end
  else
    Ptr := PAnsiChar(Ptr) - 1;
  // [Periodicity]
  if UnpackChar(Ptr) = 'P' then
    Periodicity := UnpackStr(Ptr)
  else
    Ptr := PAnsiChar(Ptr) - 1;
  // [Start date]
  if UnpackChar(Ptr) = 'S' then
    StartDate := UnpackDate(Ptr)
  else
    Ptr := PAnsiChar(Ptr) - 1;
  // [End date]
  if UnpackChar(Ptr) = 'E' then
    EndDate := UnpackDate(Ptr)
  else
    Ptr := PAnsiChar(Ptr) - 1;
  // [Currency]
  if UnpackChar(Ptr) = 'C' then
    Currency := UnpackStr(Ptr)
  else
    Ptr := PAnsiChar(Ptr) - 1;
  // [User]
  if UnpackChar(Ptr) = 'U' then
    User := UnpackStr(Ptr)
  else
    Ptr := PAnsiChar(Ptr) - 1;
end;

{ TResponseData }

constructor TResponseData.Create;
begin
  inherited;
  Securities := nil;
end;

destructor TResponseData.Destroy;
var
  i: integer;
begin
  if Length(Securities) <> 0 then
    begin
    for i := Low(Securities) to High(Securities) do
      Securities[i].Free;
    Securities := nil;
    end;
  inherited;
end;

function TResponseData.AddSecurity: TSecurityData;
begin
  Result := TSecurityData.Create;
  SetLength(Securities, Length(Securities)+1);
  Securities[High(Securities)] := Result;
end;

function TResponseData.GetSecurity(const AName: string): TSecurityData;
var
  i: integer;
begin
  Result := nil;
  for i := Low(Securities) to High(Securities) do
    if Securities[i].SecurityName = AName then
      begin
      Result := Securities[i];
      Exit;
      end;
end;

function TResponseData.GetSecuritiesCount: integer;
begin
  Result := Length(Securities);
end;

{ TSecurityData }

constructor TSecurityData.Create;
begin
  inherited;
  ResponseRecordStruct := TStringList.Create;
  SecurityError := nil;
  FieldExceptions := nil;
  Records := nil;
end;

destructor TSecurityData.Destroy;
var
  i: integer;
begin
  ResponseRecordStruct.Free;
  SecurityError.Free;
  if Length(FieldExceptions) <> 0 then
    begin
    for i := Low(FieldExceptions) to High(FieldExceptions) do
      FieldExceptions[i].Free;
    FieldExceptions := nil;
    end;
  if Length(Records) <> 0 then
    begin
    for i := Low(Records) to High(Records) do
      Records[i].Free;
    Records := nil;
    end;
  inherited;
end;

function TSecurityData.AddSecurityError: TErrorInfo;
begin
  Result := TErrorInfo.Create;
  SecurityError := Result;
end;

function TSecurityData.AddFieldException: TFieldException;
begin
  Result := TFieldException.Create;
  SetLength(FieldExceptions, Length(FieldExceptions)+1);
  FieldExceptions[High(FieldExceptions)] := Result;
end;

function TSecurityData.AddResponseRecord: TResponseRecord;
begin
  Result := TResponseRecord.Create(ResponseRecordStruct);
  SetLength(Records, Length(Records)+1);
  Records[High(Records)] := Result;
end;

function TSecurityData.GetErrorCode: integer;
begin
  Result := 0;
  if SecurityError <> nil then
    Result := SecurityError.Code;
end;

function TSecurityData.GetErrorSource: string;
begin
  Result := '';
  if SecurityError <> nil then
    Result := SecurityError.Source;
end;

function TSecurityData.GetErrorCategory: string;
begin
  Result := '';
  if SecurityError <> nil then
    Result := SecurityError.Category;
end;

function TSecurityData.GetErrorMessage: string;
begin
  Result := '';
  if SecurityError <> nil then
    Result := SecurityError.Message;
end;

function TSecurityData.GetErrorSubcategory: string;
begin
  Result := '';
  if SecurityError <> nil then
    Result := SecurityError.Subcategory;
end;

function TSecurityData.GetFieldExceptionsCount: integer;
begin
  Result := Length(FieldExceptions);
end;

function TSecurityData.GetRecordsCount: integer;
begin
  Result := Length(Records);
end;

function TSecurityData.GetError: boolean;
begin
  Result := (SecurityError <> nil);
end;

function TSecurityData.IsErrorField(AField: string): boolean;
var
  i: integer;
begin
  Result := False;
  for i := Low(FieldExceptions) to High(FieldExceptions) do
    begin
    if FieldExceptions[i].FieldName = AField then
      begin
      Result := True;
      Exit;
      end;
    end;
end;

{ TFieldException }

constructor TFieldException.Create;
begin
  FieldError := nil;
end;

destructor TFieldException.Destroy;
begin
  FieldError.Free;
  FieldError := nil;
  inherited;
end;

function TFieldException.AddFieldError: TErrorInfo;
begin
  Result := TErrorInfo.Create;
  FieldError := Result;
end;

{ TFieldData }

{ TResponseRecord }

constructor TResponseRecord.Create(RecordStruct: TStringList);
var
  i: integer;
  vField: TResponseField;
begin
  for i := 0 to RecordStruct.Count-1 do
    begin
    vField := AddField;
    vField.FieldName := RecordStruct.Names[i];
    end;
end;

destructor TResponseRecord.Destroy;
var
  i: integer;
begin
  if Length(Fields) <> 0 then
    begin
    for i := Low(Fields) to High(Fields) do
      Fields[i].Free;
    Fields := nil;
    end;
  inherited;
end;

function TResponseRecord.AddField: TResponseField;
begin
  Result := TResponseField.Create;
  SetLength(Fields, Length(Fields)+1);
  Fields[High(Fields)] := Result;
end;

function TResponseRecord.GetFieldsCount: integer;
begin
  Result := Length(Fields);
end;

function TResponseRecord.GetField(AName: string): TResponseField;
var
  i: integer;
begin
  Result := nil;
  for i := Low(Fields) to High(Fields) do
    begin
    if Fields[i].FieldName = AName then
      begin
      Result := Fields[i];
      Exit;
      end;
    end;
end;

function TResponseRecord.IsEmpty: boolean;
var
  i: integer;
begin
  Result := True;
  for i := Low(Fields) to High(Fields) do
    begin
    if Fields[i].FieldValue <> '' then
      begin
      Result := False;
      Exit;
      end;
    end;
end;

{ TBlpParser }

constructor TBlpParser.Create;
begin
  inherited Create;
  FResponse := nil;
end;

destructor TBlpParser.Destroy;
begin
  FResponse.Free;
  inherited;
end;

function TBlpParser.GetStringDataName(Data: string): string;
var
  P: integer;
begin
  Result := '';
  P := Pos('=', Data);
  if P <> 0 then
    Result := Trim(Copy(Data, 1, P-1));
end;

function TBlpParser.GetStringDataValue(Data: string): string;
var
  P: integer;
begin
  Result := '';
  P := Pos('=', Data);
  if P <> 0 then
    Result := Trim(StringReplace(Copy(Data, P+1, Length(Data)), '"', '', [rfReplaceAll]));
end;

function TBlpParser.Parse(Request: TClientRequest; Data: string): TResponseData;
type
  TTagLevel = (tlResponse, tlSecuritiesList, tlSecurityData, tlEidsList, tlSecurityError, tlFieldExceptionsList,
    tlFieldException, tlFieldError, tlFieldsList, tlFieldData, tlValuesList, tlValue);
var
  BufList: TStringList;
  i, j: integer;
  TagLevel: array of TTagLevel;
  vCurrentSecurity: TSecurityData;
  vCurrentSecurityError: TErrorInfo;
  vCurrentFieldException: TFieldException;
  vCurrentFieldError: TErrorInfo;
  vCurrentResponseRecord: TResponseRecord;
  vCurrentField: TResponseField;
  vFieldName: string;
begin
  FResponse := TResponseData.Create;

  // Создаем структуру ответа на основании структуры запроса
  for i := 0 to Request.Securities.Count-1 do
    begin
    // Cоздаем и добавляем Security
    vCurrentSecurity := FResponse.AddSecurity;
    vCurrentSecurity.SecurityName := Request.Securities.Values[Request.Securities.Names[i]];
    // Заполняем ResponseRecordStruct по всем полям ответа
    for j := 0 to Request.ResponseFields.Count-1 do
        begin
       // Добавляем поле ответа, если его еще нет
       if vCurrentSecurity.ResponseRecordStruct.IndexOfName(Request.ResponseFields.Names[j]) = -1 then
            begin
            vCurrentSecurity.ResponseRecordStruct.Add(Request.ResponseFields[j]);
            end;
        end;
    end;


  BufList := TStringList.Create;
  BufList.Text := Data;

  for i := 0 to BufList.Count-1 do
    begin
    BufList[i] := Trim(BufList[i]);
    if BufList[i] = '' then
      BufList.Delete(i);
    end;

  SetLength(TagLevel, 0);
  vCurrentSecurity := nil;
  vCurrentSecurityError := nil;
  vCurrentFieldException := nil;
  vCurrentFieldError := nil;
  vCurrentResponseRecord := nil;
//  vCurrentField := nil;
  i := 0;
  while i < BufList.Count do
    begin
    if BufList[i] = '}' then
      // }
      begin
      // снижаем TagLevel
      SetLength(TagLevel, Length(TagLevel) - 1);
      end
    else if BufList[i] = 'ReferenceDataResponse = {' then
      // ReferenceDataResponse = {
      begin
      // Устанавливаем TagLevel и записываем тип ответа.
      SetLength(TagLevel, Length(TagLevel) + 1);
      TagLevel[High(TagLevel)] := tlResponse;
      FResponse.ResponseType := 'ReferenceDataResponse';
      end
    else if BufList[i] = 'HistoricalDataResponse = {' then
      // HistoricalDataResponse = {
      begin
      // Устанавливаем TagLevel и записываем тип ответа.
      SetLength(TagLevel, Length(TagLevel) + 1);
      TagLevel[High(TagLevel)] := tlResponse;
      FResponse.ResponseType := 'HistoricalDataResponse';
      end
    else if BufList[i] = 'securityData[] = {' then
      // securityData[] = {
      begin
      // Устанавливаем TagLevel
      SetLength(TagLevel, Length(TagLevel) + 1);
      TagLevel[High(TagLevel)] := tlSecuritiesList;
      end
    else if BufList[i] = 'securityData = {' then
      // securityData = {
      begin
      // Устанавливаем TagLevel [и создаем новую TSecurity]
      SetLength(TagLevel, Length(TagLevel) + 1);
      TagLevel[High(TagLevel)] := tlSecurityData;
      end
    else if GetStringDataName(BufList[i]) = 'security' then
      // security = "/isin/XS0224002740"
      begin
      if TagLevel[High(TagLevel)] = tlSecurityData then
        begin
        // Ищем security c таким названием
        vCurrentSecurity := FResponse.GetSecurity(GetStringDataValue(BufList[i]));
        Assert(vCurrentSecurity <> nil, 'Security ''' + GetStringDataValue(BufList[i]) + ''' not requested.');
        end;
      end
    else if BufList[i] = 'eidData[] = {' then
      // eidData[] = {
      begin
      // Устанавливаем TagLevel
      SetLength(TagLevel, Length(TagLevel) + 1);
      TagLevel[High(TagLevel)] := tlEidsList;
      end
    else if BufList[i] = 'securityError = {' then
      // securityError = {
      begin
      // Устанавливаем TagLevel и создаем TSecurityError
      SetLength(TagLevel, Length(TagLevel) + 1);
      TagLevel[High(TagLevel)] := tlSecurityError;
      Assert(vCurrentSecurity <> nil);
      vCurrentSecurityError := vCurrentSecurity.AddSecurityError;
      end
    else if GetStringDataName(BufList[i]) = 'source' then
      // source = "446::bbdbl2"
      begin
      // Запоминаем source ошибки
      if TagLevel[High(TagLevel)] = tlSecurityError then
        begin
        Assert(vCurrentSecurityError <> nil);
        vCurrentSecurityError.Source := GetStringDataValue(BufList[i]);
        end
      else if TagLevel[High(TagLevel)] = tlFieldError then
        begin
        Assert(vCurrentFieldError <> nil);
        vCurrentFieldError.Source := GetStringDataValue(BufList[i]);
        end;
      end
    else if GetStringDataName(BufList[i]) = 'code' then
      // code = 9
      begin
      // Запоминаем код ошибки
      if TagLevel[High(TagLevel)] = tlSecurityError then
        begin
        Assert(vCurrentSecurityError <> nil);
        vCurrentSecurityError.Code := StrToInt(GetStringDataValue(BufList[i]));
        end
      else if TagLevel[High(TagLevel)] = tlFieldError then
        begin
        Assert(vCurrentFieldError <> nil);
        vCurrentFieldError.Code := StrToInt(GetStringDataValue(BufList[i]));
        end;
      end
    else if GetStringDataName(BufList[i]) = 'category' then
      // category = "BAD_SEC"
      begin
      // Запоминаем категорию ошибки
      if TagLevel[High(TagLevel)] = tlSecurityError then
        begin
        Assert(vCurrentSecurityError <> nil);
        vCurrentSecurityError.Category := GetStringDataValue(BufList[i]);
        end
      else if TagLevel[High(TagLevel)] = tlFieldError then
        begin
        Assert(vCurrentFieldError <> nil);
        vCurrentFieldError.Category := GetStringDataValue(BufList[i]);
        end;
      end
    else if GetStringDataName(BufList[i]) = 'message' then
      // message = "Unknown/Invalid security [nid:446] "
      begin
      // Запоминаем сообщение ошибки
      if TagLevel[High(TagLevel)] = tlSecurityError then
        begin
        Assert(vCurrentSecurityError <> nil);
        vCurrentSecurityError.Message := GetStringDataValue(BufList[i]);
        end
      else if TagLevel[High(TagLevel)] = tlFieldError then
        begin
        Assert(vCurrentFieldError <> nil);
        vCurrentFieldError.Message := GetStringDataValue(BufList[i]);
        end;
      end
    else if GetStringDataName(BufList[i]) = 'subcategory' then
      // subcategory = "INVALID_SECURITY"
      begin
      // Запоминаем подкатегорию ошибки
      if TagLevel[High(TagLevel)] = tlSecurityError then
        begin
        Assert(vCurrentSecurityError <> nil);
        vCurrentSecurityError.Subcategory := GetStringDataValue(BufList[i]);
        end
      else if TagLevel[High(TagLevel)] = tlFieldError then
        begin
        Assert(vCurrentFieldError <> nil);
        vCurrentFieldError.Subcategory := GetStringDataValue(BufList[i]);
        end;
      end
    else if BufList[i] = 'fieldExceptions[] = {' then
      // fieldExceptions[] = {
      begin
      // Устанавливаем TagLevel
      SetLength(TagLevel, Length(TagLevel) + 1);
      TagLevel[High(TagLevel)] := tlFieldExceptionsList;
      end
    else if BufList[i] = 'fieldExceptions = {' then // новый FieldException
      // fieldExceptions = {
      begin
      // Устанавливаем TagLevel и создаем TFieldException
      SetLength(TagLevel, Length(TagLevel) + 1);
      TagLevel[High(TagLevel)] := tlFieldException;
      Assert(vCurrentSecurity <> nil);
      vCurrentFieldException := vCurrentSecurity.AddFieldException;
      end
    else if GetStringDataName(BufList[i]) = 'fieldId' then
      // fieldId = "PX_LAST"
      begin
      // Запоминаем название ошибочного поля
      if TagLevel[High(TagLevel)] = tlFieldException then
        begin
        Assert(vCurrentFieldException <> nil);
        vCurrentFieldException.FieldName := GetStringDataValue(BufList[i]);
        end;
      end
    else if BufList[i] = 'errorInfo = {' then
      // errorInfo = {
      begin
      // Устанавливаем TagLevel [и создаем TErrorInfo]
      SetLength(TagLevel, Length(TagLevel) + 1);
      TagLevel[High(TagLevel)] := tlFieldError;
      Assert(vCurrentFieldException <> nil);
      vCurrentFieldError := vCurrentFieldException.AddFieldError;
      end
    else if GetStringDataName(BufList[i]) = 'sequenceNumber' then
      // sequenceNumber = 0
      begin
      // Запоминаем номер sequence
      if TagLevel[High(TagLevel)] = tlSecurityData then
        begin
        Assert(vCurrentSecurity <> nil);
        vCurrentSecurity.SequenceNumber := StrToInt(GetStringDataValue(BufList[i]));
        end;
      end
    else if BufList[i] = 'fieldData[] = {' then // это только в Historical!!!
      // fieldData[] = {
      begin
      // Устанавливаем TagLevel
      SetLength(TagLevel, Length(TagLevel) + 1);
      TagLevel[High(TagLevel)] := tlFieldsList;
      end
    else if BufList[i] = 'fieldData = {' then // новая запись!!!
      // fieldData = {
      begin
      // Устанавливаем TagLevel
      SetLength(TagLevel, Length(TagLevel) + 1);
      TagLevel[High(TagLevel)] := tlFieldData;
      // Создаем новую запись
      Assert(vCurrentSecurity <> nil);
      vCurrentResponseRecord := vCurrentSecurity.AddResponseRecord;
      end
    else if TagLevel[High(TagLevel)] = tlFieldData then
      begin
      // Начало списка...
      if Pos('[]', BufList[i]) <> 0 then
        // LIST_ADRS[] = {
        begin
        // Устанавливаем TagLevel
        SetLength(TagLevel, Length(TagLevel) + 1);
        TagLevel[High(TagLevel)] := tlValuesList;
        end
      else // простые значения полей
        // ID_ISIN = "XS0224002740"
        // или
        // date = 2015-05-05
        // PX_ASK = 80.000000
        begin
        // Заменяем пробелы в имени поля на '_'
        vFieldName := StringReplace(GetStringDataName(BufList[i]), ' ', '_', [rfReplaceAll]);
        // достаем TField из ResponseRecord
        Assert(vCurrentResponseRecord <> nil);
        vCurrentField := vCurrentResponseRecord.GetField(vFieldName);
        // Запоминаем значение
        Assert(vCurrentField <> nil, vFieldName);
        vCurrentField.FieldValue := GetStringDataValue(BufList[i]);
        end;
      end
    else if TagLevel[High(TagLevel)] = tlValuesList then
      // Элемент списка
      begin
      // LIST_ADRS = {
      vFieldName := GetStringDataName(BufList[i]);
      if Request.RequestFields.IndexOf(vFieldName) <> -1 then
        begin // Есть такое поле в запросе
        if (BufList[i] = vFieldName + ' = {') then // Новая запись!!!
          begin
          // Устанавливаем TagLevel
          SetLength(TagLevel, Length(TagLevel) + 1);
          TagLevel[High(TagLevel)] := tlValue;
          // Создаем новую запись, если уже созданная не пустая
          Assert(vCurrentResponseRecord <> nil);
          if not vCurrentResponseRecord.IsEmpty then
            begin
            Assert(vCurrentSecurity <> nil);
            vCurrentResponseRecord := vCurrentSecurity.AddResponseRecord;
            end;
          end;
        end;
      end
    else if TagLevel[High(TagLevel)] = tlValue then
      // ADR = "HYDR    LI"
      begin
      // Заменяем пробелы в имени поля на '_'
      vFieldName := StringReplace(GetStringDataName(BufList[i]), ' ', '_', [rfReplaceAll]);
      // достаем TField из ResponseRecord
      Assert(vCurrentResponseRecord <> nil);
      vCurrentField := vCurrentResponseRecord.GetField(vFieldName);
      // Запоминаем значение
      Assert(vCurrentField <> nil);
      vCurrentField.FieldValue := GetStringDataValue(BufList[i]);
//ShowMessage(vCurrentFieldValue.Name + '=>' + vCurrentFieldValue.Value);
      end;

    Inc(i);
    end;

  BufList.Free;

  Result := FResponse;
end;

end.
