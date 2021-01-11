unit frm69_CurrencyListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfrm69_CurrencyList = class(Tfrm04_List)
    odsListISO_ID: TStringField;
    odsListNAME_RUSH: TStringField;
    odsListISO_LAT3: TStringField;
    odsListCURR_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function GetIDFieldName: string; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  end;

var
  frm69_CurrencyList: Tfrm69_CurrencyList;

implementation

{$R *.DFM}

class function Tfrm69_CurrencyList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm69_CurrencyList;
end;

class function Tfrm69_CurrencyList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm69_CurrencyList;
end;

class procedure Tfrm69_CurrencyList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm69_CurrencyList) := AForm;
end;

function Tfrm69_CurrencyList.GetIDFieldName: string;
begin
  Result := 'ISO_ID';
end;

end.
