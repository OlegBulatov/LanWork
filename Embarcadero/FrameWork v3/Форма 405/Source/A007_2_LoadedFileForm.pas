unit A007_2_LoadedFileForm;

interface

uses
  frm04_ListForm, A001_0_LoadEmitForm, Db, StdCtrls, DBCtrls, Oracle,
  OracleData, Menus, Classes, ActnList, ComCtrls, fm31_FilterFrame, Forms,
  fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, Windows,
  frm00_ParentForm, Variants, System.Actions;
//  Messages, SysUtils, Dialogs,
//  ADODB, ImgList

type
  TFilterRecords = (tfNone, tfNew, tfOld);

  TA007_2_LoadedFile = class(Tfrm04_List, TLoadStepPage)
    GroupBox1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    CbShow: TCheckBox;
    CmbShow: TComboBox;
    Button1: TButton;
    odsTotal: TOracleDataSet;
    dsTotal: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    Label9: TLabel;
    odsTotalR_TOTAL: TFloatField;
    odsTotalR_NEW: TFloatField;
    Label4: TLabel;
    ToolButton5: TToolButton;
    Label5: TLabel;
    odsTotalR_UPDATED: TFloatField;
    odsTotalR_ROLLED: TFloatField;
    odsTotalR_CHANGED: TStringField;
    odsListT033_EMISSION_ID: TFloatField;
    odsListT033_ISSUER_ID: TFloatField;
    odsListT033_ISSUER_NAME: TStringField;
    odsListT033_ISSUER_INN: TStringField;
    odsListT033_NAME_SHORT_RUS: TStringField;
    odsListT033_NAME_SHORT_ENG: TStringField;
    odsListT033_FULL_NAME_RUS: TStringField;
    odsListT033_FULL_NAME_ENG: TStringField;
    odsListT033_ISSUE_NUMBER: TStringField;
    odsListT033_EMISSION_TYPE: TStringField;
    odsListT033_MMVB_TRADE_LIST: TStringField;
    odsListT033_RTS_TRADE_LIST: TStringField;
    odsListT033_EMISSION_REGN: TStringField;
    odsListT033_NOMINAL: TFloatField;
    odsListT033_QUANTITY: TFloatField;
    odsListT033_COMMENT: TStringField;
    odsListT033_FREE_PERCENT: TFloatField;
    odsListT033_MMVB_TRADE: TFloatField;
    odsListT033_MMVB_TICKER: TStringField;
    odsListT033_RTS_TRADE: TFloatField;
    odsListT033_RTS_TICKER: TStringField;
    odsListT033_DKK_CODE: TStringField;
    odsListT033_RTS_MAIN: TFloatField;
    odsListT033_STANDART_TRADE: TFloatField;
    odsListT033_STANDART_TRADE_LIST: TStringField;
    odsListT033_STANDART_TICKER: TStringField;
    odsListT033_STANDART_MAIN: TFloatField;
    odsListT033_ISIN: TStringField;
    odsListT033_BLUE: TFloatField;
    odsListT033_MMVB_DATE_START: TDateTimeField;
    odsListT033_MMVB_DATE_END: TDateTimeField;
    odsListT033_RTS_DATE_START: TDateTimeField;
    odsListT033_RTS_DATE_END: TDateTimeField;
    odsListT033_STANDART_DATE_START: TDateTimeField;
    odsListT033_STANDART_DATE_END: TDateTimeField;
    odsListT033_IS_JOINED: TFloatField;
    odsListT033_JOIN_DATE: TDateTimeField;
    odsListT033_JOIN_ID: TFloatField;
    odsListT033_ISSUER_RATING: TStringField;
    odsListT033_FILE_NAME: TStringField;
    odsListT033_LOAD_DATE: TDateTimeField;
    odsListT033_LOADER: TStringField;
    odsListT033_FOR_FILTER: TFloatField;
    odsListT033_ISSUER_NAME_OLD: TStringField;
    odsListT033_ISSUER_INN_OLD: TStringField;
    odsListT033_NAME_SHORT_RUS_OLD: TStringField;
    odsListT033_NAME_SHORT_ENG_OLD: TStringField;
    odsListT033_FULL_NAME_RUS_OLD: TStringField;
    odsListT033_FULL_NAME_ENG_OLD: TStringField;
    odsListT033_ISSUE_NUMBER_OLD: TStringField;
    odsListT033_EMISSION_TYPE_OLD: TStringField;
    odsListT033_MMVB_TRADE_LIST_OLD: TStringField;
    odsListT033_RTS_TRADE_LIST_OLD: TStringField;
    odsListT033_EMISSION_REGN_OLD: TStringField;
    odsListT033_NOMINAL_OLD: TStringField;
    odsListT033_QUANTITY_OLD: TStringField;
    odsListT033_COMMENT_OLD: TStringField;
    odsListT033_FREE_PERCENT_OLD: TStringField;
    odsListT033_MMVB_TRADE_OLD: TStringField;
    odsListT033_MMVB_TICKER_OLD: TStringField;
    odsListT033_RTS_TRADE_OLD: TStringField;
    odsListT033_RTS_TICKER_OLD: TStringField;
    odsListT033_DKK_CODE_OLD: TStringField;
    odsListT033_RTS_MAIN_OLD: TStringField;
    odsListT033_STANDART_TRADE_OLD: TStringField;
    odsListT033_STANDART_TRADE_LIST_OLD: TStringField;
    odsListT033_STANDART_TICKER_OLD: TStringField;
    odsListT033_STANDART_MAIN_OLD: TStringField;
    odsListT033_ISIN_OLD: TStringField;
    odsListT033_BLUE_OLD: TStringField;
    odsListT033_MMVB_DATE_START_OLD: TStringField;
    odsListT033_MMVB_DATE_END_OLD: TStringField;
    odsListT033_RTS_DATE_START_OLD: TStringField;
    odsListT033_RTS_DATE_END_OLD: TStringField;
    odsListT033_STANDART_DATE_START_OLD: TStringField;
    odsListT033_STANDART_DATE_END_OLD: TStringField;
    odsListT033_IS_JOINED_OLD: TStringField;
    odsListT033_JOIN_DATE_OLD: TStringField;
    odsListT033_JOIN_ID_OLD: TStringField;
    odsListT033_ISSUER_RATING_OLD: TStringField;
    odsListT033_ISSUER_NAME_CHD: TStringField;
    odsListT033_ISSUER_INN_CHD: TStringField;
    odsListT033_NAME_SHORT_RUS_CHD: TStringField;
    odsListT033_NAME_SHORT_ENG_CHD: TStringField;
    odsListT033_FULL_NAME_RUS_CHD: TStringField;
    odsListT033_FULL_NAME_ENG_CHD: TStringField;
    odsListT033_ISSUE_NUMBER_CHD: TStringField;
    odsListT033_EMISSION_TYPE_CHD: TStringField;
    odsListT033_MMVB_TRADE_LIST_CHD: TStringField;
    odsListT033_RTS_TRADE_LIST_CHD: TStringField;
    odsListT033_EMISSION_REGN_CHD: TStringField;
    odsListT033_NOMINAL_CHD: TStringField;
    odsListT033_QUANTITY_CHD: TStringField;
    odsListT033_COMMENT_CHD: TStringField;
    odsListT033_FREE_PERCENT_CHD: TStringField;
    odsListT033_MMVB_TRADE_CHD: TStringField;
    odsListT033_MMVB_TICKER_CHD: TStringField;
    odsListT033_RTS_TRADE_CHD: TStringField;
    odsListT033_RTS_TICKER_CHD: TStringField;
    odsListT033_DKK_CODE_CHD: TStringField;
    odsListT033_RTS_MAIN_CHD: TStringField;
    odsListT033_STANDART_TRADE_CHD: TStringField;
    odsListT033_STANDART_TRADE_LIST_CHD: TStringField;
    odsListT033_STANDART_TICKER_CHD: TStringField;
    odsListT033_STANDART_MAIN_CHD: TStringField;
    odsListT033_ISIN_CHD: TStringField;
    odsListT033_BLUE_CHD: TStringField;
    odsListT033_MMVB_DATE_START_CHD: TStringField;
    odsListT033_MMVB_DATE_END_CHD: TStringField;
    odsListT033_RTS_DATE_START_CHD: TStringField;
    odsListT033_RTS_DATE_END_CHD: TStringField;
    odsListT033_STANDART_DATE_START_CHD: TStringField;
    odsListT033_STANDART_DATE_END_CHD: TStringField;
    odsListT033_IS_JOINED_CHD: TStringField;
    odsListT033_JOIN_DATE_CHD: TStringField;
    odsListT033_JOIN_ID_CHD: TStringField;
    odsListT033_ISSUER_RATING_CHD: TStringField;
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
  A007_2_LoadedFile: TA007_2_LoadedFile;

