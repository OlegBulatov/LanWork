unit J002_OpersFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, fm033_PeriodFilterFrame, J002_DataPeriodFilterFrame,
  F003_SecTypeFrame, J002_DgTypeFilterFrame, J002_OpSidesFilterFrame,
  RXSplit, fm004_ListFrame, fm005_GridFrame, J002_Opers405Frame,
  J002_OpTypeFilterFrame, xxxDbLookupCheckCombo, J002_KontrTypeFilterFrame;

type
  TMainFilters = packed record
    IsSaved: boolean;
    PeriodChecked: boolean;
    PeriodFrom: Double;
    PeriodTo: Double;
    SecTypeChecked: boolean;
    SecTypes: TStringList;
    DgTypeChecked: boolean;
    DgTypes: TStringList;
    OpSidesChecked: Boolean;
    OpSides: TFloatArray;
    OpTypeChecked: boolean;
    OpTypes: TStringList;
    ClientTypeChecked: boolean;
    ClientTypes: TStringList;
    KontrTypeChecked: boolean;
    KontrTypes:TStringList;
  end;

  TJ002_Opers = class(TfmFilteredGrid)
    PeriodFilter: TJ002_DataPeriodFilter;
    odsListT174_ID: TFloatField;
    odsListT175_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT055_LONG_NAME: TStringField;
    odsListT175_REPORTER_LONG_NAME: TStringField;
    odsListT175_REPORTER_SHORT_NAME: TStringField;
    odsListT175_REPORTER_INN: TStringField;
    odsListT175_REPORTER_OGRN: TStringField;
    odsListT174_LINE_NO: TStringField;
    odsListT174_INF_ID: TStringField;
    odsListT174_OP_TYPE_CODE: TStringField;
    odsListT174_DG_CODE: TStringField;
    odsListT174_OP_CODE: TStringField;
    odsListT177_NAME: TStringField;
    odsListT174_OP_DIR: TStringField;
    odsListT174_OP_TYPE: TStringField;
    odsListT174_PAY_CODE: TStringField;
    odsListT174_KONTR_INN: TStringField;
    odsListT174_OP_SOURCE: TStringField;
    odsListT174_FAKE_CODE: TStringField;
    odsListT174_FAKE_NAME: TStringField;
    odsListT174_CLIENT_NAME: TStringField;
    odsListT174_CLIENT_CODE_TYPE: TStringField;
    odsListT174_CLIENT_CODE_DESC: TStringField;
    odsListT174_CLIENT_CODE: TStringField;
    odsListT174_CLIENT_COUNTRY: TStringField;
    odsListT174_CLIENT_DEP_NAME: TStringField;
    odsListT174_CLIENT_DEP_COUNTRY: TStringField;
    odsListT174_CLIENT_DEP_CODE: TStringField;
    odsListT174_CLIENT_DEP_NO: TStringField;
    odsListT174_UPPER_DEP_NAME: TStringField;
    odsListT174_KONTR_NAME: TStringField;
    odsListT174_KONTR_CODE_TYPE: TStringField;
    odsListT174_KONTR_CODE_DESC: TStringField;
    odsListT174_KONTR_CODE: TStringField;
    odsListT174_KONTR_COUNTRY: TStringField;
    odsListT174_KONTR_DEP_NAME: TStringField;
    odsListT174_KONTR_DEP_COUNTRY: TStringField;
    odsListT174_KONTR_DEP_CODE: TStringField;
    odsListT174_KONTR_DEP_NO: TStringField;
    odsListT174_ISSUER_NAME: TStringField;
    odsListT174_SEC_TYPE: TStringField;
    odsListT174_ISIN: TStringField;
    odsListT174_ISSUER_COUNTRY: TStringField;
    odsListT174_OP_COUNT: TFloatField;
    odsListT178_CODE: TStringField;
    odsListT178_DESC: TStringField;
    odsListT174_BASE_ACTIVE: TStringField;
    odsListT174_SEC_TYPE_CODE: TStringField;
    odsListT174_INV_CODE: TStringField;
    odsListT174_OP_CURRENCY: TStringField;
    odsListT174_OP_PRICE: TFloatField;
    odsListT174_OP_SUM: TFloatField;
    odsListT174_OP_COUPON_SUM: TFloatField;
    odsListT174_REREG_DATE: TStringField;
    odsListT174_ISSUER_NAME_2: TStringField;
    odsListT174_SEC_TYPE_2: TStringField;
    odsListT174_ISIN_2: TStringField;
    odsListT174_ISSUER_COUNTRY_2: TStringField;
    odsListT174_OP_COUNT_2: TFloatField;
    odsListT178_CODE_2: TStringField;
    odsListT178_DESC_2: TStringField;
    odsListT174_BASE_ACTIVE_2: TStringField;
    odsListT174_SEC_TYPE_CODE_2: TStringField;
    odsListT174_INV_CODE_2: TStringField;
    odsListT174_OP_CURRENCY_2: TStringField;
    odsListT174_OP_PRICE_2: TFloatField;
    odsListT174_OP_SUM_2: TFloatField;
    odsListT174_OP_COUPON_SUM_2: TFloatField;
    odsListT174_REREG_DATE_2: TStringField;
    odsListT174_REC_TYPE: TStringField;
    SecTypeFilter: TF003_SecType;
    DgTypeFilter: TJ002_DgTypeFilter;
    odsListT174_CLIENT_TYPE: TStringField;
    odsListT174_KONTR_TYPE: TStringField;
    odsListT174_OP_PRICE_USD: TFloatField;
    odsListT174_OP_SUM_USD: TFloatField;
    odsListT174_OP_PRICE_USD_2: TFloatField;
    odsListT174_OP_SUM_USD_2: TFloatField;
    OpSidesFilter: TJ002_OpSidesFilter;
    Panel1: TPanel;
    Splitter: TRxSplitter;
    ToolButton2: TToolButton;
    Grid405: TJ002_Opers405;
    odsListT174_OP_SIDES: TFloatField;
    odsListT174_PAY_DATE_SRC: TStringField;
    odsListT174_PAY_DATE: TDateTimeField;
    odsListT174_OP_PERCENT: TFloatField;
    odsListT174_PAY_DATE_2_SRC: TStringField;
    odsListT174_PAY_DATE_2: TDateTimeField;
    odsListIS_LINKED: TStringField;
    OpTypeFilter: TJ002_OpTypeFilter;
    odsListT174_OP_DATE: TDateTimeField;
    odsListT174_OP_DATE_SRC: TStringField;
    odsListT001_ID_1: TFloatField;
    odsListT001_ID_2: TFloatField;
    odsListT001_ID_H1: TFloatField;
    odsListT001_ID_H2: TFloatField;
    odsLinks: TOracleDataSet;
    odsLinksT174_ID: TFloatField;
    odsLinksT001_ID: TFloatField;
    odsLinksT176_PART: TIntegerField;
    odsListT174_ISSUER_INN: TStringField;
    odsListT174_ISSUER_INN_2: TStringField;
    oqInnEdit: TOracleQuery;
    oqInnFind: TOracleQuery;
    odsListT174_ISSUER_INN_SRC: TStringField;
    odsListT174_ISSUER_INN_SRC_2: TStringField;
    gb2: TGroupBox;
    cb_OpDateFrom: TCheckBox;
    f_OpDateFrom: TDateTimePicker;
    f_OpDateTo: TDateTimePicker;
    cb_OpDateTo: TCheckBox;
    Button2: TButton;
    cb_Bank: TCheckBox;
    f_Bank: TEdit;
    cb_OpDir: TCheckBox;
    f_OpDir: TEdit;
    cb_Currency: TCheckBox;
    f_Currency: TEdit;
    cb_OpCount: TCheckBox;
    f_OpCount: TEdit;
    cb_OpSum: TCheckBox;
    f_OpSum: TEdit;
    cb_Isin: TCheckBox;
    f_Isin: TEdit;
    oqGetIsin: TOracleQuery;
    odsListT027_ID: TFloatField;
    odsListT027_ID_2: TFloatField;
    ClientTypeFilter: TJ002_KontrTypeFilter;
    KontrTypeFilter: TJ002_KontrTypeFilter;
    odsListT174_ISIN_ERR: TFloatField;
    odsListT174_ISIN_ERR_2: TFloatField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ToolButton2Click(Sender: TObject);
    procedure odsListAfterScroll(DataSet: TDataSet);
    procedure PopupMenuPopup(Sender: TObject);
    procedure mi02Click(Sender: TObject);
    procedure xxxDBGridDblClick(Sender: TObject);
    procedure odsListT174_ISSUER_INNGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure odsListT174_ISSUER_INN_2GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    MainFilters: TMainFilters;

    procedure SaveMainFilters;
    procedure RestoreMainFilters;
    procedure ClearAdditionalFilters;
  protected
    function GetKeyFieldName: string; override;
    procedure RefreshAllRecords; override;
  public
    procedure InitFrame(Sender: TObject);  override;
    //
    procedure FindOpByDate(const ASecType: String; ADateOp: TDateTime; ARegn, AOpType: String; AT030_ID: Double; APayDir, AOpCurr: String; AOpCount, AOpSum: Double);
    procedure FindIssuer_InPer(AT028_ID: Double; ADateStart, ADateEnd: TDateTime; ASecType, AIsin: String);
  end;

