unit frm83_RemainsHisListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm83_RemainsHisList = class(Tfrm04_List)
    odsListT055_LONG_NAME: TStringField;
    odsListDESCR: TStringField;
    odsListT055_END_DATE: TDateTimeField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
    //
    class function Instance: Tfrm83_RemainsHisList;
  end;

var
  frm83_RemainsHisList: Tfrm83_RemainsHisList;

implementation

uses
  frm82_RemainsPeriodListForm, frm83_RemainsListForm, frm80_CalcRemainsForm;
// , frm82_RemainsPeriodListForm;

{$R *.DFM}

{ Tfrm83_RemainsHisList }

class function Tfrm83_RemainsHisList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_RemainsHisList;
end;

class function Tfrm83_RemainsHisList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_RemainsHisList;
end;

class function Tfrm83_RemainsHisList.Instance: Tfrm83_RemainsHisList;
begin
  Result := Tfrm83_RemainsHisList(inherited Instance);
end;

class procedure Tfrm83_RemainsHisList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm83_RemainsHisList) := AForm;
end;

procedure Tfrm83_RemainsHisList.FormShow(Sender: TObject);
begin
  // смотрим данные
  OkBtn.Visible := true;
  odsList.Close;
  odsList.SetVariable('T094_ID', frm82_RemainsPeriodList.odsListT094_ID.AsFloat);
  odsList.SetVariable('T030_ID', frm83_RemainsList.odsListT030_ID.AsFloat);
  odsList.SetVariable('T027_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);
  odsList.Open;

end;

end.
