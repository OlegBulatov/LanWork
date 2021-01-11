unit M002_IsuLoadPage3GridFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, fm002_EditFrame, xxxDbLookupCheckCombo;

type
  TM002_IsuLoadPage3Grid = class(TfmFilteredGrid)
    odsListT186_LINE_NO: TFloatField;
    odsListT186_ISSUER_NAME: TStringField;
    odsListT186_ISU_NAME: TStringField;
    odsListT186_MASTER_COMPANY_NAME: TStringField;
    odsListT186_MASTER_COMPANY_LIC: TStringField;
    odsListT186_MASTER_COMPANY_INN: TStringField;
    odsListT186_MASTER_COMPANY_INN_ERR: TFloatField;
    odsListT186_ISSUER_TYPE: TStringField;
    odsListT186_SEC_TYPE: TStringField;
    odsListT186_SEC_TYPE_ERR: TFloatField;
    odsListT186_SEC_REGN: TStringField;
    odsListT186_SEC_REGN_ERR: TFloatField;
    odsListT186_REG_DATE: TStringField;
    odsListT186_REG_DATE_ERR: TFloatField;
    odsListT186_MASTER_CHANGE_DATE: TStringField;
    odsListT186_MASTER_CHANGE_DATE_ERR: TFloatField;
    odsListT186_ANN_DATE: TStringField;
    odsListT186_ANN_DATE_ERR: TFloatField;
    odsListT186_CURRENCY: TStringField;
    odsListT186_CURRENCY_ERR: TFloatField;
    odsListT186_DATA_CHANGE_DATE: TStringField;
    odsListT186_ACTUAL_BANK: TStringField;
    odsListT027_ID: TFloatField;
    odsListT186_DATA_CHANGE_DATE_ERR: TFloatField;
    odsListT186_ERR_DESC: TStringField;
    cbLicNum: TCheckBox;
    lcbLicNum: TxxxDBLookupCheckCombo;
    lcbInn: TxxxDBLookupCheckCombo;
    cbInn: TCheckBox;
    cbSecRegn: TCheckBox;
    lcbSecRegn: TxxxDBLookupCheckCombo;
    odsLicNum: TOracleDataSet;
    dsLicNum: TDataSource;
    odsInn: TOracleDataSet;
    dsInn: TDataSource;
    odsSecRegn: TOracleDataSet;
    dsSecRegn: TDataSource;
    odsListT186_SEC_REGN_DUPL: TFloatField;
    odsListT186_HAS_ERRORS: TFloatField;
    oqSave: TOracleQuery;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure InitFilters;
  protected
    function GetMatrixUpdName: string; override;
    function GetKeyFieldName: string; override;

    procedure DoEdit; override;

    procedure SetConditions; override;
  public
    function GetEditClass: TfmEditClass; override;
    procedure InitFrame(Sender: TObject); override;
    function  HasErrors: boolean;
    procedure SaveFile2Db;
  end;

var
  M002_IsuLoadPage3Grid: TM002_IsuLoadPage3Grid;

implementation

uses
  M002_IsuEditFrame, Matrix, A00_MatrixConst, untParams;

{$R *.DFM}

function TM002_IsuLoadPage3Grid.GetEditClass: TfmEditClass;
begin
  Result := TM002_IsuEdit;
end;

function TM002_IsuLoadPage3Grid.GetKeyFieldName: string;
begin
  Result := 'T186_LINE_NO';
end;

function TM002_IsuLoadPage3Grid.GetMatrixUpdName: string;
begin
  Result := CHANGE_DATA_1;
end;

procedure TM002_IsuLoadPage3Grid.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // нет информации
  if ((Column.Field.FieldName = 'T186_ISSUER_NAME') and (odsListT186_ISSUER_NAME.AsString = '')) or
     ((Column.Field.FieldName = 'T186_ISU_NAME') and (odsListT186_ISU_NAME.AsString = '')) or
     ((Column.Field.FieldName = 'T186_MASTER_COMPANY_NAME') and (odsListT186_MASTER_COMPANY_NAME.AsString = '')) or
     ((Column.Field.FieldName = 'T186_MASTER_COMPANY_LIC') and (odsListT186_MASTER_COMPANY_LIC.AsString = '')) or
     ((Column.Field.FieldName = 'T186_MASTER_COMPANY_INN') and (odsListT186_MASTER_COMPANY_INN.AsString = '')) or
     ((Column.Field.FieldName = 'T186_ISSUER_TYPE') and ((odsListT186_ISSUER_TYPE.AsString = '') {or (odsListT186_ISSUER_TYPE.AsString = 'Нет инф.')} )) or
     ((Column.Field.FieldName = 'T186_SEC_TYPE') and (odsListT186_SEC_TYPE.AsString = '')) or
     ((Column.Field.FieldName = 'T186_SEC_REGN') and (odsListT186_SEC_REGN.AsString = '')) or
     ((Column.Field.FieldName = 'T186_REG_DATE') and (odsListT186_REG_DATE.AsString = '')) or
     ((Column.Field.FieldName = 'T186_CURRENCY') and (odsListT186_CURRENCY.AsString = '')) or
     ((Column.Field.FieldName = 'T186_DATA_CHANGE_DATE') and (odsListT186_DATA_CHANGE_DATE.AsString = '')) then
    begin
    xxxDbGrid.Canvas.Brush.Color := clYellow;

    if gdSelected in State then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end;

  // ошибка в ячейке
  if ((Column.Field.FieldName = 'T186_MASTER_COMPANY_INN') and (odsListT186_MASTER_COMPANY_INN_ERR.AsFloat = 1)) or
     ((Column.Field.FieldName = 'T186_SEC_TYPE') and (odsListT186_SEC_TYPE_ERR.AsFloat = 1)) or
     ((Column.Field.FieldName = 'T186_SEC_REGN') and ((odsListT186_SEC_REGN_ERR.AsFloat = 1) or (odsListT186_SEC_REGN_DUPL.AsFloat > 0))) or
     ((Column.Field.FieldName = 'T186_REG_DATE') and (odsListT186_REG_DATE_ERR.AsFloat = 1)) or
     ((Column.Field.FieldName = 'T186_MASTER_CHANGE_DATE') and (odsListT186_MASTER_CHANGE_DATE_ERR.AsFloat = 1)) or
     ((Column.Field.FieldName = 'T186_ANN_DATE') and (odsListT186_ANN_DATE_ERR.AsFloat = 1)) or
     ((Column.Field.FieldName = 'T186_CURRENCY') and (odsListT186_CURRENCY_ERR.AsFloat = 1)) then
    begin
    xxxDbGrid.Canvas.Brush.Color := clRed;

    if gdSelected in State then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end;

  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TM002_IsuLoadPage3Grid.DoEdit;
