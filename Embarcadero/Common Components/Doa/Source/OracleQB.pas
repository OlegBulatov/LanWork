// Direct Oracle Access - QueryBuilder (DLL) interface
// Copyright 2001 Allround Automations
// support@allroundautomations.nl
// http://www.allroundautomations.nl

{$I Oracle.inc}

unit OracleQB;

interface

uses
  Windows, Messages, SysUtils, Classes, Forms, Dialogs, Oracle, OracleCI;

var
  QBInit: procedure(Handle: THandle);
  QBClose: procedure;
  RunQueryBuilder: function(Username, Password, Database: PChar; var SQL: PChar): Boolean;

procedure QBCreate(Handle: THandle);
procedure QBFree;
function  CanQB: Boolean;
function  DoQueryBuilder(Session: TOracleSession; var SQL: string): Boolean;

implementation

var HDLL: THandle = hInstance_Error - 1;

function DLLLoaded:Boolean;
begin
  Result := HDLL >= hInstance_Error;
end;

procedure GetProc(Handle: THandle; var OK: Boolean; var Ad: pointer; const Name: string);
begin
  if not OK then
    Ad := nil
  else begin
    Ad := GetProcAddress(Handle, PChar(Name));
    if Ad = nil then OK := False;
  end;
end;

procedure QBCreate(Handle: THandle);
var OK: Boolean;
    Path: string;
begin
  Path := ReadRegString(HKEY_CURRENT_USER, 'Software\Allround Automations\QueryBuilder', 'dll');
  if Path = '' then Path := 'qb.dll';
  HDLL := LoadLibrary(PChar(Path));
  if DLLLoaded then
  begin
    OK := True;
    GetProc(HDLL, OK, @RunQueryBuilder, 'RunQueryBuilder');
    GetProc(HDLL, OK, @QBInit, 'QBInit');
    GetProc(HDLL, OK, @QBClose, 'QBClose');
    if not OK then QBFree;
    if DLLLoaded then QBInit(Handle);
  end;
end;

procedure QBFree;
begin
  if DLLLoaded then
  begin
    QBClose;
    FreeLibrary(HDLL);
  end;
  HDLL := hInstance_Error - 1;
end;

function CanQB: Boolean;
begin
  Result := DLLLoaded;
end;

function DoQueryBuilder(Session: TOracleSession; var SQL: string): Boolean;
var P: PChar;
    Username, Password, Database: string;
begin
  Result := False;
  if not DLLLoaded then
  begin
    ShowMessage('Query Builder not found.' + #13#10#13#10 +
                'Please make sure you have downloaded and' + #13#10 +
                'installed the Query Builder.');
    Exit;
  end;
  P := PChar(SQL);
  if Session = nil then
  begin
    Username := '';
    Password := '';
    Database := '';
  end else begin
    Username := Session.LogonUsername;
    Password := Session.LogonPassword;
    Database := Session.LogonDatabase;
  end;
  if RunQueryBuilder(PChar(Username), PChar(Password), PChar(Database), P) then
  begin
    SQL := P;
    Result := True;
  end;
end;

end.
