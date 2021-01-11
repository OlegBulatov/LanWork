unit F005_DataPeriodFilterFrame;

interface

uses
  fm033_PeriodFilterFrame, Db, OracleData, ActnList, RxLookup, StdCtrls,
  Controls, xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TF005_DataPeriodFilter = class(TfmPeriodFilter)
    Label2: TLabel;
    odsListT055_ID: TFloatField;
    odsListPERIOD_DESC: TStringField;
    odsList2T055_ID: TFloatField;
    odsList2PERIOD_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F005_DataPeriodFilter: TF005_DataPeriodFilter;

implementation

{$R *.DFM}

end.
