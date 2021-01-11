//****************************************************************************
//**  ������: Matrix
//**  ������: Matrix
//**  ����������: ����� ����� ������� ��� Delphi
//**  �����: ���������� ������ (A@C)
//**  ����: 27.04.2002
//**  ��������: 14.07.2003
//**  ��������: 21.10.2003 ������� �.�. (pdd)
//**  ��������: 04.12.2003 �������� �.�. (MK75)
//**  ��������: 11.11.2004 ����� �.�.
//****************************************************************************

unit Matrix;

interface

uses
  Classes, Controls, ComCtrls, Menus, SysUtils, Forms, ActnList, Dialogs,
  dm005_MainData, Oracle, Variants;

  procedure MatrixInit;

const

  STATE_NOT_AUTORISED ='STATE_NOT_AUTORISED';

  AUTH_STRINGS: array[0..10] of string =
    ( '�������� �����������',
      '����������� �������� �������������',
      '������ �����������',
      '��������� ���������� ������� �����������',
      '������������ ������������',
      '������������ �� ����������',
      '�������� ������',
      'AUTH_COUNT_EXCECC = 7',
      '������������ �� ����� ��������� ������������ � ������ ���������',
      '���������� ����� ������',
      '���� �������� ������ �����');


  // �������� matrix
//  LOGIN_TO_PROGRAM    = '���� � ��������� Form';
  VIEW_REPORTS        = '������������ �������';

type

//AMS  TMatrixAgent = class(TSecurityAgent)
  TMatrixAgent = class
  private
    FUserName: string;
    FUserLogin: string;
    FSQLTT: String;
    function GetUserLogin: string;
    function GetUserName: string;

{
  protected
//AMS    procedure VisibleComponent(oC : TComponent; oG: _CurrentGUI; Visible : boolean);
//AMS    procedure EnabledComponent(oC : TComponent; oG: _CurrentGUI; Enabled : boolean);

  protected
    ProgramName: String;
  public
    CurrentUser: TCurrentUser;

    function Init(var UserLogin, UserPass, DSNName, ServName: string): boolean; virtual;
    function GetSecOperation(oper_id: string): String;
    procedure WriteToLog(aText: WideString; aResult: OleVariant; anote: WideString);
    function getLastCallResult: String;
}

  public
    CurrentState: string;


    function Login(LoginOperation: string): boolean;
//    procedure GrayControls(WC: TWinControl; bReverse: boolean);
//    procedure GrayMenuItems(aMenu: TMenu);
//    procedure GrayMenuSubItems(aItem: TMenuItem);
//    procedure GrayActions(AL: TActionList);
//    procedure AuditEventsD(Sender: TObject );
//    procedure AuditEvent2(wsFormName : WideString; wsControlName : WideString; wsSubControlName : WideString);
    procedure WriteToLog2( aText: WideString; aResult: OleVariant; anote: WideString);
//    function AuditMenuSubItem(MI: TMenuItem; bStart: boolean): string;
//    function AuditAction(MI: TAction; bStart: boolean): string;

    function IsOperationPermitted(aName: WideString; aShowMessage: WordBool): boolean;
    function ChangePassword: Boolean;
    class procedure CustomizeNewSession(AOracleSession: TOracleSession;
      ASourceSession: TOracleSession = nil);

    constructor Create; reintroduce;
    destructor Destroy; override;
    //
    property UserLogin: string read GetUserLogin;
    property UserName: string read GetUserName;
    property SQLTT: String read FSQLTT;
  end;

var
  //��������� ������� ������
  MA: TMatrixAgent = nil;

implementation

uses ComObj, Windows;

var
  SAgent: OLEVariant;

function getLoginResult(auth_code: integer): String;
begin
  Result := AUTH_STRINGS[auth_code];
end;

procedure MatrixInit;
begin
//AMS  MA := TMatrixAgent.Create(nil);
  MA := TMatrixAgent.Create;
end;

