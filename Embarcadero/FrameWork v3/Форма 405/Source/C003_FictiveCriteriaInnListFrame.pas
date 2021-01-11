unit C003_FictiveCriteriaInnListFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid;

type
  TC003_FictiveCriteriaInnListGrid = class(TfmGrid)
    odsListT226_ID: TFloatField;
    odsListT226_COMPANY_INN: TStringField;
    odsListT226_COMPANY_NAME: TStringField;
    odsListT226_LOAD_DATE: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  C003_FictiveCriteriaInnListGrid: TC003_FictiveCriteriaInnListGrid;

implementation

{$R *.DFM}

end.
