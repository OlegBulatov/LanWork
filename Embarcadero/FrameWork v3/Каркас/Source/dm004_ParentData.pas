unit dm004_ParentData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, OracleData, Oracle, comctrls, Registry;

type
  TdmParent = class(TDataModule)
    OracleSession: TOracleSession;
    oqGetSetting: TOracleQuery;
    oqSetSetting: TOracleQuery;
    oqMatrixDo: TOracleQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FUseMatrix: Boolean;
    procedure LoadRegParams();
    procedure SaveRegParams();
  protected
    function ConnectOperName: String; virtual;
    //
    function GetRepOutputPath: String;
    procedure SetRepOutputPath(IValue: String);
  public
    ViewHistory: boolean;
    ParamList: TStringList;
    //  
    function GetProgramName: string; virtual;
    function GetProgramRegKey: string; virtual;
    function GetMatrixRegKey: string; virtual;
    //
    function GetDefUserName: string; virtual;
    function GetDefPassword: string; virtual;
    function GetDefDataBase: string; virtual;
    //
    function GetUser: string; virtual;
    //
    function LogonDatabase(UserName, Password: string): boolean;
    procedure StartTransaction;
    procedure Commit;
    procedure Rollback;
    //
    function GetSetting(const AName: string): string;
    procedure SetSetting(const AName, AValue: string);
    //
    //function FillTree(const ATreeView: TTreeView): TDBTree;
    //
    function Login: Boolean;
    function Autologin: Boolean;
    //
    property UseMatrix: Boolean read FUseMatrix write FUseMatrix;
    //
    property RepOutputPath: String read GetRepOutputPath write SetRepOutputPath;
  end;

const
  REP_PATH_REG_KEY: String = 'RepOutputPath';

var
  dmParent: TdmParent;

implementation

uses Matrix, frm001_LoginForm, dm005_MainData;

{$R *.DFM}

{ Tdm01_Main }

function TdmParent.GetRepOutputPath: String;
begin
  Result := ParamList.Values[REP_PATH_REG_KEY];
end;

procedure TdmParent.SetRepOutputPath(IValue: String);
begin
  ParamList.Values[REP_PATH_REG_KEY] := IValue;
end;

function TdmParent.ConnectOperName: String;
begin
  Result := '';
end;

function TdmParent.Login;
var
  LoginForm: Tfrm001_Login;
begin
  if UseMatrix then
    begin
    Result := Matrix.MA.Login(ConnectOperName);
    end
  else if (ParamList.Values['Autologin'] = 'Y') then
    begin
    Result := Autologin;
    end
  else
    begin
    LoginForm := Tfrm001_Login.Create(nil);
    LoginForm.Caption := GetProgramName;
    with LoginForm do
      begin
      Result := ShowModal = mrOk;
      end;
    LoginForm.Free;
    end;
end;

function TdmParent.Autologin: Boolean;
var
  vUser: string;
  vPass: string;
begin
  VUser := ParamList.Values['UserName'];
  // если запускаем первый раз то подставляем значение по умолчанию
  if vUser = '' then
    vUser := GetDefUserName;

  // пароль
  vPass := ParamList.Values['Password'];
  if vPass = '' then
    vPass := GetDefPassword;

  Result := LogonDatabase(vUser, vPass);
end;

(*
function TdmParent.FillTree(const ATreeView: TTreeView): TDBTree;
begin
  // рисуем дерево
  Result := TDBTreeManager.FillTree(
     ATreeView,
     odsTree,
     'M001_ID',
     'M001_PARENT_ID',
     'M001_DISPL_NAME',
     'M001_CLASS_NAME',
     'M001_MX_OPERATION',
     'M001_IMAGE_INDEX'
     );
end;
*)

procedure TdmParent.DataModuleCreate(Sender: TObject);
begin

  // считываем параметры из реестра
  ParamList := TStringList.Create;
  LoadRegParams;                                                  

  // смотрим включен матрикс или нет
  if ParamList.Values['Matrix'] = '' then
    begin
    ParamList.Values['Matrix']:= 'Y';
    end;

  UseMatrix := ParamList.Values['Matrix'] <> 'N';
  if UseMatrix then
    begin
    try
      MatrixInit;
    except
      Application.Terminate;
    end;
    end;
end;

procedure TdmParent.DataModuleDestroy(Sender: TObject);
begin
  SaveRegParams;
  if UseMatrix then
  begin
    if Matrix.MA <> nil then Matrix.MA.Free;
  end;
  ParamList.Free;
end;

