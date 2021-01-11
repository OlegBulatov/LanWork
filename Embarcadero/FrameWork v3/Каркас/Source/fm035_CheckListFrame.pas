unit fm035_CheckListFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm008_DBObjectFrame, Db, OracleData, ActnList, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, Grids, DBGrids, xxxDBGrid, untParams, Menus;

type
  TfmCheckList = class(TfmDBObject)
    Panel1: TPanel;
    Label1: TLabel;
    ed1: TEdit;
    ToolBar1: TToolBar;
    tb1: TToolButton;
    xxxDBGrid: TxxxDBGrid;
    actSearch: TAction;
    PopupMenu: TPopupMenu;
    miCheckAll: TMenuItem;
    miUncheckAll: TMenuItem;
    actCheckAll: TAction;
    actUncheckAll: TAction;
    procedure FrameResize(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xxxDBGridCellClick(Column: TColumn);
    procedure actSearchUpdate(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure odsListApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
    procedure ed1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actCheckAllUpdate(Sender: TObject);
    procedure actUncheckAllUpdate(Sender: TObject);
    procedure actCheckAllExecute(Sender: TObject);
  private
    FCheckCount: integer;
    function GetIsEnabled: boolean;
  protected
    SearchFieldName: string;
    CheckFieldName: string;
    ValueFieldName: string;

    function GetKeyValuesStr: TStrArray;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Enable;
    procedure Disable;
    procedure RefreshData; override;

    property IsEnabled: boolean read GetIsEnabled;
    property KeyValuesStr: TStrArray read GetKeyValuesStr;
  end;

var
  fmCheckList: TfmCheckList;

implementation

{$R *.DFM}

constructor TfmCheckList.Create(AOwner: TComponent);
begin
  inherited;
  ed1.Clear;
  FCheckCount := 0;
end;

procedure TfmCheckList.FrameResize(Sender: TObject);
var
  i: integer;
  w: integer;
begin
  w := 0;
  for i := 0 to xxxDbGrid.Columns.Count - 2 do
    w := w + xxxDbGrid.Columns[i].Width;

  xxxDbGrid.Columns[xxxDbGrid.Columns.Count - 1].Width := xxxDbGrid.Width - w - 21;
end;

procedure TfmCheckList.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  VRect: TRect;
  VStyle: Cardinal;
begin
  if Column.Index = 0 then
    begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);

    vStyle := DFCS_FLAT;

    if xxxDBGrid.Enabled = False then
      vStyle := vStyle or DFCS_BUTTON3STATE or DFCS_INACTIVE;

    if Column.Field.AsFloat <> 0 then
      vStyle := VStyle or DFCS_CHECKED;

    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(
      xxxDBGrid.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      vStyle
      );
    end;
end;

procedure TfmCheckList.xxxDBGridCellClick(Column: TColumn);
begin
  if Column.Index = 0 then
    begin
    odsList.Edit;
    if odsList.FieldByName(Column.FieldName).AsFloat = 0 then
      begin
      odsList.FieldByName(Column.FieldName).AsFloat := 1;
      FCheckCount := FCheckCount + 1;
      end
    else
      begin
      odsList.FieldByName(Column.FieldName).AsFloat := 0;
      FCheckCount := FCheckCount - 1;
      end;
    odsList.Post;
    end;
end;

procedure TfmCheckList.actSearchUpdate(Sender: TObject);
begin
  actSearch.Enabled := Self.Enabled and not odsList.IsEmpty and not (ed1.Text = '');
end;

procedure TfmCheckList.actSearchExecute(Sender: TObject);
begin
  if not odsList.Locate(SearchFieldName, ed1.Text, [loCaseInsensitive, loPartialKey]) then
    ShowMessage('Банк ' + ed1.Text + ' не найден.');
end;

procedure TfmCheckList.odsListApplyRecord(Sender: TOracleDataSet;
  Action: Char; var Applied: Boolean; var NewRowId: String);
begin
  Applied := True;
end;

procedure TfmCheckList.ed1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then // Enter key
    actSearch.Execute;
end;

procedure TfmCheckList.Enable;
begin
  Label1.Enabled := True;
  ed1.Enabled := True;
  xxxDBGrid.Enabled := True;
  xxxDBGrid.Options := xxxDbGrid.Options + [dgAlwaysShowSelection];
  Self.Enabled := True;
end;

procedure TfmCheckList.Disable;
begin
  Label1.Enabled := False;
  ed1.Enabled := False;
  xxxDBGrid.Enabled := False;
  xxxDBGrid.Options := xxxDbGrid.Options - [dgAlwaysShowSelection];
  Self.Enabled := False;
end;

function TfmCheckList.GetIsEnabled: boolean;
begin
  Result := Self.Enabled;
end;

function TfmCheckList.GetKeyValuesStr: TStrArray;
var
  VSavePlace: TBookmark;
begin
  // Сохраняем выделенные записи
  SetLength(Result, 0);
  odsList.DisableControls;
  try
    VSavePlace := odsList.GetBookmark;
    try
      odsList.First;
      while not odsList.EOF do
	begin
	if odsList.FieldByName(CheckFieldName).AsInteger <> 0 then
	  begin
	  SetLength(Result, Length(Result) + 1);
	  Result[High(Result)] := odsList.FieldByName(ValueFieldName).AsString;
	  end;
	odsList.Next;
	end;
    finally
      odsList.GotoBookmark(VSavePlace);
      odsList.FreeBookmark(VSavePlace);
    end;
  finally
    odsList.EnableControls;
  end;
end;

procedure TfmCheckList.RefreshData;
begin
  FCheckCount := 0;
  inherited;
end;

procedure TfmCheckList.actCheckAllUpdate(Sender: TObject);
begin
  actCheckAll.Enabled := not odsList.IsEmpty;
end;

procedure TfmCheckList.actUncheckAllUpdate(Sender: TObject);
begin
  actUncheckAll.Enabled := FCheckCount > 0;
end;

procedure TfmCheckList.actCheckAllExecute(Sender: TObject);
var
  VSavePlace: TBookmark;
  OldCursor: TCursor;
begin
  OldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  odsList.DisableControls;
  try
    VSavePlace := odsList.GetBookmark;
    FCheckCount := 0;
    try
      odsList.First;
      while not odsList.EOF do
	begin
	odsList.Edit;
	if TAction(Sender) = actCheckAll then
	  begin
	  odsList.FieldByName(CheckFieldName).AsInteger := 1;
	  FCheckCount := FCheckCount + 1;
	  end
	else
	  odsList.FieldByName(CheckFieldName).AsInteger := 0;
	odsList.Post;
	odsList.Next;
	end;
    finally
      odsList.GotoBookmark(VSavePlace);
      odsList.FreeBookmark(VSavePlace);
    end;
  finally
    odsList.EnableControls;
    Screen.Cursor := OldCursor;
  end;
end;

end.
