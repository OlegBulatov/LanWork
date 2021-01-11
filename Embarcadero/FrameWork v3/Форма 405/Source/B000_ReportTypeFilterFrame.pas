unit B000_ReportTypeFilterFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TB000_ReportTypeFilter = class(TfmLookUp)
    odsListTYPE_ID: TStringField;
    odsListTYPE_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  B000_ReportTypeFilter: TB000_ReportTypeFilter;

implementation

{$R *.DFM}

end.
