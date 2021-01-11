unit frm57_664OperListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm57_664OperList = class(Tfrm04_List)
    odsListT089_ID: TFloatField;
    odsListT089_CODE: TStringField;
    odsListT089_NAME: TStringField;
    odsListT089_NAME_FULL: TStringField;
    odsListT089_GROUP_NAME: TStringField;
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
  end;

var
  frm57_664OperList: Tfrm57_664OperList;

implementation

{$R *.DFM}

{ Tfrm57_664OperList }

class function Tfrm57_664OperList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm57_664OperList;
end;

class function Tfrm57_664OperList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm57_664OperList;
end;

class procedure Tfrm57_664OperList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm57_664OperList) := AForm;
end;

end.
