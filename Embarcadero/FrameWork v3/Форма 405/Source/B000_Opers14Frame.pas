unit B000_Opers14Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  B002_BankFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame,
  B000_RemainsPeriodFilterFrame, fm031_FilterFrame, untParams;

type
  TB000_Opers14 = class(TfmFilteredGrid)
    PeriodFilter: TB000_RemainsPeriodFilter;
    BankFilter: TB002_BankFilter;
    odsListT051_ID: TFloatField;
    odsListT051_BANK_CODE: TStringField;
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
    odsListSUM_CB: TFloatField;
    odsListSUM_CB_USD: TFloatField;
    odsListBAL_NUM: TStringField;
    actGoToLink: TAction;
    ToolButton1: TToolButton;
    odsListKODVAL_CB: TStringField;
    odsListN_ST: TFloatField;
    odsListKOL_CB: TFloatField;
    odsListKOD_VID: TStringField;
    odsListBAL_STOIM: TFloatField;
    odsListNKD: TFloatField;
    odsListPER_MINUS: TFloatField;
    odsListPER_PLUS: TFloatField;
    odsListSRC_LEVEL: TStringField;
    odsListCATEGORY: TStringField;
    odsListRESERV: TFloatField;
    odsListPRIZ_EMIT_NREZ: TStringField;
    odsListPEREOC: TFloatField;
    odsListCORR: TFloatField;
    odsListRESERV_CORR: TFloatField;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    actInfo: TAction;
    procedure actGoToLinkUpdate(Sender: TObject);
    procedure actGoToLinkExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure odsListBeforeOpen(DataSet: TDataSet);
    procedure actInfoUpdate(Sender: TObject);
    procedure actInfoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
    procedure FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray; AT028_ID: Double);
  end;

var
  B000_Opers14: TB000_Opers14;

implementation

uses dm000_ObjectsFactory, unt007_LinksList, frm01_MainForm, frm106_DataSourceForm;

{$R *.DFM}

{ TB000_Opers14 }

procedure TB000_Opers14.InitFrame(Sender: TObject);
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

procedure TB000_Opers14.actGoToLinkUpdate(Sender: TObject);
begin
  actGoToLink.Enabled := not odsList.IsEmpty and (odsListIS_MAIN.AsString = 'нет');
end;

procedure TB000_Opers14.actGoToLinkExecute(Sender: TObject);
begin
  // Переходим на 1 шаг связывания
  frm01_Main.Find_711_Link_01(
    odsListT055_ID.AsFloat,      // на дату
    odsListT027_ID.AsFloat,      // тип ц.б.
    14,                          // раздел
//    odsListT028_PARENT_ID.AsFloat       // эмитент
    odsListT028_ID.AsFloat       // эмитент
    );
end;

procedure TB000_Opers14.FindData_InPer(const AT055_ID_S,
  AT055_ID_E: Double; AT027_IDs: TFloatArray; AT028_ID: Double);
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

  // фильтр по эмитенту
  VDataSet.Conditions.AddFilter01('T028_ID', AT028_ID);

  RefreshAllRecords;
end;

procedure TB000_Opers14.actRefreshExecute(Sender: TObject);
begin
  VDataSet.Conditions.ClearFor('T027_ID');
  VDataSet.Conditions.ClearFor('T028_ID');
  inherited;
end;

procedure TB000_Opers14.odsListBeforeOpen(DataSet: TDataSet);
var
  i: integer;
begin
  if PeriodFilter.cb.Checked and (PeriodFilter.KeyValue2Float < 1974) then// апрель 2018
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'KODVAL_CB')
      or (xxxDbGrid.Columns[i].FieldName = 'N_ST')
      or (xxxDbGrid.Columns[i].FieldName = 'KOL_CB')
      or (xxxDbGrid.Columns[i].FieldName = 'BAL_STOIM')
      or (xxxDbGrid.Columns[i].FieldName = 'NKD')
      or (xxxDbGrid.Columns[i].FieldName = 'PER_MINUS')
      or (xxxDbGrid.Columns[i].FieldName = 'PER_PLUS')
      or (xxxDbGrid.Columns[i].FieldName = 'SRC_LEVEL')
      or (xxxDbGrid.Columns[i].FieldName = 'CATEGORY')
      or (xxxDbGrid.Columns[i].FieldName = 'RESERV') then
        xxxDbGrid.Columns[i].Visible := False
      else if (xxxDbGrid.Columns[i].FieldName = 'SUM_CB') then
        xxxDbGrid.Columns[i].Visible := True;
      end;
    end
  else
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'KODVAL_CB')
      or (xxxDbGrid.Columns[i].FieldName = 'N_ST')
      or (xxxDbGrid.Columns[i].FieldName = 'KOL_CB')
      or (xxxDbGrid.Columns[i].FieldName = 'BAL_STOIM')
      or (xxxDbGrid.Columns[i].FieldName = 'NKD')
      or (xxxDbGrid.Columns[i].FieldName = 'PER_MINUS')
      or (xxxDbGrid.Columns[i].FieldName = 'PER_PLUS')
      or (xxxDbGrid.Columns[i].FieldName = 'SRC_LEVEL')
      or (xxxDbGrid.Columns[i].FieldName = 'CATEGORY')
      or (xxxDbGrid.Columns[i].FieldName = 'RESERV') then
        xxxDbGrid.Columns[i].Visible := True
      else if (xxxDbGrid.Columns[i].FieldName = 'SUM_CB') then
        xxxDbGrid.Columns[i].Visible := False;
      end;
    end;

  if PeriodFilter.cb.Checked and (PeriodFilter.KeyValueFloat < 1985) then // до января 2019
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'PER_MINUS')
      or (xxxDbGrid.Columns[i].FieldName = 'PER_PLUS') then
        xxxDbGrid.Columns[i].Visible := True;
      end;
    end
  else
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'PER_MINUS')
      or (xxxDbGrid.Columns[i].FieldName = 'PER_PLUS') then
        xxxDbGrid.Columns[i].Visible := False;
      end;
    end;

  if PeriodFilter.cb.Checked and (PeriodFilter.KeyValue2Float < 1985) then// до января 2019
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'PEREOC') then
        xxxDbGrid.Columns[i].Visible := False;
      end;
    end
  else
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'PEREOC') then 
        xxxDbGrid.Columns[i].Visible := True;
      end;
    end;

end;

procedure TB000_Opers14.actInfoUpdate(Sender: TObject);
begin
  actInfo.Enabled := not odsList.FieldByName('T051_ID').IsNull;
end;

procedure TB000_Opers14.actInfoExecute(Sender: TObject);
var
  SourceForm: Tfrm106_DataSource;
begin
  SourceForm := Tfrm106_DataSource.Create(Self);
  SourceForm.InitData(if711, odsListT051_ID.AsFloat);
  SourceForm.ShowModal;
  SourceForm.Free;
end;

end.
