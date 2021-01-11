unit A009_1_SelectFileForm;

interface

uses
  frm00_ParentForm, A001_0_LoadEmitForm, Db, OracleData, Oracle, Dialogs,
  Controls, StdCtrls, Buttons, Classes, Forms;
//  Messages, Graphics, fm21SepDescriptionFrame, DBCtrls, Mask, ToolEdit

type
  TA009_1_SelectFile = class(Tfrm00_Parent, TLoadStepPage)
    Label1: TLabel;
    OpenDialog: TOpenDialog;
    SpeedButton1: TSpeedButton;
    OracleQuery1: TOracleQuery;
    OracleDataSet1: TOracleDataSet;
    Memo: TMemo;
    oqBeforeAll: TOracleQuery;
    procedure SpeedButton1Click(Sender: TObject);
  private
    FInitialDir: String;
    //
    procedure LoadFile(AFileName: string);
  protected
    //
    class function GetSelfClass(): Tfrm00_Parents; override;
    class function GetSelfForm(): Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    FFileNames: string;

    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

var
  A009_1_SelectFile: TA009_1_SelectFile;

implementation

uses
  Windows, SysUtils, dm005_MainData, Matrix, A000_File2DbDM, A000_FileDescUnt,
  A000_ParserExcelDM, Registry, dm007_Settings;

{$R *.DFM}

{ Tfrm101_1_SelectFile }

class function TA009_1_SelectFile.GetSelfClass(): Tfrm00_Parents;
begin
  Result := TA009_1_SelectFile;
end;

class function TA009_1_SelectFile.GetSelfForm(): Tfrm00_Parent;
begin
  Result := A009_1_SelectFile;
end;

class procedure TA009_1_SelectFile.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(A009_1_SelectFile) := AForm;
end;

procedure TA009_1_SelectFile.DoOnShowPage(const AMainForm: TForm);
begin
end;

procedure TA009_1_SelectFile.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
var
  vBuf: array [0..255] of Char;
  vLen: Cardinal;
  vUser: string;
  i: integer;
  vFileName: string;
begin
  oqBeforeAll.SetVariable('i_LOAD_DATE', Now);
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
  oqBeforeAll.SetVariable('i_LOADER', vUser);
  oqBeforeAll.Execute;

  for i := 0 to Memo.Lines.Count-1 do
    begin
    vFileName := Memo.Lines[i];
    if FileExists(vFileName) then
      begin
      // пока грузим блокируем форму
      Self.Enabled := False;
      FInitialDir := ExtractFilePath(vFileName);
      try
        LoadFile(vFileName);
      finally
        Self.Enabled := True;
      end;
      end
    else
      begin
      Application.MessageBox(PChar('Файл ' + vFileName + ' не найден.'), 'Ошибка', MB_ICONERROR + MB_OK);
      Applied := False;
      Exit;
      end;
    end;

  // сохраняем путь к последнему еспешно загруженному файлу
  dmSettings.SaveRegSetting('LoadBondsPath', FInitialDir);
  Applied := True;
end;

procedure TA009_1_SelectFile.SpeedButton1Click(Sender: TObject);
var
  i: integer;
begin
  FInitialDir := dmSettings.GetRegSetting('LoadBondsPath');
  OpenDialog.InitialDir := FInitialDir;
  if OpenDialog.Execute then
    begin
    Memo.Lines.Clear;
    for i := OpenDialog.Files.Count -1 downto 0 do
      begin
      Memo.Lines.Add(OpenDialog.Files[i]);
      if FFileNames = '' then
        FFileNames := ExtractFileName(OpenDialog.Files[i])
      else
        FFileNames := FFileNames + '; ' +ExtractFileName(OpenDialog.Files[i]);
      end;
    end;
end;

procedure TA009_1_SelectFile.LoadFile(AFileName: string);
const
  A_FIELDS: array[0..6, 0..1] of string =
    (
    ('i_T042_EMISSION_ID',          'ID Эмиссии'),
    ('i_T042_PAY_DATE',             'Дата выплаты'),
    ('i_T042_COUPON_RATE',          'Ставка купона, % годовых'),
    ('i_T042_COUPON_SUM',           'Сумма купона'),
    ('i_T042_MATURITY',             'Погашение номинала'),
    ('i_T042_COMMENT_RUS',          'Примечание - рус'),
    ('i_T042_COMMENT_ENG',          'Примечание - англ')
    );
var
  I: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
begin
  // загружаем данные из файла
  VLoader := TA000_File2Db.Create(nil);
  try
    VLoader.FileName := AFileName;
    VLoader.BeforeProcName := 'Pk_Bonds_Load.p_do_before_load_payments(:i_FILE_NAME)';
    VLoader.SetBeforeProcParam('i_FILE_NAME', otString, ExtractFileName(AFileName));
    VLoader.ProcName := 'Pk_Bonds_Load.p_add_payment';
    VLoader.AfterProcName := 'Pk_Bonds_Load.p_do_after_load_payments';
    VLoader.ParserClass := TA000_ParserExcel;
    for I := Low(A_FIELDS) to High(A_FIELDS) do
      begin
      VField := VLoader.Fields.Add;
      VField.ParamName := A_FIELDS[I, 0];
      VField.FieldName := A_FIELDS[I, 1];
      end;
    VLoader.LoadFile;
  finally
    VLoader.Free;
  end;
end;

end.
