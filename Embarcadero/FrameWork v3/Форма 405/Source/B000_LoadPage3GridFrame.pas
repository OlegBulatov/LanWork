unit B000_LoadPage3GridFrame;

interface

uses
  fm005_GridFrame, Db, Oracle, Menus, OracleData, Classes, ActnList,
  Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, Forms,
  fm031_FilterFrame;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TB000_LoadPage3Grid = class(TfmGrid)
    odsListT220_ID: TFloatField;
    odsListPERIOD_NAME: TStringField;
    odsListREPORTS_TYPE: TStringField;
    odsListREPORTS_LOADED: TFloatField;
    odsListLOAD_ERRORS: TFloatField;
    odsListLOAD_COMMENT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  B000_LoadPage3Grid: TB000_LoadPage3Grid;

implementation

{$R *.DFM}

end.
