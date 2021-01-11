unit frm04_TabListItemForm;

interface

uses
  frm04_ListForm, Oracle, Db, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, System.Actions;

type
  Tfrm04_TabListItem = class(Tfrm04_List)
  private
    function GetMaster: TOracleDataSet;
    procedure SetMaster(const Value: TOracleDataSet);
    function GetMasterFields: string;
    procedure SetMasterFields(const Value: string);
  public
    property MasterFields: string read GetMasterFields write SetMasterFields;
    property Master: TOracleDataSet read GetMaster write SetMaster;
    //
    class function Instance: Tfrm04_TabListItem;    
  end;

  Tfrm04_TabListItems = class of Tfrm04_TabListItem;

var
  frm04_TabListItem: Tfrm04_TabListItem;

implementation

{$R *.DFM}

{ Tfrm04_TabListItem }

function Tfrm04_TabListItem.GetMaster: TOracleDataSet;
begin
  Result := odsList.Master;
end;

function Tfrm04_TabListItem.GetMasterFields: string;
begin
  Result := odsList.MasterFields;
end;

class function Tfrm04_TabListItem.Instance: Tfrm04_TabListItem;
begin
  Result := Tfrm04_TabListItem(inherited Instance);
end;

procedure Tfrm04_TabListItem.SetMaster(const Value: TOracleDataSet);
begin
  odsList.Master := Value;
end;

procedure Tfrm04_TabListItem.SetMasterFields(const Value: string);
begin
  odsList.MasterFields := Value;
end;

end.
