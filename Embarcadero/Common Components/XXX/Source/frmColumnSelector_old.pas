unit frmColumnSelector;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frmDialog, ActnList, StdCtrls, ExtCtrls, Buttons, ComCtrls, DBGrids,
  frmParent;

type
  TfrmColumnSelectorForm = class(TfrmDialogForm)
    lvNotVisColumns: TListView;
    Label6: TLabel;
    Label7: TLabel;
    lvVisColumns: TListView;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    actMoveToLeft: TAction;
    actMoveToRight: TAction;
    actMoveTop: TAction;
    actMoveBottom: TAction;
    procedure FormShow(Sender: TObject);
    procedure lvVisColumnsDblClick(Sender: TObject);
    procedure lvNotVisColumnsDblClick(Sender: TObject);
    procedure actMoveToLeftExecute(Sender: TObject);
    procedure actMoveToRightExecute(Sender: TObject);
    procedure actMoveTopExecute(Sender: TObject);
    procedure actMoveBottomExecute(Sender: TObject);
    procedure actMoveToLeftUpdate(Sender: TObject);
    procedure actMoveToRightUpdate(Sender: TObject);
  private
    FDBGrid: TDBGrid;
    procedure AddListItem(const AColumn: TColumn; const List: TListView);
    procedure MoveListItems(const AFrom, ATo: TListView);
  protected
    class function GetSelfClass: TfrmParentForms; override;
    class function GetSelfForm: TfrmParentForm; override;
    class procedure SetSelfForm(const AForm: TfrmParentForm); override;
    function SaveChange: Boolean; override;
  public
    property DBGrid: TDBGrid read FDBGrid write FDBGrid;
    class function Instance: TfrmColumnSelectorForm;
  end;

var
  frmColumnSelectorForm: TfrmColumnSelectorForm;

implementation

uses xxxDBGrid;

{$R *.DFM}

procedure TfrmColumnSelectorForm.FormShow(Sender: TObject);
var
  I: Integer;
begin
  // очищаем списки
  lvNotVisColumns.Items.Clear;
  lvVisColumns.Items.Clear;

  for I := 0 to FDBGrid.Columns.Count - 1 do
  begin
    if FDBGrid.Columns[I].Visible then
    begin
      // список отображаемых колонок
      AddListItem(FDBGrid.Columns[I], lvVisColumns);
    end else
    begin
      // список неотображаемых колонок
      AddListItem(FDBGrid.Columns[I], lvNotVisColumns);
    end;
  end;

  // выбираем колонку
  if lvNotVisColumns.Items.Count > 0 then
  begin
    if lvNotVisColumns.CanFocus then lvNotVisColumns.SetFocus;
    lvNotVisColumns.Items[0].Selected := True;
    lvNotVisColumns.Items[0].Focused := True;
  end else
  if lvVisColumns.Items.Count > 0 then
  begin
    if lvVisColumns.CanFocus then lvVisColumns.SetFocus;
    lvVisColumns.Items[0].Selected := True;
    lvVisColumns.Items[0].Focused := True;
  end;
end;

procedure TfrmColumnSelectorForm.lvVisColumnsDblClick(Sender: TObject);
begin
  if actMoveToLeft.Enabled then actMoveToLeftExecute(actMoveToLeft);
end;

procedure TfrmColumnSelectorForm.lvNotVisColumnsDblClick(Sender: TObject);
begin
  if actMoveToRight.Enabled then actMoveToRightExecute(actMoveToRight);
end;

procedure TfrmColumnSelectorForm.actMoveToLeftExecute(Sender: TObject);
//var
//  VColumn: TColumn;
begin
  MoveListItems(lvVisColumns, lvNotVisColumns);
end;

procedure TfrmColumnSelectorForm.AddListItem(const AColumn: TColumn;
  const List: TListView);
begin
  // добавляем колонку в список
  with List.Items.Add do
  begin
    Caption := AColumn.Title.Caption;
    Data := Pointer(AColumn);
  end;
end;

procedure TfrmColumnSelectorForm.MoveListItems(const AFrom, ATo: TListView);
begin
  // убираем Index
  while Assigned(AFrom.Selected) do
  begin
    AddListItem(TColumn(AFrom.Selected.Data), ATo);
    AFrom.Selected.Destroy;
  end;
  AFrom.Arrange(ComCtrls.arDefault);

  // возвращаем фокус
  if AFrom.Items.Count = 0 then Exit;
  AFrom.SetFocus;
  AFrom.Items[0].Selected := True;
  AFrom.Items[0].Focused := True;
