unit z002_inv_filter_frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  Tz002_inv_filter = class(TfmLookUp)
    odsListT001_INV_TYPE: TFloatField;
    odsListT001_INV_TYPE_DESCR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  z002_inv_filter: Tz002_inv_filter;

implementation

{$R *.DFM}

end.
