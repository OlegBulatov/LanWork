unit A008_2_LoadedFileForm;

interface

uses
  frm04_ListForm, A001_0_LoadEmitForm, Db, StdCtrls, DBCtrls, Oracle,
  OracleData, Menus, Classes, ActnList, ComCtrls, fm31_FilterFrame, Forms,
  fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows,
  frm00_ParentForm, Variants, System.Actions;
//  Messages, SysUtils, Dialogs, ADODB, ImgList,

type
  TFilterRecords = (tfNone, tfNew, tfOld);

  TA008_2_LoadedFile = class(Tfrm04_List, TLoadStepPage)
    GroupBox1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    odsTotal: TOracleDataSet;
    dsTotal: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    Label9: TLabel;
    CbShow: TCheckBox;
    Label4: TLabel;
    CmbShow: TComboBox;
    Label5: TLabel;
    odsTotalR_TOTAL: TFloatField;
    odsTotalR_NEW: TFloatField;
    odsTotalR_UPDATED: TFloatField;
    odsTotalR_ROLLED: TFloatField;
    odsTotalR_CHANGED: TStringField;
    odsListT034_EMISSION_ID: TFloatField;
    odsListT034_ISSUER_ID: TFloatField;
    odsListT034_ISSUER_NAME: TStringField;
    odsListT034_ISSUER_INN: TStringField;
    odsListT034_ISSUER_OGRN: TStringField;
    odsListT034_ISSUER_COUNTRY: TStringField;
    odsListT034_ISSUER_RATING: TStringField;
    odsListT034_EMISSION_RATING: TStringField;
    odsListT034_EMISSION_NAME: TStringField;
    odsListT034_INDUSTRY: TStringField;
    odsListT034_VOLUME: TFloatField;
    odsListT034_CURRENCY: TStringField;
    odsListT034_EMISSION_TYPE: TStringField;
    odsListT034_EMISSION_STATE: TStringField;
    odsListT034_MATURITY_DATE: TDateTimeField;
    odsListT034_EMISSION_REGN: TStringField;
    odsListT034_ISIN: TStringField;
    odsListT034_NOMINAL: TFloatField;
    odsListT034_INDEX: TStringField;
    odsListT034_COUPON_PERIOD: TFloatField;
    odsListT034_FLOATING_RATE: TFloatField;
    odsListT034_BASE_RATE: TStringField;
    odsListT034_MARGE: TFloatField;
    odsListT034_CONVERTING: TFloatField;
    odsListT034_DEPENDS: TStringField;
    odsListT034_AGENT: TStringField;
    odsListT034_TRADE_IN: TStringField;
    odsListT034_COMMENTS: TStringField;
    odsListT034_TRADE_TYPE: TStringField;
    odsListT034_FIRST_PRICE: TFloatField;
    odsListT034_FIRST_YIELD: TFloatField;
    odsListT034_REG_DATE: TDateTimeField;
    odsListT034_TRADE_START_DATE: TDateTimeField;
    odsListT034_TRADE_END_DATE: TDateTimeField;
    odsListT034_CIRCULAR_START_DATE: TDateTimeField;
    odsListT034_MMVB_TICKER: TStringField;
    odsListT034_OFFER_DATE: TDateTimeField;
    odsListT034_MARKET_SEG_CODE: TFloatField;
    odsListT034_LOT_MULTIPLICITY: TFloatField;
    odsListT034_CIRCULAR_AMOUNT: TFloatField;
    odsListT034_OUTSTANDING_VALUE: TFloatField;
    odsListT034_MINIMAL_TRADE_LOT: TFloatField;
    odsListT034_OPTION_DATE: TDateTimeField;
    odsListT034_FILE_NAME: TStringField;
    odsListT034_LOAD_DATE: TDateTimeField;
    odsListT034_LOADER: TStringField;
    odsListT034_FOR_FILTER: TFloatField;
    odsListT034_ISSUER_NAME_OLD: TStringField;
    odsListT034_ISSUER_INN_OLD: TStringField;
    odsListT034_ISSUER_OGRN_OLD: TStringField;
    odsListT034_ISSUER_COUNTRY_OLD: TStringField;
    odsListT034_ISSUER_RATING_OLD: TStringField;
    odsListT034_EMISSION_RATING_OLD: TStringField;
    odsListT034_EMISSION_NAME_OLD: TStringField;
    odsListT034_INDUSTRY_OLD: TStringField;
    odsListT034_VOLUME_OLD: TStringField;
    odsListT034_CURRENCY_OLD: TStringField;
    odsListT034_EMISSION_TYPE_OLD: TStringField;
    odsListT034_EMISSION_STATE_OLD: TStringField;
    odsListT034_MATURITY_DATE_OLD: TStringField;
    odsListT034_EMISSION_REGN_OLD: TStringField;
    odsListT034_ISIN_OLD: TStringField;
    odsListT034_NOMINAL_OLD: TStringField;
    odsListT034_INDEX_OLD: TStringField;
    odsListT034_COUPON_PERIOD_OLD: TStringField;
    odsListT034_FLOATING_RATE_OLD: TStringField;
    odsListT034_BASE_RATE_OLD: TStringField;
    odsListT034_MARGE_OLD: TStringField;
    odsListT034_CONVERTING_OLD: TStringField;
    odsListT034_DEPENDS_OLD: TStringField;
    odsListT034_AGENT_OLD: TStringField;
    odsListT034_TRADE_IN_OLD: TStringField;
    odsListT034_COMMENTS_OLD: TStringField;
    odsListT034_TRADE_TYPE_OLD: TStringField;
    odsListT034_FIRST_PRICE_OLD: TStringField;
    odsListT034_FIRST_YIELD_OLD: TStringField;
    odsListT034_REG_DATE_OLD: TStringField;
    odsListT034_TRADE_START_DATE_OLD: TStringField;
    odsListT034_TRADE_END_DATE_OLD: TStringField;
    odsListT034_CIRCULAR_START_DATE_OLD: TStringField;
    odsListT034_MMVB_TICKER_OLD: TStringField;
    odsListT034_OFFER_DATE_OLD: TStringField;
    odsListT034_MARKET_SEG_CODE_OLD: TStringField;
    odsListT034_LOT_MULTIPLICITY_OLD: TStringField;
    odsListT034_CIRCULAR_AMOUNT_OLD: TStringField;
    odsListT034_OUTSTANDING_VALUE_OLD: TStringField;
    odsListT034_MINIMAL_TRADE_LOT_OLD: TStringField;
    odsListT034_OPTION_DATE_OLD: TStringField;
    odsListT034_ISSUER_NAME_CHD: TStringField;
    odsListT034_ISSUER_INN_CHD: TStringField;
    odsListT034_ISSUER_OGRN_CHD: TStringField;
    odsListT034_ISSUER_COUNTRY_CHD: TStringField;
    odsListT034_ISSUER_RATING_CHD: TStringField;
    odsListT034_EMISSION_RATING_CHD: TStringField;
    odsListT034_EMISSION_NAME_CHD: TStringField;
    odsListT034_INDUSTRY_CHD: TStringField;
    odsListT034_VOLUME_CHD: TStringField;
    odsListT034_CURRENCY_CHD: TStringField;
    odsListT034_EMISSION_TYPE_CHD: TStringField;
    odsListT034_EMISSION_STATE_CHD: TStringField;
    odsListT034_MATURITY_DATE_CHD: TStringField;
    odsListT034_EMISSION_REGN_CHD: TStringField;
    odsListT034_ISIN_CHD: TStringField;
    odsListT034_NOMINAL_CHD: TStringField;
    odsListT034_INDEX_CHD: TStringField;
    odsListT034_COUPON_PERIOD_CHD: TStringField;
    odsListT034_FLOATING_RATE_CHD: TStringField;
    odsListT034_BASE_RATE_CHD: TStringField;
    odsListT034_MARGE_CHD: TStringField;
    odsListT034_CONVERTING_CHD: TStringField;
    odsListT034_DEPENDS_CHD: TStringField;
    odsListT034_AGENT_CHD: TStringField;
    odsListT034_TRADE_IN_CHD: TStringField;
    odsListT034_COMMENTS_CHD: TStringField;
    odsListT034_TRADE_TYPE_CHD: TStringField;
    odsListT034_FIRST_PRICE_CHD: TStringField;
    odsListT034_FIRST_YIELD_CHD: TStringField;
    odsListT034_REG_DATE_CHD: TStringField;
    odsListT034_TRADE_START_DATE_CHD: TStringField;
    odsListT034_TRADE_END_DATE_CHD: TStringField;
    odsListT034_CIRCULAR_START_DATE_CHD: TStringField;
    odsListT034_MMVB_TICKER_CHD: TStringField;
    odsListT034_OFFER_DATE_CHD: TStringField;
    odsListT034_MARKET_SEG_CODE_CHD: TStringField;
    odsListT034_LOT_MULTIPLICITY_CHD: TStringField;
    odsListT034_CIRCULAR_AMOUNT_CHD: TStringField;
    odsListT034_OUTSTANDING_VALUE_CHD: TStringField;
    odsListT034_MINIMAL_TRADE_LOT_CHD: TStringField;
    odsListT034_OPTION_DATE_CHD: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure odsListAfterScroll(DataSet: TDataSet);
    procedure xxxDBGridColEnter(Sender: TObject);
  private
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    function EnableAction(Action: TAction): boolean; override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    //
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    //
  end;

