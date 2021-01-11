unit frm79_711CodeListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  frm04_EditForm,

type
  Tfrm79_711CodeList = class(Tfrm04_List)
    odsListT053_ID: TFloatField;
    odsListT053_NAME: TStringField;
    odsListT053_TYPE: TFloatField;
    odsListTYPE_DESC: TStringField;
    odsListT054_ID: TFloatField;
    odsListT054_NAME: TStringField;
    odsListT053_DESCR: TStringField;
    //FIELD_LIST%
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
  end;

var
  frm79_711CodeList: Tfrm79_711CodeList;

implementation

{$R *.DFM}

{ Tfrm79_711CodeList }

class function Tfrm79_711CodeList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm79_711CodeList;
end;

class function Tfrm79_711CodeList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm79_711CodeList;
end;

class procedure Tfrm79_711CodeList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm79_711CodeList) := AForm;
end;

end.


 
 
