unit M002_IsuListFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, xxxDbLookupCheckCombo, fm002_EditFrame, fm000_Parent,
  fm008_DBObjectFrame, fm021_CheckBoxFrame, fm020_LookUpFrame,
  fm033_PeriodFilterFrame, M002_PeriodFilterFrame, Variants;

type
  TM002_IsuList = class(TfmFilteredGrid)
    odsListT185_ID: TFloatField;
    odsListT185_ISSUER_NAME: TStringField;
    odsListT185_ISU_NAME: TStringField;
    odsListT185_MASTER_COMPANY_NAME: TStringField;
    odsListT185_MASTER_COMPANY_LIC: TStringField;
    odsListT185_MASTER_COMPANY_INN: TStringField;
    odsListT037_ID: TFloatField;
    odsListT185_ISSUER_TYPE: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT185_SEC_REGN: TStringField;
    odsListT185_REG_DATE: TDateTimeField;
    odsListT185_MASTER_CHANGE_DATE: TDateTimeField;
    odsListT185_ANNUAL_DATE: TDateTimeField;
    odsListT185_CURRENCY: TStringField;
    odsListT185_ACTUAL_BANK: TIntegerField;
    odsListT185_DATA_CHANGE_DATE: TDateTimeField;
    odsListT185_CHANGE_DATE: TDateTimeField;
    odsListT185_CHANGE_USER: TStringField;
    odsListT185_IS_DELETED: TFloatField;
    odsListT185_DATA_TYPE: TStringField;
    cbLicNum: TCheckBox;
    cbInn: TCheckBox;
    cbSecRegn: TCheckBox;
    cbShowHistory: TCheckBox;
    lcbLicNum: TxxxDBLookupCheckCombo;
    odsLicNum: TOracleDataSet;
    dsLicNum: TDataSource;
    lcbInn: TxxxDBLookupCheckCombo;
    odsInn: TOracleDataSet;
    dsInn: TDataSource;
    lcbSecRegn: TxxxDBLookupCheckCombo;
    odsSecRegn: TOracleDataSet;
    dsSecRegn: TDataSource;
    odsListHAS_HISTORY: TFloatField;
    actHistory: TAction;
    ToolButton1: TToolButton;
    PeriodFilter: TM002_PeriodFilter;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actHistoryUpdate(Sender: TObject);
    procedure actHistoryExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
  private
  protected
    function GetMatrixUpdName: string; override;
    function GetKeyFieldName: string; override;
    procedure DoEdit; override;
    procedure SetConditions; override;
  public
    function GetEditClass: TfmEditClass; override;
    procedure InitFrame(Sender: TObject); override;
    procedure InitFilters;
  end;

var
  M002_IsuList: TM002_IsuList;

implementation

uses
  M002_IsuListHistoryForm, M002_IsuEditFrame, A00_MatrixConst,
  dm005_MainData;

{$R *.DFM}

{ TM002_IsuList }

procedure TM002_IsuList.InitFrame(Sender: TObject);
begin
  InitFilters;

  inherited;
end;

procedure TM002_IsuList.InitFilters;
begin
  PeriodFilter.InitFrame(Self);
{
  odsChangeDate1.Close;
  odsChangeDate1.Open;
  if not odsChangeDate1.FieldByName('T185_DATA_CHANGE_DATE').IsNull then
    lcbChangeDate1.KeyValue := odsChangeDate1.FieldByName('T185_DATA_CHANGE_DATE').Value;

  odsChangeDate2.Close;
  odsChangeDate2.Open;
  if not odsChangeDate2.FieldByName('T185_DATA_CHANGE_DATE').IsNull then
    lcbChangeDate2.KeyValue := odsChangeDate2.FieldByName('T185_DATA_CHANGE_DATE').Value;
}
  odsLicNum.Close;
  odsLicNum.Open;

  odsInn.Close;
  odsInn.Open;

  odsSecRegn.Close;
  odsSecRegn.Open;
end;

procedure TM002_IsuList.SetConditions;
var
  vDateSeparator: Char;
  vShortDateFormat: string;
