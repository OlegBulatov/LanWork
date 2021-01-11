unit VBIDE2000;

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

// PASTLWTR : $Revision:   1.0.1.0.1.2  $
// File generated on 12/03/99 10:54:05 AM from Type Library described below.

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
// Type Lib: D:\Program Files\Common Files\Microsoft Shared\VBA\VBA6\VBE6EXT.OLB (1)
// IID\LCID: {0002E157-0000-0000-C000-000000000046}\0
// Helpfile: D:\Program Files\Common Files\Microsoft Shared\VBA\VBA6\vbob6.chm
// DepndLst: 
//   (1) v2.0 stdole, (D:\WINNT\System32\stdole2.tlb)
//   (2) v2.1 Office, (D:\MSOF2K\Office\MSO9.DLL)
// Parent TypeLibrary:
//   (0) v9.0 Access, (d:\rampage\typelib\typelibraries\msacc9.olb)
// Errors:
//   Hint: TypeInfo 'Property' changed to 'Property_'
//   Hint: Member 'Type' of 'Window' changed to 'Type_'
//   Hint: Member 'Type' of '_VBProject' changed to 'Type_'
//   Hint: Parameter 'Type' of _VBProjects.Add changed to 'Type_'
//   Hint: Member 'Type' of '_VBComponent_Old' changed to 'Type_'
//   Hint: Member 'Object' of 'Property' changed to 'Object_'
//   Hint: Member 'Object' of 'AddIn' changed to 'Object_'
//   Hint: Parameter 'String' of _CodeModule.AddFromString changed to 'String_'
//   Hint: Parameter 'String' of _CodeModule.Lines changed to 'String_'
//   Hint: Parameter 'String' of _CodeModule.InsertLines changed to 'String_'
//   Hint: Parameter 'String' of _CodeModule.ReplaceLine changed to 'String_'
//   Hint: Member 'Type' of 'Reference' changed to 'Type_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, OleCtrls, StdVCL, 
  Office2000;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  VBIDEMajorVersion = 5;
  VBIDEMinorVersion = 3;

  LIBID_VBIDE: TGUID = '{0002E157-0000-0000-C000-000000000046}';

  IID_Application: TGUID = '{0002E158-0000-0000-C000-000000000046}';
  IID_VBE: TGUID = '{0002E166-0000-0000-C000-000000000046}';
  IID_Window: TGUID = '{0002E16B-0000-0000-C000-000000000046}';
  IID__Windows_old: TGUID = '{0002E16A-0000-0000-C000-000000000046}';
  IID__Windows: TGUID = '{F57B7ED0-D8AB-11D1-85DF-00C04F98F42C}';
  CLASS_Windows: TGUID = '{0002E185-0000-0000-C000-000000000046}';
  IID__LinkedWindows: TGUID = '{0002E16C-0000-0000-C000-000000000046}';
  CLASS_LinkedWindows: TGUID = '{0002E187-0000-0000-C000-000000000046}';
  IID_Events: TGUID = '{0002E167-0000-0000-C000-000000000046}';
  IID__VBProjectsEvents: TGUID = '{0002E113-0000-0000-C000-000000000046}';
  DIID__dispVBProjectsEvents: TGUID = '{0002E103-0000-0000-C000-000000000046}';
  IID__VBComponentsEvents: TGUID = '{0002E115-0000-0000-C000-000000000046}';
  DIID__dispVBComponentsEvents: TGUID = '{0002E116-0000-0000-C000-000000000046}';
  IID__ReferencesEvents: TGUID = '{0002E11A-0000-0000-C000-000000000046}';
  DIID__dispReferencesEvents: TGUID = '{0002E118-0000-0000-C000-000000000046}';
  CLASS_ReferencesEvents: TGUID = '{0002E119-0000-0000-C000-000000000046}';
  IID__CommandBarControlEvents: TGUID = '{0002E130-0000-0000-C000-000000000046}';
  DIID__dispCommandBarControlEvents: TGUID = '{0002E131-0000-0000-C000-000000000046}';
  CLASS_CommandBarEvents: TGUID = '{0002E132-0000-0000-C000-000000000046}';
  IID__ProjectTemplate: TGUID = '{0002E159-0000-0000-C000-000000000046}';
  CLASS_ProjectTemplate: TGUID = '{32CDF9E0-1602-11CE-BFDC-08002B2B8CDA}';
  IID__VBProject_Old: TGUID = '{0002E160-0000-0000-C000-000000000046}';
  IID__VBProject: TGUID = '{EEE00915-E393-11D1-BB03-00C04FB6C4A6}';
  CLASS_VBProject: TGUID = '{0002E169-0000-0000-C000-000000000046}';
  IID__VBProjects_Old: TGUID = '{0002E165-0000-0000-C000-000000000046}';
  IID__VBProjects: TGUID = '{EEE00919-E393-11D1-BB03-00C04FB6C4A6}';
  CLASS_VBProjects: TGUID = '{0002E101-0000-0000-C000-000000000046}';
  IID_SelectedComponents: TGUID = '{BE39F3D4-1B13-11D0-887F-00A0C90F2744}';
  IID__Components: TGUID = '{0002E161-0000-0000-C000-000000000046}';
  CLASS_Components: TGUID = '{BE39F3D6-1B13-11D0-887F-00A0C90F2744}';
  IID__VBComponents_Old: TGUID = '{0002E162-0000-0000-C000-000000000046}';
  IID__VBComponents: TGUID = '{EEE0091C-E393-11D1-BB03-00C04FB6C4A6}';
  CLASS_VBComponents: TGUID = '{BE39F3D7-1B13-11D0-887F-00A0C90F2744}';
  IID__Component: TGUID = '{0002E163-0000-0000-C000-000000000046}';
  CLASS_Component: TGUID = '{BE39F3D8-1B13-11D0-887F-00A0C90F2744}';
  IID__VBComponent_Old: TGUID = '{0002E164-0000-0000-C000-000000000046}';
  IID__VBComponent: TGUID = '{EEE00921-E393-11D1-BB03-00C04FB6C4A6}';
  CLASS_VBComponent: TGUID = '{BE39F3DA-1B13-11D0-887F-00A0C90F2744}';
  IID_Property_: TGUID = '{0002E18C-0000-0000-C000-000000000046}';
  IID__Properties: TGUID = '{0002E188-0000-0000-C000-000000000046}';
  CLASS_Properties: TGUID = '{0002E18B-0000-0000-C000-000000000046}';
  IID__AddIns: TGUID = '{DA936B62-AC8B-11D1-B6E5-00A0C90F2744}';
  CLASS_Addins: TGUID = '{DA936B63-AC8B-11D1-B6E5-00A0C90F2744}';
  IID_AddIn: TGUID = '{DA936B64-AC8B-11D1-B6E5-00A0C90F2744}';
  IID__CodeModule: TGUID = '{0002E16E-0000-0000-C000-000000000046}';
  CLASS_CodeModule: TGUID = '{0002E170-0000-0000-C000-000000000046}';
  IID__CodePanes: TGUID = '{0002E172-0000-0000-C000-000000000046}';
  CLASS_CodePanes: TGUID = '{0002E174-0000-0000-C000-000000000046}';
  IID__CodePane: TGUID = '{0002E176-0000-0000-C000-000000000046}';
  CLASS_CodePane: TGUID = '{0002E178-0000-0000-C000-000000000046}';
  IID__References: TGUID = '{0002E17A-0000-0000-C000-000000000046}';
  IID_Reference: TGUID = '{0002E17E-0000-0000-C000-000000000046}';
  DIID__dispReferences_Events: TGUID = '{CDDE3804-2064-11CF-867F-00AA005FF34A}';
  CLASS_References: TGUID = '{0002E17C-0000-0000-C000-000000000046}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum vbextFileTypes
type
  vbextFileTypes = TOleEnum;
const
  vbextFileTypeForm = $00000000;
  vbextFileTypeModule = $00000001;
  vbextFileTypeClass = $00000002;
  vbextFileTypeProject = $00000003;
  vbextFileTypeExe = $00000004;
  vbextFileTypeFrx = $00000005;
  vbextFileTypeRes = $00000006;
  vbextFileTypeUserControl = $00000007;
  vbextFileTypePropertyPage = $00000008;
  vbextFileTypeDocObject = $00000009;
  vbextFileTypeBinary = $0000000A;
  vbextFileTypeGroupProject = $0000000B;
  vbextFileTypeDesigners = $0000000C;

// Constants for enum vbext_WindowType
type
  vbext_WindowType = TOleEnum;
