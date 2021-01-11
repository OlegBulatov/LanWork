unit ProcModule;

interface

uses Oracle;

function GetRate(AIsin: string; AYear: integer; AUser: string; var RateID: double; var ErrorStr: string; Session: TOracleSession): integer;

implementation

uses BlpClient, BlpConsts, OracleData, SysUtils, Classes;

type
  TRatesLoader = class(TComponent)
  private
    FIsin: string;
    FYear: integer;
    FUser:  string;

    FCurrency: string;
    FMainExchange: string;

    FClient: TBlpClient;
    odsData: TOracleDataSet;

    function   GetRates(AExchange: string; var ErrorStr: string): integer;
    function   FindRate(AExchange: string): double;
  public
    constructor Create(AIsin: string; AYear: integer; AUser: string; Session: TOracleSession); reintroduce;
    destructor  Destroy; override;
    //
    function  FindIsinInfo: boolean;
    function  GetIsinInfo(var ErrorStr: string): integer;
    function  FindMainExchange(var ErrorStr: string): integer;
    function  GetMainRates(var ErrorStr: string): integer;
    function  FindMainRate: double;
    function  GetExchangeList(var ErrorStr: string): integer;
    function  FindRateInExchanges(var Rate: double; var ErrorStr: string): integer;
    function  GetMainYearRate(var Rate: double; var ErrorStr: string): integer;
  end;

// -----------------------------------------------------------------------------

function GetRate(AIsin: string; AYear: integer; AUser: string; var RateID: double;
  var ErrorStr: string; Session: TOracleSession): integer;
var
  Loader: TRatesLoader;
begin
  Loader := TRatesLoader.Create(AIsin, AYear, AUser, Session);

  // STEP-1 - ј надо ли выполн€ть STEP1
  if Loader.FindIsinInfo = False then
    begin
    // STEP1 - «апрос за данными по ISIN
    Result := Loader.GetIsinInfo(ErrorStr);
    if (Result <> 0) then
      begin
      Loader.Free;
      Exit;
      end;
    end;

  // STEP2 - ѕроверка полученных данных
  Result := Loader.FindMainExchange(ErrorStr);
  if Result <> 0  then
    begin
    Loader.Free;
    Exit;
    end;

  // STEP3 - запрос за ежедневными котировками год +/- кватал по ISIN
  Result := Loader.GetMainRates(ErrorStr);
  if (Result <> 0) then
    begin
    Loader.Free;
    Exit;
    end;

  // STEP4 - определ€ем котировку за год +/- квартал на основной бирже, если она получена
  RateID := 0;
  if ErrorStr <> 'No data found' then
    RateID := Loader.FindMainRate;

  // ≈сли нашли - выходим
  if RateID <> 0 then
    begin
    Loader.Free;
    Exit;
    end;

  // STEP5 - запрос за списком бирж
  Result := Loader.GetExchangeList(ErrorStr);
  if (Result <> 0) then
    begin
    Loader.Free;
    Exit;
    end;

  // STEP6 - определ€ем котировку  за год по списку бирж
  Result := Loader.FindRateInExchanges(RateID, ErrorStr);
  if Result <> 0 then
    begin
    Loader.Free;
    Exit;
    end;

  if RateID <> 0 then
    begin
    Loader.Free;
    Exit;
    end;

  // STEP7 - запрашиваем годовую котировку по ISIN
  Result := Loader.GetMainYearRate(RateID, ErrorStr);

  Loader.Free;
end;

{ TRatesLoader }

constructor TRatesLoader.Create(AIsin: string; AYear: integer; AUser: string; Session: TOracleSession);
begin
  inherited Create(nil);
  FIsin := AIsin;
  FYear := AYear;
  FUser := AUser;

  FClient := TBlpClient.Create(Self);

  odsData := TOracleDataSet.Create(Self);
  odsData.Session := Session;
end;

destructor TRatesLoader.Destroy;
begin
  odsData.Free;
  FClient.Free;
  inherited;
end;

function TRatesLoader.FindIsinInfo: boolean;
begin
  Result := False;
end;

function TRatesLoader.GetIsinInfo(var ErrorStr: string): integer;
begin
  FClient.ClearRequest;
  FClient.RequestType := DATABASE;
  FClient.RequestNo := 5;
  FClient.AddSecurity(FIsin, '/ISIN/' + FIsin);
  FClient.User := FUser;
  Result := FClient.SendRequest(ErrorStr);
  if ErrorStr = 'BAD_SEC' then
    Result := -1;
