unit frm22_CBListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  frm04_EditForm,

type
  Tfrm22_CBList = class(Tfrm04_List)
    odsListSECREGN: TStringField;
    odsListREGDATE: TDateTimeField;
    odsListISSUER: TStringField;
    odsListMATURITY: TDateTimeField;
    odsListSECTYPE_NAME: TStringField;
    odsListCCURRENCY: TFloatField;
    odsListCURRENCY_NAME: TStringField;
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
  frm22_CBList: Tfrm22_CBList;

implementation

{$R *.DFM}

{ Tfrm22_CBList }

class function Tfrm22_CBList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm22_CBList;
end;

class function Tfrm22_CBList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm22_CBList;
end;

class procedure Tfrm22_CBList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm22_CBList) := AForm;
end;


end.
