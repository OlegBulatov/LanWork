unit fm04_Prm711KOFrame;

interface

uses
  Forms, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  DBCtrls, StdCtrls, Db, OracleData;

type
  Tfm04_Prm711KO = class(TFrame)
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

function Tfm04_Prm711KO.GetKeyValue: string;
begin
  Result := odsPeriod.FieldByName('REGN').AsString;
end;

function Tfm04_Prm711KO.GetListValue: string;
begin
  Result := odsPeriod.FieldByName('NAME').AsString;
end;

procedure Tfm04_Prm711KO.Init(const ANumb: string);
begin
  odsPeriod.Close;
  odsPeriod.SetVariable('T051_NUMB_IN_YEA', ANumb);
  odsPeriod.Open;
  KeyValue := odsPeriod.FieldByName('REGN').AsString;
end;

procedure Tfm04_Prm711KO.SetKeyValue(const Value: string);
begin
  lcbPeriod.KeyValue := Value;
end;

end.
