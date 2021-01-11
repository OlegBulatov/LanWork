unit frm27_LinkerTopForm;

interface

uses
  frm04_ListForm, Oracle, Db, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm27_LinkerForm;
//  Windows, Messages, SysUtils, Graphics, Controls, Dialogs,

type
  Tfrm27_LinkerTop = class(Tfrm04_List)
  private
    FLinker: Tfrm27_Linker;
  protected
  public
    property Linker: Tfrm27_Linker read FLinker write FLinker;
    class function Instance: Tfrm27_LinkerTop;
  end;

var
  frm27_LinkerTop: Tfrm27_LinkerTop;

implementation

{$R *.DFM}

{ Tfrm27_LinkerTop }

class function Tfrm27_LinkerTop.Instance: Tfrm27_LinkerTop;
begin
  Result := Tfrm27_LinkerTop(inherited Instance);
end;

end.
