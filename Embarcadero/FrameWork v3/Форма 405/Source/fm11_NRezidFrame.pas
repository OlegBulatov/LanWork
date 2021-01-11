unit fm11_NRezidFrame;

interface

uses
  fm07_SelectParentFrame, Db, StdCtrls, Mask, DBCtrls, OracleData,
  Controls, Classes, Buttons, frm04_ListForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm11_NRezid = class(Tfm07_SelectParent)
    Label1: TLabel;
    ed01: TDBEdit;
    Label2: TLabel;
    ed02: TDBEdit;
    odsSelectT013_ID: TFloatField;
    odsSelectT013_NAME: TStringField;
    odsSelectT013_CODE: TFloatField;
    odsSelectT034_ID: TFloatField;
    odsSelectT034_NAME: TStringField;
    odsSelectCOUNTRY_NAME: TStringField;
    procedure odsSelectBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    function GetClass: Tfrm04_ListClass; override;
  public
    { Public declarations }
  end;

var
  fm11_NRezid: Tfm11_NRezid;

implementation

uses frm49_NRezidSelectForm;

{$R *.DFM}

function Tfm11_NRezid.GetClass: Tfrm04_ListClass;
begin
  Result := Tfrm49_NRezidSelect;
end;

procedure Tfm11_NRezid.odsSelectBeforeOpen(DataSet: TDataSet);
begin
  odsSelect.SetVariable('T013_ID', lcbSelect.DataSource.DataSet.FieldByName(lcbSelect.KeyField).AsFloat);
end;

end.
