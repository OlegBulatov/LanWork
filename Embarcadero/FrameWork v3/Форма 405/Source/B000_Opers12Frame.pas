unit B000_Opers12Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, fm033_PeriodFilterFrame, B000_RemainsPeriodFilterFrame,
  B002_BankFilterFrame, C002_TypeSecFrame, G001_IssuerGroupFrame,
  B004_SectorFilterFrame, B004_AccountFilterFrame, untParams,
  fm031_FilterFrame;

type
  TB000_Opers12 = class(TfmFilteredGrid)
    PeriodFilter: TB000_RemainsPeriodFilter;
    BankFilter: TB002_BankFilter;
    SecTypeFilter: TC002_TypeSec;
    AccountFilter: TB004_AccountFilter;
    SectorFilter: TB004_SectorFilter;
    IssuerGroupFilter: TG001_IssuerGroup;
    odsListT051_ID: TFloatField;
    odsListT051_BANK_CODE: TStringField;
    odsListT051_BANK_NAME: TStringField;
    odsListT051_KP_ID: TIntegerField;
    odsListT051_LOAD_DATE: TDateTimeField;
    odsListT055_ID: TFloatField;
    odsListT051_NUMB_IN_YEA: TStringField;
    odsListT051_NUMB_IN_YEA_DESC: TStringField;
    odsListT051_REPORT_DATE: TDateTimeField;
    odsListIS_MAIN: TStringField;
    odsListT030_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT028_ID: TFloatField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListT027_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_PARENT_ID: TFloatField;
    odsListT028_INN_MAIN: TStringField;
    odsListT028_COUNTRY_ID_MAIN: TStringField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT025_SHOT_NAME_MAIN: TStringField;
    odsListEMIT_TIN: TStringField;
    odsListEMIT_KPP: TStringField;
    odsListEMIT_OGRN: TStringField;
    odsListEMIT_STRAN: TFloatField;
    odsListISIN: TStringField;
    odsListKODVAL_CB: TStringField;
    odsListN_ST: TFloatField;
    odsListN_ST_USD: TFloatField;
    odsListVID_SH: TStringField;
    odsListKOL_CB: TFloatField;
    odsListSEKTOR: TStringField;
    odsListORG_NAME: TStringField;
    odsListORG_PRIZ: TStringField;
    odsListORG_INN: TStringField;
    odsListORG_TIN: TStringField;
    odsListORG_KPP: TStringField;
    odsListORG_OGRN: TStringField;
    odsListORG_STRAN: TStringField;
    odsListORG_LICPU: TStringField;
    odsListT030_TYPE_DESC: TStringField;
    odsListT042_SHORT_NAME: TStringField;
    odsListSTOP_ALL: TFloatField;
    odsListSTOP_ZALOG: TFloatField;
    odsListSTOP_DEPO: TFloatField;
    odsListSTOP_CORP: TFloatField;
    odsListSTOP_OPER: TFloatField;
    odsListSTOP_ARREST: TFloatField;
    odsListDEPO_COUNTRY: TStringField;
    ToolButton1: TToolButton;
    actGoToLink: TAction;
    odsListDEPO_COUNTRY_NAME: TStringField;
    odsListPRIZ_EMIT_NREZ: TStringField;
    odsListPRIZ_ORG_NREZ: TStringField;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    actInfo: TAction;
    procedure actRefreshExecute(Sender: TObject);
    procedure actGoToLinkUpdate(Sender: TObject);
    procedure actGoToLinkExecute(Sender: TObject);
    procedure actInfoUpdate(Sender: TObject);
    procedure actInfoExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetConditions; override;
  public
    procedure InitFrame(Sender: TObject); override;
    procedure FindIssuer_InPer(const AT028_ID, AT055_ID_S, AT055_ID_E: Double; AT027_IDs: array of Double);
    procedure FindMainEmissionsInPer(AT055_ID_S, AT055_ID_E: Double; AT030_IDs: TFloatArray);
    procedure FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray;
      ASECTOR, AACCOUNT: TStrings; AT028_ID: Double);
  end;

var
  B000_Opers12: TB000_Opers12;

implementation

uses
  dm000_ObjectsFactory, unt007_LinksList, unt001_Filter, frm01_MainForm, frm106_DataSourceForm;

