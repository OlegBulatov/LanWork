unit F005_LoadPage3aGridFrame;

interface

uses
  fm005_GridFrame, Db, Oracle, Menus, OracleData, Classes, ActnList,
  Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, Forms,
  fm031_FilterFrame;
//  Windows, Messages, SysUtils, Graphics, Forms, Dialogs,

type
  TF005_LoadPage3aGrid = class(TfmGrid)
    odsListPERIOD_NAME: TStringField;
    odsListREPORTS_TYPE: TStringField;
    odsListREPORTS_LOADED: TFloatField;
    odsListLOAD_ERRORS: TFloatField;
    odsListLOAD_COMMENT: TStringField;
    odsListT245_ID: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F005_LoadPage3aGrid: TF005_LoadPage3aGrid;

implementation

{$R *.DFM}

end.
