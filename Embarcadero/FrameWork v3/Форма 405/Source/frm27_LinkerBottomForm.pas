unit frm27_LinkerBottomForm;

interface

uses
  frm04_ListForm, Oracle, Db, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm27_LinkerForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm27_LinkerBottom = class(Tfrm04_List)
  private
    FLinker: Tfrm27_Linker;
  protected
  public
    property Linker: Tfrm27_Linker read FLinker write FLinker;
    //
    class function Instance: Tfrm27_LinkerBottom;
  end;

var
  frm27_LinkerBottom: Tfrm27_LinkerBottom;

implementation

{$R *.DFM}

{ Tfrm27_LinkerBottom }

class function Tfrm27_LinkerBottom.Instance: Tfrm27_LinkerBottom;
begin
  Result := Tfrm27_LinkerBottom(inherited Instance);
end;

end.
