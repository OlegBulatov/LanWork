unit A008_1_SelectFileForm;

interface

uses
  frm00_ParentForm, A001_0_LoadEmitForm, Db, OracleData, Oracle, Dialogs,
  Controls, StdCtrls, Buttons, Classes, Forms;
//  Messages, Graphics
//  fm21SepDescriptionFrame,
//  DBCtrls, Mask, ToolEdit

type
  TA008_1_SelectFile = class(Tfrm00_Parent, TLoadStepPage)
    Label1: TLabel;
    OpenDialog: TOpenDialog;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    OracleQuery1: TOracleQuery;
    OracleDataSet1: TOracleDataSet;
    procedure SpeedButton1Click(Sender: TObject);
  private
    FInitialDir: String;
    //
    procedure LoadFile;
  protected
    //
    class function GetSelfClass(): Tfrm00_Parents; override;
    class function GetSelfForm(): Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    FFileName: string;

    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

var
  A008_1_SelectFile: TA008_1_SelectFile;

implementation

uses
  Windows, SysUtils, dm005_MainData, A000_File2DbDM, A000_FileDescUnt, Matrix,
  A000_ParserExcelDM, Registry, dm007_Settings;

{$R *.DFM}

{ Tfrm101_1_SelectFile }

class function TA008_1_SelectFile.GetSelfClass(): Tfrm00_Parents;
begin
  Result := TA008_1_SelectFile;
end;

class function TA008_1_SelectFile.GetSelfForm(): Tfrm00_Parent;
begin
  Result := A008_1_SelectFile;
end;

class procedure TA008_1_SelectFile.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(A008_1_SelectFile) := AForm;
end;

procedure TA008_1_SelectFile.DoOnShowPage(const AMainForm: TForm);
begin
end;

procedure TA008_1_SelectFile.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  if FileExists(Edit1.Text) then
    begin
    // пока грузим блокируем форму
    Self.Enabled := False;
    try
      LoadFile;
    finally
      Self.Enabled := True;
    end;
    // сохраняем путь
    dmSettings.SaveRegSetting('LoadBondsPath', FInitialDir);

    Applied := True;
    end
  else
    begin
    Application.MessageBox(PChar('Файл ' + Edit1.Text + ' не найден.'), 'Ошибка', MB_ICONERROR + MB_OK);
    Applied := False;
    end;
end;

procedure TA008_1_SelectFile.SpeedButton1Click(Sender: TObject);
begin
  FInitialDir := dmSettings.GetRegSetting('LoadBondsPath');
  OpenDialog.InitialDir := FInitialDir;
  if OpenDialog.Execute then
  begin
    Edit1.Text := OpenDialog.FileName;
    FInitialDir := ExtractFilePath(Edit1.Text);
    FFileName := ExtractFileName(Edit1.Text);
  end;
end;

