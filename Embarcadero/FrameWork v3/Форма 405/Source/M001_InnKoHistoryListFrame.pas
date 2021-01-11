unit M001_InnKoHistoryListFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid;

type
  TM001_InnKoHistoryGrid = class(TfmGrid)
    odsListT183_ID: TFloatField;
    odsListT183_DATE_START: TDateTimeField;
    odsListT183_DATE_END: TDateTimeField;
    odsListT183_INN: TStringField;
    odsListT183_SHORT_NAME: TStringField;
    odsListT183_REGN: TStringField;
    odsListT183_ACTIVE: TStringField;
    odsListT183_BIC: TStringField;
    odsListT183_CITY: TStringField;
    odsListT183_ADDRESS: TStringField;
    odsListT183_IS_FIL: TIntegerField;
    odsListT183_IS_NKO: TStringField;
    odsListT183_CHANGE_DATE: TDateTimeField;
    odsListT183_DATA_TYPE: TStringField;
    odsListT183_CHANGE_USER: TStringField;
    odsListT183_COMMENT: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    FT183_ID: Double;
    procedure InitFrame(Sender: TObject); override;
  end;

var
  M001_InnKoHistoryGrid: TM001_InnKoHistoryGrid;

implementation

{$R *.DFM}

{ TM001_InnKoHistoryGrid }

procedure TM001_InnKoHistoryGrid.InitFrame(Sender: TObject);
begin
  odsList.SetVariable('T183_ID', FT183_ID);
  inherited;
end;

procedure TM001_InnKoHistoryGrid.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if odsListT183_DATA_TYPE.AsString = 'D' then
    begin
    xxxDbGrid.Canvas.Brush.Color := RGB(255,255,245);
    if gdSelected in State then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end
  else if odsListT183_DATA_TYPE.AsString = 'H' then
    begin
    xxxDbGrid.Canvas.Brush.Color := RGB(245,255,245);
    if gdSelected in State then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end;

  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
