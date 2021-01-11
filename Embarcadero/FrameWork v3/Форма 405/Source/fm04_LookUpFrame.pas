unit fm04_LookUpFrame;

interface

uses
  fm02_PrmParentFrame, Db, OracleData, Controls, DBCtrls, Classes, StdCtrls,
  xxxDBLookupCheckCombo;

type
  Tfm04_LookUp = class(Tfm02_PrmParent)
    Label1: TLabel;
    Lookup01: TxxxDBLookupCheckCombo;
    odsList: TOracleDataSet;
    dsList: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm04_LookUp: Tfm04_LookUp;

implementation

{$R *.DFM}

end.
