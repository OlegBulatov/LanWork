unit G002_RatesFrame;

interface

uses
  fm005_GridFrame, Db, Oracle, Menus, OracleData, Classes, ActnList,
  Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TG002_Rates = class(TfmGrid)
    odsListID_ISIN: TStringField;
    odsListRATE_DATE: TDateTimeField;
    odsListRATE_VALUE: TFloatField;
    odsListRATE_VALUE_USD: TFloatField;
    odsListCURS_USD: TFloatField;
    odsListISO_DIG: TStringField;
    odsListNAME_RUSH: TStringField;
    odsListSEC_REGN: TStringField;
    odsListRATE_SOURCE: TStringField;
    odsListRATE_CURRENCY: TStringField;
  private
    procedure SetIsin(const Value: string);
  
  public
    property ISIN: string write SetIsin;
  end;

var
  G002_Rates: TG002_Rates;

implementation

{$R *.DFM}

{ TG002_Rates }

procedure TG002_Rates.SetIsin(const Value: string);
begin
  odsList.SetVariable('ID_ISIN', Value);
end;

end.
