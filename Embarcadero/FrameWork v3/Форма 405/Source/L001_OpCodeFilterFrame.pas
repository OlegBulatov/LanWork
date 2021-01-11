unit L001_OpCodeFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls,
  xxxDbLookupCheckCombo;

type
  TL001_OpCodeFilter = class(TfmLookUp)
    odsListT011_ID: TFloatField;
    odsListT011_TYPE_ID: TFloatField;
    odsListT011_OPERATION_DESC: TStringField;
    odsListDESC_FLD: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  L001_OpCodeFilter: TL001_OpCodeFilter;

implementation

{$R *.DFM}

end.
