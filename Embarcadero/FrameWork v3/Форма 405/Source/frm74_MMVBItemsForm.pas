unit frm74_MMVBItemsForm;

interface

uses
  frm04_TabListItemForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows, frm00_ParentForm;
//  Messages, SysUtils, Dialogs,
//  frm04_ListForm

type
  Tfrm74_MMVBItems = class(Tfrm04_TabListItem)
    odsListT080_ID: TFloatField;
    odsListT081_ID: TFloatField;
    odsListT080_TRADEDATE: TDateTimeField;
    odsListT080_VALUE: TFloatField;
    odsListT080_BID: TFloatField;
    odsListT080_OFFER: TFloatField;
    odsListT080_NUMTRADES: TFloatField;
    odsListT080_WAPRICE: TFloatField;
    odsListT080_FILE_NAME: TStringField;
    odsListT080_SHORTNAME: TStringField;
    odsListT080_VOLUME: TFloatField;
    odsListT080_ACCINT: TFloatField;
    odsListT080_CURRENCY: TStringField;
    odsListT080_VALUE_NOM: TFloatField;
    odsListT080_BID_NOM: TFloatField;
    odsListT080_OFFER_NOM: TFloatField;
    odsListT080_WAPRICE_NOM: TFloatField;
    odsListT080_ACCINT_NOM: TFloatField;
    odsListT080_LOAD_DATE: TDateTimeField;
    odsListT080_REM: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    { Public declarations }
    class function Instance: Tfrm74_MMVBItems;
  end;


var
  frm74_MMVBItems: Tfrm74_MMVBItems;

implementation

uses Graphics;

{$R *.DFM}

{ Tfrm74_MMVBItems }

class function Tfrm74_MMVBItems.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm74_MMVBItems;
end;

class function Tfrm74_MMVBItems.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm74_MMVBItems;
end;

class procedure Tfrm74_MMVBItems.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm74_MMVBItems) := AForm;
end;

class function Tfrm74_MMVBItems.Instance: Tfrm74_MMVBItems;
begin
  Result := Tfrm74_MMVBItems(inherited Instance);
end;

procedure Tfrm74_MMVBItems.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  VColor: TColor;
  VBackColor: TColor;
begin
  // если примечание не пустое выделяем красным цветом
  if odsListT080_REM.AsString <> '' then
    VColor := clRed
  else
    VColor := xxxDBGrid.Font.Color;

  VBackColor := Column.Color;

  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
    begin
    if xxxDBGrid.SelectedRows.CurrentRowSelected then
      begin
      if gdSelected in State then
	begin
	xxxDBGrid.Canvas.Brush.Color := clBlue;
	xxxDBGrid.Canvas.Font.Color := VBackColor;
	end
      else
	begin
	xxxDBGrid.Canvas.Brush.Color := VBackColor;
	xxxDBGrid.Canvas.Font.Color := clBlue;
	end;
      end
    else
      begin
      if gdSelected in State then
	begin
	xxxDBGrid.Canvas.Brush.Color := VColor;
	xxxDBGrid.Canvas.Font.Color := VBackColor;
	end
      else
	begin
	xxxDBGrid.Canvas.Brush.Color := VBackColor;
	xxxDBGrid.Canvas.Font.Color := VColor;
	end;
      end;
    end;

  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