var
  J002_Opers: TJ002_Opers;

implementation

uses dm000_ObjectsFactory, unt007_LinksList, J002_InnEditDlg,
  dm005_MainData, untMessages;

{$R *.DFM}

{ TJ002_Opers }

function IsDigit(const AChar: string): boolean;
begin
  if (AChar = '0')
  or (ACHAR = '1')
  or (ACHAR = '2')
  or (ACHAR = '3')
  or (ACHAR = '4')
  or (ACHAR = '5')
  or (ACHAR = '6')
  or (ACHAR = '7')
  or (ACHAR = '8')
  or (ACHAR = '9') then
    Result := True
  else
    Result := False;
end;

procedure TJ002_Opers.InitFrame(Sender: TObject);
begin
  PeriodFilter.InitFrame(Self);
  SecTypeFilter.InitFrame(Self);
  SecTypeFilter.lcb.SetDefaults(['SHS3','SHS4','DR']);
  DgTypeFilter.InitFrame(Self);
  DgTypeFilter.lcb.SetDefaults(['BS','EXCHANGE']);
  OpSidesFilter.InitFrame(Self);
  OpSidesFilter.lcb.SetDefaults([1]);
  OpTypeFilter.InitFrame(Self);
  OpTypeFilter.lcb.SetDefaults(['NEW','CHANGE','EXECUTION']);

  KontrTypeFilter.InitFrame(Self);
  KontrTypeFilter.lcb.SetDefaults(['2']);
  ClientTypeFilter.InitFrame(Self);
  ClientTypeFilter.cb.Checked := False;

  Panel1.Visible := False;
  Splitter.Visible := False;

  cb_OpDateFrom.Checked := False;
  f_OpDateFrom.Date := Now;
  f_OpDateFrom.Enabled := False;
  cb_OpDateTo.Checked := False;
  f_OpDateTo.Date := Now;
  f_OpDateTo.Enabled := False;
  cb_Bank.Checked := False;
  f_Bank.Text := '';
  cb_Currency.Checked := False;
  f_Currency.Text := '';
  cb_OpDir.Checked := False;
  f_OpDir.Text := '';
  cb_OpCount.Checked := False;
  f_OpCount.Text := '';
  cb_OpSum.Checked := False;
  f_OpSum.Text := '';
  cb_Isin.Checked := False;
  f_Isin.Text := '';

  ObjectsFactory.Links.LinkLookUp2Condition(
    ctNumBetween,
    PeriodFilter,
    Self,
    'T055_ID',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    DgTypeFilter,
    Self,
    'T174_DG_CODE',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    OpSidesFilter,
    Self,
    'T174_OP_SIDES',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    OpTypeFilter,
    Self,
    'T174_OP_TYPE',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    ClientTypeFilter,
    Self,
    'T174_CLIENT_CODE_TYPE',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    KontrTypeFilter,
    Self,
    'T174_KONTR_CODE_TYPE',
    ltNoRefresh
    );

  inherited;
