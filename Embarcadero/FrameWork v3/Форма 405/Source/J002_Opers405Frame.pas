unit J002_Opers405Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  fm005_GridFrame, StdCtrls, System.Actions;

type
  TJ002_Opers405 = class(TfmFilteredGrid)
    odsListT002_BANK_CODE: TStringField;
    odsListT001_DATE_OP: TDateTimeField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT010_ISIN: TStringField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT010_ISIN_MAIN: TStringField;
    odsListT026_SEC_REGN: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT001_OP_TYPE_ID: TFloatField;
    odsListT001_OP_COUNT: TFloatField;
    odsListT001_OP_CR_ID: TStringField;
    odsListT001_OP_PAY_ID: TStringField;
    odsListRESID_NAME: TStringField;
    odsListNRESID_NAME: TStringField;
    odsListRESID_NAME_MAIN: TStringField;
    odsListNRESID_NAME_MAIN: TStringField;
    f_OpDateFrom: TDateTimePicker;
    f_Bank: TEdit;
    cb_Isin: TCheckBox;
    f_Isin: TEdit;
    cb_SecType: TCheckBox;
    f_SecType: TEdit;
    cb_OpType: TCheckBox;
    f_OpType: TEdit;
    cb_OpCount: TCheckBox;
    f_OpCount: TEdit;
    cb_Currency: TCheckBox;
    f_Currency: TEdit;
    cb_OpSum: TCheckBox;
    f_OpSum: TEdit;
    odsListT001_OP_SUM: TFloatField;
    odsListT001_OP_SUM_CROSS: TFloatField;
    cb_OpDir: TCheckBox;
    f_OpDir: TEdit;
    oqDivider: TOracleQuery;
    cb_Bank: TCheckBox;
    cb_OpDate: TCheckBox;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    actLink: TAction;
    actUnlink: TAction;
    oqLink: TOracleQuery;
    odsListT001_ID: TFloatField;
    oqUnLink: TOracleQuery;
    odsListLINKS_1: TFloatField;
    odsListLINKS_2: TFloatField;
    odsLinks: TOracleDataSet;
    f_OpDateTo: TDateTimePicker;
    Label1: TLabel;
    cbNotFilter: TCheckBox;
    procedure cb_SecTypeClick(Sender: TObject);
    procedure cb_IsinClick(Sender: TObject);
    procedure cb_OpTypeClick(Sender: TObject);
    procedure cb_OpCountClick(Sender: TObject);
    procedure cb_CurrencyClick(Sender: TObject);
    procedure cb_OpSumClick(Sender: TObject);
    procedure cb_OpDirClick(Sender: TObject);
    procedure cb_BankClick(Sender: TObject);
    procedure cb_OpDateClick(Sender: TObject);
    procedure actLinkUpdate(Sender: TObject);
    procedure actLinkExecute(Sender: TObject);
    procedure actUnlinkUpdate(Sender: TObject);
    procedure actUnlinkExecute(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure odsListAfterScroll(DataSet: TDataSet);
  private
    FOracleDivider: string;
  protected
    function GetKeyFieldName: string; override;
  public
    FCanSelect: Boolean;
    FT174_ID: Double;
    FT001_ID_1: Double;
    FT001_ID_2: Double;
    FT001_ID_H1: Double;
    FT001_ID_H2: Double;
    //
    procedure RefreshData; override;
    procedure InitFrame(Sender: TObject); override;
  end;

var
  J002_Opers405: TJ002_Opers405;

implementation

uses J002_OpersFrame;

{$R *.DFM}

{ TJ002_Opers405 }

procedure TJ002_Opers405.RefreshData;
const
  vIsinFilter: string = 'and ''%s'' = case' + #13#10 +
                                       'when NVL(T027_SEC_TYPE_MAIN, T027_SEC_TYPE) LIKE ''DR%%'' then NVL(T026_SEC_REGN_MAIN, T026_SEC_REGN)' + #13#10 +
                                       'else NVL(T010_ISIN_MAIN, T010_ISIN)' + #13#10 +
                                     'end';
var
  vT001_IDs: string;
begin
  if FCanSelect = False then Exit;

  odsList.Close;

  odsList.SetVariable('OP_DATE_FROM', f_OpDateFrom.Date);
  odsList.SetVariable('OP_DATE_TO', f_OpDateTo.Date);

  if (cb_Bank.Checked) and (f_Bank.Text <> '') then
    odsList.SetVariable('BANK_FILTER', 'and T002_BANK_CODE = ''' + f_Bank.Text + '''')
  else
    odsList.SetVariable('BANK_FILTER', ' ');

  if (cb_Isin.Checked) and (f_Isin.Text <> '') then
    odsList.SetVariable('ISIN_FILTER', Format(vIsinFilter, [f_Isin.Text]))
  else
    odsList.SetVariable('ISIN_FILTER', ' ');

  if (cb_SecType.Checked) and (f_SecType.Text <> '') then
    begin
    if f_SecType.Text = 'DR' then
      odsList.SetVariable('SEC_TYPE_FILTER', 'and NVL(T027_SEC_TYPE_MAIN, T027_SEC_TYPE) LIKE ''DR%%''')
    else
      odsList.SetVariable('SEC_TYPE_FILTER', 'and NVL(T027_SEC_TYPE_MAIN, T027_SEC_TYPE) = ''' + f_SecType.Text + '''');
    end
  else
    odsList.SetVariable('SEC_TYPE_FILTER', ' ');

  if (cb_OpType.Checked) and (f_OpType.Text <> '') then
    odsList.SetVariable('OP_TYPE_FILTER', 'and T001_OP_TYPE_ID = DECODE(''' + Copy(f_OpType.Text, 1, Pos('(',f_OpType.Text)-2) + ''', ''BS'', 11, ''EXCHANGE'', 21, NULL)')
  else
    odsList.SetVariable('OP_TYPE_FILTER', ' ');

  if (cb_OpDir.Checked) and (f_OpDir.Text <> '') then
    odsList.SetVariable('OP_DIR_FILTER', 'and T001_OP_PAY_ID = DECODE(''' + Copy(f_OpDir.Text, 1, Pos('(',f_OpDir.Text)-2) + ''', ''B'', ''INR'', ''S'', ''OUTR'', NULL)')
  else
    odsList.SetVariable('OP_DIR_FILTER', ' ');

  if (cb_OpCount.Checked) and (f_OpCount.Text <> '') then
    odsList.SetVariable('OP_COUNT_FILTER', 'and T001_OP_COUNT = NVL(' + f_OpCount.Text + ',0)')
  else
    odsList.SetVariable('OP_COUNT_FILTER', ' ');

  if (cb_Currency.Checked) and (f_Currency.Text <> '') then
    odsList.SetVariable('OP_CURRENCY_FILTER', 'and T001_OP_CR_ID = ' + f_Currency.Text)
  else
    odsList.SetVariable('OP_CURRENCY_FILTER', ' ');

  if (cb_OpSum.Checked) and (f_OpSum.Text <> '') then
    begin
    f_OpSum.Text := StringReplace(f_OpSum.Text, '.', FOracleDivider, [rfReplaceAll]);
    f_OpSum.Text := StringReplace(f_OpSum.Text, ',', FOracleDivider, [rfReplaceAll]);
    odsList.SetVariable('OP_SUM_FILTER', 'and T001_OP_SUM = ROUND(NVL(''' + f_OpSum.Text + ''',0), 2)')
    end
  else
    odsList.SetVariable('OP_SUM_FILTER', ' ');

  // нужно показать все прив€занные к данной операции 417 операции 405, независимо от вышеперечисленных фильтров
  if ((FT001_ID_H1 <> 0) or (FT001_ID_H2 <> 0)) then // есть ручные прив€зки
    begin
    TJ002_Opers(Owner).odsLinks.First;
    vT001_IDs := '';
    while not TJ002_Opers(Owner).odsLinks.Eof do
      begin
      if vT001_IDs <> '' then
        vT001_IDs := vT001_IDs + ',';
      vT001_IDs := vT001_IDs + TJ002_Opers(Owner).odsLinksT001_ID.AsString;
      TJ002_Opers(Owner).odsLinks.Next;
      end;
    odsList.SetVariable('T001_ID_FILTER', 'or T001_ID IN (' + vT001_IDs + ')'); 
    end
  else
    odsList.SetVariable('T001_ID_FILTER', ' ');


  // добавл€ем локальные услови€ фильтра
  SetConditions;

  // получаем данные
  odsList.Open;
end;

procedure TJ002_Opers405.cb_OpDateClick(Sender: TObject);
begin
  if cb_OpDate.Checked = False then
    begin
    f_OpDateFrom.Date := TJ002_Opers(Owner).odsListT174_PAY_DATE_SRC.AsDateTime - 6;
    f_OpDateTo.Date   := TJ002_Opers(Owner).odsListT174_PAY_DATE_SRC.AsDateTime + 6;
    end
  else
    begin
    f_OpDateFrom.Date := TJ002_Opers(Owner).odsListT174_PAY_DATE_SRC.AsDateTime;
    f_OpDateTo.Date   := TJ002_Opers(Owner).odsListT174_PAY_DATE_SRC.AsDateTime;
    end;
  RefreshData;
end;

procedure TJ002_Opers405.cb_BankClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TJ002_Opers405.cb_SecTypeClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TJ002_Opers405.cb_IsinClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TJ002_Opers405.cb_OpTypeClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TJ002_Opers405.cb_OpDirClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TJ002_Opers405.cb_OpCountClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TJ002_Opers405.cb_CurrencyClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TJ002_Opers405.cb_OpSumClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TJ002_Opers405.InitFrame(Sender: TObject);
begin
  oqDivider.Execute;
  FOracleDivider := oqDivider.Field(0);
  inherited;
end;

procedure TJ002_Opers405.actLinkUpdate(Sender: TObject);
begin
  actLink.Enabled := not odsList.IsEmpty and ((FT001_ID_H1 = 0) and (FT001_ID_H2 = 0));
end;

procedure TJ002_Opers405.actLinkExecute(Sender: TObject);
var
  vCursor: TCursor;
  bm417: TBookmark;
  bm405: TBookmark;
  i, j: integer;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  try
    // бежим по выделенным запис€м ф417
    TJ002_Opers(Owner).odsList.DisableControls;
    odsList.DisableControls;
    bm417 := TJ002_Opers(Owner).odsList.GetBookmark;
    bm405 := odsList.GetBookmark;
    if TJ002_Opers(Owner).xxxDBGrid.SelectedRows.Count = 0 then
      TJ002_Opers(Owner).xxxDBGrid.SelectedRows.CurrentRowSelected := True;
    if xxxDBGrid.SelectedRows.Count = 0 then
      xxxDBGrid.SelectedRows.CurrentRowSelected := True;
    try
      for i := 0 to TJ002_Opers(Owner).xxxDBGrid.SelectedRows.Count -1 do
        begin
        TJ002_Opers(Owner).odsList.GotoBookmark(TJ002_Opers(Owner).xxxDBGrid.SelectedRows.Items[i]);
        // бежим по выделенным запис€м ф405
        for j := 0 to xxxDBGrid.SelectedRows.Count -1 do
          begin
          odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[j]);

          oqLink.SetVariable('T174_ID', TJ002_Opers(Owner).odsListT174_ID.AsFloat);
          oqLink.SetVariable('OP_PART', 1); // ѕока только 1-ю часть сделки
          oqLink.SetVariable('T001_ID', odsListT001_ID.AsFLoat);
          oqLink.Execute;
//    TJ002_Opers(Owner).RefreshDataAfterChange;
//    RefreshDataAfterChange;
          end;
        end;
    finally
      xxxDBGrid.SelectedRows.Clear;
      TJ002_Opers(Owner).xxxDBGrid.SelectedRows.Clear;
      odsList.GotoBookmark(bm405);
      odsList.FreeBookmark(bm405);
      TJ002_Opers(Owner).odsList.GotoBookmark(bm417);
      TJ002_Opers(Owner).odsList.FreeBookmark(bm417);
      odsList.EnableControls;
      TJ002_Opers(Owner).odsList.EnableControls;
    end;
  finally
    Screen.Cursor := vCursor;
  end;
    TJ002_Opers(Owner).RefreshDataAfterChange;
    RefreshDataAfterChange;
end;

procedure TJ002_Opers405.actUnlinkUpdate(Sender: TObject);
begin
  actUnLink.Enabled := not odsList.IsEmpty and not odsLinks.IsEmpty; //((FT001_ID_H1 = odsListT001_ID.AsFloat) or (FT001_ID_H2 = odsListT001_ID.AsFloat));
end;

procedure TJ002_Opers405.actUnlinkExecute(Sender: TObject);
var
  vCursor: TCursor;
begin
  vCursor := Screen.Cursor;
  try
    Screen.Cursor := crSQLWait;
    oqUnLink.SetVariable('T174_ID', FT174_ID);
    oqUnLink.SetVariable('OP_PART', 1); // ѕока только 1-ю часть сделки
    oqUnLink.SetVariable('T001_ID', odsListT001_ID.AsFloat);
    oqUnLink.Execute;
    TJ002_Opers(Owner).RefreshDataAfterChange;
    RefreshDataAfterChange;
  finally
    Screen.Cursor := vCursor;
  end;
end;

procedure TJ002_Opers405.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  vFontColor: TColor;
  vBrushColor: TColor;
begin
  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
    begin
    vFontColor := xxxDbGrid.Font.Color;
    vBrushColor := xxxDbGrid.Color;
    // св€зи
    if ((odsListLINKS_1.AsFloat <> 0) or (odsListLINKS_2.AsFloat <> 0)) then
      begin
      vBrushColor := clOlive;
      vFontColor := clWhite;
      end
    else if ((odsListT001_ID.AsFloat = FT001_ID_1) or (odsListT001_ID.AsFloat = FT001_ID_2)) then
      begin
      vBrushColor := clTeal;
      vFontColor := clWhite;
      end;

    if xxxDBGrid.SelectedRows.CurrentRowSelected then
      begin
      if gdSelected in State then
        begin
        xxxDBGrid.Canvas.Brush.Color := clBlue;
        xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
        end
      else
        begin
        xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := clBlue;
        end;
      end
    else
      begin
      if gdSelected in State then
        begin
        xxxDBGrid.Canvas.Brush.Color := vFontColor;
        xxxDBGrid.Canvas.Font.Color := vBrushColor;
        end
      else
        begin
        xxxDBGrid.Canvas.Brush.Color := vBrushColor;
        xxxDBGrid.Canvas.Font.Color := vFontColor;
        end;
      end;
  end;

  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

function TJ002_Opers405.GetKeyFieldName: string;
begin
  Result := 'T001_ID';
end;

procedure TJ002_Opers405.odsListAfterScroll(DataSet: TDataSet);
begin
  odsLinks.Close;
  odsLinks.SetVariable('T174_ID', FT174_ID);
  odsLinks.SetVariable('T001_ID', odsListT001_ID.AsFloat);
  odsLinks.Open;
end;

end.
