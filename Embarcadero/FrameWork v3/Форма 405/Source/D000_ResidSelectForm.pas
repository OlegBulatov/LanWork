unit D000_ResidSelectForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows, Graphics;
//  Messages, SysUtils, Controls, Dialogs,

type
  TD000_ResidSelect = class(Tfrm04_List)
    odsListT012_ID: TFloatField;
    odsListT012_NAME: TStringField;
    odsListT012_CODE: TStringField;
    odsListT033_NAME: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSelectItemUpdate(Sender: TObject);
  private
    FSearchCode: string;
    procedure SetSearchCode(const Value: string);
    { Private declarations }
  public
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    property SearchCode: string write SetSearchCode;
  end;

var
  D000_ResidSelect: TD000_ResidSelect;

implementation

{$R *.DFM}

{ TD000_ResidSelect }

procedure TD000_ResidSelect.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  DataSet.Close;
  DataSet.Open;
  if KeyFields = '' then
    begin
    if DefPosition = dpLast then DataSet.Last;

//    DataSet.SearchRecord(
//      'T012_CODE',
//      FSearchCode + '*',
//      [srForward, srFromBeginning, srIgnoreCase, srWildcards]
//      );

    DataSet.Locate('T012_CODE', FSearchCode, [])
    end
  else
    begin
    DataSet.Locate(KeyFields, KeyValues, [])
    end;
end;

procedure TD000_ResidSelect.SetSearchCode(const Value: string);
begin
  FSearchCode := Value;
end;

procedure TD000_ResidSelect.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  VColor: TColor;
begin
  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
    begin
    VColor := xxxDBGrid.Color;
    // выделяем красным полное совпадение ИНН
    if odsListT012_CODE.AsString = FSearchCode then
      begin
      if gdSelected in State then
        begin
        xxxDBGrid.Canvas.Brush.Color := clRed;
        xxxDBGrid.Canvas.Font.Color := VColor;
        end
      else
        begin
        xxxDBGrid.Canvas.Brush.Color := VColor;
        xxxDBGrid.Canvas.Font.Color := clRed;
        end;
      end;
    end;
  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TD000_ResidSelect.actSelectItemUpdate(Sender: TObject);
begin
  actSelectItem.Enabled := not DataSet.IsEmpty;
end;

end.
