unit frm881_IndustryBySectorListForm;

interface

uses
  frm04_TabListItemForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Controls, Dialogs,

type
  Tfrm881_IndustryBySectorList = class(Tfrm04_TabListItem)
    odsListCODE: TStringField;
    odsListINDUSTRY: TStringField;
  private
    { Private declarations }
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  frm881_IndustryBySectorList: Tfrm881_IndustryBySectorList;

implementation

{$R *.DFM}

class function Tfrm881_IndustryBySectorList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm881_IndustryBySectorList;
end;

class function Tfrm881_IndustryBySectorList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm881_IndustryBySectorList;
end;

class procedure Tfrm881_IndustryBySectorList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm881_IndustryBySectorList) := AForm;
end;

end.
