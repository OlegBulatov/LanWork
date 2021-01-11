unit J002_KontrTypeFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TJ002_KontrTypeFilter = class(TfmLookUp)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  J002_KontrTypeFilter: TJ002_KontrTypeFilter;

implementation

{$R *.DFM}

end.
