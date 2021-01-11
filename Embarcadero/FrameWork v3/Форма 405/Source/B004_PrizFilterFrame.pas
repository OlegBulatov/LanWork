unit B004_PrizFilterFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TB004_PrizFilter = class(TfmLookUp)
    odsListT210_ID: TFloatField;
    odsListT210_DK_PRIZ_NAME: TStringField;
    odsListT210_DK_PRIZ_SHORT_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  B004_PrizFilter: TB004_PrizFilter;

implementation

{$R *.DFM}

end.
