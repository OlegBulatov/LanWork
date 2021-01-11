unit fm05_EmissionFrame;

interface

uses
  fm07_SelectParentFrame, Db, StdCtrls, Mask, DBCtrls, OracleData,
  Controls, Classes, Buttons, frm04_ListForm, frm30_EmissionListForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TSearchBy = (tsbSecRegn, tsbIsin);

  Tfm05_Emission = class(Tfm07_SelectParent)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ed01: TDBEdit;
    ed02: TDBEdit;
    ed03: TDBEdit;
    odsSelectT030_ID: TFloatField;
    odsSelectT026_ID: TFloatField;
    odsSelectT026_SEC_REGN: TStringField;
    odsSelectT027_ID: TFloatField;
    odsSelectT027_SEC_TYPE: TStringField;
    odsSelectT028_ID: TFloatField;
    odsSelectT028_SHOT_NAME: TStringField;
    odsSelectT028_CODE: TStringField;
    odsSelectT025_SHOT_NAME: TStringField;
    odsSelectT010_ID: TFloatField;
    odsSelectT010_ISIN_TRANSL: TStringField;
    odsSelectEMIS_NAME: TStringField;
    odsSelectEMIS_NAME_ISIN: TStringField;
    procedure odsSelectBeforeOpen(DataSet: TDataSet);
    procedure btnSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    FSearchBy: TSearchBy;
    FSecTypes: TSecTypesFilter;
    { Public declarations }
    function GetClass: Tfrm04_ListClass; override;
  end;

implementation

uses frm30_EmissionSelectForm;

{$R *.DFM}

function Tfm05_Emission.GetClass: Tfrm04_ListClass;
begin
  Result := Tfrm30_EmissionSelect;
end;

procedure Tfm05_Emission.odsSelectBeforeOpen(DataSet: TDataSet);
begin
  odsSelect.SetVariable('T030_ID', lcbSelect.DataSource.DataSet.FieldByName(lcbSelect.KeyField).AsFloat);
end;

procedure Tfm05_Emission.btnSelectClick(Sender: TObject);
begin
  if not Assigned(Form) then
    begin
    Form := GetClass.Create(Self);
    Form.Caption := 'Выберите значение';
    end;

  Tfrm30_EmissionSelect(Form).SecTypesFilter := FSecTypes;

  if FSearchBy = tsbSecRegn then
    Tfrm30_EmissionSelect(Form).FilterBySecRegn(odsSelectT026_SEC_REGN.AsString)
  else if FSearchBy = tsbIsin then
    Tfrm30_EmissionSelect(Form).FilterByIsin(odsSelectT010_ISIN_TRANSL.AsString);

  Tfrm30_EmissionSelect(Form).FirstSelectedID := ID;
  Form.actRefreshExecute(Self);
  Form.SelectedID := ID;
  Form.Selected := True;
  Form.OnSelect := Self.DoSelect;
  Form.ShowModal;
end;

end.
