unit MatrixServer_TLB;

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
// File generated on 15.09.2003 15:20:29 from Type Library described below.

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
// Type Lib: C:\Program Files\MatrixServer\MatrixServer.tlb (1)
// IID\LCID: {CF4820DB-3C30-45FB-9EBC-7415BBEAE76D}\0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINNT\SYSTEM32\STDOLE2.TLB)
//   (2) v2.5 ADODB, (C:\Program Files\Common Files\system\ado\msado25.tlb)
// Parent TypeLibrary:
//   (0) v5.0 MatrixVB, (D:\Projects\Матрикс\7 Версии ПО\Исходные коды\matrix agent\MatrixVB.tlb)
// Errors:
//   Hint: Enum Member 'File' of 'enumFileTypes' changed to 'File_'
//   Hint: Enum Member 'File' of 'enumFileTypes' changed to 'File_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, OleCtrls, StdVCL, 
  ADODB_TLB;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  MatrixServerMajorVersion = 2;
  MatrixServerMinorVersion = 0;

  LIBID_MatrixServer: TGUID = '{CF4820DB-3C30-45FB-9EBC-7415BBEAE76D}';

  IID__CurrentProgram: TGUID = '{A1D0A3AF-71EF-441F-BE99-07785201634A}';
  CLASS_CurrentProgram: TGUID = '{D5E8D268-1283-4A98-9041-05A395512AD4}';
  IID__CurrentUser: TGUID = '{8760684E-5604-43B4-889A-5F35EFA4C97C}';
  CLASS_CurrentUser: TGUID = '{CE120CE6-DDC6-4DB2-8157-C3C0CCE2A306}';
  IID__Duties: TGUID = '{68855FEF-2E38-42A6-8714-A462D362CA7F}';
  CLASS_Duties: TGUID = '{789EE0B1-FD68-4C7A-9806-5D173B04E9F6}';
  IID__MatrixConnection: TGUID = '{1D5B59EC-D5D9-4162-B4C6-CED134C1A14D}';
  CLASS_MatrixConnection: TGUID = '{40B66126-6A00-4203-AF5C-8E6E2B87E795}';
  IID__Duty: TGUID = '{AFB8BC10-3BB6-4563-BF36-736E3786E869}';
  CLASS_Duty: TGUID = '{713563A1-6EC0-41FB-9FC5-442B60BBF7B6}';
  IID__colProgrammServer: TGUID = '{119C9D72-7716-482D-A27C-09D0CA103B14}';
  CLASS_colProgrammServer: TGUID = '{0C4E54EE-AD8C-4DBC-AD22-38F80B5B0834}';
  IID__clsProgramServer: TGUID = '{D0C57E85-465F-4C62-8914-5B1ED1DDEE3F}';
  CLASS_clsProgramServer: TGUID = '{B6E8F3B4-AE08-403B-91DE-84164F4EF8B0}';
  IID__ProgramParams: TGUID = '{9D818619-DE1A-4012-90AB-84612944EA29}';
  CLASS_ProgramParams: TGUID = '{DEE6682A-F7E4-4264-9ED6-1D264DB4151E}';
  IID__ProgramParam: TGUID = '{ED307A8E-1C07-4201-B824-031D8C1E6F1B}';
  CLASS_ProgramParam: TGUID = '{BA125941-EF1B-4678-AFE8-A723E1BD0FDA}';
  IID__SecurityParams: TGUID = '{4DE86A38-D8CF-479B-9939-BAACF0129397}';
  CLASS_SecurityParams: TGUID = '{28A28FEF-5F8E-423A-BB87-4ECE9C4599C2}';
  IID__clsFileObject: TGUID = '{96C5FF7C-983E-48E2-A9A7-3981ECC51CA4}';
  CLASS_clsFileObject: TGUID = '{AB3F7A43-C1BE-4E51-ADBA-8CB362545A08}';
  IID__colFileObjects: TGUID = '{761E90EB-332F-4247-9C32-A7D5BF92F624}';
  CLASS_colFileObjects: TGUID = '{9DF12E74-7C65-4DE1-973C-59B25B902D37}';
  IID__CurrentGUIs: TGUID = '{5DE4D2CE-0A47-4AA3-99E0-5B39C0F4B692}';
  CLASS_CurrentGUIs: TGUID = '{9794724B-2B40-48D4-9384-611096F7E237}';
  IID__CurrentGUI: TGUID = '{7EDC137F-965B-432D-959C-E091C9ABE603}';
  CLASS_CurrentGUI: TGUID = '{9C8BF905-5875-4EA5-9001-6533665720E9}';
  IID__clsHash: TGUID = '{75DC2051-BDDD-431D-BDBD-6799374B3F8A}';
  CLASS_clsHash: TGUID = '{29A03C9F-25AC-4B74-AE8F-B5F62F152AF7}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum ITEM_STATE
type
  ITEM_STATE = TOleEnum;
const
  ITEM_NO_CHANGE = $00000000;
  ITEM_ADDED = $00000001;
  ITEM_UPDATED = $00000002;
  ITEM_DELETED = $00000003;
  ITEM_LOADED = $00000004;

// Constants for enum tRoleType
type
  tRoleType = TOleEnum;
const
  rDefault = $00000000;
  rSecurityAdministrator = $00000001;
  rProgramAdministrator = $00000002;
  rSystem = $00000003;

// Constants for enum SERVER_TYPE
type
  SERVER_TYPE = TOleEnum;
const
  ORACLE_7 = $00000001;
  ORACLE_8 = $00000004;
  MSSQL_7 = $00000002;
  MSSQL2000 = $00000003;

// Constants for enum AUTHORIZATION_MODE
type
  AUTHORIZATION_MODE = TOleEnum;
const
  AUTH_BY_PASSWORD = $00000001;
  AUTH_BY_BIOLINK_MOUSE = $00000002;
  AUTH_BY_ETOKEN = $00000003;

// Constants for enum enumFileTypes
type
  enumFileTypes = TOleEnum;
const
  Directory = $00000001;
  File_ = $00000002;
  Root = $00000003;
  Computer = $00000004;

// Constants for enum enumCheckSumMode
type
  enumCheckSumMode = TOleEnum;
const
  chByteSumm = $00000001;
  chMD5Hash = $00000002;
  chExternal = $00000003;
  chCSP_GOST = $00000004;

// Constants for enum enumCheckState
type
  enumCheckState = TOleEnum;
const
  NotChecked = $00000000;
  CheckOK = $00000001;
  CheckFalse = $00000002;
  CheckNotFound = $00000003;

// Constants for enum GUI_HIDE_TYPE
type
  GUI_HIDE_TYPE = TOleEnum;
const
  HIDE_VISIBLE = $00000001;
  HIDE_ENABLE = $00000002;

// Constants for enum enProvider
type
  enProvider = TOleEnum;
const
  provMicrosoftBase = $00000001;
  provCryptoPRO = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _CurrentProgram = interface;
  _CurrentProgramDisp = dispinterface;
  _CurrentUser = interface;
  _CurrentUserDisp = dispinterface;
  _Duties = interface;
  _DutiesDisp = dispinterface;
  _MatrixConnection = interface;
  _MatrixConnectionDisp = dispinterface;
  _Duty = interface;
  _DutyDisp = dispinterface;
  _colProgrammServer = interface;
  _colProgrammServerDisp = dispinterface;
  _clsProgramServer = interface;
  _clsProgramServerDisp = dispinterface;
  _ProgramParams = interface;
  _ProgramParamsDisp = dispinterface;
  _ProgramParam = interface;
  _ProgramParamDisp = dispinterface;
  _SecurityParams = interface;
  _SecurityParamsDisp = dispinterface;
  _clsFileObject = interface;
  _clsFileObjectDisp = dispinterface;
  _colFileObjects = interface;
  _colFileObjectsDisp = dispinterface;
  _CurrentGUIs = interface;
  _CurrentGUIsDisp = dispinterface;
  _CurrentGUI = interface;
  _CurrentGUIDisp = dispinterface;
  _clsHash = interface;
  _clsHashDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CurrentProgram = _CurrentProgram;
  CurrentUser = _CurrentUser;
  Duties = _Duties;
  MatrixConnection = _MatrixConnection;
  Duty = _Duty;
  colProgrammServer = _colProgrammServer;
  clsProgramServer = _clsProgramServer;
  ProgramParams = _ProgramParams;
  ProgramParam = _ProgramParam;
  SecurityParams = _SecurityParams;
  clsFileObject = _clsFileObject;
  colFileObjects = _colFileObjects;
  CurrentGUIs = _CurrentGUIs;
  CurrentGUI = _CurrentGUI;
  clsHash = _clsHash;


