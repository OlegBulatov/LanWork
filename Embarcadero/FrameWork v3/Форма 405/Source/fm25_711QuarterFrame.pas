unit fm25_711QuarterFrame;

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls,
  xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm25_711Quarter = class(Tfm04_LookUp)
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
  private
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm25_711Quarter: Tfm25_711Quarter;

implementation

{$R *.DFM}

{ Tfm25_711Quarter }

procedure Tfm25_711Quarter.GetParamsValues;
begin
  Param.AsFloat := Lookup01.KeyValue;
end;

procedure Tfm25_711Quarter.SetParamsValues;
begin
	odsList.Open;
	if Param.AsFloat = 0  then
  begin
	  odsList.Last;
	  Lookup01.KeyValue := odsList.FieldByName(Lookup01.LookupField).AsFloat;
  end
  else
	  Lookup01.KeyValue := Param.AsFloat;

{  odsList.Close;
  odsList.Open;
  odsList.Last;
  Lookup01.KeyValue := odsList.FieldByName(Lookup01.KeyField).AsFloat;}
end;

end.
