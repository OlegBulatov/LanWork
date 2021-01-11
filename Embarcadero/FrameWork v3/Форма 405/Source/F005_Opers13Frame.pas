unit F005_Opers13Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  F005_ReporterFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame,
  F005_DataPeriodFilterFrame, fm031_FilterFrame, untParams;

type
  TF005_Opers13 = class(TfmFilteredGrid)
    PeriodFilter: TF005_DataPeriodFilter;
    ReporterFilter: TF005_ReporterFilter;
    odsListIS_LINKED: TStringField;
    odsListT236_ID: TFloatField;
    odsListT243_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT236_ROW_NUM: TFloatField;
    odsListT236_EMIT_KPP: TStringField;
    odsListT236_EMIT_OGRN: TStringField;
    odsListT236_KODVAL_CB: TStringField;
    odsListT236_N_ST: TFloatField;
    odsListT236_CB_KOL: TFloatField;
    odsListT236_CB_KOL_OB: TFloatField;
    odsListT236_CB_REPO: TFloatField;
    odsListT236_CB_ZAJM: TFloatField;
    odsListT236_NOT_OBZ: TFloatField;
    odsListT236_BEZNAD: TFloatField;
    odsListT236_CB_ERROR: TFloatField;
    odsListT236_INOE: TFloatField;
    odsListT236_DEPO_UP: TFloatField;
    odsListT236_DEPO_EM: TFloatField;
    odsListT236_ZALOGD: TFloatField;
    odsListT236_CB_EMIS: TFloatField;
    odsListT236_ORG_NAME: TStringField;
    odsListT236_ORG_PRIZ: TStringField;
    odsListT236_ORG_CODE: TStringField;
    odsListT236_ORG_KPP: TStringField;
    odsListT236_ORG_OGRN: TStringField;
    odsListT236_ORG_STRAN: TStringField;
    odsListT236_ORG_LIC: TStringField;
    odsListT236_EMIT_REGION: TStringField;
    odsListT243_REPORTER_SHORT_NAME: TStringField;
    odsListT243_REPORTER_INN: TStringField;
    odsListT030_ID: TFloatField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT027_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT028_CODE_MAIN: TStringField;
    odsListT028_COUNTRY_MAIN: TStringField;
    odsListT055_LONG_NAME: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_SEC_REGN: TStringField;
    actGoToLink: TAction;
    ToolButton1: TToolButton;
    odsListT027_ID: TFloatField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT010_ISIN_TRANSL: TStringField;
    procedure actGoToLinkUpdate(Sender: TObject);
    procedure actGoToLinkExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject);  override;
    procedure FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray; AT028_ID: Double);
  end;

var
  F005_Opers13: TF005_Opers13;

implementation

uses dm000_ObjectsFactory, unt007_LinksList, frm01_MainForm;

{$R *.DFM}

{ TF005_Opers13 }

procedure TF005_Opers13.InitFrame(Sender: TObject);
begin
  PeriodFilter.InitFrame(Self);
  PeriodFilter.cb.Checked := True;
  PeriodFilter.cb.Enabled := False;

  ReporterFilter.InitFrame(Self);
  ReporterFilter.cb.Checked := False;

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

procedure TF005_Opers13.actGoToLinkUpdate(Sender: TObject);
begin
  actGoToLink.Enabled := not odsList.IsEmpty and (odsListIS_LINKED.AsString = 'нет');
end;

procedure TF005_Opers13.actGoToLinkExecute(Sender: TObject);
begin
  // Переходим на 1 шаг связывания
  frm01_Main.Find_415_Link_01(
    odsListT055_ID.AsFloat,      // на дату
    odsListT027_ID.AsFloat,      // тип ц.б.
    13,                          // раздел
//    odsListT028_ID_MAIN.AsFloat       // эмитент
    odsListT028_ID.AsFloat       // эмитент
    );
end;

procedure TF005_Opers13.FindData_InPer(const AT055_ID_S,
  AT055_ID_E: Double; AT027_IDs: TFloatArray; AT028_ID: Double);
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

  // фильтр по эмитенту
  VDataSet.Conditions.AddFilter01('T028_ID', AT028_ID);

  RefreshAllRecords;
end;

procedure TF005_Opers13.actRefreshExecute(Sender: TObject);
begin
  VDataSet.Conditions.ClearFor('T027_ID');
  VDataSet.Conditions.ClearFor('T028_ID');
  inherited;
end;

end.
