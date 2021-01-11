unit fm04_PrmKOFrame;

interface

uses
  Forms, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  Tfm04_PrmKO = class(TFrame)
    Label1: TLabel;
    lcbPeriod: TDBLookupComboBox;
    odsPeriod: TOracleDataSet;
    dsPeriod: TDataSource;
  private
    function GetKeyValue: string;
    function GetListValue: string;
    procedure SetKeyValue(const Value: string);
  public
    procedure Init(const ANumb: string);
    //
    property KeyValue: string read GetKeyValue write SetKeyValue;
    property ListValue: string read GetListValue;
  end;

implementation

//uses dm005_MainData;

{$R *.DFM}

{ TFrame1 }

function Tfm04_PrmKO.GetKeyValue: string;
begin
  Result := odsPeriod.FieldByName('REGN').AsString;
end;

function Tfm04_PrmKO.GetListValue: string;
begin
  Result := odsPeriod.FieldByName('NAME').AsString;
end;

procedure Tfm04_PrmKO.Init(const ANumb: string);
begin
  odsPeriod.Close;
  odsPeriod.SetVariable('T002_NUMB_IN_YEA', ANumb);
  odsPeriod.Open;
  KeyValue := odsPeriod.FieldByName('REGN').AsString;
end;

procedure Tfm04_PrmKO.SetKeyValue(const Value: string);
begin
  lcbPeriod.KeyValue := Value;
end;

end.
