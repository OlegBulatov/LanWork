unit L02_FilterF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm001_Composite, StdCtrls, db, dbgrids;

type
  TSearchType = (
    stUp,            // поиск с первой записи
    stDown              // найти далее
    );

  TfmFilter = class(TfmComposite)
    edSearchText: TEdit;
    Label2: TLabel;
    cmbField: TComboBox;
    chbAll: TCheckBox;
    CheckBox1: TCheckBox;
    lbCaption: TLabel;
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
    procedure RegisterColumn(const AColumn: TColumn);
    //
    property SearchField: string read GetSearchField write SetSearchField;
    property SearchText: string read GetSearchText;
    property SearchType: TSearchType read GetSearchType;
    property Options: TLocateOptions read GetOptions;
  end;

var
  fmFilter: TfmFilter;

implementation

{$R *.DFM}

{ TfmSearch }

function TfmFilter.GetOptions: TLocateOptions;
begin
  Result := [];
  (*
  if not chbRegister.Checked then
  begin
    Result := Result +  [loCaseInsensitive];
  end;
  *)
  if not chbAll.Checked then
  begin
    Result := Result +  [loPartialKey];
  end;
end;

function TfmFilter.GetSearchText: string;
begin
  Result := edSearchText.Text;
end;

function TfmFilter.GetSearchType: TSearchType;
begin
    Result := stDown;
(*
  if cmbSType.ItemIndex = 0 then
  begin
    Result := stDown;
  end else
  begin
    Result := stUp;
  end;
*)
end;

procedure TfmFilter.InitFrame(Sender: TObject);
begin
//  cmbSType.ItemIndex := 0;
end;

function TfmFilter.GetSearchField: string;
begin
  Result := TColumn(cmbField.Items.Objects[cmbField.ItemIndex]).FieldName;
end;

(*
procedure TfmSearch.RegisterField(const AField: TField);
begin
  cmbField.Items.AddObject(AField.DisplayName, TObject(TField));
end;
*)

procedure TfmFilter.SetSearchField(const Value: string);
var
  I: Integer;
begin
  for I := 0 to cmbField.Items.Count - 1 do
  begin
    if TColumn(cmbField.Items.Objects[I]).FieldName = Value then
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

procedure TfmFilter.cmbFieldChange(Sender: TObject);
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

procedure TfmFilter.RegisterColumn(const AColumn: TColumn);
begin
  cmbField.Items.AddObject(AColumn.Title.Caption, TObject(AColumn));
end;

procedure TfmFilter.edSearchTextKeyPress(Sender: TObject; var Key: Char);
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
