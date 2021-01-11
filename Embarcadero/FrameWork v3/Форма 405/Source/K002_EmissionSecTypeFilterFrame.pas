unit K002_EmissionSecTypeFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TK002_EmissionSecTypeFilter = class(TfmLookUp)
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT027_COMMENTS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  K002_EmissionSecTypeFilter: TK002_EmissionSecTypeFilter;

implementation

{$R *.DFM}

end.