const
  vbext_wt_CodeWindow = $00000000;
  vbext_wt_Designer = $00000001;
  vbext_wt_Browser = $00000002;
  vbext_wt_Watch = $00000003;
  vbext_wt_Locals = $00000004;
  vbext_wt_Immediate = $00000005;
  vbext_wt_ProjectWindow = $00000006;
  vbext_wt_PropertyWindow = $00000007;
  vbext_wt_Find = $00000008;
  vbext_wt_FindReplace = $00000009;
  vbext_wt_Toolbox = $0000000A;
  vbext_wt_LinkedWindowFrame = $0000000B;
  vbext_wt_MainWindow = $0000000C;
  vbext_wt_ToolWindow = $0000000F;

// Constants for enum vbext_WindowState
type
  vbext_WindowState = TOleEnum;
const
  vbext_ws_Normal = $00000000;
  vbext_ws_Minimize = $00000001;
  vbext_ws_Maximize = $00000002;

// Constants for enum vbext_ProjectType
type
  vbext_ProjectType = TOleEnum;
const
  vbext_pt_HostProject = $00000064;
  vbext_pt_StandAlone = $00000065;

// Constants for enum vbext_ProjectProtection
type
  vbext_ProjectProtection = TOleEnum;
const
  vbext_pp_none = $00000000;
  vbext_pp_locked = $00000001;

// Constants for enum vbext_VBAMode
type
  vbext_VBAMode = TOleEnum;
const
  vbext_vm_Run = $00000000;
  vbext_vm_Break = $00000001;
  vbext_vm_Design = $00000002;

// Constants for enum vbext_ComponentType
type
  vbext_ComponentType = TOleEnum;
const
  vbext_ct_StdModule = $00000001;
  vbext_ct_ClassModule = $00000002;
  vbext_ct_MSForm = $00000003;
  vbext_ct_ActiveXDesigner = $0000000B;
  vbext_ct_Document = $00000064;

// Constants for enum vbext_ProcKind
type
  vbext_ProcKind = TOleEnum;
const
  vbext_pk_Proc = $00000000;
  vbext_pk_Let = $00000001;
  vbext_pk_Set = $00000002;
  vbext_pk_Get = $00000003;

// Constants for enum vbext_CodePaneview
type
  vbext_CodePaneview = TOleEnum;
const
  vbext_cv_ProcedureView = $00000000;
  vbext_cv_FullModuleView = $00000001;

// Constants for enum vbext_RefKind
type
  vbext_RefKind = TOleEnum;
const
  vbext_rk_TypeLib = $00000000;
  vbext_rk_Project = $00000001;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  Application = interface;
  ApplicationDisp = dispinterface;
  VBE = interface;
  VBEDisp = dispinterface;
  Window = interface;
  WindowDisp = dispinterface;
  _Windows_old = interface;
  _Windows_oldDisp = dispinterface;
  _Windows = interface;
  _WindowsDisp = dispinterface;
  _LinkedWindows = interface;
  _LinkedWindowsDisp = dispinterface;
  Events = interface;
  EventsDisp = dispinterface;
  _VBProjectsEvents = interface;
  _dispVBProjectsEvents = dispinterface;
  _VBComponentsEvents = interface;
  _dispVBComponentsEvents = dispinterface;
  _ReferencesEvents = interface;
  _dispReferencesEvents = dispinterface;
  _CommandBarControlEvents = interface;
  _dispCommandBarControlEvents = dispinterface;
  _ProjectTemplate = interface;
  _ProjectTemplateDisp = dispinterface;
  _VBProject_Old = interface;
  _VBProject_OldDisp = dispinterface;
  _VBProject = interface;
  _VBProjectDisp = dispinterface;
  _VBProjects_Old = interface;
  _VBProjects_OldDisp = dispinterface;
  _VBProjects = interface;
  _VBProjectsDisp = dispinterface;
  SelectedComponents = interface;
  SelectedComponentsDisp = dispinterface;
  _Components = interface;
  _ComponentsDisp = dispinterface;
  _VBComponents_Old = interface;
  _VBComponents_OldDisp = dispinterface;
  _VBComponents = interface;
  _VBComponentsDisp = dispinterface;
  _Component = interface;
  _ComponentDisp = dispinterface;
  _VBComponent_Old = interface;
  _VBComponent_OldDisp = dispinterface;
  _VBComponent = interface;
  _VBComponentDisp = dispinterface;
  Property_ = interface;
  Property_Disp = dispinterface;
  _Properties = interface;
  _PropertiesDisp = dispinterface;
  _AddIns = interface;
  _AddInsDisp = dispinterface;
  AddIn = interface;
  AddInDisp = dispinterface;
  _CodeModule = interface;
  _CodeModuleDisp = dispinterface;
  _CodePanes = interface;
  _CodePanesDisp = dispinterface;
  _CodePane = interface;
  _CodePaneDisp = dispinterface;
  _References = interface;
  _ReferencesDisp = dispinterface;
  Reference = interface;
  ReferenceDisp = dispinterface;
  _dispReferences_Events = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Windows = _Windows;
  LinkedWindows = _LinkedWindows;
  ReferencesEvents = _ReferencesEvents;
  CommandBarEvents = _CommandBarControlEvents;
  ProjectTemplate = _ProjectTemplate;
  VBProject = _VBProject;
  VBProjects = _VBProjects;
  Components = _Components;
  VBComponents = _VBComponents;
  Component = _Component;
  VBComponent = _VBComponent;
  Properties = _Properties;
  Addins = _AddIns;
  CodeModule = _CodeModule;
  CodePanes = _CodePanes;
  CodePane = _CodePane;
  References = _References;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PWordBool1 = ^WordBool; {*}


// *********************************************************************//
// Interface: Application
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E158-0000-0000-C000-000000000046}
// *********************************************************************//
  Application = interface(IDispatch)
    ['{0002E158-0000-0000-C000-000000000046}']
    function  Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    property Version: WideString read Get_Version;
  end;

