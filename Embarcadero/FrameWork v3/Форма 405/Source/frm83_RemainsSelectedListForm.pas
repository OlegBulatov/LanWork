unit frm83_RemainsSelectedListForm;

interface

uses
  frm04_ListForm, frm80_CalcRemainsForm, Db, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows,
  frm00_ParentForm;
//  Messages, SysUtils, Dialogs,
//  , frm04_EditForm,
//  frm04_TabListForm;

type
  Tfrm83_RemainsSelectedList = class(Tfrm04_List, TCalcStepPage)
    odsListT030_ID: TFloatField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT031_NOMINAL: TFloatField;
    odsListPREV_COUNT_REMAIN: TFloatField;
    odsListPREV_MARKET_REMAIN: TFloatField;
    odsListPREV_NOMINAL_REMAIN: TFloatField;
    odsListQUARTAL_PRICE: TFloatField;
    odsListCOUNT_SALDO: TFloatField;
    odsListMARKET_SALDO: TFloatField;
    odsListNOMINAL_SALDO: TFloatField;
    odsListCOUNT_REMAIN: TFloatField;
    odsListMARKET_REMAIN: TFloatField;
    odsListNOMINAL_REMAIN: TFloatField;
    odsListT095_FLAG: TStringField;
    ToolButton9: TToolButton;
    actShowMarket: TAction;
    ToolButton11: TToolButton;
    actShowNom: TAction;
    ToolButton12: TToolButton;
    odsListUSD_ALL_PEREOC: TFloatField;
    odsListUSD_BUM_PEREOC: TFloatField;
    odsListUSD_SUM_PEREOC: TFloatField;
    odsListUSD_ALL_NOM_PEREOC: TFloatField;
    odsListUSD_BUM_NOM_PEREOC: TFloatField;
    odsListUSD_SUM_NOM_PEREOC: TFloatField;
    odsListCOUPON_NOM_PAYMENT: TFloatField;
    odsListKORPUS_NOM_PAYMENT: TFloatField;
    odsListKORPUS_COUNT_PAYMENT: TFloatField;
    odsListCALC_PROC: TFloatField;
    odsListT028_INN: TStringField;
    odsListPREV_T095_FLAG: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actShowMarketExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actShowNomExecute(Sender: TObject);
    procedure actEditAttributesExecute(Sender: TObject);
  private
    { Private declarations }
    FT030_ID: Double;
    function GetT030_ID: Double;
  protected
	  //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    //
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    procedure RefreshAfterListChange; override;
    //
    property T030_ID: Double read GetT030_ID;
  end;

var
  frm83_RemainsSelectedList: Tfrm83_RemainsSelectedList;

implementation

uses Graphics, frm01_MainForm;

//uses Matrix, dm005_MainData;

{$R *.DFM}

{ Tfrm83_RemainsSelectedList }

procedure Tfrm83_RemainsSelectedList.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Applied := True;
end;

procedure Tfrm83_RemainsSelectedList.DoOnShowPage(const AMainForm: TForm);
begin
  // смотрим данные
  RefreshAfterListChange;
end;

class function Tfrm83_RemainsSelectedList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_RemainsSelectedList;
end;

class function Tfrm83_RemainsSelectedList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_RemainsSelectedList;
end;

class procedure Tfrm83_RemainsSelectedList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm83_RemainsSelectedList) := AForm;
end;

procedure Tfrm83_RemainsSelectedList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T027_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);
  //DataSet.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm83_RemainsSelectedList.RefreshAfterListChange;
begin
  RefreshData('T030_ID', FT030_ID);
end;

procedure Tfrm83_RemainsSelectedList.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
  VColor: TColor;
  VBackColor: TColor;
begin
  if (odsListT095_FLAG.AsString = '1') then
  begin
    VColor := clBlue;   // clPurple
  end else
  begin
    VColor := xxxDBGrid.Font.Color;
  end;

  VBackColor := Column.Color;

  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
  begin
    if xxxDBGrid.SelectedRows.CurrentRowSelected then
    begin
      if gdSelected in State then
      begin
        xxxDBGrid.Canvas.Brush.Color := clBlue;
        xxxDBGrid.Canvas.Font.Color := VBackColor;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := VBackColor;
        xxxDBGrid.Canvas.Font.Color := clBlue;
      end;
    end else
    begin
      if gdSelected in State then
      begin
        xxxDBGrid.Canvas.Brush.Color := VColor;
        xxxDBGrid.Canvas.Font.Color := VBackColor;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := VBackColor;
        xxxDBGrid.Canvas.Font.Color := VColor;
      end;
    end;
  end;
  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if (Column.Field.FieldName = 'T095_FLAG') then
  begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(
      xxxDBGrid.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      DFCS_BUTTONCHECK or
      VState[Column.Field.AsString = '1'] or
      DFCS_FLAT
      );
  end;

  if (Column.Field.FieldName = 'PREV_T095_FLAG') then
  begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(
      xxxDBGrid.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      DFCS_BUTTONCHECK or
      VState[Column.Field.AsString = '1'] or
      DFCS_FLAT
      );
  end;

end;

procedure Tfrm83_RemainsSelectedList.actShowMarketExecute(Sender: TObject);
const
  CCOLUMNS: array[0..5] of integer = (7, 11, 17, 19, 21, 24);
var
  I: Integer;
begin
  for I := 0 to 5 do
  begin
    xxxDBGrid.Columns[CCOLUMNS[I]].Visible := not xxxDBGrid.Columns[CCOLUMNS[I]].Visible;
    if xxxDBGrid.Columns[CCOLUMNS[I]].Visible then
    begin
      xxxDBGrid.Columns[CCOLUMNS[I]].Width := 48;
    end;
  end;
end;

procedure Tfrm83_RemainsSelectedList.actShowNomExecute(Sender: TObject);
const
  CCOLUMNS: array[0..5] of integer = (8, 12, 18, 20, 22, 25);
var
  I: Integer;
begin
  for I := 0 to 5 do
  begin
    xxxDBGrid.Columns[CCOLUMNS[I]].Visible := not xxxDBGrid.Columns[CCOLUMNS[I]].Visible;
    if xxxDBGrid.Columns[CCOLUMNS[I]].Visible then
    begin
      xxxDBGrid.Columns[CCOLUMNS[I]].Width := 48;
    end;
  end;
end;

procedure Tfrm83_RemainsSelectedList.FormCreate(Sender: TObject);
begin
  inherited;

  // скрываем номинальную и рыночную стоимость
  actShowNomExecute(nil);
  actShowMarketExecute(nil);
end;

procedure Tfrm83_RemainsSelectedList.actEditAttributesExecute(Sender: TObject);
begin
  frm01_Main.FindMainEmissInQuartal(
    Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID1,
    Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID2,
    odsListT030_ID.AsFloat
    );
end;

function Tfrm83_RemainsSelectedList.GetT030_ID: Double;
begin
  Result := odsListT030_ID.AsFloat;
end;

end.
