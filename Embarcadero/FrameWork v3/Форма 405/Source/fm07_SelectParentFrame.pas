unit fm07_SelectParentFrame;

interface

uses
  Forms, Db, OracleData, Controls, DBCtrls, Classes, Buttons, frm04_ListForm, Variants;

type
  Tfm07_SelectParent = class(TFrame)
    btnSelect: TSpeedButton;
    lcbSelect: TDBLookupComboBox;
    odsSelect: TOracleDataSet;
    dsSelect: TDataSource;
    procedure btnSelectClick(Sender: TObject);
    procedure odsSelectAfterScroll(DataSet: TDataSet);
  private
    function GetID: Variant;
    procedure SetID(const Value: Variant);
  protected
    FForm: Tfrm04_List;
    //
    function GetClass: Tfrm04_ListClass; virtual;
    function DoSelect: Boolean; virtual;
  public
    property ID: Variant read GetID write SetID;
    property Form: Tfrm04_List read FForm write FForm;
  end;

implementation

{$R *.DFM}

function Tfm07_SelectParent.DoSelect: Boolean;
begin
  ID := FForm.SelectedID;
  Result := True;
end;

function Tfm07_SelectParent.GetClass: Tfrm04_ListClass;
begin
  Result := nil;
end;

function Tfm07_SelectParent.GetID: Variant;
begin
  if odsSelect.IsEmpty or (lcbSelect.Field.IsNull)then
  begin
    Result := Unassigned;
  end else
  begin
    Result := lcbSelect.KeyValue;
  end;
end;

procedure Tfm07_SelectParent.SetID(const Value: Variant);
begin
//  lcbSelect.KeyValue := Value;
//  lcbSelect.ListSource.DataSet.Locate(lcbSelect.KeyField, Value, []);

  lcbSelect.DataSource.DataSet.FieldByName(lcbSelect.DataField).AsVariant := Value;
  odsSelect.Close;
  odsSelect.Open;
end;

procedure Tfm07_SelectParent.btnSelectClick(Sender: TObject);
begin
  if not Assigned(FForm) then
    begin
    FForm := GetClass.Create(Self);
    FForm.Caption := 'Выберите значение';
    end;
  FForm.actRefreshExecute(Self);
  FForm.SelectedID := ID;
  FForm.Selected := True;
  FForm.OnSelect := Self.DoSelect;
  FForm.ShowModal;
end;

procedure Tfm07_SelectParent.odsSelectAfterScroll(DataSet: TDataSet);
begin
  lcbSelect.Hint :=
    lcbSelect.ListSource.DataSet.FieldByName(lcbSelect.ListField).AsString;
end;

end.