{$R *.DFM}

{ TB000_Opers12 }

procedure TB000_Opers12.InitFrame(Sender: TObject);
begin
  PeriodFilter.InitFrame(Self);
  PeriodFilter.cb.Checked := True;
  PeriodFilter.cb.Enabled := False;

  BankFilter.InitFrame(Self);
  BankFilter.cb.Checked := True;

  SecTypeFilter.InitFrame(Self);
  SecTypeFilter.cb.Checked := False;

  AccountFilter.InitFrame(Self);
  AccountFilter.cb.Checked := True;
  AccountFilter.SetKeyValuesStr(['OWNER', 'TRUSTEE', 'FNOMINEE', 'FAUTHOLDER', 'DEPOPROG']);

  SectorFilter.InitFrame(Self);
  SectorFilter.cb.Checked  := True;
  SectorFilter.SetKeyValuesStr(['S2']);

  IssuerGroupFilter.InitFrame(Self);
  IssuerGroupFilter.cb.Checked := False;

  // Период
  ObjectsFactory.Links.LinkLookUp2Condition(
    ctNumBetween,
    PeriodFilter,
    Self,
    'T055_ID',
    ltNoRefresh
    );
  // КО
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrEqual,
    BankFilter,
    Self,
    'T051_BANK_CODE',
    ltNoRefresh
    );
  // Тип ц.б.
  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    SecTypeFilter,
    Self,
    'T027_ID_MAIN',
    ltNoRefresh
    );
  // Вид счета
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    AccountFilter,
    Self,
    'VID_SH',
    ltNoRefresh
    );
  // Сектор
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    SectorFilter,
    Self,
    'SEKTOR',
    ltNoRefresh
    );

  inherited;
end;

procedure TB000_Opers12.SetConditions;
begin
  // Фильтр по группе эмитентов
  if IssuerGroupFilter.cb.Checked then
    odsList.SetVariable('T042_ID', IssuerGroupFilter.KeyValue)
  else
    odsList.SetVariable('T042_ID', 1); // все

  inherited;
end;

// Вызов из расчета IIP
procedure TB000_Opers12.FindIssuer_InPer(const AT028_ID, AT055_ID_S,
  AT055_ID_E: Double; AT027_IDs: array of Double);
var
  i: integer;
  StrValues: array of string;
begin
  InitFrame(Self);
  
  // снимаем все фильтры
  VDataSet.Conditions.Clear;
  VDataSet.Indexes.Clear;

  PeriodFilter.cb.Checked := True;
  PeriodFilter.KeyValue := FloatToStr(AT055_ID_S);
  PeriodFilter.KeyValue2 := FloatToStr(AT055_ID_E);

  BankFilter.cb.Checked := False;

  // фильтр по типам ц.б.
  SecTypeFilter.cb.Checked := True;
  SetLength(StrValues, Length(AT027_IDs));
  for i := Low(AT027_IDs) to High(AT027_IDs) do
    begin
    StrValues[i] := FloatToStr(AT027_IDs[i]);
    end;
  SecTypeFilter.SetKeyValuesStr(StrValues);

  // фильтр по видам счета
//  AccountFilter.cb.Checked := True;
//  AccountFilter.SetKeyValuesStr(['OWNER', 'TRUSTEE', 'FNOMINEE', 'FAUTHOLDER', 'DEPOPROG']);

  // фильтр по сектору
//  SectorFilter.cb.Checked := True;
//  SectorFilter.SetKeyValuesStr(['S2']);

  // фильтр по группе эмитентов
//  IssuerGroupFilter.cb.Checked := False;

  // устанавливаем фильтр по резиденту
//  VDataSet.Conditions.AddFilter01('T028_PARENT_ID', AT028_ID);
  VDataSet.Conditions.AddFilter01('T028_ID', AT028_ID);

  RefreshAllRecords;
end;

