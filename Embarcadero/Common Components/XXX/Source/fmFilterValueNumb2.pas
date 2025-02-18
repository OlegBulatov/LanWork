unit fmFilterValueNumb2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, DBCtrls, StdCtrls, Grids, DBGrids, xxxDBGrid, Db, Menus,
  unt001_Filter;

type
  TfmFilterValueNumbFrame2 = class(TfmFilterValueFrame)
    Label1: TLabel;
    xxxDBGrid: TxxxDBGrid;
    DataSource: TDataSource;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    FKeyField: string;
    FListField: string;
  protected
    procedure AddValue(const AValueItems: TValueItems; ADataSet: TDataSet); virtual;  
    function GetValues: TValueItems; override;
    procedure SetValues(const Value: TValueItems); override;
    procedure SetKeyField(const Value: string); override;
    procedure SetListField(const Value: string); override;
    procedure SetDataSet(const Value: TDataSet); override;
    function GetKeyField: string; override;
    function GetListField: string; override;
  public
    { Public declarations }
  end;

var
  fmFilterValueNumbFrame2: TfmFilterValueNumbFrame2;

implementation

{$R *.DFM}

procedure TfmFilterValueNumbFrame2.SetDataSet(const Value: TDataSet);
begin
  DataSource.DataSet := Value;
  if xxxDBGrid.Columns.Count > 2 then
  begin
    xxxDBGrid.Columns[0].Width := 20;
    xxxDBGrid.Columns[1].Width := 290;
    xxxDBGrid.Columns[2].Visible := False;
  end;
end;

procedure TfmFilterValueNumbFrame2.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
//  I: Integer;
  VRect: TRect;
begin
  // ������ CheckBox
  if Column.Index = 0 then
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

procedure TfmFilterValueNumbFrame2.xxxDBGridCellClick(Column: TColumn);
begin
  if Column.Index <> 0 then Exit;

  // ����������� ���������
  with xxxDBGrid.SelectedRows do
  begin
    CurrentRowSelected := not CurrentRowSelected;
  end;
end;

function TfmFilterValueNumbFrame2.GetValues: TValueItems;
var
  I: Integer;
  VSavePlace: TBookmark;
  VDataSet: TDataSet;
begin
  Result := inherited GetValues;
  if not Assigned(Result) then Exit;
  if Result.Count > 0 then Result.Clear;

  // ��������� ���������� ������
  VDataSet := xxxDBGrid.DataSource.DataSet;
  VDataSet.DisableControls;
  try
    VSavePlace := VDataSet.GetBookmark;
    try
      for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
      begin
        VDataSet.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);
        AddValue(Result, VDataSet);
      end;
    finally
      VDataSet.GotoBookmark(VSavePlace);
      VDataSet.FreeBookmark(VSavePlace);
    end;
  finally
    VDataSet.EnableControls;
  end;
end;

procedure TfmFilterValueNumbFrame2.SetValues(const Value: TValueItems);
//var
//  I: Integer;
//  VSavePlace: TBookmark;
//  VDataSet: TDataSet;
begin
  inherited SetValues(Value);

  // �������� ��������� ������
  (*
  VDataSet := xxxDBGrid.DataSource.DataSet;
  VDataSet.DisableControls;
  try
    VSavePlace := VDataSet.GetBookmark;
    try
      for I := 0 to grdRmaAct.SelectedRows.Count - 1 do
      begin
        cdsRmaAct.GotoBookmark(Pointer(grdRmaAct.SelectedRows.Items[I]));
        with cdsRmaAct do
        begin
          Edit;
          cdsRmaActS18_TYPE_STATE_ID.Value := VForm.TypeID;
          cdsRmaActS19_STATE_DATE.AsDateTime := VForm.Date;
          cdsRmaActSTATUS_PROP.AsString := Format('%s %s', [
            FormatDateTime('dd.mm.yy', VForm.Date),
            VForm.TypeName]);
          cdsRmaActS19_COMMENT.Value := VForm.Comment;
          Post;
        end;
      end;
    finally
      VDataSet.GotoBookmark(VSavePlace);
      VDataSet.FreeBookmark(VSavePlace);
    end;
  finally
    VDataSet.EnableControls;
  end;
  *)
end;

procedure TfmFilterValueNumbFrame2.N1Click(Sender: TObject);
var
  VSavePlace: TBookmark;
  VDataSet: TDataSet;
  VCursor: TCursor;
begin
  VCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    // �������� ��� ������
    VDataSet := xxxDBGrid.DataSource.DataSet;
    VDataSet.DisableControls;
    try
      VSavePlace := VDataSet.GetBookmark;
      try
        VDataSet.First;
        while not VDataSet.Eof do
        begin
          xxxDBGrid.SelectedRows.CurrentRowSelected := True;
          VDataSet.Next;
        end;
      finally
        VDataSet.GotoBookmark(VSavePlace);
        VDataSet.FreeBookmark(VSavePlace);
      end;
    finally
      VDataSet.EnableControls;
    end;
  finally
    Screen.Cursor := VCursor;
  end;
end;

procedure TfmFilterValueNumbFrame2.AddValue(const AValueItems: TValueItems;
  ADataSet: TDataSet);
begin
  with AValueItems.Add do
  begin
    KeyValue.ValueType := vtNumber;
    KeyValue.AsFloat := ADataSet.FieldByName(FKeyField).AsFloat; // !!!
    ListValue.ValueType := vtNumber;
    ListValue.AsFloat := ADataSet.FieldByName(FListField).AsFloat;
  end;
end;

procedure TfmFilterValueNumbFrame2.SetKeyField(const Value: string);
begin
  FKeyField := Value;
end;

procedure TfmFilterValueNumbFrame2.SetListField(const Value: string);
begin
  FListField := Value;
end;

procedure TfmFilterValueNumbFrame2.N2Click(Sender: TObject);
var
  VSavePlace: TBookmark;
  VDataSet: TDataSet;
  VCursor: TCursor;
begin
  VCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    // �������� ��� ������
    VDataSet := xxxDBGrid.DataSource.DataSet;
    VDataSet.DisableControls;
    try
      VSavePlace := VDataSet.GetBookmark;
      try
        VDataSet.First;
        while not VDataSet.Eof do
        begin
          xxxDBGrid.SelectedRows.CurrentRowSelected := False;
          VDataSet.Next;
        end;
      finally
        VDataSet.GotoBookmark(VSavePlace);
        VDataSet.FreeBookmark(VSavePlace);
      end;
    finally
      VDataSet.EnableControls;
    end;
  finally
    Screen.Cursor := VCursor;
  end;
end;

function TfmFilterValueNumbFrame2.GetKeyField: string;
begin
  Result := FKeyField;
end;

function TfmFilterValueNumbFrame2.GetListField: string;
begin
  Result := FListField;
end;

end.
