unit frm53_CountryListForm;

interface

uses
  Db, frm04_TabListForm, frm04_TabListItemForm, frm00_ParentForm, Oracle,
  OracleData, Menus, Classes, ActnList, StdCtrls, ComCtrls,
  fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
  Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  frm04_ListForm, Oracle, OracleData, Menus, ActnList, fmSeach,
//  ComCtrls, Grids, DBGrids, xxxDBGrid, ToolWin, , StdCtrls,
//  ExtCtrls, , , fm31_FilterFrame;

type
  Tfrm53_CountryList = class(Tfrm04_TabList)
    odsListSN015_ISO_DIG: TFloatField;
    odsListSN015_FULL_RUS_NAME: TStringField;
    odsListSN015_SHORT_RUS_NAME: TStringField;
    procedure odsListAfterScroll(DataSet: TDataSet);
  private
  protected
    //
    function GetListItem: Tfrm04_TabListItem; override;
    //
    function GetIDFieldName: string; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
  end;

var
  frm53_CountryList: Tfrm53_CountryList;

implementation

uses
  SysUtils, frm68_CountryStateListForm;

{$R *.DFM}

{ Tfrm53_CountryList }

function Tfrm53_CountryList.GetListItem: Tfrm04_TabListItem;
begin
  Result := Tfrm68_CountryStateList.Instance;
end;

class function Tfrm53_CountryList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm53_CountryList;
end;

class function Tfrm53_CountryList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm53_CountryList;
end;

class procedure Tfrm53_CountryList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm53_CountryList) := AForm;
end;

procedure Tfrm53_CountryList.odsListAfterScroll(DataSet: TDataSet);
const 
  CAPTION =
    'ѕроставьте галочки напротив кварталов, в которых страна ''%s'' имела негативную репутацию';
begin
  ts01.Caption := Format(CAPTION, [odsListSN015_SHORT_RUS_NAME.AsString]);
end;

function Tfrm53_CountryList.GetIDFieldName: string;
begin
  Result := 'SN015_ISO_DIG';
end;

end.
