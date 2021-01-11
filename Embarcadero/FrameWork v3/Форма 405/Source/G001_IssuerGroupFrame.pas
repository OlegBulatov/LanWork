unit G001_IssuerGroupFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TG001_IssuerGroup = class(TfmLookUp)
    odsListT042_ID: TFloatField;
    odsListT042_SHORT_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  G001_IssuerGroup: TG001_IssuerGroup;

implementation

{$R *.DFM}

end.
