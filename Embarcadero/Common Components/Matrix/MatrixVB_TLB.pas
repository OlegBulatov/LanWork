unit MatrixVB_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : $Revision:   1.88  $
// File generated on 15.09.2003 15:20:30 from Type Library described below.

// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
// ************************************************************************ //
// Type Lib: D:\Projects\Матрикс\7 Версии ПО\Исходные коды\matrix agent\MatrixVB.tlb (1)
// IID\LCID: {0E7AA5B7-ED73-4D55-BE3C-F96F5A6C89E9}\0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINNT\SYSTEM32\STDOLE2.TLB)
//   (2) v2.0 MatrixServer, (C:\Program Files\MatrixServer\MatrixServer.tlb)
//   (3) v4.0 StdVCL, (C:\WINNT\System32\STDVCL40.DLL)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, OleCtrls, StdVCL, 
  MatrixServer_TLB;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  MatrixVBMajorVersion = 5;
  MatrixVBMinorVersion = 0;

  LIBID_MatrixVB: TGUID = '{0E7AA5B7-ED73-4D55-BE3C-F96F5A6C89E9}';

  IID__SecurityAgent: TGUID = '{584295DB-95B0-4132-87EA-5E110445472C}';
  CLASS_SecurityAgent: TGUID = '{D2A8D522-D200-4D11-98A1-3951C76269FC}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum AUTHORIZATION_RESULT
type
  AUTHORIZATION_RESULT = TOleEnum;
const
  AUTH_OK = $00000000;
  AUTH_CANCEL = $00000001;
  AUTH_ERROR = $00000002;
  AUTH_TOO_MANY_TRIES = $00000003;
  AUTH_USER_IS_LOCKED = $00000004;
  AUTH_USER_NOT_EXISTS = $00000005;
  AUTH_PASSWORD_IS_WRONG = $00000006;
  AUTH_COUNT_EXCECC = $00000007;
  AUTH_COUNT_OF_DUTIES_IS_ZERO = $00000008;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _SecurityAgent = interface;
  _SecurityAgentDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  SecurityAgent = _SecurityAgent;


// *********************************************************************//
// Interface: _SecurityAgent
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {584295DB-95B0-4132-87EA-5E110445472C}
// *********************************************************************//
  _SecurityAgent = interface(IDispatch)
    ['{584295DB-95B0-4132-87EA-5E110445472C}']
    function  Get_oMConn: _MatrixConnection; safecall;
    procedure GhostMethod_32; safecall;
    procedure Set_oMConn(const oMConn: _MatrixConnection); safecall;
    function  Get_ServerName: WideString; safecall;
    procedure Set_ServerName(const ServerName: WideString); safecall;
    function  ChangePassword: WordBool; safecall;
    function  IsOperationPermitted(const Name: WideString; ShowMessage: WordBool; 
                                   const ObjName: WideString): WordBool; safecall;
    procedure AuthorizeProgram(const Name: WideString); safecall;
    function  Get_AuthResult: AUTHORIZATION_RESULT; safecall;
    function  Get_IsAuthorizated: WordBool; safecall;
    function  Get_Program_: _CurrentProgram; safecall;
    function  Get_User: _CurrentUser; safecall;
    procedure Authorize; safecall;
    function  GetFormControls(const FormName: WideString; Enabled: WordBool): _CurrentGUIs; safecall;
    procedure GrayControls(var oFO: IDispatch); safecall;
    procedure WriteToLog(var aText: WideString; var aResult: OleVariant; var anote: WideString); safecall;
    procedure AuditEvent(var aFormName: WideString; var aControlName: WideString; 
                         var aSubElement: WideString); safecall;
    function  Get_Version: WideString; safecall;
    function  Get_ServerVersion: WideString; safecall;
    function  Get_DBPath: WideString; safecall;
    function  OperationSecrecy(const Name: WideString): Smallint; safecall;
    function  MatrixServerCheckSum(var aResult: enumCheckState; var aCheckSumMode: enumCheckSumMode): WideString; safecall;
    property oMConn: _MatrixConnection read Get_oMConn write Set_oMConn;
    property ServerName: WideString read Get_ServerName write Set_ServerName;
    property AuthResult: AUTHORIZATION_RESULT read Get_AuthResult;
    property IsAuthorizated: WordBool read Get_IsAuthorizated;
    property Program_: _CurrentProgram read Get_Program_;
    property User: _CurrentUser read Get_User;
    property Version: WideString read Get_Version;
    property ServerVersion: WideString read Get_ServerVersion;
    property DBPath: WideString read Get_DBPath;
  end;

