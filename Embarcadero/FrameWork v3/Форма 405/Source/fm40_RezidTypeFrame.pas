unit fm40_RezidTypeFrame;

interface

uses
  fm12_ListFrame, Db, Menus, OracleData, Controls, Grids, DBGrids,
  xxxDBGrid, Classes, StdCtrls, untParams;

type
  Tfm40_RezidType = class(Tfm12_List)
    ods01T033_ID: TFloatField;
    ods01T033_NAME: TStringField;
  private
    function GetAsFloatArray: TFloatArray;
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm40_RezidType: Tfm40_RezidType;

implementation

//uses dm005_MainData;

{$R *.DFM}

function Tfm40_RezidType.GetAsFloatArray: TFloatArray;
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
        Result[High(Result)] := VDataSet.FieldByName('T033_ID').AsFloat;
      end;
    finally
      VDataSet.GotoBookmark(VSavePlace);
      VDataSet.FreeBookmark(VSavePlace);
    end;
  finally
    VDataSet.EnableControls;
  end;
end;

procedure Tfm40_RezidType.GetParamsValues;
var
  VArray: TFloatArray;
begin
  VArray := Param.AsFloatArray;
  VArray := GetAsFloatArray;
  Param.AsFloatArray := VArray;
end;

procedure Tfm40_RezidType.SetParamsValues;
begin
  if not ods01.Active then
  begin
    ods01.Open;
    while not ods01.Eof do
    begin
      gr01.SelectedRows.CurrentRowSelected := True;
      ods01.Next;
    end;
    ods01.First;
  end;
end;

end.
