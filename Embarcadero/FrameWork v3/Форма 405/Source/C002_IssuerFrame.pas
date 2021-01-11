unit C002_IssuerFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, Graphics, Forms, Dialogs,
//  unt205_Params;

type
  TC002_Issuer = class(TfmLookUp)
    odsListT028_ID: TFloatField;
    odsListT028_INN: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_DESC: TStringField;
  private
  protected
  public
    procedure SetVariables(AT055_ID_S, AT055_ID_E, AT011_ID, AT027_ID: Double);
  end;

var
  C002_Issuer: TC002_Issuer;

implementation

uses SysUtils;

{$R *.DFM}

{ TC002_Rezidents }

procedure TC002_Issuer.SetVariables(AT055_ID_S, AT055_ID_E, AT011_ID, AT027_ID: Double);
var
  vVar: string;
begin
  odsList.SetVariable('T055_ID_S', AT055_ID_S);
  odsList.SetVariable('T055_ID_E', AT055_ID_E);
  vVar := '';
  if AT011_ID <> 0 then
    vVar := 'AND T001_OP_ID = ' + FloatToStr(AT011_ID);
  odsList.SetVariable('T011_ID', vVar);
  vVar := '';
  if AT027_ID <> 0 then
    begin
    vVar := 'AND T027_ID = ' + FloatToStr(AT027_ID);
    end;
  odsList.SetVariable('T027_ID', vVar);

//  ShowMessage(odsList.SubstitutedSQL);
end;

end.