begin
  VDataSet.Conditions.ClearFor('T185_DATA_CHANGE_DATE');
  if PeriodFilter.cb.Checked then
    begin
    vDateSeparator := FormatSettings.DateSeparator;
    FormatSettings.DateSeparator := '.';
    vShortDateFormat := FormatSettings.ShortDateFormat;
    FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
    VDataSet.Conditions.AddDateBetweenFilter('T185_DATA_CHANGE_DATE', VarToDateTime(PeriodFilter.KeyValue), VarToDateTime(PeriodFilter.KeyValue2));
    FormatSettings.DateSeparator := vDateSeparator;
    FormatSettings.ShortDateFormat := vShortDateFormat;
    end;

  VDataSet.Conditions.ClearFor('T185_MASTER_COMPANY_LIC');
  if cbLicNum.Checked then
    VDataSet.Conditions.AddStrInFilterA('T185_MASTER_COMPANY_LIC', lcbLicNum.KeyValuesStr);

  VDataSet.Conditions.ClearFor('T185_MASTER_COMPANY_INN');
  if cbInn.Checked then
    VDataSet.Conditions.AddStrInFilterA('T185_MASTER_COMPANY_INN', lcbInn.KeyValuesStr);

  VDataSet.Conditions.ClearFor('T185_SEC_REGN');
  if cbSecRegn.Checked then
    VDataSet.Conditions.AddStrInFilterA('T185_SEC_REGN', lcbSecRegn.KeyValuesStr);

  if cbShowHistory.Checked then
    odsList.SetVariable('SHOW_HISTORY', 'H')
  else
    odsList.SetVariable('SHOW_HISTORY', '-');

  inherited;
end;

procedure TM002_IsuList.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // запись из истории
  if odsListT185_DATA_TYPE.AsString = 'H' then
    begin
//    xxxDbGrid.Canvas.Brush.Color := RGB(245,255,245);
    xxxDbGrid.Canvas.Brush.Color := $00CCEECC;
    if gdSelected in State then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end
  // запись с историей
  else if (odsListT185_DATA_TYPE.AsString = 'D') and (odsListHAS_HISTORY.AsFloat = 1) then
    begin
//    xxxDbGrid.Canvas.Brush.Color := RGB(255,255,245);
    xxxDbGrid.Canvas.Brush.Color := $00CCEEFF;
    if gdSelected in State then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end;

  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TM002_IsuList.actHistoryUpdate(Sender: TObject);
begin
  actHistory.Enabled := not odsList.IsEmpty
                        and (odsListHAS_HISTORY.AsFloat = 1)
                        and (odsListT185_DATA_TYPE.AsString = 'D');
end;

procedure TM002_IsuList.actHistoryExecute(Sender: TObject);
var
  vForm: TM002_IsuListHistory;
begin
  vForm := TM002_IsuListHistory.Create(Self, odsListT185_ID.AsFloat);
  vForm.ShowModal;
  vForm.Free;
end;

function TM002_IsuList.GetEditClass: TfmEditClass;
begin
  Result := TM002_IsuEdit;
end;

procedure TM002_IsuList.DoEdit;
begin
  oqUpdate.SetVariable('T185_ID', odsList['T185_ID']); // берется из записи
  oqUpdate.SetVariable('T185_ISSUER_NAME', odsList['T185_ISSUER_NAME']);
  oqUpdate.SetVariable('T185_ISU_NAME', odsList['T185_ISU_NAME']);
  oqUpdate.SetVariable('T185_MASTER_COMPANY_NAME', odsList['T185_MASTER_COMPANY_NAME']);
  oqUpdate.SetVariable('T185_MASTER_COMPANY_LIC', odsList['T185_MASTER_COMPANY_LIC']);
  oqUpdate.SetVariable('T185_MASTER_COMPANY_INN', odsList['T185_MASTER_COMPANY_INN']);
  oqUpdate.SetVariable('T037_ID', odsList['T037_ID']);
//  oqUpdate.SetVariable('T186_SEC_TYPE', odsList['T186_SEC_TYPE']);
  oqUpdate.SetVariable('T185_SEC_REGN', odsList['T185_SEC_REGN']);
  oqUpdate.SetVariable('T185_REG_DATE', odsList['T185_REG_DATE']);
  oqUpdate.SetVariable('T185_MASTER_CHANGE_DATE', odsList['T185_MASTER_CHANGE_DATE']);
  oqUpdate.SetVariable('T185_ANNUAL_DATE', odsList['T185_ANNUAL_DATE']);
//  oqUpdate.SetVariable('T186_CURRENCY', odsList['T186_CURRENCY']);
  oqUpdate.SetVariable('T185_ACTUAL_BANK', odsList['T185_ACTUAL_BANK']);
  oqUpdate.SetVariable('T185_DATA_CHANGE_DATE', odsList['T185_DATA_CHANGE_DATE']);

  oqUpdate.SetVariable('T185_CHANGE_DATE', Now);
  oqUpdate.SetVariable('T185_CHANGE_USER', dmMain.GetUser);

  oqUpdate.Execute;

//  InitFilters;
end;

function TM002_IsuList.GetKeyFieldName: string;
begin
  Result := 'T185_ID';
end;

function TM002_IsuList.GetMatrixUpdName: string;
begin
  Result := CHANGE_DATA_1;
end;

procedure TM002_IsuList.actEditUpdate(Sender: TObject);
begin
  actEdit.Enabled := (not ReadOnly)
    and (GetEditClass <> nil)
    and (not odsList.IsEmpty)
    and ActionEnabled(GetMatrixUpdName)
    and (odsListT185_DATA_TYPE.AsString = 'D');
end;

end.
