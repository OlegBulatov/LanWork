unit frm28_RezidSelectForm;

interface

uses
  frm24_RezidListForm, Oracle, Db, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , Oracle, Db, OracleData, Menus, ActnList, StdCtrls,
//  ExtCtrls, fmSeach, ComCtrls, Grids, DBGrids, xxxDBGrid, ToolWin,
// fm31_FilterFrame, frm28_RezidBottomForm;

type
  Tfrm28_RezidSelect = class(Tfrm24_RezidList)
  private
    { Private declarations }
  protected
    function GetIDFieldName: string; override;
  public
//    procedure RefreshAfterListChange; override;
  end;

var
  frm28_RezidSelect: Tfrm28_RezidSelect;

implementation

{$R *.DFM}

//procedure Tfrm28_RezidSelect.RefreshAfterListChange;
//begin
//  RefreshData('', Unassigned);
//end;

function Tfrm28_RezidSelect.GetIDFieldName: string;
begin
  Result := 'T012_ID';
end;

end.
