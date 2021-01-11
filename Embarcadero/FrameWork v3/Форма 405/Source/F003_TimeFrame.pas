unit F003_TimeFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TF003_Time = class(TfmLookUp)
    odsListT055_ID: TFloatField;
    odsListT055_START_DATE: TDateTimeField;
    odsListT055_LONG_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F003_Time: TF003_Time;

implementation

{$R *.DFM}

end.