var
  A008_2_LoadedFile: TA008_2_LoadedFile;

implementation

uses
  Graphics, Matrix, A00_MatrixConst;
// Excel97, OleServer, untMessages, dm005_MainData, dm02_PictersData;

{$R *.DFM}

{ Tfrm101_2_LoadFile }

class function TA008_2_LoadedFile.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA008_2_LoadedFile;
end;

class function TA008_2_LoadedFile.GetSelfForm: Tfrm00_Parent;
begin
  Result := A008_2_LoadedFile;
end;

class procedure TA008_2_LoadedFile.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A008_2_LoadedFile) := AForm;
end;

procedure TA008_2_LoadedFile.FormCreate(Sender: TObject);
begin
  inherited;
  CmbShow.ItemIndex := 0;
end;

procedure TA008_2_LoadedFile.DoOnShowPage(const AMainForm: TForm);
begin
  RefreshData('', Unassigned);
  Label5.Caption := '';
end;

procedure TA008_2_LoadedFile.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Applied := True;
  TA001_0_LoadEmit(TA001_0_LoadEmit.Instance).SetStep2Desc('успешно');
end;

function TA008_2_LoadedFile.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actEditAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(RECALC_REMAINS, FALSE)
  end else
  begin
    Result := True;
  end;
end;

