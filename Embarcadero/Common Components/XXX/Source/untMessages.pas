{******************************************************************************
   Название:       untMessages
   Назначение:	   отображение сообщений

   ИСПРАВЛЕНИЯ:
   Версия     Дата        Автор            Описание
   ---------  ----------  ---------------  ------------------------------------
   1.0        17.09.2004  Долженко		   1. Создание модуля
*******************************************************************************}

unit untMessages;

interface

uses SysUtils;

type
  EAppMessages = class(Exception);

  TAppMessages = class(TObject)
  published
    class procedure ShowInformation(const Msg: string);
    class function ShowConfirmation(const Msg: string): Boolean;
    class procedure ShowError(const Msg: string);
    class procedure ShowErrorFmt(const Msg: string; const Args: array of const);
    class procedure Error(const Msg: string);
    class procedure ErrorFmt(const Msg: string; const Args: array of const);
  end;

implementation

uses
  Forms, Windows;

{ TAppMessages }

class procedure TAppMessages.Error(const Msg: string);
begin
  raise EAppMessages.Create(Msg);
end;

class procedure TAppMessages.ErrorFmt(const Msg: string;
  const Args: array of const);
begin
  raise EAppMessages.CreateFmt(Msg, Args);
end;

class function TAppMessages.ShowConfirmation(const Msg: string): Boolean;
begin
  Result := Application.MessageBox(
    PChar(Msg), 'Информация', MB_ICONINFORMATION + MB_YESNO)= ID_YES;
end;

class procedure TAppMessages.ShowError(const Msg: string);
begin
  Application.MessageBox(PChar(Msg), 'Ошибка', MB_ICONERROR + MB_OK);
end;

class procedure TAppMessages.ShowErrorFmt(const Msg: string;
  const Args: array of const);
begin
  ShowError(Format(Msg, Args));
end;

class procedure TAppMessages.ShowInformation(const Msg: string);
begin
  Application.MessageBox(
    PChar(Msg), 'Информация', MB_ICONINFORMATION + MB_OK);
end;

end.
