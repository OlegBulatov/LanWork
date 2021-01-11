unit K001_RecTypeFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TK001_RecTypeFilter = class(TfmLookUp)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  K001_RecTypeFilter: TK001_RecTypeFilter;

implementation

{$R *.DFM}

end.
