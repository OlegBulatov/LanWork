unit M001_LoadPage3GridFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, xxxDbLookupCheckCombo;

type
  TM001_LoadPage3Grid = class(TfmFilteredGrid)
    cbErrorType: TCheckBox;
    lcbErrors: TxxxDBLookupCheckCombo;
    odsErrors: TOracleDataSet;
    dsErrors: TDataSource;
    odsListT184_LINE_NO: TFloatField;
    odsListT184_INN: TStringField;
    odsListT184_SHORT_NAME: TStringField;
    odsListT184_REGN: TStringField;
    odsListT184_ACTIVE: TStringField;
    odsListT184_ERR_DESC: TStringField;
    odsListT184_DATA_ERR: TStringField;
    odsListT184_HAS_ERRORS: TFloatField;
    oqSave2Db: TOracleQuery;
    odsListT184_DATE_START: TStringField;
    odsListT184_DATE_END: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  protected
    procedure SetConditions; override;
  public
    procedure InitFrame(Sender: TObject); override;
    procedure SaveFile2Db;
  end;

var
  M001_LoadPage3Grid: TM001_LoadPage3Grid;

implementation

uses dm005_MainData;

{$R *.DFM}

{ TM001_LoadPage2Grid }

procedure TM001_LoadPage3Grid.InitFrame(Sender: TObject);
begin
  odsErrors.Close;
  odsErrors.Open;
  lcbErrors.SetKeyValuesAll;

  inherited;
end;

procedure TM001_LoadPage3Grid.SaveFile2Db;
var
  vCursor: TCursor;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  try
    oqSave2Db.SetVariable('USER', dmMain.GetUser);
    oqSave2Db.Execute;
  finally
    Screen.Cursor := vCursor;
  end;    
end;

procedure TM001_LoadPage3Grid.SetConditions;
var
  vFilter: string;
  i: integer;
begin
  if cbErrorType.Checked then
    begin
    vFilter := '';
    for i := 0 to lcbErrors.KeyValuesStr.Count-1 do
      begin
      if i = 0 then
        vFilter := 'AND (INSTR(T184_DATA_ERR, ''' + lcbErrors.KeyValuesStr[i] + ''') <> 0'
      else
        vFilter := vFilter + ' OR INSTR(T184_DATA_ERR, ''' + lcbErrors.KeyValuesStr[i] + ''') <> 0'
      end;

    if vFilter <> '' then
      begin
      vFilter := vFilter + ')';
      odsList.SetVariable('ERR_FILTER', vFilter);
      end;
    end
  else
    odsList.SetVariable('ERR_FILTER', ' ');

  inherited;
end;

procedure TM001_LoadPage3Grid.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if (odsListT184_DATA_ERR.AsString <> '') then
    begin
    xxxDbGrid.Canvas.Brush.Color := clYellow;

    if gdSelected in State then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end;

  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
