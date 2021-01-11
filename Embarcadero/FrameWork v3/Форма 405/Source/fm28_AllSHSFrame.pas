unit fm28_AllSHSFrame;

interface

uses
  fm27_SecTypeFrame, Menus, Db, OracleData, Controls, Grids, DBGrids,
  xxxDBGrid, Classes, StdCtrls, untParams;

type
  Tfm28_AllSHS = class(Tfm27_SecType)
  private
  protected
    function GetAsFloatArray: TFloatArray; override;
  public
    procedure GetParamsValues; override;
  end;

var
  fm28_AllSHS: Tfm28_AllSHS;

implementation

{$R *.DFM}
function Tfm28_AllSHS.GetAsFloatArray: TFloatArray;
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
        Result[High(Result)] := VDataSet.FieldByName('T027_ID').AsFloat;
      end;
    finally
      VDataSet.GotoBookmark(VSavePlace);
      VDataSet.FreeBookmark(VSavePlace);
    end;
  finally
    VDataSet.EnableControls;
  end;
end;

procedure Tfm28_AllSHS.GetParamsValues;
var
  VArray: TFloatArray;
begin
  VArray := Param.AsFloatArray;
  VArray := GetAsFloatArray;
  Param.AsFloatArray := VArray;
end;

end.
