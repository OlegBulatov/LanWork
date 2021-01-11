unit frm88_IndustryListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Controls, Dialogs,

type
  Tfrm88_IndustryList = class(Tfrm04_List)
    odsListCODE: TStringField;
    odsListINDUSTRY: TStringField;
    odsListT112_GROUP_NAME: TStringField;
    odsListT112_GROUP_LETTER: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    //
    function GetIDFieldName: string; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  end;

var
  frm88_IndustryList: Tfrm88_IndustryList;

implementation

{$R *.DFM}

class function Tfrm88_IndustryList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm88_IndustryList;
end;

class function Tfrm88_IndustryList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm88_IndustryList;
end;

class procedure Tfrm88_IndustryList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm88_IndustryList) := AForm;
end;

function Tfrm88_IndustryList.GetIDFieldName: string;
begin
  Result := 'CODE';
end;

end.