procedure TA008_1_SelectFile.LoadFile;
const
  STOCKS_FIELDS: array[0..42, 0..1] of string =
    (
    ('i_T034_ISSUER_NAME',          'Эмитент'),
    ('i_T034_ISSUER_INN',           'ИНН'),
    ('i_T034_ISSUER_OGRN',          'ОГРН'),
    ('i_T034_ISSUER_RATING',        'Рейтинг эмитента'),
    ('i_T034_EMISSION_RATING',      'Рейтинг эмиссии'),
    ('i_T034_EMISSION_NAME',        'Бумага'),
    ('i_T034_INDUSTRY',             'Отрасль'),
    ('i_T034_VOLUME',               'Объем эмиссии'),
    ('i_T034_CURRENCY',             'Валюта'),
    ('i_T034_EMISSION_TYPE',        'Вид долговых обязательств'),
    ('i_T034_EMISSION_STATE',       'Статус'),
    ('i_T034_MATURITY_DATE',        'Дата погашения'),
    ('i_T034_EMISSION_REGN',        'Гос. Регистрационный номер'),
    ('i_T034_ISIN',                 'код ISIN'),
    ('i_T034_NOMINAL',              'Номинал'),
    ('i_T034_INDEX',                'Индексация'),
    ('i_T034_COUPON_PERIOD',        'Периодичность выплаты купона'),
    ('i_T034_FLOATING_RATE',        'Плавающая ставка'),
    ('i_T034_BASE_RATE',            'Базовая ставка'),
    ('i_T034_MARGE',                'Маржа'),
    ('i_T034_CONVERTING',           'Конвертируемость'),
    ('i_T034_DEPENDS',              'Условия досрочного выкупа'),
    ('i_T034_AGENT',                'Агент по размещению облигаций'),
    ('i_T034_TRADE_IN',             'Торговая площадка'),
    ('i_T034_COMMENTS',             'Дополнительная информация'),
    ('i_T034_TRADE_TYPE',           'Вид размещения'),
    ('i_T034_FIRST_PRICE',          'Цена первичного размещения'),
    ('i_T034_FIRST_YIELD',          'Доходность первичного размещения'),
    ('i_T034_REG_DATE',             'Дата регистрации'),
    ('i_T034_TRADE_START_DATE',     'Дата начала размещения'),
    ('i_T034_TRADE_END_DATE',       'Дата окончания размещения'),
    ('i_T034_CIRCULAR_START_DATE',  'Расчетнаяя дата начала обращения'),
    ('i_T034_EMISSION_ID',          'ID Эмиссии'),
    ('i_T034_MMVB_TICKER',          'Торговый код ММВБ (тикер)'),
    ('i_T034_OFFER_DATE',           'Дата ближайшей оферты'),
    ('i_T034_MARKET_SEG_CODE',      'Код сегмента рынка'),
    ('i_T034_LOT_MULTIPLICITY',     'Лот кратности'),
    ('i_T034_ISSUER_COUNTRY',       'Страна эмитента'),
    ('i_T034_CIRCULAR_AMOUNT',      'Объем в обращении'),
    ('i_T034_OUTSTANDING_VALUE',    'Непогашенный номинал'),
    ('i_T034_MINIMAL_TRADE_LOT',    'Минимальный торговый лот'),
    ('i_T034_ISSUER_ID',            'ID эмитента'),
    ('i_T034_OPTION_DATE',          'Дата досрочного погашения')
    );
var
  I: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
  vBuf: array [0..255] of Char;
  vLen: Cardinal;
  vUser: string;
begin
  // зазружаем данные из файла
  VLoader := TA000_File2Db.Create(nil);
  try
    VLoader.FileName := Edit1.Text;
    VLoader.BeforeProcName := 'Pk_Bonds_Load.p_do_before_load_emissions(:i_FILE_NAME, :i_LOAD_DATE, :i_LOADER)';

    VLoader.SetBeforeProcParam('i_FILE_NAME', otString, ExtractFileName(Edit1.Text));
    VLoader.SetBeforeProcParam('i_LOAD_DATE', otDate, Now);

    vLen := SizeOf(vBuf);
    GetComputerName(@vBuf[0], vLen);
    vUser := vBuf;
    vLen := SizeOf(vBuf);
    GetUserName(@vBuf[0], vLen);
    vUser := vUser + '/' + vBuf;
    if dmMain.UseMatrix then
      vUser := vUser + '/' + Matrix.MA.UserLogin
    else
      vUser := vUser + '/';

    VLoader.SetBeforeProcParam('i_LOADER', otString, vUser);

    VLoader.ProcName := 'Pk_Bonds_Load.p_add_emission';
    VLoader.AfterProcName := 'Pk_Bonds_Load.p_do_after_load_emissions';
    VLoader.ParserClass := TA000_ParserExcel;
    for I := Low(STOCKS_FIELDS) to High(STOCKS_FIELDS) do
    begin
      VField := VLoader.Fields.Add;
      VField.ParamName := STOCKS_FIELDS[I, 0];
      VField.FieldName := STOCKS_FIELDS[I, 1];
    end;
    VLoader.LoadFile;
  finally
    VLoader.Free;
  end;
end;

end.