end;

function TRatesLoader.FindMainExchange(var ErrorStr: string): integer;
const
  vSQL =
    'SELECT PARSEKYABLE_DES,'           + #13#10 +
    '       TICKER,'                    + #13#10 +
    '       EXCH_CODE,'                 + #13#10 +
    '       MARKET_SECTOR_DES,'         + #13#10 +
    '       CRNCY'                      + #13#10 +
    'FROM   DPB_BL_PIPE.L100_ISIN_INFO' + #13#10 +
    'WHERE  ID_ISIN = ''%s''';
begin
  Result := 0;
  odsData.Close;
  odsData.SQL.Clear;
  odsData.SQL.Text := Format(vSQL, [FIsin]);
  odsData.Open;
  odsData.First;

  if odsData.IsEmpty then
    begin
    Result := -1;
    ErrorStr := 'ISIN ' + FIsin + ' не найден в L100';
    Exit;
    end;

  if odsData.FieldByName('CRNCY').IsNull then
    begin
    ErrorStr := 'Ќе найдена валюта номинала дл€ ISIN ' + FIsin;
    Exit;
    end;

  FCurrency := odsData.FieldByName('CRNCY').AsString;

  FMainExchange := '/ISIN/' + FIsin;

 //  if not (odsData.FieldByName('TICKER').IsNull or
//          odsData.FieldByName('EXCH_CODE').IsNull or
//          odsData.FieldByName('MARKET_SECTOR_DES').IsNull) then
//    FMainExchange := odsData.FieldByName('TICKER').AsString + ' ' +
//                     odsData.FieldByName('EXCH_CODE').AsString + ' ' +
//                     odsData.FieldByName('MARKET_SECTOR_DES').AsString
//  else
//    FMainExchange := odsData.FieldByName('PARSEKYABLE_DES').AsString;

//  if FMainExchange = '' then
//    begin
//    Result := -1;
//    ErrorStr := 'Ќе найдена основна€ биржа дл€ ISIN ' + FIsin;
//    end;
end;

function TRatesLoader.GetRates(AExchange: string; var ErrorStr: string): integer;
begin
  FClient.ClearRequest;
  FClient.RequestType := DATABASE;
  FClient.RequestNo := 6;
  FClient.AddSecurity(FIsin, AExchange);
  FClient.Currency := FCurrency;
  FClient.StartDate := StrToDate('01.10.' + IntToStr(FYear));
  FClient.EndDate := StrToDate('31.03.' + IntToStr(FYear + 1));
  FClient.User := FUser;
  Result := FClient.SendRequest(ErrorStr);
  if ErrorStr = 'BAD_SEC' then
    Result := -1;
end;

function TRatesLoader.GetMainRates(var ErrorStr: string): integer;
begin
  Result := GetRates(FMainExchange, ErrorStr);
end;

function TRatesLoader.FindRate(AExchange: string): double;
const
  vSQL =
    'SELECT RATE_VALUE,'                                                            + #13#10 +
    '       L110_ID'                                                                + #13#10 +
    'FROM   DPB_BL_PIPE.L110_RATES'                                                 + #13#10 +
    'WHERE  ID_ISIN = ''%s'''                                                       + #13#10 +
    'AND    RATE_SOURCE = ''%s'''                                                   + #13#10 +
    'AND    RATE_DATE = ( SELECT %s(RATE_DATE)'                                     + #13#10 +
    '                     FROM   DPB_BL_PIPE.L110_RATES'                            + #13#10 +
    '                     WHERE  ID_ISIN = ''%s'''                                  + #13#10 +
    '                     AND    RATE_SOURCE = ''%s'''                              + #13#10 +
    '                     AND    RATE_DATE BETWEEN TO_DATE(''%s'', ''dd.mm.yyyy'')' + #13#10 +
    '                                          AND TO_DATE(''%s'', ''dd.mm.yyyy'')' + #13#10 +
    '                     AND    NVL(RATE_VALUE, 0) <> 0 )';
