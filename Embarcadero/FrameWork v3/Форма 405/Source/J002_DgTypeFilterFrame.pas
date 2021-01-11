unit J002_DgTypeFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TJ002_DgTypeFilter = class(TfmLookUp)
    odsListDG_TYPE: TStringField;
    odsListDG_TYPE_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  J002_DgTypeFilter: TJ002_DgTypeFilter;

implementation

{$R *.DFM}

end.
