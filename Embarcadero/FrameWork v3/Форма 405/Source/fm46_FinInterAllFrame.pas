unit fm46_FinInterAllFrame;

// Список типов финасовых посредников
// financial intermediaries

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls,
  xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm46_FinInterAll = class(Tfm04_LookUp)
    odsListFI_TYPE_ID: TFloatField;
    odsListFI_TYPE_NAME: TStringField;
  private
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm46_FinInterAll: Tfm46_FinInterAll;

implementation

{$R *.DFM}

{ Tfm45_FinInter }

procedure Tfm46_FinInterAll.GetParamsValues;
begin
  Param.AsFloat := Lookup01.KeyValue;
end;

procedure Tfm46_FinInterAll.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;
  odsList.First;
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
