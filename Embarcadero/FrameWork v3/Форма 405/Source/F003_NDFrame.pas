unit F003_NDFrame;

interface

uses
  StdCtrls, ExtCtrls, Buttons, Oracle, Db, OracleData, xxxDbGrid, fm005_GridFrame,
  F003_SecTypeFrame, F003_FileFrame, F003_TimeFrame, untParams, Forms,
  fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, Menus, Classes, ActnList, Controls, ComCtrls, ToolWin,
  Grids, DBGrids, fm031_FilterFrame;

type
  TF003_ND = class(TfmGrid)
    odsListT203_ID: TFloatField;
    odsListT202_ID: TFloatField;
    odsListT203_CURRENCY: TStringField;
    odsListT203_NOMINAL: TFloatField;
    odsListT203_COUNT_01: TFloatField;
    odsListT203_COUNT_02: TFloatField;
    odsListT203_COUNT_03: TFloatField;
    odsListT203_COUNT_04: TFloatField;
    odsListT203_ROW_NUM: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT030_PARENT_ID: TFloatField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListSN015_SHORT_RUS_NAME: TStringField;
    odsListT202_FILE_NAME: TStringField;
    Panel1: TPanel;
    F003_SecType1: TF003_SecType;
    F003_File1: TF003_File;
    SpeedButton1: TSpeedButton;
    F003_Time1: TF003_Time;
    odsTotal: TOracleDataSet;
    dsTotal: TDataSource;
    xxxTotal: TxxxDBGrid;
    odsTotalT203_COUNT_01: TFloatField;
    odsTotalT203_COUNT_02: TFloatField;
    odsTotalT203_COUNT_03: TFloatField;
    odsTotalT203_COUNT_04: TFloatField;
    cbRes: TCheckBox;
    odsTotalCOUNT_STR: TStringField;
    odsListT028_ID: TFloatField;
    oqPeriods: TOracleQuery;
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
    procedure actExcelUpdate(Sender: TObject);
    procedure cbResClick(Sender: TObject);
    procedure odsListAfterOpen(DataSet: TDataSet);
    procedure F003_Time1lcbCloseUp(Sender: TObject);
  private
    FT055_ID_S: Double;
    FT055_ID_E: Double;
    procedure RefreshTotalData;
    //
    procedure ClearFilters;
  protected
    procedure SetConditions; override;
  public
    procedure InitFrame(Sender: TObject);  override;
    //
    procedure Find_01(const AT055_ID, AT027_ID, AT028_ID: Double);
    procedure FindEmissionsInPer(const AT055_ID_S, At055_ID_E: Double; AT030_IDs: TFloatArray);
  end;

var
  F003_ND: TF003_ND;

implementation

{$R *.DFM}

uses SysUtils, dm000_ObjectsFactory, unt007_LinksList;

{ TF001_Data }

procedure TF003_ND.InitFrame(Sender: TObject);
begin
  FT055_ID_S := -1;
  FT055_ID_E := -1;

  // инициализируем фильтры
  if F003_Time1.odsList.Active then Exit;

  // список файлов зависит от выбранного периода
  ObjectsFactory.Links.LinkLookUp(
    F003_Time1,
    F003_File1,
    'T055_ID',
    ltRefresh
    );

  // Фильтр по периоду
  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumEqual,
    F003_Time1,
    Self,
    'T055_ID',
    ltNoRefresh
    );

  // фильтр по типу ценных бумаг
  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumEqual,
    F003_SecType1,
    Self,
    'T027_ID',
    ltNoRefresh
    );

  // фильтр по файлу загрузки
  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumEqual,
    F003_File1,
    Self,
    'T202_FILE_NAME',
    ltNoRefresh
    );

  // инициализируем время
  F003_Time1.InitFrame(nil);

  // инициализируем тип ц.б. и встаем на SHS3
  F003_SecType1.InitFrame(nil);
  F003_SecType1.KeyValue := 3;

  inherited;
end;

procedure TF003_ND.SetConditions;
begin
  // обычный фильтр по периоду
