unit fm06_RegnFrame;

interface

uses
  fm07_SelectParentFrame, Db, OracleData, Controls, DBCtrls, Classes,
  Buttons, frm04_ListForm;

type
  Tfm06_Regn = class(Tfm07_SelectParent)
    odsSelectT026_ID: TFloatField;
    odsSelectT026_SEC_REGN: TStringField;
    procedure odsSelectBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    function GetClass: Tfrm04_ListClass; override;
  public
    { Public declarations }
  end;

implementation

uses
  frm35_SecRegnListForm;

{$R *.DFM}

function Tfm06_Regn.GetClass: Tfrm04_ListClass;
begin
  Result := Tfrm35_SecRegnList;
end;

procedure Tfm06_Regn.odsSelectBeforeOpen(DataSet: TDataSet);
begin
  odsSelect.SetVariable('T026_ID', lcbSelect.DataSource.DataSet.FieldByName(lcbSelect.KeyField).AsFloat);
end;

end.
