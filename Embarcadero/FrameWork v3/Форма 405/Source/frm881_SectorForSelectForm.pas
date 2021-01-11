unit frm881_SectorForSelectForm;

interface

uses
  frm881_SectorsListForm, frm00_ParentForm, Oracle, Db, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , Oracle, Db, OracleData, Menus, ActnList,
//  StdCtrls, ComCtrls, fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid,
//  ToolWin, ExtCtrls, ;

type
  Tfrm881_SectorForSelect = class(Tfrm881_SectorsList)
  private
    { Private declarations }
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function GetIDFieldName: string; override;
  public
    { Public declarations }
  end;

var
  frm881_SectorForSelect: Tfrm881_SectorForSelect;

implementation

{$R *.DFM}

class function Tfrm881_SectorForSelect.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm881_SectorForSelect;
end;

class function Tfrm881_SectorForSelect.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm881_SectorForSelect;
end;

class procedure Tfrm881_SectorForSelect.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm881_SectorForSelect) := AForm;
end;

function Tfrm881_SectorForSelect.GetIDFieldName: string;
begin
  Result := 'T140_ID';
end;

end.
