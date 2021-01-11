unit frm83_RemainsBreakForm;

interface

uses
  frm04_TabListItemForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  frm04_ListForm,

type
  Tfrm83_RemainsBreak = class(Tfrm04_TabListItem)
    odsListBANK_NAME: TStringField;
    odsListT030_ID: TFloatField;
    odsListKL_S_UFN_REMAIN: TFloatField;
    odsListKL_L_N_REMAIN: TFloatField;
    odsListNREZID_REMAIN: TFloatField;
    odsListKL_S_UFR_REMAIN: TFloatField;
    odsListKL_L_R_REMAIN: TFloatField;
    odsListKL_DU_REMAIN: TFloatField;
    odsListKO_S_REMAIN: TFloatField;
    odsListKO_DU_REMAIN: TFloatField;
    oqFlag: TOracleQuery;
    ToolButton7: TToolButton;
    odsListKL_ZG_N_REMAIN: TFloatField;
    odsListREZID_REMAIN: TFloatField;
  private
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
  end;

var
  frm83_RemainsBreak: Tfrm83_RemainsBreak;

implementation

//uses frm83_RemainsListForm, frm80_CalcRemainsForm, dm005_MainData, A00_MatrixConst, Matrix, untMessages;

{$R *.DFM}

class function Tfrm83_RemainsBreak.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_RemainsBreak;
end;

class function Tfrm83_RemainsBreak.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_RemainsBreak;
end;

class procedure Tfrm83_RemainsBreak.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm83_RemainsBreak) := AForm;
end;

end.