// *********************************************************************//
// Interface: _CurrentProgram
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A1D0A3AF-71EF-441F-BE99-07785201634A}
// *********************************************************************//
  _CurrentProgram = interface(IDispatch)
    ['{A1D0A3AF-71EF-441F-BE99-07785201634A}']
    function  Get_ProgID: Integer; safecall;
    procedure Set_ProgID(ProgID: Integer); safecall;
    function  Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function  Get_FileName: WideString; safecall;
    procedure Set_FileName(const FileName: WideString); safecall;
    function  Get_IsLog: WordBool; safecall;
    procedure Set_IsLog(IsLog: WordBool); safecall;
    function  Get_State: ITEM_STATE; safecall;
    procedure Set_State(State: ITEM_STATE); safecall;
    function  Get_objColProgramServer: _colProgrammServer; safecall;
    procedure GhostMethod_72; safecall;
    procedure Set_objColProgramServer(const objColProgramServer: _colProgrammServer); safecall;
    function  Get_Params: _ProgramParams; safecall;
    procedure Set_Params(var Param1: _ProgramParams); safecall;
    procedure LoadRS(var rs: _Recordset); safecall;
    procedure Load; safecall;
    procedure LoadByName; safecall;
    procedure Update; safecall;
    property ProgID: Integer read Get_ProgID write Set_ProgID;
    property Name: WideString read Get_Name write Set_Name;
    property FileName: WideString read Get_FileName write Set_FileName;
    property IsLog: WordBool read Get_IsLog write Set_IsLog;
    property State: ITEM_STATE read Get_State write Set_State;
    property objColProgramServer: _colProgrammServer read Get_objColProgramServer write Set_objColProgramServer;
    property Params: _ProgramParams read Get_Params write Set_Params;
  end;

// *********************************************************************//
// DispIntf:  _CurrentProgramDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A1D0A3AF-71EF-441F-BE99-07785201634A}
// *********************************************************************//
  _CurrentProgramDisp = dispinterface
    ['{A1D0A3AF-71EF-441F-BE99-07785201634A}']
    property ProgID: Integer dispid 1073938432;
    property Name: WideString dispid 1073938433;
    property FileName: WideString dispid 1073938434;
    property IsLog: WordBool dispid 1073938435;
    property State: ITEM_STATE dispid 1073938436;
    property objColProgramServer: _colProgrammServer dispid 1073938437;
    procedure GhostMethod_72; dispid 1610743819;
    property Params: _ProgramParams dispid 1745027072;
    procedure LoadRS(var rs: _Recordset); dispid 1610809345;
    procedure Load; dispid 1610809346;
    procedure LoadByName; dispid 1610809347;
    procedure Update; dispid 1610809348;
  end;

// *********************************************************************//
// Interface: _CurrentUser
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8760684E-5604-43B4-889A-5F35EFA4C97C}
// *********************************************************************//
  _CurrentUser = interface(IDispatch)
    ['{8760684E-5604-43B4-889A-5F35EFA4C97C}']
    function  Get_UserID: Integer; safecall;
    procedure Set_UserID(UserID: Integer); safecall;
    function  Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function  Get_Logon: WideString; safecall;
    procedure Set_Logon(const Logon: WideString); safecall;
    function  Get_Password: WideString; safecall;
    procedure Set_Password(const Password: WideString); safecall;
    function  Get_PassExpDate: TDateTime; safecall;
    procedure Set_PassExpDate(PassExpDate: TDateTime); safecall;
    function  Get_Locked: WordBool; safecall;
    procedure Set_Locked(Locked: WordBool); safecall;
    function  Get_UnlockDate: TDateTime; safecall;
    procedure Set_UnlockDate(UnlockDate: TDateTime); safecall;
    function  Get_IsLog: WordBool; safecall;
    procedure Set_IsLog(IsLog: WordBool); safecall;
    function  Get_IsNeedPass: WordBool; safecall;
    procedure Set_IsNeedPass(IsNeedPass: WordBool); safecall;
    function  Get_PasswordTrust: WideString; safecall;
    procedure Set_PasswordTrust(const PasswordTrust: WideString); safecall;
    function  Get_ServerLogin: WideString; safecall;
    procedure Set_ServerLogin(const ServerLogin: WideString); safecall;
    function  Get_State: ITEM_STATE; safecall;
    procedure Set_State(State: ITEM_STATE); safecall;
    function  Get_PassUnexpirable: WordBool; safecall;
    procedure Set_PassUnexpirable(PassUnexpirable: WordBool); safecall;
    function  Get_UnlockByAdmin: WordBool; safecall;
    procedure Set_UnlockByAdmin(UnlockByAdmin: WordBool); safecall;
    procedure LoadRS(var rs: _Recordset); safecall;
    procedure Load; safecall;
    function  LoadByLogin: WordBool; safecall;
    function  Login(var aP: WideString): WordBool; safecall;
    procedure Update(var aUpdateOnDBServer: OleVariant); safecall;
    function  UpdateOnServer: WordBool; safecall;
    procedure LockUser; safecall;
    procedure DutiesLoadByProgram(var mProgramID: Integer); safecall;
    function  Get_Duties: _Duties; safecall;
    property UserID: Integer read Get_UserID write Set_UserID;
    property Name: WideString read Get_Name write Set_Name;
    property Logon: WideString read Get_Logon write Set_Logon;
    property Password: WideString read Get_Password write Set_Password;
    property PassExpDate: TDateTime read Get_PassExpDate write Set_PassExpDate;
    property Locked: WordBool read Get_Locked write Set_Locked;
    property UnlockDate: TDateTime read Get_UnlockDate write Set_UnlockDate;
    property IsLog: WordBool read Get_IsLog write Set_IsLog;
    property IsNeedPass: WordBool read Get_IsNeedPass write Set_IsNeedPass;
    property PasswordTrust: WideString read Get_PasswordTrust write Set_PasswordTrust;
    property ServerLogin: WideString read Get_ServerLogin write Set_ServerLogin;
    property State: ITEM_STATE read Get_State write Set_State;
    property PassUnexpirable: WordBool read Get_PassUnexpirable write Set_PassUnexpirable;
    property UnlockByAdmin: WordBool read Get_UnlockByAdmin write Set_UnlockByAdmin;
    property Duties: _Duties read Get_Duties;
  end;

// *********************************************************************//
// DispIntf:  _CurrentUserDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8760684E-5604-43B4-889A-5F35EFA4C97C}
// *********************************************************************//
  _CurrentUserDisp = dispinterface
    ['{8760684E-5604-43B4-889A-5F35EFA4C97C}']
    property UserID: Integer dispid 1073938432;
    property Name: WideString dispid 1073938433;
    property Logon: WideString dispid 1073938434;
    property Password: WideString dispid 1073938435;
    property PassExpDate: TDateTime dispid 1073938436;
    property Locked: WordBool dispid 1073938437;
    property UnlockDate: TDateTime dispid 1073938438;
    property IsLog: WordBool dispid 1073938439;
    property IsNeedPass: WordBool dispid 1073938440;
    property PasswordTrust: WideString dispid 1073938441;
    property ServerLogin: WideString dispid 1073938442;
    property State: ITEM_STATE dispid 1073938443;
    property PassUnexpirable: WordBool dispid 1073938444;
    property UnlockByAdmin: WordBool dispid 1073938445;
    procedure LoadRS(var rs: _Recordset); dispid 1610809345;
    procedure Load; dispid 1610809346;
    function  LoadByLogin: WordBool; dispid 1610809347;
    function  Login(var aP: WideString): WordBool; dispid 1610809348;
    procedure Update(var aUpdateOnDBServer: OleVariant); dispid 1610809349;
    function  UpdateOnServer: WordBool; dispid 1610809351;
    procedure LockUser; dispid 1610809352;
    procedure DutiesLoadByProgram(var mProgramID: Integer); dispid 1610809353;
    property Duties: _Duties readonly dispid 1745027072;
  end;

// *********************************************************************//
// Interface: _Duties
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {68855FEF-2E38-42A6-8714-A462D362CA7F}
// *********************************************************************//
  _Duties = interface(IDispatch)
    ['{68855FEF-2E38-42A6-8714-A462D362CA7F}']
    procedure LoadByServer(var aServerID: Integer); safecall;
    procedure LoadByProgram(var aProgramID: Integer); safecall;
    procedure LoadRS(var rs: _Recordset); safecall;
    function  Add(var NewDuty: _Duty; var sKey: WideString): _Duty; safecall;
    function  Get_Item(var vntIndexKey: OleVariant): _Duty; safecall;
    function  Get_Count: Integer; safecall;
    procedure Remove(var vntIndexKey: OleVariant); safecall;
    function  Get_NewEnum: IUnknown; safecall;
    property Item[var vntIndexKey: OleVariant]: _Duty read Get_Item; default;
    property Count: Integer read Get_Count;
    property NewEnum: IUnknown read Get_NewEnum;
  end;

