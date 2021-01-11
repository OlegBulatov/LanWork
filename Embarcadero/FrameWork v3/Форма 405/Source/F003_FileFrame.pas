unit F003_FileFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TF003_File = class(TfmLookUp)
    odsListT202_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT202_FILE_NAME: TStringField;
    odsListT202_STATE: TStringField;
    odsListT202_STATE_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F003_File: TF003_File;

implementation

{$R *.DFM}

end.
