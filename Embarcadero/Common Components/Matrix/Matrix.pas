//****************************************************************************
//**  ������: Matrix
//**  ������: Matrix
//**  ����������: ����� ����� ������� ��� Delphi
//**  �����: ���������� ������ (A@C)
//**  ����: 27.04.2002
//**  ��������: 14.07.2003
//**  ��������: 21.10.2003 ������� �.�. (pdd)
//**  ��������: 04.12.2003 �������� �.�. (MK75)
//****************************************************************************

unit Matrix;

{$DEFINE F402}

interface
  uses Classes, Controls, ComCtrls, Menus,
  {$IFNDEF F402}
  DBTables,CreateTempAlias,
  {$ENDIF}
  Forms, ActnList,
  MatrixServer_TLB,
  MatrixVB_TLB;

  Procedure MatrixInit;

type
  TMatrixAgent = class(TSecurityAgent)
  public
    procedure GrayControls(WC: TWinControl; bReverse: boolean);
    procedure GrayMenuItems(MM: TMenu);
    procedure GrayMenuSubItems(MI: TMenuItem);
    procedure GrayActions(AL: TActionList);
    {$IFNDEF F402}
    function  ConnectDB(Database_Ora: TDatabase): boolean;
    {$ENDIF}
    procedure AuditEventsD(Sender: TObject );
    procedure AuditEvent2(wsFormName : WideString; wsControlName : WideString; wsSubControlName : WideString);
    procedure WriteToLog2( aText: WideString; aResult: OleVariant; anote: WideString);
    function AuditMenuSubItem(MI: TMenuItem; bStart: boolean): string;
    function AuditAction(MI: TAction; bStart: boolean): string;
  protected
    procedure VisibleComponent(oC : TComponent; oG: _CurrentGUI; Visible : boolean);
    procedure EnabledComponent(oC : TComponent; oG: _CurrentGUI; Enabled : boolean);
  end;

var
  //��������� ������� ������
  MA: TMatrixAgent;

implementation


Procedure MatrixInit;
begin
  MA := TMatrixAgent.Create(nil);
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
    cG  : _CurrentGUIs;
    oG  : _CurrentGUI;
    i   : integer;
    v : OleVariant;
    oC  : TComponent;
begin
  //���������� ��������� ��������� ���������� �����
  // True, ���� ����� ���������� ����������� �������� ����������,
  // False - ���� ����� �������� ���������� ������������� ������������
  cG := GetFormControls(WC.Name, bReverse);

  for i:=1 to cG.Count do begin
    v := i;
    oG := cG.Item[v];
    oC := WC.FindComponent(oG.ControlName);
    if oC <> nil then begin
      if oG.HideType = HIDE_VISIBLE then
        VisibleComponent(oC, oG, false)
      else
        EnabledComponent(oC, oG, false);
    end;
  end;
end;

// (pdd)
// ��������� ������� ����
// �������: "��������������","��������","������ �� ��������" - ������� de facto
procedure TMatrixAgent.GrayMenuItems(MM: TMenu);
  var
    i  : integer;
begin
  for i:=0 to MM.Items.Count - 1 do begin
      if not MA.IsOperationPermitted(DelSC(MM.Items[i].Caption), false, '')
        and not MA.IsOperationPermitted(DelSC(MM.Items[i].Caption)+'.��������', false, '')
        and not MA.IsOperationPermitted(DelSC(MM.Items[i].Caption)+'.��������������', false, '')
        and not MA.IsOperationPermitted(DelSC(MM.Items[i].Caption)+'.������ �� ��������', false, '') then
        MM.Items[i].Visible := False
      else
        GrayMenuSubItems(MM.Items[i]);
  end; //for
end;

// (pdd)
// ��������� ���������� ����
// �������: "��������������","��������","������ �� ��������" - ������� de facto
procedure TMatrixAgent.GrayMenuSubItems(MI: TMenuItem);
  var
    i  : integer;
begin
  for i:=0 to MI.Count - 1 do begin
    if MI.Items[i].Caption <> '-' then //�������� �����������
      if not MA.IsOperationPermitted(DelSC(MI.Items[i].Caption), False,'')
        and not MA.IsOperationPermitted(DelSC(MI.Items[i].Caption)+'.��������', false, '')
        and not MA.IsOperationPermitted(DelSC(MI.Items[i].Caption)+'.��������������', false, '')
        and not MA.IsOperationPermitted(DelSC(MI.Items[i].Caption)+'.������ �� ��������', false, '') then
        MI.Items[i].Visible := False
      else
        GrayMenuSubItems(MI.Items[i]);
  end; //for
end;

// (A@C)
// ����������� � ������� ������� ��������� ���� ������
procedure TMatrixAgent.AuditEventsD(Sender: TObject );
 var wsFormName,wsControlName,wsSubControlName : WideString;
