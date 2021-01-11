unit C002_TypeSecFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TC002_TypeSec = class(TfmLookUp)
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListDESC_FLD: TStringField;
    odsListT027_COMMENTS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  C002_TypeSec: TC002_TypeSec;

implementation

{$R *.DFM}

end.
