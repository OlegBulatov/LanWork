unit F005_ReporterFilterFrame;

interface

uses
  fm020_LookUpFrame, Db, OracleData, ActnList, StdCtrls, Controls,
  xxxDbLookupCheckCombo, Classes;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TF005_ReporterFilter = class(TfmLookUp)
    odsListREPORTER_INN: TStringField;
    odsListREPORTER_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F005_ReporterFilter: TF005_ReporterFilter;

implementation

{$R *.DFM}

end.
