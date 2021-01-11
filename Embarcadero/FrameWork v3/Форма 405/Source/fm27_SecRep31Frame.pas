unit fm27_SecRep31Frame;

interface

uses
  fm27_SecTypeFrame, Menus, Db, OracleData, Controls, Grids, DBGrids,
  xxxDBGrid, Classes, StdCtrls, untParams;

type
  Tfm27_SecRep31 = class(Tfm27_SecType)
  private
  protected
    function GetAsFloatArray: TFloatArray; override;
  public
  end;

var
  fm27_SecRep31: Tfm27_SecRep31;

implementation

{$R *.DFM}

function Tfm27_SecRep31.GetAsFloatArray: TFloatArray;
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

end.
