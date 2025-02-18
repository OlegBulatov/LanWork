unit fm48_SparkSettingsFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, frm04_EditForm, fm004_ListFrame, fm002_EditFrame, clipbrd;

type
  Tfm48_SparkSettings = class(TfmGrid)
    odsListT247_ID: TFloatField;
    odsListT247_SYSTEM_NAME: TStringField;
    odsListT247_USER_NAME: TStringField;
    odsListT247_DESCRIPTION: TStringField;
    odsListT247_REQUIRED_WITH_CHANGEABLE: TFloatField;
    odsListT247_REQUIRED: TIntegerField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    {procedure xxxDBGridCellClick(Column: TColumn);}
    procedure xxxDBGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure xxxDBGridColExit(Sender: TObject);
    procedure xxxDBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
 public
    { Public declarations }
    procedure InitFrame(Sender: TObject); override;
    procedure DoSaveChange;
  protected
    procedure DoCheck(CheckColumnName: string); override;
    procedure DoUnCheck(CheckColumnName: string); override;
    function GetKeyFieldName: string; override;
    procedure UpdateBind;
    procedure WriteLogOnEdit;
  end;

var
  fm48_SparkSettings: Tfm48_SparkSettings;

implementation

{$R *.DFM}
uses dm005_MainData;
{ Tfm48_SparkSettings }

procedure Tfm48_SparkSettings.InitFrame(Sender: TObject);
var
VColumnDef: TColumnDef;
begin
  inherited;

  ColumnDefs.Clear;
  VColumnDef := ColumnDefs.AddSelectionColumn(xxxDBGrid.Columns[4]);
  VColumnDef.Images.Clear;
  VColumnDef.Images.AddFloat(51, 0);
  VColumnDef.Images.AddFloat(77, 1);
  VColumnDef.Images.AddFloat(55, 2);
  VColumnDef.Images.AddFloat(56, 3);
end;

procedure Tfm48_SparkSettings.DoCheck(CheckColumnName: string);
begin
  // ������ �������
  odsList.Edit;
  odsListT247_REQUIRED_WITH_CHANGEABLE.AsFloat := 3;
  odsListT247_REQUIRED.AsInteger := 1;
  odsList.Post;
end;

procedure Tfm48_SparkSettings.DoUnCheck(CheckColumnName: string);
begin
  // ������� �������
  odsList.Edit;
  odsListT247_REQUIRED_WITH_CHANGEABLE.AsFloat := 2;
  odsListT247_REQUIRED.AsInteger := 0;
  odsList.Post;
end;

procedure Tfm48_SparkSettings.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (Column.Field.FieldName = 'T247_DESCRIPTION') then
  begin
    xxxDBGrid.Canvas.Brush.Color := clMenu;
    xxxDBGrid.Canvas.Font.Color := clBlack;
    xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure Tfm48_SparkSettings.DoSaveChange;
begin
  EditType := etEdit;
  DBAction := UpdateBind;
  MatixAction := WriteLogOnEdit;
  SaveChange;
end;

procedure Tfm48_SparkSettings.UpdateBind;
begin
  //odsList.DisableControls;
  try
    odsList.First;
    while not odsList.Eof do
    begin
      oqUpdate.SetVariable(':T247_ID', odsList['T247_ID']);
      oqUpdate.SetVariable(':T247_USER_NAME', odsList['T247_USER_NAME']);
      oqUpdate.SetVariable(':T247_REQUIRED', odsList['T247_REQUIRED']);
      oqUpdate.Execute;
      odsList.Next;
    end;
    ShowMessage('��������� �������!');
  finally
  //odsList.EnableControls;
  end;
  odsList.Edit;
end;

procedure Tfm48_SparkSettings.WriteLogOnEdit;
begin

end;

function Tfm48_SparkSettings.GetKeyFieldName: string;
begin
  Result := 'T247_ID';
end;

{procedure Tfm48_SparkSettings.xxxDBGridCellClick(Column: TColumn);
begin
  if (Column.Field.IsNull) then Exit;
  if (Column.Field.FieldName = 'T247_REQUIRED_WITH_CHANGEABLE') then
  begin
    xxxDBGrid.Options := xxxDBGrid.Options - [dgEditing];
    if Column.Field.AsFloat = 3 then
    begin
      // ������� �������
      DoUnCheck(Column.Field.FieldName);
    end else
    if Column.Field.AsFloat = 2 then
    begin
      // ������ �������
      DoCheck(Column.Field.FieldName);
    end;
  end;
end;}

procedure Tfm48_SparkSettings.xxxDBGridMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (xxxDBGrid.SelectedField.FieldName = 'T247_USER_NAME') and (Button = mbLeft) then
  begin
    xxxDBGrid.Options := xxxDBGrid.Options + [dgEditing];
    odsList.Edit;
  end else
  if (xxxDBGrid.SelectedField.FieldName = 'T247_REQUIRED_WITH_CHANGEABLE') and (Button = mbLeft) then
  begin
    xxxDBGrid.Options := xxxDBGrid.Options - [dgEditing];
    if xxxDBGrid.SelectedField.AsFloat = 3 then
    begin
      // ������� �������
      DoUnCheck(xxxDBGrid.SelectedField.FieldName);
    end else
    if xxxDBGrid.SelectedField.AsFloat = 2 then
    begin
      // ������ �������
      DoCheck(xxxDBGrid.SelectedField.FieldName);
    end;
  end else
  inherited;
end;

// ����������� ������ ������������� ����� � ������� "����."
procedure Tfm48_SparkSettings.xxxDBGridColExit(Sender: TObject);
begin
  xxxDBGrid.Options := xxxDBGrid.Options - [dgEditing];
  inherited;
end;

// ����������� ������ ����������� �� Excel
procedure Tfm48_SparkSettings.xxxDBGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  // ��������� ������ Insert
  if (Key = VK_INSERT) then
  begin
    Abort;
  end else
  // ������� �� ������ ������ ���������� ������� � ����� ����� ������������
  if (Key = Ord('V')) and (ssCtrl in Shift) then
  begin
    Clipboard.AsText := Trim(Clipboard.AsText);
  end;
  inherited;
end;

end.
