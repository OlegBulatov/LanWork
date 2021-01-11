unit frmMultiSelector;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frmDialog, ActnList, StdCtrls, ExtCtrls, Db, Grids, DBGrids, xxxDBGrid;

type
  TfrmMultiSelectorForm = class(TfrmDialogForm)
    xxxDBGrid: TxxxDBGrid;
    DataSource: TDataSource;
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMultiSelectorForm: TfrmMultiSelectorForm;

implementation

{$R *.DFM}

procedure TfrmMultiSelectorForm.xxxDBGridCellClick(Column: TColumn);
begin
  if Column.Index = 0 { FieldName = 'HEADER_ID'} then
  begin
    xxxDBGrid.SelectedRows.CurrentRowSelected :=
      not xxxDBGrid.SelectedRows.CurrentRowSelected;
  end;
end;

procedure TfrmMultiSelectorForm.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
//  I: Integer;
  VRect: TRect;
begin
  if Column.Index = 0 {.FieldName = 'HEADER_ID'} then
  begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(
      xxxDBGrid.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      DFCS_BUTTONCHECK or
      VState[xxxDBGrid.SelectedRows.CurrentRowSelected] or
      DFCS_FLAT
      );
  end;
end;

end.
