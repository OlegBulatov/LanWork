unit K001_CountryFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TK001_CountryFilter = class(TfmLookUp)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  K001_CountryFilter: TK001_CountryFilter;

implementation

{$R *.DFM}

end.
