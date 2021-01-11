unit unt008_Events;

interface

uses
  Classes,
  Windows;

const
  INVALID_HANDLE = 0;

// function GetWindowDC(Wnd: HWnd); HDC; stdcall; external 'user32.dll' name 'GetWindowDC';

type
  TEventsList = class
  private
    EventsList: TList;
  public
    constructor Create;
    procedure   Free;

    procedure Add(EventName: string);
    procedure SetEvent(EventName: string);
    function  IsEventSet(EventName: string): boolean;
  end;

var
  Events: TEventsList;


implementation

uses
  Dialogs,
  SysUtils;

{ TEventsList }

constructor TEventsList.Create;
begin
  EventsList := TList.Create;
end;

procedure TEventsList.Free;
var
  i: integer;
begin
  // убираем пустые элементы
  EventsList.Pack;
  // убиваем созданные event-ы
  for i := 0 to EventsList.Count - 1 do
    CloseHandle(THandle(EventsList.Items[i]));
  // убиваем сам лист
  EventsList.Free;
end;

procedure TEventsList.Add(EventName: string);
var
  hEvent: THandle;
begin
  hEvent := CreateEvent(nil, False, False, PChar(EventName));
  if hEvent = INVALID_HANDLE then
    begin
    RaiseLastWin32Error;
    end;
  EventsList.Add(Pointer(hEvent));
end;

procedure TEventsList.SetEvent(EventName: string);
var
  hEvent: THandle;
  vError: DWORD;
begin
  hEvent := OpenEvent(EVENT_ALL_ACCESS, False, PChar(EventName));
  if hEvent = INVALID_HANDLE then
    begin
    vError := GetLastError;
    SysErrorMessage(vError);
    ShowMessage('Error ' + IntToStr(vError) + ': ' + 'Event ''' + EventName + ''' not found.');

    RaiseLastWin32Error;
    end
  else
    Windows.SetEvent(hEvent);
end;

function TEventsList.IsEventSet(EventName: string): boolean;
var
  hEvent: THandle;
begin
  Result := False;
  hEvent := OpenEvent(EVENT_ALL_ACCESS, False, PChar(EventName));
  if WaitForSingleObject(hEvent, 1) = WAIT_OBJECT_0 then
    Result := TRUE;
end;

initialization
  Events := TEventsList.Create;

finalization
  Events.Free;

end.
