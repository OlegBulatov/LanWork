unit frm001_LoginForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frm003_DialogForm, ActnList, StdCtrls, ExtCtrls;

type
  Tfrm001_Login = class(Tfrm003_Dialog)
    Label1: TLabel;
    Label2: TLabel;
    txtName: TEdit;
    txtPass: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    FOkClicked: Integer;
  protected
    function SaveChange: Boolean; override;
    function CancelChange: Boolean; override;
  public
  end;

var
  frm001_Login: Tfrm001_Login;

implementation

uses dm005_MainData;

{$R *.DFM}

function Tfrm001_Login.CancelChange: Boolean;
begin
  Result := True;
end;

procedure Tfrm001_Login.FormCreate(Sender: TObject);
var
  VUser: string;
begin
  // имя пользователя берем
  // то что храниться в реестре
  VUser := dmMain.ParamList.Values['UserName'];

  // если запускаем первый раз то подставляем значение по умолчанию
  if VUser = '' then
    VUser := dmMain.GetDefUserName;

  txtName.Text := VUser;
  // пароль
  txtPass.Text := dmMain.GetDefPassword;

  FOkClicked:= 0;
end;

function Tfrm001_Login.SaveChange: Boolean;
begin
  Result := False;
  FOkClicked := FOkClicked + 1;
   if not dmMain.LogonDatabase(txtName.Text, txtPass.Text) then
  begin
    if FOkClicked = 3 then
    begin
      Result := False;
    end;
  end
  else begin
    dmMain.ParamList.Values['UserName']:= txtName.Text;
    Result := True;
  end;
end;

procedure Tfrm001_Login.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssRight in Shift then
    if ssShift in Shift then
      if X < 10 then
	if Y < 10 then
	  begin
	  txtName.Text := dmMain.GetDefUserName;
	  txtPass.Text := dmMain.GetDefPassword;
	  end;

end;

end.
