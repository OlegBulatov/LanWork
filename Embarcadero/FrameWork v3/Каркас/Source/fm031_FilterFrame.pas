{******************************************************************************}
{  fm31_FilterFrame
{  ������� ������
{
{  �����
{  �������� �.�.  ������� 2006 �.
{
{  TSearchMaster - ������� ������
{
{  TfmSeachFrame - ����� �������� �������� ���������� �������
{
{******************************************************************************}

unit fm031_FilterFrame;

interface

uses
  Classes, Menus, ActnList, StdCtrls, Buttons, Controls, ExtCtrls,
  Forms, ComCtrls, DBGrids, xxxDBGrid, DBCtrls, System.Actions;

type
  TOnFilter = procedure of object;

  Tfm031_Filter = class(TFrame)
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
    chbType: TCheckBox;
    procedure actSearchExecute(Sender: TObject);
    procedure actSelectExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure edSearchTextKeyPress(Sender: TObject; var Key: Char);
    procedure actShowHideExecute(Sender: TObject);
  private
    FDBlookupCB: TDBLookupComboBox;

    FKeyFieldName: string;
    FDBGrid: TxxxDBGrid;
    FMenuItem: TMenuItem;
    FToolButton: TToolButton;
    FLabel: TLabel;
    FOnFilter: TOnFilter;
    //
    function ColumnVisible(const AColumn: TColumn): Boolean;
    //
    procedure SetDBLookupCB(const Value: TDBLookupComboBox);
    function GetDBLookupCB: TDBLookupComboBox;

    procedure CheckPrm(const AValue: Pointer);
    procedure OnppmSearchFrameOnClick(Sender: TObject);
    procedure SetSearchText(const Value: string);
    procedure SetKeyFieldName(const Value: string);
    procedure SetDBGrid(const Value: TxxxDBGrid);
    function GetSearchText: string;
    function GetDBGrid: TxxxDBGrid;
  protected
    procedure StartSearch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    //
    procedure ShowOrHide;
    procedure Show;
    procedure Hide;
    //
    property DBLookupCB: TDBLookupComboBox read GetDBLookupCB write SetDBLookupCB;

    property KeyFieldName: string read FKeyFieldName write SetKeyFieldName;
    property DBGrid: TxxxDBGrid read GetDBGrid write SetDBGrid;
    property SearchText: string read GetSearchText write SetSearchText;
    property OnFilter: TOnFilter read FOnFilter write FOnFilter;
  end;

var
  fm031_Filter: Tfm031_Filter;

implementation

uses Windows, unt001_Filter, untMessages;

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

{ Tfm31_Filter }

function Tfm031_Filter.GetSearchText: string;
begin
  Result := edSearchText.Text;
end;

procedure Tfm031_Filter.SetSearchText(const Value: string);
begin
  edSearchText.Text := Value;
end;

procedure Tfm031_Filter.actSearchExecute(Sender: TObject);
begin
  // �������� �����
  StartSearch;
end;

procedure Tfm031_Filter.StartSearch;
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ���������� ������ �������
  VColumn := nil;
  for VIndex := 0 to FDBGrid.Columns.Count - 1 do
  begin
    if FDBGrid.Columns[VIndex].FieldName = FKeyFieldName then
    begin
      VColumn := FDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // ����� ������� ���
  if not Assigned(VColumn) then Exit;

  // ������� ������� �� ������� ����
  FDBGrid.MainDataSet.Conditions.Clear;// ClearFor(FKeyFieldName);

  if SearchText <> '' then
  begin
    // ������� ������ �� �����������
    VCondition := FDBGrid.MainDataSet.Conditions.Add;
    VCondition.DisplayName := FDBGrid.GetFullColumnName(VColumn);
    if chbType.Checked  then
    begin
      VCondition.Condition := dc02;
    end else
    begin
      VCondition.Condition := dc06;
    end;
    VCondition.ListName := VColumn.FieldName;
    VValue := VCondition.ValueItems.Add;
    if chbType.Checked  then
    begin
      VValue.KeyValue.Value := SearchText;
      VValue.ListValue.Value := SearchText;
    end else
    begin
      VValue.KeyValue.Value := '%' + SearchText + '%';
      VValue.ListValue.Value := '%' + SearchText + '%';
    end;
  end;
  
  // �������� ����������
  if Assigned(FOnFilter) then
   begin
    OnFilter;
   end;

  if Assigned(FDBlookupCB) then
  begin
   FDBlookupCB.KeyValue := FDBlookupCB.ListSource.DataSet[FDBLookupCB.KeyField];
  end;
end;

procedure Tfm031_Filter.actSelectExecute(Sender: TObject);
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

procedure Tfm031_Filter.OnppmSearchFrameOnClick(Sender: TObject);
begin
  // ������� ���� ��� ������
  FKeyFieldName := TMenuItem(Sender).Name;      // FieldName
  edKeyField.Text := TMenuItem(Sender).Caption; // DisplayFieldName
end;

procedure Tfm031_Filter.SetKeyFieldName(const Value: string);
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
  VMenuItem := ppmSearchFrame.Items.Find(FDBGrid.GetFullColumnName(VColumn));
  if not Assigned(VMenuItem) then
  begin
    TAppMessages.ErrorFmt(SInvalidFieldName, [Value]);
  end;

  // ��������� �������
  VMenuItem.Click;
end;

procedure Tfm031_Filter.CheckPrm(const AValue: Pointer);
begin
  // ��������
  if not Assigned(AValue) then
  begin
    TAppMessages.Error(SInvalidParametr);
  end;
end;

procedure Tfm031_Filter.actCloseExecute(Sender: TObject);
begin
  Self.Visible := False;
end;

procedure Tfm031_Filter.edSearchTextKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    spbStartSearch.Click;
    edSearchText.SelectAll;
  end;
end;

constructor Tfm031_Filter.Create(AOwner: TComponent);
begin
  inherited Create(AOwner); 
  Self.Visible := False;
end;

destructor Tfm031_Filter.Destroy;
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
  inherited;
end;

procedure Tfm031_Filter.ShowOrHide;
begin
  Self.Visible := not Self.Visible;
  Self.Enabled := Self.Visible;
  if edSearchText.CanFocus then
    edSearchText.SetFocus;
end;

procedure Tfm031_Filter.SetDBGrid(const Value: TxxxDBGrid);
var
  IsFirstField: boolean;
  I: Integer;
  VColumn: TColumn;
  VMenuItem: TMenuItem;
begin
  // ��������
  CheckPrm(Value);
  FDBGrid := Value;

  // ��������� ������ ����� ��� ������
  ppmSearchFrame.Items.Clear;
  IsFirstField := True;
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
    VMenuItem.Caption := Value.GetFullColumnName(VColumn);
//    VMenuItem.Caption := VColumn.Field.DisplayName;
    VMenuItem.OnClick := OnppmSearchFrameOnClick;
    ppmSearchFrame.Items.Add(VMenuItem);
    if IsFirstField then
      begin
      edKeyField.Text := VMenuItem.Caption;
      IsFirstField :=  False;
      end;
  end;
end;

function Tfm031_Filter.ColumnVisible(const AColumn: TColumn): Boolean;
begin
  Result := AColumn.Visible;
end;

function Tfm031_Filter.GetDBGrid: TxxxDBGrid;
begin
  Result := FDBGrid;
end;

procedure Tfm031_Filter.actShowHideExecute(Sender: TObject);
begin
  ShowOrHide;
end;

procedure Tfm031_Filter.SetDBLookupCB(const Value: TDBLookupComboBox);
begin
  // ��������
  CheckPrm(Value);
  FDBLookupCB :=Value;
end;

function Tfm031_Filter.GetDBLookUpCB: TDBLookupComboBox;
begin
  Result := FDBlookupCB;
end;

procedure Tfm031_Filter.Hide;
begin
  // ������ ������
  Visible := False;
  Enabled := False;
end;

procedure Tfm031_Filter.Show;
begin
  // ���������� ������
  Visible := True;
  Enabled := True;
  if edSearchText.CanFocus then
    edSearchText.SetFocus;
end;

end.
