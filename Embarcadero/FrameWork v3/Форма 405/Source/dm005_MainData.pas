unit dm005_MainData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Oracle, Db, OracleData, dm004_ParentData;

const
  PROGRAM_NAME = 'Form405'; // ��� ��������� ��� ��������
{$IFDEF BANK_VERSION}
//  REGISTRY_KEY = '\Software\Lanit\F405';
//  MATRIX_REG_KEY = 'Software\Lanit\Matrix\F405';
  DATABASE = 'dpb';
  USERNAME = 'DPB_405_BOSS';
{$ELSE}
//  REGISTRY_KEY = '\Software\Lanit\F405T';
//  MATRIX_REG_KEY = 'Software\Lanit\Matrix\F405T';
  DATABASE = 'dpbt';
  USERNAME = 'DPB_405_BOSS';
{$ENDIF}

type
  TdmMain = class(TdmParent)
    oqDbCheck: TOracleQuery;
  private
  protected
    function ConnectOperName: String; override;
  public
    ProgramRegistryKey: string;

    function GetProgramName: string; override;
    function GetProgramRegKey: string; override;
    function GetMatrixRegKey: string; override;
    //
    function GetDefUserName: string; override;
    function GetDefPassword: string; override;
    function GetDefDataBase: string; override;
    //
    constructor Create(AOwner: TComponent); override;
  end;

var
  dmMain: TdmMain;

implementation

uses A00_MatrixConst;

{$R *.DFM}

{ Tdm02_Main }

constructor TdmMain.Create(AOwner: TComponent);
var
  vFname : string;
begin
{$IFNDEF BANK_VERSION}
  if Application.MessageBox('�� ����������� �������� ������ ���������.'+#13#10+'���������� ���������.'+#13#10#13#10+'����������?', PChar(Application.Title), MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) <> IDYES then
    Application.Terminate;
  vFname := ExtractFilename(Application.ExeName);
  if Pos('.', vFname) <> 0 then
    vFname := Copy(vFname, 1, Pos('.', vFname)-1);
{$ELSE}
  vFname := 'F405';
{$ENDIF}
  ProgramRegistryKey := '\Software\Lanit\' + vFname;
  inherited;
end;

function TdmMain.ConnectOperName: String;
begin
  Result := LOGIN_TO_PROGRAM;
end;

function TdmMain.GetDefDataBase: string;
begin
  // �������� ������ �������� �� ����� tnsnames.ora
  Result := '';
end;

function TdmMain.GetDefPassword: string;
begin
  // ������ � �� - ���� �� �����������
  Result := '';
end;

function TdmMain.GetDefUserName: string;
begin
  // ����� � ��
  Result := USERNAME;
end;

function TdmMain.GetMatrixRegKey: string;
begin
  // ���� � ������� ��� ��������
//  Result := MATRIX_REG_KEY;
  Result := GetProgramRegKey;
end;

function TdmMain.GetProgramName: string;
begin
  // ��� ��������� ��� ��������
  Result := PROGRAM_NAME;
end;

function TdmMain.GetProgramRegKey: string;
begin
  // ���� � ������� ��� ���������
//  Result := REGISTRY_KEY;
  Result := ProgramRegistryKey;
end;

end.


