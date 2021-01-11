unit C002_OpCodeFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TC002_OpCode = class(TfmLookUp)
    odsListT011_ID: TFloatField;
    odsListT011_TYPE_ID: TFloatField;
    odsListT011_OPERATION_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  C002_OpCode: TC002_OpCode;

implementation

{$R *.DFM}

end.
