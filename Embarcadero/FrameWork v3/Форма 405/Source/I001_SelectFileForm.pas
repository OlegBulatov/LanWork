unit I001_SelectFileForm;

interface

uses
  frm00_ParentForm, A001_0_LoadEmitForm, Windows, Forms, Dialogs, Db,
  OracleData, Oracle, Controls, StdCtrls, Buttons, Classes;
// Messages, Graphics

type
  TI001_SelectFile = class(Tfrm00_Parent, TLoadStepPage)
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    OracleQuery1: TOracleQuery;
    OracleDataSet1: TOracleDataSet;
    OpenDialog: TOpenDialog;
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
  I001_SelectFile: TI001_SelectFile;

implementation

uses
  SysUtils, Registry, A000_File2DbDM, A000_FileDescUnt, A000_ParserExcelDM,
  dm007_Settings;
// dm005_MainData,
//  Matrix;

{$R *.DFM}

{ TI001_SelectFile }

class function TI001_SelectFile.GetSelfClass: Tfrm00_Parents;
begin
  Result := TI001_SelectFile;
end;

class function TI001_SelectFile.GetSelfForm: Tfrm00_Parent;
begin
  Result := I001_SelectFile;
end;

class procedure TI001_SelectFile.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(I001_SelectFile) := AForm;
end;

procedure TI001_SelectFile.DoOnShowPage(const AMainForm: TForm);
begin

end;

procedure TI001_SelectFile.DoOnClosePage(const AMainForm: TForm;
  var Applied: boolean);
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

procedure TI001_SelectFile.SpeedButton1Click(Sender: TObject);
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

procedure TI001_SelectFile.LoadFile;
const
  EXCEL_FIELDS: array[0..5, 0..1] of string =
    (
    ('i_T028_NAME',     'НАИМЕНОВАНИЕ_ЭМИТЕНТА'),
    ('i_T028_INN',      'ИНН УК'),
    ('i_T028_TYPE',     'ТИП_ЭМИТЕНТА'),
    ('i_T026_SEC_REGN', 'РЕГ_НОМЕР_ЦБ'),
    ('i_DATA_REG',      'ДАТА_ОТКР'),
    ('i_DATA_CLOSE',    'ДАТА_ЗАКР')
    );
var
  I: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
//  vBuf: array [0..255] of Char;
//  vLen: Cardinal;
//  vUser: string;
begin
  // зазружаем данные из файла
  VLoader := TA000_File2Db.Create(nil);
  try
    VLoader.FileName := Edit1.Text;
    VLoader.BeforeProcName := 'PK_405_LOAD_PIF.P_DO_BEFORE_PIF';

//    VLoader.SetBeforeProcParam('i_FILE_NAME', otString, ExtractFileName(Edit1.Text));
//    VLoader.SetBeforeProcParam('i_LOAD_DATE', otDate, Now);

//    vLen := SizeOf(vBuf);
//    GetComputerName(@vBuf[0], vLen);
//    vUser := vBuf;
//    vLen := SizeOf(vBuf);
//    GetUserName(@vBuf[0], vLen);
//    vUser := vUser + '/' + vBuf;
//    if dmMain.UseMatrix then
//      vUser := vUser + '/' + Matrix.MA.UserLogin
//    else
//      vUser := vUser + '/';
//    VLoader.SetBeforeProcParam('i_LOADER', otString, vUser);

    VLoader.ProcName := 'DPB_405_BOSS.PK_405_LOAD_PIF.p_add_pif';
//    VLoader.AfterProcName := 'DPB_405_BOSS.PK_405_LOAD_PIF.p_save_data';
    VLoader.ParserClass := TA000_ParserExcel;
    for I := Low(EXCEL_FIELDS) to High(EXCEL_FIELDS) do
      begin
      VField := VLoader.Fields.Add;
      VField.ParamName := EXCEL_FIELDS[I, 0];
      VField.FieldName := EXCEL_FIELDS[I, 1];
      end;
    VLoader.LoadFile;
  finally
    VLoader.Free;
  end;
end;

end.
