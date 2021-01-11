unit z002_type_filter_frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  Tz002_type_filter = class(TfmLookUp)
    odsListID: TFloatField;
    odsListDESCR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  z002_type_filter: Tz002_type_filter;

implementation

{$R *.DFM}

end.
