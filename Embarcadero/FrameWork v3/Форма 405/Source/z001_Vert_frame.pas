unit z001_Vert_frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList, ComCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, StdCtrls, fm031_FilterFrame;

type
  Tz001_Vert = class(TfmGrid)
    Panel1: TPanel;
    odsListID: TFloatField;
    odsListNAME: TStringField;
    odsListOPER_1: TStringField;
  private
    { Private declarations }
  protected
        function GetRowFontColor: TColor; override;
  public
      constructor Create(AOwner: TComponent); override;
    { Public declarations }
  end;

var
  z001_Vert: Tz001_Vert;

implementation

{$R *.DFM}

constructor Tz001_Vert.Create(AOwner: TComponent);
begin
  inherited;
  RefreshData;
end ;

function Tz001_Vert.GetRowFontColor: TColor;
begin
   if (odsList.FieldByName('ID').AsFloat = 1) then
     begin
     xxxDBGrid.Canvas.Brush.Color :=  clAqua	;
     xxxDBGrid.Canvas.Font.Style :=  [fsBold];
     Result := clGreen	 //inherited GetRowFontColor
     end
   else
     Result := inherited GetRowFontColor;
 end;

end.
