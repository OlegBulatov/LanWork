unit z002_handler_filter_frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  Tz002_handler_filter = class(TfmLookUp)
    odsListID: TFloatField;
    odsListDESCR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  z002_handler_filter: Tz002_handler_filter;

implementation

{$R *.DFM}

end.
