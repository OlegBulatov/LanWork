unit H002_CBondsEmissionsListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  TH002_CBondsEmissionsList = class(Tfrm04_List)
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
    odsListT032_RATING: TStringField;
    odsListT032_INDUSTRY: TStringField;
    odsListT032_VOLUME: TFloatField;
    odsListT032_CURRENCY: TStringField;
    odsListT032_STATE: TStringField;
    odsListT032_MATURITY_DATE: TDateTimeField;
    odsListT032_INDEX: TStringField;
    odsListT032_COUPON_PERIOD: TFloatField;
    odsListT032_FLOATING_RATE: TStringField;
    odsListT032_BASE_RATE: TStringField;
    odsListT032_MARGE: TFloatField;
    odsListT032_CONVERTING: TStringField;
    odsListT032_DEPENDS: TStringField;
    odsListT032_AGENT: TStringField;
    odsListT032_TRADE_IN: TStringField;
    odsListT032_COMMENTS: TStringField;
    odsListT032_TRADE_TYPE: TStringField;
    odsListT032_FIRST_PRICE: TFloatField;
    odsListT032_FIRST_YIELD: TFloatField;
    odsListT032_REG_DATE: TDateTimeField;
    odsListT032_TRADE_START_DATE: TDateTimeField;
    odsListT032_TRADE_END_DATE: TDateTimeField;
    odsListT032_CIRCULAR_START_DATE: TDateTimeField;
    odsListT032_OFFER_DATE: TDateTimeField;
    odsListT032_OPTION_DATE: TDateTimeField;
    odsListT032_CIRCULAR_AMOUNT: TFloatField;
    odsListT032_OUTSTANDING_VALUE: TFloatField;
    odsListT032_MINIMAL_TRADE_LOT: TFloatField;
    odsListT032_LOT_MULTIPLICITY: TFloatField;
    odsListT032_MARKET_SEG_CODE: TFloatField;
    odsListT032_MMVB_TICKER: TStringField;
    odsListT032_TYPE: TStringField;
    odsListT032_LOAD_DATE: TDateTimeField;
    odsListT032_LOAD_FILE: TStringField;
    odsListT032_LOADER: TStringField;
    odsListT037_ID: TFloatField;
    odsListT035_ID: TFloatField;
    odsListT021_ID: TFloatField;
    odsListIS_CHANGED: TFloatField;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    actFlows: TAction;
    odsListHAS_FLOWS: TFloatField;
    procedure actFlowsUpdate(Sender: TObject);
    procedure actFlowsExecute(Sender: TObject);
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
  H002_CBondsEmissionsList: TH002_CBondsEmissionsList;

implementation

uses
  H003_FlowsListForm;

{$R *.DFM}

{ TH002_CBondsEmissionsList }

class function TH002_CBondsEmissionsList.GetSelfClass: Tfrm00_Parents;
begin
  Result := TH002_CBondsEmissionsList;
end;

class function TH002_CBondsEmissionsList.GetSelfForm: Tfrm00_Parent;
begin
  Result := H002_CBondsEmissionsList;
end;

class procedure TH002_CBondsEmissionsList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(H002_CBondsEmissionsList) := AForm;
end;

procedure TH002_CBondsEmissionsList.actFlowsUpdate(Sender: TObject);
begin
  actFlows.Enabled := not odsList.IsEmpty and (odsListHAS_FLOWS.AsFloat = 1);
end;

procedure TH002_CBondsEmissionsList.actFlowsExecute(Sender: TObject);
var
  vForm: TH003_FlowsList;
begin
  vForm := TH003_FlowsList.Create(Self);
  vForm.T030_ID := odsListT030_ID.AsFloat;
  vForm.ShowModal;
  vForm.Free;
end;

end.
