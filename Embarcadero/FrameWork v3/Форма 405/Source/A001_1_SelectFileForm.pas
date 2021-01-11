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
    // ��������� ������ �� �����

    // ���� ������ ��������� �����
    Self.Enabled := False;
    try
      LoadFile;
    finally
      Self.Enabled := True;
    end;

    // ��������� ����
    dmSettings.SaveRegSetting('LoadPath', FInitialDir);

    // ������������� ���������

    {*
    TA001_0_LoadEmit(TA001_0_LoadEmit.Instance).SetStep1Desc(ExtractFileName(Edit1.Text));
    TA001_0_LoadEmit(TA001_0_LoadEmit.Instance).FileName := ExtractFileName(Edit1.Text);
    *}

    Applied := True;
  end else
  begin
    Application.MessageBox(PChar('���� ' + Edit1.Text + ' �� ������.'), '������', MB_ICONERROR + MB_OK);
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
    ('i_T111_FIRM_NAME', '������������'),
    ('i_T036_FULL_NAME', '������ ������������'),
    ('i_T111_FIRM_INN', '���'),
    ('i_T111_REGION', '������'),
    ('i_T111_TICKER_SKRIN', '�����'),
    ('i_T111_INF_TYPE', '�����'),
    ('i_T111_REG_NUMBER', '����'),
    ('i_T111_COMPANY_HEAD', '������������'),
    ('i_T111_INDUSTRY_CODE', '�K���'),
    ('i_T111_EMAIL_ADRESS', 'E-mail'),
    ('i_T111_U_ADRESS', '����� (����� ����������)'),
    ('i_T111_F_ADRESS', '����������� �����'),
    ('i_T111_TELEPHONE', '�������'),
    ('i_T111_FAX', '����'),
    ('i_T111_WEB', '���-����'),
    //('i_T111_INN_PREV', '����� �������������� ���'),
    ('i_T111_KPP', '���'),
    ('i_T111_OKFS', '����'),
    ('i_T111_OKOGU', '�����'),
    ('i_T111_COMMENT', '������ ����������'),
    ('i_T111_SPARK_ID', '��� �����'),
    ('i_T111_OKPO', '����'),
    ('i_T111_OKATO', '�����')
    );
}
{
-��� ���������� �����
-��� ����
-��� ������� ��������
-�����������, ������ �������� - ���� �����������
-��� ��� ������������/������� (����� ���� ���. 1)
-��� ��� ��������� ���� ������������ (����� ���� ���. 1)
-�������� �������, RUB - ���� �������� �������, ��. RUB
-��� ��� ������
-2017, ������ ������, RUB
-2017, ���������������� ������� (���������� ������), RUB
-2017, ������� � �������, RUB
-2017, �������, RUB
}

  SPARK_FIELD_A: array[0..43, 0..2] of string =
    (
    ('i_T111_FIRM_NAME',         'Y', '������������'),
    ('i_T111_REG_NUMBER',        'N', '��������������� �����'),               // ����
    ('i_T111_SHORT_NAME',        'N', '������� ������������'),
    ('i_T111_FULL_NAME',         'Y', '������������ ������'),
    ('i_T111_U_ADRESS',          'N', '����� (����� ����������)'),
    ('i_T111_F_ADRESS',          'N', '���������� �����'),
    ('i_T111_COMPANY_HEAD',      'N', '������������ ���'),
    ('i_T111_HEAD_POS',          'N', '������������ ���������'),
    ('i_T111_HEAD_INN',          'N', '������������ ���'),
    ('i_T111_TELEPHONE',         'N', '�������'),
    ('i_T111_FAX',               'N', '����'),
    ('i_T111_EMAIL_ADRESS',      'N', '����������� �����'),
    ('i_T111_WEB',               'N', '���� � ���� ��������'),
    ('i_T111_DATE_START',        'N', '���� �����������'),
    ('i_T111_COMPANY_AGE',       'N', '������� ��������'),
    ('i_T111_DATE_END',          'N', '���� ����������'),
    ('i_T111_STATE',             'Y', '������'),
    ('i_T111_CO_OWNERS',         'N', '�����������'),
    ('i_T111_FIRM_INN',          'Y', '��� �����������������'),
    ('i_T111_OKPO',              'N', '��� ����������'),
    ('i_T111_REGION',            'Y', '������ �����������'),
    ('i_T111_OKATO',             'N', '��� �����'),
    ('i_T111_OKTMO',             'N', '��� �����'),
    ('i_T111_INDUSTRY_NAME',     'N', '��� ������������/�������'),
    ('i_T111_INDUSTRY_CODE',     'Y', '��� ��������� ���� ������������'),
    ('i_T111_INDUSTRY_NAME_OLD', 'N', '��� ������������/������� (����� ���� ���. 1)'),
    ('i_T111_INDUSTRY_CODE_OLD', 'N', '��� ��������� ���� ������������ (����� ���� ���. 1)'),
    ('i_T111_OPF',               'N', '��������������-�������� �����'),
    ('i_T111_INF_TYPE',          'N', '��� �����'),
    ('i_T111_OWN_TYPE',          'N', '����� �������������'),
    ('i_T111_OKFS',              'N', '��� ����'),
    ('i_T111_KPP',               'N', '��� ������� ���������� �� ����'),
    ('i_T111_OKOGU_NAME',        'N', '�����'),
    ('i_T111_OKOGU',             'N', '��� �����'),
    ('i_T111_SPARK_ID',          'N', '����� ���'),
    ('i_T111_TICKER_SKRIN',      'N', '����� ��������'),
    ('i_T111_OLD_INN',           'N', '����� �������������� ���'),
    ('i_T111_OLD_OGRN',          'N', '����� �������������� ����'),
    ('i_T111_IDO',               'N', '���'),
    ('i_T111_IFR',               'N', '���'),
    ('i_T111_COMPANY_SIZE',      'N', '������ ��������'),
    ('i_T111_SHARE_CAPITAL',     'N', '�������� �������, ��. RUB'),
    ('i_T111_COMMENT_2',         'N', '�����������'),
    ('i_T111_COMMENT',           'N', '������ ����������')
//    ('i_T111_YEAR_SUM_1',        'N', '2016, ������� �� ������� (�� ������� ���, ������� ...), ��. RUB'),
//    ('i_T111_YEAR_SUM_2',        'N', '2016, ������� � �������, ��. RUB'),
//    ('i_T111_YEAR_SUM_3',        'N', '2016, ���������������� ������� (���������� ������), ��. RUB'),
//    ('i_T111_YEAR_SUM_4',        'N', '2016, ������ ������, ��. RUB')
    );

var
  I: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
begin
  // ���������?
  if not CheckBox1.Checked then Exit;

  // ��������� ������ �� �����
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
