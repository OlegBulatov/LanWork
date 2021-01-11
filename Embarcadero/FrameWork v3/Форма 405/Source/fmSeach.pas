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

unit fmSeach;

interface

uses Classes, Menus, ActnList, Buttons, StdCtrls, Controls, ExtCtrls,
  Forms, Db, DBGrids, DBCtrls, ComCtrls, untGrid, System.Actions;

type
  TSFBorderIcon  =(
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
    FIsFound: Boolean;
    FKeyFieldName: string;
    FDataSet: TDataSet;
    FOptions: TLocateOptions;
    function Compare(const AText, ASearchText: string): Boolean;
    procedure SetOptions(const Value: TLocateOptions);
    procedure SearchFromPos(const ASearchText: string; const ASearchType: TSearchType);
  public
    fNotShowMessage: Boolean;
    procedure Search(const ASearchText: string);
    property Options: TLocateOptions read FOptions write SetOptions;
    property DataSet: TDataSet read FDataSet write FDataSet;
    property KeyFieldName: string read FKeyFieldName write FKeyFieldName;
    property IsFound: Boolean read FIsFound;
  end;

  TfmSeachFrame = class(TFrame)
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
    FDBlookupCB: TDBLookupComboBox;
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
    procedure SetDBLookupCB(const Value: TDBLookupComboBox);
    procedure SetLabel(const Value: TLabel);
    procedure SetMenuItem(const Value: TMenuItem);
    procedure SetToolButton(const Value: TToolButton);
    function GetSearchText: string;
    function GetDBGrid: TCustomDBGrid;
    function GetDBLookupCB: TDBLookupComboBox;
  protected
    procedure ShowOrHide;
  public
    fNotShowMessage: Boolean;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    //
    property KeyFieldName: string read FKeyFieldName write SetKeyFieldName;
    property DBGrid: TCustomDBGrid read GetDBGrid write SetDBGrid;
    property DBLookupCB: TDBLookupComboBox read GetDBLookupCB write SetDBLookupCB;
    property SearchText: string read GetSearchText write SetSearchText;
    property BorderIcons: TSFBorderIcons read FBorderIcons write SetFBorderIcons;
    property CalbackLabel: TLabel read FLabel write SetLabel;
    property CalbackMenuItem: TMenuItem read FMenuItem write SetMenuItem;
    property CalbackToolButton: TToolButton read FToolButton write SetToolButton;

    procedure StartSearch;
  end;

var
  fmSeachFrame: TfmSeachFrame;

implementation

uses Windows, SysUtils, untMessages;

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

procedure TfmSeachFrame.SetFBorderIcons(const Value: TSFBorderIcons);
begin
  FBorderIcons := Value;
end;

procedure TfmSeachFrame.actSearchUpdate(Sender: TObject);
begin
  // ��������� ������ "�����"
  actSearch.Visible := sfStartSearch in BorderIcons;
  actSearch.Enabled := (actSearch.Visible) and (SearchText <> '');
end;

procedure TfmSeachFrame.actSelectUpdate(Sender: TObject);
begin
  // ��������� ������ "�..."
  actSelect.Visible := sfSelect in BorderIcons;
  actSelect.Enabled := actSelect.Visible;

  // �������� ������ ������������ �������� ���� ������
  edKeyField.Visible := sfSelectHint in BorderIcons;
  edKeyField.Enabled := edKeyField.Visible;
end;

procedure TfmSeachFrame.actCloseUpdate(Sender: TObject);
var
  VVisible: Boolean;
begin
  // ��������� ������ "�������"
  VVisible := sfClose in BorderIcons;
  actClose.Visible := VVisible;
  actClose.Enabled := actSearch.Visible;
end;

function TfmSeachFrame.GetSearchText: string;
begin
  Result := edSearchText.Text;
end;

procedure TfmSeachFrame.SetSearchText(const Value: string);
begin
  edSearchText.Text := Value;
end;

procedure TfmSeachFrame.actSearchExecute(Sender: TObject);
begin
  // �������� �����
  StartSearch;
end;

procedure TfmSeachFrame.StartSearch;
//const
//  SearchSQL: string = 'SELECT RN FROM (SELECT ROWNUM AS RN, v1.* FROM (%s) v1) WHERE %s %s';
//var
//  SQL: string;
//  KeyField: TField;
//  SearchClause: string;
//  vQuery: TOracleQuery;
//  RowNum:  integer;
//  vDataSet: TOracleDataSet;
begin
{
  KeyField := FDbGrid.DataSource.DataSet.FindField(FKeyFieldName);
  if KeyField = nil then
    TAppMessages.ErrorFmt(SInvalidFieldName, [FKeyFieldName]);

  if KeyField is TStringField then
    begin
//    ShowMessage('String');
    SearchClause := 'LIKE ''%' + SearchText + '%''';
    end
  else if KeyField is TNumericField then
    begin
//    ShowMessage('Number');
    SearchClause := '= ' + SearchText;
    end
  else if KeyField is TDateTimeField then
    begin
//    ShowMessage('Date');
    SearchClause := '= TO_DATE(''dd.mm.yyyy'', ''' + SearchText + ''')';
    end
  else
    begin
    TAppMessages.Error('Unsupported field type for search');
    end;

  SQL := Format(SearchSQL, [TxxxDbGrid(FDbGrid).MainDataSet.SQL.Text, FKeyFieldName, SearchClause]);
  vQuery := TOracleQuery.Create(Self);
  vQuery.Session := TOracleDataSet(FDbGrid.DataSource.DataSet).Session;
  vQuery.SQL.Text := SQL;
  vQuery.Execute;
  RowNum := vQuery.Field(0);
  vQuery.Free;

  FDBGrid.DataSource.DataSet.First;
  FDBGrid.DataSource.DataSet.MoveBy(RowNum - 1);
}
{
  vDataSet := TOracleDataSet(FDBGrid.DataSource.DataSet);
  vDataSet.SearchRecord(FKeyFieldName, SearchText, [srForward, srFromCurrent, srIgnoreCase, srPartialMatch]);
}

  // �������� �����
  // FDataSet.Locate(FKeyFieldName, SearchText, [loCaseInsensitive, loPartialKey]);
  FSearchMaster.DataSet := FDBGrid.DataSource.DataSet;
  FSearchMaster.Options := [loCaseInsensitive, loPartialKey];
  FSearchMaster.KeyFieldName := FKeyFieldName;
  FSearchMaster.fNotShowMessage := fNotShowMessage;
  FSearchMaster.Search(SearchText);

  // ���� ���� � combobox'e �� ������������� �� ��������� �������
  if FSearchMaster.IsFound and Assigned(FDBlookupCB) then
  begin
      FDBlookupCB.KeyValue := FSearchMaster.FDataSet[FDBLookupCB.KeyField];
  end;
end;

procedure TfmSeachFrame.actSelectExecute(Sender: TObject);
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

procedure TfmSeachFrame.OnppmSearchFrameOnClick(Sender: TObject);
const
  HINT_STR = '����� �� ������� ''%s''';
begin
  // ������� ���� ��� ������
  FKeyFieldName := TMenuItem(Sender).Name;      // FieldName
  edKeyField.Text := TMenuItem(Sender).Caption; // DisplayFieldName
  edSearchText.Hint := Format(HINT_STR, [edKeyField.Text]);
end;

procedure TfmSeachFrame.SetKeyFieldName(const Value: string);
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

procedure TfmSeachFrame.CheckPrm(const AValue: Pointer);
begin
  // ��������
  if not Assigned(AValue) then
  begin
    TAppMessages.Error(SInvalidParametr);
  end;
end;

procedure TfmSeachFrame.actCloseExecute(Sender: TObject);
begin
  Self.Visible := False;
end;

procedure TfmSeachFrame.edSearchTextKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    spbStartSearch.Click;
    edSearchText.SelectAll;
  end;
end;

constructor TfmSeachFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner); 
  FSearchMaster := TSearchMaster.Create;
  Self.Visible := False;
end;

destructor TfmSeachFrame.Destroy;
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

procedure TfmSeachFrame.ShowOrHide;
begin
  Self.Visible := not Self.Visible;
  Self.Enabled := Self.Visible;
  if edSearchText.CanFocus then edSearchText.SetFocus;
end;

procedure TfmSeachFrame.SetMenuItem(const Value: TMenuItem);
begin
  // ��������
  CheckPrm(Value);
  FMenuItem := Value;
  FMenuItem.Action := actShowHide;
end;


procedure TfmSeachFrame.SetDBGrid(const Value: TCustomDBGrid);
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


procedure TfmSeachFrame.SetDBLookupCB(const Value: TDBLookupComboBox);
begin
  // ��������
  CheckPrm(Value);
  FDBLookupCB :=Value;
end;


procedure TfmSeachFrame.SetToolButton(const Value: TToolButton);
begin
  // ��������
  CheckPrm(Value);
  FToolButton := Value;
  FToolButton.Action := actShowHide;
  FToolButton.ShowHint := True;
end;

procedure TfmSeachFrame.SetLabel(const Value: TLabel);
begin
  // ��������
  CheckPrm(Value);
  FLabel := Value;
  FLabel.Action := actShowHide;
end;

function TfmSeachFrame.ColumnVisible(const AColumn: TColumn): Boolean;
begin
  Result := AColumn.Visible;
end;

function TfmSeachFrame.GetDBGrid: TCustomDBGrid;
begin
  Result := FDBGrid;
end;

function TfmSeachFrame.GetDBLookUpCB: TDBLookupComboBox;
begin
  Result := FDBlookupCB;
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
    SearchFromPos(ASearchText, VSearchType);
    if FIsFound then
      Exit;

    // ������ �� �����
    if not fNotShowMessage then
      begin
      if TAppMessages.ShowConfirmation(SElmNotFound) then
        begin
        VSearchType := stFirst
        end
      else
        begin
        Exit;
        end;
      end
   else
     begin
     Exit;
     end;
  end;
end;

procedure TSearchMaster.SearchFromPos(const ASearchText: string;
  const ASearchType: TSearchType);
var
  VOldCursor: TCursor;
  VCurrentPos: TBookmark;
  VEvent: TDataSetNotifyEvent;
begin
  // �������� �����
  FIsFound := False;
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    VEvent := FDataSet.AfterScroll;
    FDataSet.AfterScroll := nil;
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
          FIsFound := Compare(FDataSet.FieldByName(FKeyFieldName).AsString, ASearchText);
          if FIsFound then
          begin
            // �����
            FDataSet.FreeBookmark(VCurrentPos);
            VCurrentPos:= FDataSet.GetBookmark;
            if Assigned(VEvent) then
            begin
              VEvent(FDataSet);
            end;
            Exit;
          end;
          FDataSet.Next;
        end
      finally
        FDataSet.GotoBookmark(VCurrentPos);
        FDataSet.FreeBookmark(VCurrentPos);
      end;
    finally
      FDataSet.AfterScroll := VEvent;
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

procedure TfmSeachFrame.actShowHideExecute(Sender: TObject);
begin
  ShowOrHide;
end;

end.
