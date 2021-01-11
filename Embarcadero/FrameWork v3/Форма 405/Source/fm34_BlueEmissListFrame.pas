unit fm34_BlueEmissListFrame;

interface

uses
  fm12_ListFrame, Db, DBCtrls, Menus, OracleData, Controls, Grids,
  DBGrids, xxxDBGrid, Classes, StdCtrls, untParams;

type
  Tfm34_BlueEmissList = class(Tfm12_List)
    odsIssuers: TOracleDataSet;
    odsIssuersT028_ID: TFloatField;
    odsIssuersT028_SHOT_NAME: TStringField;
    dsIssuers: TDataSource;
    odsSecType: TOracleDataSet;
    odsSecTypeT027_ID: TFloatField;
    odsSecTypeT027_SEC_TYPE: TStringField;
    odsSecTypeT028_ID: TFloatField;
    dsSecType: TDataSource;
    Label3: TLabel;
    Label2: TLabel;
    lcIssuers: TDBLookupComboBox;
    lcSecType: TDBLookupComboBox;
    ods01T030_ID: TFloatField;
    ods01T028_PARENT_ID: TFloatField;
    ods01T027_ID: TFloatField;
    ods01T026_ID: TFloatField;
    ods01T026_SEC_REGN: TStringField;
    procedure lcIssuersCloseUp(Sender: TObject);
    procedure lcSecTypeCloseUp(Sender: TObject);
    procedure lcSecTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcIssuersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function GetAsFloatArray: TFloatArray;
    procedure RefreshIssures;
    procedure RefreshSecType;
    procedure RefreshSecRegn;
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm34_BlueEmissList: Tfm34_BlueEmissList;

implementation

{$R *.DFM}

{ Tfm22_Month }

function Tfm34_BlueEmissList.GetAsFloatArray: TFloatArray;
var
  I: Integer;
  VSavePlace: TBookmark;
  VDataSet: TDataSet;
begin
  // Сохраняем выделенные записи
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
        Result[High(Result)] := VDataSet.FieldByName('T030_ID').AsFloat;
      end;
    finally
      VDataSet.GotoBookmark(VSavePlace);
      VDataSet.FreeBookmark(VSavePlace);
    end;
  finally
    VDataSet.EnableControls;
  end;
end;

procedure Tfm34_BlueEmissList.GetParamsValues;
var
  VArray: TFloatArray;
begin
  VArray := Param.AsFloatArray;
  VArray := GetAsFloatArray;
  Param.AsFloatArray := VArray;
end;

procedure Tfm34_BlueEmissList.RefreshIssures;
begin
  if not ods01.Active then
  begin
    odsIssuers.Close;
    odsIssuers.Open;
    lcIssuers.KeyValue := odsIssuers.FieldByName(lcIssuers.KeyField).AsFloat;

    RefreshSecType;
  end;
end;

procedure Tfm34_BlueEmissList.RefreshSecRegn;
begin
  ods01.Close;
  ods01.SetVariable('T027_ID', odsSecType.FieldByName('T027_ID').AsFloat);
  ods01.SetVariable('T028_ID', odsIssuers.FieldByName('T028_ID').AsFloat);
  ods01.Open;
  while not ods01.Eof do
  begin
    gr01.SelectedRows.CurrentRowSelected := True;
    ods01.Next;
  end;
  //Lookup01.KeyValue := ods01.FieldByName('T030_id').AsFloat;
end;

procedure Tfm34_BlueEmissList.RefreshSecType;
begin
  odsSecType.Close;
  odsSecType.SetVariable('T028_ID', odsIssuers.FieldByName('T028_ID').AsFloat);
  odsSecType.Open;
  odsSecType.First;
  lcSecType.KeyValue := odsSecType.FieldByName(lcSecType.KeyField).AsFloat;

  RefreshSecRegn;
end;

procedure Tfm34_BlueEmissList.lcIssuersCloseUp(Sender: TObject);
begin
  RefreshSecType;
end;

procedure Tfm34_BlueEmissList.lcSecTypeCloseUp(Sender: TObject);
begin
  RefreshSecRegn;
end;

procedure Tfm34_BlueEmissList.lcSecTypeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) or (Key = 38) or (Key = 40) then
  begin
    lcSecTypeCloseUp(nil);
  end;
end;

procedure Tfm34_BlueEmissList.lcIssuersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) or (Key = 38) or (Key = 40) then
  begin
    lcIssuersCloseUp(nil);
  end;
end;

procedure Tfm34_BlueEmissList.SetParamsValues;
begin
  RefreshIssures;
end;

end.
