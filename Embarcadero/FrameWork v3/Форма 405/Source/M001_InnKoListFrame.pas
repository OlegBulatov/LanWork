unit M001_InnKoListFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, fm033_PeriodFilterFrame, xxxDbLookupCheckCombo,
  fm002_EditFrame, Mask, ToolEdit, RxLookup, Variants, RxToolEdit,
  System.Actions;

type
  TM001_InnKoList = class(TfmFilteredGrid)
    cbPeriod: TCheckBox;
    lcbDateFrom: TxxxDBLookupCheckCombo;
    Label1: TLabel;
    Label2: TLabel;
    lcbDateTo: TxxxDBLookupCheckCombo;
    odsDateFrom: TOracleDataSet;
    dsDateFrom: TDataSource;
    odsDateFromDATE_FROM: TDateTimeField;
    odsDateTo: TOracleDataSet;
    dsDateTo: TDataSource;
    odsDateToDATE_TO: TDateTimeField;
    cbRegn: TCheckBox;
    cbShowFils: TCheckBox;
    cbShowActive: TCheckBox;
    cbShowDiffs: TCheckBox;
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
    odsListT183_IS_NKO: TStringField;
    odsListT183_IS_FIL: TIntegerField;
    odsListBIC: TStringField;
    odsListNAME_P: TStringField;
    odsListADR: TStringField;
    odsListERR_CODES: TStringField;
    odsListERR_DESC: TStringField;
    odsListHAS_DIFFS: TFloatField;
    lceRegn: TRxLookupEdit;
    odsRegn: TOracleDataSet;
    dsRegn: TDataSource;
    ToolButton1: TToolButton;
    actCheck: TAction;
    oqCheck: TOracleQuery;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    actChanges: TAction;
    odsListHAS_CHANGES: TFloatField;
    odsListHAS_ERRORS: TFloatField;
    odsListT183_COMMENT: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbShowFilsClick(Sender: TObject);
    procedure lceRegnCloseUp(Sender: TObject);
    procedure actCheckExecute(Sender: TObject);
    procedure actChangesUpdate(Sender: TObject);
    procedure actChangesExecute(Sender: TObject);
    procedure actCheckUpdate(Sender: TObject);
  private
    FRegn: string;

    FCheckInProgress: boolean;
  protected
    function GetKeyFieldName: string; override;

    procedure InitPeriodFilter;

    procedure SetConditions; override;

    function GetMatrixAddName: string; override;
    function GetMatrixUpdName: string; override;
    function GetMatrixDelName: string; override;

    procedure DoInsert; override;
    procedure DoDelete; override;
    procedure DoEdit; override;

  public
    procedure InitFrame(Sender: TObject); override;

    function GetEditClass: TfmEditClass; override;
  end;

var
  M001_InnKoList: TM001_InnKoList;

implementation

uses
  A00_MatrixConst, M001_InnKoEditFrame, M001_InnKoHistoryForm, Matrix,
  dm005_MainData;

{$R *.DFM}

{ TM001_InnKoList }

procedure TM001_InnKoList.InitFrame(Sender: TObject);
begin
  FCheckInProgress := False;

  // Период
  InitPeriodFilter;
  cbPeriod.Checked := True;

  // REGN
  odsRegn.Close;
  odsRegn.Open;
  lceRegn.LookupValue := odsRegn.Fields[0].AsString;
//  lceRegn.PopupOnlyLocate := False;


  inherited;
end;

procedure TM001_InnKoList.InitPeriodFilter;
var
  vDateFrom: Variant;
  vDateTo: Variant;
begin
  vDateFrom := lcbDateFrom.KeyValue;
  odsDateFrom.Close;
  odsDateFrom.Open;
  if not VarIsNull(vDateFrom) then
    lcbDateFrom.KeyValue := vDateFrom
  else
    begin
    odsDateFrom.Last;
    lcbDateFrom.KeyValue := odsDateFromDATE_FROM.Value;
    end;

  vDateTo := lcbDateTo.KeyValue;
  odsDateTo.Close;
  odsDateTo.Open;
  if not VarIsNull(vDateTo) then
    lcbDateTo.KeyValue := vDateTo
  else
    begin
    odsDateTo.Last;
    lcbDateTo.KeyValue := odsDateToDATE_TO.Value;
    end;