end;

function TJ002_Opers.GetKeyFieldName: string;
begin
  Result := 'T174_ID';
end;

procedure TJ002_Opers.RefreshAllRecords;
var
  vSecTypes: string;
  i: integer;
begin
  odsList.Close;

  xxxDBGrid.MainDataSet.Conditions.ClearFor('SEC_TYPE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('SEC_TYPE_2');

  xxxDBGrid.MainDataSet.Conditions.ClearFor('T174_OP_DATE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T174_KONTR_CODE_TYPE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T174_CLIENT_CODE_TYPE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T174_KONTR_CODE');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T174_OP_DIR');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T174_OP_CURRENCY');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T174_OP_COUNT');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T174_OP_SUM');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T174_ISIN');


  if (SecTypeFilter.cb.Checked) then
    begin
    if (SecTypeFilter.lcb.KeyValuesStr.Count = 0) then
      vSecTypes := ''''''
    else
      begin
      vSecTypes := '';
      for i := 0 to SecTypeFilter.lcb.KeyValuesStr.Count-1 do
        begin
        if vSecTypes <> '' then
          vSecTypes := vSecTypes + ',';
        vSecTypes := vSecTypes  + ''''+SecTypeFilter.lcb.KeyValuesStr[i]+'''';
        end;
      end;

    odsList.SetVariable('SEC_TYPE', vSecTypes);
    odsList.SetVariable('SEC_TYPE_2', vSecTypes);
    end
  else
    begin
    odsList.SetVariable('SEC_TYPE', 'T174_SEC_TYPE');
    odsList.SetVariable('SEC_TYPE_2', 'T174_SEC_TYPE_2');
    end;

  // Доп. фильтр:
  VDataSet.Conditions.Clear;
  // дата операции
  if cb_OpDateFrom.Checked = True then
    if cb_OpDateTo.Checked = True then
       VDataSet.SetDateBetweenFilter('T174_OP_DATE', f_OpDateFrom.Date, f_OpDateTo.Date)
     else
       VDataSet.SetDateBetweenFilter('T174_OP_DATE', f_OpDateFrom.Date, f_OpDateFrom.Date);
  // банк
  if cb_Bank.Checked = True then
    begin
    KontrTypeFilter.SetKeyValuesStr(['2']);
    VDataSet.SetStrEqualFilter('T174_KONTR_CODE', f_Bank.Text);
    end;
  // направление платежа
  if cb_OpDir.Checked then
    begin
    if f_OpDir.Text = 'INR' then
      VDataSet.SetStrEqualFilter('T174_OP_DIR', 'B')
    else if f_OpDir.Text = 'OUTR' then
      VDataSet.SetStrEqualFilter('T174_OP_DIR', 'S');
    end;
  // валюта
  if cb_Currency.Checked = True then
    VDataSet.SetStrEqualFilter('T174_OP_CURRENCY', f_Currency.Text);
  // количество
  if (cb_OpCount.Checked = True) and (f_OpCount.Text <> '') then
//    try
//      VDataSet.SetNumbEqualFilter('T174_OP_COUNT', StrToFloat(f_OpCount.Text));
      VDataSet.SetStrEqualFilter('T174_OP_COUNT', f_OpCount.Text);
//    except
//      TAppMessages.ShowError('Укажите правильное количество бумаг.');
//    end;
  // сумма
  if (cb_Opsum.Checked = True) and (f_OpSum.Text <> '') then
//    try
//      VDataSet.SetNumbEqualFilter('T174_OP_SUM', StrToFloat(f_OpSum.Text));
      VDataSet.SetStrEqualFilter('T174_OP_SUM', f_OpSum.Text);
//    except
//      TAppMessages.ShowError('Укажите правильную сумму сделки.');
//    end;
  // Isin
  if cb_Isin.Checked = True then
    VDataSet.SetStrEqualFilter('T174_ISIN', f_Isin.Text);

  // добавляем локальные условия фильтра
  SetConditions;

  // получаем данные
  //showmessage(odsList.SQL.Text);
  odsList.Open;

  odsLinks.Close;
  odsLinks.Open;

end;

procedure TJ002_Opers.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  vFontColor: TColor;
  vBrushColor: TColor;
  vError: boolean;
begin
  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
    begin
    // связи
    if Column.FieldName = 'IS_LINKED' then
      begin
      vBrushColor := xxxDbGrid.Canvas.Brush.Color;

      xxxDbGrid.Canvas.Brush.Color := clOlive;
      if Column.Field.AsString = '+   +' then
        begin
        xxxDbGrid.Canvas.FillRect(Rect);
        end
      else if Column.Field.AsString = '-   +' then
        begin
        xxxDbGrid.Canvas.FillRect(Rect);
        end
      else if Column.Field.AsString = '+   -' then
        begin
        xxxDbGrid.Canvas.MoveTo(Rect.Left, Rect.Top);
        xxxDbGrid.Canvas.LineTo(Rect.Right, Rect.Bottom);
        xxxDbGrid.Canvas.FloodFill(Rect.Left+1, Rect.Top+2, xxxDbGrid.Canvas.Pixels[Rect.Left+1, Rect.Top+2], fsSurface);
        end;
//      else if Column.Field.AsString = '-   -' then
//        begin
//        xxxDbGrid.Canvas.MoveTo(Rect.Left, Rect.Top);
//        xxxDbGrid.Canvas.LineTo(Rect.Right, Rect.Bottom);
//        xxxDbGrid.Canvas.FloodFill(Rect.Left+1, Rect.Top+2, xxxDbGrid.Canvas.Pixels[Rect.Left+1, Rect.Top+2], fsSurface);
//        end;

      xxxDbGrid.Canvas.Brush.Color := clTeal;
      if Column.Field.AsString = 'A   A' then
        begin
        xxxDbGrid.Canvas.FillRect(Rect);
        end
      else if Column.Field.AsString = '-   A' then
        begin
        xxxDbGrid.Canvas.FillRect(Rect);
        end
      else if Column.Field.AsString = 'A   -' then
        begin
        xxxDbGrid.Canvas.MoveTo(Rect.Left, Rect.Top);
        xxxDbGrid.Canvas.LineTo(Rect.Right, Rect.Bottom);
        xxxDbGrid.Canvas.FloodFill(Rect.Left+1, Rect.Top+2, xxxDbGrid.Canvas.Pixels[Rect.Left+1, Rect.Top+2], fsSurface);
        end;

      xxxDbGrid.Canvas.Brush.Color := vBrushColor;
      Exit;
      end;

    // проверка правильности данных

    vFontColor := xxxDbGrid.Font.Color;
    vBrushColor := xxxDbGrid.Color;
    vError :=  False;

    if Column.FieldName = 'T174_LINE_NO' then
      // 1
      begin
      if not Column.Field.IsNull then
        try
          StrToInt(Column.Field.AsString);
        except
          vFontColor := clRed;
          vError := True;
        end;
      end;

