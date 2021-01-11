unit J002_LoadPage3GridFrame;

interface

uses
  fm005_GridFrame, Db, Oracle, Menus, OracleData, Classes, ActnList,
  Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, Forms,
  fm031_FilterFrame;

type
  TJ002_LoadPage3Grid = class(TfmGrid)
    odsListPERIOD_NAME: TStringField;
    odsListREPORTS_TYPE: TStringField;
    odsListREPORTS_LOADED: TFloatField;
    odsListLOAD_ERRORS: TFloatField;
    odsListLOAD_COMMENT: TStringField;
    odsListT180_ID: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  J002_LoadPage3Grid: TJ002_LoadPage3Grid;

implementation

{$R *.DFM}

end.
