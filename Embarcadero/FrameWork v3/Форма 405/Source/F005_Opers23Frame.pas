unit F005_Opers23Frame;

interface

uses
  fm010_FilteredGridFrame, Db, F005_DataPeriodFilterFrame, F005_ReporterFilterFrame,
  Forms, fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, fm033_PeriodFilterFrame, Oracle, Menus, OracleData,
  Classes, ActnList, StdCtrls, Controls, ComCtrls, ToolWin, ExtCtrls,
  Grids, DBGrids, xxxDBGrid, fm002_EditFrame, fm031_FilterFrame, untParams;

type
  TF005_Opers23 = class(TfmFilteredGrid)
    PeriodFilter: TF005_DataPeriodFilter;
    ReporterFilter: TF005_ReporterFilter;
    odsListIS_LINKED: TStringField;
    odsListT055_ID: TFloatField;
    odsListT233_ROW_NUM: TFloatField;
    odsListT240_VEKSDAT_NAME: TStringField;
    odsListT240_VEKSDAT_CODE: TStringField;
    odsListT240_VEKSDAT_OGRN: TStringField;
    odsListT240_VEKSDAT_STRAN: TStringField;
    odsListT240_SEC_TYPE: TStringField;
    odsListT240_VEKS_SERIAL: TStringField;
    odsListT240_VEKS_NUM: TStringField;
    odsListT240_VEKS_BLANK: TStringField;
    odsListT240_VEKS_DTSOST: TDateTimeField;
    odsListT240_VEKS_KODVAL: TStringField;
    odsListT240_VEKS_SROKPLAT: TStringField;
    odsListT240_VEKS_SUM: TFloatField;
    odsListT240_VEKS_DTBAL: TDateTimeField;
    odsListT240_VEKS_OSNPRI: TStringField;
    odsListT240_VEKSDERJ_NAME: TStringField;
    odsListT240_VEKSDERJ_CODE: TStringField;
    odsListT240_VEKSDERJ_OGRN: TStringField;
    odsListT240_VEKSDERJ_STRAN: TStringField;
    odsListT240_PRIM: TStringField;
    odsListT030_ID: TFloatField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT028_COUNTRY_MAIN: TStringField;
    odsListT055_LONG_NAME: TStringField;
    odsListT243_ID: TFloatField;
    odsListT243_REPORTER_SHORT_NAME: TStringField;
    odsListT243_REPORTER_INN: TStringField;
    odsListT240_VEKSDAT_REGION: TStringField;
    odsListT240_VEKSDERJ_REGION: TStringField;
    odsListT240_ID: TFloatField;
    ToolButton1: TToolButton;
    actGoToLink: TAction;
    odsListT027_ID_MAIN: TFloatField;
    odsListT027_ID: TFloatField;
    odsListT028_ID: TFloatField;
    procedure actGoToLinkUpdate(Sender: TObject);
    procedure actGoToLinkExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoEdit; override;
    function GetMatrixUpdName: string; override;
  public
    function GetEditClass: TfmEditClass; override;
    function GetKeyFieldName: string; override;
    //
    procedure InitFrame(Sender: TObject);  override;
    procedure FindData_InPer(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray; AT028_ID: Double);
  end;

var
  F005_Opers23: TF005_Opers23;

implementation

uses dm000_ObjectsFactory, unt007_LinksList, F005_Opers23EditFrame, A00_MatrixConst,
  dm005_MainData, frm01_MainForm;

{$R *.DFM}

{ TF005_Opers11 }

function TF005_Opers23.GetEditClass: TfmEditClass;
begin
  Result := TF005_Opers23Edit;
end;

function TF005_Opers23.GetKeyFieldName: string;
begin
  Result := 'T240_ID';
end;

function TF005_Opers23.GetMatrixUpdName: string;
begin
  Result := CHANGE_415_23;
end;

procedure TF005_Opers23.InitFrame(Sender: TObject);
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

procedure TF005_Opers23.DoEdit;
begin
  oqUpdate.SetVariable('T240_ID', odsList['T240_ID']);
  oqUpdate.SetVariable('T240_VEKSDAT_NAME', odsList['T240_VEKSDAT_NAME']);
  oqUpdate.SetVariable('T240_VEKSDAT_CODE', odsList['T240_VEKSDAT_CODE']);
  oqUpdate.SetVariable('T240_VEKSDAT_OGRN', odsList['T240_VEKSDAT_OGRN']);
  oqUpdate.SetVariable('T240_VEKSDAT_STRAN', odsList['T240_VEKSDAT_STRAN']);
  oqUpdate.SetVariable('T240_VEKSDAT_REGION', odsList['T240_VEKSDAT_REGION']);
  oqUpdate.SetVariable('T240_SEC_TYPE', odsList['T240_SEC_TYPE']);
  oqUpdate.SetVariable('T240_VEKS_SERIAL', odsList['T240_VEKS_SERIAL']);
  oqUpdate.SetVariable('T240_VEKS_NUM', odsList['T240_VEKS_NUM']);
  oqUpdate.SetVariable('T240_VEKS_BLANK', odsList['T240_VEKS_BLANK']);
  oqUpdate.SetVariable('T240_VEKS_KODVAL', odsList['T240_VEKS_KODVAL']);
  oqUpdate.SetVariable('T240_VEKS_SUM', odsList['T240_VEKS_SUM']);
  oqUpdate.SetVariable('T240_VEKS_DTSOST', odsList['T240_VEKS_DTSOST']);
  oqUpdate.SetVariable('T240_VEKS_SROKPLAT', odsList['T240_VEKS_SROKPLAT']);
  oqUpdate.SetVariable('T240_VEKS_DTBAL', odsList['T240_VEKS_DTBAL']);
  oqUpdate.SetVariable('T240_VEKS_OSNPRI', odsList['T240_VEKS_OSNPRI']);
  oqUpdate.SetVariable('T240_VEKSDERJ_NAME', odsList['T240_VEKSDERJ_NAME']);
  oqUpdate.SetVariable('T240_VEKSDERJ_CODE', odsList['T240_VEKSDERJ_CODE']);
  oqUpdate.SetVariable('T240_VEKSDERJ_OGRN', odsList['T240_VEKSDERJ_OGRN']);
  oqUpdate.SetVariable('T240_VEKSDERJ_STRAN', odsList['T240_VEKSDERJ_STRAN']);
  oqUpdate.SetVariable('T240_VEKSDERJ_REGION', odsList['T240_VEKSDERJ_REGION']);
  oqUpdate.SetVariable('T240_PRIM', odsList['T240_PRIM']);
  oqUpdate.SetVariable('USER', dmMain.GetUser);
  oqUpdate.Execute;
end;

procedure TF005_Opers23.actGoToLinkUpdate(Sender: TObject);
begin
  actGoToLink.Enabled := not odsList.IsEmpty and (odsListIS_LINKED.AsString = 'нет');
end;

procedure TF005_Opers23.actGoToLinkExecute(Sender: TObject);
begin
  // Переходим на 1 шаг связывания
  frm01_Main.Find_415_Link_01(
    odsListT055_ID.AsFloat,      // на дату
    odsListT027_ID.AsFloat,      // тип ц.б.
    23,                          // раздел
    odsListT028_ID.AsFloat       // эмитент
    );
end;

procedure TF005_Opers23.FindData_InPer(const AT055_ID_S,
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

procedure TF005_Opers23.actRefreshExecute(Sender: TObject);
begin
  VDataSet.Conditions.ClearFor('T027_ID');
  VDataSet.Conditions.ClearFor('T028_ID');
  inherited;
end;

end.
