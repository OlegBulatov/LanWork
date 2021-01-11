unit untGrid;

interface

uses
  DBGrids;

type
  TCommonGrid = class(TCustomDBGrid)
  public
    property Columns;
    property SelectedRows;
  end;

implementation

end.
