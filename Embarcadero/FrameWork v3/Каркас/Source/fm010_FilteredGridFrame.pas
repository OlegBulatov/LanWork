unit fm010_FilteredGridFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList, ComCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, StdCtrls, fm031_FilterFrame,
  System.Actions;

type
  TfmFilteredGrid = class(TfmGrid)
    paFilters: TPanel;
    GroupBox1: TGroupBox;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFilteredGrid: TfmFilteredGrid;

implementation

{$R *.DFM}

end.
