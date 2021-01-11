unit P002_SectorFrame;

interface

uses
  fm04_LookUpExtFrame, Db, OracleData, Controls, xxxDbLookupCheckCombo,
  Classes, StdCtrls;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TP002_Sector = class(Tfm04_LookUpExt)
    odsListT211_NAME: TStringField;
    odsListT211_DESC: TStringField;
  private
    { Private declarations }
  public
    procedure GetParamsValues; override;
    procedure SetParamsValues; override;
  end;

var
  P002_Sector: TP002_Sector;

implementation

{$R *.DFM}

{ TP002_Sector }

procedure TP002_Sector.GetParamsValues;
begin
  Param.AsStrArray := KeyValuesStr;
end;

procedure TP002_Sector.SetParamsValues;
begin
  odsList.Close;
  odsList.Open;
  SetKeyValuesStr(['S2']);
end;

end.
