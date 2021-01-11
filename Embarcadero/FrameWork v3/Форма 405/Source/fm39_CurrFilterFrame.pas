unit fm39_CurrFilterFrame;

interface

uses
  fm04_LookUpFrame, Db, OracleData, Controls, DBCtrls, Classes,
  StdCtrls, xxxDbLookupCheckCombo;
//  Windows, Messages, SysUtils, Classes, Graphics, Forms, Dialogs,

type
  Tfm39_CurrFilter = class(Tfm04_LookUp)
    odsListISO_ID: TStringField;
    odsListCURR_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  fm39_CurrFilter: Tfm39_CurrFilter;

implementation

{$R *.DFM}

procedure Tfm39_CurrFilter.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;
  Lookup01.KeyValue := odsList.FieldByName('ISO_ID').AsString;
end;

procedure Tfm39_CurrFilter.GetParamsValues;
begin
  Param.AsString := Lookup01.KeyValue;
end;

end.
