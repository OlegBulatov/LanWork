unit frm84_BICListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm84_BICList = class(Tfrm04_List)
    odsListID: TFloatField;
    odsListCODE: TFloatField;
    odsListKOD_BANK: TStringField;
    odsListKOD_BRANCH: TStringField;
    odsListNAME_SWIFT: TStringField;
    odsListISO_DIG: TStringField;
    odsListISO_LAT2: TStringField;
    odsListISO_LAT3: TStringField;
    odsListNAME_GOS: TStringField;
    odsListSUBTYPE: TStringField;
    odsListKOD: TStringField;
    odsListCO_TYPE: TIntegerField;
    odsListCB_DATE: TDateTimeField;
    odsListCE_DATE: TDateTimeField;
    odsListCC_DATE: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  end;

var
  frm84_BICList: Tfrm84_BICList;

implementation

{$R *.DFM}

{ Tfrm80_BICList }

class function Tfrm84_BICList.GetSelfClass: Tfrm00_Parents;
begin
	Result := Tfrm84_BICList;
end;

class function Tfrm84_BICList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm84_BICList;
end;

class procedure Tfrm84_BICList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm84_BICList) := AForm;
end;

end.
