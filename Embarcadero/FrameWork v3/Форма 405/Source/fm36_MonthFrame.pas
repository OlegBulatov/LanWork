unit fm36_MonthFrame;

interface

uses
  Classes, Forms, Db, OracleData, Controls, DBCtrls, StdCtrls;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  Tfm36_MonthAll = class(TFrame)
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

function Tfm36_MonthAll.GetKeyValue: string;
begin
  Result := odsPeriod[lcbPeriod.KeyField];
end;

function Tfm36_MonthAll.GetListValue: string;
begin
  Result := odsPeriod[lcbPeriod.ListField];
end;

procedure Tfm36_MonthAll.Init;
begin
  odsPeriod.Close;
  odsPeriod.Open;
  odsPeriod.Last;
  KeyValue := odsPeriod.FieldByName(lcbPeriod.KeyField).AsString;
end;

procedure Tfm36_MonthAll.SetKeyValue(const Value: string);
begin
  lcbPeriod.KeyValue := Value;
end;

end.
