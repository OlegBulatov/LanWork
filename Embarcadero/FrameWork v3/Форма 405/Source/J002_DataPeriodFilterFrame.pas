unit J002_DataPeriodFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm033_PeriodFilterFrame, Db, OracleData, ActnList, RxLookup, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TJ002_DataPeriodFilter = class(TfmPeriodFilter)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  J002_DataPeriodFilter: TJ002_DataPeriodFilter;

implementation

{$R *.DFM}

end.
