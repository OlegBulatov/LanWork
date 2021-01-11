unit B004_PartFilterFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TB004_PartFilter = class(TfmLookUp)
    odsListPART_ID: TFloatField;
    odsListPART_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  B004_PartFilter: TB004_PartFilter;

implementation

{$R *.DFM}

end.
