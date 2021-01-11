unit fm08_SecTypeFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm07_SelectParentFrame, Db, OracleData, DBCtrls, Buttons, frm04_ListForm;

type
  Tfm08_SecType = class(Tfm07_SelectParent)
    odsSelectT027_ID: TFloatField;
    odsSelectT027_SEC_TYPE: TStringField;
  private
    { Private declarations }
  protected
    function GetClass: Tfrm04_ListClass; override;
  public
    { Public declarations }
  end;

var
  fm08_SecType: Tfm08_SecType;

implementation

uses frm29_SecTypeListForm;

{$R *.DFM}

function Tfm08_SecType.GetClass: Tfrm04_ListClass;
begin
  Result := Tfrm29_SecTypeList;
end;

end.