// *********************************************************************//
// DispIntf:  ApplicationDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E158-0000-0000-C000-000000000046}
// *********************************************************************//
  ApplicationDisp = dispinterface
    ['{0002E158-0000-0000-C000-000000000046}']
    property Version {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 100;
  end;

// *********************************************************************//
// Interface: VBE
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E166-0000-0000-C000-000000000046}
// *********************************************************************//
  VBE = interface(Application)
    ['{0002E166-0000-0000-C000-000000000046}']
    function  Get_VBProjects {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBProjects; safecall;
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBars; safecall;
    function  Get_CodePanes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CodePanes; safecall;
    function  Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Windows; safecall;
    function  Get_Events {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Events; safecall;
    function  Get_ActiveVBProject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBProject; safecall;
    procedure Set_ActiveVBProject {Flags(1), (1/1) CC:0, INV:8, DBG:6}({VT_29:1}const lppptReturn: VBProject); safecall;
    function  Get_SelectedVBComponent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBComponent; safecall;
    function  Get_MainWindow {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Window; safecall;
    function  Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Window; safecall;
    function  Get_ActiveCodePane {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CodePane; safecall;
    procedure Set_ActiveCodePane {Flags(1), (1/1) CC:0, INV:8, DBG:6}({VT_29:1}const ppCodePane: CodePane); safecall;
    function  Get_Addins {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Addins; safecall;
    property VBProjects: VBProjects read Get_VBProjects;
    property CommandBars: CommandBars read Get_CommandBars;
    property CodePanes: CodePanes read Get_CodePanes;
    property Windows: Windows read Get_Windows;
    property Events: Events read Get_Events;
    property ActiveVBProject: VBProject read Get_ActiveVBProject write Set_ActiveVBProject;
    property SelectedVBComponent: VBComponent read Get_SelectedVBComponent;
    property MainWindow: Window read Get_MainWindow;
    property ActiveWindow: Window read Get_ActiveWindow;
    property ActiveCodePane: CodePane read Get_ActiveCodePane write Set_ActiveCodePane;
    property Addins: Addins read Get_Addins;
  end;

// *********************************************************************//
// DispIntf:  VBEDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E166-0000-0000-C000-000000000046}
// *********************************************************************//
  VBEDisp = dispinterface
    ['{0002E166-0000-0000-C000-000000000046}']
    property VBProjects {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBProjects readonly dispid 107;
    property CommandBars {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBars readonly dispid 108;
    property CodePanes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CodePanes readonly dispid 109;
    property Windows {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Windows readonly dispid 110;
    property Events {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Events readonly dispid 111;
    property ActiveVBProject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBProject dispid 201;
    property SelectedVBComponent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBComponent readonly dispid 202;
    property MainWindow {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Window readonly dispid 204;
    property ActiveWindow {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Window readonly dispid 205;
    property ActiveCodePane {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CodePane dispid 206;
    property Addins {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Addins readonly dispid 209;
    property Version {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 100;
  end;

// *********************************************************************//
// Interface: Window
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E16B-0000-0000-C000-000000000046}
// *********************************************************************//
  Window = interface(IDispatch)
    ['{0002E16B-0000-0000-C000-000000000046}']
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Collection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Windows; safecall;
    procedure Close {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pfVisible: WordBool); safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}plLeft: Integer); safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}plTop: Integer); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}plWidth: Integer); safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}plHeight: Integer); safecall;
    function  Get_WindowState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: vbext_WindowState; safecall;
    procedure Set_WindowState {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}plWindowState: vbext_WindowState); safecall;
    procedure SetFocus {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: vbext_WindowType; safecall;
    procedure SetKind {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}eKind: vbext_WindowType); safecall;
    function  Get_LinkedWindows {Flags(1), (1/0) CC:0, INV:2, DBG:6}: LinkedWindows; safecall;
    function  Get_LinkedWindowFrame {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Window; safecall;
    procedure Detach {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Attach {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}lWindowHandle: Integer); safecall;
    function  Get_HWnd {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    property VBE: VBE read Get_VBE;
    property Collection: Windows read Get_Collection;
    property Caption: WideString read Get_Caption;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Left: Integer read Get_Left write Set_Left;
    property Top: Integer read Get_Top write Set_Top;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property WindowState: vbext_WindowState read Get_WindowState write Set_WindowState;
    property Type_: vbext_WindowType read Get_Type_;
    property LinkedWindows: LinkedWindows read Get_LinkedWindows;
    property LinkedWindowFrame: Window read Get_LinkedWindowFrame;
    property HWnd: Integer read Get_HWnd;
  end;

// *********************************************************************//
// DispIntf:  WindowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E16B-0000-0000-C000-000000000046}
// *********************************************************************//
  WindowDisp = dispinterface
    ['{0002E16B-0000-0000-C000-000000000046}']
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1;
    property Collection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Windows readonly dispid 2;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 99;
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 100;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 106;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 101;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 103;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 105;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 107;
    property WindowState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: vbext_WindowState dispid 109;
    procedure SetFocus {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 111;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: vbext_WindowType readonly dispid 112;
    procedure SetKind {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}eKind: vbext_WindowType); dispid 113;
    property LinkedWindows {Flags(2), (1/0) CC:0, INV:2, DBG:6}: LinkedWindows readonly dispid 116;
    property LinkedWindowFrame {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Window readonly dispid 117;
    procedure Detach {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 118;
    procedure Attach {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}lWindowHandle: Integer); dispid 119;
    property HWnd {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 120;
  end;

// *********************************************************************//
// Interface: _Windows_old
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E16A-0000-0000-C000-000000000046}
// *********************************************************************//
  _Windows_old = interface(IDispatch)
    ['{0002E16A-0000-0000-C000-000000000046}']
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Application; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): Window; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  _NewEnum {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IUnknown; safecall;
    property VBE: VBE read Get_VBE;
    property Parent: Application read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _Windows_oldDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E16A-0000-0000-C000-000000000046}
// *********************************************************************//
  _Windows_oldDisp = dispinterface
    ['{0002E16A-0000-0000-C000-000000000046}']
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 2;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): Window; dispid 0;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 201;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
  end;

// *********************************************************************//
// Interface: _Windows
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F57B7ED0-D8AB-11D1-85DF-00C04F98F42C}
// *********************************************************************//
  _Windows = interface(_Windows_old)
    ['{F57B7ED0-D8AB-11D1-85DF-00C04F98F42C}']
    function  CreateToolWindow {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_29:1}const AddInInst: AddIn; 
                                                                    {VT_8:0}const ProgId: WideString; 
                                                                    {VT_8:0}const Caption: WideString; 
                                                                    {VT_8:0}const GuidPosition: WideString; 
                                                                    {VT_9:1}var DocObj: IDispatch): Window; safecall;
  end;

// *********************************************************************//
// DispIntf:  _WindowsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F57B7ED0-D8AB-11D1-85DF-00C04F98F42C}
// *********************************************************************//
  _WindowsDisp = dispinterface
    ['{F57B7ED0-D8AB-11D1-85DF-00C04F98F42C}']
    function  CreateToolWindow {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_29:1}const AddInInst: AddIn; 
                                                                    {VT_8:0}const ProgId: WideString; 
                                                                    {VT_8:0}const Caption: WideString; 
                                                                    {VT_8:0}const GuidPosition: WideString; 
                                                                    {VT_9:1}var DocObj: IDispatch): Window; dispid 300;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 2;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): Window; dispid 0;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 201;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
  end;

// *********************************************************************//
// Interface: _LinkedWindows
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E16C-0000-0000-C000-000000000046}
// *********************************************************************//
  _LinkedWindows = interface(IDispatch)
    ['{0002E16C-0000-0000-C000-000000000046}']
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Window; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): Window; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  _NewEnum {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IUnknown; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const Window: Window); safecall;
    procedure Add {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const Window: Window); safecall;
    property VBE: VBE read Get_VBE;
    property Parent: Window read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _LinkedWindowsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E16C-0000-0000-C000-000000000046}
// *********************************************************************//
  _LinkedWindowsDisp = dispinterface
    ['{0002E16C-0000-0000-C000-000000000046}']
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Window readonly dispid 2;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): Window; dispid 0;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 201;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Window: Window); dispid 202;
    procedure Add {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Window: Window); dispid 203;
  end;

// *********************************************************************//
// Interface: Events
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E167-0000-0000-C000-000000000046}
// *********************************************************************//
  Events = interface(IDispatch)
    ['{0002E167-0000-0000-C000-000000000046}']
    function  Get_ReferencesEvents {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_29:1}const VBProject: VBProject): ReferencesEvents; safecall;
    function  Get_CommandBarEvents {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_9:0}const CommandBarControl: IDispatch): CommandBarEvents; safecall;
    property ReferencesEvents {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_29:1}const VBProject: VBProject]: ReferencesEvents read Get_ReferencesEvents;
    property CommandBarEvents {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_9:0}const CommandBarControl: IDispatch]: CommandBarEvents read Get_CommandBarEvents;
  end;

// *********************************************************************//
// DispIntf:  EventsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E167-0000-0000-C000-000000000046}
// *********************************************************************//
  EventsDisp = dispinterface
    ['{0002E167-0000-0000-C000-000000000046}']
    property ReferencesEvents {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_29:1}const VBProject: VBProject]: ReferencesEvents readonly dispid 202;
    property CommandBarEvents {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_9:0}const CommandBarControl: IDispatch]: CommandBarEvents readonly dispid 205;
  end;

// *********************************************************************//
// Interface: _VBProjectsEvents
// Flags:     (256) OleAutomation
// GUID:      {0002E113-0000-0000-C000-000000000046}
// *********************************************************************//
  _VBProjectsEvents = interface(IUnknown)
    ['{0002E113-0000-0000-C000-000000000046}']
  end;

// *********************************************************************//
// DispIntf:  _dispVBProjectsEvents
// Flags:     (4096) Dispatchable
// GUID:      {0002E103-0000-0000-C000-000000000046}
// *********************************************************************//
  _dispVBProjectsEvents = dispinterface
    ['{0002E103-0000-0000-C000-000000000046}']
    procedure ItemAdded {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const VBProject: VBProject); dispid 1;
    procedure ItemRemoved {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const VBProject: VBProject); dispid 2;
    procedure ItemRenamed {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const VBProject: VBProject; 
                                                               {VT_8:0}const OldName: WideString); dispid 3;
    procedure ItemActivated {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const VBProject: VBProject); dispid 4;
  end;

// *********************************************************************//
// Interface: _VBComponentsEvents
// Flags:     (256) OleAutomation
// GUID:      {0002E115-0000-0000-C000-000000000046}
// *********************************************************************//
  _VBComponentsEvents = interface(IUnknown)
    ['{0002E115-0000-0000-C000-000000000046}']
  end;

// *********************************************************************//
// DispIntf:  _dispVBComponentsEvents
// Flags:     (4096) Dispatchable
// GUID:      {0002E116-0000-0000-C000-000000000046}
// *********************************************************************//
  _dispVBComponentsEvents = dispinterface
    ['{0002E116-0000-0000-C000-000000000046}']
    procedure ItemAdded {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const VBComponent: VBComponent); dispid 1;
    procedure ItemRemoved {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const VBComponent: VBComponent); dispid 2;
    procedure ItemRenamed {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const VBComponent: VBComponent; 
                                                               {VT_8:0}const OldName: WideString); dispid 3;
    procedure ItemSelected {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const VBComponent: VBComponent); dispid 4;
    procedure ItemActivated {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const VBComponent: VBComponent); dispid 5;
    procedure ItemReloaded {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const VBComponent: VBComponent); dispid 6;
  end;

// *********************************************************************//
// Interface: _ReferencesEvents
// Flags:     (256) OleAutomation
// GUID:      {0002E11A-0000-0000-C000-000000000046}
// *********************************************************************//
  _ReferencesEvents = interface(IUnknown)
    ['{0002E11A-0000-0000-C000-000000000046}']
  end;