end;

procedure TM001_InnKoList.SetConditions;
var
  vDateSeparator: Char;
  vShortDateFormat: string;
begin
  // период
  VDataSet.Conditions.ClearFor('T183_DATE_START');
  VDataSet.Conditions.ClearFor('T183_DATE_END');
  if cbPeriod.Checked then
    begin
    vDateSeparator := FormatSettings.DateSeparator;
    FormatSettings.DateSeparator := '.';
    vShortDateFormat := FormatSettings.ShortDateFormat;
    FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
    VDataSet.Conditions.AddDateEqualOrMore('T183_DATE_START', StrToDate(lcbDateFrom.KeyValue));
    VDataSet.Conditions.AddDateEqualOrLess('T183_DATE_END', StrToDate(lcbDateTo.KeyValue));
    FormatSettings.DateSeparator := vDateSeparator;
    FormatSettings.ShortDateFormat := vShortDateFormat;
    end;

  // рег. номер
  VDataSet.Conditions.ClearFor('T183_REGN');
  if cbRegn.Checked then
    begin
    if lceRegn.Text <> FRegn then
      VDataSet.Conditions.AddLikeFilter('T183_REGN', '%' + lceRegn.Text + '%')
    else
      VDataSet.Conditions.AddLikeFilter('T183_REGN', lceRegn.LookupValue);
    end;

  // Показывать филиалы
  VDataSet.Conditions.ClearFor('T183_IS_FIL');
  if cbShowFils.Checked = False then
    VDataSet.Conditions.AddFilter01('T183_IS_FIL', 0);

  // Только действующие КО
  VDataSet.Conditions.ClearFor('T183_ACTIVE');
  if cbShowActive.Checked then
    VDataSet.Conditions.AddFilter01('T183_ACTIVE', 1);

  // Только различные с ДИТ записи
  VDataSet.Conditions.ClearFor('HAS_DIFFS');
  if cbShowDiffs.Checked then
    VDataSet.Conditions.AddFilter01('HAS_DIFFS', 1);

  inherited;
end;

function TM001_InnKoList.GetKeyFieldName: string;
begin
  Result := 'T183_ID';
end;

function TM001_InnKoList.GetMatrixAddName: string;
begin
  Result := ADD_INN_KO;
end;

function TM001_InnKoList.GetMatrixUpdName: string;
begin
  Result := CHANGE_INN_KO;
end;

function TM001_InnKoList.GetMatrixDelName: string;
begin
  Result := DELETE_INN_KO;
end;

function TM001_InnKoList.GetEditClass: TfmEditClass;
begin
  Result := TM001_InnKoEdit;
end;

procedure TM001_InnKoList.DoInsert;
begin
  oqAdd.SetVariable('T183_DATE_START', odsList['T183_DATE_START']);
  oqAdd.SetVariable('T183_DATE_END', odsList['T183_DATE_END']);
  oqAdd.SetVariable('T183_REGN', odsList['T183_REGN']);
  oqAdd.SetVariable('T183_INN', odsList['T183_INN']);
  oqAdd.SetVariable('T183_SHORT_NAME', odsList['T183_SHORT_NAME']);
  oqAdd.SetVariable('T183_BIC', odsList['T183_BIC']);
  oqAdd.SetVariable('T183_CITY', odsList['T183_CITY']);
  oqAdd.SetVariable('T183_ADDRESS', odsList['T183_ADDRESS']);
  oqAdd.SetVariable('T183_ACTIVE', odsList['T183_ACTIVE']);
  oqAdd.SetVariable('T183_IS_NKO', odsList['T183_IS_NKO']);
  oqAdd.SetVariable('T183_COMMENT', odsList['T183_COMMENT']);
  oqAdd.SetVariable('USER', dmMain.GetUser);

  oqAdd.Execute;
  odsList['T183_ID'] := oqAdd.GetVariable('T183_ID');

  InitPeriodFilter;
end;

