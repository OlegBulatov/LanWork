unit B002_BankFilterFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TB002_BankFilter = class(TfmLookUp)
    odsListREGN: TStringField;
    odsListBANK_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  B002_BankFilter: TB002_BankFilter;

implementation

{$R *.DFM}

end.
