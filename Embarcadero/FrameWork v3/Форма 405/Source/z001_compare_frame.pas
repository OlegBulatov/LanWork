unit z001_compare_frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList, ComCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, StdCtrls, fm031_FilterFrame;

type
  Tz001_compare = class(TfmGrid)
    Panel1: TPanel;
    odsListID: TFloatField;
    odsListNAME: TStringField;
    odsListOPER_1: TStringField;
    odsListOPER_2: TStringField;
  private
    { Private declarations }
  protected
        function GetRowFontColor: TColor; override;
  public
      constructor Create(AOwner: TComponent); override;
    { Public declarations }
  end;

var
  z001_compare: Tz001_compare;

implementation

{$R *.DFM}

constructor Tz001_Compare.Create(AOwner: TComponent);
begin
  inherited;
  RefreshData;
end ;

function Tz001_Compare.GetRowFontColor: TColor;
begin
   if (odsList.FieldByName('ID').AsFloat = 1) then
     begin
     xxxDBGrid.Canvas.Brush.Color :=  clAqua	;
     xxxDBGrid.Canvas.Font.Style :=  [fsBold];
     Result := clGreen	 //inherited GetRowFontColor
     end
   else
   if (odsList.FieldByName('OPER_1').AsString = odsList.FieldByName('OPER_2').AsString) then
    // begin
   //  xxxDBGrid.Canvas.Brush.Color :=  clLtGray;
     Result := inherited GetRowFontColor
   //  end;
 else
 begin
  // xxxDBGrid.Canvas.Brush.Color :=  clBlue;
   xxxDBGrid.Canvas.Font.Style :=  [fsBold];
   Result := clRed;
   end;

end;

end.
