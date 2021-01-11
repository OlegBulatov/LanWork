unit fm26_711CodeFrame;

interface

uses
  fm12_ListFrame, Db, Menus, OracleData, Controls, Grids, DBGrids,
  xxxDBGrid, Classes, StdCtrls, untParams;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  DBCtrls,

type
  Tfm26_711Code = class(Tfm12_List)
    ods01T053_ID: TFloatField;
    ods01T053_NAME: TStringField;
    ods01TYPE_DESC: TStringField;
    ods01T053_TYPE: TFloatField;
  private
    function GetAsFloatArray: TFloatArray;
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm26_711Code: Tfm26_711Code;

implementation

{$R *.DFM}

{ Tfm22_Month }

function Tfm26_711Code.GetAsFloatArray: TFloatArray;
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

procedure Tfm26_711Code.GetParamsValues;
var
  VArray: TFloatArray;
begin
  VArray := Param.AsFloatArray;
  VArray := GetAsFloatArray;
  Param.AsFloatArray := VArray;
end;

procedure Tfm26_711Code.SetParamsValues;
begin
  if not ods01.Active then
  begin
    ods01.Open;
    while not ods01.Eof do
    begin
      if ods01T053_TYPE.AsFloat = 1 then
      begin
        gr01.SelectedRows.CurrentRowSelected := True;
      end;
      ods01.Next;
    end;
    ods01.First;
  end;
end;

end.
