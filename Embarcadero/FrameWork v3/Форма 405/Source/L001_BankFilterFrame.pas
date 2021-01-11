unit L001_BankFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TL001_BankFilter = class(TfmLookUp)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  L001_BankFilter: TL001_BankFilter;

implementation

{$R *.DFM}

end.