//  odsList.SetVariable('T055_ID_S', F003_Time1.KeyValue);
  odsList.SetVariable('T055_ID_S', FT055_ID_S);
  odsList.SetVariable('T055_ID_E', FT055_ID_E);

  inherited;
end;

procedure TF003_ND.actExcelUpdate(Sender: TObject);
begin
  //  inherited;
end;

procedure TF003_ND.RefreshTotalData;
const
  SQL_TEXT =
    ' SELECT ''Количество строк: '' || TO_CHAR(count(*)) AS COUNT_STR,' + #13#10 +
    '       SUM(T203_COUNT_01) AS T203_COUNT_01,' + #13#10 +
    '       SUM(T203_COUNT_02) AS T203_COUNT_02,' + #13#10 +
    '       SUM(T203_COUNT_03) AS T203_COUNT_03,' + #13#10 +
    '       SUM(T203_COUNT_04) AS T203_COUNT_04' + #13#10 +
    ' FROM   (%S)';
var
  I: Integer;
begin
  xxxTotal.Visible := cbRes.Checked;
  if cbRes.Checked then
  begin
    odsTotal.Close;
    odsTotal.SQL.Text := Format(SQL_TEXT, [odsList.Sql.Text]);
    odsTotal.ClearVariables;
    for I := 0 to odsList.VariableCount - 1 do
      begin
      odsTotal.DeclareVariable(odsList.VariableName(I), odsList.VariableType(I));
      odsTotal.SetVariable(odsList.VariableName(I), odsList.GetVariable(I));
    end;
    odsTotal.Open;
  end;
end;

procedure TF003_ND.cbResClick(Sender: TObject);
begin
  RefreshTotalData;
end;

procedure TF003_ND.odsListAfterOpen(DataSet: TDataSet);
begin
  //inherited;

  RefreshTotalData;
end;

procedure TF003_ND.Find_01(const AT055_ID, AT027_ID, AT028_ID: Double);
begin
  // Переходим от главной эмиссии

  // очищаем фильтры
  ClearFilters;

  // устанавливаем фильтр по кварталу
  F003_Time1.KeyValue := AT055_ID;
  FT055_ID_S := AT055_ID;
  FT055_ID_E := AT055_ID;

  // устанавливаем фильтр по типу ценной бумаги
  F003_SecType1.cb.Checked := True;
  F003_SecType1.KeyValue := AT027_ID;

  // устанавливаем фильтр по резиденту
  VDataSet.Conditions.AddFilter01('T028_ID', AT028_ID);

  RefreshAllRecords;
end;

procedure TF003_ND.FindEmissionsInPer(const AT055_ID_S, At055_ID_E: Double;
  AT030_IDs: TFloatArray);
begin
  // очищаем фильтры
  ClearFilters;

  // устанавливаем фильтр по кварталу
  oqPeriods.SetVariable('T055_ID_S_M', AT055_ID_S);
  oqPeriods.SetVariable('T055_ID_E_M', AT055_ID_E);
  oqPeriods.Execute;

  // устанавливаем фильтр по кварталу
  F003_Time1.KeyValue := oqPeriods.GetVariable('T055_ID_S_Q');
  FT055_ID_S := oqPeriods.GetVariable('T055_ID_S_Q');
  FT055_ID_E := oqPeriods.GetVariable('T055_ID_E_Q');

  // устанавливаем фильтр по T030_ID
  VDataSet.Conditions.AddNumInFilter('T030_ID', untParams.TFloatArray(AT030_IDs));

  RefreshAllRecords;
end;

procedure TF003_ND.ClearFilters;
begin
  // очистка фильтров
  VDataSet.Conditions.Clear;
  F003_SecType1.cb.Checked := False;
  F003_File1.cb.Checked := False;

  FT055_ID_S := -1;
  FT055_ID_E := -1;
end;

procedure TF003_ND.F003_Time1lcbCloseUp(Sender: TObject);
begin
  inherited;
  F003_Time1.lcbCloseUp(Sender);
//  FT055_ID_S := F003_Time1.KeyValueFloat;
//  FT055_ID_E := F003_Time1.KeyValueFloat;
end;

end.
