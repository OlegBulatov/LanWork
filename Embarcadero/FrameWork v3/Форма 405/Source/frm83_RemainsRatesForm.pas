unit frm83_RemainsRatesForm;

interface

uses
  frm04_ListForm, frm80_CalcRemainsForm, Db, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows,
  frm00_ParentForm;

type
  Tfrm83_RemainsRates = class(Tfrm04_List, TCalcStepPage)
    odsListT030_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT031_CURRENCY: TStringField;
    odsListT031_NOMINAL_PREV: TFloatField;
    odsListT031_NOMINAL: TFloatField;
    odsListT121_NKD_PREV: TFloatField;
    odsListT121_NKD: TFloatField;
    odsListT095_MRATE_PREV: TFloatField;
    odsListT095_MRATE: TFloatField;
    odsListEX_DIV_CORR_PREV: TFloatField;
    odsListEX_DIV_CORR: TFloatField;
    odsListPRICE_PREV: TFloatField;
    odsListPRICE: TFloatField;
    odsListT095_MARKET_RATE_PREV: TFloatField;
    odsListT095_MARKET_RATE: TFloatField;
    odsListT095_MRATE_PREV_COMMENT: TStringField;
    odsListT095_MRATE_COMMENT: TStringField;
    odsListT028_INN: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    FT030_ID: Double;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    { Public declarations }
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    procedure RefreshAfterListChange; override;
  end;

var
  frm83_RemainsRates: Tfrm83_RemainsRates;

implementation

uses Graphics;

{$R *.DFM}

{ Tfrm83_RemainsRates }

class function Tfrm83_RemainsRates.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_RemainsRates;
end;

class function Tfrm83_RemainsRates.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_RemainsRates;
end;

class procedure Tfrm83_RemainsRates.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm83_RemainsRates) := AForm;
end;

procedure Tfrm83_RemainsRates.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Applied := True;
end;

procedure Tfrm83_RemainsRates.DoOnShowPage(const AMainForm: TForm);
begin

  // смотрим данные
  RefreshAfterListChange;
end;

procedure Tfrm83_RemainsRates.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T027_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm83_RemainsRates.RefreshAfterListChange;
begin
  RefreshData('T030_ID', FT030_ID);
end;

procedure Tfrm83_RemainsRates.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  VColor: TColor;
  VBackColor: TColor;
begin
  // если нет рыночных котировок выделяем красным цветом
  if odsListT095_MARKET_RATE.AsFloat = 0 then
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
