unit B000_PeriodFilterFrame;

interface

uses
  fm033_PeriodFilterFrame, Db, OracleData, ActnList, RxLookup, StdCtrls,
  Controls, xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TB000_PeriodFilter = class(TfmPeriodFilter)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  B000_PeriodFilter: TB000_PeriodFilter;

implementation

{$R *.DFM}

end.
