unit A006_FilterListFrame;

interface

uses
  frm04_ListFrame, Db, Oracle, OracleData, Menus, Classes, ActnList,
  Controls, ComCtrls, ToolWin, fm31_FilterFrame, Forms, fmSeach, Grids,
  DBGrids, xxxDBGrid, ExtCtrls, Windows, A006_FilterEditForm, frm04_EditForm,
  Graphics;
//  Messages, SysUtils, Dialogs,
//  A006_SelectorForm,

type
  TA006_FilterList = class(Tfrm04_ListFrm)
    odsListT161_ID: TFloatField;
    odsListT161_DISPLAY_NAME: TStringField;
    odsListCONDITION: TStringField;
    odsListCONDITION_VALUE: TStringField;
    odsListT160_PREFIX: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actDeleteAttributesExecute(Sender: TObject);
    procedure xxxDBGridDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure xxxDBGridDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure xxxDBGridDblClick(Sender: TObject);
  private
    FFilter: TBitmap;
    FEdiForm: TA006_FilterEdit;
    //
    procedure TreeEndDrag(const ATree: TTreeView);
    procedure GridEndDrag(const AGrid: TxxxDBGrid);
  public
    function EditForm: Tfrm04_Edit; override;
    //
    function SaveChange: Boolean; override;
    //
    procedure Init;
    //
    procedure AddNew(const AT161_ID: Double; const AT161_DISPLAY_NAME: string);
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  A006_FilterList: TA006_FilterList;

implementation

uses dm02_PictersData, A006_FieldsListFrame;

{$R *.DFM}

{ TA006_FilterList }

procedure TA006_FilterList.Init;
begin
  // картинка для рисования в гриде
  FFilter := TBitmap.Create;
  dm02_Picters.ilCommonPictures.GetBitmap(18, FFilter);

  // форма редактирования
  FEdiForm := TA006_FilterEdit.Create(Self);
  FEdiForm.SetDataSource(dsList);

  // показываем данные
  RefreshAfterListChange;
end;

procedure TA006_FilterList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  inherited;

  DataSet.Close;
  DataSet.Open;

  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure TA006_FilterList.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if odsList.RecordCount = 0 then Exit;

  if Column.Index = 0 then
  begin
    xxxDBGrid.Canvas.FillRect(Rect);
    xxxDBGrid.Canvas.Draw(Rect.Left + Round((Rect.Right - Rect.Left - FFilter.Width) / 2), Rect.Top + 1, FFilter);
  end;

end;

function TA006_FilterList.EditForm: Tfrm04_Edit;
begin
  Result := FEdiForm;
end;

procedure TA006_FilterList.AddNew(const AT161_ID: Double;
  const AT161_DISPLAY_NAME: string);
begin
  // добавляем строку
  DataSet.Insert;
  odsListT161_ID.AsFloat := AT161_ID;
  odsListT161_DISPLAY_NAME.AsString := AT161_DISPLAY_NAME;
  odsListCONDITION.AsString := 'Равно / в списке';
  odsListCONDITION_VALUE.AsString := '';

  // открываем на редактирование
  actEditAttributes.Execute;
end;

procedure TA006_FilterList.actDeleteAttributesExecute(Sender: TObject);
begin
  odsList.Delete;
end;

function TA006_FilterList.SaveChange: Boolean;
begin
  DataSet.Post;
  Result := True;
end;

procedure TA006_FilterList.xxxDBGridDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TTreeView) or (Source is TxxxDBGrid);
end;

procedure TA006_FilterList.xxxDBGridDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  // обработка
  if (Source is TTreeView) then TreeEndDrag(TTreeView(Source));
  if (Source is TxxxDBGrid) then GridEndDrag(TxxxDBGrid(Source));
end;

procedure TA006_FilterList.TreeEndDrag(const ATree: TTreeView);
var
  VNode: TTreeNode;
  VNodeData: TNodeData;
begin
  // определяем что перетаскивали
  VNode := ATree.Selected;
  if not Assigned(VNode) then Exit;
  VNodeData := TNodeData(VNode.Data);
  if VNodeData.FT161_ID = 0 then Exit;

  // добавляем поле
  AddNew(VNodeData.FT161_ID, VNode.Text);
end;

procedure TA006_FilterList.GridEndDrag(const AGrid: TxxxDBGrid);
var
  VID: TField;
  VName: TField;
begin
  // ищем поля
  VID := AGrid.DataSource.DataSet.FindField('T161_ID');
  VName := AGrid.DataSource.DataSet.FindField('T161_DISPLAY_NAME');

  // проверка
  if not Assigned(VID) then Exit;
  if not Assigned(VName) then Exit;

  // добавляем поле
  AddNew(VID.AsFloat, VName.AsString);
end;

procedure TA006_FilterList.xxxDBGridDblClick(Sender: TObject);
begin
  //inherited;
end;

end.