// *********************************************************************//
// DispIntf:  _SecurityAgentDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {584295DB-95B0-4132-87EA-5E110445472C}
// *********************************************************************//
  _SecurityAgentDisp = dispinterface
    ['{584295DB-95B0-4132-87EA-5E110445472C}']
    property oMConn: _MatrixConnection dispid 1073938432;
    procedure GhostMethod_32; dispid 1610743809;
    property ServerName: WideString dispid 1073938442;
    function  ChangePassword: WordBool; dispid 1610809351;
    function  IsOperationPermitted(const Name: WideString; ShowMessage: WordBool; 
                                   const ObjName: WideString): WordBool; dispid 1610809352;
    procedure AuthorizeProgram(const Name: WideString); dispid 1610809353;
    property AuthResult: AUTHORIZATION_RESULT readonly dispid 1745027078;
    property IsAuthorizated: WordBool readonly dispid 1745027077;
    property Program_: _CurrentProgram readonly dispid 1745027076;
    property User: _CurrentUser readonly dispid 1745027075;
    procedure Authorize; dispid 1610809354;
    function  GetFormControls(const FormName: WideString; Enabled: WordBool): _CurrentGUIs; dispid 1610809355;
    procedure GrayControls(var oFO: IDispatch); dispid 1610809358;
    procedure WriteToLog(var aText: WideString; var aResult: OleVariant; var anote: WideString); dispid 1610809361;
    procedure AuditEvent(var aFormName: WideString; var aControlName: WideString; 
                         var aSubElement: WideString); dispid 1610809362;
    property Version: WideString readonly dispid 1745027074;
    property ServerVersion: WideString readonly dispid 1745027073;
    property DBPath: WideString readonly dispid 1745027072;
    function  OperationSecrecy(const Name: WideString): Smallint; dispid 1610809366;
    function  MatrixServerCheckSum(var aResult: enumCheckState; var aCheckSumMode: enumCheckSumMode): WideString; dispid 1610809367;
  end;

// *********************************************************************//
// The Class CoSecurityAgent provides a Create and CreateRemote method to          
// create instances of the default interface _SecurityAgent exposed by              
// the CoClass SecurityAgent. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSecurityAgent = class
    class function Create: _SecurityAgent;
    class function CreateRemote(const MachineName: string): _SecurityAgent;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSecurityAgent
