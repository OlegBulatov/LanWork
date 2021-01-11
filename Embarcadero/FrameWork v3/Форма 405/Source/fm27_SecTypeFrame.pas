unit fm27_SecTypeFrame;

interface

uses
  fm12_ListFrame, Db, Menus, OracleData, Controls, Grids, DBGrids,
  xxxDBGrid, Classes, StdCtrls, untParams;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  DBCtrls,

type
  Tfm27_SecType = class(Tfm12_List)
    ods01T027_ID: TFloatField;
    ods01T027_SEC_TYPE: TStringField;
    ods01T027_COMMENTS: TStringField;
  private
  protected
    function GetAsFloatArray: TFloatArray; virtual;
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm27_SecType: Tfm27_SecType;

implementation

{$R *.DFM}

{ Tfm22_Month }

function Tfm27_SecType.GetAsFloatArray: TFloatArray;
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
        Result[High(Result)] := VDataSet.FieldByName('T053_ID').AsFloat;
      end;
    finally
      VDataSet.GotoBookmark(VSavePlace);
      VDataSet.FreeBookmark(VSavePlace);
    end;
  finally
    VDataSet.EnableControls;
  end;
end;

procedure Tfm27_SecType.GetParamsValues;
var
  VArray: TFloatArray;
begin
  VArray := Param.AsFloatArray;
  VArray := GetAsFloatArray;
  Param.AsFloatArray := VArray;
end;

procedure Tfm27_SecType.SetParamsValues;
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