procedure TB000_Opers12.FindMainEmissionsInPer(AT055_ID_S, AT055_ID_E: Double; AT030_IDs: TFloatArray);
begin
  // снимаем все фильтры
  VDataSet.Conditions.Clear;
  VDataSet.Indexes.Clear;

  // ставим фильтр по периоду (c корректировкой входных T055_ID и пределов фильтров Tfm01_PeriodN)
  PeriodFilter.InitFrame(Self);
  PeriodFilter.cb.Checked := True;
  PeriodFilter.odsList.First;
  if PeriodFilter.odsList.FieldByName('T055_ID').AsFloat > AT055_ID_S then
    PeriodFilter.KeyValue := PeriodFilter.odsList.FieldByName('T055_ID').AsString
  else
    PeriodFilter.KeyValue := FloatToStr(AT055_ID_S);

  PeriodFilter.odsList2.Last;
  if PeriodFilter.odsList2.FieldByName('T055_ID').AsFloat < AT055_ID_S then
    PeriodFilter.KeyValue2 := PeriodFilter.odsList2.FieldByName('T055_ID').AsString
  else
    PeriodFilter.KeyValue2 := FloatToStr(AT055_ID_E);

  BankFilter.cb.Checked := False;
  SecTypeFilter.cb.Checked := False;
  AccountFilter.cb.Checked := False;
  SectorFilter.cb.Checked := False;
  IssuerGroupFilter.cb.Checked := False;

  // устанавливаем фильтр по T030_ID
  VDataSet.Conditions.AddNumInFilter('T030_ID_MAIN', untParams.TFloatArray(AT030_IDs));

  RefreshAllRecords;
end;

procedure TB000_Opers12.actRefreshExecute(Sender: TObject);
begin
  VDataSet.Conditions.ClearFor('T028_PARENT_ID');
  VDataSet.Conditions.ClearFor('T030_ID_MAIN');
  VDataSet.Conditions.ClearFor('T028_ID');
  inherited;
end;

procedure TB000_Opers12.actGoToLinkUpdate(Sender: TObject);
begin
  actGoToLink.Enabled := not odsList.IsEmpty and (odsListIS_MAIN.AsString = 'нет');
end;

procedure TB000_Opers12.actGoToLinkExecute(Sender: TObject);
begin
  // Переходим на 1 шаг связывания
  frm01_Main.Find_711_Link_01(
    odsListT055_ID.AsFloat,      // на дату
    odsListT027_ID.AsFloat,      // тип ц.б.
    12,                          // раздел
    odsListT028_ID.AsFloat       // эмитент
    );
end;

procedure TB000_Opers12.FindData_InPer(const AT055_ID_S,
  AT055_ID_E: Double; AT027_IDs: TFloatArray; ASECTOR, AACCOUNT: TStrings;
  AT028_ID: Double);
begin
  InitFrame(Self);

  // снимаем все фильтры
  VDataSet.Conditions.Clear;
  VDataSet.Indexes.Clear;

  // фильтр по периоду
  PeriodFilter.KeyValue := AT055_ID_S;
  PeriodFilter.KeyValue2 := AT055_ID_E;

  BankFilter.cb.Checked := False;
  BankFilter.lcb.Enabled := False;

  // фильтр по типу ц.б.
  SecTypeFilter.cb.Checked := False;
  if AT027_IDs <> nil then
    begin
    SecTypeFilter.cb.Checked := True;
    SecTypeFilter.KeyValues := AT027_IDs;
    end;

  // фильтр по виду  счета
  AccountFilter.cb.Checked := False;
  if AACCOUNT <> nil then
    begin
    AccountFilter.cb.Checked := True;
    AccountFilter.lcb.KeyValuesStr := AACCOUNT;
    end;

  // фильтр по сектору
  SectorFilter.cb.Checked := False;
  if ASECTOR <> nil then
    begin
    SectorFilter.cb.Checked := True;
    SectorFilter.lcb.KeyValuesStr := ASECTOR;
    end;

  IssuerGroupFilter.cb.Checked := False;

  // фильтр по эмитенту
  VDataSet.Conditions.AddFilter01('T028_ID', AT028_ID);

  RefreshAllRecords;
end;

procedure TB000_Opers12.actInfoUpdate(Sender: TObject);
begin
  actInfo.Enabled := not odsList.FieldByName('T051_ID').IsNull;
end;

procedure TB000_Opers12.actInfoExecute(Sender: TObject);
var
  SourceForm: Tfrm106_DataSource;
begin
  SourceForm := Tfrm106_DataSource.Create(Self);
  SourceForm.InitData(if711, odsListT051_ID.AsFloat);
  SourceForm.ShowModal;
  SourceForm.Free;
end;

end.
