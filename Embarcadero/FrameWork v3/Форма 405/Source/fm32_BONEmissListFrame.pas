unit fm32_BONEmissListFrame;

interface

uses
  fm12_ListFrame, Db, DBCtrls, Menus, OracleData, Controls, Grids,
  DBGrids, xxxDBGrid, Classes, StdCtrls, untParams;

type
  Tfm32_BONEmissList = class(Tfm12_List)
    Label2: TLabel;
    lcSec: TDBLookupComboBox;
    odsSec: TOracleDataSet;
    dsSec: TDataSource;
    odsSecT027_ID: TFloatField;
    odsSecT027_SEC_TYPE: TStringField;
    ods01T026_ID: TFloatField;
    ods01T027_ID: TFloatField;
    ods01T028_SHOT_NAME: TStringField;
    ods01T026_SEC_REGN: TStringField;
    odsPeriodEnd: TOracleDataSet;
    dsPeriodEnd: TDataSource;
    odsPeriodEndT055_ID: TFloatField;
    odsPeriodEndT055_LONG_NAME: TStringField;
    Label3: TLabel;
    lcPeriodEnd: TDBLookupComboBox;
    Label4: TLabel;
    lcPeriodStart: TDBLookupComboBox;
    odsPeriodStart: TOracleDataSet;
    dsPeriodStart: TDataSource;
    odsPeriodStartT055_ID: TFloatField;
    odsPeriodStartT055_LONG_NAME: TStringField;
    procedure lcSecCloseUp(Sender: TObject);
    procedure lcPeriodEndCloseUp(Sender: TObject);
    procedure lcPeriodStartCloseUp(Sender: TObject);
  private
    function GetAsFloatArray: TFloatArray;
    procedure RefreshSecRegn;
    procedure RefreshPeriodEnd;
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm32_BONEmissList: Tfm32_BONEmissList;

implementation

uses dm005_MainData;

{$R *.DFM}

procedure Tfm32_BONEmissList.RefreshPeriodEnd;
begin
  odsPeriodEnd.Close;
  odsPeriodEnd.SetVariable('T055_ID_S', lcPeriodStart.KeyValue);
  odsPeriodEnd.Open;

  if lcPeriodEnd.KeyValue < lcPeriodStart.KeyValue then
  begin
    odsPeriodEnd.First;
    lcPeriodEnd.KeyValue := odsPeriodEnd['T055_ID'];
  end
  else
  begin
    odsPeriodEnd.Locate('T055_ID', lcPeriodEnd.KeyValue, []);
  end;

  RefreshSecRegn;
end;

procedure Tfm32_BONEmissList.RefreshSecRegn;
begin
  ods01.Close;
  ods01.SetVariable('T055_ID_S', lcPeriodStart.KeyValue);
  ods01.SetVariable('T055_ID_E', lcPeriodEnd.KeyValue);
  ods01.SetVariable('T027_ID', lcSec.KeyValue);
  ods01.Open;

  ods01.DisableControls;
  while not ods01.Eof do
  begin
    gr01.SelectedRows.CurrentRowSelected := True;
    ods01.Next;
  end;
  ods01.First;
  ods01.EnableControls;
end;

procedure Tfm32_BONEmissList.SetParamsValues;
begin
  odsPeriodStart.Close;
  odsPeriodStart.Open;

  if TRepParams(Param.Collection).ParamByName('PERIOD_01').AsFloat = 0  then
    begin
    odsPeriodStart.Last;
    lcPeriodStart.KeyValue := odsPeriodStart['T055_ID'];
    end
  else
    begin
    lcPeriodStart.KeyValue := TRepParams(Param.Collection).ParamByName('PERIOD_01').AsFloat;
  end;

  odsPeriodEnd.Close;
  odsPeriodEnd.SetVariable('T055_ID_S', lcPeriodStart.KeyValue);
  odsPeriodEnd.Open;

  if TRepParams(Param.Collection).ParamByName('PERIOD_02').AsFloat = 0  then
    begin
    odsPeriodEnd.Last;
    lcPeriodEnd.KeyValue := odsPeriodEnd['T055_ID'];
    end
  else
    begin
    lcPeriodEnd.KeyValue := TRepParams(Param.Collection).ParamByName('PERIOD_02').AsFloat;
    end;

  odsSec.Close;
  odsSec.Open;

	if TRepParams(Param.Collection).ParamByName('SEC_TYPE_03').AsFloat = 0  then
  begin
  	lcSec.KeyValue := 8      // по умолчанию BON4
  end
  else
  begin
  	lcSec.KeyValue := TRepParams(Param.Collection).ParamByName('SEC_TYPE_03').AsFloat;
  end;

  RefreshSecRegn;
end;

procedure Tfm32_BONEmissList.GetParamsValues;
var
  VArray: TFloatArray;
begin
  // сохраняем период
  TRepParams(Param.Collection).ParamByName('PERIOD_01').AsFloat := odsPeriodStart.FieldByName('T055_ID').AsFloat;
  TRepParams(Param.Collection).ParamByName('PERIOD_02').AsFloat := odsPeriodEnd.FieldByName('T055_ID').AsFloat;

  // сохраняем тип ценной бумаги
  TRepParams(Param.Collection).ParamByName('SEC_TYPE_03').AsFloat := odsSec.FieldByName('T027_ID').AsFloat;

  // сохраняем регистрационные номера эмиссий
  VArray := Param.AsFloatArray;
  VArray := GetAsFloatArray;
  Param.AsFloatArray := VArray;
end;

function Tfm32_BONEmissList.GetAsFloatArray: TFloatArray;
var
  I: Integer;
  VSavePlace: TBookmark;
  VDataSet: TDataSet;
begin
  SetLength(Result, 0);
  VDataSet := gr01.DataSource.DataSet;
  VDataSet.DisableControls;
  try
    VSavePlace := VDataSet.GetBookmark;
    try
      for I := 0 to gr01.SelectedRows.Count - 1 do
      begin
        VDataSet.GotoBookmark(gr01.SelectedRows.Items[I]);
        SetLength(Result, Length(Result) + 1);
        Result[High(Result)] := VDataSet.FieldByName('T026_ID').AsFloat;
      end;
    finally
      VDataSet.GotoBookmark(VSavePlace);
      VDataSet.FreeBookmark(VSavePlace);
    end;
  finally
    VDataSet.EnableControls;
  end;
end;

procedure Tfm32_BONEmissList.lcSecCloseUp(Sender: TObject);
begin
  RefreshSecRegn;
end;

procedure Tfm32_BONEmissList.lcPeriodEndCloseUp(Sender: TObject);
begin
  RefreshSecRegn;
end;

procedure Tfm32_BONEmissList.lcPeriodStartCloseUp(Sender: TObject);
begin
  RefreshPeriodEnd;
end;

end.
