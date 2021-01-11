unit A001_1_SelectFileForm;

interface

uses
  frm00_ParentForm, A001_0_LoadEmitForm, Db, OracleData, Oracle, Dialogs,
  StdCtrls, Controls, Buttons, Classes, Forms;

type
  Tfrm101_1_SelectFile = class(Tfrm00_Parent, TLoadStepPage)
    Label1: TLabel;
    OpenDialog: TOpenDialog;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    OracleQuery1: TOracleQuery;
    OracleDataSet1: TOracleDataSet;
    procedure SpeedButton1Click(Sender: TObject);
  private
    FInitialDir: String;
    //function GetParentForm: TA001_0_LoadEmit;
    //
    procedure LoadFile;
  protected
    //
    class function GetSelfClass(): Tfrm00_Parents; override;
    class function GetSelfForm(): Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

var
  frm101_1_SelectFile: Tfrm101_1_SelectFile;

implementation

uses
  SysUtils, Windows, A000_File2DbDM, A000_FileDescUnt, A000_ParserExcelDM,
  dm007_Settings;

{$R *.DFM}

{ Tfrm101_1_SelectFile }

class function Tfrm101_1_SelectFile.GetSelfClass(): Tfrm00_Parents;
begin
  Result := Tfrm101_1_SelectFile;
end;

class function Tfrm101_1_SelectFile.GetSelfForm(): Tfrm00_Parent;
begin
  Result := frm101_1_SelectFile;
end;

class procedure Tfrm101_1_SelectFile.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm101_1_SelectFile) := AForm;
end;

procedure Tfrm101_1_SelectFile.DoOnShowPage(const AMainForm: TForm);
begin
end;

procedure Tfrm101_1_SelectFile.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  if FileExists(Edit1.Text) then
  begin
    // загружаем данные из файла

    // пока грузим блокируем форму
    Self.Enabled := False;
    try
      LoadFile;
    finally
      Self.Enabled := True;
    end;

    // сохраняем путь
    dmSettings.SaveRegSetting('LoadPath', FInitialDir);

    // устанавливаем параметры

    {*
    TA001_0_LoadEmit(TA001_0_LoadEmit.Instance).SetStep1Desc(ExtractFileName(Edit1.Text));
    TA001_0_LoadEmit(TA001_0_LoadEmit.Instance).FileName := ExtractFileName(Edit1.Text);
    *}

    Applied := True;
  end else
  begin
    Application.MessageBox(PChar('Файл ' + Edit1.Text + ' не найден.'), 'Ошибка', MB_ICONERROR + MB_OK);
    Applied := False;
  end;
end;

procedure Tfrm101_1_SelectFile.SpeedButton1Click(Sender: TObject);
begin
  FInitialDir := dmSettings.GetRegSetting('LoadPath');
  OpenDialog.InitialDir := FInitialDir;
  if OpenDialog.Execute then
  begin
    Edit1.Text := OpenDialog.FileName;
    FInitialDir := ExtractFilePath(Edit1.Text);
    //GetParentForm.FileLoaded := False;
  end;
end;

