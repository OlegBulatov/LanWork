unit F005_Opers12Frame;

interface

uses
  fm010_FilteredGridFrame, Db, F005_ReporterFilterFrame,
  G001_IssuerGroupFrame, B004_SectorFilterFrame, B004_AccountFilterFrame,
  C002_TypeSecFrame, Forms, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame,
  F005_DataPeriodFilterFrame, Oracle, Menus, OracleData, Classes, ActnList,
  StdCtrls, Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, untParams, fm031_FilterFrame;


type
  TF005_Opers12 = class(TfmFilteredGrid)
    odsListIS_LINKED: TStringField;
    odsListT234_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT234_ROW_NUM: TFloatField;
    odsListT234_EMIT_KPP: TStringField;
    odsListT234_EMIT_OGRN: TStringField;
    odsListT234_KODVAL_CB: TStringField;
    odsListT234_N_ST: TFloatField;
    odsListT234_VID_SH: TStringField;
    odsListT234_KOL_CB: TFloatField;
    odsListT234_SEKTOR: TStringField;
    odsListT234_ORG_NAME: TStringField;
    odsListT234_ORG_PRIZ: TStringField;
    odsListT234_ORG_CODE: TStringField;
    odsListT234_ORG_KPP: TStringField;
    odsListT234_ORG_OGRN: TStringField;
    odsListT234_ORG_STRAN: TStringField;
    odsListT234_ORG_LIC: TStringField;
    odsListT030_ID: TFloatField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT028_COUNTRY_MAIN: TStringField;
    odsListT055_LONG_NAME: TStringField;
    odsListT030_TYPE_MAIN: TStringField;
    odsListT030_TYPE_DESC_MAIN: TStringField;
    odsListT042_SHORT_NAME: TStringField;
    PeriodFilter: TF005_DataPeriodFilter;
    SecTypeFilter: TC002_TypeSec;
    odsListT027_ID_MAIN: TFloatField;
    AccountFilter: TB004_AccountFilter;
    SectorFilter: TB004_SectorFilter;
    GroupFilter: TG001_IssuerGroup;
    ReporterFilter: TF005_ReporterFilter;
    odsListT243_ID: TFloatField;
    odsListT243_REPORTER_SHORT_NAME: TStringField;
    odsListT243_REPORTER_INN: TStringField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    actGoToLink: TAction;
    ToolButton1: TToolButton;
    odsListT028_ID: TFloatField;
    odsListT010_ISIN_TRANSL: TStringField;
    odsListT234_ACC_OWNER_COUNTRY: TStringField;
    odsListACC_OWNER_COUNTRY_NAME: TStringField;
    procedure actRefreshExecute(Sender: TObject);
    procedure actGoToLinkUpdate(Sender: TObject);
    procedure actGoToLinkExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetConditions; override;

  public
    procedure InitFrame(Sender: TObject);  override;
    procedure FindEmissions_InPer(const AT055_ID_S, AT055_ID_E: Double; AT030_IDs: TFloatArray);
    procedure FindIssuer_InPer(const AT028_ID, AT055_ID_S, AT055_ID_E, AT027_ID: Double);
    procedure FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray;
      ASECTOR, AACCOUNT: TStrings; AT028_ID: Double);
  end;

var
  F005_Opers12: TF005_Opers12;

implementation

uses SysUtils, dm000_ObjectsFactory, unt007_LinksList, frm01_MainForm;

{$R *.DFM}

{ TF005_Opers12 }

procedure TF005_Opers12.InitFrame(Sender: TObject);
begin
  PeriodFilter.InitFrame(Self);
  PeriodFilter.cb.Checked := True;
  PeriodFilter.cb.Enabled := False;

  ReporterFilter.InitFrame(Self);
  ReporterFilter.cb.Checked := False;

  SecTypeFilter.InitFrame(Self);

  AccountFilter.InitFrame(Self);
  AccountFilter.cb.Checked := True;
  AccountFilter.SetKeyValuesStr(['OWNER', 'TRUSTEE', 'FNOMINEE', 'FAUTHOLDER', 'DEPOPROG']);

  SectorFilter.InitFrame(Self);
  SectorFilter.cb.Checked := True;
  SectorFilter.SetKeyValuesStr(['S2']);

  GroupFilter.InitFrame(Self);
  GroupFilter.cb.Checked := False;

  // фильтр по периоду
  ObjectsFactory.Links.LinkLookUp2Condition(
    ctNumBetween,
    PeriodFilter,
    Self,
    'T055_ID',
    ltNoRefresh
    );

  // фильтр по ИНН отчит. организации
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    ReporterFilter,
    Self,
    'T243_REPORTER_INN',
    ltNoRefresh
    );

  // фильтр по типу ц.б.(главной эмиссии)
  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    SecTypeFilter,
    Self,
    'T027_ID_MAIN',
    ltNoRefresh
    );

  // фильтр по виду счета
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    AccountFilter,
    Self,
    'T234_VID_SH',
    ltNoRefresh
    );

  // фильтр по сектору
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    SectorFilter,
    Self,
    'T234_SEKTOR',
    ltNoRefresh
    );

  inherited;
