unit A007_1_SelectFileForm;

interface

uses
  frm00_ParentForm, A001_0_LoadEmitForm, Db, OracleData, Oracle, Dialogs,
  Controls, StdCtrls, Buttons, Classes, Forms;
//  Messages, Graphics
//  fm21SepDescriptionFrame,
//  DBCtrls, Mask, ToolEdit

type
  TA007_1_SelectFile = class(Tfrm00_Parent, TLoadStepPage)
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
  A007_1_SelectFile: TA007_1_SelectFile;

implementation

uses
  Windows, SysUtils, dm005_MainData, A000_File2DbDM, A000_FileDescUnt,
  Matrix, A000_ParserExcelDM, Registry, dm007_Settings;

{$R *.DFM}

{ Tfrm101_1_SelectFile }

class function TA007_1_SelectFile.GetSelfClass(): Tfrm00_Parents;
begin
  Result := TA007_1_SelectFile;
end;

class function TA007_1_SelectFile.GetSelfForm(): Tfrm00_Parent;
begin
  Result := A007_1_SelectFile;
end;

class procedure TA007_1_SelectFile.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(A007_1_SelectFile) := AForm;
end;

procedure TA007_1_SelectFile.DoOnShowPage(const AMainForm: TForm);
begin

end;

procedure TA007_1_SelectFile.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
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

procedure TA007_1_SelectFile.SpeedButton1Click(Sender: TObject);
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

procedure TA007_1_SelectFile.LoadFile;
const
  STOCKS_FIELDS: array[0..40, 0..1] of string =
    (
    ('i_T033_EMISSION_ID',          'id акции'),
    ('i_T033_ISSUER_ID',            'id Эмитента'),
    ('i_T033_ISSUER_NAME',          'Название эмитента'),
    ('i_T033_ISSUER_INN',           'ИНН эмитента'),
    ('i_T033_NAME_SHORT_RUS',       'Название акции, рус'),
    ('i_T033_NAME_SHORT_ENG',       'Название акции, eng'),
    ('i_T033_FULL_NAME_RUS',        'Полное название акции, рус'),
    ('i_T033_FULL_NAME_ENG',        'Полное название акции, eng'),
    ('i_T033_ISSUE_NUMBER',         'Номер выпуска'),
    ('i_T033_EMISSION_TYPE',        'Вид акции'),
    ('i_T033_MMVB_TRADE_LIST',      'Котировальный лист ММВБ'),
    ('i_T033_RTS_TRADE_LIST',       'Котировальный лист РТС'),
    ('i_T033_EMISSION_REGN',        'Гос. регистрационный номер'),
    ('i_T033_NOMINAL',              'Номинал'),
    ('i_T033_QUANTITY',             'Общее количество бумаг'),
    ('i_T033_COMMENT',              'Дополнительная информация'),
    ('i_T033_FREE_PERCENT',         'Процент в свободном обращении'),
    ('i_T033_MMVB_TRADE',           'Торгуется ли на ММВБ'),
    ('i_T033_MMVB_TICKER',          'Тикер ММВБ'),
    ('i_T033_RTS_TRADE',            'Торгуется ли на РТС'),
    ('i_T033_RTS_TICKER',           'Тикер РТС'),
    ('i_T033_DKK_CODE',             'ДКК код'),
    ('i_T033_RTS_MAIN',             'Главная эмиссий (для акций с одинак.тикером)'),
    ('i_T033_STANDART_TRADE',       'Торгуется ли на Стандарт'),
    ('i_T033_STANDART_TRADE_LIST',  'Котировальный лист Стандарт'),
    ('i_T033_STANDART_TICKER',      'Тикер Стандарт'),
    ('i_T033_STANDART_MAIN',        'Для акций с одинаковым тикером'),
    ('i_T033_ISIN',                 'ISIN Код'),
    ('i_T033_BLUE',                 'Является ли акция голубой фишкой'),
    ('i_T033_MMVB_DATE_START',      'Дата начала обращения на ММВБ'),
    ('i_T033_MMVB_DATE_END',        'Дата окончания обращения на ММВБ'),
    ('i_T033_RTS_DATE_START',       'Дата начала обращения на РТС'),
    ('i_T033_RTS_DATE_END',         'Дата окончания обращения на РТС'),
    ('i_T033_STANDART_DATE_START',  'Дата начала обращения на РТС Стандарт'),
    ('i_T033_STANDART_DATE_END',    'Дата окончания обращения на РТС Стандарт'),
    ('i_T033_IS_JOINED',            'Объеденен с другим выпуском'),
    ('i_T033_JOIN_DATE',            'Дата объединения'),
    ('i_T033_JOIN_ID',              'ID выпуска с которым объединение'),
    ('i_T033_ISSUER_RATING_SP',     'рейтинг Эмитента sp'),
    ('i_T033_ISSUER_RATING_MOODYS', 'рейтинг Эмитента moodys'),
    ('i_T033_ISSUER_RATING_FITCH',  'рейтинг Эмитента fitch')
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
    VLoader.BeforeProcName := 'Pk_Bonds_Load.p_do_before_load_stocks(:i_FILE_NAME, :i_LOAD_DATE, :i_LOADER)';
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

    VLoader.ProcName := 'Pk_Bonds_Load.p_add_stock';
    VLoader.AfterProcName := 'Pk_Bonds_Load.p_do_after_load_stocks';
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
