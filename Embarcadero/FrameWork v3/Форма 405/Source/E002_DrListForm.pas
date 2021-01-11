unit E002_DrListForm;

interface

uses
  frm04_ListForm, StdCtrls, ComCtrls, ExtCtrls, Oracle, Db, OracleData, Menus,
  ActnList, Windows, Grids, DBGrids, xxxDbLookupCheckCombo, E002_PeriodFilterFrame,
  E002_SecTypeFilterFrame, frm00_ParentForm, untParams, fm000_Parent,
  fm008_DBObjectFrame, fm021_CheckBoxFrame, fm020_LookUpFrame,
  fm033_PeriodFilterFrame, Classes, fm31_FilterFrame, Forms, fmSeach,
  xxxDBGrid, ToolWin, Controls, Variants;

type
  TRefreshListType = (rtManual, rtAuto);

  TE002_DrList = class(Tfrm04_List)
    paTop: TPanel;
    oqIsinList: TOracleQuery;
    GroupBox1: TGroupBox;
    ListPeriodFilter: TE002_PeriodFilter;
    btnRefreshIsinList: TButton;
    ListSecTypeFilter: TE002_SecTypeFilter;
    odsListISIN: TStringField;
    GroupBox2: TGroupBox;
    cbNewOnly: TCheckBox;
    Button2: TButton;
    odsListREQUESTED: TDateTimeField;
    ToolButton5: TToolButton;
    odsListADR_UNDL_TICKER: TStringField;
    odsListADR_SH_PER_ADR: TFloatField;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    menuSrc: TPopupMenu;
    actSrc405: TAction;
    N4051: TMenuItem;
    odsListT055_ID_S: TFloatField;
    odsListT055_ID_E: TFloatField;
    oqPeriod: TOracleQuery;
    sb1: TStatusBar;
    odsListSTATE: TStringField;
    odsListB_DR_TICKER: TStringField;
    odsListB_DR_EXCH_CODE: TStringField;
    odsListB_DR_SEC_TYPE: TStringField;
    odsListB_DR_ISSUER: TStringField;
    odsListB_DR_ISSUER_INN: TStringField;
    odsListB_DR_ISSUER_COUNTRY: TStringField;
    odsListR_DR_TICKER: TStringField;
    odsListR_DR_EXCH_CODE: TStringField;
    odsListR_DR_SEC_TYPE: TStringField;
    odsListR_DR_ISSUER: TStringField;
    odsListR_DR_ISSUER_INN: TStringField;
    odsListR_DR_ISSUER_COUNTRY: TStringField;
    odsListB_SHS_ISIN: TStringField;
    odsListB_SHS_TICKER: TStringField;
    odsListB_SHS_EXCH_CODE: TStringField;
    odsListB_SHS_SEC_TYPE: TStringField;
    odsListB_SHS_ISSUER: TStringField;
    odsListB_SHS_ISSUER_COUNTRY: TStringField;
    odsListB_SHS_ISSUER_INN: TStringField;
    odsListR_SHS_ISIN: TStringField;
    odsListR_SHS_TICKER: TStringField;
    odsListR_SHS_EXCH_CODE: TStringField;
    odsListR_SHS_SEC_TYPE: TStringField;
    odsListR_SHS_ISSUER: TStringField;
    odsListR_SHS_ISSUER_INN: TStringField;
    odsListR_SHS_ISSUER_COUNTRY: TStringField;
    actSrc711: TAction;
    N7111: TMenuItem;
    actSrcND: TAction;
    actSrcND1: TMenuItem;
    odsListT403_SRC: TStringField;
    cbIssuerCountry: TCheckBox;
    lcbIssuerCountry: TxxxDBLookupCheckCombo;
    odsIssuerCountry: TOracleDataSet;
    dsIssuerCountry: TDataSource;
    cbIndustry: TCheckBox;
    lcbIndustry: TxxxDBLookupCheckCombo;
    odsIndustry: TOracleDataSet;
    dsIndustry: TDataSource;
    odsListB_DR_IS_RUSSIA: TStringField;
    odsIssuerCountryDR_ISSUER_COUNTRY_CODE: TStringField;
    odsIndustryDR_ISSUER_INDUSTRY_DESC: TStringField;
    odsListB_DR_IS_BANK: TStringField;
    odsIssuerCountryDR_ISSUER_COUNTRY_DESC: TStringField;
    odsIndustryDR_ISSUER_INDUSTRY_CODE: TStringField;
    odsListIS_NEW: TFloatField;
    odsListT403_T030_IDS: TStringField;
    actSrc415: TAction;
    N4151: TMenuItem;
    btnBlpCall: TToolButton;
    MenuDirectRequest: TPopupMenu;
    actDirectRequestCurrent: TAction;
    actDirectRequestSelected: TAction;
    actDirectRequestNew: TAction;
    actDirectRequestAll: TAction;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    oqSaveDR_Data: TOracleQuery;
    odsListB_DR_MARKET_STATUS: TStringField;
    odsListB_SHS_MARKET_STATUS: TStringField;
    cbHideSuccess: TCheckBox;
    odsListIS_FULL: TFloatField;
    oqLink: TOracleQuery;
    odsListT403_SEC_TYPES_F: TStringField;
    odsListT403_SEC_TYPES: TStringField;
    actSources: TAction;
    N17: TMenuItem;
    N16: TMenuItem;
    odsListT403_CREATE_DATE: TDateTimeField;
    odsListISIN_ERR: TFloatField;
    odsFetchRecord: TOracleDataSet;
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshIsinListClick(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSrc405Execute(Sender: TObject);
    procedure actSrc711Execute(Sender: TObject);
    procedure actSrcNDExecute(Sender: TObject);
    procedure odsListAfterOpen(DataSet: TDataSet);
    procedure cbIssuerCountryClick(Sender: TObject);
    procedure cbIndustryClick(Sender: TObject);
    procedure actSrc415Execute(Sender: TObject);
    procedure actDirectRequestCurrentExecute(Sender: TObject);
    procedure actDirectRequestCurrentUpdate(Sender: TObject);
    procedure actDirectRequestNewUpdate(Sender: TObject);
    procedure actDirectRequestNewExecute(Sender: TObject);
    procedure actDirectRequestSelectedExecute(Sender: TObject);
    procedure actDirectRequestSelectedUpdate(Sender: TObject);
    procedure actDirectRequestAllUpdate(Sender: TObject);
    procedure actDirectRequestAllExecute(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure actSourcesUpdate(Sender: TObject);
    procedure actSourcesExecute(Sender: TObject);
  private
    FRefreshListType: TRefreshListType;
    procedure RefreshFooter;
    procedure SendRequestL(AIsin: string; AUser: string);
    procedure CreateEmissionsList(const ATextIDS: string; var AT030_IDS: TFloatArray);
    procedure CreateSecTypesList(const Src: string; var Dest: TStrArray);
    //
    procedure PrepareFetchSQL;
    procedure RefreshOneRecord;
  public
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  E002_DrList: TE002_DrList;

implementation

uses
  SysUtils, Graphics, dm005_MainData, frm01_MainForm,
  BlpClient, BlpConsts, untMessages, E002_DrLinkForm,
  E002_SourcesDlg;

{$R *.DFM}

{ TE002_DrList }

class function TE002_DrList.GetSelfClass: Tfrm00_Parents;
begin
  Result := TE002_DrList;
end;

class function TE002_DrList.GetSelfForm: Tfrm00_Parent;
begin
  Result := E002_DrList;
end;

class procedure TE002_DrList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(E002_DrList) := AForm;
end;

procedure TE002_DrList.FormCreate(Sender: TObject);
begin
  inherited;
  ListPeriodFilter.InitFrame(Self);
  ListSecTypeFilter.InitFrame(Self);
  ListSecTypeFilter.SetKeyValuesStr(['DR','DR1','DR2','OTHER','-']);

  cbIssuerCountry.Checked := False;
  odsIssuerCountry.Close;
  odsIssuerCountry.Open;

  cbIndustry.Checked := False;
  odsIndustry.Close;
  odsIndustry.Open;

  sb1.Panels.Clear;
end;

procedure TE002_DrList.RefreshFooter;
var
  vTotal: integer;
  vNew: integer;
  vText: string;
  vWidth: integer;
  vFrom: string;
  vTo: string;
begin
  sb1.Panels.Clear;

  odsList.DisableControls;
  vTotal := 0;
  vNew := 0;
  odsList.First;
  while not odsList.Eof do
    begin
    Inc(vTotal);
    if odsListIS_NEW.AsInteger = 1 then
      Inc(vNew);
    odsList.Next;
    end;
  odsList.First;
  odsList.EnableControls;

  vText := ' Всего ' + IntToStr(vTotal) + '   Новых ' + IntToStr(vNew) + ' ';
  sb1.Panels.Add;
  vWidth := sb1.Canvas.TextWidth(vText);
  sb1.Panels[0].Width := vWidth + 16;
  sb1.Panels[0].Text := vText;
  if not odsList.IsEmpty then
    begin
    if odsListT055_ID_S.AsInteger <> -1 then
      oqPeriod.SetVariable('T055_ID', odsListT055_ID_S.AsFloat)
    else
      begin
      ListPeriodFilter.odsList.First;
      oqPeriod.SetVariable('T055_ID', ListPeriodFilter.odsListT055_ID.AsFloat);
      end;
    oqPeriod.Execute;
    if not oqPeriod.Eof then
      vFrom := oqPeriod.Field(0);

    if odsListT055_ID_E.AsInteger <> -1 then
      oqPeriod.SetVariable('T055_ID', odsListT055_ID_E.AsFloat)
    else
      begin
      ListPeriodFilter.odsList2.Last;
      oqPeriod.SetVariable('T055_ID', ListPeriodFilter.odsList2T055_ID.AsFloat);
      end;
    oqPeriod.Execute;
    if not oqPeriod.Eof then
      vTo := oqPeriod.Field(0);
    vText := ' Список ISIN с ' + vFrom + ' по ' + vTo + ' от ' + odsListT403_CREATE_DATE.AsString;
    sb1.Panels.Add;
    vWidth := sb1.Canvas.TextWidth(vText);
    sb1.Panels[1].Width := vWidth;
    sb1.Panels[1].Text := vText;
    end;
end;

procedure TE002_DrList.odsListAfterOpen(DataSet: TDataSet);
begin
  RefreshFooter;
end;

procedure TE002_DrList.btnRefreshIsinListClick(Sender: TObject);
var
  vCursor: TCursor;
  vSecTypes: TStrArray;
  i: integer;
  vTypes: Variant;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  vSecTypes := nil;
  if FRefreshListType = rtAuto then
    begin
    SetLength(vSecTypes, 0);
    CreateSecTypesList(odsListT403_SEC_TYPES_F.AsString, vSecTypes);
    end;

  odsList.Close;
  sb1.Panels.Clear;
  sb1.Panels.Add;
  sb1.Panels[0].Text := ' Обновление списка... ';
  Application.ProcessMessages;

  if ListPeriodFilter.IsChecked then
    begin
    oqIsinList.SetVariable('T055_ID_S', ListPeriodFilter.KeyValueFloat);
    oqIsinList.SetVariable('T055_ID_E', ListPeriodFilter.KeyValue2Float);
    end
  else
    begin
    ListPeriodFilter.odsList.First;
    oqIsinList.SetVariable('T055_ID_S', ListPeriodFilter.odsListT055_ID.AsFloat);
    ListPeriodFilter.odsList2.Last;
    oqIsinList.SetVariable('T055_ID_E', ListPeriodFilter.odsList2T055_ID.AsFloat);
    end;

  if FRefreshListType = rtAuto then
    begin
//    CreateSecTypesList(odsListT403_SEC_TYPES_F.AsString, vSecTypes);
    vTypes := VarArrayCreate([0, Length(vSecTypes)-1], varVariant);
    for i := Low(vSecTypes) to High(vSecTypes) do
      begin
      vTypes[i] := vSecTypes[i];
      end;
    FRefreshListType := rtManual;
    end
  else if ListSecTypeFilter.IsChecked then
    begin
    vSecTypes := ListSecTypeFilter.KeyValuesStr;
    vTypes := VarArrayCreate([0, Length(ListSecTypeFilter.KeyValuesStr)-1], varVariant);
    for i := Low(vSecTypes) to High(vSecTypes) do
      begin
      vTypes[i] := vSecTypes[i];
      end;
    end
  else
    begin
    vTypes := VarArrayCreate([0, 1], varVariant);
    vTypes[0] := 'ALL';
    end;

  oqIsinList.SetVariable('DR_SEC_TYPES', vTypes);
  oqIsinList.Execute;

  vSecTypes := nil;
  Screen.Cursor := vCursor;
  actRefreshExecute(Self);
end;

procedure TE002_DrList.cbIssuerCountryClick(Sender: TObject);
begin
  lcbIssuerCountry.Enabled := cbIssuerCountry.Checked;
end;

procedure TE002_DrList.cbIndustryClick(Sender: TObject);
begin
  lcbIndustry.Enabled := cbIndustry.Checked;
end;

procedure TE002_DrList.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  vFontColor: TColor;
  vBrushColor: TColor;
begin
  vFontColor := xxxDbGrid.Font.Color;
  vBrushColor := xxxDbGrid.Color;

  if (Column.FieldName = 'ISIN') and (odsListISIN_ERR.AsFloat <> 0) then
    begin
    vBrushColor := clRed;
    if odsListIS_NEW.AsInteger = 1 then
      vFontColor := clWhite;
    end
  else if odsListIS_NEW.AsInteger = 1 then
    begin
    vFontColor := clRed;
//    vBrushColor := clDkGray;
    end;

  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
    begin
    if xxxDBGrid.SelectedRows.CurrentRowSelected then
      begin
      if gdSelected in State then
        begin
        xxxDBGrid.Canvas.Brush.Color := clBlue;
        xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
        end
      else
        begin
        xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := clBlue;
        end;
      end
    else
      begin
      if gdSelected in State then
        begin
        xxxDBGrid.Canvas.Brush.Color := vFontColor;
        xxxDBGrid.Canvas.Font.Color := vBrushColor;
        end
      else
        begin
        xxxDBGrid.Canvas.Brush.Color := vBrushColor;
        xxxDBGrid.Canvas.Font.Color := vFontColor;
        end;
      end;
    end;

  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TE002_DrList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
type
  TFlags = (tcNull, tcRussia, tcNotRussia, tcBanks, tcNotBanks);
var
  i: integer;
  f: set of TFlags;
begin
  DataSet.Close;

  xxxDBGrid.MainDataSet.Conditions.ClearFor('B_DR_IS_RUSSIA');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('B_DR_IS_BANK');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('IS_NEW');

  // фильтр по стране эмитента (россия/не россия)
  if cbIssuerCountry.Checked then
    begin
    f := [];
    for i := 0 to lcbIssuerCountry.KeyValuesStr.Count-1 do
      begin
      if lcbIssuerCountry.KeyValuesStr[i] = 'Россия' then
        f := f + [tcRussia];
      if lcbIssuerCountry.KeyValuesStr[i] = 'Не Россия' then
        f := f + [tcNotRussia];
      if lcbIssuerCountry.KeyValuesStr[i] = 'Не определено' then
        f := f + [tcNull];
      end;

    if f = [tcRussia] then
      SetStrFilter('B_DR_IS_RUSSIA', 'Y')
    else if f = [tcNotRussia] then
      SetStrFilter('B_DR_IS_RUSSIA', 'N')
    else if f = [tcNull] then
      SetIsNullFilter('B_DR_IS_RUSSIA')
    else if (tcRussia in f) and (tcNull in f) then
      SetStrOrNullFilter('B_DR_IS_RUSSIA', 'Y')
    else if (tcNotRussia in f) and (tcNull in f) then
      SetStrOrNullFilter('B_DR_IS_RUSSIA', 'N')
    else if (tcRussia in f) and (tcNotRussia in f) then
      SetIsNotNullFilter('B_DR_IS_RUSSIA');
    end;

  // фильтр по отрасли (банки/не банки)
  if cbIndustry.Checked then
    begin
    f := [];
    for i := 0 to lcbIndustry.KeyValuesStr.Count-1 do
      begin
      if lcbIndustry.KeyValuesStr[i] = 'Банки' then
        f := f + [tcBanks];
      if lcbIndustry.KeyValuesStr[i] = 'Не банки' then
        f := f + [tcNotBanks];
      if lcbIndustry.KeyValuesStr[i] = 'Не определено' then
        f := f + [tcNull];
      end;

    if f = [tcBanks] then
      SetStrFilter('B_DR_IS_BANK', 'Y')
    else if f = [tcNotBanks] then
      SetStrFilter('B_DR_IS_BANK', 'N')
    else if f = [tcNull] then
      SetIsNullFilter('B_DR_IS_BANK')
    else if (tcBanks in f) and (tcNull in f) then
      SetStrOrNullFilter('B_DR_IS_BANK', 'Y')
    else if (tcNotBanks in f) and (tcNull in f) then
      SetStrOrNullFilter('B_DR_IS_BANK', 'N')
    else if (tcBanks in f) and (tcNotBanks in f) then
      SetIsNotNullFilter('B_DR_IS_BANK');
    end;

  // Скрыть распознанные записи
  if cbHideSuccess.Checked then
    begin
    SetNumbFilter('IS_FULL', 0);
    end;

  // только новые записи
  if cbNewOnly.Checked then
    begin
    SetNumbFilter('IS_NEW', 1);
    end;

  DataSet.Open;

  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure TE002_DrList.actRefreshExecute(Sender: TObject);
begin
  RefreshData('ISIN', odsListISIN.AsString);

//  ListPeriodFilter.lcb.KeyValue := odsListT055_ID_S.Value;
//  ListPeriodFilter.lcb2.KeyValue := odsListT055_ID_E.Value;
end;

procedure TE002_DrList.CreateEmissionsList(const ATextIDS: string; var AT030_IDS: TFloatArray);
var
  s: string;
  i, p: integer;
begin
  i := 1;
  while i < Length(ATextIDS) do
    begin
    s := Copy(ATextIDS, i, Length(ATextIDS));
    p := Pos(', ', s);
    if p = 0 then
      begin
      SetLength(AT030_IDS, Length(AT030_IDs) + 1);
      AT030_IDs[High(AT030_IDs)] := StrToFloat(s);
      end
    else
      begin
      s := Copy(s, 1, p-1);
      SetLength(AT030_IDS, Length(AT030_IDs) + 1);
      AT030_IDs[High(AT030_IDs)] := StrToFloat(s);
      end;
    i := i + Length(s) + 2;
    end;
end;

procedure TE002_DrList.CreateSecTypesList(const Src: string; var Dest: TStrArray);
var
  s: string;
  i, p: integer;
begin
  i := 1;
  while i < Length(Src) do
    begin
    s := Copy(Src, i, Length(Src));
    p := Pos(', ', s);
    if p = 0 then
      begin
      SetLength(Dest, Length(Dest) + 1);
      Dest[High(Dest)] := s;
      end
    else
      begin
      s := Copy(s, 1, p-1);
      SetLength(Dest, Length(Dest) + 1);
      Dest[High(Dest)] := s;
      end;
    i := i + Length(s) + 2;
    end;
end;

procedure TE002_DrList.actSrc405Execute(Sender: TObject);
var
  vT030_IDs: TFloatArray;
begin
  SetLength(vT030_IDs, 0);
  CreateEmissionsList(odsListT403_T030_IDS.AsString, vT030_IDs);

  frm01_Main.FindMainEmissionsInPeriod(
    odsListT055_ID_S.Value, // с
    odsListT055_ID_E.Value, // по
    vT030_IDs               // рег номер
    );

  SetLength(vT030_IDs, 0);
  vT030_IDs := nil;
end;

procedure TE002_DrList.actSrc711Execute(Sender: TObject);
var
  vT030_IDs: TFloatArray;
begin
  SetLength(vT030_IDs, 0);
  CreateEmissionsList(odsListT403_T030_IDS.AsString, vT030_IDs);

  frm01_Main.FindMainEmissions_711_12_InPer(
    odsListT055_ID_S.Value, // с
    odsListT055_ID_E.Value, // по
    vT030_IDs               // рег номер
    );

  SetLength(vT030_IDs, 0);
  vT030_IDs := nil;
end;

procedure TE002_DrList.actSrcNDExecute(Sender: TObject);
var
  vT030_IDs: TFloatArray;
begin
  SetLength(vT030_IDs, 0);
  CreateEmissionsList(odsListT403_T030_IDS.AsString, vT030_IDs);

  frm01_Main.ND_FindEmissionsInPer(
    odsListT055_ID_S.Value, // с
    odsListT055_ID_E.Value, // по
    vT030_IDs               // рег номер
    );

  SetLength(vT030_IDs, 0);
  vT030_IDs := nil;
end;

procedure TE002_DrList.actSrc415Execute(Sender: TObject);
var
  vT030_IDs: TFloatArray;
begin
  SetLength(vT030_IDs, 0);
  CreateEmissionsList(odsListT403_T030_IDS.AsString, vT030_IDs);

  frm01_Main.F415_12_FindEmissionsInPer(
    odsListT055_ID_S.Value, // с
    odsListT055_ID_E.Value, // по
    vT030_IDs               // рег номер
    );

  SetLength(vT030_IDs, 0);
  vT030_IDs := nil;
end;

procedure TE002_DrList.SendRequestL(AIsin, AUser: string);
var
  vClient: TBlpClient;
  vResult: integer;
  vData: string;
begin

  vClient := TBlpClient.Create(Self, dmMain.ParamList.Values['Bloomberg IP'], dmMain.ParamList.Values['Bloomberg Port']);
//  vClient.OnLog := frm01_Main.Log;

  // Создаем запрос по DR
  vClient.RequestType := DATABASE;
  vClient.RequestNo := 3;
  vClient.AddSecurity(AIsin, '/ISIN/' + AIsin);
  vClient.User := AUser;

  try
    vResult := vClient.SendRequest(vData);
    if vResult <> 0 then
      TAppMessages.ErrorFmt('Ошибка запроса: %s', [vData]);

    // Сохраняем результат запроса в T404 и связываем DR и SHS c реестром
    oqSaveDR_Data.SetVariable('ISIN', AIsin);
    oqSaveDR_Data.SetVariable('USER', AUser);
    oqSaveDR_Data.Execute;

    // 2019-09-12
    // Долженко + Булатов
    // нельзя обновлять DataSet, так как слетают ссылки в xxxDBGrid.SelectedRows
    // RefreshData('ISIN', AIsin);
    RefreshOneRecord;
    Application.ProcessMessages;

    // Разбираем результат...
    if Pos('BAD_SEC', vData) <> 0 then
      begin
      odsListSTATE.AsString := 'ISIN не найден';
      end
    else if (odsListB_DR_SEC_TYPE.AsString <> 'ADR') and
            (odsListB_DR_SEC_TYPE.AsString <> 'GDR') and
            (odsListB_DR_SEC_TYPE.AsString <> 'SDR') and
            (odsListB_DR_SEC_TYPE.AsString <> 'Receipt') then
      begin
      odsListSTATE.AsString := 'не DR';
      end
    else if odsListADR_UNDL_TICKER.AsString = '' then
      begin
      odsListSTATE.AsString := 'Тикер акции не найден';
      end
    else if odsListB_SHS_ISIN.AsString = '' then
      begin
      odsListSTATE.AsString := 'ISIN акции не найден';
      end
    else
     odsListSTATE.AsString := 'Обработано успешно';

  finally
    vClient.Free;
  end;
end;

procedure TE002_DrList.actDirectRequestCurrentUpdate(Sender: TObject);
begin
  actDirectRequestCurrent.Enabled := not odsList.IsEmpty;
end;

procedure TE002_DrList.actDirectRequestCurrentExecute(Sender: TObject);
var
  vCursor: TCursor;
begin
  if not TAppMessages.ShowConfirmation('Данные текущей записи будут обновлены. Продолжить?') then Exit;
  vCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  btnBlpCall.Enabled := False;
  try
    SendRequestL(odsListISIN.AsString, dmMain.GetUser);
  finally
    btnBlpCall.Enabled := True;
    Screen.Cursor := vCursor;
  end;
end;

procedure TE002_DrList.actDirectRequestNewUpdate(Sender: TObject);
begin
  actDirectRequestNew.Enabled := (not odsList.IsEmpty) {and (oqCountNew.FieldAsInteger(0) <> 0)};
end;

procedure TE002_DrList.actDirectRequestNewExecute(Sender: TObject);
var
  vCursor: TCursor;
  //  bm: TBookmark;
  vUser: string;
begin
  if not TAppMessages.ShowConfirmation('Данные новых записей будут обновлены. Продолжить?') then Exit;

  vCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  btnBlpCall.Enabled := False;
  //  odsList.DisableControls;
  //  bm := odsList.GetBookmark;
  vUser := dmMain.GetUser;
  odsList.First;
  try
    while not odsList.Eof do
      begin
      if odsListIS_NEW.AsInteger = 1 then
        SendRequestL(odsListISIN.AsString, vUser);
      odsList.Next;
      end;
  finally
    //    odsList.GotoBookmark(bm); // Здесь ошибка - букмарк исчезает из списка новых!!!
    //    odsList.FreeBookmark(bm);
    //odsList.EnableControls;
    btnBlpCall.Enabled := True;
    Screen.Cursor:= vCursor;
  end;
end;

procedure TE002_DrList.actDirectRequestSelectedUpdate(Sender: TObject);
begin
  actDirectRequestSelected.Enabled := (not odsList.IsEmpty) and (xxxDBGrid.SelectedRows.Count <> 0);
end;

procedure TE002_DrList.actDirectRequestSelectedExecute(Sender: TObject);
var
  vCursor: TCursor;
  //bm: TBookmark;
  i: integer;
  vUser: string;
begin
  if not TAppMessages.ShowConfirmation('Данные выделенных записей будут обновлены. Продолжить?') then Exit;

  vCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  btnBlpCall.Enabled := False;
  //odsList.DisableControls;
  //bm := odsList.GetBookmark;
  vUser := dmMain.GetUser;
  try
    for i := 0 to xxxDBGrid.SelectedRows.Count -1 do
      begin
      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[i]);
      SendRequestL(odsListISIN.AsString, vUser);
      end;
    xxxDBGrid.SelectedRows.Clear;
  finally
    // 2019-09-12
    // Долженко + Булатов
    // игнорируем ошибку GotoBookmark в случае, если запись уходит после обновления DataSet
    //try
    //  odsList.GotoBookmark(bm);
    //  odsList.FreeBookmark(bm);
    //except
    //end;
    //odsList.EnableControls;
    btnBlpCall.Enabled := True;
    Screen.Cursor:= vCursor;
  end;
end;

procedure TE002_DrList.actDirectRequestAllUpdate(Sender: TObject);
begin
  actDirectRequestAll.Enabled := (not odsList.IsEmpty);
end;

procedure TE002_DrList.actDirectRequestAllExecute(Sender: TObject);
var
  vCursor: TCursor;
  //bm: TBookmark;
  vUser: string;
begin
  if not TAppMessages.ShowConfirmation('Данные всех записей будут обновлены. Продолжить?') then Exit;

  vCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  btnBlpCall.Enabled := False;
  //odsList.DisableControls;
  //bm := odsList.GetBookmark;
  vUser := dmMain.GetUser;
  odsList.First;
  try
    while not odsList.Eof do
      begin
      SendRequestL(odsListISIN.AsString, vUser);
      odsList.Next;
      end;
  finally
    // 2019-09-12
    // Долженко + Булатов
    // игнорируем ошибку GotoBookmark в случае, если запись уходит после обновления DataSet
    //try
    //  odsList.GotoBookmark(bm);
    //  odsList.FreeBookmark(bm);
    //except
    //end;
    //odsList.EnableControls;
    btnBlpCall.Enabled := True;
    Screen.Cursor:= vCursor;
  end;
end;

procedure TE002_DrList.ToolButton18Click(Sender: TObject);
var
  vForm: TE002_DrLink;
  vT030_IDs: TFloatArray;
  vCurrentIsin: string;
begin
  vForm := TE002_DrLink.Create(Self);
  vForm.Caption := 'ISIN ' + odsListISIN.AsString;
  vForm.ISIN := odsListISIN.AsString;
  vForm.SecTypes := odsListT403_SEC_TYPES.AsString;
  vForm.Grid.InitFrame(vForm);
  if vForm.ShowModal = mrOk then
    begin
    SetLength(vT030_IDs, 0);
    CreateEmissionsList(odsListT403_T030_IDS.AsString, vT030_IDs);

    oqLink.SetVariable('T030_IDS', vT030_IDs);
    oqLink.SetVariable('T030_MAIN_ID', vForm.Grid.odsListT030_ID.AsFloat);
    oqLink.Execute;

    SetLength(vT030_IDs, 0);
    vT030_IDs := nil;

    RefreshData('ISIN', odsListISIN.AsString);

    // Пересоздать список ISIN и встать на измененную запись
    vCurrentIsin := vForm.Grid.Isin;

    FRefreshListType := rtAuto;
    btnRefreshIsinListClick(Self);

    odsList.Locate('ISIN', vCurrentIsin, [loCaseInsensitive, loPartialKey]);
    end;

  vForm.Free;
end;

procedure TE002_DrList.actSourcesUpdate(Sender: TObject);
begin
  if odsList.IsEmpty or (Pos('405', odsListT403_SRC.AsString) = 0) then
    begin
    N16.Visible := False;
    N17.Visible := False;
    end
  else
    begin
    N16.Visible := True;
    N17.Visible := True;
    end;
end;

procedure TE002_DrList.actSourcesExecute(Sender: TObject);
var
  vForm: TE002_Sources;
begin
  vForm := TE002_Sources.Create(Self);
  vForm.Grid.FT030_IDs := odsListT403_T030_IDS.AsString;
  vForm.Grid.InitFrame(vForm);
  vForm.ShowModal;
  vForm.Free;
end;

procedure TE002_DrList.RefreshOneRecord;
var
  I: Integer;
begin
  // подготавливаем odsFetchRecord
  PrepareFetchSQL;

  // получаем текущие значения из БД для одной записи
  // и копируем значения из odsFetchRecord в odsList
  odsFetchRecord.Open;
  try
    if odsFetchRecord.IsEmpty then
    begin
      // если ничего не вернулось, значит запись ушла из фильтров
      // удаляем строку из DataSet'a
      odsList.Delete;
    end else
    begin
      // обновляем значения в строке DataSet без переоткрытия запроса
      odsList.Edit;
      for I := 0 to odsFetchRecord.FieldCount - 1 do
      begin
        odsList.FieldByName(odsFetchRecord.Fields[I].FieldName).Assign(odsFetchRecord.Fields[I]);
      end;
      odsList.Post;
    end;
  finally
    odsFetchRecord.Close;
  end;
end;

procedure TE002_DrList.PrepareFetchSQL;
const
  SQL_WITH_FILTER =
   ' SELECT * FROM (%s) WHERE %s = ''%s''';
begin
  // подготавливаем компонент для обновления одной записи
  odsFetchRecord.SQL.Text :=
    Format(SQL_WITH_FILTER, [
      odsList.SQL.Text,
      'ISIN',
      DataSet.FieldByName('ISIN').AsString
      ]);

  // копируем параметры
  odsFetchRecord.Variables.Assign(odsList.Variables);
end;

end.