// *********************************************************************//
// DispIntf:  _DutiesDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {68855FEF-2E38-42A6-8714-A462D362CA7F}
// *********************************************************************//
  _DutiesDisp = dispinterface
    ['{68855FEF-2E38-42A6-8714-A462D362CA7F}']
    procedure LoadByServer(var aServerID: Integer); dispid 1610809345;
    procedure LoadByProgram(var aProgramID: Integer); dispid 1610809346;
    procedure LoadRS(var rs: _Recordset); dispid 1610809347;
    function  Add(var NewDuty: _Duty; var sKey: WideString): _Duty; dispid 1610809348;
    property Item[var vntIndexKey: OleVariant]: _Duty readonly dispid 0; default;
    property Count: Integer readonly dispid 1745027072;
    procedure Remove(var vntIndexKey: OleVariant); dispid 1610809349;
    property NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: _MatrixConnection
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D5B59EC-D5D9-4162-B4C6-CED134C1A14D}
// *********************************************************************//
  _MatrixConnection = interface(IDispatch)
    ['{1D5B59EC-D5D9-4162-B4C6-CED134C1A14D}']
    function  Get_pMatrixServer_CheckSum_IsWrong: WordBool; safecall;
    procedure Set_pMatrixServer_CheckSum_IsWrong(pMatrixServer_CheckSum_IsWrong: WordBool); safecall;
    function  Get_MatrixServer_CheckSum_IsWrong: WordBool; safecall;
    procedure Set_MatrixServer_CheckSum_IsWrong(var Param1: WordBool); safecall;
    function  Get_Params: _SecurityParams; safecall;
    function  AuthorizeProgram(var Name: WideString; var aClientComputerName: WideString): _CurrentProgram; safecall;
    function  AuthorizeUser(var Login: WideString; var Password: WideString): _CurrentUser; safecall;
    function  IsOperationPermitted(var Name: WideString; var objName: WideString): WordBool; safecall;
    function  GetEnabledFormControls(var FormName: WideString): _CurrentGUIs; safecall;
    function  GetDisabledFormControls(var FormName: WideString): _CurrentGUIs; safecall;
    procedure WriteToLog(var aText: WideString; var aResult: OleVariant; var aNote: WideString); safecall;
    procedure AuditOperation(var aGUIName: WideString); safecall;
    function  Get_Version: WideString; safecall;
    function  Get_DBPath: WideString; safecall;
    function  OperationSecrecy(const Name: WideString): Smallint; safecall;
    function  MatrixServerCheckSum(var aResult: enumCheckState; var aCheckSumMode: enumCheckSumMode): WideString; safecall;
    property pMatrixServer_CheckSum_IsWrong: WordBool read Get_pMatrixServer_CheckSum_IsWrong write Set_pMatrixServer_CheckSum_IsWrong;
    property MatrixServer_CheckSum_IsWrong: WordBool read Get_MatrixServer_CheckSum_IsWrong write Set_MatrixServer_CheckSum_IsWrong;
    property Params: _SecurityParams read Get_Params;
    property Version: WideString read Get_Version;
    property DBPath: WideString read Get_DBPath;
  end;

// *********************************************************************//
// DispIntf:  _MatrixConnectionDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D5B59EC-D5D9-4162-B4C6-CED134C1A14D}
// *********************************************************************//
  _MatrixConnectionDisp = dispinterface
    ['{1D5B59EC-D5D9-4162-B4C6-CED134C1A14D}']
    property pMatrixServer_CheckSum_IsWrong: WordBool dispid 1073938436;
    property MatrixServer_CheckSum_IsWrong: WordBool dispid 1745027075;
    property Params: _SecurityParams readonly dispid 1745027074;
    function  AuthorizeProgram(var Name: WideString; var aClientComputerName: WideString): _CurrentProgram; dispid 1610809349;
    function  AuthorizeUser(var Login: WideString; var Password: WideString): _CurrentUser; dispid 1610809350;
    function  IsOperationPermitted(var Name: WideString; var objName: WideString): WordBool; dispid 1610809351;
    function  GetEnabledFormControls(var FormName: WideString): _CurrentGUIs; dispid 1610809353;
    function  GetDisabledFormControls(var FormName: WideString): _CurrentGUIs; dispid 1610809354;
    procedure WriteToLog(var aText: WideString; var aResult: OleVariant; var aNote: WideString); dispid 1610809355;
    procedure AuditOperation(var aGUIName: WideString); dispid 1610809357;
    property Version: WideString readonly dispid 1745027073;
    property DBPath: WideString readonly dispid 1745027072;
    function  OperationSecrecy(const Name: WideString): Smallint; dispid 1610809359;
    function  MatrixServerCheckSum(var aResult: enumCheckState; var aCheckSumMode: enumCheckSumMode): WideString; dispid 1610809360;
  end;

// *********************************************************************//
// Interface: _Duty
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {AFB8BC10-3BB6-4563-BF36-736E3786E869}
// *********************************************************************//
  _Duty = interface(IDispatch)
    ['{AFB8BC10-3BB6-4563-BF36-736E3786E869}']
    function  Get_DutyId: Integer; safecall;
    procedure Set_DutyId(DutyId: Integer); safecall;
    function  Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function  Get_OwnerID: Integer; safecall;
    procedure Set_OwnerID(OwnerID: Integer); safecall;
    function  Get_IsLog: WordBool; safecall;
    procedure Set_IsLog(IsLog: WordBool); safecall;
    function  Get_RoleType: tRoleType; safecall;
    procedure Set_RoleType(RoleType: tRoleType); safecall;
    function  Get_IsSynchronized: WordBool; safecall;
    procedure Set_IsSynchronized(IsSynchronized: WordBool); safecall;
    function  Get_State: ITEM_STATE; safecall;
    procedure Set_State(State: ITEM_STATE); safecall;
    procedure LoadRS(var rs: _Recordset); safecall;
    procedure Load; safecall;
    function  Get_Servers: WideString; safecall;
    property DutyId: Integer read Get_DutyId write Set_DutyId;
    property Name: WideString read Get_Name write Set_Name;
    property OwnerID: Integer read Get_OwnerID write Set_OwnerID;
    property IsLog: WordBool read Get_IsLog write Set_IsLog;
    property RoleType: tRoleType read Get_RoleType write Set_RoleType;
    property IsSynchronized: WordBool read Get_IsSynchronized write Set_IsSynchronized;
    property State: ITEM_STATE read Get_State write Set_State;
    property Servers: WideString read Get_Servers;
  end;

// *********************************************************************//
// DispIntf:  _DutyDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {AFB8BC10-3BB6-4563-BF36-736E3786E869}
// *********************************************************************//
  _DutyDisp = dispinterface
    ['{AFB8BC10-3BB6-4563-BF36-736E3786E869}']
    property DutyId: Integer dispid 1073938432;
    property Name: WideString dispid 1073938433;
    property OwnerID: Integer dispid 1073938434;
    property IsLog: WordBool dispid 1073938435;
    property RoleType: tRoleType dispid 1073938436;
    property IsSynchronized: WordBool dispid 1073938437;
    property State: ITEM_STATE dispid 1073938439;
    procedure LoadRS(var rs: _Recordset); dispid 1610809345;
    procedure Load; dispid 1610809346;
    property Servers: WideString readonly dispid 1745027072;
  end;

// *********************************************************************//
// Interface: _colProgrammServer
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {119C9D72-7716-482D-A27C-09D0CA103B14}
// *********************************************************************//
  _colProgrammServer = interface(IDispatch)
    ['{119C9D72-7716-482D-A27C-09D0CA103B14}']
    function  Get_fTransaction: WordBool; safecall;
    procedure Set_fTransaction(fTransaction: WordBool); safecall;
    procedure Load(var aProgramID: Integer); safecall;
    function  Store(var aProgramID: Integer): WordBool; safecall;
    procedure Add(var aItem: _clsProgramServer); safecall;
    procedure Remove(var Index: OleVariant); safecall;
    function  Get_Count: Integer; safecall;
    function  Get_Item(var key: OleVariant): _clsProgramServer; safecall;
    function  Get_NewEnum: IUnknown; safecall;
    property fTransaction: WordBool read Get_fTransaction write Set_fTransaction;
    property Count: Integer read Get_Count;
    property Item[var key: OleVariant]: _clsProgramServer read Get_Item; default;
    property NewEnum: IUnknown read Get_NewEnum;
  end;

