unit frm200_GKORatesItemListForm;

interface

uses
  frm04_TabListItemForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm200_GKORatesItemList = class(Tfrm04_TabListItem)
    odsListT080_TRADEDATE: TDateTimeField;
    odsListT080_LOAD_DATE: TDateTimeField;
    odsListT080_CLOSE: TFloatField;
  private
    { Private declarations }
  public
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  end;

var
  frm200_GKORatesItemList: Tfrm200_GKORatesItemList;

implementation

{$R *.DFM}

class function Tfrm200_GKORatesItemList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm200_GKORatesItemList;
end;

class function Tfrm200_GKORatesItemList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm200_GKORatesItemList;
end;

class procedure Tfrm200_GKORatesItemList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm200_GKORatesItemList) := AForm;
end;

end.