// ������� RemoveShortcutChar ���������� ������ St,
// ������ �� �� ��� ������� '&'
function DelSC(const St: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(St) do
    if St[I] <> '&' then Result := Result + St[I];
end;

{TMatrixAgent}

constructor TMatrixAgent.Create;
begin
  inherited;
  CurrentState := STATE_NOT_AUTORISED;
  FUserName := '';
  FUserLogin := '';
{$IFDEF MATRIX_3}
  SAgent := CreateOleObject('MatrixVB3.SecurityAgent')
{$ELSE}
  try
    SAgent := CreateOleObject('MatrixVB.SecurityAgent');
  except
    on E: EOleSysError do
      begin
      if E.Message = 'Invalid class string' then
        begin
        MessageDlg('�� ���������� Matrix Agent.'+#13#10+'���������� � �������������� �������.', mtError, [mbOk], 0);
        end;
      raise;
      end;
  end;
{$ENDIF}
end;

destructor TMatrixAgent.Destroy;
begin
  SAgent := Unassigned;
  inherited;
end;

function TMatrixAgent.Login(LoginOperation: string): boolean;
begin
  Result:= false;
  SAgent.AuthorizeProgram(WideString(dmMain.GetProgramName));
  CurrentState := getLoginResult(SAgent.AuthResult);
  if not SAgent.IsAuthorizated then
    begin
    MessageDlg('��������� �� ������ ����������� �������� "�������".' + #13#10 +
               '���������� � �������������� �������', mtError, [mbOk], 0);
    Exit;
    end;

  //user authorization
  SAgent.Authorize;
  CurrentState := getLoginResult(SAgent.AuthResult);
  if not SAgent.IsAuthorizated then
    begin
    MessageDlg('������������ �� ������ ����������� �������� "�������": ' + #13#10 +
                CurrentState + '.' + #13#10 +
               '���������� � �������������� �������', mtError, [mbOk], 0);
    Exit;
    end;

  // ��������� �����
  FUserLogin := SAgent.User.Logon;

  // ��������� ���
  FUserName := SAgent.User.Name;

  if not SAgent.IsOperationPermitted(LoginOperation, TRUE, '') then Exit;

  // ��������� ��������� ������������
  if not dmMain.LogonDatabase(SAgent.User.ServerLogin, SAgent.User.PasswordTrust) then Exit;
  FSQLTT := 'begin ' + SAgent.AuthorizeString + '; end;';
  CustomizeNewSession(dmMain.OracleSession);

  SAgent.WriteToLog(LoginOperation, true, '');
  Result:= true;
end;

class procedure TMatrixAgent.CustomizeNewSession(AOracleSession: TOracleSession;
  ASourceSession: TOracleSession = nil);
var
  oqMatrixDo: TOracleQuery;
begin
  if not Assigned(ASourceSession) then
    ASourceSession := dmMain.OracleSession;
  if not AOracleSession.Connected then
  begin
    AOracleSession.LogonDatabase := ASourceSession.LogonDatabase;
    AOracleSession.LogonUsername := ASourceSession.LogonUsername;
    AOracleSession.LogonPassword := ASourceSession.LogonPassword;
    AOracleSession.Connected := true;
  end;
  // ���������� ��� ������� � �������� ���� ������
{$IFDEF MATRIX_3}
  if not Assigned(MA) then
    Exit;
  oqMatrixDo := TOracleQuery.Create(nil);
  try
    oqMatrixDo.Close;
    oqMatrixDo.Session := AOracleSession;
    oqMatrixDo.SQL.Text := 'begin execute immediate ''alter session set current_schema =' + dmMain.GetDefUserName + '''; end;';
    oqMatrixDo.Execute;
    oqMatrixDo.SQL.Text := MA.SQLTT;
    oqMatrixDo.Execute;
    oqMatrixDo.Close;
  finally
    oqMatrixDo.Free;
  end;
{$ENDIF}  
  //--  
end;

{
// (A@C)
procedure TMatrixAgent.VisibleComponent(oC : TComponent; oG: _CurrentGUI; Visible : boolean);
begin
  if oG.GUIType = 'MenuButton' then
    TMenuItem(oC).Visible := Visible
  else if oG.GUIType = 'Tab' then
    TTabSheet(oC).TabVisible := Visible
  else
    TControl(oC).Visible := Visible;
end;

// (A@C)
procedure TMatrixAgent.EnabledComponent(oC : TComponent; oG: _CurrentGUI; Enabled : boolean);
begin
  if oG.GUIType = 'MenuButton' then
    TMenuItem(oC).Enabled := Enabled
  else
    TControl(oC).Enabled := Enabled;
end;

// (A@C)
// (pdd)
// ������������� �����������\��������� ���������.
// bReverse = TRUE, ���� ���������� ������� ����������� � ����������� ��������
// bReverse = FALSE, ���� ���������� ������� ����������� � ����������� ��������
procedure TMatrixAgent.GrayControls(WC: TWinControl; bReverse: boolean);
var
//AMS  cG  : _CurrentGUIs;
//AMS    oG  : _CurrentGUI;
    i: integer;
    v: OleVariant;
    oC: TComponent;
begin
  //���������� ��������� ��������� ���������� �����
  // True, ���� ����� ���������� ����������� �������� ����������,
  // False - ���� ����� �������� ���������� ������������� ������������
//AMS  cG := GetFormControls(WC.Name, bReverse);

  for i := 1 to SAgent.GetFormControls(WC.Name, bReverse).Count do
    begin
    v := i;
//    oG := SAgent.GetFormControls(WC.Name, bReserve).Item[v];
    oC := WC.FindComponent(SAgent.GetFormControls(WC.Name, bReverse).Item[v].ControlName);
    if oC <> nil then begin
      if SAgent.GetFormControls(WC.Name, bReverse).Item[v].HideType = HIDE_VISIBLE then
        VisibleComponent(oC, oG, false)
      else
        EnabledComponent(oC, oG, false);
    end;
  end;
end;

// (pdd)
// ��������� ������� ����
// �������: "��������������","��������","������ �� ��������" - ������� de facto
procedure TMatrixAgent.GrayMenuItems(aMenu: TMenu);
var
  i: integer;
begin
  for i := 0 to aMenu.Items.Count - 1 do
    begin
    if not SAgent.IsOperationPermitted(DelSC(aMenu.Items[i].Caption), False, '')
       and not SAgent.IsOperationPermitted(DelSC(aMenu.Items[i].Caption)+'.��������', False, '')
       and not SAgent.IsOperationPermitted(DelSC(aMenu.Items[i].Caption)+'.��������������', False, '')
       and not SAgent.IsOperationPermitted(DelSC(aMenu.Items[i].Caption)+'.������ �� ��������', False, '') then
      aMenu.Items[i].Visible := False
    else
      GrayMenuSubItems(aMenu.Items[i]);
    end;
end;

// (pdd)
// ��������� ���������� ����
// �������: "��������������","��������","������ �� ��������" - ������� de facto
procedure TMatrixAgent.GrayMenuSubItems(aItem: TMenuItem);
var
  i: integer;
begin
  for i := 0 to aItem.Count - 1 do
    begin
    if aItem.Items[i].Caption <> '-' then //�������� �����������
      if not SAgent.IsOperationPermitted(DelSC(aItem.Items[i].Caption), False,'')
         and not SAgent.IsOperationPermitted(DelSC(aItem.Items[i].Caption)+'.��������', False, '')
         and not SAgent.IsOperationPermitted(DelSC(aItem.Items[i].Caption)+'.��������������', False, '')
         and not SAgent.IsOperationPermitted(DelSC(aItem.Items[i].Caption)+'.������ �� ��������', False, '') then
        aItem.Items[i].Visible := False
      else
        GrayMenuSubItems(aItem.Items[i]);
   end; //for
end;

// (A@C)
// ����������� � ������� ������� ��������� ���� ������
procedure TMatrixAgent.AuditEventsD(Sender: TObject );
var
  wsFormName,wsControlName,wsSubControlName : WideString;
begin
  wsFormName:=TWinControl(TWinControl(Sender).Parent).name;
  if Sender is TWinControl then wsControlName:=TWinControl(Sender).name;
  SAgent.AuditEvent(wsFormName, wsControlName, wsSubControlName);
end;

// (pdd)
// ����������� ���������� �����������, ��������������� ��������
// wsFormName - ��� �����
// wsControlName - ��� ��������
// wsSubControlName - ��� �����������
procedure TMatrixAgent.AuditEvent2(wsFormName : WideString; wsControlName : WideString; wsSubControlName : WideString);
begin
  SAgent.AuditEvent(wsFormName, wsControlName, wsSubControlName);
end;
}

// (pdd)
// ����������� ���������� �����������
// aText - �����������
// aResult - ���������: TRUE - �����, FALSE - ������ (��� ������)
// anote - �����������
procedure TMatrixAgent.WriteToLog2( aText: WideString; aResult: OleVariant; anote: WideString);
begin
  SAgent.WriteToLog(aText, aResult, anote);
end;

{
// (pdd)
// ����������� ������ � ����� ���������� �����������, ��������������� ��������� ����
// ���������� ������������ ����������� ��� ���������� ����������� ������� �����������
// ������������ ������������ ����������� ��������� ���� - ������� de facto
// �������: "��������������","��������" - ������� de facto
function TMatrixAgent.AuditMenuSubItem(MI: TMenuItem; bStart: boolean): string;
var
  sOperation, sNote : string;
begin
  sOperation := '';

  if bStart then
    sNote := '������ ��������������� ��������'
  else
    sNote := '��������� ��������������� ��������';

  if MI.Caption <> '-' then //�������� �����������
    begin
    if SAgent.IsOperationPermitted(MI.Caption, False, '') then
      sOperation := MI.Caption
    else if SAgent.IsOperationPermitted(MI.Caption+'.��������', False, '') then
      sOperation := MI.Caption+'.��������'
    else if SAgent.IsOperationPermitted( MI.Caption+'.��������������', FALSE, '') then
      sOperation := MI.Caption+'.��������������';

    if sOperation <> '' then
      WriteToLog2( sOperation, TRUE, sNote);
    end;
  Result := sOperation;
end;

procedure TMatrixAgent.GrayActions(AL: TActionList);
var
  i: integer;
begin
  for i := 0 to AL.ActionCount - 1 do
    begin
    if not SAgent.IsOperationPermitted(DelSC(TAction(AL.Actions[i]).Caption), false, '')
       and not SAgent.IsOperationPermitted(DelSC(TAction(AL.Actions[i]).Caption)+'.��������', false, '')
       and not SAgent.IsOperationPermitted(DelSC(TAction(AL.Actions[i]).Caption)+'.��������������', false, '')
       and not SAgent.IsOperationPermitted(DelSC(TAction(AL.Actions[i]).Caption)+'.������ �� ��������', false, '') then
      TAction(AL.Actions[i]).Enabled := False;
    end; //for
end;
}

{
function TMatrixAgent.AuditAction(MI: TAction; bStart: boolean): string;
var
  sOperation, sNote : string;
begin
  sOperation := '';

  if bStart then
    sNote := '������ ��������������� ��������'
  else
    sNote := '��������� ��������������� ��������';

  if MI.Caption <> '-' then //�������� �����������
    begin
    if SAgent.IsOperationPermitted( DelSC(MI.Caption), FALSE, '') then
      sOperation := DelSC(MI.Caption)
    else if SAgent.IsOperationPermitted( DelSC(MI.Caption)+'.��������', FALSE, '') then
      sOperation := DelSC(MI.Caption)+'.��������'
    else if SAgent.IsOperationPermitted( DelSC(MI.Caption)+'.��������������', FALSE, '') then
      sOperation := DelSC(MI.Caption)+'.��������������';

    if sOperation <> '' then
      WriteToLog2( sOperation, TRUE, sNote);
    end;

  Result := sOperation;
end;
}

function TMatrixAgent.IsOperationPermitted(aName: WideString; aShowMessage: WordBool): boolean;
begin
  Result := SAgent.IsOperationPermitted(aName, aShowMessage, '');
end;

function TMatrixAgent.ChangePassword: Boolean;
begin
  Result := SAgent.ChangePassword;
end;

function TMatrixAgent.GetUserLogin: string;
begin
  // ���������� �����
  Result := FUserLogin;
end;

function TMatrixAgent.GetUserName: string;
begin
  // ���������� ������ ���
  Result := FUserName;
end;

end.