{
    // T174_INF_ID - формат:
    if Column.FieldName = 'T174_INF_ID' then
      // 2
      begin
      if not Column.Field.IsNull then
        begin
        // Дата сделки
        vBuf := Copy(Trim(Column.Field.AsString), 1, 10);
        vShortDateFormat := ShortDateFormat;
        ShortDateFormat := 'dd.MM.yyyy';
        try
          if StrToDate(vBuf) <> odsListT174_OP_DATE.AsDateTime then
            begin
            vFontColor := clRed;
            vError := True;
            end;
        except
          // Пытаемся разобрать формат ddmmyyyy
          vBuf := Copy(Trim(Column.Field.AsString), 1, 2)+'.'+Copy(Trim(Column.Field.AsString), 3, 2)+'.'+Copy(Trim(Column.Field.AsString), 5, 4);
          try
            if StrToDate(vBuf) <> odsListT174_OP_DATE.AsDateTime then
              begin
              vFontColor := clRed;
              vError := True;
              end;
          except
            vFontColor := clRed;
            vError := True;
          end;
        end;
        ShortDateFormat := vShortDateFormat;
        end;
      end;
}

    if Column.FieldName = 'T174_OP_CODE' then
      // 3
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
                or (Column.Field.AsString = 'BR')
                or (Column.Field.AsString = 'OWN')
                or (Column.Field.AsString = 'AM')) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    if Column.FieldName = 'T174_OP_DATE' then
      // 4
      begin
      if Column.Field.IsNull then
        vBrushColor := clRed
      end;

    if Column.FieldName = 'T174_DG_CODE' then
      // 5
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
                or (Column.Field.AsString = 'BS')
                or (Column.Field.AsString = 'REPO')
                or (Column.Field.AsString = 'EXCHANGE')
                or (Column.Field.AsString = 'LOAN')
                or (Column.Field.AsString = 'SWAP')
                or (Column.Field.AsString = 'OPTION')
                or (Column.Field.AsString = 'FORWARD')
                or (Column.Field.AsString = 'OTHER')) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    if Column.FieldName = 'T177_NAME' then
      // 6
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
                or (odsListT174_OP_CODE.AsString = '1')
                or (odsListT174_OP_CODE.AsString = '2')
                or (odsListT174_OP_CODE.AsString = '3')
                or (odsListT174_OP_CODE.AsString = '4')
                or (odsListT174_OP_CODE.AsString = '5')
                or (odsListT174_OP_CODE.AsString = '6')
                or (odsListT174_OP_CODE.AsString = '7')
                or (odsListT174_OP_CODE.AsString = '8')
                or (odsListT174_OP_CODE.AsString = '9')
                or (odsListT174_OP_CODE.AsString = '10')
                or (odsListT174_OP_CODE.AsString = '11')
                or (odsListT174_OP_CODE.AsString = '12')
                or (odsListT174_OP_CODE.AsString = '13')
                or (odsListT174_OP_CODE.AsString = '14')
                or (odsListT174_OP_CODE.AsString = '15')
                or (odsListT174_OP_CODE.AsString = '16')
                or (odsListT174_OP_CODE.AsString = '17')
                or (odsListT174_OP_CODE.AsString = '18')) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    if Column.FieldName = 'T174_OP_DIR' then
      // 7
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
             or (Column.Field.AsString = 'B')
             or (Column.Field.AsString = 'S')) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    if Column.FieldName = 'T174_OP_TYPE' then
      // 8
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
                or (Column.Field.AsString = 'NEW')
                or (Column.Field.AsString = 'CHANGE')
                or (Column.Field.AsString = 'EXECUTION')
                or (Column.Field.AsString = 'FAILURE')
                or (Column.Field.AsString = 'CANCEL')) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    if Column.FieldName = 'T174_PAY_CODE' then
      // 9
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
                or (Column.Field.AsString = 'DVP')
                or (Column.Field.AsString = 'FREE')
                or (Column.Field.AsString = 'P')
                or (Column.Field.AsString = 'C')
                or (Column.Field.AsString = 'U')) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    // T174_KONTR_INN // 10
    // T174_OP_SOURCE  // 11

    if Column.FieldName = 'T174_FAKE_NAME' then
      // 12
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
                or (odsListT174_FAKE_CODE.AsString = '1')
                or (odsListT174_FAKE_CODE.AsString = '2')
                or (odsListT174_FAKE_CODE.AsString = '3')
                or (odsListT174_FAKE_CODE.AsString = '4')) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    //T174_CLIENT_NAME // 13

    if Column.FieldName = 'T174_CLIENT_CODE_DESC' then
      // 14
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
                or (odsListT174_CLIENT_CODE_TYPE.AsString = '1')
                or (odsListT174_CLIENT_CODE_TYPE.AsString = '2')
                or (odsListT174_CLIENT_CODE_TYPE.AsString = '3')
                or (odsListT174_CLIENT_CODE_TYPE.AsString = '4')
                or (odsListT174_CLIENT_CODE_TYPE.AsString = '5')
                or (odsListT174_CLIENT_CODE_TYPE.AsString = '6')
                or (odsListT174_CLIENT_CODE_TYPE.AsString = '7')
                or (odsListT174_CLIENT_CODE_TYPE.AsString = '8')
                or (odsListT174_CLIENT_CODE_TYPE.AsString = '9')) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    // T174_CLIENT_CODE // 15

    if Column.FieldName = 'T174_CLIENT_COUNTRY' then
      // 16
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
          or (Length(Column.Field.AsString) = 3)) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    // T174_CLIENT_DEP_NAME // 17

    if Column.FieldName = 'T174_CLIENT_DEP_COUNTRY' then
      // 18
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
          or (Length(Column.Field.AsString) = 3)) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    // T174_CLIENT_DEP_CODE // 19
    // T174_CLIENT_DEP_NO // 20
    // T174_UPPER_DEP_NAME // 21
    // T174_KONTR_NAME // 22

    if Column.FieldName = 'T174_KONTR_CODE_DESC' then
      // 23
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
                or (odsListT174_KONTR_CODE_TYPE.AsString = '1')
                or (odsListT174_KONTR_CODE_TYPE.AsString = '2')
                or (odsListT174_KONTR_CODE_TYPE.AsString = '3')
                or (odsListT174_KONTR_CODE_TYPE.AsString = '4')
                or (odsListT174_KONTR_CODE_TYPE.AsString = '5')
                or (odsListT174_KONTR_CODE_TYPE.AsString = '6')
                or (odsListT174_KONTR_CODE_TYPE.AsString = '7')
                or (odsListT174_KONTR_CODE_TYPE.AsString = '8')
                or (odsListT174_KONTR_CODE_TYPE.AsString = '9')) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    // T174_KONTR_CODE // 24

    if Column.FieldName = 'T174_KONTR_COUNTRY' then
      // 25
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
          or (Length(Column.Field.AsString) = 3)) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    // T174_KONTR_DEP_NAME // 26

    if Column.FieldName = 'T174_KONTR_DEP_COUNTRY' then
      // 27
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
          or (Length(Column.Field.AsString) = 3)) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    // T174_KONTR_DEP_CODE // 28
    // T174_KONTR_DEP_NO // 29
    // T174_ISSUER_NAME // 30

    if Column.FieldName = 'T174_SEC_TYPE' then
      // 31
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
                or (Column.Field.AsString = 'BON1')
                or (Column.Field.AsString = 'BON2')
                or (Column.Field.AsString = 'BON3')
                or (Column.Field.AsString = 'BON4')
                or (Column.Field.AsString = 'BON5')
                or (Column.Field.AsString = 'BON6')
                or (Column.Field.AsString = 'BON7')
                or (Column.Field.AsString = 'DS1')
                or (Column.Field.AsString = 'DS2')
                or (Column.Field.AsString = 'SS1')
                or (Column.Field.AsString = 'SS2')
                or (Column.Field.AsString = 'SHS1')
                or (Column.Field.AsString = 'SHS2')
                or (Column.Field.AsString = 'SHS3')
                or (Column.Field.AsString = 'SHS4')
                or (Column.Field.AsString = 'SHS5')
                or (Column.Field.AsString = 'SHS6')
                or (Column.Field.AsString = 'SHS7')
                or (Column.Field.AsString = 'SHS8')
                or (Column.Field.AsString = 'BIL1')
                or (Column.Field.AsString = 'BIL2')
                or (Column.Field.AsString = 'BIL3')
                or (Column.Field.AsString = 'BIL4')
                or (Column.Field.AsString = 'BIL5')
                or (Column.Field.AsString = 'BIL6')
                or (Column.Field.AsString = 'BIL7')
                or (Column.Field.AsString = 'DR')
                or (Column.Field.AsString = 'CON')
                or (Column.Field.AsString = 'WTS')
                or (Column.Field.AsString = 'OPN')
                or (Column.Field.AsString = 'ENC')
                or (Column.Field.AsString = 'OTHER')) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    // T174_ISIN // 32

    if Column.FieldName = 'T174_ISSUER_COUNTRY' then
      // 33
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
          or (Length(Column.Field.AsString) = 3)) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    // T174_OP_COUNT // 34
    // T178_CODE // 35
    // T174_BASE_ACTIVE // 36

    if Column.FieldName = 'T174_SEC_TYPE_CODE' then
    // 37
      begin
      if not Column.Field.IsNull then
        if not ((Column.Field.AsString = '#')
          or (Column.Field.AsString = 'ВНТ')
          or (Column.Field.AsString = 'ВНШ')) then
        begin
        vFontColor := clRed;
        vError := True;
        end;
      end;

    //

    if (Column.FieldName = 'T174_ISIN') and (odsListT174_ISIN_ERR.AsFloat <> 0) then
      begin
      vFontColor := clRed;
      vError := True;
      end
    else if (Column.FieldName = 'T174_ISIN_2') and (odsListT174_ISIN_ERR_2.AsFloat <> 0) then
      begin
      vFontColor := clRed;
      vError := True;
      end;

    if vError = True then
      vBrushColor := $006FBFFF;

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

