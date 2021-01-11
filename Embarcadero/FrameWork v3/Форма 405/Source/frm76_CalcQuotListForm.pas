unit frm76_CalcQuotListForm;

interface

uses
  frm04_TabListForm, Db, StdCtrls, ExtCtrls, DBCtrls, frm04_TabListItemForm,
  frm00_ParentForm, Oracle, OracleData, Menus, Classes, ActnList, ComCtrls,
  fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
  Controls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
// frm04_ListForm, Oracle, Db, OracleData, Menus, ActnList, Grids, DBGrids,
//  xxxDBGrid, ComCtrls, ToolWin, , frm04_EditForm, fmSeach,
//  ,
//  fm31_FilterFrame, ;

type
  Tfrm76_CalcQuotList = class(Tfrm04_TabList)
    odsListT030_ID: TFloatField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT081_SECURITYID: TStringField;
    odsListT086_FILE_NAME: TStringField;
    odsListT092_DATE: TDateTimeField;
    odsListT031_CURRENCY_NAME: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    odsListT031_NOMINAL: TFloatField;
    odsListT010_ISIN_TRANSL: TStringField;
  private
  protected
    //
    function GetListItem: Tfrm04_TabListItem; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  frm76_CalcQuotList: Tfrm76_CalcQuotList;

implementation

uses
  frm76_CalcQuotMItemsForm;

{$R *.DFM}

{ Tfrm76_CalcQuotList }

class function Tfrm76_CalcQuotList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm76_CalcQuotList;
end;

class function Tfrm76_CalcQuotList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm76_CalcQuotList;
end;

class procedure Tfrm76_CalcQuotList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm76_CalcQuotList) := AForm;
end;

function Tfrm76_CalcQuotList.GetListItem: Tfrm04_TabListItem;
begin
  Result := Tfrm04_TabListItem(Tfrm76_CalcQuotMItems.Instance);
end;

end.
