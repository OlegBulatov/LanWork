unit F005_PartsFilterFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TF005_PartsFilter = class(TfmLookUp)
    odsListPART_ID: TFloatField;
    odsListPART_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F005_PartsFilter: TF005_PartsFilter;

implementation

{$R *.DFM}

end.
