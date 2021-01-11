unit B000_Opers11Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  fm033_PeriodFilterFrame, B000_RemainsPeriodFilterFrame, fm000_Parent,
  fm008_DBObjectFrame, fm021_CheckBoxFrame, fm020_LookUpFrame,
  B002_BankFilterFrame, fm031_FilterFrame, untParams;

type
  TB000_Opers11 = class(TfmFilteredGrid)
    BankFilter: TB002_BankFilter;
    PeriodFilter: TB000_RemainsPeriodFilter;
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
    odsListDK_NAME: TStringField;
    odsListDK_INN: TStringField;
    odsListDK_TIN: TStringField;
    odsListDK_KPP: TStringField;
    odsListDK_OGRN: TStringField;
    odsListDK_STRAN: TFloatField;
    odsListDK_LICPU: TStringField;
    odsListDK_PRIZ: TStringField;
    odsListDK_LORO: TStringField;
    odsListEMIT_TIN: TStringField;
    odsListEMIT_KPP: TStringField;
    odsListEMIT_OGRN: TStringField;
    odsListEMIT_STRAN: TFloatField;
    odsListISIN: TStringField;
    odsListKODVAL_CB: TStringField;
    odsListN_ST: TFloatField;
    odsListKOL_CB: TFloatField;
    odsListORG_NAME: TStringField;
    odsListORG_PRIZ: TStringField;
    odsListORG_INN: TStringField;
    odsListORG_TIN: TStringField;
    odsListORG_KPP: TStringField;
    odsListORG_OGRN: TStringField;
    odsListORG_STRAN: TStringField;
    odsListORG_LICPU: TStringField;
    odsListN_ST_USD: TFloatField;
    odsListORG_NOSTRO: TStringField;
    odsListVID_SH: TStringField;
    odsListSEKTOR: TStringField;
    odsListT042_SHORT_NAME: TStringField;
    odsListSTOP_ALL: TFloatField;
    odsListSTOP_ZALOG: TFloatField;
    odsListSTOP_DEPO: TFloatField;
    odsListSTOP_CORP: TFloatField;
    odsListSTOP_OPER: TFloatField;
    odsListSTOP_ARREST: TFloatField;
    ToolButton1: TToolButton;
    actGoToLink: TAction;
    odsListT010_ISIN_MAIN: TStringField;
    odsListPRIZ_NREZ: TStringField;
    odsListPRIZ_EMIT_NREZ: TStringField;
    odsListPRIZ_ORG_NREZ: TStringField;
    btnInfo: TToolButton;
    ToolButton3: TToolButton;
    actInfo: TAction;
    procedure actGoToLinkUpdate(Sender: TObject);
    procedure actGoToLinkExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actInfoExecute(Sender: TObject);
    procedure actInfoUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
    procedure FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray;
      APRIZ: TStrings; AT028_ID: Double);
  end;

var
  B000_Opers11: TB000_Opers11;

implementation

{$R *.DFM}

uses
  dm000_ObjectsFactory, unt007_LinksList, frm01_MainForm, frm106_DataSourceForm;

{ TB000_Opers11 }

procedure TB000_Opers11.InitFrame(Sender: TObject);
begin
  PeriodFilter.InitFrame(Self);
  BankFilter.InitFrame(Self);

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

  inherited;
end;

procedure TB000_Opers11.actGoToLinkUpdate(Sender: TObject);
begin
  actGoToLink.Enabled := not odsList.IsEmpty and (odsListIS_MAIN.AsString = 'нет');
end;

procedure TB000_Opers11.actGoToLinkExecute(Sender: TObject);
begin
  // Переходим на 1 шаг связывания
  frm01_Main.Find_711_Link_01(
    odsListT055_ID.AsFloat,       // на дату
    odsListT027_ID.AsFloat,       // тип ц.б.
    11,                           // раздел
//    odsListT028_PARENT_ID.AsFloat // эмитент
    odsListT028_ID.AsFloat // эмитент
    );
end;

procedure TB000_Opers11.FindData_InPer(const AT055_ID_S,
  AT055_ID_E: Double; AT027_IDs: TFloatArray; APRIZ: TStrings;
  AT028_ID: Double);
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

  BankFilter.cb.Checked := False;
  BankFilter.lcb.Enabled := False;

  // фильтр по типу ц.б.
  if AT027_IDs <> nil then
    vDataSet.Conditions.AddNumInFilter('T027_ID', AT027_IDs);

  // фильтр по признаку
  if APRIZ <> nil then
    begin
    SetLength(StrArr, APRIZ.Count);
    for i := 0 to APRIZ.Count-1 do
      StrArr[i] := APRIZ[i];
    vDataSet.Conditions.AddStrInFilter('DK_PRIZ', StrArr);
    for i := 0 to APRIZ.Count-1 do
      StrArr[i] := '';
    SetLength(StrArr, 0);
    end;

  // фильтр по эмитенту
  VDataSet.Conditions.AddFilter01('T028_ID', AT028_ID);

  RefreshAllRecords;
end;

procedure TB000_Opers11.actRefreshExecute(Sender: TObject);
begin
  VDataSet.Conditions.ClearFor('T027_ID');
  VDataSet.Conditions.ClearFor('DK_PRIZ');
  VDataSet.Conditions.ClearFor('T028_ID');
  inherited;
end;

procedure TB000_Opers11.actInfoUpdate(Sender: TObject);
begin
  actInfo.Enabled := not odsList.FieldByName('T051_ID').IsNull;
end;

procedure TB000_Opers11.actInfoExecute(Sender: TObject);
var
  SourceForm: Tfrm106_DataSource;
begin
  SourceForm := Tfrm106_DataSource.Create(Self);
  SourceForm.InitData(if711, odsListT051_ID.AsFloat);
  SourceForm.ShowModal;
  SourceForm.Free;
end;

end.