// *********************************************************************//
// DispIntf:  _colProgrammServerDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {119C9D72-7716-482D-A27C-09D0CA103B14}
// *********************************************************************//
  _colProgrammServerDisp = dispinterface
    ['{119C9D72-7716-482D-A27C-09D0CA103B14}']
    property fTransaction: WordBool dispid 1073938433;
    procedure Load(var aProgramID: Integer); dispid 1610809345;
    function  Store(var aProgramID: Integer): WordBool; dispid 1610809346;
    procedure Add(var aItem: _clsProgramServer); dispid 1610809347;
    procedure Remove(var Index: OleVariant); dispid 1610809348;
    property Count: Integer readonly dispid 1745027072;
    property Item[var key: OleVariant]: _clsProgramServer readonly dispid 0; default;
    property NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: _clsProgramServer
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D0C57E85-465F-4C62-8914-5B1ED1DDEE3F}
// *********************************************************************//
  _clsProgramServer = interface(IDispatch)
    ['{D0C57E85-465F-4C62-8914-5B1ED1DDEE3F}']
    function  Get_Id: Integer; safecall;
    procedure Set_Id(Id: Integer); safecall;
    function  Get_ServerTypeId: SERVER_TYPE; safecall;
    procedure Set_ServerTypeId(ServerTypeId: SERVER_TYPE); safecall;
    function  Get_ProgramId: Integer; safecall;
    procedure Set_ProgramId(ProgramId: Integer); safecall;
    function  Get_Description: WideString; safecall;
    procedure Set_Description(const Description: WideString); safecall;
    function  Get_ServerName: WideString; safecall;
    procedure Set_ServerName(const ServerName: WideString); safecall;
    function  Get_UserName: WideString; safecall;
    procedure Set_UserName(const UserName: WideString); safecall;
    function  Get_UserPass: WideString; safecall;
    procedure Set_UserPass(const UserPass: WideString); safecall;
    function  Get_DefaultSpace: WideString; safecall;
    procedure Set_DefaultSpace(const DefaultSpace: WideString); safecall;
    function  Get_TempSpace: WideString; safecall;
    procedure Set_TempSpace(const TempSpace: WideString); safecall;
    function  Get_UseAsDefault: WordBool; safecall;
    procedure Set_UseAsDefault(UseAsDefault: WordBool); safecall;
    function  Get_ServerTypeName: WideString; safecall;
    procedure Set_ServerTypeName(const ServerTypeName: WideString); safecall;
    function  Get_key: WideString; safecall;
    procedure Set_key(const key: WideString); safecall;
    function  Get_fTransaction: WordBool; safecall;
    procedure Set_fTransaction(fTransaction: WordBool); safecall;
    function  Get_State: ITEM_STATE; safecall;
    procedure Set_State(State: ITEM_STATE); safecall;
    function  Add: WordBool; safecall;
    function  Update: WordBool; safecall;
    procedure LoadRS(var aRs: _Recordset); safecall;
    procedure Load; safecall;
    procedure StoreStart; safecall;
    procedure StoreEnd; safecall;
    procedure StoreBack; safecall;
    function  Clone: _clsProgramServer; safecall;
    function  GetConnectionString: WideString; safecall;
    property Id: Integer read Get_Id write Set_Id;
    property ServerTypeId: SERVER_TYPE read Get_ServerTypeId write Set_ServerTypeId;
    property ProgramId: Integer read Get_ProgramId write Set_ProgramId;
    property Description: WideString read Get_Description write Set_Description;
    property ServerName: WideString read Get_ServerName write Set_ServerName;
    property UserName: WideString read Get_UserName write Set_UserName;
    property UserPass: WideString read Get_UserPass write Set_UserPass;
    property DefaultSpace: WideString read Get_DefaultSpace write Set_DefaultSpace;
    property TempSpace: WideString read Get_TempSpace write Set_TempSpace;
    property UseAsDefault: WordBool read Get_UseAsDefault write Set_UseAsDefault;
    property ServerTypeName: WideString read Get_ServerTypeName write Set_ServerTypeName;
    property key: WideString read Get_key write Set_key;
    property fTransaction: WordBool read Get_fTransaction write Set_fTransaction;
    property State: ITEM_STATE read Get_State write Set_State;
  end;

// *********************************************************************//
// DispIntf:  _clsProgramServerDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D0C57E85-465F-4C62-8914-5B1ED1DDEE3F}
// *********************************************************************//
  _clsProgramServerDisp = dispinterface
    ['{D0C57E85-465F-4C62-8914-5B1ED1DDEE3F}']
    property Id: Integer dispid 1073938432;
    property ServerTypeId: SERVER_TYPE dispid 1073938433;
    property ProgramId: Integer dispid 1073938434;
    property Description: WideString dispid 1073938435;
    property ServerName: WideString dispid 1073938436;
    property UserName: WideString dispid 1073938437;
    property UserPass: WideString dispid 1073938438;
    property DefaultSpace: WideString dispid 1073938439;
    property TempSpace: WideString dispid 1073938440;
    property UseAsDefault: WordBool dispid 1073938441;
    property ServerTypeName: WideString dispid 1073938442;
    property key: WideString dispid 1073938443;
    property fTransaction: WordBool dispid 1073938444;
    property State: ITEM_STATE dispid 1073938445;
    function  Add: WordBool; dispid 1610809344;
    function  Update: WordBool; dispid 1610809345;
    procedure LoadRS(var aRs: _Recordset); dispid 1610809346;
    procedure Load; dispid 1610809347;
    procedure StoreStart; dispid 1610809348;
    procedure StoreEnd; dispid 1610809349;
    procedure StoreBack; dispid 1610809350;
    function  Clone: _clsProgramServer; dispid 1610809353;
    function  GetConnectionString: WideString; dispid 1610809354;
  end;

// *********************************************************************//
// Interface: _ProgramParams
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9D818619-DE1A-4012-90AB-84612944EA29}
// *********************************************************************//
  _ProgramParams = interface(IDispatch)
    ['{9D818619-DE1A-4012-90AB-84612944EA29}']
    function  Get_fResult: WordBool; safecall;
    procedure Set_fResult(fResult: WordBool); safecall;
    procedure Update(var ProgID: Integer); safecall;
    procedure LoadRS(var rs: _Recordset); safecall;
    function  Add(var NewParam: _ProgramParam; var sKey: WideString): _ProgramParam; safecall;
    function  Get_Item(var vntIndexKey: OleVariant): _ProgramParam; safecall;
    function  Get_Count: Integer; safecall;
    procedure Remove(var vntIndexKey: OleVariant); safecall;
    function  Get_NewEnum: IUnknown; safecall;
    property fResult: WordBool read Get_fResult write Set_fResult;
    property Item[var vntIndexKey: OleVariant]: _ProgramParam read Get_Item; default;
    property Count: Integer read Get_Count;
    property NewEnum: IUnknown read Get_NewEnum;
  end;

// *********************************************************************//
// DispIntf:  _ProgramParamsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9D818619-DE1A-4012-90AB-84612944EA29}
// *********************************************************************//
  _ProgramParamsDisp = dispinterface
    ['{9D818619-DE1A-4012-90AB-84612944EA29}']
    property fResult: WordBool dispid 1073938433;
    procedure Update(var ProgID: Integer); dispid 1610809345;
    procedure LoadRS(var rs: _Recordset); dispid 1610809346;
    function  Add(var NewParam: _ProgramParam; var sKey: WideString): _ProgramParam; dispid 1610809347;
    property Item[var vntIndexKey: OleVariant]: _ProgramParam readonly dispid 0; default;
    property Count: Integer readonly dispid 1745027072;
    procedure Remove(var vntIndexKey: OleVariant); dispid 1610809348;
    property NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: _ProgramParam
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {ED307A8E-1C07-4201-B824-031D8C1E6F1B}
// *********************************************************************//
  _ProgramParam = interface(IDispatch)
    ['{ED307A8E-1C07-4201-B824-031D8C1E6F1B}']
    function  Get_ParamID: Integer; safecall;
    procedure Set_ParamID(ParamID: Integer); safecall;
    function  Get_ProgID: Integer; safecall;
    procedure Set_ProgID(ProgID: Integer); safecall;
    function  Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function  Get_Value: WideString; safecall;
    procedure Set_Value(const Value: WideString); safecall;
    function  Get_IsHide: WordBool; safecall;
    procedure Set_IsHide(IsHide: WordBool); safecall;
    function  Get_State: ITEM_STATE; safecall;
    procedure Set_State(State: ITEM_STATE); safecall;
    function  Get_StatusInColl: ITEM_STATE; safecall;
    procedure Set_StatusInColl(StatusInColl: ITEM_STATE); safecall;
    function  Get_VisibleValue: WideString; safecall;
    procedure LoadRS(var rs: _Recordset); safecall;
    procedure Update; safecall;
    procedure Add; safecall;
    procedure Delete; safecall;
    property ParamID: Integer read Get_ParamID write Set_ParamID;
    property ProgID: Integer read Get_ProgID write Set_ProgID;
    property Name: WideString read Get_Name write Set_Name;
    property Value: WideString read Get_Value write Set_Value;
    property IsHide: WordBool read Get_IsHide write Set_IsHide;
    property State: ITEM_STATE read Get_State write Set_State;
    property StatusInColl: ITEM_STATE read Get_StatusInColl write Set_StatusInColl;
    property VisibleValue: WideString read Get_VisibleValue;
  end;