begin
 wsFormName:=TWinControl(TWinControl(Sender).Parent).name;
 if Sender is TWinControl then wsControlName:=TWinControl(Sender).name;
 MA.AuditEvent(wsFormName, wsControlName, wsSubControlName);
end;

// (pdd)
// ����������� ���������� �����������, ��������������� ��������
// wsFormName - ��� �����
// wsControlName - ��� ��������
// wsSubControlName - ��� �����������
procedure TMatrixAgent.AuditEvent2(wsFormName : WideString; wsControlName : WideString; wsSubControlName : WideString);
begin
 MA.AuditEvent(wsFormName, wsControlName, wsSubControlName);
end;

// (pdd)
// ����������� ���������� �����������
// aText - �����������
// aResult - ���������: TRUE - �����, FALSE - ������ (��� ������)
// anote - �����������
procedure TMatrixAgent.WriteToLog2( aText: WideString; aResult: OleVariant; anote: WideString);
begin
 MA.WriteToLog(aText, aResult, anote);
end;

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

  if bStart then sNote := '������ ��������������� ��������'
  else sNote := '��������� ��������������� ��������';

  if MI.Caption <> '-' then //�������� �����������
    begin
      if MA.IsOperationPermitted( MI.Caption, FALSE, '') then
        sOperation := MI.Caption
      else if MA.IsOperationPermitted( MI.Caption+'.��������', FALSE, '') then
        sOperation := MI.Caption+'.��������'
      else if MA.IsOperationPermitted( MI.Caption+'.��������������', FALSE, '') then
        sOperation := MI.Caption+'.��������������';

      if sOperation <> '' then WriteToLog2( sOperation, TRUE, sNote);
    end;
  Result := sOperation;
end;

{$IFNDEF F402}
// (A@C)
//�������� ���������� � �� ��� TDatabaseControl
function  TMatrixAgent.ConnectDB(Database_Ora: TDatabase): boolean;
  var
  VNameAlias:     string;
  nDBServer:      OleVariant; //����� ������� �� � ��������� ��������
begin
  VNameAlias := '';
  //�������������
  if Database_Ora.Connected then Database_Ora.Connected := False;
  //�������� ��������� �����
  VNameAlias := CreateTempAlias.GetNameTempAlias(Application.Title, Database_Ora);
  if VNameAlias = '' then
  begin
    //�� ������� �������� ��������� �����
    result:=False;
    Exit;
  end;
  nDBServer:=1; //������ ������ ������ �� ���������
  try
    Database_Ora.AliasName := VNameAlias;
    Database_Ora.Params.Add('USER NAME='+Self.User.ServerLogin);
    Database_Ora.Params.Add('PASSWORD='+Self.User.PasswordTrust);
    Database_Ora.Params.Add('SERVER NAME='+Self.Program_.objColProgramServer.Item[nDBServer].ServerName);
    Database_Ora.Connected := True;
  except
    Database_Ora.Session.DeleteAlias(Database_Ora.AliasName);
    Result := False;
    exit;
  end;
  Result := True;
end;

{$ENDIF}

procedure TMatrixAgent.GrayActions(AL: TActionList);
  var
  i: integer;
begin
  for i:=0 to AL.ActionCount - 1 do begin
      if not MA.IsOperationPermitted(DelSC(TAction(AL.Actions[i]).Caption), false, '')
        and not MA.IsOperationPermitted(DelSC(TAction(AL.Actions[i]).Caption)+'.��������', false, '')
        and not MA.IsOperationPermitted(DelSC(TAction(AL.Actions[i]).Caption)+'.��������������', false, '')
        and not MA.IsOperationPermitted(DelSC(TAction(AL.Actions[i]).Caption)+'.������ �� ��������', false, '') then
        TAction(AL.Actions[i]).Enabled := False;
  end; //for
end;

function TMatrixAgent.AuditAction(MI: TAction; bStart: boolean): string;
  var
    sOperation, sNote : string;
begin
  sOperation := '';

  if bStart then sNote := '������ ��������������� ��������'
  else sNote := '��������� ��������������� ��������';

  if MI.Caption <> '-' then //�������� �����������
    begin
      if MA.IsOperationPermitted( DelSC(MI.Caption), FALSE, '') then
        sOperation := DelSC(MI.Caption)
      else if MA.IsOperationPermitted( DelSC(MI.Caption)+'.��������', FALSE, '') then
        sOperation := DelSC(MI.Caption)+'.��������'
      else if MA.IsOperationPermitted( DelSC(MI.Caption)+'.��������������', FALSE, '') then
        sOperation := DelSC(MI.Caption)+'.��������������';

      if sOperation <> '' then WriteToLog2( sOperation, TRUE, sNote);
    end;
  Result := sOperation;
end;

end.
