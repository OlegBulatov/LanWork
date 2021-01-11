unit fm21_QuarterFrame;

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls,
  xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm21_Quarter = class(Tfm04_LookUp)
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
  private
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm21_Quarter: Tfm21_Quarter;

implementation

{$R *.DFM}

{ Tfm21_Quarter }

procedure Tfm21_Quarter.GetParamsValues;
begin
  Param.AsFloat := Lookup01.KeyValue;
end;

procedure Tfm21_Quarter.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;
  odsList.Last;
  Lookup01.KeyValue := odsList.FieldByName(Lookup01.LookupField).AsFloat;
end;

end.