function TdmParent.LogonDatabase(UserName, Password: string): boolean;
begin
  Result := false;

  // Смотрим, указана ли БД
  if ParamList.Values['Database'] = '' then
    begin
    Application.MessageBox('В настройках реестра не указана БД.'+#13#10+'Работа невозможна.', PChar(Application.Title), MB_OK + MB_ICONSTOP);
    Application.Terminate;
//    ParamList.Values['Database'] := DATABASE;
    end;

// *** Нижеследующее сделано через вьюху DB_CHECK в Tdm01_Main.Create ***
//{$IFNDEF BANK_VERSION}
//  if ParamList.Values['Database'] <> DATABASE then
//    begin
//    if Application.MessageBox('Вы используете тестовую версию программы.'+#13#10+'Разрешена работа только с тестовой БД.'+#13#10#13#10+'Продолжить?', PChar(Application.Title), MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) <> IDYES then
//      Application.Terminate
//    else
//      ParamList.Values['Database'] := DATABASE;
//    end;
//{$ENDIF}

  with OracleSession do
    begin
    try
      LogonDatabase := ParamList.Values['Database'];
      LogonUsername := UserName;
      LogonPassword := Password;
      Connected := true;
      Result := true;
    except
      on E: Exception do
        begin
        if Pos('-01017', E.Message) > 0 then
          begin
          MessageDlg('Не верно указан логин или пароль!', mtError, [mbOk], 0)
          end
        else
          begin
          MessageDlg(
            'Ошибка при авторизации!' + #13#10 +
            'БД: ' + OracleSession.LogonDatabase + #13#10 +
            'Error: ' + E.Message, mtError, [mbOk], 0);
          end;
        Connected := False;
        end;
      end;
    end;
end;

procedure TdmParent.Commit;
begin
  OracleSession.Commit;
end;

procedure TdmParent.Rollback;
begin
  OracleSession.Rollback;
end;

procedure TdmParent.StartTransaction;
begin
  // !!!
end;


procedure TdmParent.LoadRegParams();
var
  Freg: TRegistry;
  StringListValues: TStringList;
  i: integer;
begin
  StringListValues := TStringList.Create;
  try
    Freg:= TRegistry.Create;
    FReg.RootKey:= HKEY_CURRENT_USER;
    try
      FReg.OpenKey(GetProgramRegKey, true);
      FReg.GetValueNames(StringListValues);
      for i:= 0 to StringListValues.Count - 1 do
        begin
        ParamList.Values[StringListValues[i]]:= FReg.ReadString(StringListValues[i]);
        end;
    finally
      FReg.CloseKey;
      FReg.Free;
    end;
    //showmessage(inttostr(StringListValues.Count));
  finally
    StringListValues.Free;
  end;
end;

procedure TdmParent.SaveRegParams();
var
  Freg: TRegistry;
  i: integer;
begin
  Freg:= TRegistry.Create;
  Freg.RootKey:= HKEY_CURRENT_USER;
  try
    Freg.OpenKey(GetProgramRegKey, true);
    for i:= 0 to ParamList.Count - 1 do
      Freg.WriteString(ParamList.Names[i], ParamList.Values[ParamList.Names[i]]);
  finally
    Freg.CloseKey;
    Freg.Free;
  end;
end;

function TdmParent.GetSetting(const AName: string): string;
begin
  // Читаем настройку
  oqGetSetting.SetVariable('H003_NAME', AName);
  oqGetSetting.Execute;
  Result := oqGetSetting.GetVariable('H003_VALUE');
end;

procedure TdmParent.SetSetting(const AName, AValue: string);
begin
  // Читаем настройку
  oqSetSetting.SetVariable('H003_NAME', AName);
  oqSetSetting.SetVariable('H003_VALUE', AValue);
  oqSetSetting.Execute;
end;

function TdmParent.GetDefDataBase: string;
begin
  // название строки коннекта из файла tnsnames.ora
  // необходимо переопределить в наследниках
end;

function TdmParent.GetDefPassword: string;
begin
  // пароль к БД
  // необходимо переопределить в наследниках
end;

function TdmParent.GetDefUserName: string;
begin
  // схема в БД
  // необходимо переопределить в наследниках
end;

function TdmParent.GetMatrixRegKey: string;
begin
  // ключ в реестре для Матрикса
  // необходимо переопределить в наследниках
end;

function TdmParent.GetProgramName: string;
begin
  // имя программы для Матрикса
  // необходимо переопределить в наследниках
end;

function TdmParent.GetProgramRegKey: string;
begin
  // ключ в реестре для программы
  // необходимо переопределить в наследниках
end;

function TdmParent.GetUser: string;
var
  vBuf: array [0..255] of Char;
  vLen: Cardinal;
  vUser: string;
begin
  vLen := SizeOf(vBuf);
  GetComputerName(@vBuf[0], vLen);
  vUser := vBuf;
  vLen := SizeOf(vBuf);
  GetUserName(@vBuf[0], vLen);
  vUser := vUser + '/' + vBuf;
  if UseMatrix then
//    vUser := vUser + '/' + Matrix.MA.UserLogin
    vUser := vUser + '/' + Matrix.MA.UserName
  else
    vUser := vUser + '/';

  Result := vUser;
end;

end.
