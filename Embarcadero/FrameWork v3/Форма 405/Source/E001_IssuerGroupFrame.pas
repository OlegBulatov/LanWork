unit E001_IssuerGroupFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TE001_IssuerGroup = class(TfmLookUp)
    odsListT042_ID: TFloatField;
    odsListT042_SHORT_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  E001_IssuerGroup: TE001_IssuerGroup;

implementation

{$R *.DFM}

end.
