unit fm14_711CodeFrame;

interface

uses
  fm07_SelectParentFrame, Db, OracleData, Controls, DBCtrls, Classes,
  Buttons, frm04_ListForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm14_711Code = class(Tfm07_SelectParent)
    odsSelectT053_ID: TFloatField;
    odsSelectT053_NAME: TStringField;
  private
    { Private declarations }
  protected
    function GetClass: Tfrm04_ListClass; override;
  public
    { Public declarations }
  end;

var
  fm14_711Code: Tfm14_711Code;

implementation

uses frm73_711CodeListForm;

{$R *.DFM}

function Tfm14_711Code.GetClass: Tfrm04_ListClass;
begin
  Result := Tfrm73_711CodeList;
end;

end.