procedure TM001_InnKoList.DoEdit;
begin
  oqUpdate.SetVariable('T183_ID', odsList['T183_ID']);
  oqUpdate.SetVariable('T183_DATE_START', odsList['T183_DATE_START']);
  oqUpdate.SetVariable('T183_DATE_END', odsList['T183_DATE_END']);
  oqUpdate.SetVariable('T183_INN', odsList['T183_INN']);
  oqUpdate.SetVariable('T183_SHORT_NAME', odsList['T183_SHORT_NAME']);
  oqUpdate.SetVariable('T183_BIC', odsList['T183_BIC']);
  oqUpdate.SetVariable('T183_CITY', odsList['T183_CITY']);
  oqUpdate.SetVariable('T183_ADDRESS', odsList['T183_ADDRESS']);
  oqUpdate.SetVariable('T183_ACTIVE', odsList['T183_ACTIVE']);
  oqUpdate.SetVariable('T183_IS_NKO', odsList['T183_IS_NKO']);
  oqUpdate.SetVariable('T183_COMMENT', odsList['T183_COMMENT']);
  oqUpdate.SetVariable('USER', dmMain.GetUser);

  oqUpdate.Execute;

  InitPeriodFilter;
end;

procedure TM001_InnKoList.DoDelete;
begin
  oqDelete.SetVariable('T183_ID', odsListT183_ID.AsFloat);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
// FT183_ID := odsListT183_ID.AsFloat;
  InitPeriodFilter;
end;

procedure TM001_InnKoList.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if odsListT183_IS_FIL.AsFloat = 0 then
    begin
    xxxDbGrid.Canvas.Brush.Color := RGB(255,255,245);
    if gdSelected in State then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end
  else
    begin
    xxxDbGrid.Canvas.Brush.Color := RGB(245,255,245);
    if gdSelected in State then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end;

  if (odsListERR_CODES.AsString <> '') then
    begin
    xxxDbGrid.Canvas.Brush.Color := clYellow;
    if (gdSelected in State) then
      xxxDbGrid.Canvas.Font.Color := clBlack;
    end;

  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TM001_InnKoList.cbShowFilsClick(Sender: TObject);
begin
  odsRegn.Close;
  odsRegn.SetVariable('SHOW_FILS', Integer(cbShowFils.Checked));
  odsRegn.Open;
end;

procedure TM001_InnKoList.lceRegnCloseUp(Sender: TObject);
begin
  FRegn := lceRegn.LookupValue;
end;

procedure TM001_InnKoList.actCheckUpdate(Sender: TObject);
var
  vEnabled: boolean;
begin
  vEnabled := (FCheckInProgress = False) and (odsListHAS_ERRORS.AsFloat = 0);
  if dmMain.UseMatrix then
    actCheck.Enabled := vEnabled and Matrix.MA.IsOperationPermitted(REPLACE_INN_KO, FALSE)
  else
    actCheck.Enabled := vEnabled;  
end;

procedure TM001_InnKoList.actCheckExecute(Sender: TObject);
var
  vCursor: TCursor;
begin
  FCheckInProgress := True;
  actCheck.Enabled := False;
  vCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  try
    if cbPeriod.Checked then
      begin
      oqCheck.SetVariable('DATE_FROM', lcbDateFrom.KeyValue);
      oqCheck.SetVariable('DATE_TO', lcbDateTo.KeyValue);
      end
    else
      begin
      oqCheck.SetVariable('DATE_FROM', Null);
      oqCheck.SetVariable('DATE_TO', Null);
      end;
    oqCheck.Execute;
  finally
    Screen.Cursor := vCursor;
    FCheckInProgress := False;
  end;
end;

procedure TM001_InnKoList.actChangesUpdate(Sender: TObject);
begin
  actChanges.Enabled := not odsList.IsEmpty and
                       (odsListHAS_CHANGES.AsFloat <> 0);
end;

procedure TM001_InnKoList.actChangesExecute(Sender: TObject);
var
  vForm: TM001_InnKoHistoryList;
begin
  vForm := TM001_InnKoHistoryList.Create(Self, odsListT183_ID.AsFloat);
  vForm.ShowModal;
  vForm.Free;
end;

end.
