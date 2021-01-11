unit J002_OpTypeFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TJ002_OpTypeFilter = class(TfmLookUp)
    odsListOP_TYPE_ID: TFloatField;
    odsListOP_TYPE: TStringField;
    odsListOP_TYPE_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  J002_OpTypeFilter: TJ002_OpTypeFilter;

implementation

{$R *.DFM}

end.