// Help String      : MatrixVB.SecurityAgent
// Default Interface: _SecurityAgent
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSecurityAgentProperties= class;
{$ENDIF}
  TSecurityAgent = class(TOleServer)
  private
    FIntf:        _SecurityAgent;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSecurityAgentProperties;
    function      GetServerProperties: TSecurityAgentProperties;
{$ENDIF}
    function      GetDefaultInterface: _SecurityAgent;
  protected
    procedure InitServerData; override;
    function  Get_oMConn: _MatrixConnection;
    procedure Set_oMConn(const oMConn: _MatrixConnection);
    function  Get_ServerName: WideString;
    procedure Set_ServerName(const ServerName: WideString);
    function  Get_AuthResult: AUTHORIZATION_RESULT;
    function  Get_IsAuthorizated: WordBool;
    function  Get_Program_: _CurrentProgram;
    function  Get_User: _CurrentUser;
    function  Get_Version: WideString;
    function  Get_ServerVersion: WideString;
    function  Get_DBPath: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _SecurityAgent);
    procedure Disconnect; override;
    procedure GhostMethod_32;
    function  ChangePassword: WordBool;
    function  IsOperationPermitted(const Name: WideString; ShowMessage: WordBool; 
                                   const ObjName: WideString): WordBool;
    procedure AuthorizeProgram(const Name: WideString);
    procedure Authorize;
    function  GetFormControls(const FormName: WideString; Enabled: WordBool): _CurrentGUIs;
    procedure GrayControls(var oFO: IDispatch);
    procedure WriteToLog(var aText: WideString; var aResult: OleVariant; var anote: WideString);
    procedure AuditEvent(var aFormName: WideString; var aControlName: WideString; 
                         var aSubElement: WideString);
    function  OperationSecrecy(const Name: WideString): Smallint;
    function  MatrixServerCheckSum(var aResult: enumCheckState; var aCheckSumMode: enumCheckSumMode): WideString;
    property  DefaultInterface: _SecurityAgent read GetDefaultInterface;
    property oMConn: _MatrixConnection read Get_oMConn write Set_oMConn;
    property AuthResult: AUTHORIZATION_RESULT read Get_AuthResult;
    property IsAuthorizated: WordBool read Get_IsAuthorizated;
    property Program_: _CurrentProgram read Get_Program_;
    property User: _CurrentUser read Get_User;
    property Version: WideString read Get_Version;
    property ServerVersion: WideString read Get_ServerVersion;
    property DBPath: WideString read Get_DBPath;
    property ServerName: WideString read Get_ServerName write Set_ServerName;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSecurityAgentProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSecurityAgent
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSecurityAgentProperties = class(TPersistent)
  private
    FServer:    TSecurityAgent;
    function    GetDefaultInterface: _SecurityAgent;
    constructor Create(AServer: TSecurityAgent);
  protected
    function  Get_oMConn: _MatrixConnection;
    procedure Set_oMConn(const oMConn: _MatrixConnection);
    function  Get_ServerName: WideString;
    procedure Set_ServerName(const ServerName: WideString);
    function  Get_AuthResult: AUTHORIZATION_RESULT;
    function  Get_IsAuthorizated: WordBool;
    function  Get_Program_: _CurrentProgram;
    function  Get_User: _CurrentUser;
    function  Get_Version: WideString;
    function  Get_ServerVersion: WideString;
    function  Get_DBPath: WideString;
  public
    property DefaultInterface: _SecurityAgent read GetDefaultInterface;
  published
    property ServerName: WideString read Get_ServerName write Set_ServerName;
  end;
{$ENDIF}


procedure Register;

implementation

uses ComObj;

class function CoSecurityAgent.Create: _SecurityAgent;
begin
  Result := CreateComObject(CLASS_SecurityAgent) as _SecurityAgent;
end;

class function CoSecurityAgent.CreateRemote(const MachineName: string): _SecurityAgent;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SecurityAgent) as _SecurityAgent;
end;

procedure TSecurityAgent.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D2A8D522-D200-4D11-98A1-3951C76269FC}';
    IntfIID:   '{584295DB-95B0-4132-87EA-5E110445472C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSecurityAgent.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _SecurityAgent;
  end;
end;

procedure TSecurityAgent.ConnectTo(svrIntf: _SecurityAgent);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSecurityAgent.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSecurityAgent.GetDefaultInterface: _SecurityAgent;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSecurityAgent.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSecurityAgentProperties.Create(Self);
{$ENDIF}
end;

destructor TSecurityAgent.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSecurityAgent.GetServerProperties: TSecurityAgentProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function  TSecurityAgent.Get_oMConn: _MatrixConnection;
begin
  Result := DefaultInterface.Get_oMConn;
end;

procedure TSecurityAgent.Set_oMConn(const oMConn: _MatrixConnection);
begin
  DefaultInterface.Set_oMConn(oMConn);
end;

function  TSecurityAgent.Get_ServerName: WideString;
begin
  Result := DefaultInterface.Get_ServerName;
end;

procedure TSecurityAgent.Set_ServerName(const ServerName: WideString);
begin
  DefaultInterface.Set_ServerName(ServerName);
end;

function  TSecurityAgent.Get_AuthResult: AUTHORIZATION_RESULT;
begin
  Result := DefaultInterface.Get_AuthResult;
end;

function  TSecurityAgent.Get_IsAuthorizated: WordBool;
begin
  Result := DefaultInterface.Get_IsAuthorizated;
end;

function  TSecurityAgent.Get_Program_: _CurrentProgram;
begin
  Result := DefaultInterface.Get_Program_;
end;

function  TSecurityAgent.Get_User: _CurrentUser;
begin
  Result := DefaultInterface.Get_User;
end;

function  TSecurityAgent.Get_Version: WideString;
begin
  Result := DefaultInterface.Get_Version;
