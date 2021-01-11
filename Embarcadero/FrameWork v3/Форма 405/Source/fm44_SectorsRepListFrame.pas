unit fm44_SectorsRepListFrame;

interface

uses
  fm12_ListFrame, Db, Menus, OracleData, Controls, Grids, DBGrids,
  xxxDBGrid, Classes, StdCtrls, untParams;

type
  TTfm44_SectorsRepList = class(Tfm12_List)
    ods01T140_ID: TIntegerField;
    ods01LEVEL_SECTOR_NAME: TStringField;
  private
  protected
    function GetAsFloatArray: TFloatArray; virtual;
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  Tfm44_SectorsRepList: TTfm44_SectorsRepList;

implementation

{$R *.DFM}

function TTfm44_SectorsRepList.GetAsFloatArray: TFloatArray;
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
        Result[High(Result)] := VDataSet.FieldByName('T140_ID').AsFloat;
      end;
    finally
      VDataSet.GotoBookmark(VSavePlace);
      VDataSet.FreeBookmark(VSavePlace);
    end;
  finally
    VDataSet.EnableControls;
  end;
end;

procedure TTfm44_SectorsRepList.GetParamsValues;
var
  VArray: TFloatArray;
begin
  VArray := Param.AsFloatArray;
  VArray := GetAsFloatArray;
  Param.AsFloatArray := VArray;
end;

procedure TTfm44_SectorsRepList.SetParamsValues;
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
