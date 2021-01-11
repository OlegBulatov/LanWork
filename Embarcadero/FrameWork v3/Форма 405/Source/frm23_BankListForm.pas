unit frm23_BankListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  , frm04_EditForm,

type
  Tfrm23_BankList = class(Tfrm04_List)
    odsListREGN: TStringField;
    odsListNAME: TStringField;
    odsListNAME_P: TStringField;
    odsListADR: TStringField;
    odsListNEWNUM: TStringField;
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  frm23_BankList: Tfrm23_BankList;

implementation

{$R *.DFM}

{ Tfrm23_BankList }

class function Tfrm23_BankList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm23_BankList;
end;

class function Tfrm23_BankList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm23_BankList;
end;

class procedure Tfrm23_BankList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm23_BankList) := AForm;
end;


end.
