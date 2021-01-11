unit fm18_SecTypeFilterFrame;

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls,
  xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm18_SecTypeFilter = class(Tfm04_LookUp)
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
  private
    { Private declarations }
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm18_SecTypeFilter: Tfm18_SecTypeFilter;

implementation

{$R *.DFM}

procedure Tfm18_SecTypeFilter.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;

  if Param.AsFloat = 0 then
  begin
    odsList.First;
    Lookup01.KeyValue := odsList.FieldByName('T027_ID').AsString;
  end
  else
  begin
    Lookup01.KeyValue := Param.AsFloat;
  end;
end;

procedure Tfm18_SecTypeFilter.GetParamsValues;
begin
  Param.AsString := Lookup01.KeyValue;
end;

end.
