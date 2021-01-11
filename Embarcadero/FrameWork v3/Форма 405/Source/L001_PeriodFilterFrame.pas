unit L001_PeriodFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm033_PeriodFilterFrame, Db, OracleData, ActnList, RxLookup, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TL001_PeriodFilter = class(TfmPeriodFilter)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  L001_PeriodFilter: TL001_PeriodFilter;

implementation

{$R *.DFM}

end.
