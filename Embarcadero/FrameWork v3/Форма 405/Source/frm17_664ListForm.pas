unit frm17_664ListForm;

interface

uses
  frm14_DBFParentListForm, Db, frm00_ParentForm, Dialogs, Oracle,
  OracleData, Menus, Classes, ActnList, StdCtrls, ComCtrls,
  fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
  Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
//  , Oracle, Db, OracleData, Menus, ActnList,
//  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, fmSeach, ComCtrls, Grids,
//  DBGrids, xxxDBGrid, ToolWin, , fm31_FilterFrame;

type
  Tfrm17_664List = class(Tfrm14_DBFParentList)
    odsListT090_BANC_KODE: TStringField;
    odsListT090_ID: TFloatField;
    odsListT090_MONTH_DATE: TDateTimeField;
    odsListT055_LONG_NAME: TStringField;
    odsListBANK_NAME: TStringField;
  private
  protected
    procedure InitFileCode; override;
    procedure DeleteAll; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  frm17_664List: Tfrm17_664List;

implementation

uses
  frm14_LoadConstUnt, untMessages;

{$R *.DFM}

{ Tfrm17_664List }

class function Tfrm17_664List.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm17_664List;
end;

class function Tfrm17_664List.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm17_664List;
end;

procedure Tfrm17_664List.InitFileCode;
begin
  FileCode := ft664;
end;

class procedure Tfrm17_664List.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm17_664List) := AForm;
end;

procedure Tfrm17_664List.DeleteAll;
begin
  PkDBF.CallProcedure('p_664_del_all', []);
  TAppMessages.ShowInformation('Все записи удалены.');
end;

end.