procedure TJ002_Opers.ToolButton2Click(Sender: TObject);
begin
  if ToolButton2.Down = True then
    begin
    Panel1.Visible := True;
    Splitter.Visible := True;
    Grid405.InitFrame(Self);
    odsListAfterScroll(odsList);
    end
  else
    begin
    Panel1.Visible := False;
    Splitter.Visible := False;
    end;
end;

procedure TJ002_Opers.odsListAfterScroll(DataSet: TDataSet);
begin
  if ToolButton2.Down = False then Exit;

  if odsList.IsEmpty or (odsListT174_KONTR_CODE_TYPE.AsString <> '2') then
    begin
    Grid405.FCanSelect := False;

//    Grid405.cb_OpDate.Enabled := False;
//    Grid405.f_opDateFrom.Enabled := False;
//    Grid405.f_opDateTo.Enabled := False;
//    Grid405.cb_Bank.Enabled := False;
//    Grid405.f_Bank.Enabled := False;
//    Grid405.cb_Isin.Enabled := False;
//    Grid405.f_Isin.Enabled := False;
//    Grid405.cb_SecType.Enabled := False;
//    Grid405.f_SecType.Enabled := False;
//    Grid405.cb_OpType.Enabled := False;
//    Grid405.f_OpType.Enabled := False;
//    Grid405.cb_OpDir.Enabled := False;
//    Grid405.f_OpDir.Enabled := False;
//    Grid405.cb_OpCount.Enabled := False;
//    Grid405.f_OpCount.Enabled := False;
//    Grid405.cb_Currency.Enabled := False;
//    Grid405.f_Currency.Enabled := False;
//    Grid405.cb_OpSum.Enabled := False;
//    Grid405.f_OpSum.Enabled := False;

