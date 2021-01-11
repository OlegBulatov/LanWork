unit frm20_EmitListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  , frm04_EditForm,

type
  Tfrm20_EmitList = class(Tfrm04_List)
    odsListNAMEL: TStringField;
    odsListNAMESH: TStringField;
    odsListINN: TStringField;
    odsListISSUER_CO_ID: TFloatField;
    odsListISSUER_TYPE_NAME: TStringField;
    odsListCOUNTRY_NAME: TStringField;
  private
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  frm20_EmitList: Tfrm20_EmitList;

implementation

{$R *.DFM}

{ Tfrm20_EmitList }

class function Tfrm20_EmitList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm20_EmitList;
end;

class function Tfrm20_EmitList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm20_EmitList;
end;

class procedure Tfrm20_EmitList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm20_EmitList) := AForm;
end;

end.
