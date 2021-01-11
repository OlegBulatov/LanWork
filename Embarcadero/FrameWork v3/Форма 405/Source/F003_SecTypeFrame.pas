unit F003_SecTypeFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TF003_SecType = class(TfmLookUp)
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F003_SecType: TF003_SecType;

implementation

{$R *.DFM}

end.