end;

procedure TF005_Opers12.SetConditions;
begin
  inherited;

  // фильтр по группе эмитентов
  if GroupFilter.cb.Checked then
    odsList.SetVariable('T042_ID', GroupFilter.KeyValue)
  else
    odsList.SetVariable('T042_ID', 1); // все
end;

procedure TF005_Opers12.FindEmissions_InPer(const AT055_ID_S,
  AT055_ID_E: Double; AT030_IDs: TFloatArray);
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

  ReporterFilter.cb.Checked := False;
  SecTypeFilter.cb.Checked := False;
  AccountFilter.cb.Checked := False;
  SectorFilter.cb.Checked := False;
  GroupFilter.cb.Checked := False;

  // устанавливаем фильтр по T030_ID
  VDataSet.Conditions.AddNumInFilter('T030_ID', untParams.TFloatArray(AT030_IDs));

  RefreshAllRecords;
end;

procedure TF005_Opers12.FindIssuer_InPer(const AT028_ID, AT055_ID_S, AT055_ID_E, AT027_ID: Double);
begin
  InitFrame(Self);

  // снимаем все фильтры
  VDataSet.Conditions.Clear;
  VDataSet.Indexes.Clear;

  // фильтр по периоду
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

  // устанавливаем фильтр по T027_ID
  SecTypeFilter.cb.Checked := True;
  SecTypeFilter.lcb.SetDefaults([AT027_ID]);

  // Устанавливаем фильтр по эмитенту
  VDataSet.Conditions.AddFilter01('T028_ID_MAIN', AT028_ID);

  RefreshAllRecords;
end;

procedure TF005_Opers12.actRefreshExecute(Sender: TObject);
begin
  VDataSet.Conditions.ClearFor('T030_ID');
  VDataSet.Conditions.ClearFor('T028_ID_MAIN');
  VDataSet.Conditions.ClearFor('T027_ID');
  VDataSet.Conditions.ClearFor('T028_ID');
  inherited;
end;

procedure TF005_Opers12.actGoToLinkUpdate(Sender: TObject);
begin
  actGoToLink.Enabled := not odsList.IsEmpty and (odsListIS_LINKED.AsString = 'нет');
end;

procedure TF005_Opers12.actGoToLinkExecute(Sender: TObject);
begin
  // Переходим на 1 шаг связывания
  frm01_Main.Find_415_Link_01(
    odsListT055_ID.AsFloat,      // на дату
    odsListT027_ID.AsFloat,      // тип ц.б.
    12,                          // раздел
//    odsListT028_ID_MAIN.AsFloat       // эмитент
    odsListT028_ID.AsFloat       // эмитент
    );
end;

procedure TF005_Opers12.FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray;
  ASECTOR, AACCOUNT: TStrings; AT028_ID: Double);
begin
  InitFrame(Self);

  // снимаем все фильтры
  VDataSet.Conditions.Clear;
  VDataSet.Indexes.Clear;

  // фильтр по периоду
  PeriodFilter.KeyValue := AT055_ID_S;
  PeriodFilter.KeyValue2 := AT055_ID_E;

  ReporterFilter.cb.Checked := False;

  // фильтр по типу ц.б.
  SecTypeFilter.cb.Checked := False;
  if AT027_IDs <> nil then
    begin
    SecTypeFilter.cb.Checked := True;
    SecTypeFilter.KeyValues := AT027_IDs;
//    vDataSet.Conditions.AddNumInFilter('T027_ID', AT027_IDs);
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

  GroupFilter.cb.Checked := False;

  // фильтр по эмитенту
  VDataSet.Conditions.AddFilter01('T028_ID', AT028_ID);

  RefreshAllRecords;
end;

end.
