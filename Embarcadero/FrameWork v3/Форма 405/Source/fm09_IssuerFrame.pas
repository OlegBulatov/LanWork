unit fm09_IssuerFrame;

interface

uses
  fm07_SelectParentFrame, Db, StdCtrls, Mask, DBCtrls, OracleData,
  Controls, Classes, Buttons, frm04_ListForm;

type
  Tfm09_Issuer = class(Tfm07_SelectParent)
    Label1: TLabel;
    Label2: TLabel;
    ed01: TDBEdit;
    ed02: TDBEdit;
    odsSelectT028_ID: TFloatField;
    odsSelectT025_SHOT_NAME: TStringField;
    odsSelectT028_CODE: TStringField;
    odsSelectT028_SHOT_NAME_CODE: TStringField;
    procedure odsSelectBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    function GetClass: Tfrm04_ListClass; override;
  public
    { Public declarations }
  end;

var
  fm09_Issuer: Tfm09_Issuer;

implementation

uses
  frm32_IssuerSelectForm;

{$R *.DFM}

function Tfm09_Issuer.GetClass: Tfrm04_ListClass;
begin
  Result := Tfrm32_IssuerSelect;
end;

procedure Tfm09_Issuer.odsSelectBeforeOpen(DataSet: TDataSet);
begin
  odsSelect.SetVariable('T028_ID', lcbSelect.DataSource.DataSet.FieldByName(lcbSelect.KeyField).AsFloat);
end;

end.