begin
  oqUpdate.SetVariable('T186_LINE_NO', odsList['T186_LINE_NO']); // берется из записи
  oqUpdate.SetVariable('T186_ISSUER_NAME', odsList['T186_ISSUER_NAME']);
  oqUpdate.SetVariable('T186_ISU_NAME', odsList['T186_ISU_NAME']);
  oqUpdate.SetVariable('T186_MASTER_COMPANY_NAME', odsList['T186_MASTER_COMPANY_NAME']);
  oqUpdate.SetVariable('T186_MASTER_COMPANY_LIC', odsList['T186_MASTER_COMPANY_LIC']);
  oqUpdate.SetVariable('T186_MASTER_COMPANY_INN', odsList['T186_MASTER_COMPANY_INN']);
  oqUpdate.SetVariable('T186_ISSUER_TYPE', odsList['T186_ISSUER_TYPE']);
  oqUpdate.SetVariable('T186_SEC_TYPE', odsList['T186_SEC_TYPE']);
  oqUpdate.SetVariable('T186_SEC_REGN', odsList['T186_SEC_REGN']);
  oqUpdate.SetVariable('T186_REG_DATE', odsList['T186_REG_DATE']);
  oqUpdate.SetVariable('T186_MASTER_CHANGE_DATE', odsList['T186_MASTER_CHANGE_DATE']);
  oqUpdate.SetVariable('T186_ANN_DATE', odsList['T186_ANN_DATE']);
  oqUpdate.SetVariable('T186_CURRENCY', odsList['T186_CURRENCY']);
  oqUpdate.SetVariable('T186_ACTUAL_BANK', odsList['T186_ACTUAL_BANK']);
  oqUpdate.SetVariable('T186_DATA_CHANGE_DATE', odsList['T186_DATA_CHANGE_DATE']);

  oqUpdate.Execute;

  InitFilters;
end;

procedure TM002_IsuLoadPage3Grid.InitFrame(Sender: TObject);
begin
  InitFilters;

  inherited;
end;

procedure TM002_IsuLoadPage3Grid.InitFilters;
var
  vOldValues: TStringList;
begin
  vOldValues := TStringList.Create;

  if cbLicNum.Checked then
    begin
    vOldValues.Clear;
    vOldValues.AddStrings(lcbLicNum.KeyValuesStr);
    end;
  odsLicNum.Close;
  odsLicNum.Open;
  if cbLicNum.Checked then
    lcbLicNum.KeyValuesStr := vOldValues;

  if cbInn.Checked then
    begin
    vOldValues.Clear;
    vOldValues.AddStrings(lcbInn.KeyValuesStr);
    end;
  odsInn.Close;
  odsInn.Open;
  if cbInn.Checked then
    begin
    vOldValues.Clear;
    lcbInn.KeyValuesStr := vOldValues;
    end;

  if cbSecRegn.Checked then
    begin
    vOldValues.Clear;
    vOldValues.AddStrings(lcbSecRegn.KeyValuesStr);
    end;
  odsSecRegn.Close;
  odsSecRegn.Open;
  if cbSecRegn.Checked then
    lcbSecRegn.KeyValuesStr := vOldValues;

  vOldValues.Free;
end;

procedure TM002_IsuLoadPage3Grid.SetConditions;
begin
  // фильтр по номеру лицензии
  VDataSet.Conditions.ClearFor('T186_MASTER_COMPANY_LIC');
  if cbLicNum.Checked then
    VDataSet.Conditions.AddStrInFilterA('T186_MASTER_COMPANY_LIC', lcbLicNum.KeyValuesStr);

  // фильтр по ИНН
  VDataSet.Conditions.ClearFor('T186_MASTER_COMPANY_INN');
  if cbInn.Checked then
    VDataSet.Conditions.AddStrInFilterA('T186_MASTER_COMPANY_INN', lcbInn.KeyValuesStr);

  // фильтр по ИНН
  VDataSet.Conditions.ClearFor('T186_SEC_REGN');
  if cbSecRegn.Checked then
    VDataSet.Conditions.AddStrInFilterA('T186_SEC_REGN', lcbSecRegn.KeyValuesStr);

  inherited;
end;

function TM002_IsuLoadPage3Grid.HasErrors: boolean;
begin
  Result := (odsListT186_HAS_ERRORS.AsFloat <> 0);
end;

procedure TM002_IsuLoadPage3Grid.SaveFile2Db;
var
  vCursor: TCursor;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;
  try
    oqSave.Execute;
  finally

    Screen.Cursor := vCursor;
  end;   
end;

end.