end;

function  TSecurityAgent.Get_ServerVersion: WideString;
begin
  Result := DefaultInterface.Get_ServerVersion;
end;

function  TSecurityAgent.Get_DBPath: WideString;
begin
  Result := DefaultInterface.Get_DBPath;
end;

procedure TSecurityAgent.GhostMethod_32;
begin
  DefaultInterface.GhostMethod_32;
end;

function  TSecurityAgent.ChangePassword: WordBool;
begin
  Result := DefaultInterface.ChangePassword;
end;

function  TSecurityAgent.IsOperationPermitted(const Name: WideString; ShowMessage: WordBool; 
                                              const ObjName: WideString): WordBool;
begin
  Result := DefaultInterface.IsOperationPermitted(Name, ShowMessage, ObjName);
end;

procedure TSecurityAgent.AuthorizeProgram(const Name: WideString);
begin
  DefaultInterface.AuthorizeProgram(Name);
end;

procedure TSecurityAgent.Authorize;
begin
  DefaultInterface.Authorize;
end;

function  TSecurityAgent.GetFormControls(const FormName: WideString; Enabled: WordBool): _CurrentGUIs;
begin
  Result := DefaultInterface.GetFormControls(FormName, Enabled);
end;

procedure TSecurityAgent.GrayControls(var oFO: IDispatch);
begin
  DefaultInterface.GrayControls(oFO);
end;

procedure TSecurityAgent.WriteToLog(var aText: WideString; var aResult: OleVariant; 
                                    var anote: WideString);
begin
  DefaultInterface.WriteToLog(aText, aResult, anote);
end;

procedure TSecurityAgent.AuditEvent(var aFormName: WideString; var aControlName: WideString; 
                                    var aSubElement: WideString);
begin
  DefaultInterface.AuditEvent(aFormName, aControlName, aSubElement);
end;

function  TSecurityAgent.OperationSecrecy(const Name: WideString): Smallint;
begin
  Result := DefaultInterface.OperationSecrecy(Name);
end;

function  TSecurityAgent.MatrixServerCheckSum(var aResult: enumCheckState; 
                                              var aCheckSumMode: enumCheckSumMode): WideString;
begin
  Result := DefaultInterface.MatrixServerCheckSum(aResult, aCheckSumMode);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSecurityAgentProperties.Create(AServer: TSecurityAgent);
begin
  inherited Create;
  FServer := AServer;
end;

function TSecurityAgentProperties.GetDefaultInterface: _SecurityAgent;
begin
  Result := FServer.DefaultInterface;
end;

function  TSecurityAgentProperties.Get_oMConn: _MatrixConnection;
begin
  Result := DefaultInterface.Get_oMConn;
end;

procedure TSecurityAgentProperties.Set_oMConn(const oMConn: _MatrixConnection);
begin
  DefaultInterface.Set_oMConn(oMConn);
end;

function  TSecurityAgentProperties.Get_ServerName: WideString;
begin
  Result := DefaultInterface.Get_ServerName;
end;

procedure TSecurityAgentProperties.Set_ServerName(const ServerName: WideString);
begin
  DefaultInterface.Set_ServerName(ServerName);
end;

function  TSecurityAgentProperties.Get_AuthResult: AUTHORIZATION_RESULT;
begin
  Result := DefaultInterface.Get_AuthResult;
end;

function  TSecurityAgentProperties.Get_IsAuthorizated: WordBool;
begin
  Result := DefaultInterface.Get_IsAuthorizated;
end;

function  TSecurityAgentProperties.Get_Program_: _CurrentProgram;
begin
  Result := DefaultInterface.Get_Program_;
end;

function  TSecurityAgentProperties.Get_User: _CurrentUser;
begin
  Result := DefaultInterface.Get_User;
end;

function  TSecurityAgentProperties.Get_Version: WideString;
begin
  Result := DefaultInterface.Get_Version;
end;

function  TSecurityAgentProperties.Get_ServerVersion: WideString;
begin
  Result := DefaultInterface.Get_ServerVersion;
end;

function  TSecurityAgentProperties.Get_DBPath: WideString;
begin
  Result := DefaultInterface.Get_DBPath;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents('Servers',[TSecurityAgent]);
end;

end.
