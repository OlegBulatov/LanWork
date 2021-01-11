unit L01_SearchF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm001_Composite, StdCtrls, db, dbgrids, ActnList;

type
  TSearchType = (
    stUp,            // поиск с первой записи
    stDown              // найти далее
    );

  TfmSearch = class(TfmComposite)
    Label1: TLabel;
    edSearchText: TEdit;
    Label2: TLabel;
    cmbField: TComboBox;
    chbRegister: TCheckBox;
    chbAll: TCheckBox;
    Label3: TLabel;
    cmbSType: TComboBox;
    procedure cmbFieldChange(Sender: TObject);
    procedure edSearchTextKeyPress(Sender: TObject; var Key: Char);
  private
    function GetSearchType: TSearchType;
    function GetSearchText: string;
    function GetOptions: TLocateOptions;
    function GetSearchField: string;
    procedure SetSearchField(const Value: string);
  public
    procedure InitFrame(Sender: TObject);  override;
    //
    //procedure RegisterField(const AField: TField);
    procedure RegisterColumns(const AGrid: TDbGrid);
    //
    property SearchField: string read GetSearchField write SetSearchField;
    property SearchText: string read GetSearchText;
    property SearchType: TSearchType read GetSearchType;
    property Options: TLocateOptions read GetOptions;
  end;

var
  fmSearch: TfmSearch;

implementation

{$R *.DFM}

{ TfmSearch }

function TfmSearch.GetOptions: TLocateOptions;
begin
  Result := [];
  if not chbRegister.Checked then
  begin
    Result := Result +  [loCaseInsensitive];
  end;
  if not chbAll.Checked then
  begin
    Result := Result +  [loPartialKey];
  end;
end;

function TfmSearch.GetSearchText: string;
begin
  Result := edSearchText.Text;
end;

function TfmSearch.GetSearchType: TSearchType;
begin
  if cmbSType.ItemIndex = 0 then
  begin
    Result := stDown;
  end else
  begin
    Result := stUp;
  end;
end;

procedure TfmSearch.InitFrame(Sender: TObject);
begin
  cmbSType.ItemIndex := 0;
end;

function TfmSearch.GetSearchField: string;
begin
  Result := String(cmbField.Items.Objects[cmbField.ItemIndex]);
end;

(*
procedure TfmSearch.RegisterField(const AField: TField);
begin
  cmbField.Items.AddObject(AField.DisplayName, TObject(TField));
end;
*)

procedure TfmSearch.SetSearchField(const Value: string);
var
  I: Integer;
begin
  for I := 0 to cmbField.Items.Count - 1 do
  begin
    if String(cmbField.Items.Objects[I]) = Value then
    begin
      cmbField.ItemIndex := I;
      Exit;
    end;
    (*
    if TField(cmbField.Items.Objects[cmbField.ItemIndex]).FieldName = Value then
    begin
      cmbField.ItemIndex := I;
      Exit;
    end;
    *)
  end;
end;

procedure TfmSearch.cmbFieldChange(Sender: TObject);
const
  HINT_STR = 'Поиск по колонке ''%s''';
begin
  (*
  // Выбрали поле для поиска
  FKeyFieldName := TMenuItem(Sender).Name;      // FieldName
  edKeyField.Text := TMenuItem(Sender).Caption; // DisplayFieldName
  edSearchText.Hint := Format(HINT_STR, [edKeyField.Text]);
  *)
end;

procedure TfmSearch.RegisterColumns(const AGrid: TDbGrid);
var
  i: integer;
  vColumn: TColumn;
begin
  cmbField.Clear;

  if AGrid.Columns.Count <> 0 then
    begin
    // инициализируем поля поиска
    for i := 0 to AGrid.Columns.Count - 1 do
      begin
      vColumn := AGrid.Columns[i];
      if not vColumn.Visible then
        Continue;
      if vColumn.Title.Caption = '' then
        Continue;

      cmbField.Items.AddObject(vColumn.Title.Caption, TObject(vColumn.FieldName));
      end;
    // устанавливаем первую возможную колонку поиска
    for i := 0 to AGrid.Columns.Count - 1 do
      begin
      vColumn := AGrid.Columns[i];
      if not vColumn.Visible then
        Continue;
      if vColumn.Title.Caption = '' then
        Continue;

      SearchField := vColumn.FieldName;
      break;
      end;
    end;
end;

procedure TfmSearch.edSearchTextKeyPress(Sender: TObject; var Key: Char);
begin
(*
  if Key = #13 then
  begin
    spbStartSearch.Click;
    edSearchText.SelectAll;
  end;
*)
end;

end.