// *********************************************************************//
// DispIntf:  _dispReferencesEvents
// Flags:     (4096) Dispatchable
// GUID:      {0002E118-0000-0000-C000-000000000046}
// *********************************************************************//
  _dispReferencesEvents = dispinterface
    ['{0002E118-0000-0000-C000-000000000046}']
    procedure ItemAdded {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Reference: Reference); dispid 1;
    procedure ItemRemoved {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Reference: Reference); dispid 2;
  end;

// *********************************************************************//
// Interface: _CommandBarControlEvents
// Flags:     (256) OleAutomation
// GUID:      {0002E130-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBarControlEvents = interface(IUnknown)
    ['{0002E130-0000-0000-C000-000000000046}']
  end;

// *********************************************************************//
// DispIntf:  _dispCommandBarControlEvents
// Flags:     (4096) Dispatchable
// GUID:      {0002E131-0000-0000-C000-000000000046}
// *********************************************************************//
  _dispCommandBarControlEvents = dispinterface
    ['{0002E131-0000-0000-C000-000000000046}']
    procedure Click {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_9:0}const CommandBarControl: IDispatch; 
                                                         {VT_11:1}var handled: WordBool; 
                                                         {VT_11:1}var CancelDefault: WordBool); dispid 1;
  end;

// *********************************************************************//
// Interface: _ProjectTemplate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E159-0000-0000-C000-000000000046}
// *********************************************************************//
  _ProjectTemplate = interface(IDispatch)
    ['{0002E159-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Application; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Application; safecall;
    property Application: Application read Get_Application;
    property Parent: Application read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  _ProjectTemplateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E159-0000-0000-C000-000000000046}
// *********************************************************************//
  _ProjectTemplateDisp = dispinterface
    ['{0002E159-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 2;
  end;

// *********************************************************************//
// Interface: _VBProject_Old
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E160-0000-0000-C000-000000000046}
// *********************************************************************//
  _VBProject_Old = interface(_ProjectTemplate)
    ['{0002E160-0000-0000-C000-000000000046}']
    function  Get_HelpFile {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HelpFile {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const lpbstrHelpFile: WideString); safecall;
    function  Get_HelpContextID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_HelpContextID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}lpdwContextID: Integer); safecall;
    function  Get_Description {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Description {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const lpbstrDescription: WideString); safecall;
    function  Get_Mode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: vbext_VBAMode; safecall;
    function  Get_References {Flags(1), (1/0) CC:0, INV:2, DBG:6}: References; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const lpbstrName: WideString); safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Collection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBProjects; safecall;
    function  Get_Protection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: vbext_ProjectProtection; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_VBComponents {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBComponents; safecall;
    property HelpFile: WideString read Get_HelpFile write Set_HelpFile;
    property HelpContextID: Integer read Get_HelpContextID write Set_HelpContextID;
    property Description: WideString read Get_Description write Set_Description;
    property Mode: vbext_VBAMode read Get_Mode;
    property References: References read Get_References;
    property Name: WideString read Get_Name write Set_Name;
    property VBE: VBE read Get_VBE;
    property Collection: VBProjects read Get_Collection;
    property Protection: vbext_ProjectProtection read Get_Protection;
    property Saved: WordBool read Get_Saved;
    property VBComponents: VBComponents read Get_VBComponents;
  end;

// *********************************************************************//
// DispIntf:  _VBProject_OldDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E160-0000-0000-C000-000000000046}
// *********************************************************************//
  _VBProject_OldDisp = dispinterface
    ['{0002E160-0000-0000-C000-000000000046}']
    property HelpFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 116;
    property HelpContextID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 117;
    property Description {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 118;
    property Mode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: vbext_VBAMode readonly dispid 119;
    property References {Flags(2), (1/0) CC:0, INV:2, DBG:6}: References readonly dispid 120;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 121;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 122;
    property Collection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBProjects readonly dispid 123;
    property Protection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: vbext_ProjectProtection readonly dispid 131;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 133;
    property VBComponents {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBComponents readonly dispid 135;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 2;
  end;

// *********************************************************************//
// Interface: _VBProject
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EEE00915-E393-11D1-BB03-00C04FB6C4A6}
// *********************************************************************//
  _VBProject = interface(_VBProject_Old)
    ['{EEE00915-E393-11D1-BB03-00C04FB6C4A6}']
    procedure SaveAs {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString); safecall;
    procedure MakeCompiledFile {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: vbext_ProjectType; safecall;
    function  Get_FileName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_BuildFileName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BuildFileName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const lpbstrBldFName: WideString); safecall;
    property Type_: vbext_ProjectType read Get_Type_;
    property FileName: WideString read Get_FileName;
    property BuildFileName: WideString read Get_BuildFileName write Set_BuildFileName;
  end;

// *********************************************************************//
// DispIntf:  _VBProjectDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EEE00915-E393-11D1-BB03-00C04FB6C4A6}
// *********************************************************************//
  _VBProjectDisp = dispinterface
    ['{EEE00915-E393-11D1-BB03-00C04FB6C4A6}']
    procedure SaveAs {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString); dispid 138;
    procedure MakeCompiledFile {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 139;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: vbext_ProjectType readonly dispid 140;
    property FileName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 141;
    property BuildFileName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 142;
    property HelpFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 116;
    property HelpContextID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 117;
    property Description {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 118;
    property Mode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: vbext_VBAMode readonly dispid 119;
    property References {Flags(2), (1/0) CC:0, INV:2, DBG:6}: References readonly dispid 120;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 121;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 122;
    property Collection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBProjects readonly dispid 123;
    property Protection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: vbext_ProjectProtection readonly dispid 131;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 133;
    property VBComponents {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBComponents readonly dispid 135;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 2;
  end;

// *********************************************************************//
// Interface: _VBProjects_Old
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E165-0000-0000-C000-000000000046}
// *********************************************************************//
  _VBProjects_Old = interface(IDispatch)
    ['{0002E165-0000-0000-C000-000000000046}']
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): VBProject; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  _NewEnum {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IUnknown; safecall;
    property VBE: VBE read Get_VBE;
    property Parent: VBE read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _VBProjects_OldDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E165-0000-0000-C000-000000000046}
// *********************************************************************//
  _VBProjects_OldDisp = dispinterface
    ['{0002E165-0000-0000-C000-000000000046}']
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): VBProject; dispid 0;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 20;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 2;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 10;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
  end;

// *********************************************************************//
// Interface: _VBProjects
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EEE00919-E393-11D1-BB03-00C04FB6C4A6}
// *********************************************************************//
  _VBProjects = interface(_VBProjects_Old)
    ['{EEE00919-E393-11D1-BB03-00C04FB6C4A6}']
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}Type_: vbext_ProjectType): VBProject; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const lpc: VBProject); safecall;
  end;

// *********************************************************************//
// DispIntf:  _VBProjectsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EEE00919-E393-11D1-BB03-00C04FB6C4A6}
// *********************************************************************//
  _VBProjectsDisp = dispinterface
    ['{EEE00919-E393-11D1-BB03-00C04FB6C4A6}']
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}Type_: vbext_ProjectType): VBProject; dispid 137;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const lpc: VBProject); dispid 138;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): VBProject; dispid 0;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 20;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 2;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 10;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
  end;

// *********************************************************************//
// Interface: SelectedComponents
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BE39F3D4-1B13-11D0-887F-00A0C90F2744}
// *********************************************************************//
  SelectedComponents = interface(IDispatch)
    ['{BE39F3D4-1B13-11D0-887F-00A0C90F2744}']
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): Component; safecall;
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Application; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBProject; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  _NewEnum {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IUnknown; safecall;
    property Application: Application read Get_Application;
    property Parent: VBProject read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  SelectedComponentsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BE39F3D4-1B13-11D0-887F-00A0C90F2744}
// *********************************************************************//
  SelectedComponentsDisp = dispinterface
    ['{BE39F3D4-1B13-11D0-887F-00A0C90F2744}']
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): Component; dispid 0;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBProject readonly dispid 2;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 10;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
  end;

// *********************************************************************//
// Interface: _Components
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E161-0000-0000-C000-000000000046}
// *********************************************************************//
  _Components = interface(IDispatch)
    ['{0002E161-0000-0000-C000-000000000046}']
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): Component; safecall;
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Application; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBProject; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  _NewEnum {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IUnknown; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const Component: Component); safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}ComponentType: vbext_ComponentType): Component; safecall;
    function  Import {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString): Component; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    property Application: Application read Get_Application;
    property Parent: VBProject read Get_Parent;
    property Count: Integer read Get_Count;
    property VBE: VBE read Get_VBE;
  end;

