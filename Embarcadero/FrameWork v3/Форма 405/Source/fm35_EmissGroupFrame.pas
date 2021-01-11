unit fm35_EmissGroupFrame;

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls,
  xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm35_EmissGroup = class(Tfm04_LookUp)
    odsListT059_ID: TFloatField;
    odsListT059_SHORT_NAME: TStringField;
  private
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm35_EmissGroup: Tfm35_EmissGroup;

implementation

{$R *.DFM}

{ Tfm21_Quarter }

procedure Tfm35_EmissGroup.GetParamsValues;
begin
  Param.AsFloat := Lookup01.KeyValue;
end;

procedure Tfm35_EmissGroup.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;
  odsList.Last;
  //Lookup01.KeyValue := odsList.FieldByName(Lookup01.KeyField).AsFloat;
  Lookup01.KeyValue := Param.AsFloat;
end;

end.
