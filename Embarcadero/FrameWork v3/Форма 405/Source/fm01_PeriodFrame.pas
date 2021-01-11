unit fm01_PeriodFrame;

interface

uses 
  Forms, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfm01_Period = class(TFrame)
    Label1: TLabel;
    lcbPeriod: TDBLookupComboBox;
    dsPeriod: TDataSource;
    odsPeriod: TOracleDataSet;
  private
    function GetKeyValue: string;
    function GetListValue: string;
    procedure SetKeyValue(const Value: string);
  public
    procedure Init;
    //
    property KeyValue: string read GetKeyValue write SetKeyValue;
    property ListValue: string read GetListValue;    
  end;

implementation

//uses dm005_MainData;

{$R *.DFM}

{ Tfm01_Period }

function Tfm01_Period.GetKeyValue: string;
begin
  Result := odsPeriod[lcbPeriod.KeyField];
end;

function Tfm01_Period.GetListValue: string;
begin
  Result := odsPeriod[lcbPeriod.ListField];
end;

procedure Tfm01_Period.Init;
begin
  odsPeriod.Close;
  odsPeriod.Open;
  odsPeriod.Last;
  KeyValue := odsPeriod.FieldByName(lcbPeriod.KeyField).AsString;
end;

procedure Tfm01_Period.SetKeyValue(const Value: string);
begin
  lcbPeriod.KeyValue := Value;
end;

end.
