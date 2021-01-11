unit J002_LoadPeriodFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm033_PeriodFilterFrame, Db, OracleData, ActnList, RxLookup, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TJ002_LoadPeriodFilter = class(TfmPeriodFilter)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  J002_LoadPeriodFilter: TJ002_LoadPeriodFilter;

implementation

{$R *.DFM}

end.
