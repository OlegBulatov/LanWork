unit fm12_CurrencyFrame;

interface

uses
  fm07_SelectParentFrame, Db, OracleData, Controls, DBCtrls, Classes,
  Buttons, frm04_ListForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm12_Currency = class(Tfm07_SelectParent)
    odsSelectISO_ID: TStringField;
    odsSelectCURR_DESC: TStringField;
  private
  protected
    function GetClass: Tfrm04_ListClass; override;
  public
  end;

var
  fm12_Currency: Tfm12_Currency;

implementation

uses frm69_CurrencyListForm;

{$R *.DFM}

function Tfm12_Currency.GetClass: Tfrm04_ListClass;
begin
  Result := Tfrm69_CurrencyList;
end;

end.
