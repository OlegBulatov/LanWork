unit B000_Opers23Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  B002_BankFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame,
  B000_RemainsPeriodFilterFrame, fm031_FilterFrame, untParams;

type
  TB000_Opers23 = class(TfmFilteredGrid)
    PeriodFilter: TB000_RemainsPeriodFilter;
    BankFilter: TB002_BankFilter;
    actGoToLink: TAction;
    ToolButton1: TToolButton;
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
    odsListT229_ID: TFloatField;
    odsListT229_VEKSSERIAL: TStringField;
    odsListT229_VEKSBLANK: TStringField;
    odsListT229_VEKSDTSOST: TDateTimeField;
    odsListT229_SROKPLAT: TStringField;
    odsListT229_VEKSSUM: TFloatField;
    odsListT229_VEKSSUM_USD: TFloatField;
    odsListT229_VEKSCODVAL: TIntegerField;
    odsListT229_VEKSDTBAL: TDateTimeField;
    odsListT229_VEKSOSNPRI: TStringField;
    odsListT229_VEKSDERJ: TStringField;
    odsListT229_INNDERJ: TStringField;
    odsListT229_COUNTR_DR: TIntegerField;
    odsListT229_TINVEKSDAT: TStringField;
    odsListT229_OGRNVEKDAT: TStringField;
    odsListT229_TINDERJ: TStringField;
    odsListT229_OGRNDERJKO: TStringField;
    odsListT229_DATE_1: TDateTimeField;
    odsListT229_DATE_2: TDateTimeField;
    odsListT229_VEKSDERJSTAT: TStringField;
    odsListT229_COMMENT: TStringField;
    odsListT229_PERCENT: TFloatField;
    odsListT229_VEKSSTATE: TStringField;
    odsListT229_PRIZ_VEKSDAT_NREZ: TStringField;
    odsListT229_PRIZ_VEKSDERJ_NREZ: TStringField;
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
  B000_Opers23: TB000_Opers23;

implementation

uses dm000_ObjectsFactory, unt007_LinksList, frm01_MainForm, frm106_DataSourceForm;

{$R *.DFM}

{ TB000_Opers23 }

procedure TB000_Opers23.InitFrame(Sender: TObject);
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

procedure TB000_Opers23.actGoToLinkUpdate(Sender: TObject);
begin
  actGoToLink.Enabled := not odsList.IsEmpty and (odsListIS_MAIN.AsString = 'нет');
end;

procedure TB000_Opers23.actGoToLinkExecute(Sender: TObject);
begin
  // Переходим на 1 шаг связывания
  frm01_Main.Find_711_Link_01(
    odsListT055_ID.AsFloat,      // на дату
    odsListT027_ID.AsFloat,      // тип ц.б.
    23,                          // раздел
    odsListT028_ID.AsFloat       // эмитент
    );
end;

procedure TB000_Opers23.FindData_InPer(const AT055_ID_S,
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

procedure TB000_Opers23.actRefreshExecute(Sender: TObject);
begin
  VDataSet.Conditions.ClearFor('T027_ID');
  VDataSet.Conditions.ClearFor('T028_ID');
  inherited;
end;

procedure TB000_Opers23.odsListBeforeOpen(DataSet: TDataSet);
var
  i: integer;
begin
//  inherited;
  if PeriodFilter.cb.Checked and (PeriodFilter.KeyValue2Float < 1974) then// апрель 2018
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'T201_PERCENT')
      or (xxxDbGrid.Columns[i].FieldName = 'T201_VEKSSTATE') then
        xxxDbGrid.Columns[i].Visible := False;
      end;
    end
  else
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'T201_PERCENT')
      or (xxxDbGrid.Columns[i].FieldName = 'T201_VEKSSTATE') then
        xxxDbGrid.Columns[i].Visible := True;
      end;
    end;
end;

procedure TB000_Opers23.actInfoUpdate(Sender: TObject);
begin
  actInfo.Enabled := not odsList.FieldByName('T051_ID').IsNull;
end;

procedure TB000_Opers23.actInfoExecute(Sender: TObject);
var
  SourceForm: Tfrm106_DataSource;
begin
  SourceForm := Tfrm106_DataSource.Create(Self);
  SourceForm.InitData(if711, odsListT051_ID.AsFloat);
  SourceForm.ShowModal;
  SourceForm.Free;
end;

end.
