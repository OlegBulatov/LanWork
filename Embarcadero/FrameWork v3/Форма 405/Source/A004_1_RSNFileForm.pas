unit A004_1_RSNFileForm;

interface

uses
  frm00_ParentForm, Forms, Dialogs, Controls, StdCtrls, Buttons, Classes,
  A001_0_LoadEmitForm;
//  Windows, Messages, Graphics,
//  fm21SepDescriptionFrame,
//  Db, OracleData, DBCtrls, Mask, ToolEdit

type
  TA004_1_RSNFile = class(Tfrm00_Parent, TLoadStepPage)
    Label1: TLabel;
    OpenDialog: TOpenDialog;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
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
  A004_1_RSNFile: TA004_1_RSNFile;

implementation

uses
  Windows, SysUtils, Registry, A000_File2DbDM, A000_ParserExcelDM, A000_FileDescUnt,
  dm007_Settings;

{$R *.DFM}

{ Tfrm101_1_SelectFile }

class function TA004_1_RSNFile.GetSelfClass(): Tfrm00_Parents;
begin
  Result := TA004_1_RSNFile;
end;

class function TA004_1_RSNFile.GetSelfForm(): Tfrm00_Parent;
begin
  Result := A004_1_RSNFile;
end;

class procedure TA004_1_RSNFile.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(A004_1_RSNFile) := AForm;
end;

(*
function TA004_1_RSNFile.GetParentForm: TA001_0_LoadEmit;
begin
  Result := TA001_0_LoadEmit(TA001_0_LoadEmit.Instance);
end;
*)

procedure TA004_1_RSNFile.DoOnShowPage(const AMainForm: TForm);
begin
end;

procedure TA004_1_RSNFile.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  if FileExists(Edit1.Text) then
  begin
    // загружаем данные из файла

    // пока грузим блокируем форму
    Self.Enabled := False;
    try
      LoadFile;
    finally
      Self.Enabled := False;
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

procedure TA004_1_RSNFile.SpeedButton1Click(Sender: TObject);
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

procedure TA004_1_RSNFile.LoadFile;
const
  FIELDS: array[0..4, 0..1] of string =
    (
    ('i_T143_FIRM_NAME', 'Краткое наименование'),
    ('i_T143_FIRM_INN', 'ИНН'),
    ('i_T143_IND_CODE', 'ОKВЕД'),
    ('i_T143_IND_NAME', 'Отрасль'),
    ('i_T143_ACT_DATE', 'по состоянию на')
    );
var
  I: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
begin
  // зазружаем данные из файла
  VLoader := TA000_File2Db.Create(nil);
  try
    VLoader.FileName := Edit1.Text;
    VLoader.BeforeProcName := 'Pk_405_Load_RSN.p_do_before_rsn';
    VLoader.ProcName := 'Pk_405_Load_RSN.p_add_rsn';
    VLoader.ParserClass := TA000_ParserExcel;
    for I := Low(FIELDS) to High(FIELDS) do
    begin
      VField := VLoader.Fields.Add;
      VField.ParamName := FIELDS[I, 0];
      VField.FieldName := FIELDS[I, 1];
    end;
    VLoader.LoadFile;
  finally
    VLoader.Free;
  end;
end;

end.
