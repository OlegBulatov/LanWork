unit fm17_DirectionFrame;

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls,
  xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm17_Direction = class(Tfm04_LookUp)
    odsListT006_DIR_NAME: TStringField;
    odsListT006_DIRECTION: TFloatField;
  private
    { Private declarations }
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm17_Direction: Tfm17_Direction;

implementation

{$R *.DFM}


procedure Tfm17_Direction.GetParamsValues;
begin
  Param.AsFloat := Lookup01.KeyValue;
end;

procedure Tfm17_Direction.SetParamsValues;
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
