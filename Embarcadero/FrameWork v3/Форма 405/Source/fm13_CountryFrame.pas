unit fm13_CountryFrame;

interface

uses
  fm07_SelectParentFrame, Db, OracleData, Controls, DBCtrls, Classes,
  Buttons, frm04_ListForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm13_Country = class(Tfm07_SelectParent)
    odsSelectSN015_ISO_DIG: TFloatField;
    odsSelectSN015_FULL_RUS_NAME: TStringField;
    odsSelectSN015_SHORT_RUS_NAME: TStringField;
    odsSelectCOUNTRY_DESC: TStringField;
  private
    { Private declarations }
  protected
    function GetClass: Tfrm04_ListClass; override;
  public
    { Public declarations }
  end;

var
  fm13_Country: Tfm13_Country;

implementation

uses frm53_CountryListForm;

{$R *.DFM}

function Tfm13_Country.GetClass: Tfrm04_ListClass;
begin
  Result := Tfrm53_CountryList;
end;

end.
