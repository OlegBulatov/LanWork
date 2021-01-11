unit E002_PeriodFilterFrame;

interface

uses
  fm033_PeriodFilterFrame, Db, OracleData, ActnList, RxLookup, StdCtrls,
  Controls, xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TE002_PeriodFilter = class(TfmPeriodFilter)
    odsListT055_ID: TFloatField;
    odsListT002_NUMB_IN_YEA: TStringField;
    odsListT002_NUMB_IN_YEA_TEXT: TStringField;
    odsList2T055_ID: TFloatField;
    odsList2T002_NUMB_IN_YEA: TStringField;
    odsList2T002_NUMB_IN_YEA_TEXT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  E002_PeriodFilter: TE002_PeriodFilter;

implementation

{$R *.DFM}

end.
