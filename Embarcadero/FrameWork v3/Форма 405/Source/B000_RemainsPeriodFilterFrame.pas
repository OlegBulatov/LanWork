unit B000_RemainsPeriodFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm033_PeriodFilterFrame, Db, OracleData, ActnList, RxLookup, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TB000_RemainsPeriodFilter = class(TfmPeriodFilter)
    odsListT055_ID: TFloatField;
    odsListT002_NUMB_IN_YEA_TEXT: TStringField;
    odsList2T055_ID: TFloatField;
    odsList2T002_NUMB_IN_YEA_TEXT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  B000_RemainsPeriodFilter: TB000_RemainsPeriodFilter;

implementation

{$R *.DFM}

end.
