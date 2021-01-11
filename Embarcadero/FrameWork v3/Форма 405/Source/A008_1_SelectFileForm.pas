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
    // ���� ������ ��������� �����
    Self.Enabled := False;
    try
      LoadFile;
    finally
      Self.Enabled := True;
    end;
    // ��������� ����
    dmSettings.SaveRegSetting('LoadBondsPath', FInitialDir);

    Applied := True;
    end
  else
    begin
    Application.MessageBox(PChar('���� ' + Edit1.Text + ' �� ������.'), '������', MB_ICONERROR + MB_OK);
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
    ('i_T034_ISSUER_NAME',          '�������'),
    ('i_T034_ISSUER_INN',           '���'),
    ('i_T034_ISSUER_OGRN',          '����'),
    ('i_T034_ISSUER_RATING',        '������� ��������'),
    ('i_T034_EMISSION_RATING',      '������� �������'),
    ('i_T034_EMISSION_NAME',        '������'),
    ('i_T034_INDUSTRY',             '�������'),
    ('i_T034_VOLUME',               '����� �������'),
    ('i_T034_CURRENCY',             '������'),
    ('i_T034_EMISSION_TYPE',        '��� �������� ������������'),
    ('i_T034_EMISSION_STATE',       '������'),
    ('i_T034_MATURITY_DATE',        '���� ���������'),
    ('i_T034_EMISSION_REGN',        '���. ��������������� �����'),
    ('i_T034_ISIN',                 '��� ISIN'),
    ('i_T034_NOMINAL',              '�������'),
    ('i_T034_INDEX',                '����������'),
    ('i_T034_COUPON_PERIOD',        '������������� ������� ������'),
    ('i_T034_FLOATING_RATE',        '��������� ������'),
    ('i_T034_BASE_RATE',            '������� ������'),
    ('i_T034_MARGE',                '�����'),
    ('i_T034_CONVERTING',           '����������������'),
    ('i_T034_DEPENDS',              '������� ���������� ������'),
    ('i_T034_AGENT',                '����� �� ���������� ���������'),
    ('i_T034_TRADE_IN',             '�������� ��������'),
    ('i_T034_COMMENTS',             '�������������� ����������'),
    ('i_T034_TRADE_TYPE',           '��� ����������'),
    ('i_T034_FIRST_PRICE',          '���� ���������� ����������'),
    ('i_T034_FIRST_YIELD',          '���������� ���������� ����������'),
    ('i_T034_REG_DATE',             '���� �����������'),
    ('i_T034_TRADE_START_DATE',     '���� ������ ����������'),
    ('i_T034_TRADE_END_DATE',       '���� ��������� ����������'),
    ('i_T034_CIRCULAR_START_DATE',  '���������� ���� ������ ���������'),
    ('i_T034_EMISSION_ID',          'ID �������'),
    ('i_T034_MMVB_TICKER',          '�������� ��� ���� (�����)'),
    ('i_T034_OFFER_DATE',           '���� ��������� ������'),
    ('i_T034_MARKET_SEG_CODE',      '��� �������� �����'),
    ('i_T034_LOT_MULTIPLICITY',     '��� ���������'),
    ('i_T034_ISSUER_COUNTRY',       '������ ��������'),
    ('i_T034_CIRCULAR_AMOUNT',      '����� � ���������'),
    ('i_T034_OUTSTANDING_VALUE',    '������������ �������'),
    ('i_T034_MINIMAL_TRADE_LOT',    '����������� �������� ���'),
    ('i_T034_ISSUER_ID',            'ID ��������'),
    ('i_T034_OPTION_DATE',          '���� ���������� ���������')
    );
var
  I: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
  vBuf: array [0..255] of Char;
  vLen: Cardinal;
  vUser: string;
begin
  // ��������� ������ �� �����
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
