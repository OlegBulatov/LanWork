unit fm30_MonthFrame;

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes,
  StdCtrls, xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm30_Month = class(Tfm04_LookUp)
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
  private
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm30_Month: Tfm30_Month;

implementation

{$R *.DFM}

{ Tfm21_Quarter }

procedure Tfm30_Month.GetParamsValues;
begin
  Param.AsFloat := Lookup01.KeyValue;
end;

procedure Tfm30_Month.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;
  odsList.Last;
  if Param.AsFloat = 0 then
  begin
    Lookup01.KeyValue := odsList.FieldByName(Lookup01.LookupField).AsFloat;
  end
  else
  begin
    Lookup01.KeyValue := Param.AsFloat;
  end;
end;

end.
