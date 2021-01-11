unit A006_SelectedFieldsFrame;

interface

uses
  frm04_ListFrame, Db, Oracle, OracleData, Menus, Classes, ActnList,
  Controls, ComCtrls, ToolWin, fm31_FilterFrame, Forms, fmSeach, Grids,
  DBGrids, xxxDBGrid, ExtCtrls, Windows, Graphics, untParams;

type
  TOnFieldFilter  = procedure(const AT161_ID: Double; const AT161_DISPLAY_NAME: string) of object;

  TA006_SelectedFields = class(Tfrm04_ListFrm)
    ToolButton1: TToolButton;
    actFilter: TAction;
    odsListT162_ID: TFloatField;
    odsListT162_POSITION: TFloatField;
    odsListT162_DISPLAY_NAME: TStringField;
    odsListDISPLAY_NAME: TStringField;
    odsListT161_ID: TFloatField;
    odsListT161_POSITION: TFloatField;
    odsListT161_DISPLAY_NAME: TStringField;
    odsListT160_PREFIX: TStringField;
    odsListT161_SQL_NAME: TStringField;
    odsListT160_ID: TFloatField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actDeleteAttributesExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure xxxDBGridDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure xxxDBGridDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure xxxDBGridDblClick(Sender: TObject);
    procedure xxxDBGridMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    FClose: TBitmap;
    FT161_Array: TFloatArray;
    FOnFieldFilter: TOnFieldFilter;
  protected
  public
    procedure Init;
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    //
    procedure Add(const AT161_ID: Double);
    procedure Remove(const AT161_ID: Double);
    //
    property OnFieldFilter: TOnFieldFilter read FOnFieldFilter write FOnFieldFilter;
  end;

implementation

uses dm02_PictersData, A006_FieldsListFrame;
//uses dm005_MainData, ;

{$R *.DFM}

procedure TA006_SelectedFields.Add(const AT161_ID: Double);
var
  I: Integer;
begin
  // ищем есть ли уже в списке
  for I := Low(FT161_Array) to High(FT161_Array) do
  begin
    if FT161_Array[I] = AT161_ID then
    begin
      Exit;
    end;
  end;

  // если не нашли то добавл€ем
  SetLength(FT161_Array, Length(FT161_Array) + 1);
  FT161_Array[High(FT161_Array)] := AT161_ID;

  RefreshData('T161_ID', AT161_ID);
end;

procedure TA006_SelectedFields.Init;
begin
  SetLength(FT161_Array, 1);
  FT161_Array[0] := -1;

  FClose := TBitmap.Create;
  dm02_Picters.ilCommonPictures.GetBitmap(24, FClose);

  RefreshAfterListChange;
end;

procedure TA006_SelectedFields.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // ‘ильтр по выбранным снимаем фильтры
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T161_ID');
  Set24Filter('T161_ID', FT161_Array);

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

procedure TA006_SelectedFields.Remove(const AT161_ID: Double);
var
  I: Integer;
begin
  // ищем есть ли уже в списке то удал€ем
  for I := Low(FT161_Array) to High(FT161_Array) do
  begin
    if FT161_Array[I] = AT161_ID then
    begin
      FT161_Array[I] := FT161_Array[High(FT161_Array)];
      SetLength(FT161_Array, Length(FT161_Array) - 1);
    end;
  end;
end;

procedure TA006_SelectedFields.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if odsList.RecordCount = 0 then Exit;

  if Column.Index = 0 then
  begin
    xxxDBGrid.Canvas.FillRect(Rect);
    xxxDBGrid.Canvas.Draw(Rect.Left + Round((Rect.Right - Rect.Left - FClose.Width) / 2), Rect.Top + 1, FClose);
  end;
end;

procedure TA006_SelectedFields.actDeleteAttributesExecute(Sender: TObject);
begin
  Remove(odsListT161_ID.AsFloat);
  odsList.Delete;
end;

procedure TA006_SelectedFields.actFilterExecute(Sender: TObject);
begin
  // проверка
  if odsListT161_ID.AsFloat = 0 then
  begin
    Exit;
  end;

  // делаем какую-либо стронюю обработку
  if Assigned(FOnFieldFilter) then
  begin
    FOnFieldFilter(odsListT161_ID.AsFloat, odsListT161_DISPLAY_NAME.AsString);
  end;
end;

procedure TA006_SelectedFields.xxxDBGridDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TTreeView);
end;

procedure TA006_SelectedFields.xxxDBGridDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  VNode: TTreeNode;
  VNodeData: TNodeData;
begin
  // проверка
  if not (Source is TTreeView) then Exit;
  VNode := TTreeView(Source).Selected;
  if not Assigned(VNode) then Exit;
  VNodeData := TNodeData(VNode.Data);
  if VNodeData.FT161_ID = 0 then Exit;

  // добавл€ем поле
  Add(VNodeData.FT161_ID);
end;

procedure TA006_SelectedFields.xxxDBGridDblClick(Sender: TObject);
begin
  actDeleteAttributesExecute(nil);
end;

procedure TA006_SelectedFields.xxxDBGridMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (ssLeft in Shift) then xxxDBGrid.BeginDrag(False);
end;

end.