end;

function TfrmColumnSelectorForm.SaveChange: Boolean;
var
  I: Integer;
  vColumn: TColumn;
begin
  // видимые колонки
  for I := 0 to lvVisColumns.Items.Count - 1 do
  begin
//    TColumn(lvVisColumns.Items[I].Data).Visible := True;
    vColumn := TColumn(lvVisColumns.Items[I].Data);
    vColumn.Visible := True;
    TxxxDBGrid(FDBGrid).SetColumnHidden(vColumn.FieldName, False);
  end;

  // невидимые колонки
  for I := 0 to lvNotVisColumns.Items.Count - 1 do
  begin
//    TColumn(lvNotVisColumns.Items[I].Data).Visible := False;
    vColumn := TColumn(lvNotVisColumns.Items[I].Data);
    vColumn.Visible := False;
    TxxxDBGrid(FDBGrid).SetColumnHidden(vColumn.FieldName, True);
  end;

  Result := True;
end;

procedure TfrmColumnSelectorForm.actMoveToRightExecute(Sender: TObject);
begin
  MoveListItems(lvNotVisColumns, lvVisColumns);
end;

class function TfrmColumnSelectorForm.GetSelfClass: TfrmParentForms;
begin
  Result := TfrmColumnSelectorForm;
end;

class function TfrmColumnSelectorForm.GetSelfForm: TfrmParentForm;
begin
  Result := frmColumnSelectorForm;
end;

class procedure TfrmColumnSelectorForm.SetSelfForm(
  const AForm: TfrmParentForm);
begin
  TfrmParentForm(frmColumnSelectorForm) := AForm;
end;

class function TfrmColumnSelectorForm.Instance: TfrmColumnSelectorForm;
begin
  Result := TfrmColumnSelectorForm(inherited Instance);
end;

procedure TfrmColumnSelectorForm.actMoveTopExecute(Sender: TObject);
begin
  // перемещаем вверх по списку
  if not Assigned(lvVisColumns.Selected) then Exit;
  if lvVisColumns.Selected.Index = 0 then Exit;

  (*
  lvVisColumns.Selected.Index := lvVisColumns.Selected.Index + 1;

  ExchangeListItems(
    lvSortFields.Selected,
    lvSortFields.Items.Insert(lvSortFields.Selected.Index - 1));

  // перемещаем индекс в верх по списку
  FFilter.Indexes.MoveUp(TIndex(lvSortFields.Selected.Data));
  *)
end;

procedure TfrmColumnSelectorForm.actMoveBottomExecute(Sender: TObject);
begin
  // перемещаем вниз по списку
  if not Assigned(lvVisColumns.Selected) then Exit;
  if lvVisColumns.Selected.Index = lvVisColumns.Items.Count - 1 then Exit;

(*
  if lvSortFields.Selected.Index = lvSortFields.Items.Count - 2 then
  begin
    // добавляем в конец
    VNewItem := lvSortFields.Items.Add;
  end else
  begin
    // вставляем
    VNewItem := lvSortFields.Items.Insert(lvSortFields.Selected.Index + 2);
  end;

  ExchangeListItems(lvSortFields.Selected, VNewItem);

  // перемещаем индекс вниз по списку
  FFilter.Indexes.MoveDown(TIndex(lvSortFields.Selected.Data));
*)
end;

(*
procedure Tfrm99_Filter.ExchangeListItems(AListItem1,
  AListItem2: TListItem);
begin

  // копируем из AListItem1 в AListItem2 и удаляем AListItem1
  with AListItem2 do
  begin
    Assign(AListItem1);
    SubItems.Assign(AListItem1.SubItems);
    SubItemImages[0] := AListItem1.SubItemImages[0];
    AListItem1.Destroy;
    Selected := True;
    Focused := True;
  end;
end;
*)

procedure TfrmColumnSelectorForm.actMoveToLeftUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled :=
    Assigned(lvVisColumns.Selected) and lvVisColumns.Focused;
end;

procedure TfrmColumnSelectorForm.actMoveToRightUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled :=
    Assigned(lvNotVisColumns.Selected) and lvNotVisColumns.Focused;
end;

end.
