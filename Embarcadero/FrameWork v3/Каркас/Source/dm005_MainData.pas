unit dm005_MainData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Oracle, Db, OracleData, dm004_ParentData;

type
  TdmMain = class(TdmParent)
  private
  protected
    function ConnectOperName: String; override;
  public
    function GetProgramName: string; override;
    function GetProgramRegKey: string; override;
    function GetMatrixRegKey: string; override;
    //
    function GetDefUserName: string; override;
    function GetDefPassword: string; override;
    function GetDefDataBase: string; override;
  end;

var
  dmMain: TdmMain;

implementation

uses unt006_MatrixConst;

{$R *.DFM}

{ Tdm02_Main }

function TdmMain.ConnectOperName: String;
begin
  Result := 'Вход в программу Форма 401 6ой раздел';
end;

function TdmMain.GetDefDataBase: string;
begin
  // название строки коннекта из файла tnsnames.ora
  Result := '';
end;

function TdmMain.GetDefPassword: string;
begin
  // пароль к БД
  Result := '';
end;

function TdmMain.GetDefUserName: string;
begin
  // схема в БД
  Result := '';
end;

function TdmMain.GetMatrixRegKey: string;
begin
  // ключ в реестре для Матрикса
  Result := '\Software\Lanit\F401';
end;

function TdmMain.GetProgramName: string;
begin
  // имя программы для Матрикса
  Result := 'Form401';
end;

function TdmMain.GetProgramRegKey: string;
begin
  // ключ в реестре для программы
  Result := '\Software\Lanit\F401';
end;

end.