begin
  Result := 0;

  // Ќаходим котировку за квартал назад (01.10.YYYY - 31.12.YYYY)
  odsData.Close;
  odsData.SQL.Clear;
  odsData.SQL.Text := Format(vSQL, [FIsin, AExchange, 'MAX', FIsin, AExchange, '01.10.'+IntToStr(FYear), '31.12.'+IntToStr(FYear)]);
  odsData.Open;
  odsData.First;

  if not ((odsData.IsEmpty) or (odsData.FieldByName('RATE_VALUE').IsNull) or (odsData.FieldByName('RATE_VALUE').AsFloat = 0)) then
    begin
    Result := odsData.FieldByName('L110_ID').AsFloat;
    Exit;
    end;

  // Ќаходим котировку за квартал вперед (01.01.YYYY - 31.03.YYYY)
  odsData.Close;
  odsData.SQL.Clear;
  odsData.SQL.Text := Format(vSQL, [FIsin, AExchange, 'MIN', FIsin, AExchange, '01.01.'+IntToStr(FYear+1), '31.03.'+IntToStr(FYear+1)]);
  odsData.Open;
  odsData.First;

  if not ((odsData.IsEmpty) or (odsData.FieldByName('RATE_VALUE').IsNull) or (odsData.FieldByName('RATE_VALUE').AsFloat = 0))then
    Result := odsData.FieldByName('L110_ID').AsFloat;
end;

function TRatesLoader.FindMainRate: double;
begin
  Result := FindRate(FMainExchange);
end;

function TRatesLoader.GetExchangeList(var ErrorStr: string): integer;
begin
  FClient.ClearRequest;
  FClient.RequestType := DATABASE;
  FClient.RequestNo := 7;
  FClient.AddSecurity(FIsin, '/ISIN/' + FIsin);
  FClient.User := FUser;
  Result := FClient.SendRequest(ErrorStr);
  if ErrorStr = 'BAD_SEC' then
    Result := -1;
end;

function TRatesLoader.FindRateInExchanges(var Rate: Double; var ErrorStr: string): integer;
const
  vSQL =
    'SELECT v1.TICKER_AND_EXCHANGE_CODE || '' '' || v2.MARKET_SECTOR_DES EXCH' + #13#10 +
    'FROM   DPB_BL_PIPE.L101_ISIN_TICKERS v1,'                                  + #13#10 +
    '       DPB_BL_PIPE.L100_ISIN_INFO v2'                                      + #13#10 +
    'WHERE  v1.ID_ISIN = v2.ID_ISIN'                                            + #13#10 +
    'AND    v1.ID_ISIN = ''%s'''                                                + #13#10 +
    'AND    v1.TICKER_AND_EXCHANGE_CODE IS NOT NULL'                            + #13#10 +
    'AND    v2.MARKET_SECTOR_DES IS NOT NULL';
var
  vExchanges:  TStringList;
  i: integer;
begin
  Result := 0;
  Rate := 0;

  odsData.Close;
  odsData.SQL.Clear;
  odsData.SQL.Text := Format(vSQL, [FIsin]);
  odsData.Open;
  odsData.First;
  if odsData.IsEmpty then
    begin
//    Result := -1;
    ErrorStr := 'Ќе найден список бирж';
    Exit;
    end;

  // ѕо всему списку:
  vExchanges := TStringList.Create;
  while not odsData.Eof do
    begin
    // «апоминаем биржу
    vExchanges.Add(odsData.FieldByName('EXCH').AsString);
    odsData.Next;
    end;

  for i := 0 to vExchanges.Count-1 do
    begin
    // «апрашиваем котировки за конец года +/- квартал
    Result := GetRates(vExchanges[i], ErrorStr);
    if Result <> 0 then
      break;

    // ќпредел€ем котировку за конеец  года +/- квартал
    Rate := 0;
    if ErrorStr <> 'No data found' then
      Rate := FindRate(vExchanges[i]);
    if Rate <> 0 then
      break;
    end;
end;

function TRatesLoader.GetMainYearRate(var Rate: double; var ErrorStr: string): integer;
begin
  FClient.ClearRequest;
  FClient.RequestType := DATABASE;
  FClient.RequestNo := 6;
  FClient.AddSecurity(FIsin, FMainExchange);
  FClient.Currency := FCurrency;
  FClient.StartDate := StrToDate('01.01.' + IntToStr(FYear));
  FClient.EndDate := StrToDate('31.12.' + IntToStr(FYear));
  FClient.Periodicity := 'YEARLY';
  FClient.User := FUser;
  Result := FClient.SendRequest(ErrorStr);

  if (Result <> 0) then
    Exit;

  Rate := 0;
  if ErrorStr <> 'No data found' then
    Rate :=  FindRate(FMainExchange);
end;

end.