implementation

uses
  Graphics, Matrix, A00_MatrixConst;
//uses Excel97, OleServer, untMessages, , dm005_MainData, dm02_PictersData;

{$R *.DFM}

{ Tfrm101_2_LoadFile }

class function TA007_2_LoadedFile.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA007_2_LoadedFile;
end;

class function TA007_2_LoadedFile.GetSelfForm: Tfrm00_Parent;
begin
  Result := A007_2_LoadedFile;
end;

class procedure TA007_2_LoadedFile.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A007_2_LoadedFile) := AForm;
end;

procedure TA007_2_LoadedFile.FormCreate(Sender: TObject);
begin
  inherited;
  CmbShow.ItemIndex := 0;
end;

procedure TA007_2_LoadedFile.DoOnShowPage(const AMainForm: TForm);
begin
  RefreshData('', Unassigned);
  Label5.Caption := '';
end;

procedure TA007_2_LoadedFile.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  Applied := True;
  TA001_0_LoadEmit(TA001_0_LoadEmit.Instance).SetStep2Desc('успешно');
end;

function TA007_2_LoadedFile.EnableAction(Action: TAction): boolean;
begin
  if Action.Name = 'actEditAttributes' then
  begin
    Result := Matrix.MA.IsOperationPermitted(RECALC_REMAINS, FALSE)
  end else
  begin
    Result := True;
  end;
