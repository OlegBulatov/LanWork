unit A005_1_MCFileForm;

interface

uses
  frm00_ParentForm, Forms, Db, OracleData, Oracle, Dialogs, StdCtrls, Controls,
  Buttons, Classes, A001_0_LoadEmitForm;
//  Windows, Messages, Graphics,
//  fm21SepDescriptionFrame,
//  DBCtrls, Mask, ToolEdit

type
  TA005_1_MCFile = class(Tfrm00_Parent, TLoadStepPage)
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
  A005_1_MCFile: TA005_1_MCFile;

implementation

uses
  SysUtils, Windows, A000_File2DbDM, A000_FileDescUnt, A000_ParserExcelDM,
  Registry, dm007_Settings;

{$R *.DFM}

{ Tfrm101_1_SelectFile }

class function TA005_1_MCFile.GetSelfClass(): Tfrm00_Parents;
begin
  Result := TA005_1_MCFile;
end;

class function TA005_1_MCFile.GetSelfForm(): Tfrm00_Parent;
begin
  Result := A005_1_MCFile;
end;

class procedure TA005_1_MCFile.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(A005_1_MCFile) := AForm;
end;

(*
function TA005_1_MCFile.GetParentForm: TA001_0_LoadEmit;
begin
  Result := TA001_0_LoadEmit(TA001_0_LoadEmit.Instance);
end;
*)

procedure TA005_1_MCFile.DoOnShowPage(const AMainForm: TForm);
begin
end;

procedure TA005_1_MCFile.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
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

procedure TA005_1_MCFile.SpeedButton1Click(Sender: TObject);
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

procedure TA005_1_MCFile.LoadFile;
const
  MC_FIELD: array[0..2, 0..1] of string =
    (
    ('i_T142_SHOT_NAME', 'Наименование'),
    ('i_T142_INN', 'ИНН'),
    ('i_T111_SPARK_ID', 'Код СПАРК')
    );
var
  I: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
begin
  // загружаем?
  if not CheckBox1.Checked then Exit;

  // зазружаем данные из файла
  VLoader := TA000_File2Db.Create(nil);
  try
    VLoader.FileName := Edit1.Text;
    VLoader.BeforeProcName := 'Pk_405_Load_MC.p_do_before_mc';
    VLoader.ProcName := 'Pk_405_Load_MC.p_add_mc';
    VLoader.ParserClass := TA000_ParserExcel;
    for I := Low(MC_FIELD) to High(MC_FIELD) do
    begin
      VField := VLoader.Fields.Add;
      VField.ParamName := MC_FIELD[I, 0];
      VField.FieldName := MC_FIELD[I, 1];
    end;
    VLoader.LoadFile;
  finally
    VLoader.Free;
  end;
end;

end.
