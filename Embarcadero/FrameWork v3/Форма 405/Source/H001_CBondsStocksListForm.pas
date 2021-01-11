unit H001_CBondsStocksListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  TH001_CBondsStocksList = class(Tfrm04_List)
    paTop: TPanel;
    odsListT020_ID: TFloatField;
    odsListT020_NAME: TStringField;
    odsListT020_INN: TStringField;
    odsListT020_OGRN: TStringField;
    odsListT020_COUNTRY: TStringField;
    odsListT020_RATING: TStringField;
    odsListT020_LOAD_DATE: TDateTimeField;
    odsListT020_LOAD_FILE: TStringField;
    odsListT020_LOADER: TStringField;
    odsListT030_ID: TFloatField;
    odsListT031_EMISSION_ID: TFloatField;
    odsListT030_NAME: TStringField;
    odsListT030_REGN: TStringField;
    odsListT030_ISIN: TStringField;
    odsListT030_NOMINAL: TFloatField;
    odsListT030_LOAD_DATE: TDateTimeField;
    odsListT030_LOAD_FILE: TStringField;
    odsListT030_LOADER: TStringField;
    odsListT031_NAME_FULL_ENG: TStringField;
    odsListT031_NAME_SHORT_RUS: TStringField;
    odsListT031_NAME_SHORT_ENG: TStringField;
    odsListT031_ISSUE_NUMBER: TStringField;
    odsListT031_QUANTITY: TFloatField;
    odsListT031_FREE_PERCENT: TFloatField;
    odsListT031_COMMENT: TStringField;
    odsListT031_JOIN_ID: TFloatField;
    odsListT031_JOIN_DATE: TDateTimeField;
    odsListT031_MMVB_TICKER: TStringField;
    odsListT031_MMVB_TRADE_LIST: TStringField;
    odsListT031_MMVB_DATE_START: TDateTimeField;
    odsListT031_MMVB_DATE_END: TDateTimeField;
    odsListT031_RTS_TICKER: TStringField;
    odsListT031_RTS_TRADE_LIST: TStringField;
    odsListT031_RTS_DATE_START: TDateTimeField;
    odsListT031_RTS_DATE_END: TDateTimeField;
    odsListT031_DKK_CODE: TStringField;
    odsListT031_STANDART_TICKER: TStringField;
    odsListT031_STANDART_TRADE_LIST: TStringField;
    odsListT031_STANDART_DATE_START: TDateTimeField;
    odsListT031_STANDART_DATE_END: TDateTimeField;
    odsListT031_TYPE: TStringField;
    odsListT031_LOAD_DATE: TDateTimeField;
    odsListT031_LOAD_FILE: TStringField;
    odsListT031_LOADER: TStringField;
    odsListT036_ID: TFloatField;
    odsListT035_ID: TFloatField;
    odsListT021_ID: TFloatField;
    odsListIS_CHANGED: TFloatField;
    odsListT031_BLUE: TStringField;
    odsListT031_JOINED: TStringField;
    odsListT031_MMVB_TRADE: TStringField;
    odsListT031_RTS_TRADE: TStringField;
    odsListT031_RTS_MAIN: TStringField;
    odsListT031_STANDART_TRADE: TStringField;
    odsListT031_STANDART_MAIN: TStringField;
  private
    { Private declarations }
  protected
    class function GetSelfClass(): Tfrm00_Parents; override;
    class function GetSelfForm(): Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
  end;

var
  H001_CBondsStocksList: TH001_CBondsStocksList;

implementation

{$R *.DFM}

{ TH001_CBondsStocksList }

class function TH001_CBondsStocksList.GetSelfClass: Tfrm00_Parents;
begin
  Result := TH001_CBondsStocksList;
end;

class function TH001_CBondsStocksList.GetSelfForm: Tfrm00_Parent;
begin
  Result := H001_CBondsStocksList;
end;

class procedure TH001_CBondsStocksList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(H001_CBondsStocksList) := AForm;
end;

end.