end;

procedure TA007_2_LoadedFile.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // обновляем данные
  DataSet.Close;

  // Ставим фильтры
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T033_FOR_FILTER');

  // фильтр по эмитентам
  case CmbShow.ItemIndex of
    1: //показываем только новые
      SetNumbFilter('T033_FOR_FILTER', 0); // = 0
    2: // показываем новые и все измененные
      SetNumb03Filter('T033_FOR_FILTER', 3); // <> 3
    3: // показываем только измененные
      SetNumbInFilter('T033_FOR_FILTER', [1, 2]); // IN (1, 2)
    4: // измененные новыми данными
      SetNumbFilter('T033_FOR_FILTER', 1); // = 1
    5: // измененные старыми данными
      SetNumbFilter('T033_FOR_FILTER', 2); // = 2
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

procedure TA007_2_LoadedFile.Button1Click(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure TA007_2_LoadedFile.FormShow(Sender: TObject);
begin
  //if DataSet.Active then Exit;
  //RefreshData('', Unassigned);
end;

procedure TA007_2_LoadedFile.xxxDBGridDrawColumnCell(Sender: TObject;
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
  if odsListT033_FOR_FILTER.AsFloat = 0 then
    begin
    VColor := xxxDBGrid.Font.Color;
    VBkColor := xxxDBGrid.Color;
    end
  else
    // изменения акции
    begin
    if (Column.FieldName <> 'T033_ISSUER_NAME') and
       (Column.FieldName <> 'T033_ISSUER_INN') and
       (Column.FieldName <> 'T033_ISSUER_RATING') then
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

  // Измененя эмитента
  if (Column.FieldName = 'T033_ISSUER_NAME') or
     (Column.FieldName = 'T033_ISSUER_INN') or
     (Column.FieldName = 'T033_ISSUER_RATING') then
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

procedure TA007_2_LoadedFile.odsListAfterScroll(DataSet: TDataSet);
begin
  xxxDBGridColEnter(xxxDBGrid);                                     
end;

procedure TA007_2_LoadedFile.xxxDBGridColEnter(Sender: TObject);
begin
  if odsList.FieldByName(xxxDBGrid.SelectedField.FieldName + '_CHD').AsString <> '#' then
    Label5.Caption := '''' + odsList.FieldByName(xxxDBGrid.SelectedField.FieldName + '_OLD').AsString + ''''
  else
    Label5.Caption := '';
end;

end.


