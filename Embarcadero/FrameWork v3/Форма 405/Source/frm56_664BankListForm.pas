unit frm56_664BankListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm56_664BankList = class(Tfrm04_List)
    odsListT088_ID: TFloatField;
    odsListT088_NAME: TStringField;
    odsListT088_DESCR: TStringField;
    odsListT088_TYPE: TStringField;
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
  frm56_664BankList: Tfrm56_664BankList;

implementation

{$R *.DFM}

{ Tfrm56_664BankList }

class function Tfrm56_664BankList.GetSelfClass: Tfrm00_Parents;
begin
  Result :=  Tfrm56_664BankList;
end;

class function Tfrm56_664BankList.GetSelfForm: Tfrm00_Parent;
begin
  Result :=  frm56_664BankList;
end;

class procedure Tfrm56_664BankList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm56_664BankList):= AForm;
end;

end.
 