// *********************************************************************//
// DispIntf:  _ComponentsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E161-0000-0000-C000-000000000046}
// *********************************************************************//
  _ComponentsDisp = dispinterface
    ['{0002E161-0000-0000-C000-000000000046}']
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): Component; dispid 0;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBProject readonly dispid 2;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 10;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Component: Component); dispid 11;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}ComponentType: vbext_ComponentType): Component; dispid 12;
    function  Import {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString): Component; dispid 13;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 20;
  end;

// *********************************************************************//
// Interface: _VBComponents_Old
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E162-0000-0000-C000-000000000046}
// *********************************************************************//
  _VBComponents_Old = interface(IDispatch)
    ['{0002E162-0000-0000-C000-000000000046}']
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): VBComponent; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBProject; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  _NewEnum {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IUnknown; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const VBComponent: VBComponent); safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}ComponentType: vbext_ComponentType): VBComponent; safecall;
    function  Import {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString): VBComponent; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    property Parent: VBProject read Get_Parent;
    property Count: Integer read Get_Count;
    property VBE: VBE read Get_VBE;
  end;

// *********************************************************************//
// DispIntf:  _VBComponents_OldDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E162-0000-0000-C000-000000000046}
// *********************************************************************//
  _VBComponents_OldDisp = dispinterface
    ['{0002E162-0000-0000-C000-000000000046}']
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): VBComponent; dispid 0;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBProject readonly dispid 2;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 10;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const VBComponent: VBComponent); dispid 11;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}ComponentType: vbext_ComponentType): VBComponent; dispid 12;
    function  Import {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString): VBComponent; dispid 13;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 20;
  end;

// *********************************************************************//
// Interface: _VBComponents
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EEE0091C-E393-11D1-BB03-00C04FB6C4A6}
// *********************************************************************//
  _VBComponents = interface(_VBComponents_Old)
    ['{EEE0091C-E393-11D1-BB03-00C04FB6C4A6}']
    function  AddCustom {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const ProgId: WideString): VBComponent; safecall;
  end;

// *********************************************************************//
// DispIntf:  _VBComponentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EEE0091C-E393-11D1-BB03-00C04FB6C4A6}
// *********************************************************************//
  _VBComponentsDisp = dispinterface
    ['{EEE0091C-E393-11D1-BB03-00C04FB6C4A6}']
    function  AddCustom {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const ProgId: WideString): VBComponent; dispid 25;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): VBComponent; dispid 0;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBProject readonly dispid 2;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 10;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const VBComponent: VBComponent); dispid 11;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}ComponentType: vbext_ComponentType): VBComponent; dispid 12;
    function  Import {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString): VBComponent; dispid 13;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 20;
  end;

// *********************************************************************//
// Interface: _Component
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E163-0000-0000-C000-000000000046}
// *********************************************************************//
  _Component = interface(IDispatch)
    ['{0002E163-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Application; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Components; safecall;
    function  Get_IsDirty {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_IsDirty {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}lpfReturn: WordBool); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrReturn: WideString); safecall;
    property Application: Application read Get_Application;
    property Parent: Components read Get_Parent;
    property IsDirty: WordBool read Get_IsDirty write Set_IsDirty;
    property Name: WideString read Get_Name write Set_Name;
  end;

