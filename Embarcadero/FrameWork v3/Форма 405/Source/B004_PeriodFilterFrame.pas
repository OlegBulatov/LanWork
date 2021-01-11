unit B004_PeriodFilterFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TB004_PeriodFilter = class(TfmLookUp)
    odsListT055_ID: TFloatField;
    odsListT002_NUMB_IN_YEA: TStringField;
    odsListT002_NUMB_IN_YEA_TEXT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  B004_PeriodFilter: TB004_PeriodFilter;

implementation

{$R *.DFM}

end.
