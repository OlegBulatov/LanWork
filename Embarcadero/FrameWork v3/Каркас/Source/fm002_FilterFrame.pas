{******************************************************************************}
{  fm31_FilterFrame
{  Простой фильтр
{
{  Ланит
{  Долженко А.С.  февраль 2006 г.
{
{  TSearchMaster - алгорим поиска
{
{  TfmSeachFrame - фрейм содержит элементы управления поиском
{
{******************************************************************************}

unit fm002_FilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ImgList, Menus, ActnList, StdCtrls, ExtCtrls, ComCtrls,
  db, DBGrids, untGrid, xxxDBGrid, fm000_ParentFrame;

type
  TOnFilter = procedure of object;

  Tfm002_Filter = class(Tfm000_Parent)
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
    FKeyFieldName: string;
    FDBGrid: TxxxDBGrid;
    FMenuItem: TMenuItem;
    FToolButton: TToolButton;
    FLabel: TLabel;
    FOnFilter: TOnFilter;
    //
    function ColumnVisible(const AColumn: TColumn): Boolean;
    //
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
    //
    property KeyFieldName: string read FKeyFieldName write SetKeyFieldName;
    property DBGrid: TxxxDBGrid read GetDBGrid write SetDBGrid;
    property SearchText: string read GetSearchText write SetSearchText;
    property OnFilter: TOnFilter read FOnFilter write FOnFilter;
  end;

var
  fm002_Filter: Tfm002_Filter;

implementation

uses untMessages, dbTables, dm02_PictersData;

{$R *.DFM}

resourcestring
  SInvalidField =
    'Ошибка в модуле fmSeach.pas!' + #13#10 +
    'Свойство Column.Field не должно быть пустым!';
  SInvalidDisplayName =
    'Ошибка в модуле fmSeach.pas!' + #13#10 +
    'Свойство Column.Field.DisplayName не должно быть пустым!';
  SInvalidParametr =
    'Ошибка в модуле fmSeach.pas!' + #13#10 +
    'Параметр равен nil!';
  SInvalidFieldName =
    'Ошибка в модуле fmSeach.pas!' + #13#10 +
    'Поле с именем ''%s'' не найдено!';
  SElmNotFound =
    'Просмотр таблицы закончен. Элемент не найден!' + #13#10 +
    'Продолжить поиск с начала таблицы?';

{ Tfm31_Filter }

function Tfm002_Filter.GetSearchText: string;
begin
  Result := edSearchText.Text;
end;

procedure Tfm002_Filter.SetSearchText(const Value: string);
begin
  edSearchText.Text := Value;
end;

procedure Tfm002_Filter.actSearchExecute(Sender: TObject);
begin
  // начинаем поиск
  StartSearch;
end;

procedure Tfm002_Filter.StartSearch;
var
  VIndex: Integer;
  VColumn: TColumn;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // Определяем индекс колонки
  VColumn := nil;
  for VIndex := 0 to FDBGrid.Columns.Count - 1 do
  begin
    if FDBGrid.Columns[VIndex].FieldName = FKeyFieldName then
    begin
      VColumn := FDBGrid.Columns[VIndex];
      Break;
    end;
  end;

  // такой колонки нет
  if not Assigned(VColumn) then Exit;

  // снимаем фильтры по данному полю
  FDBGrid.MainDataSet.Conditions.Clear;// ClearFor(FKeyFieldName);

  if SearchText <> '' then
  begin
    // снимаем фильтр по выделенному
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
  
  // вызываем обновление
  if Assigned(FOnFilter) then OnFilter;
end;

procedure Tfm002_Filter.actSelectExecute(Sender: TObject);
var
  Position: TPoint;
  Control: TControl;
begin
  // показываем всплывающее меню
  Control := sbSelect;
  Position.X := Control.Left;
  Position.Y := Control.Top + Control.Height + 1;
  Position := Control.Parent.ClientToScreen(Position);
  ppmSearchFrame.Popup(Position.X, Position.Y);
end;

procedure Tfm002_Filter.OnppmSearchFrameOnClick(Sender: TObject);
begin
  // Выбрали поле для поиска
  FKeyFieldName := TMenuItem(Sender).Name;      // FieldName
  edKeyField.Text := TMenuItem(Sender).Caption; // DisplayFieldName
end;

procedure Tfm002_Filter.SetKeyFieldName(const Value: string);
var
  I: Integer;
  VColumn: TColumn;
  VMenuItem: TMenuItem;
begin
  // проверка
  if FKeyFieldName = Value then Exit;

  // ищем поле в DataSet'e
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

  // устанавливаем текущее поле для поиска
  VMenuItem := ppmSearchFrame.Items.Find(FDBGrid.GetFullColumnName(VColumn));
  if not Assigned(VMenuItem) then
  begin
    TAppMessages.ErrorFmt(SInvalidFieldName, [Value]);
  end;

  // иметируем нажатие
  VMenuItem.Click;
end;

procedure Tfm002_Filter.CheckPrm(const AValue: Pointer);
begin
  // проверка
  if not Assigned(AValue) then
  begin
    TAppMessages.Error(SInvalidParametr);
  end;
end;

procedure Tfm002_Filter.actCloseExecute(Sender: TObject);
begin
  Self.Visible := False;
end;

procedure Tfm002_Filter.edSearchTextKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    spbStartSearch.Click;
    edSearchText.SelectAll;
  end;
end;

constructor Tfm002_Filter.Create(AOwner: TComponent);
begin
  inherited Create(AOwner); 
  Self.Visible := False;
end;

destructor Tfm002_Filter.Destroy;
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

procedure Tfm002_Filter.ShowOrHide;
begin
  Self.Visible := not Self.Visible;
  Self.Enabled := Self.Visible;
  if edSearchText.CanFocus then edSearchText.SetFocus;
end;

procedure Tfm002_Filter.SetDBGrid(const Value: TxxxDBGrid);
var
  I: Integer;
  VColumn: TColumn;
  VMenuItem: TMenuItem;
begin
  // проверка
  CheckPrm(Value);
  FDBGrid := Value;

  // заполняем список полей для поиска
  ppmSearchFrame.Items.Clear;
  for I := 0 to FDBGrid.Columns.Count - 1 do
  begin
    VColumn := FDBGrid.Columns[I];
    if not ColumnVisible(VColumn) then Continue;

    // Field не должен быть пустым
    if not Assigned(VColumn.Field) then
    begin
      TAppMessages.Error(SInvalidField);
    end;

    // DispayName не должен быть пустым
    if VColumn.DisplayName = '' then
    begin
      TAppMessages.Error(SInvalidDisplayName);
    end;

    // создаем новый пункт всплывающего меню
    VMenuItem := TMenuItem.Create(ppmSearchFrame);
    VMenuItem.Name := VColumn.FieldName;
    VMenuItem.Caption := Value.GetFullColumnName(VColumn);
//    VMenuItem.Caption := VColumn.Field.DisplayName;
    VMenuItem.OnClick := OnppmSearchFrameOnClick;
    ppmSearchFrame.Items.Add(VMenuItem);
  end;
end;

function Tfm002_Filter.ColumnVisible(const AColumn: TColumn): Boolean;
begin
  Result := AColumn.Visible;
end;

function Tfm002_Filter.GetDBGrid: TxxxDBGrid;
begin
  Result := FDBGrid;
end;

procedure Tfm002_Filter.actShowHideExecute(Sender: TObject);
begin
  ShowOrHide;
end;

end.
