unit fm43_SectorsFrame;

interface

uses
  fm07_SelectParentFrame, Db, OracleData, Controls, DBCtrls, Classes,
  Buttons, frm04_ListForm;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm43_Sectors = class(Tfm07_SelectParent)
    odsSelectT140_ID: TIntegerField;
    odsSelectSECTOR_NAME: TStringField;
  private
    { Private declarations }
  protected
    function GetClass: Tfrm04_ListClass; override;
  public
    { Public declarations }
  end;

var
  fm43_Sectors: Tfm43_Sectors;

implementation

uses frm881_SectorForSelectForm;

{$R *.DFM}

function Tfm43_Sectors.GetClass: Tfrm04_ListClass;
begin
  Result := Tfrm881_SectorForSelect;
end;

end.