procedure Tfrm101_1_SelectFile.LoadFile;
const
{
  SPARK_FIELD: array[0..21, 0..1] of string =
    (
    ('i_T111_FIRM_NAME', 'Наименование'),
    ('i_T036_FULL_NAME', 'Полное наименование'),
    ('i_T111_FIRM_INN', 'ИНН'),
    ('i_T111_REGION', 'Регион'),
    ('i_T111_TICKER_SKRIN', 'Тикер'),
    ('i_T111_INF_TYPE', 'ОКОПФ'),
    ('i_T111_REG_NUMBER', 'ОГРН'),
    ('i_T111_COMPANY_HEAD', 'Руководитель'),
    ('i_T111_INDUSTRY_CODE', 'ОKВЭД'),
    ('i_T111_EMAIL_ADRESS', 'E-mail'),
    ('i_T111_U_ADRESS', 'Адрес (место нахождения)'),
    ('i_T111_F_ADRESS', 'Фактический адрес'),
    ('i_T111_TELEPHONE', 'Телефон'),
    ('i_T111_FAX', 'Факс'),
    ('i_T111_WEB', 'Веб-сайт'),
    //('i_T111_INN_PREV', 'Ранее использованные ИНН'),
    ('i_T111_KPP', 'КПП'),
    ('i_T111_OKFS', 'ОКФС'),
    ('i_T111_OKOGU', 'ОКОГУ'),
    ('i_T111_COMMENT', 'Важная информация'),
    ('i_T111_SPARK_ID', 'Код СПАРК'),
    ('i_T111_OKPO', 'ОКПО'),
    ('i_T111_OKATO', 'ОКАТО')
    );
}
{
-Нет Уточненный адрес
-Нет Факс
-Нет Возраст компании
-Совладельцы, Данные компании - было Совладельцы
-Нет Вид деятельности/отрасль (ОКВЭД КДЕС Ред. 1)
-Нет Код основного вида деятельности (ОКВЭД КДЕС Ред. 1)
-Уставный капитал, RUB - было Уставный капитал, ед. RUB
-Нет Мои списки
-2017, Чистые активы, RUB
-2017, Нераспределенная прибыль (непокрытый убыток), RUB
-2017, Капитал и резервы, RUB
-2017, Выручка, RUB
}

  SPARK_FIELD_A: array[0..43, 0..2] of string =
    (
    ('i_T111_FIRM_NAME',         'Y', 'Наименование'),
    ('i_T111_REG_NUMBER',        'N', 'Регистрационный номер'),               // ОГРН
    ('i_T111_SHORT_NAME',        'N', 'Краткое наименование'),
    ('i_T111_FULL_NAME',         'Y', 'Наименование полное'),
    ('i_T111_U_ADRESS',          'N', 'Адрес (место нахождения)'),
    ('i_T111_F_ADRESS',          'N', 'Уточненный адрес'),
    ('i_T111_COMPANY_HEAD',      'N', 'Руководитель ФИО'),
    ('i_T111_HEAD_POS',          'N', 'Руководитель должность'),
    ('i_T111_HEAD_INN',          'N', 'Руководитель ИНН'),
    ('i_T111_TELEPHONE',         'N', 'Телефон'),
    ('i_T111_FAX',               'N', 'Факс'),
    ('i_T111_EMAIL_ADRESS',      'N', 'Электронный адрес'),
    ('i_T111_WEB',               'N', 'Сайт в сети Интернет'),
    ('i_T111_DATE_START',        'N', 'Дата регистрации'),
    ('i_T111_COMPANY_AGE',       'N', 'Возраст компании'),
    ('i_T111_DATE_END',          'N', 'Дата ликвидации'),
    ('i_T111_STATE',             'Y', 'Статус'),
    ('i_T111_CO_OWNERS',         'N', 'Совладельцы'),
    ('i_T111_FIRM_INN',          'Y', 'Код налогоплательщика'),
    ('i_T111_OKPO',              'N', 'Код статистики'),
    ('i_T111_REGION',            'Y', 'Регион регистрации'),
    ('i_T111_OKATO',             'N', 'Код ОКАТО'),
    ('i_T111_OKTMO',             'N', 'Код ОКТМО'),
    ('i_T111_INDUSTRY_NAME',     'N', 'Вид деятельности/отрасль'),
    ('i_T111_INDUSTRY_CODE',     'Y', 'Код основного вида деятельности'),
    ('i_T111_INDUSTRY_NAME_OLD', 'N', 'Вид деятельности/отрасль (ОКВЭД КДЕС Ред. 1)'),
    ('i_T111_INDUSTRY_CODE_OLD', 'N', 'Код основного вида деятельности (ОКВЭД КДЕС Ред. 1)'),
    ('i_T111_OPF',               'N', 'Организационно-правовая форма'),
    ('i_T111_INF_TYPE',          'N', 'Код ОКОПФ'),
    ('i_T111_OWN_TYPE',          'N', 'Форма собственности'),
    ('i_T111_OKFS',              'N', 'Код ОКФС'),
    ('i_T111_KPP',               'N', 'Код причины постановки на учет'),
    ('i_T111_OKOGU_NAME',        'N', 'ОКОГУ'),
    ('i_T111_OKOGU',             'N', 'Код ОКОГУ'),
    ('i_T111_SPARK_ID',          'N', 'СПАРК код'),
    ('i_T111_TICKER_SKRIN',      'N', 'Тикер биржевой'),
    ('i_T111_OLD_INN',           'N', 'Ранее использованные ИНН'),
    ('i_T111_OLD_OGRN',          'N', 'Ранее использованные ОГРН'),
    ('i_T111_IDO',               'N', 'ИДО'),
    ('i_T111_IFR',               'N', 'ИФР'),
    ('i_T111_COMPANY_SIZE',      'N', 'Размер компании'),
    ('i_T111_SHARE_CAPITAL',     'N', 'Уставный капитал, ед. RUB'),
    ('i_T111_COMMENT_2',         'N', 'Комментарий'),
    ('i_T111_COMMENT',           'N', 'Важная информация')
//    ('i_T111_YEAR_SUM_1',        'N', '2016, Выручка от продажи (за минусом НДС, акцизов ...), ед. RUB'),
//    ('i_T111_YEAR_SUM_2',        'N', '2016, Капитал и резервы, ед. RUB'),
//    ('i_T111_YEAR_SUM_3',        'N', '2016, Нераспределенная прибыль (непокрытый убыток), ед. RUB'),
//    ('i_T111_YEAR_SUM_4',        'N', '2016, Чистые активы, ед. RUB')
    );

var
  I: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
begin
  // загружаем?
  if not CheckBox1.Checked then Exit;

  // загружаем данные из файла
  VLoader := TA000_File2Db.Create(nil);
  try
    VLoader.FileName := Edit1.Text;
    VLoader.BeforeProcName := 'Pk_405_Load_Issuers.p_do_before_load_spark';
//    VLoader.ProcName := 'Pk_405_Load_Issuers.p_add_spark_issuer';
    VLoader.ProcName := 'Pk_405_Load_Issuers.p_add_spark_issuer_a';
//    VLoader.AfterProcName := 'Pk_405_Load_Issuers.p_do_after_load_spark';
    VLoader.AfterProcName := 'Pk_405_Load_Issuers.p_do_after_load_spark_a';
//    VLoader.ParserClass := TA000_ParserADOExcel;
    VLoader.ParserClass := TA000_ParserExcel;
    for I := Low(SPARK_FIELD_A) to High(SPARK_FIELD_A) do
      begin
      VField := VLoader.Fields.Add;
      VField.ParamName := SPARK_FIELD_A[I, 0];
      VField.MustBe := SPARK_FIELD_A[I, 1];
      VField.FieldName := SPARK_FIELD_A[I, 2];
      end;
    VLoader.LoadFile;
  finally
    VLoader.Free;
  end;
end;

end.