// *********************************************************************//
// DispIntf:  _ComponentDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E163-0000-0000-C000-000000000046}
// *********************************************************************//
  _ComponentDisp = dispinterface
    ['{0002E163-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Components readonly dispid 2;
    property IsDirty {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 10;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 48;
  end;

// *********************************************************************//
// Interface: _VBComponent_Old
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E164-0000-0000-C000-000000000046}
// *********************************************************************//
  _VBComponent_Old = interface(IDispatch)
    ['{0002E164-0000-0000-C000-000000000046}']
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrReturn: WideString); safecall;
    function  Get_Designer {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_CodeModule {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CodeModule; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: vbext_ComponentType; safecall;
    procedure Export {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString); safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Collection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBComponents; safecall;
    function  Get_HasOpenDesigner {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Properties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Properties; safecall;
    function  DesignerWindow {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Window; safecall;
    procedure Activate {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Saved: WordBool read Get_Saved;
    property Name: WideString read Get_Name write Set_Name;
    property Designer: IDispatch read Get_Designer;
    property CodeModule: CodeModule read Get_CodeModule;
    property Type_: vbext_ComponentType read Get_Type_;
    property VBE: VBE read Get_VBE;
    property Collection: VBComponents read Get_Collection;
    property HasOpenDesigner: WordBool read Get_HasOpenDesigner;
    property Properties: Properties read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  _VBComponent_OldDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002E164-0000-0000-C000-000000000046}
// *********************************************************************//
  _VBComponent_OldDisp = dispinterface
    ['{0002E164-0000-0000-C000-000000000046}']
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 10;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 48;
    property Designer {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 49;
    property CodeModule {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CodeModule readonly dispid 50;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: vbext_ComponentType readonly dispid 51;
    procedure Export {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString); dispid 52;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 53;
    property Collection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBComponents readonly dispid 54;
    property HasOpenDesigner {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 55;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 56;
    function  DesignerWindow {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Window; dispid 57;
    procedure Activate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 60;
  end;

// *********************************************************************//
// Interface: _VBComponent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EEE00921-E393-11D1-BB03-00C04FB6C4A6}
// *********************************************************************//
  _VBComponent = interface(_VBComponent_Old)
    ['{EEE00921-E393-11D1-BB03-00C04FB6C4A6}']
    function  Get_DesignerID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    property DesignerID: WideString read Get_DesignerID;
  end;

// *********************************************************************//
// DispIntf:  _VBComponentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EEE00921-E393-11D1-BB03-00C04FB6C4A6}
// *********************************************************************//
  _VBComponentDisp = dispinterface
    ['{EEE00921-E393-11D1-BB03-00C04FB6C4A6}']
    property DesignerID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 64;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 10;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 48;
    property Designer {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 49;
    property CodeModule {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CodeModule readonly dispid 50;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: vbext_ComponentType readonly dispid 51;
    procedure Export {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString); dispid 52;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 53;
    property Collection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBComponents readonly dispid 54;
    property HasOpenDesigner {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 55;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 56;
    function  DesignerWindow {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Window; dispid 57;
    procedure Activate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 60;
  end;

// *********************************************************************//
// Interface: Property_
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E18C-0000-0000-C000-000000000046}
// *********************************************************************//
  Property_ = interface(IDispatch)
    ['{0002E18C-0000-0000-C000-000000000046}']
    function  Get_Value {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_Value {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}lppvReturn: OleVariant); safecall;
    function  Get_IndexedValue {Flags(1), (5/4) CC:0, INV:2, DBG:6}({VT_12:0}Index1: OleVariant; 
                                                                    {VT_12:0}Index2: OleVariant; 
                                                                    {VT_12:0}Index3: OleVariant; 
                                                                    {VT_12:0}Index4: OleVariant): OleVariant; safecall;
    procedure Set_IndexedValue {Flags(1), (5/5) CC:0, INV:4, DBG:6}({VT_12:0}Index1: OleVariant; 
                                                                    {VT_12:0}Index2: OleVariant; 
                                                                    {VT_12:0}Index3: OleVariant; 
                                                                    {VT_12:0}Index4: OleVariant; 
                                                                    {VT_12:0}lppvReturn: OleVariant); safecall;
    function  Get_NumIndices {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Application; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Properties; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Collection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Properties; safecall;
    function  Get_Object_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    procedure Set_Object_ {Flags(1), (1/1) CC:0, INV:8, DBG:6}({VT_13:0}const lppunk: IUnknown); safecall;
    property Value: OleVariant read Get_Value write Set_Value;
    property IndexedValue {Flags(2), (5/4) CC:0, INV:2, DBG:5}[{VT_12:0}Index1: OleVariant; 
                                                               {VT_12:0}Index2: OleVariant; 
                                                               {VT_12:0}Index3: OleVariant; 
                                                               {VT_12:0}Index4: OleVariant]: OleVariant read Get_IndexedValue write Set_IndexedValue;
    property NumIndices: Smallint read Get_NumIndices;
    property Application: Application read Get_Application;
    property Parent: Properties read Get_Parent;
    property Name: WideString read Get_Name;
    property VBE: VBE read Get_VBE;
    property Collection: Properties read Get_Collection;
    property Object_: IUnknown read Get_Object_ write Set_Object_;
  end;

// *********************************************************************//
// DispIntf:  Property_Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E18C-0000-0000-C000-000000000046}
// *********************************************************************//
  Property_Disp = dispinterface
    ['{0002E18C-0000-0000-C000-000000000046}']
    property Value {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant dispid 0;
    property IndexedValue {Flags(2), (5/4) CC:0, INV:2, DBG:6}[{VT_12:0}Index1: OleVariant; 
                                                               {VT_12:0}Index2: OleVariant; 
                                                               {VT_12:0}Index3: OleVariant; 
                                                               {VT_12:0}Index4: OleVariant]: OleVariant dispid 3;
    property NumIndices {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 4;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 2;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 40;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 41;
    property Collection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 42;
    property Object_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown dispid 45;
  end;

// *********************************************************************//
// Interface: _Properties
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E188-0000-0000-C000-000000000046}
// *********************************************************************//
  _Properties = interface(IDispatch)
    ['{0002E188-0000-0000-C000-000000000046}']
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): Property_; safecall;
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Application; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  _NewEnum {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IUnknown; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    property Application: Application read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
    property VBE: VBE read Get_VBE;
  end;

// *********************************************************************//
// DispIntf:  _PropertiesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0002E188-0000-0000-C000-000000000046}
// *********************************************************************//
  _PropertiesDisp = dispinterface
    ['{0002E188-0000-0000-C000-000000000046}']
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): Property_; dispid 0;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Application readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 40;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 10;
  end;

// *********************************************************************//
// Interface: _AddIns
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA936B62-AC8B-11D1-B6E5-00A0C90F2744}
// *********************************************************************//
  _AddIns = interface(IDispatch)
    ['{DA936B62-AC8B-11D1-B6E5-00A0C90F2744}']
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): AddIn; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  _NewEnum {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IUnknown; safecall;
    procedure Update {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property VBE: VBE read Get_VBE;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _AddInsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA936B62-AC8B-11D1-B6E5-00A0C90F2744}
// *********************************************************************//
  _AddInsDisp = dispinterface
    ['{DA936B62-AC8B-11D1-B6E5-00A0C90F2744}']
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): AddIn; dispid 0;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 40;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Update {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 41;
  end;

// *********************************************************************//
// Interface: AddIn
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA936B64-AC8B-11D1-B6E5-00A0C90F2744}
// *********************************************************************//
  AddIn = interface(IDispatch)
    ['{DA936B64-AC8B-11D1-B6E5-00A0C90F2744}']
    function  Get_Description {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Description {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const lpbstr: WideString); safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Collection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Addins; safecall;
    function  Get_ProgId {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Guid {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Connect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Connect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}lpfConnect: WordBool); safecall;
    function  Get_Object_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Set_Object_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_9:0}const lppdisp: IDispatch); safecall;
    property Description: WideString read Get_Description write Set_Description;
    property VBE: VBE read Get_VBE;
    property Collection: Addins read Get_Collection;
    property ProgId: WideString read Get_ProgId;
    property Guid: WideString read Get_Guid;
    property Connect: WordBool read Get_Connect write Set_Connect;
    property Object_: IDispatch read Get_Object_ write Set_Object_;
  end;

// *********************************************************************//
// DispIntf:  AddInDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DA936B64-AC8B-11D1-B6E5-00A0C90F2744}
// *********************************************************************//
  AddInDisp = dispinterface
    ['{DA936B64-AC8B-11D1-B6E5-00A0C90F2744}']
    property Description {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 0;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1;
    property Collection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Addins readonly dispid 2;
    property ProgId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 3;
    property Guid {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 4;
    property Connect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 6;
    property Object_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch dispid 7;
  end;

// *********************************************************************//
// Interface: _CodeModule
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0002E16E-0000-0000-C000-000000000046}
// *********************************************************************//
  _CodeModule = interface(IDispatch)
    ['{0002E16E-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBComponent; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrName: WideString); safecall;
    procedure AddFromString {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const String_: WideString); safecall;
    procedure AddFromFile {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString); safecall;
    function  Get_Lines {Flags(1), (3/2) CC:0, INV:2, DBG:6}({VT_3:0}StartLine: Integer; 
                                                             {VT_3:0}Count: Integer): WideString; safecall;
    function  Get_CountOfLines {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure InsertLines {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_3:0}Line: Integer; 
                                                               {VT_8:0}const String_: WideString); safecall;
    procedure DeleteLines {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_3:0}StartLine: Integer; 
                                                               {VT_3:0}Count: Integer); safecall;
    procedure ReplaceLine {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_3:0}Line: Integer; 
                                                               {VT_8:0}const String_: WideString); safecall;
    function  Get_ProcStartLine {Flags(1), (3/2) CC:0, INV:2, DBG:6}({VT_8:0}const ProcName: WideString; 
                                                                     {VT_29:0}ProcKind: vbext_ProcKind): Integer; safecall;
    function  Get_ProcCountLines {Flags(1), (3/2) CC:0, INV:2, DBG:6}({VT_8:0}const ProcName: WideString; 
                                                                      {VT_29:0}ProcKind: vbext_ProcKind): Integer; safecall;
    function  Get_ProcBodyLine {Flags(1), (3/2) CC:0, INV:2, DBG:6}({VT_8:0}const ProcName: WideString; 
                                                                    {VT_29:0}ProcKind: vbext_ProcKind): Integer; safecall;
    function  Get_ProcOfLine {Flags(1), (3/2) CC:0, INV:2, DBG:6}({VT_3:0}Line: Integer; 
                                                                  {VT_29:1}out ProcKind: vbext_ProcKind): WideString; safecall;
    function  Get_CountOfDeclarationLines {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  CreateEventProc {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const EventName: WideString; 
                                                                   {VT_8:0}const ObjectName: WideString): Integer; safecall;
    function  Find {Flags(1), (9/8) CC:0, INV:1, DBG:6}({VT_8:0}const Target: WideString; 
                                                        {VT_3:1}var StartLine: Integer; 
                                                        {VT_3:1}var StartColumn: Integer; 
                                                        {VT_3:1}var EndLine: Integer; 
                                                        {VT_3:1}var EndColumn: Integer; 
                                                        {VT_11:0}WholeWord: WordBool; 
                                                        {VT_11:0}MatchCase: WordBool; 
                                                        {VT_11:0}PatternSearch: WordBool): WordBool; safecall;
    function  Get_CodePane {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CodePane; safecall;
    property Parent: VBComponent read Get_Parent;
    property VBE: VBE read Get_VBE;
    property Name: WideString read Get_Name write Set_Name;
    property Lines {Flags(2), (3/2) CC:0, INV:2, DBG:5}[{VT_3:0}StartLine: Integer; 
                                                        {VT_3:0}Count: Integer]: WideString read Get_Lines;
    property CountOfLines: Integer read Get_CountOfLines;
    property ProcStartLine {Flags(2), (3/2) CC:0, INV:2, DBG:5}[{VT_8:0}const ProcName: WideString; 
                                                                {VT_29:0}ProcKind: vbext_ProcKind]: Integer read Get_ProcStartLine;
    property ProcCountLines {Flags(2), (3/2) CC:0, INV:2, DBG:5}[{VT_8:0}const ProcName: WideString; 
                                                                 {VT_29:0}ProcKind: vbext_ProcKind]: Integer read Get_ProcCountLines;
    property ProcBodyLine {Flags(2), (3/2) CC:0, INV:2, DBG:5}[{VT_8:0}const ProcName: WideString; 
                                                               {VT_29:0}ProcKind: vbext_ProcKind]: Integer read Get_ProcBodyLine;
    property ProcOfLine {Flags(2), (3/2) CC:0, INV:2, DBG:5}[{VT_3:0}Line: Integer; 
                                                             {VT_29:1}out ProcKind: vbext_ProcKind]: WideString read Get_ProcOfLine;
    property CountOfDeclarationLines: Integer read Get_CountOfDeclarationLines;
    property CodePane: CodePane read Get_CodePane;
  end;

// *********************************************************************//
// DispIntf:  _CodeModuleDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0002E16E-0000-0000-C000-000000000046}
// *********************************************************************//
  _CodeModuleDisp = dispinterface
    ['{0002E16E-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBComponent readonly dispid 1610743808;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1610743809;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 0;
    procedure AddFromString {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const String_: WideString); dispid 1610743812;
    procedure AddFromFile {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString); dispid 1610743813;
    property Lines {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_3:0}StartLine: Integer; 
                                                        {VT_3:0}Count: Integer]: WideString readonly dispid 1610743814;
    property CountOfLines {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743815;
    procedure InsertLines {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}Line: Integer; 
                                                               {VT_8:0}const String_: WideString); dispid 1610743816;
    procedure DeleteLines {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}StartLine: Integer; 
                                                               {VT_3:0}Count: Integer); dispid 1610743817;
    procedure ReplaceLine {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}Line: Integer; 
                                                               {VT_8:0}const String_: WideString); dispid 1610743818;
    property ProcStartLine {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_8:0}const ProcName: WideString; 
                                                                {VT_29:0}ProcKind: vbext_ProcKind]: Integer readonly dispid 1610743819;
    property ProcCountLines {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_8:0}const ProcName: WideString; 
                                                                 {VT_29:0}ProcKind: vbext_ProcKind]: Integer readonly dispid 1610743820;
    property ProcBodyLine {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_8:0}const ProcName: WideString; 
                                                               {VT_29:0}ProcKind: vbext_ProcKind]: Integer readonly dispid 1610743821;
    property ProcOfLine {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_3:0}Line: Integer; 
                                                             {VT_29:1}out ProcKind: vbext_ProcKind]: WideString readonly dispid 1610743822;
    property CountOfDeclarationLines {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743823;
    function  CreateEventProc {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const EventName: WideString; 
                                                                   {VT_8:0}const ObjectName: WideString): Integer; dispid 1610743824;
    function  Find {Flags(2), (9/8) CC:0, INV:1, DBG:4}({VT_8:0}const Target: WideString; 
                                                        {VT_3:1}var StartLine: Integer; 
                                                        {VT_3:1}var StartColumn: Integer; 
                                                        {VT_3:1}var EndLine: Integer; 
                                                        {VT_3:1}var EndColumn: Integer; 
                                                        {VT_11:0}WholeWord: WordBool; 
                                                        {VT_11:0}MatchCase: WordBool; 
                                                        {VT_11:0}PatternSearch: WordBool): WordBool; dispid 1610743825;
    property CodePane {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CodePane readonly dispid 1610743826;
  end;

// *********************************************************************//
// Interface: _CodePanes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0002E172-0000-0000-C000-000000000046}
// *********************************************************************//
  _CodePanes = interface(IDispatch)
    ['{0002E172-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): CodePane; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  _NewEnum {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IUnknown; safecall;
    function  Get_Current {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CodePane; safecall;
    procedure Set_Current {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:1}const CodePane: CodePane); safecall;
    property Parent: VBE read Get_Parent;
    property VBE: VBE read Get_VBE;
    property Count: Integer read Get_Count;
    property Current: CodePane read Get_Current;
  end;

// *********************************************************************//
// DispIntf:  _CodePanesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0002E172-0000-0000-C000-000000000046}
// *********************************************************************//
  _CodePanesDisp = dispinterface
    ['{0002E172-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1610743808;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1610743809;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): CodePane; dispid 0;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743811;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    property Current {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CodePane readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: _CodePane
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0002E176-0000-0000-C000-000000000046}
// *********************************************************************//
  _CodePane = interface(IDispatch)
    ['{0002E176-0000-0000-C000-000000000046}']
    function  Get_Collection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CodePanes; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Window {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Window; safecall;
    procedure GetSelection {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_3:1}out StartLine: Integer; 
                                                                {VT_3:1}out StartColumn: Integer; 
                                                                {VT_3:1}out EndLine: Integer; 
                                                                {VT_3:1}out EndColumn: Integer); safecall;
    procedure SetSelection {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_3:0}StartLine: Integer; 
                                                                {VT_3:0}StartColumn: Integer; 
                                                                {VT_3:0}EndLine: Integer; 
                                                                {VT_3:0}EndColumn: Integer); safecall;
    function  Get_TopLine {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_TopLine {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}TopLine: Integer); safecall;
    function  Get_CountOfVisibleLines {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_CodeModule {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CodeModule; safecall;
    procedure Show {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_CodePaneView {Flags(1), (1/0) CC:0, INV:2, DBG:6}: vbext_CodePaneview; safecall;
    property Collection: CodePanes read Get_Collection;
    property VBE: VBE read Get_VBE;
    property Window: Window read Get_Window;
    property TopLine: Integer read Get_TopLine;
    property CountOfVisibleLines: Integer read Get_CountOfVisibleLines;
    property CodeModule: CodeModule read Get_CodeModule;
    property CodePaneView: vbext_CodePaneview read Get_CodePaneView;
  end;

// *********************************************************************//
// DispIntf:  _CodePaneDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0002E176-0000-0000-C000-000000000046}
// *********************************************************************//
  _CodePaneDisp = dispinterface
    ['{0002E176-0000-0000-C000-000000000046}']
    property Collection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CodePanes readonly dispid 1610743808;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1610743809;
    property Window {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Window readonly dispid 1610743810;
    procedure GetSelection {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_3:1}out StartLine: Integer; 
                                                                {VT_3:1}out StartColumn: Integer; 
                                                                {VT_3:1}out EndLine: Integer; 
                                                                {VT_3:1}out EndColumn: Integer); dispid 1610743811;
    procedure SetSelection {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_3:0}StartLine: Integer; 
                                                                {VT_3:0}StartColumn: Integer; 
                                                                {VT_3:0}EndLine: Integer; 
                                                                {VT_3:0}EndColumn: Integer); dispid 1610743812;
    property TopLine {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743813;
    property CountOfVisibleLines {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743815;
    property CodeModule {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CodeModule readonly dispid 1610743816;
    procedure Show {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743817;
    property CodePaneView {Flags(2), (1/0) CC:0, INV:2, DBG:6}: vbext_CodePaneview readonly dispid 1610743818;
  end;

// *********************************************************************//
// Interface: _References
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0002E17A-0000-0000-C000-000000000046}
// *********************************************************************//
  _References = interface(IDispatch)
    ['{0002E17A-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBProject; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): Reference; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  _NewEnum {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IUnknown; safecall;
    function  AddFromGuid {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_8:0}const Guid: WideString; 
                                                               {VT_3:0}Major: Integer; 
                                                               {VT_3:0}Minor: Integer): Reference; safecall;
    function  AddFromFile {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString): Reference; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const Reference: Reference); safecall;
    property Parent: VBProject read Get_Parent;
    property VBE: VBE read Get_VBE;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _ReferencesDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0002E17A-0000-0000-C000-000000000046}
// *********************************************************************//
  _ReferencesDisp = dispinterface
    ['{0002E17A-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBProject readonly dispid 1610743808;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1610743809;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): Reference; dispid 0;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743811;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    function  AddFromGuid {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_8:0}const Guid: WideString; 
                                                               {VT_3:0}Major: Integer; 
                                                               {VT_3:0}Minor: Integer): Reference; dispid 1610743813;
    function  AddFromFile {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString): Reference; dispid 1610743814;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Reference: Reference); dispid 1610743815;
  end;

// *********************************************************************//
// Interface: Reference
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0002E17E-0000-0000-C000-000000000046}
// *********************************************************************//
  Reference = interface(IDispatch)
    ['{0002E17E-0000-0000-C000-000000000046}']
    function  Get_Collection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: References; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Guid {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Major {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Minor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_FullPath {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_BuiltIn {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_IsBroken {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: vbext_RefKind; safecall;
    function  Get_Description {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    property Collection: References read Get_Collection;
    property VBE: VBE read Get_VBE;
    property Name: WideString read Get_Name;
    property Guid: WideString read Get_Guid;
    property Major: Integer read Get_Major;
    property Minor: Integer read Get_Minor;
    property FullPath: WideString read Get_FullPath;
    property BuiltIn: WordBool read Get_BuiltIn;
    property IsBroken: WordBool read Get_IsBroken;
    property Type_: vbext_RefKind read Get_Type_;
    property Description: WideString read Get_Description;
  end;

// *********************************************************************//
// DispIntf:  ReferenceDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0002E17E-0000-0000-C000-000000000046}
// *********************************************************************//
  ReferenceDisp = dispinterface
    ['{0002E17E-0000-0000-C000-000000000046}']
    property Collection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: References readonly dispid 1610743808;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 1610743809;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743810;
    property Guid {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743811;
    property Major {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743812;
    property Minor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743813;
    property FullPath {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743814;
    property BuiltIn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610743815;
    property IsBroken {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610743816;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: vbext_RefKind readonly dispid 1610743817;
    property Description {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743818;
  end;

// *********************************************************************//
// DispIntf:  _dispReferences_Events
// Flags:     (4240) Hidden NonExtensible Dispatchable
// GUID:      {CDDE3804-2064-11CF-867F-00AA005FF34A}
// *********************************************************************//
  _dispReferences_Events = dispinterface
    ['{CDDE3804-2064-11CF-867F-00AA005FF34A}']
    procedure ItemAdded {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Reference: Reference); dispid 0;
    procedure ItemRemoved {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Reference: Reference); dispid 1;
  end;

// *********************************************************************//
// The Class CoWindows provides a Create and CreateRemote method to          
// create instances of the default interface _Windows exposed by              
// the CoClass Windows. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWindows = class
    class function Create: _Windows;
    class function CreateRemote(const MachineName: string): _Windows;
  end;

// *********************************************************************//
// The Class CoLinkedWindows provides a Create and CreateRemote method to          
// create instances of the default interface _LinkedWindows exposed by              
// the CoClass LinkedWindows. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLinkedWindows = class
    class function Create: _LinkedWindows;
    class function CreateRemote(const MachineName: string): _LinkedWindows;
  end;

// *********************************************************************//
// The Class CoReferencesEvents provides a Create and CreateRemote method to          
// create instances of the default interface _ReferencesEvents exposed by              
// the CoClass ReferencesEvents. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReferencesEvents = class
    class function Create: _ReferencesEvents;
    class function CreateRemote(const MachineName: string): _ReferencesEvents;
  end;

// *********************************************************************//
// The Class CoCommandBarEvents provides a Create and CreateRemote method to          
// create instances of the default interface _CommandBarControlEvents exposed by              
// the CoClass CommandBarEvents. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCommandBarEvents = class
    class function Create: _CommandBarControlEvents;
    class function CreateRemote(const MachineName: string): _CommandBarControlEvents;
  end;

// *********************************************************************//
// The Class CoProjectTemplate provides a Create and CreateRemote method to          
// create instances of the default interface _ProjectTemplate exposed by              
// the CoClass ProjectTemplate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProjectTemplate = class
    class function Create: _ProjectTemplate;
    class function CreateRemote(const MachineName: string): _ProjectTemplate;
  end;

// *********************************************************************//
// The Class CoVBProject provides a Create and CreateRemote method to          
// create instances of the default interface _VBProject exposed by              
// the CoClass VBProject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVBProject = class
    class function Create: _VBProject;
    class function CreateRemote(const MachineName: string): _VBProject;
  end;

// *********************************************************************//
// The Class CoVBProjects provides a Create and CreateRemote method to          
// create instances of the default interface _VBProjects exposed by              
// the CoClass VBProjects. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVBProjects = class
    class function Create: _VBProjects;
    class function CreateRemote(const MachineName: string): _VBProjects;
  end;

// *********************************************************************//
// The Class CoComponents provides a Create and CreateRemote method to          
// create instances of the default interface _Components exposed by              
// the CoClass Components. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComponents = class
    class function Create: _Components;
    class function CreateRemote(const MachineName: string): _Components;
  end;

// *********************************************************************//
// The Class CoVBComponents provides a Create and CreateRemote method to          
// create instances of the default interface _VBComponents exposed by              
// the CoClass VBComponents. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVBComponents = class
    class function Create: _VBComponents;
    class function CreateRemote(const MachineName: string): _VBComponents;
  end;

// *********************************************************************//
// The Class CoComponent provides a Create and CreateRemote method to          
// create instances of the default interface _Component exposed by              
// the CoClass Component. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComponent = class
    class function Create: _Component;
    class function CreateRemote(const MachineName: string): _Component;
  end;

// *********************************************************************//
// The Class CoVBComponent provides a Create and CreateRemote method to          
// create instances of the default interface _VBComponent exposed by              
// the CoClass VBComponent. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVBComponent = class
    class function Create: _VBComponent;
    class function CreateRemote(const MachineName: string): _VBComponent;
  end;

// *********************************************************************//
// The Class CoProperties provides a Create and CreateRemote method to          
// create instances of the default interface _Properties exposed by              
// the CoClass Properties. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProperties = class
    class function Create: _Properties;
    class function CreateRemote(const MachineName: string): _Properties;
  end;

// *********************************************************************//
// The Class CoAddins provides a Create and CreateRemote method to          
// create instances of the default interface _AddIns exposed by              
// the CoClass Addins. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAddins = class
    class function Create: _AddIns;
    class function CreateRemote(const MachineName: string): _AddIns;
  end;

// *********************************************************************//
// The Class CoCodeModule provides a Create and CreateRemote method to          
// create instances of the default interface _CodeModule exposed by              
// the CoClass CodeModule. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCodeModule = class
    class function Create: _CodeModule;
    class function CreateRemote(const MachineName: string): _CodeModule;
  end;

// *********************************************************************//
// The Class CoCodePanes provides a Create and CreateRemote method to          
// create instances of the default interface _CodePanes exposed by              
// the CoClass CodePanes. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCodePanes = class
    class function Create: _CodePanes;
    class function CreateRemote(const MachineName: string): _CodePanes;
  end;

// *********************************************************************//
// The Class CoCodePane provides a Create and CreateRemote method to          
// create instances of the default interface _CodePane exposed by              
// the CoClass CodePane. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCodePane = class
    class function Create: _CodePane;
    class function CreateRemote(const MachineName: string): _CodePane;
  end;

// *********************************************************************//
// The Class CoReferences provides a Create and CreateRemote method to          
// create instances of the default interface _References exposed by              
// the CoClass References. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReferences = class
    class function Create: _References;
    class function CreateRemote(const MachineName: string): _References;
  end;

implementation

uses ComObj;

class function CoWindows.Create: _Windows;
begin
  Result := CreateComObject(CLASS_Windows) as _Windows;
end;

class function CoWindows.CreateRemote(const MachineName: string): _Windows;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Windows) as _Windows;
end;

class function CoLinkedWindows.Create: _LinkedWindows;
begin
  Result := CreateComObject(CLASS_LinkedWindows) as _LinkedWindows;
end;

class function CoLinkedWindows.CreateRemote(const MachineName: string): _LinkedWindows;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LinkedWindows) as _LinkedWindows;
end;

class function CoReferencesEvents.Create: _ReferencesEvents;
begin
  Result := CreateComObject(CLASS_ReferencesEvents) as _ReferencesEvents;
end;

class function CoReferencesEvents.CreateRemote(const MachineName: string): _ReferencesEvents;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReferencesEvents) as _ReferencesEvents;
end;

class function CoCommandBarEvents.Create: _CommandBarControlEvents;
begin
  Result := CreateComObject(CLASS_CommandBarEvents) as _CommandBarControlEvents;
end;

class function CoCommandBarEvents.CreateRemote(const MachineName: string): _CommandBarControlEvents;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CommandBarEvents) as _CommandBarControlEvents;
end;

class function CoProjectTemplate.Create: _ProjectTemplate;
begin
  Result := CreateComObject(CLASS_ProjectTemplate) as _ProjectTemplate;
end;

class function CoProjectTemplate.CreateRemote(const MachineName: string): _ProjectTemplate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ProjectTemplate) as _ProjectTemplate;
end;

class function CoVBProject.Create: _VBProject;
begin
  Result := CreateComObject(CLASS_VBProject) as _VBProject;
end;

class function CoVBProject.CreateRemote(const MachineName: string): _VBProject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VBProject) as _VBProject;
end;

class function CoVBProjects.Create: _VBProjects;
begin
  Result := CreateComObject(CLASS_VBProjects) as _VBProjects;
end;

class function CoVBProjects.CreateRemote(const MachineName: string): _VBProjects;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VBProjects) as _VBProjects;
end;

class function CoComponents.Create: _Components;
begin
  Result := CreateComObject(CLASS_Components) as _Components;
end;

class function CoComponents.CreateRemote(const MachineName: string): _Components;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Components) as _Components;
end;

class function CoVBComponents.Create: _VBComponents;
begin
  Result := CreateComObject(CLASS_VBComponents) as _VBComponents;
end;

class function CoVBComponents.CreateRemote(const MachineName: string): _VBComponents;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VBComponents) as _VBComponents;
end;

class function CoComponent.Create: _Component;
begin
  Result := CreateComObject(CLASS_Component) as _Component;
end;

class function CoComponent.CreateRemote(const MachineName: string): _Component;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Component) as _Component;
end;

class function CoVBComponent.Create: _VBComponent;
begin
  Result := CreateComObject(CLASS_VBComponent) as _VBComponent;
end;

class function CoVBComponent.CreateRemote(const MachineName: string): _VBComponent;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VBComponent) as _VBComponent;
end;

class function CoProperties.Create: _Properties;
begin
  Result := CreateComObject(CLASS_Properties) as _Properties;
end;

class function CoProperties.CreateRemote(const MachineName: string): _Properties;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Properties) as _Properties;
end;

class function CoAddins.Create: _AddIns;
begin
  Result := CreateComObject(CLASS_Addins) as _AddIns;
end;

class function CoAddins.CreateRemote(const MachineName: string): _AddIns;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Addins) as _AddIns;
end;

class function CoCodeModule.Create: _CodeModule;
begin
  Result := CreateComObject(CLASS_CodeModule) as _CodeModule;
end;

class function CoCodeModule.CreateRemote(const MachineName: string): _CodeModule;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CodeModule) as _CodeModule;
end;

class function CoCodePanes.Create: _CodePanes;
begin
  Result := CreateComObject(CLASS_CodePanes) as _CodePanes;
end;

class function CoCodePanes.CreateRemote(const MachineName: string): _CodePanes;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CodePanes) as _CodePanes;
end;

class function CoCodePane.Create: _CodePane;
begin
  Result := CreateComObject(CLASS_CodePane) as _CodePane;
end;

class function CoCodePane.CreateRemote(const MachineName: string): _CodePane;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CodePane) as _CodePane;
end;

class function CoReferences.Create: _References;
begin
  Result := CreateComObject(CLASS_References) as _References;
end;

class function CoReferences.CreateRemote(const MachineName: string): _References;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_References) as _References;
end;

end.
