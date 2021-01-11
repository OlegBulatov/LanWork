unit frm32_IssuerSelectForm;

interface

uses
  frm32_IssuerListForm, Oracle, Db, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , Oracle, Db, OracleData, Menus, ActnList, StdCtrls,
//  ExtCtrls, fmSeach, ComCtrls, Grids, DBGrids, xxxDBGrid, ToolWin,
//  fm31_FilterFrame;

type
  Tfrm32_IssuerSelect = class(Tfrm32_IssuerList)
  private
    { Private declarations }
  protected
    //
    function GetIDFieldName: string; override;
  public
    { Public declarations }
  end;

var
  frm32_IssuerSelect: Tfrm32_IssuerSelect;

implementation

{$R *.DFM}

function Tfrm32_IssuerSelect.GetIDFieldName: string;
begin
  Result := 'T028_ID';
end;

end.
