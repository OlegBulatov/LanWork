unit F005_LoadPeriodFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm033_PeriodFilterFrame, Db, OracleData, ActnList, RxLookup, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TF005_LoadPeriodFilter = class(TfmPeriodFilter)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F005_LoadPeriodFilter: TF005_LoadPeriodFilter;

implementation

{$R *.DFM}

end.