procedure TA008_2_LoadedFile.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;

  // Ставим фильтры
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T034_FOR_FILTER');

  // фильтр по эмитентам
  case CmbShow.ItemIndex of
    1: //показываем только новые
      SetNumbFilter('T034_FOR_FILTER', 0); // = 0
    2: // показываем новые и все измененные
      SetNumb03Filter('T034_FOR_FILTER', 3); // <> 3
    3: // показываем только измененные
      SetNumbInFilter('T034_FOR_FILTER', [1, 2]); // IN (1, 2)
    4: // измененные новыми данными
      SetNumbFilter('T034_FOR_FILTER', 1); // = 1
    5: // измененные старыми данными
      SetNumbFilter('T034_FOR_FILTER', 2); // = 2
  end;

  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then
    begin
      DataSet.Last;
    end;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;

  // итоги
  odsTotal.Close;
  odsTotal.Open;
end;

procedure TA008_2_LoadedFile.Button1Click(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure TA008_2_LoadedFile.FormShow(Sender: TObject);
begin
  //if DataSet.Active then Exit;
  //RefreshData('', Unassigned);
end;

procedure TA008_2_LoadedFile.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  VColor: TColor;
  VBkColor: TColor;
begin
  // по умолчанию все темно серое
  VColor := clDkGray;
  VBkColor := xxxDBGrid.Color;

  // новая запись
  if odsListT034_FOR_FILTER.AsFloat = 0 then
    begin
    VColor := xxxDBGrid.Font.Color;
    VBkColor := xxxDBGrid.Color;
    end
  else
    // изменения акции
    begin
    if (Column.FieldName <> 'T034_ISSUER_NAME') and
       (Column.FieldName <> 'T034_ISSUER_INN') and
       (Column.FieldName <> 'T034_ISSUER_OGRN') and
       (Column.FieldName <> 'T034_ISSUER_COUNTRY') and
       (Column.FieldName <> 'T034_ISSUER_RATING') then
      // не данные эмитента
      begin
      if (odsList.FieldByName(Column.FieldName + '_CHD').AsString = '+') then
        begin
        VColor := clRed;
        VBkColor := xxxDBGrid.Color;
        end
      else if (odsList.FieldByName(Column.FieldName + '_CHD').AsString = '-') then
        begin
        VColor := clWhite;
        VBkColor := clPurple;
        end;
      end;
    end;

  // Изменения эмитента
  if (Column.FieldName = 'T034_ISSUER_NAME') or
     (Column.FieldName = 'T034_ISSUER_INN') or
     (Column.FieldName = 'T034_ISSUER_OGRN') or
     (Column.FieldName = 'T034_ISSUER_COUNTRY') or
     (Column.FieldName = 'T034_ISSUER_RATING') then
    begin
    if (odsList.FieldByName(Column.FieldName + '_CHD').AsString = '+') then
      begin
      VColor := clRed;
      VBkColor := xxxDBGrid.Color;
      end
    else if (odsList.FieldByName(Column.FieldName + '_CHD').AsString = '-') then
      begin
      VColor := clWhite;
      VBkColor := clPurple;
      end;
    end;

  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
  begin
    if xxxDBGrid.SelectedRows.CurrentRowSelected then
    begin
      if gdSelected in State then
      begin
        xxxDBGrid.Canvas.Brush.Color := clBlue;
        xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := clBlue;
      end;
    end else
    begin
      if gdSelected in State then
      begin
        xxxDBGrid.Canvas.Brush.Color := VColor;
        xxxDBGrid.Canvas.Font.Color := VBkColor; //xxxDBGrid.Color;
      end else
      begin
        xxxDBGrid.Canvas.Brush.Color := VBkColor; //xxxDBGrid.Color;
        xxxDBGrid.Canvas.Font.Color := VColor;
      end;
    end;
  end;
  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TA008_2_LoadedFile.odsListAfterScroll(DataSet: TDataSet);
begin
  xxxDBGridColEnter(xxxDBGrid);
end;

procedure TA008_2_LoadedFile.xxxDBGridColEnter(Sender: TObject);
begin
  if odsList.FieldByName(xxxDBGrid.SelectedField.FieldName + '_CHD').AsString <> '#' then
    Label5.Caption := '''' + odsList.FieldByName(xxxDBGrid.SelectedField.FieldName + '_OLD').AsString + ''''
  else
    Label5.Caption := '';
end;

end.


