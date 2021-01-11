unit frm106_DataSourceForm;

interface

uses
  Forms, Db, OracleData, Classes, Controls, StdCtrls, DBCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  Db, OracleData, StdCtrls, DBCtrls;

type
  TInfoSource = (if405, if711);

  Tfrm106_DataSource = class(TForm)
    odsList405: TOracleDataSet;
    DBMemo1: TDBMemo;
    dsList: TDataSource;
    odsList711: TOracleDataSet;
  private
    { Private declarations }
  public
    procedure InitData(ASource: TInfoSource; RecID: Double);
  end;

var
  frm106_DataSource: Tfrm106_DataSource;

implementation

{$R *.DFM}

{ Tfrm106_DataSource }

procedure Tfrm106_DataSource.InitData(ASource: TInfoSource; RecID: Double);
begin
  if ASource = if405 then
    begin
    dsList.DataSet := odsList405;
    odsList405.Close;
    odsList405.SetVariable('T002_ID', RecID);
    odsList405.Open;
    end
  else if ASource = if711 then
    begin
    dsList.DataSet := odsList711;
    odsList711.Close;
    odsList711.SetVariable('T051_ID', RecID);
    odsList711.Open;
    end;
end;

end.