// *********************************************************************//
// DispIntf:  _ProgramParamDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {ED307A8E-1C07-4201-B824-031D8C1E6F1B}
// *********************************************************************//
  _ProgramParamDisp = dispinterface
    ['{ED307A8E-1C07-4201-B824-031D8C1E6F1B}']
    property ParamID: Integer dispid 1073938432;
    property ProgID: Integer dispid 1073938433;
    property Name: WideString dispid 1073938434;
    property Value: WideString dispid 1073938435;
    property IsHide: WordBool dispid 1073938436;
    property State: ITEM_STATE dispid 1073938437;
    property StatusInColl: ITEM_STATE dispid 1073938438;
    property VisibleValue: WideString readonly dispid 1745027072;
    procedure LoadRS(var rs: _Recordset); dispid 1610809345;
    procedure Update; dispid 1610809346;
    procedure Add; dispid 1610809347;
    procedure Delete; dispid 1610809348;
  end;

// *********************************************************************//
// Interface: _SecurityParams
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4DE86A38-D8CF-479B-9939-BAACF0129397}
// *********************************************************************//
  _SecurityParams = interface(IDispatch)
    ['{4DE86A38-D8CF-479B-9939-BAACF0129397}']
    function  Get_AuthorizationMode: AUTHORIZATION_MODE; safecall;
    procedure Set_AuthorizationMode(AuthorizationMode: AUTHORIZATION_MODE); safecall;
    function  Get_StoreLogin: WordBool; safecall;
    procedure Set_StoreLogin(StoreLogin: WordBool); safecall;
    function  Get_StorePassword: WordBool; safecall;
    procedure Set_StorePassword(StorePassword: WordBool); safecall;
    function  Get_RequirePIN: WordBool; safecall;
    procedure Set_RequirePIN(RequirePIN: WordBool); safecall;
    function  Get_ShowFingerPrint: WordBool; safecall;
    procedure Set_ShowFingerPrint(ShowFingerPrint: WordBool); safecall;
    function  Get_ChangeFirstPassword: WordBool; safecall;
    procedure Set_ChangeFirstPassword(ChangeFirstPassword: WordBool); safecall;
    function  Get_PasswordPeriod: Smallint; safecall;
    procedure Set_PasswordPeriod(PasswordPeriod: Smallint); safecall;
    function  Get_RetryCount: Smallint; safecall;
    procedure Set_RetryCount(RetryCount: Smallint); safecall;
    function  Get_StorePIN: WordBool; safecall;
    procedure Set_StorePIN(StorePIN: WordBool); safecall;
    function  Get_UseMouseRetry: WordBool; safecall;
    procedure Set_UseMouseRetry(UseMouseRetry: WordBool); safecall;
    function  Get_CheckSumMode: enumCheckSumMode; safecall;
    procedure Set_CheckSumMode(CheckSumMode: enumCheckSumMode); safecall;
    function  Get_CheckSumExternalFile: WideString; safecall;
    procedure Set_CheckSumExternalFile(const CheckSumExternalFile: WideString); safecall;
    function  Get_BaseVersion: WideString; safecall;
    procedure Set_BaseVersion(const BaseVersion: WideString); safecall;
    function  Get_CheckSum_From_Load: WordBool; safecall;
    procedure Set_CheckSum_From_Load(CheckSum_From_Load: WordBool); safecall;
    function  Get_Lock_If_CheckSum_From_Load_IsWrong: WordBool; safecall;
    procedure Set_Lock_If_CheckSum_From_Load_IsWrong(Lock_If_CheckSum_From_Load_IsWrong: WordBool); safecall;
    function  Get_MatrixServer_CheckSum: WideString; safecall;
    procedure Set_MatrixServer_CheckSum(const MatrixServer_CheckSum: WideString); safecall;
    function  Get_Lock_If_MatrixServer_CheckSum_IsWrong: WordBool; safecall;
    procedure Set_Lock_If_MatrixServer_CheckSum_IsWrong(Lock_If_MatrixServer_CheckSum_IsWrong: WordBool); safecall;
    function  Get_State: ITEM_STATE; safecall;
    procedure Set_State(State: ITEM_STATE); safecall;
    procedure Load; safecall;
    procedure Update; safecall;
    property AuthorizationMode: AUTHORIZATION_MODE read Get_AuthorizationMode write Set_AuthorizationMode;
    property StoreLogin: WordBool read Get_StoreLogin write Set_StoreLogin;
    property StorePassword: WordBool read Get_StorePassword write Set_StorePassword;
    property RequirePIN: WordBool read Get_RequirePIN write Set_RequirePIN;
    property ShowFingerPrint: WordBool read Get_ShowFingerPrint write Set_ShowFingerPrint;
    property ChangeFirstPassword: WordBool read Get_ChangeFirstPassword write Set_ChangeFirstPassword;
    property PasswordPeriod: Smallint read Get_PasswordPeriod write Set_PasswordPeriod;
    property RetryCount: Smallint read Get_RetryCount write Set_RetryCount;
    property StorePIN: WordBool read Get_StorePIN write Set_StorePIN;
    property UseMouseRetry: WordBool read Get_UseMouseRetry write Set_UseMouseRetry;
    property CheckSumMode: enumCheckSumMode read Get_CheckSumMode write Set_CheckSumMode;
    property CheckSumExternalFile: WideString read Get_CheckSumExternalFile write Set_CheckSumExternalFile;
    property BaseVersion: WideString read Get_BaseVersion write Set_BaseVersion;
    property CheckSum_From_Load: WordBool read Get_CheckSum_From_Load write Set_CheckSum_From_Load;
    property Lock_If_CheckSum_From_Load_IsWrong: WordBool read Get_Lock_If_CheckSum_From_Load_IsWrong write Set_Lock_If_CheckSum_From_Load_IsWrong;
    property MatrixServer_CheckSum: WideString read Get_MatrixServer_CheckSum write Set_MatrixServer_CheckSum;
    property Lock_If_MatrixServer_CheckSum_IsWrong: WordBool read Get_Lock_If_MatrixServer_CheckSum_IsWrong write Set_Lock_If_MatrixServer_CheckSum_IsWrong;
    property State: ITEM_STATE read Get_State write Set_State;
  end;

// *********************************************************************//
// DispIntf:  _SecurityParamsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4DE86A38-D8CF-479B-9939-BAACF0129397}
// *********************************************************************//
  _SecurityParamsDisp = dispinterface
    ['{4DE86A38-D8CF-479B-9939-BAACF0129397}']
    property AuthorizationMode: AUTHORIZATION_MODE dispid 1073938450;
    property StoreLogin: WordBool dispid 1073938451;
    property StorePassword: WordBool dispid 1073938452;
    property RequirePIN: WordBool dispid 1073938453;
    property ShowFingerPrint: WordBool dispid 1073938454;
    property ChangeFirstPassword: WordBool dispid 1073938455;
    property PasswordPeriod: Smallint dispid 1073938456;
    property RetryCount: Smallint dispid 1073938457;
    property StorePIN: WordBool dispid 1073938458;
    property UseMouseRetry: WordBool dispid 1073938459;
    property CheckSumMode: enumCheckSumMode dispid 1073938460;
    property CheckSumExternalFile: WideString dispid 1073938461;
    property BaseVersion: WideString dispid 1073938462;
    property CheckSum_From_Load: WordBool dispid 1073938463;
    property Lock_If_CheckSum_From_Load_IsWrong: WordBool dispid 1073938464;
    property MatrixServer_CheckSum: WideString dispid 1073938465;
    property Lock_If_MatrixServer_CheckSum_IsWrong: WordBool dispid 1073938466;
    property State: ITEM_STATE dispid 1073938467;
    procedure Load; dispid 1610809346;
    procedure Update; dispid 1610809347;
  end;

