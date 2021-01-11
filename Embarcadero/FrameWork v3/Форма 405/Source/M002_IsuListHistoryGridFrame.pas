unit M002_IsuListHistoryGridFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid;

type
  TM002_IsuListHistoryGrid = class(TfmGrid)
    odsListT185_ID: TFloatField;
    odsListT185_ISSUER_NAME: TStringField;
    odsListT185_ISU_NAME: TStringField;
    odsListT185_MASTER_COMPANY_NAME: TStringField;
    odsListT185_MASTER_COMPANY_LIC: TStringField;
    odsListT185_MASTER_COMPANY_INN: TStringField;
    odsListT037_ID: TFloatField;
    odsListT185_ISSUER_TYPE: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT185_SEC_REGN: TStringField;
    odsListT185_REG_DATE: TDateTimeField;
    odsListT185_MASTER_CHANGE_DATE: TDateTimeField;
    odsListT185_ANNUAL_DATE: TDateTimeField;
    odsListT185_CURRENCY: TStringField;
    odsListT185_ACTUAL_BANK: TIntegerField;
    odsListT185_DATA_CHANGE_DATE: TDateTimeField;
    odsListT185_CHANGE_DATE: TDateTimeField;
    odsListT185_CHANGE_USER: TStringField;
    odsListT185_IS_DELETED: TFloatField;
    odsListT185_DATA_TYPE: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    FT185_ID: Double;
    procedure InitFrame(Sender: TObject); override;
  end;

var
  M002_IsuListHistoryGrid: TM002_IsuListHistoryGrid;

implementation

{$R *.DFM}

{ TM002_IsuListHistoryGrid }

procedure TM002_IsuListHistoryGrid.InitFrame(Sender: TObject);
begin
  odsList.SetVariable('T185_ID', FT185_ID);
  inherited;
end;

procedure TM002_IsuListHistoryGrid.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if odsListT185_DATA_TYPE.AsString = 'D' then
    begin
//    xxxDbGrid.Canvas.Brush.Color := RGB(255,255,245);
    xxxDbGrid.Canvas.Brush.Color := $00CCEEFF;
    if gdSelected in State then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end
  else if odsListT185_DATA_TYPE.AsString = 'H' then
    begin
//    xxxDbGrid.Canvas.Brush.Color := RGB(245,255,245);
    xxxDbGrid.Canvas.Brush.Color := $00CCEECC;
    if gdSelected in State then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end;

  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
