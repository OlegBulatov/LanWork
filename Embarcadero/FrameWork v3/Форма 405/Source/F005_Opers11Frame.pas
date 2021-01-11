unit F005_Opers11Frame;

interface

uses
  fm010_FilteredGridFrame, Db, F005_DataPeriodFilterFrame, F005_ReporterFilterFrame,
  Forms, fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, fm033_PeriodFilterFrame, Oracle, Menus, OracleData,
  Classes, ActnList, StdCtrls, Controls, ComCtrls, ToolWin, ExtCtrls,
  Grids, DBGrids, xxxDBGrid, fm031_FilterFrame, untParams;

type
  TF005_Opers11 = class(TfmFilteredGrid)
    odsListT233_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT233_ROW_NUM: TFloatField;
    odsListT233_DEP_NAME: TStringField;
    odsListT233_DEP_CODE: TStringField;
    odsListT233_DEP_KPP: TStringField;
    odsListT233_DEP_OGRN: TStringField;
    odsListT233_DEP_STRAN: TStringField;
    odsListT233_DEP_LIC: TStringField;
    odsListT233_DEP_PRIZ: TStringField;
    odsListT233_DEP_LORO: TStringField;
    odsListT233_EMIT_KPP: TStringField;
    odsListT233_EMIT_OGRN: TStringField;
    odsListT233_KODVAL_CB: TStringField;
    odsListT233_N_ST: TFloatField;
    odsListT233_KOL_CB: TFloatField;
    odsListT233_ORG_NAME: TStringField;
    odsListT233_ORG_PRIZ: TStringField;
    odsListT233_ORG_CODE: TStringField;
    odsListT233_ORG_KPP: TStringField;
    odsListT233_ORG_OGRN: TStringField;
    odsListT233_ORG_STRAN: TStringField;
    odsListT233_ORG_LIC: TStringField;
    odsListT233_ORG_NOSTRO: TStringField;
    odsListT030_ID: TFloatField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT028_COUNTRY_MAIN: TStringField;
    odsListIS_LINKED: TStringField;
    odsListT055_LONG_NAME: TStringField;
    PeriodFilter: TF005_DataPeriodFilter;
    ReporterFilter: TF005_ReporterFilter;
    odsListT243_ID: TFloatField;
    odsListT243_REPORTER_SHORT_NAME: TStringField;
    odsListT243_REPORTER_INN: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_SEC_REGN: TStringField;
    actGoToLink: TAction;
    tbGoToLink: TToolButton;
    odsListT027_ID: TFloatField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT010_ISIN_TRANSL: TStringField;
    procedure actGoToLinkUpdate(Sender: TObject);
    procedure actGoToLinkExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    //
  public
    procedure InitFrame(Sender: TObject);  override;
    procedure FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray;
      APRIZ: TStrings; AT028_ID: Double);
  end;

var
  F005_Opers11: TF005_Opers11;

implementation

uses dm000_ObjectsFactory, unt007_LinksList, frm01_MainForm;

{$R *.DFM}

{ TF005_Opers11 }

procedure TF005_Opers11.InitFrame(Sender: TObject);
begin
  PeriodFilter.InitFrame(Self);
  PeriodFilter.odsList.Last;
  PeriodFilter.Period1lcbCloseUp(PerioDFilter.lcb);
  PeriodFilter.odsList2.Last;
  PeriodFilter.cb.Checked := True;
  PeriodFilter.cb.Enabled := False;

  ReporterFilter.InitFrame(Self);
  ReporterFilter.cb.Checked := True;

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

  inherited;
end;

procedure TF005_Opers11.actGoToLinkUpdate(Sender: TObject);
begin
  actGoToLink.Enabled := not odsList.IsEmpty and (odsListIS_LINKED.AsString = 'нет');
end;

procedure TF005_Opers11.actGoToLinkExecute(Sender: TObject);
begin
  // Переходим на 1 шаг связывания
  frm01_Main.Find_415_Link_01(
    odsListT055_ID.AsFloat,      // на дату
    odsListT027_ID.AsFloat,      // тип ц.б.
    11,                          // раздел
//    odsListT028_ID_MAIN.AsFloat       // эмитент
    odsListT028_ID.AsFloat       // эмитент
    );
end;

procedure TF005_Opers11.FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray;
  APRIZ: TStrings; AT028_ID: Double);
var
  i: integer;
  StrArr: TStrArray;
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
  if AT027_IDs <> nil then
    vDataSet.Conditions.AddNumInFilter('T027_ID', AT027_IDs);

  // фильтр по признаку
  if APRIZ <> nil then
    begin
    SetLength(StrArr, APRIZ.Count);
    for i := 0 to APRIZ.Count-1 do
      StrArr[i] := APRIZ[i];
    vDataSet.Conditions.AddStrInFilter('T233_DEP_PRIZ', StrArr);
    for i := 0 to APRIZ.Count-1 do
      StrArr[i] := '';
    SetLength(StrArr, 0);
    end;

  // фильтр по эмитенту
  VDataSet.Conditions.AddFilter01('T028_ID', AT028_ID);

  RefreshAllRecords;
end;

procedure TF005_Opers11.actRefreshExecute(Sender: TObject);
begin
  VDataSet.Conditions.ClearFor('T027_ID');
  VDataSet.Conditions.ClearFor('T233_DEP_PRIZ');
  VDataSet.Conditions.ClearFor('T028_ID');
  inherited;
end;

end.
