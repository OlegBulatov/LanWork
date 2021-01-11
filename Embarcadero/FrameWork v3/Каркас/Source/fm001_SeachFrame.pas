{******************************************************************************}
{  fmSeach
{  ����� ������ � TCustomDBGrid'e
{
{  �����
{  �������� �.�.  ���� 2003 �.
{
{  TSearchMaster - ������� ������
{
{  TfmSeachFrame - ����� �������� �������� ���������� �������
{
{******************************************************************************}

unit fm001_SeachFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ImgList, Menus, ActnList, StdCtrls, ExtCtrls, ComCtrls,
  db, DBGrids, untGrid, fm000_ParentFrame;

type
  TSFBorderIcon = (
    sfSelect,           // ������ ������ ���� ������
    sfSelectHint,       // ������ ������������ �������� ���� ������
    sfStartSearch,      // ���������
    sfClose             // ������ �������
    );

  TSFBorderIcons = set of TSFBorderIcon;

  TSearchType = (
    stFirst,            // ����� � ������ ������
    stNext              // ����� �����
    );

  TSearchMaster = class(TObject)
  private
    FKeyFieldName: string;
    FDataSet: TDataSet;
    FOptions: TLocateOptions;
    function Compare(const AText, ASearchText: string): Boolean;
    procedure SetOptions(const Value: TLocateOptions);
    function SearchFromPos(const ASearchText: string; const ASearchType: TSearchType): Boolean;
  public
    procedure Search(const ASearchText: string);
    property Options: TLocateOptions read FOptions write SetOptions;
    property DataSet: TDataSet read FDataSet write FDataSet;
    property KeyFieldName: string read FKeyFieldName write FKeyFieldName;
  end;

  Tfm003_Seach = class(Tfm000_Parent)
    alSearchFrame: TActionList;
    actSearch: TAction;
    actClose: TAction;
    actSelect: TAction;
    ppmSearchFrame: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    paLeft01: TPanel;
    Label1: TLabel;
    paLeft02: TPanel;
    paLeft03: TPanel;
    paLeft04: TPanel;
    paLeft05: TPanel;
    edSearchText: TEdit;
    sbSelect: TSpeedButton;
    edKeyField: TEdit;
    spbStartSearch: TSpeedButton;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    actShowHide: TAction;
    procedure actSearchUpdate(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSelectExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actCloseUpdate(Sender: TObject);
    procedure edSearchTextKeyPress(Sender: TObject; var Key: Char);
    procedure actSelectUpdate(Sender: TObject);
    procedure actShowHideExecute(Sender: TObject);
  private
    FSearchMaster: TSearchMaster;
    FKeyFieldName: string;
    FDBGrid: TCommonGrid;
    FBorderIcons: TSFBorderIcons;
    FMenuItem: TMenuItem;
    FToolButton: TToolButton;
    FLabel: TLabel;
    //
    function ColumnVisible(const AColumn: TColumn): Boolean;
    //
    procedure CheckPrm(const AValue: Pointer);
    procedure OnppmSearchFrameOnClick(Sender: TObject);
    procedure SetFBorderIcons(const Value: TSFBorderIcons);
    procedure SetSearchText(const Value: string);
    procedure SetKeyFieldName(const Value: string);
    procedure SetDBGrid(const Value: TCustomDBGrid);
    procedure SetLabel(const Value: TLabel);
    procedure SetMenuItem(const Value: TMenuItem);
    procedure SetToolButton(const Value: TToolButton);
    function GetSearchText: string;
    function GetDBGrid: TCustomDBGrid;
  protected
    procedure StartSearch;
    procedure ShowOrHide;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    //
    property KeyFieldName: string read FKeyFieldName write SetKeyFieldName;
    property DBGrid: TCustomDBGrid read GetDBGrid write SetDBGrid;
    property SearchText: string read GetSearchText write SetSearchText;
    property BorderIcons: TSFBorderIcons read FBorderIcons write SetFBorderIcons;
    property CalbackLabel: TLabel read FLabel write SetLabel;    
    property CalbackMenuItem: TMenuItem read FMenuItem write SetMenuItem;
    property CalbackToolButton: TToolButton read FToolButton write SetToolButton;    
  end;

var
  fm003_Seach: Tfm003_Seach;

implementation

uses untMessages, dbTables, dm02_PictersData;

{$R *.DFM}

resourcestring
  SInvalidField =
    '������ � ������ fmSeach.pas!' + #13#10 +
    '�������� Column.Field �� ������ ���� ������!';
  SInvalidDisplayName =
    '������ � ������ fmSeach.pas!' + #13#10 +
    '�������� Column.Field.DisplayName �� ������ ���� ������!';
  SInvalidParametr =
    '������ � ������ fmSeach.pas!' + #13#10 +
    '�������� ����� nil!';
  SInvalidFieldName =
    '������ � ������ fmSeach.pas!' + #13#10 +
    '���� � ������ ''%s'' �� �������!';
  SElmNotFound =
    '�������� ������� ��������. ������� �� ������!' + #13#10 +
    '���������� ����� � ������ �������?';

{ TfmSeachFrame }

procedure Tfm003_Seach.SetFBorderIcons(const Value: TSFBorderIcons);
begin
  FBorderIcons := Value;
end;

procedure Tfm003_Seach.actSearchUpdate(Sender: TObject);
begin
  // ��������� ������ "�����"
  actSearch.Visible := sfStartSearch in BorderIcons;
  actSearch.Enabled := (actSearch.Visible) and (SearchText <> '');
end;

procedure Tfm003_Seach.actSelectUpdate(Sender: TObject);
begin
  // ��������� ������ "�..."
  actSelect.Visible := sfSelect in BorderIcons;
  actSelect.Enabled := actSelect.Visible;

  // �������� ������ ������������ �������� ���� ������
  edKeyField.Visible := sfSelectHint in BorderIcons;
  edKeyField.Enabled := edKeyField.Visible;
end;

procedure Tfm003_Seach.actCloseUpdate(Sender: TObject);
var
  VVisible: Boolean;
begin
  // ��������� ������ "�������"
  VVisible := sfClose in BorderIcons;
  actClose.Visible := VVisible;
  actClose.Enabled := actSearch.Visible;
end;

function Tfm003_Seach.GetSearchText: string;
begin
  Result := edSearchText.Text;
end;

procedure Tfm003_Seach.SetSearchText(const Value: string);
begin
  edSearchText.Text := Value;
end;

procedure Tfm003_Seach.actSearchExecute(Sender: TObject);
begin
  // �������� �����
  StartSearch;
end;

procedure Tfm003_Seach.StartSearch;
begin
  // �������� �����
  // FDataSet.Locate(FKeyFieldName, SearchText, [loCaseInsensitive, loPartialKey]);
  FSearchMaster.DataSet := FDBGrid.DataSource.DataSet;
  FSearchMaster.Options := [loCaseInsensitive, loPartialKey];
  FSearchMaster.KeyFieldName := FKeyFieldName;
  FSearchMaster.Search(SearchText);
end;

procedure Tfm003_Seach.actSelectExecute(Sender: TObject);
var
  Position: TPoint;
  Control: TControl;
begin
  // ���������� ����������� ����
  Control := sbSelect;
  Position.X := Control.Left;
  Position.Y := Control.Top + Control.Height + 1;
  Position := Control.Parent.ClientToScreen(Position);
  ppmSearchFrame.Popup(Position.X, Position.Y);
end;

procedure Tfm003_Seach.OnppmSearchFrameOnClick(Sender: TObject);
const
  HINT_STR = '����� �� ������� ''%s''';
begin
  // ������� ���� ��� ������
  FKeyFieldName := TMenuItem(Sender).Name;      // FieldName
  edKeyField.Text := TMenuItem(Sender).Caption; // DisplayFieldName
  edSearchText.Hint := Format(HINT_STR, [edKeyField.Text]);
end;

procedure Tfm003_Seach.SetKeyFieldName(const Value: string);
var
  I: Integer;
  VColumn: TColumn;
  VMenuItem: TMenuItem;
begin
  // ��������
  if FKeyFieldName = Value then Exit;

  // ���� ���� � DataSet'e
  VColumn := nil;
  for I := 0 to FDBGrid.Columns.Count - 1 do
  begin
    if (not ColumnVisible(FDBGrid.Columns[I])) or
       (FDBGrid.Columns[I].FieldName <> Value) then
    begin
      Continue;
    end;
    VColumn := FDBGrid.Columns[I];
    Break;
  end;
  if not Assigned(VColumn) then
  begin
    TAppMessages.ErrorFmt(SInvalidFieldName, [Value]);
  end;

  // ������������� ������� ���� ��� ������
  VMenuItem := ppmSearchFrame.Items.Find(VColumn.Title.Caption);
  if not Assigned(VMenuItem) then
  begin
    TAppMessages.ErrorFmt(SInvalidFieldName, [Value]);
  end;

  // ��������� �������
  VMenuItem.Click;
end;

procedure Tfm003_Seach.CheckPrm(const AValue: Pointer);
begin
  // ��������
  if not Assigned(AValue) then
  begin
    TAppMessages.Error(SInvalidParametr);
  end;
end;

procedure Tfm003_Seach.actCloseExecute(Sender: TObject);
begin
  Self.Visible := False;
end;

procedure Tfm003_Seach.edSearchTextKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    spbStartSearch.Click;
    edSearchText.SelectAll;
  end;
end;

constructor Tfm003_Seach.Create(AOwner: TComponent);
begin
  inherited Create(AOwner); 
  FSearchMaster := TSearchMaster.Create;
  Self.Visible := False;
end;

destructor Tfm003_Seach.Destroy;
begin
  if Assigned(FLabel) then
  begin
    FLabel.Action := nil;
  end;
  if Assigned(FToolButton) then
  begin
    FToolButton.Action := nil;
  end;
  if Assigned(FMenuItem) then
  begin
    FMenuItem.Action := nil;
  end;
  FSearchMaster.Free;
  inherited;
end;

procedure Tfm003_Seach.ShowOrHide;
begin
  Self.Visible := not Self.Visible;
  Self.Enabled := Self.Visible;
  if edSearchText.CanFocus then edSearchText.SetFocus;
end;

procedure Tfm003_Seach.SetMenuItem(const Value: TMenuItem);
begin
  // ��������
  CheckPrm(Value);
  FMenuItem := Value;
  FMenuItem.Action := actShowHide;
end;

procedure Tfm003_Seach.SetDBGrid(const Value: TCustomDBGrid);
var
  I: Integer;
  VColumn: TColumn;
  VMenuItem: TMenuItem;
begin
  // ��������
  CheckPrm(Value);
  FDBGrid := TCommonGrid(Value);

  // ��������� ������ ����� ��� ������
  ppmSearchFrame.Items.Clear;
  for I := 0 to FDBGrid.Columns.Count - 1 do
  begin
    VColumn := FDBGrid.Columns[I];
    if not ColumnVisible(VColumn) then Continue;

    // Field �� ������ ���� ������
    if not Assigned(VColumn.Field) then
    begin
      TAppMessages.Error(SInvalidField);
    end;

    // DispayName �� ������ ���� ������
    if VColumn.DisplayName = '' then
    begin
      TAppMessages.Error(SInvalidDisplayName);
    end;

    // ������� ����� ����� ������������ ����
    VMenuItem := TMenuItem.Create(ppmSearchFrame);
    VMenuItem.Name := VColumn.FieldName;
    VMenuItem.Caption := VColumn.Title.Caption;
//    VMenuItem.Caption := VColumn.Field.DisplayName;
    VMenuItem.OnClick := OnppmSearchFrameOnClick;
    ppmSearchFrame.Items.Add(VMenuItem);
  end;
end;

procedure Tfm003_Seach.SetToolButton(const Value: TToolButton);
begin
  // ��������
  CheckPrm(Value);
  FToolButton := Value;
  FToolButton.Action := actShowHide;
  FToolButton.ShowHint := True;
end;

procedure Tfm003_Seach.SetLabel(const Value: TLabel);
begin
  // ��������
  CheckPrm(Value);
  FLabel := Value;
  FLabel.Action := actShowHide;
end;

function Tfm003_Seach.ColumnVisible(const AColumn: TColumn): Boolean;
begin
  Result := AColumn.Visible;
end;

function Tfm003_Seach.GetDBGrid: TCustomDBGrid;
begin
  Result := FDBGrid;
end;

{ TSearchMaster }

function TSearchMaster.Compare(const AText, ASearchText: string): Boolean;
var
  VText, VSearchText: string;
begin
  VText := AText;
  VSearchText := ASearchText;

  // ������� �� �����
  if loCaseInsensitive in FOptions then
  begin
    VText := AnsiUpperCase(VText);
    VSearchText := AnsiUpperCase(VSearchText);
  end;

  if loPartialKey in FOptions then
  begin
    // ����� � VText ��������� VSearchText
    Result := Pos(VSearchText, VText) <> 0;
  end else
  begin
    // ������ �����
    Result := VText = VSearchText;
  end;
end;

procedure TSearchMaster.Search(const ASearchText: string);
var
  VSearchType: TSearchType;
begin
  VSearchType := stNext;
  while True do
  begin
    // �����
    if SearchFromPos(ASearchText, VSearchType) then
    begin
      Exit;
    end;

    // ������ �� �����
    if TAppMessages.ShowConfirmation(SElmNotFound) then
    begin
      VSearchType := stFirst
    end else
    begin
      Exit;
    end;
  end;
end;

function TSearchMaster.SearchFromPos(const ASearchText: string;
  const ASearchType: TSearchType): Boolean;
var
  VOldCursor: TCursor;
  VCurrentPos: TBookmark;
begin
  // �������� �����
  Result := False;
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    FDataSet.DisableControls;
    try
      VCurrentPos:= FDataSet.GetBookmark;
      try
        if ASearchType = stFirst then
        begin
          // ����� � ������ ������
          FDataSet.First;
        end else
        begin
          // ����� �����
          FDataSet.Next;
        end;
        while not FDataSet.Eof do
        begin
          Result := Compare(FDataSet.FieldByName(FKeyFieldName).AsString, ASearchText);
          if Result then
          begin
            // �����
            FDataSet.FreeBookmark(VCurrentPos);
            VCurrentPos:= FDataSet.GetBookmark;
            Exit;
          end;
          FDataSet.Next;
        end
      finally
        FDataSet.GotoBookmark(VCurrentPos);
        FDataSet.FreeBookmark(VCurrentPos);
      end;
    finally
      FDataSet.EnableControls;
    end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TSearchMaster.SetOptions(const Value: TLocateOptions);
begin
  FOptions := Value;
end;

procedure Tfm003_Seach.actShowHideExecute(Sender: TObject);
begin
  ShowOrHide;
end;

end.
