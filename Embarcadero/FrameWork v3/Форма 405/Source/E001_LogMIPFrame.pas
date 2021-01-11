unit E001_LogMIPFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  StdCtrls, DBCtrls;

type
  TE001_LogMIP = class(TfmGrid)
    odsListT170_SHORT_NAME: TStringField;
    odsListT170_INN: TStringField;
    odsListT170_O_USD_RATE: TFloatField;
    odsListT170_O_405_SHS3_USD_SAL: TFloatField;
    odsListT170_O_405_SHS3_CNT_SAL: TFloatField;
    odsListT170_O_DR_USD_SAL: TFloatField;
    odsListT170_O_DR_CNT_SAL: TFloatField;
    odsListT170_E_EMISS_SIZE: TFloatField;
    odsListT170_O_405_USD_SAL: TFloatField;
    odsListT170_O_405_CNT_SAL: TFloatField;
    odsListT170_O_OTH_CNT_711_405: TFloatField;
    odsListT170_O_OTH_USD_E: TFloatField;
    odsListT170_O_PER_USD: TFloatField;
    odsListT170_E_CNT_RATE: TFloatField;
    odsListT170_E_USD_RATE: TFloatField;
    odsListT170_LOG_TEXT: TStringField;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    DBMemo1: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  E001_LogMIP: TE001_LogMIP;

implementation
uses dm005_MainData;

{$R *.DFM}

end.
