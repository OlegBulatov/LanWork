unit fm41_SecTypeForLinksFrame;

interface

uses
  fm27_SecTypeFrame, Menus, Db, OracleData, Controls, Grids, DBGrids,
  xxxDBGrid, Classes, StdCtrls, untParams;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//  fm27_SecTypeFrame,

type
  Tfm41_SecTypeForLinks = class(Tfm27_SecType)
  private
  protected
    function GetAsFloatArray: TFloatArray; override;
  public
    procedure SetParamsValues; override;
    //
    constructor Create(AOwner: TComponent); override;
  end;

var
  fm41_SecTypeForLinks: Tfm41_SecTypeForLinks;

implementation

{$R *.DFM}

{ Tfm41_SecTypeForLinks }

constructor Tfm41_SecTypeForLinks.Create(AOwner: TComponent);
begin
  inherited;

  // создаем хранителя FloatArray
  Param := TFloatArrayParam.Create(nil);
  //Param.DataType := dtFloatArray;
end;

procedure Tfm41_SecTypeForLinks.SetParamsValues;
begin
  if not ods01.Active then
  begin
    ods01.Open;
    while not ods01.Eof do
    begin
      if (ods01T027_ID.AsFloat = 8) {or
         (ods01T027_ID.AsFloat = 4) or
         (ods01T027_ID.AsFloat = 8) }then
      begin
        gr01.SelectedRows.CurrentRowSelected := True;
      end;
      ods01.Next;
    end;
    ods01.First;
  end;
end;

function Tfm41_SecTypeForLinks.GetAsFloatArray: TFloatArray;
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
        Result[High(Result)] := ods01T027_ID.AsFloat;
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
