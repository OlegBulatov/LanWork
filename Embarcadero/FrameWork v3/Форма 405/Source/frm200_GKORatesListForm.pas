unit frm200_GKORatesListForm;

interface

uses
  frm04_TabListForm, Db, frm04_TabListItemForm, frm00_ParentForm, Oracle,
  OracleData, Menus, Classes, ActnList, StdCtrls, ComCtrls,
  fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
  Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
//  frm04_ListForm, Oracle, Db, OracleData, Menus, ActnList, StdCtrls,
//  ComCtrls, fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
//  ExtCtrls, , , frm14_ProgressForm,
//

type
  Tfrm200_GKORatesList = class(Tfrm04_TabList)
    odsListT081_SECURITYID: TStringField;
    odsListT026_SEC_REGN: TStringField;
    odsListT081_ID: TFloatField;
    odsListT010_ISIN_TRANSL: TStringField;
  private
  protected
    function GetListItem: Tfrm04_TabListItem; override;
  public
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  end;

var
  frm200_GKORatesList: Tfrm200_GKORatesList;

implementation

uses
  frm200_GKORatesItemListForm;
// frm14_LoadConstUnt,

{$R *.DFM}

function Tfrm200_GKORatesList.GetListItem: Tfrm04_TabListItem;
begin
  Result := Tfrm200_GKORatesItemList.Instance;
end;

class function Tfrm200_GKORatesList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm200_GKORatesList;
end;

class function Tfrm200_GKORatesList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm200_GKORatesList;
end;

class procedure Tfrm200_GKORatesList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm200_GKORatesList) := AForm;
end;

end.