//    Grid405.odsList.Close;

//    Grid405.FT001_ID_1 := 0;
//    Grid405.FT001_ID_H1 := 0;
//    Grid405.FT001_ID_2 := 0;
//    Grid405.FT001_ID_H2 := 0;

      Grid405.FT174_ID := odsListT174_ID.AsFloat;

      Grid405.FT001_ID_1 := odsListT001_ID_1.AsFloat;
      Grid405.FT001_ID_H1 := odsListT001_ID_H1.AsFloat;
      Grid405.FT001_ID_2 := odsListT001_ID_2.AsFloat;
      Grid405.FT001_ID_H2 := odsListT001_ID_H2.AsFloat;
    end
  else
    begin
    Grid405.FCanSelect := True;

    if Grid405.cbNotFilter.Checked = False then
      begin
//      Grid405.cb_OpDate.Enabled := True;
//      Grid405.f_opDateFrom.Enabled := True;
//      Grid405.f_opDateTo.Enabled := True;
      try
        if Grid405.cb_OpDate.Checked = False then
          begin
          Grid405.f_OpDateFrom.Date := odsListT174_PAY_DATE_SRC.AsDateTime - 6;
          Grid405.f_OpDateTo.Date   := odsListT174_PAY_DATE_SRC.AsDateTime + 6;
          end
        else
         begin
         Grid405.f_OpDateFrom.Date := odsListT174_PAY_DATE_SRC.AsDateTime;
         Grid405.f_OpDateTo.Date   := odsListT174_PAY_DATE_SRC.AsDateTime;
        end;
      except
        if Grid405.cb_OpDate.Checked = False then
          begin
          Grid405.f_OpDateFrom.Date := Now - 6;
          Grid405.f_OpDateTo.Date   := Now + 6;
          end
        else
          begin
          Grid405.f_OpDateFrom.Date := Now;
          Grid405.f_OpDateTo.Date   := Now;
          end
      end;

//      Grid405.cb_Bank.Enabled := True;
//      Grid405.f_Bank.Enabled := True;
      if odsListT174_KONTR_CODE_TYPE.AsString = '2' then
        Grid405.f_Bank.Text := odsListT174_KONTR_CODE.AsString
      else if odsListT174_KONTR_CODE_TYPE.AsString = '5' then
        Grid405.f_Bank.Text := odsListT174_KONTR_CODE.AsString
      else
        Grid405.f_Bank.Text := '';

//      Grid405.cb_Isin.Enabled := True;
//      Grid405.f_Isin.Enabled := True;
      Grid405.f_Isin.Text := odsListT174_ISIN.AsString;

//      Grid405.cb_SecType.Enabled := True;
//      Grid405.f_SecType.Enabled := True;
      Grid405.f_SecType.Text := odsListT174_SEC_TYPE.AsString;

//      Grid405.cb_OpType.Enabled := True;
//      Grid405.f_OpType.Enabled := True;
      Grid405.f_OpType.Text := odsListT174_DG_CODE.AsString;
      if Grid405.f_OpType.Text = 'BS' then
        Grid405.f_OpType.Text := Grid405.f_OpType.Text + ' (11)'
      else if Grid405.f_OpType.Text = 'EXCHANGE' then
        Grid405.f_OpType.Text := Grid405.f_OpType.Text + ' (21)';

//      Grid405.cb_OpDir.Enabled := True;
//      Grid405.f_OpDir.Enabled := True;
      Grid405.f_OpDir.Text := odsListT174_OP_DIR.AsString;
      if Grid405.f_OpDir.Text = 'B' then
        Grid405.f_OpDir.Text := Grid405.f_OpDir.Text + ' (INR)'
      else if Grid405.f_OpDir.Text = 'S' then
        Grid405.f_OpDir.Text := Grid405.f_OpDir.Text + ' (OUTR)';

//      Grid405.cb_OpCount.Enabled := True;
//      Grid405.f_OpCount.Enabled := True;
      Grid405.f_OpCount.Text := odsListT174_OP_COUNT.AsString;

//      Grid405.cb_Currency.Enabled := True;
//      Grid405.f_Currency.Enabled := True;
      Grid405.f_Currency.Text := odsListT174_OP_CURRENCY.AsString;

//      Grid405.cb_OpSum.Enabled := True;
//      Grid405.f_OpSum.Enabled := True;
      Grid405.f_OpSum.Text := odsListT174_OP_SUM.AsString;

      Grid405.FT174_ID := odsListT174_ID.AsFloat;

      Grid405.FT001_ID_1 := odsListT001_ID_1.AsFloat;
      Grid405.FT001_ID_H1 := odsListT001_ID_H1.AsFloat;
      Grid405.FT001_ID_2 := odsListT001_ID_2.AsFloat;
      Grid405.FT001_ID_H2 := odsListT001_ID_H2.AsFloat;

      Grid405.RefreshData;
      end;  
    end;
end;

procedure TJ002_Opers.PopupMenuPopup(Sender: TObject);
begin
  if odsList.IsEmpty then Exit;

  if (xxxDbGrid.SelectedField.FieldName = 'T174_ISSUER_INN') or
     (xxxDbGrid.SelectedField.FieldName = 'T174_ISSUER_INN_2') then
    mi02.Enabled := True
  else
    mi02.Enabled := False;
end;

procedure TJ002_Opers.xxxDBGridDblClick(Sender: TObject);
begin
  if (xxxDbGrid.SelectedField.FieldName = 'T174_ISSUER_INN') or
     (xxxDbGrid.SelectedField.FieldName = 'T174_ISSUER_INN_2') then
    mi02Click(Sender);
end;

procedure TJ002_Opers.mi02Click(Sender: TObject);
var
  vDlg: TJ002_InnEdit;
  vPart: integer;
  vSecType: string;
  vIsin: string;
  vMr: integer;
  vCursor: TCursor;
  vOneRecord: integer;
