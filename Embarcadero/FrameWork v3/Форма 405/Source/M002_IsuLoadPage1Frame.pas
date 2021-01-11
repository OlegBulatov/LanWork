unit M002_IsuLoadPage1Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm031_WizardPageFrame, ActnList, StdCtrls, ExtCtrls, Mask, ToolEdit;

type
  TM002_IsuLoadPage1 = class(TfmWizardPage)
    Label3: TLabel;
    od1: TOpenDialog;
    actSelectFile: TAction;
    btnFile: TButton;
    edFile: TEdit;
    procedure actSelectFileUpdate(Sender: TObject);
    procedure actSelectFileExecute(Sender: TObject);
  private
    FInitialDir: String;
  public
    procedure DoOnShowPage(const AType: TMoveType); override;
    function CanClosePage(const AType: TMoveType): Boolean; override;
    procedure DoOnClosePage(const AType: TMoveType); override;
  end;

var
  M002_IsuLoadPage1: TM002_IsuLoadPage1;

implementation

uses
  M002_IsuLoadWizardFrame, Matrix, A00_MatrixConst,
  dm005_MainData, dm007_Settings;

{$R *.DFM}

function TM002_IsuLoadPage1.CanClosePage(const AType: TMoveType): Boolean;
begin
  if  FileExists(edFile.Text) then
    begin
    TM002_IsuLoadWizard(Wizard).FFileName := edFile.Text;
    Result := True;
    end
  else
    begin
    Application.MessageBox(PChar('Файл ' + edFile.Text + ' не найден.'), 'Ошибка', MB_ICONERROR + MB_OK);
    Result := False;
    end;
end;

procedure TM002_IsuLoadPage1.DoOnClosePage(const AType: TMoveType);
begin
  // сохраняем путь к файлу
  dmSettings.SaveRegSetting('LoadPathIsu', FInitialDir);
end;

procedure TM002_IsuLoadPage1.DoOnShowPage(const AType: TMoveType);
begin
//
end;

procedure TM002_IsuLoadPage1.actSelectFileUpdate(Sender: TObject);
var
  vEnabled: boolean;
begin
  if dmMain.UseMatrix then
    vEnabled := Matrix.MA.IsOperationPermitted(LOAD_ISU_FILE, FALSE)
  else
    vEnabled := True;

  actSelectFile.Enabled := vEnabled;
  edFile.Enabled := vEnabled;
  Label3.Enabled := vEnabled;
end;

procedure TM002_IsuLoadPage1.actSelectFileExecute(Sender: TObject);
begin
  FInitialDir := dmSettings.GetRegSetting('LoadPathIsu');
  od1.InitialDir := FInitialDir;
  if od1.Execute then
    begin
    edFile.Text := od1.FileName;
    FInitialDir := ExtractFilePath(edFile.Text);
    end;
end;

end.