// *********************************************************************//
// Interface: _clsFileObject
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {96C5FF7C-983E-48E2-A9A7-3981ECC51CA4}
// *********************************************************************//
  _clsFileObject = interface(IDispatch)
    ['{96C5FF7C-983E-48E2-A9A7-3981ECC51CA4}']
    function  Get_Id: Integer; safecall;
    procedure Set_Id(Id: Integer); safecall;
    function  Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function  Get_ProgramId: Integer; safecall;
    procedure Set_ProgramId(ProgramId: Integer); safecall;
    function  Get_CheckSumm: WideString; safecall;
    procedure Set_CheckSumm(const CheckSumm: WideString); safecall;
    function  Get_IsRemote: Smallint; safecall;
    procedure Set_IsRemote(IsRemote: Smallint); safecall;
    function  Get_IsOK: WordBool; safecall;
    procedure Set_IsOK(IsOK: WordBool); safecall;
    function  Get_ParentId: Integer; safecall;
    procedure Set_ParentId(ParentId: Integer); safecall;
    function  Get_Version: WideString; safecall;
    procedure Set_Version(const Version: WideString); safecall;
    function  Get_key: WideString; safecall;
    procedure Set_key(const key: WideString); safecall;
    function  Get_fTransaction: WordBool; safecall;
    procedure Set_fTransaction(fTransaction: WordBool); safecall;
    function  Get_State: ITEM_STATE; safecall;
    procedure Set_State(State: ITEM_STATE); safecall;
    function  Get_ChildCount: Integer; safecall;
    procedure Set_ChildCount(ChildCount: Integer); safecall;
    function  Get_ParentFileObject: _clsFileObject; safecall;
    procedure GhostMethod_128; safecall;
    procedure Set_ParentFileObject(const ParentFileObject: _clsFileObject); safecall;
    function  Get_ColChildFiles: _colFileObjects; safecall;
    function  InitRoot(var aProgramID: Integer; var aIsRemote: Smallint): WordBool; safecall;
    function  Add: WordBool; safecall;
    function  Update: WordBool; safecall;
    function  Delete: WordBool; safecall;
    procedure LoadRS(var aRs: _Recordset); safecall;
    procedure Load; safecall;
    procedure StoreStart; safecall;
    procedure StoreEnd; safecall;
    procedure StoreBack; safecall;
    function  Clone: _clsFileObject; safecall;
    function  Get_GetFileByKey(var aKey: WideString): _clsFileObject; safecall;
    function  Get_GetFileByName(var aName: WideString): _clsFileObject; safecall;
    function  Store: WordBool; safecall;
    procedure Set_StateUp(var Param1: ITEM_STATE); safecall;
    procedure Set_FullName(var Param1: WideString); safecall;
    function  Get_FullName: WideString; safecall;
    function  Get_FullName1: WideString; safecall;
    function  Get_GetCheckSum(var aResult: enumCheckState; var aCheckSumMode: enumCheckSumMode): WideString; safecall;
    procedure LogChanges(var ObjectLog: IDispatch; var aApplicationName: WideString); safecall;
    function  CheckSumHex(var aByteString: WideString): WideString; safecall;
    procedure Set_FileType(var Param1: enumFileTypes); safecall;
    function  Get_FileType: enumFileTypes; safecall;
    property Id: Integer read Get_Id write Set_Id;
    property Name: WideString read Get_Name write Set_Name;
    property ProgramId: Integer read Get_ProgramId write Set_ProgramId;
    property CheckSumm: WideString read Get_CheckSumm write Set_CheckSumm;
    property IsRemote: Smallint read Get_IsRemote write Set_IsRemote;
    property IsOK: WordBool read Get_IsOK write Set_IsOK;
    property ParentId: Integer read Get_ParentId write Set_ParentId;
    property Version: WideString read Get_Version write Set_Version;
    property key: WideString read Get_key write Set_key;
    property fTransaction: WordBool read Get_fTransaction write Set_fTransaction;
    property State: ITEM_STATE read Get_State write Set_State;
    property ChildCount: Integer read Get_ChildCount write Set_ChildCount;
    property ParentFileObject: _clsFileObject read Get_ParentFileObject write Set_ParentFileObject;
    property ColChildFiles: _colFileObjects read Get_ColChildFiles;
    property GetFileByKey[var aKey: WideString]: _clsFileObject read Get_GetFileByKey;
    property GetFileByName[var aName: WideString]: _clsFileObject read Get_GetFileByName;
    property StateUp: ITEM_STATE write Set_StateUp;
    property FullName: WideString read Get_FullName write Set_FullName;
    property FullName1: WideString read Get_FullName1;
    property GetCheckSum[var aResult: enumCheckState; var aCheckSumMode: enumCheckSumMode]: WideString read Get_GetCheckSum;
    property FileType: enumFileTypes read Get_FileType write Set_FileType;
  end;

// *********************************************************************//
// DispIntf:  _clsFileObjectDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {96C5FF7C-983E-48E2-A9A7-3981ECC51CA4}
// *********************************************************************//
  _clsFileObjectDisp = dispinterface
    ['{96C5FF7C-983E-48E2-A9A7-3981ECC51CA4}']
    property Id: Integer dispid 1073938438;
    property Name: WideString dispid 1073938440;
    property ProgramId: Integer dispid 1073938441;
    property CheckSumm: WideString dispid 1073938443;
    property IsRemote: Smallint dispid 1073938444;
    property IsOK: WordBool dispid 1073938445;
    property ParentId: Integer dispid 1073938446;
    property Version: WideString dispid 1073938447;
    property key: WideString dispid 1073938448;
    property fTransaction: WordBool dispid 1073938449;
    property State: ITEM_STATE dispid 1073938450;
    property ChildCount: Integer dispid 1073938451;
    property ParentFileObject: _clsFileObject dispid 1073938453;
    procedure GhostMethod_128; dispid 1610743833;
    property ColChildFiles: _colFileObjects readonly dispid 1745027079;
    function  InitRoot(var aProgramID: Integer; var aIsRemote: Smallint): WordBool; dispid 1610809352;
    function  Add: WordBool; dispid 1610809353;
    function  Update: WordBool; dispid 1610809354;
    function  Delete: WordBool; dispid 1610809355;
    procedure LoadRS(var aRs: _Recordset); dispid 1610809356;
    procedure Load; dispid 1610809357;
    procedure StoreStart; dispid 1610809358;
    procedure StoreEnd; dispid 1610809359;
    procedure StoreBack; dispid 1610809360;
    function  Clone: _clsFileObject; dispid 1610809362;
    property GetFileByKey[var aKey: WideString]: _clsFileObject readonly dispid 1745027078;
    property GetFileByName[var aName: WideString]: _clsFileObject readonly dispid 1745027077;
    function  Store: WordBool; dispid 1610809363;
    property StateUp: ITEM_STATE writeonly dispid 1745027076;
    property FullName: WideString dispid 1745027075;
    property FullName1: WideString readonly dispid 1745027074;
    property GetCheckSum[var aResult: enumCheckState; var aCheckSumMode: enumCheckSumMode]: WideString readonly dispid 1745027073;
    procedure LogChanges(var ObjectLog: IDispatch; var aApplicationName: WideString); dispid 1610809368;
    function  CheckSumHex(var aByteString: WideString): WideString; dispid 1610809369;
    property FileType: enumFileTypes dispid 1745027072;
  end;

// *********************************************************************//
// Interface: _colFileObjects
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {761E90EB-332F-4247-9C32-A7D5BF92F624}
// *********************************************************************//
  _colFileObjects = interface(IDispatch)
    ['{761E90EB-332F-4247-9C32-A7D5BF92F624}']
    function  Get_fTransaction: WordBool; safecall;
    procedure Set_fTransaction(fTransaction: WordBool); safecall;
    function  Get_ParentFile: _clsFileObject; safecall;
    procedure GhostMethod_40; safecall;
    procedure Set_ParentFile(const ParentFile: _clsFileObject); safecall;
    procedure Load; safecall;
    function  Store: WordBool; safecall;
    procedure Add(var aItem: _clsFileObject); safecall;
    procedure Remove(var Index: OleVariant); safecall;
    function  Get_Count: Integer; safecall;
    function  Get_Item(var key: OleVariant): _clsFileObject; safecall;
    function  Get_NewEnum: IUnknown; safecall;
    function  Get_GetFileByKey(var aKey: WideString): _clsFileObject; safecall;
    function  Get_GetFileByName(var aName: WideString): _clsFileObject; safecall;
    procedure LogChanges(var ObjectLog: IDispatch; var aApplicationName: WideString); safecall;
    property fTransaction: WordBool read Get_fTransaction write Set_fTransaction;
    property ParentFile: _clsFileObject read Get_ParentFile write Set_ParentFile;
    property Count: Integer read Get_Count;
    property Item[var key: OleVariant]: _clsFileObject read Get_Item; default;
    property NewEnum: IUnknown read Get_NewEnum;
    property GetFileByKey[var aKey: WideString]: _clsFileObject read Get_GetFileByKey;
    property GetFileByName[var aName: WideString]: _clsFileObject read Get_GetFileByName;
  end;

