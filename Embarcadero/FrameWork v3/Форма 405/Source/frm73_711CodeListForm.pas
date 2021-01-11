unit frm73_711CodeListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm73_711CodeList = class(Tfrm04_List)
    odsListT053_ID: TFloatField;
    odsListT053_NAME: TStringField;
    odsListT053_DESCR: TStringField;
  private
    { Private declarations }
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function GetIDFieldName: string; override;
  public
    { Public declarations }
  end;

var
  frm73_711CodeList: Tfrm73_711CodeList;

implementation

{$R *.DFM}

class function Tfrm73_711CodeList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm73_711CodeList;
end;

class function Tfrm73_711CodeList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm73_711CodeList;
end;

class procedure Tfrm73_711CodeList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm73_711CodeList) := AForm;
end;

function Tfrm73_711CodeList.GetIDFieldName: string;
begin
  Result := 'T053_ID';
end;

end.
