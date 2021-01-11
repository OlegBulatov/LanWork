unit fm10_RezidFrame;

interface

uses
  fm07_SelectParentFrame, Db, StdCtrls, Mask, DBCtrls, OracleData,
  Controls, Classes, Buttons, frm04_ListForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,
//

type
  Tfm10_Rezid = class(Tfm07_SelectParent)
    odsSelectT012_NAME: TStringField;
    odsSelectT012_CODE: TStringField;
    odsSelectT033_ID: TFloatField;
    odsSelectT033_NAME: TStringField;
    odsSelectT012_ID: TFloatField;
    ed01: TDBEdit;
    ed02: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure odsSelectBeforeOpen(DataSet: TDataSet);
    procedure btnSelectClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetClass: Tfrm04_ListClass; override;
  public
    { Public declarations }
  end;

var
  fm10_Rezid: Tfm10_Rezid;

implementation

uses frm28_RezidSelectForm;

{$R *.DFM}

function Tfm10_Rezid.GetClass: Tfrm04_ListClass;
begin
  Result := Tfrm28_RezidSelect;
end;

procedure Tfm10_Rezid.odsSelectBeforeOpen(DataSet: TDataSet);
begin
  odsSelect.SetVariable('T012_ID', lcbSelect.DataSource.DataSet.FieldByName(lcbSelect.DataField).AsFloat);
end;

procedure Tfm10_Rezid.btnSelectClick(Sender: TObject);
begin
  if not Assigned(FForm) then
  begin
    FForm := GetClass.Create(Self);
    FForm.Caption := 'Выберите значение';
  end;
  //   установить фильтр по ИНН
  FForm.fm31_Filter.SearchText := ed01.Text;
  FForm.fm31_Filter.KeyFieldName := 'T012_CODE';
  FForm.fm31_Filter.Enabled := True;
  FForm.fm31_Filter.Visible := True;

//  FForm.actRefreshExecute(Self);
  if ed01.Text <> '' then
    FForm.fm31_Filter.actSearchExecute(Self);

  FForm.SelectedID := ID;
  FForm.Selected := True;
  FForm.OnSelect := Self.DoSelect;
  FForm.ShowModal;
end;

end.
