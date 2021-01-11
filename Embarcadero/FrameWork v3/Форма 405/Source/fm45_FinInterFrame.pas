unit fm45_FinInterFrame;

// Список типов финасовых посредников
// financial intermediaries

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls,
  xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm45_FinInter = class(Tfm04_LookUp)
    odsListFI_TYPE_ID: TFloatField;
    odsListFI_TYPE_NAME: TStringField;
  private
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm45_FinInter: Tfm45_FinInter;

implementation

{$R *.DFM}

{ Tfm45_FinInter }

procedure Tfm45_FinInter.GetParamsValues;
begin
  Param.AsFloat := Lookup01.KeyValue;
end;

procedure Tfm45_FinInter.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;
//  odsList.Last;
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
