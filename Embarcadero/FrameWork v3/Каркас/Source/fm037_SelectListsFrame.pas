unit fm037_SelectListsFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm027_DoubleListF, Db, OracleData, ActnList, Buttons, StdCtrls, ExtCtrls,
  fm000_Parent, fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame,
  Grids, DBGrids;

type
  Tfm037_SelectLists = class(TfmDoubleList)
    fmGridRight: TfmGrid;
    fmGridLeft: TfmGrid;
//    procedure fmGridLeftxxxDBGridDrawColumnCell(Sender: TObject;
//      const Rect: TRect; DataCol: Integer; Column: TColumn;
//      State: TGridDrawState);
//    procedure fmGridLeftxxxDBGridCellClick(Column: TColumn);
  private
  public
  end;

var
  fm037_SelectLists: Tfm037_SelectLists;

implementation

uses xxxDbGrid;

{$R *.DFM}

{ Tfm037_SelectLists }

{
procedure Tfm037_SelectLists.fmGridLeftxxxDBGridDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  vPenColor: TColor;
  vBrushColor: TColor;
  R: TRect;
begin
//  fmGridLeft.xxxDBGridDrawColumnCell(Sender, Rect, DataCol, Column, State);
  if (Column.FieldName = 'ACHECK') and not Column.Field.IsNull then
    begin
    // Чистим ячейку
    TDbGrid(Column.Grid).Canvas.FillRect(Rect);

    R.Left := Rect.Left + 4;
    R.Right := R.Left + 11;
    R.Top := Rect.Top + ((Rect.Bottom-Rect.Top-11) div 2) + ((Rect.Bottom-Rect.Top-11) mod 2);
    R.Bottom := R.Top + 11;
    vPenColor := TDbGrid(Column.Grid).Canvas.Pen.Color;
    vBrushColor := TDbGrid(Column.Grid).Canvas.Brush.Color;

    // Квадрат
    TDbGrid(Column.Grid).Canvas.Pen.Color := clSilver;
    TDbGrid(Column.Grid).Canvas.Brush.Color := clWindow;
    TDbGrid(Column.Grid).Canvas.Rectangle(R);

    // Галочка
    if TOracleDataSet(Column.Grid.DataSource.DataSet).FieldByName('ACHECK').AsFloat <> 0 then
      begin
      TDbGrid(Column.Grid).Canvas.Pen.Color := clBlack;
      TDbGrid(Column.Grid).Canvas.MoveTo(R.Left+2, R.Top+4);
      TDbGrid(Column.Grid).Canvas.LineTo(R.Left+5, R.Top+7);
      TDbGrid(Column.Grid).Canvas.MoveTo(R.Left+2, R.Top+5);
      TDbGrid(Column.Grid).Canvas.LineTo(R.Left+5, R.Top+8);
      TDbGrid(Column.Grid).Canvas.MoveTo(R.Left+2, R.Top+6);
      TDbGrid(Column.Grid).Canvas.LineTo(R.Left+5, R.Top+9);

      TDbGrid(Column.Grid).Canvas.MoveTo(R.Left+4, R.Top+6);
      TDbGrid(Column.Grid).Canvas.LineTo(R.Left+9, R.Top+1);
      TDbGrid(Column.Grid).Canvas.MoveTo(R.Left+4, R.Top+7);
      TDbGrid(Column.Grid).Canvas.LineTo(R.Left+9, R.Top+2);
      TDbGrid(Column.Grid).Canvas.MoveTo(R.Left+4, R.Top+8);
      TDbGrid(Column.Grid).Canvas.LineTo(R.Left+9, R.Top+3);
      end;

    TDbGrid(Column.Grid).Canvas.Pen.Color := vPenColor;
    TDbGrid(Column.Grid).Canvas.Brush.Color := vBrushColor;
    end
  else
    begin
    Column.Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
end;

procedure Tfm037_SelectLists.fmGridLeftxxxDBGridCellClick(Column: TColumn);
begin
  if (Column.Field.FieldName = 'ACHECK') and not Column.Field.IsNull then
    begin
    Column.Grid.DataSource.DataSet.Edit;
    if Column.Field.AsFloat = 0 then
      begin
      Column.Field.AsFloat := 1;
      end
    else
      begin
      Column.Field.AsFloat := 0;
      end;
    Column.Grid.DataSource.DataSet.Post;
    end;
end;
}

end.
