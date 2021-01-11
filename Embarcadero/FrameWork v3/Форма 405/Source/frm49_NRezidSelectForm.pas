unit frm49_NRezidSelectForm;

interface

uses
  frm25_NRezidListForm, Oracle, Db, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , Oracle, Db, OracleData, Menus, ActnList,
//  StdCtrls, ExtCtrls, fmSeach, ComCtrls, Grids, DBGrids, xxxDBGrid, ToolWin,
  //fm31_FilterFrame, frm49_NRezidBottomForm;

type
  Tfrm49_NRezidSelect = class(Tfrm25_NRezidList)
  private
    { Private declarations }
  public
    { Public declarations }
    function GetIDFieldName: string; override;
//    procedure RefreshAfterListChange; override;
  end;

var
  frm49_NRezidSelect: Tfrm49_NRezidSelect;

implementation

{$R *.DFM}

function Tfrm49_NRezidSelect.GetIDFieldName: string;
begin
  Result := 'T013_ID';
end;
{
procedure Tfrm49_NRezidSelect.RefreshAfterListChange;
begin
  RefreshData('', Unassigned);
end;
}
end.