// *********************************************************************//
// DispIntf:  _colFileObjectsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {761E90EB-332F-4247-9C32-A7D5BF92F624}
// *********************************************************************//
  _colFileObjectsDisp = dispinterface
    ['{761E90EB-332F-4247-9C32-A7D5BF92F624}']
    property fTransaction: WordBool dispid 1073938433;
    property ParentFile: _clsFileObject dispid 1073938434;
    procedure GhostMethod_40; dispid 1610743811;
    procedure Load; dispid 1610809347;
    function  Store: WordBool; dispid 1610809348;
    procedure Add(var aItem: _clsFileObject); dispid 1610809349;
    procedure Remove(var Index: OleVariant); dispid 1610809350;
    property Count: Integer readonly dispid 1745027074;
    property Item[var key: OleVariant]: _clsFileObject readonly dispid 0; default;
    property NewEnum: IUnknown readonly dispid -4;
    property GetFileByKey[var aKey: WideString]: _clsFileObject readonly dispid 1745027073;
    property GetFileByName[var aName: WideString]: _clsFileObject readonly dispid 1745027072;
    procedure LogChanges(var ObjectLog: IDispatch; var aApplicationName: WideString); dispid 1610809353;
  end;

// *********************************************************************//
// Interface: _CurrentGUIs
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5DE4D2CE-0A47-4AA3-99E0-5B39C0F4B692}
// *********************************************************************//
  _CurrentGUIs = interface(IDispatch)
    ['{5DE4D2CE-0A47-4AA3-99E0-5B39C0F4B692}']
    procedure LoadRS(var rs: _Recordset); safecall;
    function  Add(var NewGUI: _CurrentGUI; var sKey: WideString): _CurrentGUI; safecall;
    function  Get_Item(var vntIndexKey: OleVariant): _CurrentGUI; safecall;
    function  Get_Count: Integer; safecall;
    procedure Remove(var vntIndexKey: OleVariant); safecall;
    function  Get_NewEnum: IUnknown; safecall;
    property Item[var vntIndexKey: OleVariant]: _CurrentGUI read Get_Item; default;
    property Count: Integer read Get_Count;
    property NewEnum: IUnknown read Get_NewEnum;
  end;

// *********************************************************************//
// DispIntf:  _CurrentGUIsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5DE4D2CE-0A47-4AA3-99E0-5B39C0F4B692}
// *********************************************************************//
  _CurrentGUIsDisp = dispinterface
    ['{5DE4D2CE-0A47-4AA3-99E0-5B39C0F4B692}']
    procedure LoadRS(var rs: _Recordset); dispid 1610809345;
    function  Add(var NewGUI: _CurrentGUI; var sKey: WideString): _CurrentGUI; dispid 1610809346;
    property Item[var vntIndexKey: OleVariant]: _CurrentGUI readonly dispid 0; default;
    property Count: Integer readonly dispid 1745027072;
    procedure Remove(var vntIndexKey: OleVariant); dispid 1610809347;
    property NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: _CurrentGUI
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7EDC137F-965B-432D-959C-E091C9ABE603}
// *********************************************************************//
  _CurrentGUI = interface(IDispatch)
    ['{7EDC137F-965B-432D-959C-E091C9ABE603}']
    function  Get_GUIID: Integer; safecall;
    procedure Set_GUIID(GUIID: Integer); safecall;
    function  Get_GUIType: WideString; safecall;
    procedure Set_GUIType(const GUIType: WideString); safecall;
    function  Get_ProgID: Integer; safecall;
    procedure Set_ProgID(ProgID: Integer); safecall;
    function  Get_HideType: GUI_HIDE_TYPE; safecall;
    procedure Set_HideType(HideType: GUI_HIDE_TYPE); safecall;
    function  Get_State: ITEM_STATE; safecall;
    procedure Set_State(State: ITEM_STATE); safecall;
    function  Get_FormName: WideString; safecall;
    procedure Set_FormName(const FormName: WideString); safecall;
    function  Get_ControlName: WideString; safecall;
    procedure Set_ControlName(const ControlName: WideString); safecall;
    function  Get_SubControlName: WideString; safecall;
    procedure Set_SubControlName(const SubControlName: WideString); safecall;
    function  Get_Name: WideString; safecall;
    procedure Set_Name(var Param1: WideString); safecall;
    procedure LoadRS(var rs: _Recordset); safecall;
    procedure Load; safecall;
    property GUIID: Integer read Get_GUIID write Set_GUIID;
    property GUIType: WideString read Get_GUIType write Set_GUIType;
    property ProgID: Integer read Get_ProgID write Set_ProgID;
    property HideType: GUI_HIDE_TYPE read Get_HideType write Set_HideType;
    property State: ITEM_STATE read Get_State write Set_State;
    property FormName: WideString read Get_FormName write Set_FormName;
    property ControlName: WideString read Get_ControlName write Set_ControlName;
    property SubControlName: WideString read Get_SubControlName write Set_SubControlName;
    property Name: WideString read Get_Name write Set_Name;
  end;

// *********************************************************************//
// DispIntf:  _CurrentGUIDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7EDC137F-965B-432D-959C-E091C9ABE603}
// *********************************************************************//
  _CurrentGUIDisp = dispinterface
    ['{7EDC137F-965B-432D-959C-E091C9ABE603}']
    property GUIID: Integer dispid 1073938432;
    property GUIType: WideString dispid 1073938434;
    property ProgID: Integer dispid 1073938435;
    property HideType: GUI_HIDE_TYPE dispid 1073938436;
    property State: ITEM_STATE dispid 1073938437;
    property FormName: WideString dispid 1073938438;
    property ControlName: WideString dispid 1073938439;
    property SubControlName: WideString dispid 1073938440;
    property Name: WideString dispid 1745027072;
    procedure LoadRS(var rs: _Recordset); dispid 1610809345;
    procedure Load; dispid 1610809346;
  end;

// *********************************************************************//
// Interface: _clsHash
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {75DC2051-BDDD-431D-BDBD-6799374B3F8A}
// *********************************************************************//
  _clsHash = interface(IDispatch)
    ['{75DC2051-BDDD-431D-BDBD-6799374B3F8A}']
    procedure Set_DataToHash(const Param1: WideString); safecall;
    function  Get_DataToHash: WideString; safecall;
    function  Get_HashedData: WideString; safecall;
    function  CodeString(var str: WideString): WideString; safecall;
    function  DecodeString(var str: WideString): WideString; safecall;
    function  Init(var Provider: enProvider): WordBool; safecall;
    property DataToHash: WideString read Get_DataToHash write Set_DataToHash;
    property HashedData: WideString read Get_HashedData;
  end;

// *********************************************************************//
// DispIntf:  _clsHashDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {75DC2051-BDDD-431D-BDBD-6799374B3F8A}
// *********************************************************************//
  _clsHashDisp = dispinterface
    ['{75DC2051-BDDD-431D-BDBD-6799374B3F8A}']
    property DataToHash: WideString dispid 1745027073;
    property HashedData: WideString readonly dispid 1745027072;
    function  CodeString(var str: WideString): WideString; dispid 1610809350;
    function  DecodeString(var str: WideString): WideString; dispid 1610809351;
    function  Init(var Provider: enProvider): WordBool; dispid 1610809352;
  end;

// *********************************************************************//
// The Class CoCurrentProgram provides a Create and CreateRemote method to          
// create instances of the default interface _CurrentProgram exposed by              
// the CoClass CurrentProgram. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCurrentProgram = class
    class function Create: _CurrentProgram;
    class function CreateRemote(const MachineName: string): _CurrentProgram;
  end;

// *********************************************************************//
// The Class CoCurrentUser provides a Create and CreateRemote method to          
// create instances of the default interface _CurrentUser exposed by              
// the CoClass CurrentUser. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCurrentUser = class
    class function Create: _CurrentUser;
    class function CreateRemote(const MachineName: string): _CurrentUser;
  end;

