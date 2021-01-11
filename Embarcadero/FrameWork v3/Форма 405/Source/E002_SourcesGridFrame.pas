unit E002_SourcesGridFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList, ComCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, fm031_FilterFrame;

type
  TE002_SourcesGrid = class(TfmGrid)
    odsListT027_SEC_TYPE: TStringField;
    odsListT002_BANK_CODE: TStringField;
    odsListBANK_NAME: TStringField;
    odsListISIN: TStringField;
  private
    { Private declarations }
  public
    FT030_IDs: String;

    procedure InitFrame(Sender: TObject); override;
  end;

var
  E002_SourcesGrid: TE002_SourcesGrid;

implementation

{$R *.DFM}

{ TE002_SourcesGrid }

procedure TE002_SourcesGrid.InitFrame(Sender: TObject);
begin
  odsList.SetVariable('T030_IDS', 'WHERE T030_ID IN (' + FT030_IDs + ')');

  inherited;
end;

end.
