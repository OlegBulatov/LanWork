unit F005_PeriodFilterFrame;

interface

uses
  fm033_PeriodFilterFrame, Db, OracleData, ActnList, RxLookup, StdCtrls,
  Controls, xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TF005_PeriodFilter = class(TfmPeriodFilter)
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F005_PeriodFilter: TF005_PeriodFilter;

implementation

{$R *.DFM}

end.
