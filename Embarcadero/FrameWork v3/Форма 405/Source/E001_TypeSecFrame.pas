unit E001_TypeSecFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Controls, Forms, Dialogs,

type
  TE001_TypeSec = class(TfmLookUp)
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT027_COMMENTS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  E001_TypeSec: TE001_TypeSec;

implementation

{$R *.DFM}

end.
