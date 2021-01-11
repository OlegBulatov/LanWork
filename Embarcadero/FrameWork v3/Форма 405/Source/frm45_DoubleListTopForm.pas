unit frm45_DoubleListTopForm;

interface

uses
  frm04_ListForm, Oracle, Db, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm45_DoubleListForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm45_DoubleListTop = class(Tfrm04_List)
  private
    FLinker: Tfrm45_DoubleList;
  protected
  public
    property Linker: Tfrm45_DoubleList read FLinker write FLinker;
    class function Instance: Tfrm45_DoubleListTop;
  end;

var
  frm45_DoubleListTop: Tfrm45_DoubleListTop;

implementation

{$R *.DFM}

{ Tfrm27_LinkerTop }

class function Tfrm45_DoubleListTop.Instance: Tfrm45_DoubleListTop;
begin
  Result := Tfrm45_DoubleListTop(inherited Instance);
end;

end.
