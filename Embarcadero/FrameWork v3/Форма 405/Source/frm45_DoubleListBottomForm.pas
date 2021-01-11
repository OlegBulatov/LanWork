unit frm45_DoubleListBottomForm;

interface

uses
  frm04_ListForm, Oracle, Db, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm45_DoubleListForm, System.Actions;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm45_DoubleListBottom = class(Tfrm04_List)
  private
    FLinker: Tfrm45_DoubleList;
  protected
  public
    property Linker: Tfrm45_DoubleList read FLinker write FLinker;
    //
    class function Instance: Tfrm45_DoubleListBottom;
  end;

var
  frm45_DoubleListBottom: Tfrm45_DoubleListBottom;

implementation

{$R *.DFM}

{ Tfrm45_DoubleListBottom }

class function Tfrm45_DoubleListBottom.Instance: Tfrm45_DoubleListBottom;
begin
  Result := Tfrm45_DoubleListBottom(inherited Instance);
end;

end.
