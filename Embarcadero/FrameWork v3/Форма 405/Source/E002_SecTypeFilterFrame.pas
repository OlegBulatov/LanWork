unit E002_SecTypeFilterFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;

type
  TE002_SecTypeFilter = class(TfmLookUp)
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT027_COMMENTS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  E002_SecTypeFilter: TE002_SecTypeFilter;

implementation

{$R *.DFM}

end.
