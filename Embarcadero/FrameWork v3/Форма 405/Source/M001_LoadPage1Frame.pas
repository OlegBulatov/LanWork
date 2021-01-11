unit M001_LoadPage1Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm031_WizardPageFrame, ActnList, StdCtrls, ExtCtrls, Mask, ToolEdit,
  fm000_Parent, fm008_DBObjectFrame, fm009_ProgressFrame,
  M001_LoadPage2ProgressFrame, fm040_LoaderFrame;

type
  TM001_LoadPage1 = class(TfmWizardPage)
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Label3: TLabel;
    actSelectFile: TAction;
    procedure actSelectFileUpdate(Sender: TObject);
    procedure actSelectFileExecute(Sender: TObject);
  private
    FInitialDir: String;
    function FileLocked(AFileName: string): boolean;
    function FileSize(AFileName: string): Int64;
  public
    procedure DoOnShowPage(const AType: TMoveType); override;
    function CanClosePage(const AType: TMoveType): Boolean; override;
    procedure DoOnClosePage(const AType: TMoveType); override;

  end;

var
  M001_LoadPage1: TM001_LoadPage1;

implementation

uses
  M001_LoadWizardFrame, Matrix, A00_MatrixConst, dm005_MainData,
  dm007_Settings, untMessages;

{$R *.DFM}

{ TM001_LoadPage1 }

procedure TM001_LoadPage1.DoOnShowPage(const AType: TMoveType);
begin
//
end;

const cMaxFileSize: int64 = 2147483648; // 2 gb
{
1 MB to byte =  1048576 byte
1 GB to byte = 1073741824 byte
2 GB to byte = 2147483648 byte
3 GB to byte = 3221225472 byte
4 GB to byte = 4294967296 byte
5 GB to byte = 5368709120 byte
6 GB to byte = 6442450944 byte
7 GB to byte = 7516192768 byte
8 GB to byte = 8589934592 byte
9 GB to byte = 9663676416 byte
10 GB to byte = 10737418240 byte
}
function TM001_LoadPage1.CanClosePage(const AType: TMoveType): Boolean;
var
  vFileExt: string;
  vMaxSize: Int64;
  vSize: string;
begin
  if FileExists(OpenDialog1.FileName) then
    begin
    TM001_LoadWizard(Wizard).FFileName := OpenDialog1.FileName;
    if FileLocked(OpenDialog1.FileName) = True then
      begin
      TAppMessages.ShowError('Файл занят другим приложением.');
      Result := False;
      end
    else
      begin
      vFileExt := ExtractFileExt(OpenDialog1.FileName);
      if vFileExt = '.xls' then
        begin
        vMaxSize := 57671680;  //55 mb
        vSize := '56 320 Кбайт';
        end
      else if vFileExt = '.xlsx' then
        begin
        vMaxSize := 13107200; //12.5 mb
        vSize := '12 800 Кбайт';
        end
      else
        begin
        vMaxSize := cMaxFileSize;
        vSize := '2 Гбайт';
        end;

      if FileSize(OpenDialog1.FileName) > vMaxSize then
        begin
        TAppMessages.ShowErrorFmt('Размер файла превышает %s.', [vSize]);
        Result := False;
        end
      else
        Result := True;
      end;
    end
  else
    begin
    Application.MessageBox(PChar('Файл ' + OpenDialog1.FileName + ' не найден.'), 'Ошибка', MB_ICONERROR + MB_OK);
    Result := False;
    end;
end;

procedure TM001_LoadPage1.DoOnClosePage(const AType: TMoveType);
begin
  // сохраняем путь к файлу
  dmSettings.SaveRegSetting('LoadPathInnKo', FInitialDir);
end;

procedure TM001_LoadPage1.actSelectFileUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSelectFile.Enabled := Matrix.MA.IsOperationPermitted(LOAD_INN_KO, FALSE)
  else
    actSelectFile.Enabled := True;
end;

procedure TM001_LoadPage1.actSelectFileExecute(Sender: TObject);
begin
  FInitialDir := dmSettings.GetRegSetting('LoadPathInnKo');
  OpenDialog1.InitialDir := FInitialDir;
  if OpenDialog1.Execute then
    begin
    Label3.Caption := OpenDialog1.FileName;
    FInitialDir := ExtractFilePath(OpenDialog1.FileName);
    TM001_LoadWizard(Wizard).actNextExecute(TM001_LoadWizard(Wizard));
    end;
end;

function TM001_LoadPage1.FileLocked(AFileName: string): boolean;
var
  hFile: THandle;
  vError: DWORD;
begin
  Result := False;
  hFile := CreateFile(PChar(AFileName),
                      GENERIC_READ or GENERIC_WRITE,
                      0,
                      nil,
                      OPEN_EXISTING,
                      FILE_ATTRIBUTE_NORMAL,
                      0);

  if hFile = INVALID_HANDLE_VALUE then
    begin
    vError := GetLastError;
    if vError = 32 then
      Result := True;
    end
  else
    CloseHandle(hFile);
end;

function TM001_LoadPage1.FileSize(AFileName: string): Int64;
var
  info: TWin32FileAttributeData;
begin
  Result := -1;
  if not GetFileAttributesEx(PChar(aFileName), GetFileExInfoStandard, @info) then Exit;
  Result := Int64(info.nFileSizeLow) or Int64(info.nFileSizeHigh shl 32);
end;

end.
