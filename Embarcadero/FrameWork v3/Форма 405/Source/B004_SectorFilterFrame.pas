unit B004_SectorFilterFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TB004_SectorFilter = class(TfmLookUp)
    odsListT211_ID: TFloatField;
    odsListT211_NAME: TStringField;
    odsListT211_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  B004_SectorFilter: TB004_SectorFilter;

implementation

{$R *.DFM}

end.
