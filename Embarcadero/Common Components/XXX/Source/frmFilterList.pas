unit frmFilterList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frmDialog, ActnList, StdCtrls, ExtCtrls, ComCtrls, Buttons, ToolWin,
  ImgList, xxxDBGrid, unt001_Filter;

type
  TfrmFilterListForm = class(TfrmDialogForm)
    ListView: TListView;
    MainToolBar: TToolBar;
    FrameNewButton: TToolButton;
    FrameEditButton: TToolButton;
    FrameDeleteButton: TToolButton;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    ImageList: TImageList;
    actDeleteAll: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    StatusBar: TStatusBar;
    procedure actDeleteAllUpdate(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actDeleteUpdate(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actAddUpdate(Sender: TObject);
    procedure ListViewDblClick(Sender: TObject);
  private
    FDBGrid: TxxxDBGrid;
    procedure SetDBGrid(const Value: TxxxDBGrid);
    //
    function IsActive: Boolean;
    procedure UpdateCount;
    procedure DeleteSelected;
    procedure AddCondition(const ACondition: TCondition);
    function GetSelected: TCondition;
    function IsSelected: Boolean;
  public
    property DBGrid: TxxxDBGrid read FDBGrid write SetDBGrid;
    property Selected: TCondition read GetSelected;
  end;

var
  frmFilterListForm: TfrmFilterListForm;

implementation

{$R *.DFM}

uses frmFilterEdit;

{TfrmFilterListForm}

procedure TfrmFilterListForm.DeleteSelected;
begin
  if not IsSelected then Exit;

  // удаляем текущее условие
  FDBGrid.MainDataSet.Conditions.Delete(ListView.Selected.Index);
  ListView.Selected.Delete;
end;

procedure TfrmFilterListForm.actAddExecute(Sender: TObject);
var
  VForm: TfrmFilterEditForm;
begin
  if not IsActive then Exit;

  // добавляем новое условие
  VForm := TfrmFilterEditForm.Create(nil);
  try
    VForm.Values := nil;      // инициализируем значения !!!!
    VForm.DBGrid := DBGrid;
    if VForm.ShowModal = mrOk then
    begin
      AddCondition(VForm.Condition);
    end;
  finally
    VForm.Free;
  end;

  UpdateCount;  
end;

procedure TfrmFilterListForm.actAddUpdate(Sender: TObject);
begin
  actAdd.Enabled := IsActive;
end;

procedure TfrmFilterListForm.actEditExecute(Sender: TObject);
//var
//  VForm: TfrmFilterEditForm;
begin
  if not IsSelected then Exit;

  (*
  // добавляем новое условие
  VForm := TfrmFilterEditForm.Create(nil);
  try
    VForm.DBGrid := DBGrid;
    VForm.Condition := FConditions.Items[ListView.Selected.Index];
    VForm.ShowModal;
  finally
    VForm.Free;
  end;
  *)

  UpdateCount;  
end;

procedure TfrmFilterListForm.actEditUpdate(Sender: TObject);
begin
  // можем изменить если выбранна запись
  actEdit.Enabled := IsSelected;
end;

procedure TfrmFilterListForm.actDeleteExecute(Sender: TObject);
begin
  DeleteSelected;
  UpdateCount;  
end;

procedure TfrmFilterListForm.actDeleteUpdate(Sender: TObject);
begin
  // можем удалить если выбранна запись
  actDelete.Enabled := IsSelected;
end;

procedure TfrmFilterListForm.actDeleteAllExecute(Sender: TObject);
begin
  // удаляем все условия
  if not IsActive then Exit;

  FDBGrid.MainDataSet.Conditions.Clear;
  ListView.Items.Clear;

  UpdateCount;  
end;

procedure TfrmFilterListForm.actDeleteAllUpdate(Sender: TObject);
begin
  // можем удалить если есть хоть одно условие
  actDeleteAll.Enabled := ListView.Items.Count <> 0;
end;

procedure TfrmFilterListForm.AddCondition(const ACondition: TCondition);
begin
  // добавляем условие в ListView
  with ListView.Items.Add do
  begin
    Caption := ACondition.DisplayName;
    SubItems.Add(DISPLAY_CONDITION_TEXT[ACondition.Condition]);
    SubItems.Add(ACondition.DisplayValue);
  end;
end;

function TfrmFilterListForm.GetSelected: TCondition;
begin
  if IsSelected then
  begin
    Result := FDBGrid.MainDataSet.Conditions.Items[ListView.Selected.Index];
  end else
  begin
    Result := nil;
  end;
end;

function TfrmFilterListForm.IsSelected: Boolean;
begin
  Result :=
    Assigned(ListView.Selected) and
    ListView.Focused and
    IsActive;
end;

procedure TfrmFilterListForm.ListViewDblClick(Sender: TObject);
begin
  if actEdit.Enabled then
  begin
    actEdit.Execute;
  end;
end;

procedure TfrmFilterListForm.SetDBGrid(const Value: TxxxDBGrid);
var
  I: Integer;
begin
  FDBGrid := Value;

  if not IsActive then Exit;

  // заполняем список
  ListView.Items.Clear;
  for I := 0 to FDBGrid.MainDataSet.Conditions.Count - 1 do
  begin
    AddCondition(FDBGrid.MainDataSet.Conditions[I]);
  end;

  UpdateCount;  
end;

function TfrmFilterListForm.IsActive: Boolean;
begin
  Result :=
    Assigned(FDBGrid) and
    Assigned(FDBGrid.MainDataSet) and
    Assigned(FDBGrid.MainDataSet.DataSet);
end;

procedure TfrmFilterListForm.UpdateCount;
const
  MAKS = 4000;
  TEXT = 'Символов: %d';
var
  VLenght: Integer;
begin
  if not IsActive then Exit;

  // показываем количество символов в запросе
  FDBGrid.MainDataSet.PrepareSQL;
  VLenght := Length(FDBGrid.MainDataSet.SQL.Text);
  StatusBar.SimpleText := Format(TEXT, [VLenght, MAKS]);
  if VLenght > MAKS then
  begin
    StatusBar.Font.Color := clRed;
  end else
  begin
    StatusBar.Font.Color := clWindowText;
  end;
end;

end.