// *********************************************************************//
// The Class CoDuties provides a Create and CreateRemote method to          
// create instances of the default interface _Duties exposed by              
// the CoClass Duties. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDuties = class
    class function Create: _Duties;
    class function CreateRemote(const MachineName: string): _Duties;
  end;

// *********************************************************************//
// The Class CoMatrixConnection provides a Create and CreateRemote method to          
// create instances of the default interface _MatrixConnection exposed by              
// the CoClass MatrixConnection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMatrixConnection = class
    class function Create: _MatrixConnection;
    class function CreateRemote(const MachineName: string): _MatrixConnection;
  end;

// *********************************************************************//
// The Class CoDuty provides a Create and CreateRemote method to          
// create instances of the default interface _Duty exposed by              
// the CoClass Duty. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDuty = class
    class function Create: _Duty;
    class function CreateRemote(const MachineName: string): _Duty;
  end;

// *********************************************************************//
// The Class CocolProgrammServer provides a Create and CreateRemote method to          
// create instances of the default interface _colProgrammServer exposed by              
// the CoClass colProgrammServer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocolProgrammServer = class
    class function Create: _colProgrammServer;
    class function CreateRemote(const MachineName: string): _colProgrammServer;
  end;

// *********************************************************************//
// The Class CoclsProgramServer provides a Create and CreateRemote method to          
// create instances of the default interface _clsProgramServer exposed by              
// the CoClass clsProgramServer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoclsProgramServer = class
    class function Create: _clsProgramServer;
    class function CreateRemote(const MachineName: string): _clsProgramServer;
  end;

// *********************************************************************//
// The Class CoProgramParams provides a Create and CreateRemote method to          
// create instances of the default interface _ProgramParams exposed by              
// the CoClass ProgramParams. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProgramParams = class
    class function Create: _ProgramParams;
    class function CreateRemote(const MachineName: string): _ProgramParams;
  end;

// *********************************************************************//
// The Class CoProgramParam provides a Create and CreateRemote method to          
// create instances of the default interface _ProgramParam exposed by              
// the CoClass ProgramParam. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProgramParam = class
    class function Create: _ProgramParam;
    class function CreateRemote(const MachineName: string): _ProgramParam;
  end;

// *********************************************************************//
// The Class CoSecurityParams provides a Create and CreateRemote method to          
// create instances of the default interface _SecurityParams exposed by              
// the CoClass SecurityParams. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSecurityParams = class
    class function Create: _SecurityParams;
    class function CreateRemote(const MachineName: string): _SecurityParams;
  end;

// *********************************************************************//
// The Class CoclsFileObject provides a Create and CreateRemote method to          
// create instances of the default interface _clsFileObject exposed by              
// the CoClass clsFileObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoclsFileObject = class
    class function Create: _clsFileObject;
    class function CreateRemote(const MachineName: string): _clsFileObject;
  end;

// *********************************************************************//
// The Class CocolFileObjects provides a Create and CreateRemote method to          
// create instances of the default interface _colFileObjects exposed by              
// the CoClass colFileObjects. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CocolFileObjects = class
    class function Create: _colFileObjects;
    class function CreateRemote(const MachineName: string): _colFileObjects;
  end;

// *********************************************************************//
// The Class CoCurrentGUIs provides a Create and CreateRemote method to          
// create instances of the default interface _CurrentGUIs exposed by              
// the CoClass CurrentGUIs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCurrentGUIs = class
    class function Create: _CurrentGUIs;
    class function CreateRemote(const MachineName: string): _CurrentGUIs;
  end;

// *********************************************************************//
// The Class CoCurrentGUI provides a Create and CreateRemote method to          
// create instances of the default interface _CurrentGUI exposed by              
// the CoClass CurrentGUI. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCurrentGUI = class
    class function Create: _CurrentGUI;
    class function CreateRemote(const MachineName: string): _CurrentGUI;
  end;

// *********************************************************************//
// The Class CoclsHash provides a Create and CreateRemote method to          
// create instances of the default interface _clsHash exposed by              
// the CoClass clsHash. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoclsHash = class
    class function Create: _clsHash;
    class function CreateRemote(const MachineName: string): _clsHash;
  end;

implementation

uses ComObj;

class function CoCurrentProgram.Create: _CurrentProgram;
begin
  Result := CreateComObject(CLASS_CurrentProgram) as _CurrentProgram;
end;

class function CoCurrentProgram.CreateRemote(const MachineName: string): _CurrentProgram;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CurrentProgram) as _CurrentProgram;
end;

class function CoCurrentUser.Create: _CurrentUser;
begin
  Result := CreateComObject(CLASS_CurrentUser) as _CurrentUser;
end;

class function CoCurrentUser.CreateRemote(const MachineName: string): _CurrentUser;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CurrentUser) as _CurrentUser;
end;

class function CoDuties.Create: _Duties;
begin
  Result := CreateComObject(CLASS_Duties) as _Duties;
end;

class function CoDuties.CreateRemote(const MachineName: string): _Duties;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Duties) as _Duties;
end;

class function CoMatrixConnection.Create: _MatrixConnection;
begin
  Result := CreateComObject(CLASS_MatrixConnection) as _MatrixConnection;
end;

class function CoMatrixConnection.CreateRemote(const MachineName: string): _MatrixConnection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MatrixConnection) as _MatrixConnection;
end;

class function CoDuty.Create: _Duty;
begin
  Result := CreateComObject(CLASS_Duty) as _Duty;
end;

class function CoDuty.CreateRemote(const MachineName: string): _Duty;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Duty) as _Duty;
end;

class function CocolProgrammServer.Create: _colProgrammServer;
begin
  Result := CreateComObject(CLASS_colProgrammServer) as _colProgrammServer;
end;

class function CocolProgrammServer.CreateRemote(const MachineName: string): _colProgrammServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_colProgrammServer) as _colProgrammServer;
end;

class function CoclsProgramServer.Create: _clsProgramServer;
begin
  Result := CreateComObject(CLASS_clsProgramServer) as _clsProgramServer;
end;

class function CoclsProgramServer.CreateRemote(const MachineName: string): _clsProgramServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_clsProgramServer) as _clsProgramServer;
end;

class function CoProgramParams.Create: _ProgramParams;
begin
  Result := CreateComObject(CLASS_ProgramParams) as _ProgramParams;
end;

class function CoProgramParams.CreateRemote(const MachineName: string): _ProgramParams;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ProgramParams) as _ProgramParams;
end;

class function CoProgramParam.Create: _ProgramParam;
begin
  Result := CreateComObject(CLASS_ProgramParam) as _ProgramParam;
end;

class function CoProgramParam.CreateRemote(const MachineName: string): _ProgramParam;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ProgramParam) as _ProgramParam;
end;

class function CoSecurityParams.Create: _SecurityParams;
begin
  Result := CreateComObject(CLASS_SecurityParams) as _SecurityParams;
end;

class function CoSecurityParams.CreateRemote(const MachineName: string): _SecurityParams;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SecurityParams) as _SecurityParams;
end;

class function CoclsFileObject.Create: _clsFileObject;
begin
  Result := CreateComObject(CLASS_clsFileObject) as _clsFileObject;
end;

class function CoclsFileObject.CreateRemote(const MachineName: string): _clsFileObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_clsFileObject) as _clsFileObject;
end;

class function CocolFileObjects.Create: _colFileObjects;
begin
  Result := CreateComObject(CLASS_colFileObjects) as _colFileObjects;
end;

class function CocolFileObjects.CreateRemote(const MachineName: string): _colFileObjects;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_colFileObjects) as _colFileObjects;
end;

class function CoCurrentGUIs.Create: _CurrentGUIs;
begin
  Result := CreateComObject(CLASS_CurrentGUIs) as _CurrentGUIs;
end;

class function CoCurrentGUIs.CreateRemote(const MachineName: string): _CurrentGUIs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CurrentGUIs) as _CurrentGUIs;
end;

class function CoCurrentGUI.Create: _CurrentGUI;
begin
  Result := CreateComObject(CLASS_CurrentGUI) as _CurrentGUI;
end;

class function CoCurrentGUI.CreateRemote(const MachineName: string): _CurrentGUI;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CurrentGUI) as _CurrentGUI;
end;

class function CoclsHash.Create: _clsHash;
begin
  Result := CreateComObject(CLASS_clsHash) as _clsHash;
end;

class function CoclsHash.CreateRemote(const MachineName: string): _clsHash;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_clsHash) as _clsHash;
end;

end.
