unit fm22_OperSHSFrame;

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls,
  xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm22_OperSHS = class(Tfm04_LookUp)
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm22_OperSHS: Tfm22_OperSHS;

implementation

{$R *.DFM}

{ Tfm22_OperSHS }

procedure Tfm22_OperSHS.GetParamsValues;
begin
  Param.AsFloat := Lookup01.KeyValue;
end;

procedure Tfm22_OperSHS.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;
  Lookup01.KeyValue := odsList.FieldByName(Lookup01.LookupField).AsFloat;
end;

end.