begin
  if odsList.IsEmpty then Exit;

  vDlg := TJ002_InnEdit.Create(Self);

  vPart := 0;
  vSecType := '';
  vIsin := '';
  if xxxDbGrid.SelectedField.FieldName = 'T174_ISSUER_INN' then
    begin
    vPart := 1;
    vSecType := odsListT174_SEC_TYPE.AsString;
    vIsin := odsListT174_ISIN.AsString;
    vDlg.ed01.Text := odsListT174_ISSUER_INN.AsString;
    end
  else if xxxDbGrid.SelectedField.FieldName = 'T174_ISSUER_INN_2' then
    begin
    vPart := 2;
    vSecType := odsListT174_SEC_TYPE_2.AsString;
    vIsin := odsListT174_ISIN_2.AsString;
    vDlg.ed01.Text := odsListT174_ISSUER_INN_2.AsString;
    end;

  vDlg.Ed02.Clear;
  vDlg.btnFind.Enabled := not ((vSecType = '') or (vIsin = ''));

  vMr := vDlg.ShowModal;
  if vMr = mrOk then
    begin
    vCursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;
    vOneRecord := integer(vDlg.cbOneRecord.Checked);
    oqInnEdit.SetVariable('ONE_RECORD', vOneRecord);
    oqInnEdit.SetVariable('T174_ID', odsListT174_ID.AsFloat);
    oqInnEdit.SetVariable('PART', vPart);
    oqInnEdit.SetVariable('INN', vDlg.ed01.Text);
    oqInnEdit.SetVariable('COMMENT', vDlg.ed02.Text);
    oqInnEdit.SetVariable('USER', dmMain.GetUser);
    try
      oqInnEdit.Execute;
      RefreshDataAfterChange;
    finally
      Screen.Cursor := vCursor;
    end;  
    end
  else if vMr = 1000 then
    begin
    vCursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;
    oqInnFind.SetVariable('SecType', vSecType);
    oqInnFind.SetVariable('Isin', vIsin);
    try
      try
        oqInnFind.Execute;
        RefreshDataAfterChange;
      except
        on E:Exception do
          TAppMessages.ShowInformation(Copy(E.Message, 1, Pos(#10, E.Message)));
      end;
    finally
      Screen.Cursor := vCursor;
    end;
    end;

  vDlg.Free;
end;

procedure TJ002_Opers.odsListT174_ISSUER_INNGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := Sender.AsString;
  if (DisplayText = True) and (odsListT174_ISSUER_INN_SRC.AsString <> '') then
    Text := Text + '     ' + StringReplace(odsListT174_ISSUER_INN_SRC.AsString, '|', ' - ', [rfReplaceAll]);
end;

procedure TJ002_Opers.odsListT174_ISSUER_INN_2GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := Sender.AsString;
  if (DisplayText = True) and (odsListT174_ISSUER_INN_SRC_2.AsString <> '') then
    Text := Text + '     ' + StringReplace(odsListT174_ISSUER_INN_SRC_2.AsString, '|', ' - ', [rfReplaceAll]);
end;

procedure TJ002_Opers.FindOpByDate(const ASecType: String; ADateOp: TDateTime; ARegn, AOpType: String; AT030_ID: Double; APayDir, AOpCurr: String; AOpCount, AOpSum: Double);
begin
  // Сохраняем основной фильтр
  SaveMainFilters;

  // Основной фильтр
  PeriodFilter.cb.Checked := False;

  DgTypeFilter.cb.Checked := True;
  if AOpType = '11' then
   DgTypeFilter.SetKeyValuesStr(['BS'])
  else if AOpType = '21' then
   DgTypeFilter.SetKeyValuesStr(['EXCHANGE'])
  else
    begin
    DgTypeFilter.cb.Checked := False;
    DgTypeFilter.SetKeyValuesStr(['']);
    end;

  SecTypeFilter.cb.Checked := True;
  if (ASecType = 'DR1') or (ASecType = 'DR2') then
    SecTypeFilter.SetKeyValuesStr(['DR'])
  else
    SecTypeFilter.SetKeyValuesStr([ASecType]);

  OpSidesFilter.cb.Checked := True;
  OpSidesFilter.lcb.SetDefaults([1]);

  OpTypeFilter.cb.Checked := True;
  OpTypeFilter.lcb.SetDefaults(['NEW','CHANGE','EXECUTION']);

  // Доп фильтр
  cb_OpDateFrom.Checked := True;
  f_OpDateFrom.Date := ADateOp - 6;
  f_OpDateFrom.Enabled := True;

  cb_OpDateTo.Checked := True;
  f_OpDateTo.Date := ADateOp;
  f_OpDateTo.Enabled := True;

  cb_Bank.Checked := True;
  f_Bank.Text := ARegn;

  cb_Currency.Checked := True;
  f_Currency.Text := AOpCurr;

  cb_OpDir.Checked := True;
  f_OpDir.Text := APayDir;

  cb_OpCount.Checked := True;
  f_OpCount.Text := FloatToStr(AOpCount);

  cb_OpSum.Checked := True;
  f_OpSum.Text := FloatToStr(AOpSum);

  cb_Isin.Checked := False;
  oqGetIsin.SetVariable('T030_ID', AT030_ID);
  oqGetIsin.Execute;
  f_Isin.Text := oqGetIsin.GetVariable('RESULT');
  if f_Isin.Text <> '' then
    cb_Isin.Checked := True;


  RefreshAllRecords;
end;

// Вызов из расчета IIP
procedure TJ002_Opers.FindIssuer_InPer(AT028_ID:Double; ADateStart, ADateEnd: TDateTime; ASecType, AIsin: String);
begin
  // Сохраняем основной фильтр
  SaveMainFilters;

//  InitFrame(Self);

  // снимаем все доп. фильтры
  ClearAdditionalFilters;
  VDataSet.Conditions.Clear;
  VDataSet.Indexes.Clear;

  // период
  PeriodFilter.cb.Checked := False;
//  PeriodFilter.KeyValue := FloatToStr(AT055_ID_S);
//  PeriodFilter.KeyValue2 := FloatToStr(AT055_ID_E);

  // тип ц.б.
  SecTypeFilter.cb.Checked := True;
  SecTypeFilter.SetKeyValuesStr([ASecType]);
  // вид договора
  DgTypeFilter.cb.Checked := True;
  DgTypeFilter.lcb.SetDefaults(['BS','EXCHANGE']);
  // стороны сделки
  OpSidesFilter.cb.Checked := True;
  OpSidesFilter.lcb.SetDefaults([1]);
  // вид сообщения
  OpTypeFilter.cb.Checked := True;
  OpTypeFilter.lcb.SetDefaults(['NEW','CHANGE','EXECUTION']);
  // тип клиента - исключаем физ.лица
  ClientTypeFilter.cb.Checked := True;
  ClientTypeFilter.lcb.SetDefaults([1,2,3,4,5,6,7,8]);
  // тип контрагента - исключаем физ.лица
  KontrTypeFilter.cb.Checked := True;
  KontrTypeFilter.lcb.SetDefaults([1,2,3,4,5,6,7,8]);

  // доп.фильтры:
  // дата операции c
  cb_OpDateFrom.Checked := True;
  f_OpDateFrom.Date := ADateStart;
  f_OpDateFrom.Enabled := True;
  // дата операции пo
  cb_OpDateTo.Checked := True;
  f_OpDateTo.Date := ADateEnd;
  f_OpDateTo.Enabled := True;
  // ISIN
  cb_Isin.Checked := True;
  f_Isin.Text := AIsin;

  // скрытые фильтры
//  T001_ID_1,
//  T001_ID_2,
//  T001_ID_H1 = 0,
//  T001_ID_H2 = 0,

  RefreshAllRecords;
end;

procedure TJ002_Opers.SaveMainFilters;
var
  i: integer;
begin
  MainFilters.PeriodChecked := PeriodFilter.cb.Checked;
  MainFilters.PeriodFrom := PeriodFilter.KeyValueFloat;
  MainFilters.PeriodTo := PeriodFilter.KeyValue2Float;
  MainFilters.SecTypeChecked := SecTypeFilter.cb.Checked;
  MainFilters.SecTypes.Free;
  MainFilters.SecTypes := TStringList.Create;
  MainFilters.SecTypes.AddStrings(SecTypeFilter.lcb.KeyValuesStr);
  MainFilters.DgTypeChecked := DgTypeFilter.cb.Checked;
  MainFilters.DgTypes.Free;
  MainFilters.DgTypes := TStringList.Create;
  MainFilters.DgTypes.AddStrings(DgTypeFilter.lcb.KeyValuesStr);
  MainFilters.OpSidesChecked := OpSidesFilter.cb.Checked;
  MainFilters.OpSides := nil;
  SetLength(MainFilters.OpSides, Length(OpSidesFilter.lcb.KeyValuesFloat));
  for i := 0 to Length(OpSidesFilter.lcb.KeyValuesFloat) - 1 do
    MainFilters.OpSides[i] := OpSidesFilter.lcb.KeyValuesFloat[i];
  MainFilters.OpTypeChecked := OpTypeFilter.cb.Checked;
  MainFilters.OpTypes.Free;
  MainFilters.OpTypes := TStringList.Create;
  MainFilters.OpTypes.AddStrings(OpTypeFilter.lcb.KeyValuesStr);
  MainFilters.ClientTypeChecked := ClientTypeFilter.cb.Checked;
  MainFilters.ClientTypes.Free;
  MainFilters.ClientTypes := TStringList.Create;
  MainFilters.ClientTypes.AddStrings(ClientTypeFilter.lcb.KeyValuesStr);
  MainFilters.KontrTypeChecked := KontrTypeFilter.cb.Checked;
  MainFilters.KontrTypes.Free;
  MainFilters.KontrTypes := TStringList.Create;
  MainFilters.KontrTypes.AddStrings(KontrTypeFilter.lcb.KeyValuesStr);

  MainFilters.IsSaved := True;
end;

procedure TJ002_Opers.RestoreMainFilters;
begin
  if MainFilters.IsSaved = False then Exit;
  PeriodFilter.cb.Checked := MainFilters.PeriodChecked;
  PeriodFilter.KeyValue := MainFilters.PeriodFrom;
  PeriodFilter.KeyValue2 := MainFilters.PeriodTo;
  SecTypeFilter.cb.Checked := MainFilters.SecTypeChecked;
  SecTypeFilter.lcb.KeyValuesStr := MainFilters.SecTypes;
  DgTypeFilter.cb.Checked := MainFilters.DgTypeChecked;
  DgTypeFilter.lcb.KeyValuesStr := MainFilters.DgTypes;
  OpSidesFilter.cb.Checked := MainFilters.OpSidesChecked;
  OpSidesFilter.lcb.KeyValuesFloat := MainFilters.OpSides;
  OpTypeFilter.cb.Checked := MainFilters.OpTypeChecked;
  OpTypeFilter.lcb.KeyValuesStr := MainFilters.OpTypes;
  ClientTypeFilter.cb.Checked := MainFilters.ClientTypeChecked;
  ClientTypeFilter.lcb.KeyValuesStr := MainFilters.ClientTypes;
  KontrTypeFilter.cb.Checked := MainFilters.KontrTypeChecked;
  KontrTypeFilter.lcb.KeyValuesStr := MainFilters.KontrTypes;
end;

procedure TJ002_Opers.Button2Click(Sender: TObject);
begin
  ClearAdditionalFilters;
  RestoreMainFilters;
end;

procedure TJ002_Opers.ClearAdditionalFilters;
begin
  cb_OpDateFrom.Checked := False;
  f_OpDateFrom.Enabled := False;
  cb_OpDateTo.Checked := False;
  f_OpDateTo.Enabled := False;
  cb_Bank.Checked := False;
  f_Bank.Clear;
  cb_Currency.Checked := False;
  f_Currency.Clear;
  cb_Isin.Checked := False;
  f_Isin.Clear;
  cb_OpCount.Checked := False;
  f_OpCount.Clear;
  cb_OpDir.Checked := False;
  f_OpDir.Clear;
  cb_OpSum.Checked := False;
  f_OpSum.Clear;
end;

end.
