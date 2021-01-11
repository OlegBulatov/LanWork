unit msppt2000;

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

// PASTLWTR : $Revision:   1.0.1.0.1.0  $
// File generated on 11/22/99 5:44:19 AM from Type Library described below.

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
// Type Lib: d:\rampage\typelib\typelibraries\msppt9.olb (1)
// IID\LCID: {91493440-5A91-11CF-8700-00AA0060263B}\0
// Helpfile: d:\rampage\typelib\typelibraries\VBAPPT9.CHM
// DepndLst: 
//   (1) v2.0 stdole, (D:\WINNT\System32\stdole2.tlb)
//   (2) v2.1 Office, (D:\MSOF2K\Office\MSO9.DLL)
//   (3) v5.3 VBIDE, (D:\Program Files\Common Files\Microsoft Shared\VBA\VBA6\VBE6EXT.OLB)
//   (4) v4.0 StdVCL, (D:\RAMPAGE\BIN\STDVCL40.DLL)
// Errors:
//   Hint: Symbol 'Application' renamed to 'PowerPointApplication'
//   Hint: Symbol 'Global' renamed to 'PowerPointGlobal'
//   Hint: Symbol 'Presentation' renamed to 'PowerPointPresentation'
//   Hint: Symbol 'Slide' renamed to 'PowerPointSlide'
//   Hint: Symbol 'OLEControl' renamed to 'OLECtrl'
//   Hint: Parameter 'Type' of _Application.FileDialog changed to 'Type_'
//   Hint: Member 'Type' of 'ColorFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of ColorFormat.Type changed to 'Type_'
//   Hint: Member 'Type' of 'Selection' changed to 'Type_'
//   Hint: Parameter 'Type' of Selection.Type changed to 'Type_'
//   Hint: Member 'Type' of 'View' changed to 'Type_'
//   Hint: Parameter 'Type' of View.Type changed to 'Type_'
//   Hint: Parameter 'End' of PrintRanges.Add changed to 'End_'
//   Hint: Member 'End' of 'PrintRange' changed to 'End_'
//   Hint: Parameter 'End' of PrintRange.End changed to 'End_'
//   Hint: Member 'Type' of 'Hyperlink' changed to 'Type_'
//   Hint: Parameter 'Type' of Hyperlink.Type changed to 'Type_'
//   Hint: Parameter 'Type' of ExtraColors.Add changed to 'Type_'
//   Hint: Member 'Type' of 'SoundEffect' changed to 'Type_'
//   Hint: Parameter 'Type' of SoundEffect.Type changed to 'Type_'
//   Hint: Parameter 'Type' of SoundEffect.Type changed to 'Type_'
//   Hint: Member 'Type' of 'SoundFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of SoundFormat.Type changed to 'Type_'
//   Hint: Parameter 'Type' of Shapes.AddCallout changed to 'Type_'
//   Hint: Parameter 'Type' of Shapes.AddConnector changed to 'Type_'
//   Hint: Parameter 'Label' of Shapes.AddLabel changed to 'Label_'
//   Hint: Parameter 'Type' of Shapes.AddShape changed to 'Type_'
//   Hint: Parameter 'Type' of Shapes.AddPlaceholder changed to 'Type_'
//   Hint: Member 'Type' of 'PlaceholderFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of PlaceholderFormat.Type changed to 'Type_'
//   Hint: Member 'Type' of 'Shape' changed to 'Type_'
//   Hint: Parameter 'Type' of Shape.Type changed to 'Type_'
//   Hint: Member 'Type' of 'ShapeRange' changed to 'Type_'
//   Hint: Parameter 'Type' of ShapeRange.Type changed to 'Type_'
//   Hint: Member 'Type' of 'FillFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of FillFormat.Type changed to 'Type_'
//   Hint: Member 'Type' of 'ShadowFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of ShadowFormat.Type changed to 'Type_'
//   Hint: Parameter 'Type' of ShadowFormat.Type changed to 'Type_'
//   Hint: Member 'Type' of 'ConnectorFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of ConnectorFormat.Type changed to 'Type_'
//   Hint: Parameter 'Type' of ConnectorFormat.Type changed to 'Type_'
//   Hint: Member 'Type' of 'CalloutFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of CalloutFormat.Type changed to 'Type_'
//   Hint: Parameter 'Type' of CalloutFormat.Type changed to 'Type_'
//   Hint: Member 'Object' of 'OLEFormat' changed to 'Object_'
//   Hint: Parameter 'Object' of OLEFormat.Object changed to 'Object_'
//   Hint: Parameter 'Type' of TextRange.ChangeCase changed to 'Type_'
//   Hint: Parameter 'Type' of TabStops.Add changed to 'Type_'
//   Hint: Member 'Type' of 'TabStop' changed to 'Type_'
//   Hint: Parameter 'Type' of TabStop.Type changed to 'Type_'
//   Hint: Parameter 'Type' of TabStop.Type changed to 'Type_'
//   Hint: Member 'Type' of 'BulletFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of BulletFormat.Type changed to 'Type_'
//   Hint: Parameter 'Type' of BulletFormat.Type changed to 'Type_'
//   Hint: Parameter 'Type' of TextStyles.Item changed to 'Type_'
//   Hint: Parameter 'To' of _Presentation.PrintOut changed to 'To_'
//   Hint: Parameter 'Type' of PPDialogs.RunCharacterAlert changed to 'Type_'
//   Hint: Parameter 'Type' of PPAlert.Run changed to 'Type_'
//   Hint: Member 'Label' of 'PPControl' changed to 'Label_'
//   Hint: Parameter 'Label' of PPControl.Label changed to 'Label_'
//   Hint: Parameter 'Label' of PPControl.Label changed to 'Label_'
//   Hint: Parameter 'String' of PPStrings.Add changed to 'String_'
//   Hint: Parameter 'String' of PPStrings.Insert changed to 'String_'
//   Hint: Symbol 'Application' renamed to 'PowerPointApplication'
//   Hint: Symbol 'Global' renamed to 'PowerPointGlobal'
//   Hint: Symbol 'Presentation' renamed to 'PowerPointPresentation'
//   Hint: Symbol 'Slide' renamed to 'PowerPointSlide'
//   Hint: Symbol 'OLEControl' renamed to 'OLECtrl'
//   Hint: Member 'Type' of 'ColorFormat' changed to 'Type_'
//   Hint: Member 'Type' of 'Selection' changed to 'Type_'
//   Hint: Member 'Type' of 'View' changed to 'Type_'
//   Hint: Member 'End' of 'PrintRange' changed to 'End_'
//   Hint: Member 'Type' of 'Hyperlink' changed to 'Type_'
//   Hint: Member 'Type' of 'SoundEffect' changed to 'Type_'
//   Hint: Member 'Type' of 'SoundFormat' changed to 'Type_'
//   Hint: Member 'Type' of 'PlaceholderFormat' changed to 'Type_'
//   Hint: Member 'Type' of 'Shape' changed to 'Type_'
//   Hint: Member 'Type' of 'ShapeRange' changed to 'Type_'
//   Hint: Member 'Type' of 'FillFormat' changed to 'Type_'
//   Hint: Member 'Type' of 'ShadowFormat' changed to 'Type_'
//   Hint: Member 'Type' of 'ConnectorFormat' changed to 'Type_'
//   Hint: Member 'Type' of 'CalloutFormat' changed to 'Type_'
//   Hint: Member 'Object' of 'OLEFormat' changed to 'Object_'
//   Hint: Member 'Type' of 'TabStop' changed to 'Type_'
//   Hint: Member 'Type' of 'BulletFormat' changed to 'Type_'
//   Hint: Member 'Label' of 'PPControl' changed to 'Label_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, OleCtrls, StdVCL, 
  Office2000, VBIDE2000;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  PowerPointMajorVersion = 2;
  PowerPointMinorVersion = 6;

  LIBID_PowerPoint: TGUID = '{91493440-5A91-11CF-8700-00AA0060263B}';

  IID_Collection: TGUID = '{91493450-5A91-11CF-8700-00AA0060263B}';
  IID__Application: TGUID = '{91493442-5A91-11CF-8700-00AA0060263B}';
  IID__Global: TGUID = '{91493451-5A91-11CF-8700-00AA0060263B}';
  IID_EApplication: TGUID = '{914934C2-5A91-11CF-8700-00AA0060263B}';
  CLASS_PowerPointGlobal: TGUID = '{91493443-5A91-11CF-8700-00AA0060263B}';
  IID_ColorFormat: TGUID = '{91493452-5A91-11CF-8700-00AA0060263B}';
  IID_SlideShowWindow: TGUID = '{91493453-5A91-11CF-8700-00AA0060263B}';
  IID_Selection: TGUID = '{91493454-5A91-11CF-8700-00AA0060263B}';
  IID_DocumentWindows: TGUID = '{91493455-5A91-11CF-8700-00AA0060263B}';
  IID_SlideShowWindows: TGUID = '{91493456-5A91-11CF-8700-00AA0060263B}';
  IID_DocumentWindow: TGUID = '{91493457-5A91-11CF-8700-00AA0060263B}';
  IID_View: TGUID = '{91493458-5A91-11CF-8700-00AA0060263B}';
  IID_SlideShowView: TGUID = '{91493459-5A91-11CF-8700-00AA0060263B}';
  IID_SlideShowSettings: TGUID = '{9149345A-5A91-11CF-8700-00AA0060263B}';
  IID_NamedSlideShows: TGUID = '{9149345B-5A91-11CF-8700-00AA0060263B}';
  IID_NamedSlideShow: TGUID = '{9149345C-5A91-11CF-8700-00AA0060263B}';
  IID_PrintOptions: TGUID = '{9149345D-5A91-11CF-8700-00AA0060263B}';
  IID_PrintRanges: TGUID = '{9149345E-5A91-11CF-8700-00AA0060263B}';
  IID_PrintRange: TGUID = '{9149345F-5A91-11CF-8700-00AA0060263B}';
  IID_AddIns: TGUID = '{91493460-5A91-11CF-8700-00AA0060263B}';
  IID_AddIn: TGUID = '{91493461-5A91-11CF-8700-00AA0060263B}';
  IID_Presentations: TGUID = '{91493462-5A91-11CF-8700-00AA0060263B}';
  IID_PresEvents: TGUID = '{91493463-5A91-11CF-8700-00AA0060263B}';
  IID__Presentation: TGUID = '{9149349D-5A91-11CF-8700-00AA0060263B}';
  IID_Hyperlinks: TGUID = '{91493464-5A91-11CF-8700-00AA0060263B}';
  IID_Hyperlink: TGUID = '{91493465-5A91-11CF-8700-00AA0060263B}';
  IID_PageSetup: TGUID = '{91493466-5A91-11CF-8700-00AA0060263B}';
  IID_Fonts: TGUID = '{91493467-5A91-11CF-8700-00AA0060263B}';
  IID_ExtraColors: TGUID = '{91493468-5A91-11CF-8700-00AA0060263B}';
  IID_Slides: TGUID = '{91493469-5A91-11CF-8700-00AA0060263B}';
  IID__Slide: TGUID = '{9149346A-5A91-11CF-8700-00AA0060263B}';
  IID_SlideRange: TGUID = '{9149346B-5A91-11CF-8700-00AA0060263B}';
  IID__Master: TGUID = '{9149346C-5A91-11CF-8700-00AA0060263B}';
  IID_SldEvents: TGUID = '{9149346D-5A91-11CF-8700-00AA0060263B}';
  CLASS_PowerPointSlide: TGUID = '{91493445-5A91-11CF-8700-00AA0060263B}';
  IID_ColorSchemes: TGUID = '{9149346E-5A91-11CF-8700-00AA0060263B}';
  IID_ColorScheme: TGUID = '{9149346F-5A91-11CF-8700-00AA0060263B}';
  IID_RGBColor: TGUID = '{91493470-5A91-11CF-8700-00AA0060263B}';
  IID_SlideShowTransition: TGUID = '{91493471-5A91-11CF-8700-00AA0060263B}';
  IID_SoundEffect: TGUID = '{91493472-5A91-11CF-8700-00AA0060263B}';
  IID_SoundFormat: TGUID = '{91493473-5A91-11CF-8700-00AA0060263B}';
  IID_HeadersFooters: TGUID = '{91493474-5A91-11CF-8700-00AA0060263B}';
  IID_Shapes: TGUID = '{91493475-5A91-11CF-8700-00AA0060263B}';
  IID_Placeholders: TGUID = '{91493476-5A91-11CF-8700-00AA0060263B}';
  IID_PlaceholderFormat: TGUID = '{91493477-5A91-11CF-8700-00AA0060263B}';
  IID_FreeformBuilder: TGUID = '{91493478-5A91-11CF-8700-00AA0060263B}';
  IID_Shape: TGUID = '{91493479-5A91-11CF-8700-00AA0060263B}';
  IID_ShapeRange: TGUID = '{9149347A-5A91-11CF-8700-00AA0060263B}';
  IID_GroupShapes: TGUID = '{9149347B-5A91-11CF-8700-00AA0060263B}';
  IID_Adjustments: TGUID = '{9149347C-5A91-11CF-8700-00AA0060263B}';
  IID_PictureFormat: TGUID = '{9149347D-5A91-11CF-8700-00AA0060263B}';
  IID_FillFormat: TGUID = '{9149347E-5A91-11CF-8700-00AA0060263B}';
  IID_LineFormat: TGUID = '{9149347F-5A91-11CF-8700-00AA0060263B}';
  IID_ShadowFormat: TGUID = '{91493480-5A91-11CF-8700-00AA0060263B}';
  IID_ConnectorFormat: TGUID = '{91493481-5A91-11CF-8700-00AA0060263B}';
  IID_TextEffectFormat: TGUID = '{91493482-5A91-11CF-8700-00AA0060263B}';
  IID_ThreeDFormat: TGUID = '{91493483-5A91-11CF-8700-00AA0060263B}';
  IID_TextFrame: TGUID = '{91493484-5A91-11CF-8700-00AA0060263B}';
  IID_CalloutFormat: TGUID = '{91493485-5A91-11CF-8700-00AA0060263B}';
  IID_ShapeNodes: TGUID = '{91493486-5A91-11CF-8700-00AA0060263B}';
  IID_ShapeNode: TGUID = '{91493487-5A91-11CF-8700-00AA0060263B}';
  IID_OLEFormat: TGUID = '{91493488-5A91-11CF-8700-00AA0060263B}';
  IID_LinkFormat: TGUID = '{91493489-5A91-11CF-8700-00AA0060263B}';
  IID_ObjectVerbs: TGUID = '{9149348A-5A91-11CF-8700-00AA0060263B}';
  IID_AnimationSettings: TGUID = '{9149348B-5A91-11CF-8700-00AA0060263B}';
  IID_ActionSettings: TGUID = '{9149348C-5A91-11CF-8700-00AA0060263B}';
  IID_ActionSetting: TGUID = '{9149348D-5A91-11CF-8700-00AA0060263B}';
  IID_PlaySettings: TGUID = '{9149348E-5A91-11CF-8700-00AA0060263B}';
  IID_TextRange: TGUID = '{9149348F-5A91-11CF-8700-00AA0060263B}';
  IID_Ruler: TGUID = '{91493490-5A91-11CF-8700-00AA0060263B}';
  IID_RulerLevels: TGUID = '{91493491-5A91-11CF-8700-00AA0060263B}';
  IID_RulerLevel: TGUID = '{91493492-5A91-11CF-8700-00AA0060263B}';
  IID_TabStops: TGUID = '{91493493-5A91-11CF-8700-00AA0060263B}';
  IID_TabStop: TGUID = '{91493494-5A91-11CF-8700-00AA0060263B}';
  IID_Font: TGUID = '{91493495-5A91-11CF-8700-00AA0060263B}';
  IID_ParagraphFormat: TGUID = '{91493496-5A91-11CF-8700-00AA0060263B}';
  IID_BulletFormat: TGUID = '{91493497-5A91-11CF-8700-00AA0060263B}';
  IID_TextStyles: TGUID = '{91493498-5A91-11CF-8700-00AA0060263B}';
  IID_TextStyle: TGUID = '{91493499-5A91-11CF-8700-00AA0060263B}';
  IID_TextStyleLevels: TGUID = '{9149349A-5A91-11CF-8700-00AA0060263B}';
  IID_TextStyleLevel: TGUID = '{9149349B-5A91-11CF-8700-00AA0060263B}';
  IID_HeaderFooter: TGUID = '{9149349C-5A91-11CF-8700-00AA0060263B}';
  CLASS_PowerPointPresentation: TGUID = '{91493444-5A91-11CF-8700-00AA0060263B}';
  IID_PPDialogs: TGUID = '{9149349E-5A91-11CF-8700-00AA0060263B}';
  IID_PPAlert: TGUID = '{9149349F-5A91-11CF-8700-00AA0060263B}';
  IID_PPDialog: TGUID = '{914934A0-5A91-11CF-8700-00AA0060263B}';
  IID_PPTabSheet: TGUID = '{914934A1-5A91-11CF-8700-00AA0060263B}';
  IID_PPControls: TGUID = '{914934A2-5A91-11CF-8700-00AA0060263B}';
  IID_PPTabSheets: TGUID = '{914934A3-5A91-11CF-8700-00AA0060263B}';
  IID_PPControl: TGUID = '{914934A4-5A91-11CF-8700-00AA0060263B}';
  IID_PPPushButton: TGUID = '{914934A5-5A91-11CF-8700-00AA0060263B}';
  IID_PPToggleButton: TGUID = '{914934A6-5A91-11CF-8700-00AA0060263B}';
  IID_PPBitmapButton: TGUID = '{914934A7-5A91-11CF-8700-00AA0060263B}';
  IID_PPListBox: TGUID = '{914934A8-5A91-11CF-8700-00AA0060263B}';
  IID_PPStrings: TGUID = '{914934A9-5A91-11CF-8700-00AA0060263B}';
  IID_PPCheckBox: TGUID = '{914934AA-5A91-11CF-8700-00AA0060263B}';
  IID_PPRadioCluster: TGUID = '{914934AB-5A91-11CF-8700-00AA0060263B}';
  IID_PPStaticText: TGUID = '{914934AC-5A91-11CF-8700-00AA0060263B}';
  IID_PPEditText: TGUID = '{914934AD-5A91-11CF-8700-00AA0060263B}';
  IID_PPIcon: TGUID = '{914934AE-5A91-11CF-8700-00AA0060263B}';
  IID_PPBitmap: TGUID = '{914934AF-5A91-11CF-8700-00AA0060263B}';
  IID_PPSpinner: TGUID = '{914934B0-5A91-11CF-8700-00AA0060263B}';
  IID_PPScrollBar: TGUID = '{914934B1-5A91-11CF-8700-00AA0060263B}';
  IID_PPGroupBox: TGUID = '{914934B2-5A91-11CF-8700-00AA0060263B}';
  IID_PPFrame: TGUID = '{914934B3-5A91-11CF-8700-00AA0060263B}';
  IID_PPTabControl: TGUID = '{914934B4-5A91-11CF-8700-00AA0060263B}';
  IID_PPDropDown: TGUID = '{914934B5-5A91-11CF-8700-00AA0060263B}';
  IID_PPDropDownEdit: TGUID = '{914934B6-5A91-11CF-8700-00AA0060263B}';
  IID_PPSlideMiniature: TGUID = '{914934B7-5A91-11CF-8700-00AA0060263B}';
  IID_PPRadioButton: TGUID = '{914934B8-5A91-11CF-8700-00AA0060263B}';
  IID_Tags: TGUID = '{914934B9-5A91-11CF-8700-00AA0060263B}';
  IID_FileDialogFileList: TGUID = '{914934BA-5A91-11CF-8700-00AA0060263B}';
  IID_FileDialogExtension: TGUID = '{914934BB-5A91-11CF-8700-00AA0060263B}';
  IID_FileDialogExtensionList: TGUID = '{914934BC-5A91-11CF-8700-00AA0060263B}';
  IID_FileDialog: TGUID = '{914934BD-5A91-11CF-8700-00AA0060263B}';
  IID_MouseTracker: TGUID = '{914934BE-5A91-11CF-8700-00AA0060263B}';
  IID_MouseDownHandler: TGUID = '{914934BF-5A91-11CF-8700-00AA0060263B}';
  IID_OCXExtender: TGUID = '{914934C0-5A91-11CF-8700-00AA0060263B}';
  IID_OCXExtenderEvents: TGUID = '{914934C1-5A91-11CF-8700-00AA0060263B}';
  CLASS_OLECtrl: TGUID = '{91493446-5A91-11CF-8700-00AA0060263B}';
  CLASS_PowerPointApplication: TGUID = '{91493441-5A91-11CF-8700-00AA0060263B}';
  IID_Table: TGUID = '{914934C3-5A91-11CF-8700-00AA0060263B}';
  IID_Columns: TGUID = '{914934C4-5A91-11CF-8700-00AA0060263B}';
  IID_Column: TGUID = '{914934C5-5A91-11CF-8700-00AA0060263B}';
  IID_Rows: TGUID = '{914934C6-5A91-11CF-8700-00AA0060263B}';
  IID_Row: TGUID = '{914934C7-5A91-11CF-8700-00AA0060263B}';
  IID_CellRange: TGUID = '{914934C8-5A91-11CF-8700-00AA0060263B}';
  IID_Cell: TGUID = '{914934C9-5A91-11CF-8700-00AA0060263B}';
  IID_Borders: TGUID = '{914934CA-5A91-11CF-8700-00AA0060263B}';
  IID_Panes: TGUID = '{914934CB-5A91-11CF-8700-00AA0060263B}';
  IID_Pane: TGUID = '{914934CC-5A91-11CF-8700-00AA0060263B}';
  IID_DefaultWebOptions: TGUID = '{914934CD-5A91-11CF-8700-00AA0060263B}';
  IID_WebOptions: TGUID = '{914934CE-5A91-11CF-8700-00AA0060263B}';
  IID_PublishObjects: TGUID = '{914934CF-5A91-11CF-8700-00AA0060263B}';
  IID_PublishObject: TGUID = '{914934D0-5A91-11CF-8700-00AA0060263B}';
  IID_Marker: TGUID = '{914934D1-5A91-11CF-8700-00AA0060263B}';
  IID_MasterEvents: TGUID = '{914934D2-5A91-11CF-8700-00AA0060263B}';
  CLASS_Master: TGUID = '{91493447-5A91-11CF-8700-00AA0060263B}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum PpWindowState
type
  PpWindowState = TOleEnum;
const
  ppWindowNormal = $00000001;
  ppWindowMinimized = $00000002;
  ppWindowMaximized = $00000003;

// Constants for enum PpArrangeStyle
type
  PpArrangeStyle = TOleEnum;
const
  ppArrangeTiled = $00000001;
  ppArrangeCascade = $00000002;

// Constants for enum PpViewType
type
  PpViewType = TOleEnum;
const
  ppViewSlide = $00000001;
  ppViewSlideMaster = $00000002;
  ppViewNotesPage = $00000003;
  ppViewHandoutMaster = $00000004;
  ppViewNotesMaster = $00000005;
  ppViewOutline = $00000006;
  ppViewSlideSorter = $00000007;
  ppViewTitleMaster = $00000008;
  ppViewNormal = $00000009;

// Constants for enum PpColorSchemeIndex
type
  PpColorSchemeIndex = TOleEnum;
const
  ppSchemeColorMixed = $FFFFFFFE;
  ppNotSchemeColor = $00000000;
  ppBackground = $00000001;
  ppForeground = $00000002;
  ppShadow = $00000003;
  ppTitle = $00000004;
  ppFill = $00000005;
  ppAccent1 = $00000006;
  ppAccent2 = $00000007;
  ppAccent3 = $00000008;

// Constants for enum PpSlideSizeType
type
  PpSlideSizeType = TOleEnum;
const
  ppSlideSizeOnScreen = $00000001;
  ppSlideSizeLetterPaper = $00000002;
  ppSlideSizeA4Paper = $00000003;
  ppSlideSize35MM = $00000004;
  ppSlideSizeOverhead = $00000005;
  ppSlideSizeBanner = $00000006;
  ppSlideSizeCustom = $00000007;

// Constants for enum PpSaveAsFileType
type
  PpSaveAsFileType = TOleEnum;
const
  ppSaveAsPresentation = $00000001;
  ppSaveAsPowerPoint7 = $00000002;
  ppSaveAsPowerPoint4 = $00000003;
  ppSaveAsPowerPoint3 = $00000004;
  ppSaveAsTemplate = $00000005;
  ppSaveAsRTF = $00000006;
  ppSaveAsShow = $00000007;
  ppSaveAsAddIn = $00000008;
  ppSaveAsPowerPoint4FarEast = $0000000A;
  ppSaveAsDefault = $0000000B;
  ppSaveAsHTML = $0000000C;
  ppSaveAsHTMLv3 = $0000000D;
  ppSaveAsHTMLDual = $0000000E;
  ppSaveAsMetaFile = $0000000F;
  ppSaveAsGIF = $00000010;
  ppSaveAsJPG = $00000011;
  ppSaveAsPNG = $00000012;
  ppSaveAsBMP = $00000013;

// Constants for enum PpTextStyleType
type
  PpTextStyleType = TOleEnum;
const
  ppDefaultStyle = $00000001;
  ppTitleStyle = $00000002;
  ppBodyStyle = $00000003;

// Constants for enum PpSlideLayout
type
  PpSlideLayout = TOleEnum;
const
  ppLayoutMixed = $FFFFFFFE;
  ppLayoutTitle = $00000001;
  ppLayoutText = $00000002;
  ppLayoutTwoColumnText = $00000003;
  ppLayoutTable = $00000004;
  ppLayoutTextAndChart = $00000005;
  ppLayoutChartAndText = $00000006;
  ppLayoutOrgchart = $00000007;
  ppLayoutChart = $00000008;
  ppLayoutTextAndClipart = $00000009;
  ppLayoutClipartAndText = $0000000A;
  ppLayoutTitleOnly = $0000000B;
  ppLayoutBlank = $0000000C;
  ppLayoutTextAndObject = $0000000D;
  ppLayoutObjectAndText = $0000000E;
  ppLayoutLargeObject = $0000000F;
  ppLayoutObject = $00000010;
  ppLayoutTextAndMediaClip = $00000011;
  ppLayoutMediaClipAndText = $00000012;
  ppLayoutObjectOverText = $00000013;
  ppLayoutTextOverObject = $00000014;
  ppLayoutTextAndTwoObjects = $00000015;
  ppLayoutTwoObjectsAndText = $00000016;
  ppLayoutTwoObjectsOverText = $00000017;
  ppLayoutFourObjects = $00000018;
  ppLayoutVerticalText = $00000019;
  ppLayoutClipArtAndVerticalText = $0000001A;
  ppLayoutVerticalTitleAndText = $0000001B;
  ppLayoutVerticalTitleAndTextOverChart = $0000001C;

// Constants for enum PpEntryEffect
type
  PpEntryEffect = TOleEnum;
const
  ppEffectMixed = $FFFFFFFE;
  ppEffectNone = $00000000;
  ppEffectCut = $00000101;
  ppEffectCutThroughBlack = $00000102;
  ppEffectRandom = $00000201;
  ppEffectBlindsHorizontal = $00000301;
  ppEffectBlindsVertical = $00000302;
  ppEffectCheckerboardAcross = $00000401;
  ppEffectCheckerboardDown = $00000402;
  ppEffectCoverLeft = $00000501;
  ppEffectCoverUp = $00000502;
  ppEffectCoverRight = $00000503;
  ppEffectCoverDown = $00000504;
  ppEffectCoverLeftUp = $00000505;
  ppEffectCoverRightUp = $00000506;
  ppEffectCoverLeftDown = $00000507;
  ppEffectCoverRightDown = $00000508;
  ppEffectDissolve = $00000601;
  ppEffectFade = $00000701;
  ppEffectUncoverLeft = $00000801;
  ppEffectUncoverUp = $00000802;
  ppEffectUncoverRight = $00000803;
  ppEffectUncoverDown = $00000804;
  ppEffectUncoverLeftUp = $00000805;
  ppEffectUncoverRightUp = $00000806;
  ppEffectUncoverLeftDown = $00000807;
  ppEffectUncoverRightDown = $00000808;
  ppEffectRandomBarsHorizontal = $00000901;
  ppEffectRandomBarsVertical = $00000902;
  ppEffectStripsUpLeft = $00000A01;
  ppEffectStripsUpRight = $00000A02;
  ppEffectStripsDownLeft = $00000A03;
  ppEffectStripsDownRight = $00000A04;
  ppEffectStripsLeftUp = $00000A05;
  ppEffectStripsRightUp = $00000A06;
  ppEffectStripsLeftDown = $00000A07;
  ppEffectStripsRightDown = $00000A08;
  ppEffectWipeLeft = $00000B01;
  ppEffectWipeUp = $00000B02;
  ppEffectWipeRight = $00000B03;
  ppEffectWipeDown = $00000B04;
  ppEffectBoxOut = $00000C01;
  ppEffectBoxIn = $00000C02;
  ppEffectFlyFromLeft = $00000D01;
  ppEffectFlyFromTop = $00000D02;
  ppEffectFlyFromRight = $00000D03;
  ppEffectFlyFromBottom = $00000D04;
  ppEffectFlyFromTopLeft = $00000D05;
  ppEffectFlyFromTopRight = $00000D06;
  ppEffectFlyFromBottomLeft = $00000D07;
  ppEffectFlyFromBottomRight = $00000D08;
  ppEffectPeekFromLeft = $00000D09;
  ppEffectPeekFromDown = $00000D0A;
  ppEffectPeekFromRight = $00000D0B;
  ppEffectPeekFromUp = $00000D0C;
  ppEffectCrawlFromLeft = $00000D0D;
  ppEffectCrawlFromUp = $00000D0E;
  ppEffectCrawlFromRight = $00000D0F;
  ppEffectCrawlFromDown = $00000D10;
  ppEffectZoomIn = $00000D11;
  ppEffectZoomInSlightly = $00000D12;
  ppEffectZoomOut = $00000D13;
  ppEffectZoomOutSlightly = $00000D14;
  ppEffectZoomCenter = $00000D15;
  ppEffectZoomBottom = $00000D16;
  ppEffectStretchAcross = $00000D17;
  ppEffectStretchLeft = $00000D18;
  ppEffectStretchUp = $00000D19;
  ppEffectStretchRight = $00000D1A;
  ppEffectStretchDown = $00000D1B;
  ppEffectSwivel = $00000D1C;
  ppEffectSpiral = $00000D1D;
  ppEffectSplitHorizontalOut = $00000E01;
  ppEffectSplitHorizontalIn = $00000E02;
  ppEffectSplitVerticalOut = $00000E03;
  ppEffectSplitVerticalIn = $00000E04;
  ppEffectFlashOnceFast = $00000F01;
  ppEffectFlashOnceMedium = $00000F02;
  ppEffectFlashOnceSlow = $00000F03;
  ppEffectAppear = $00000F04;

// Constants for enum PpTextLevelEffect
type
  PpTextLevelEffect = TOleEnum;
const
  ppAnimateLevelMixed = $FFFFFFFE;
  ppAnimateLevelNone = $00000000;
  ppAnimateByFirstLevel = $00000001;
  ppAnimateBySecondLevel = $00000002;
  ppAnimateByThirdLevel = $00000003;
  ppAnimateByFourthLevel = $00000004;
  ppAnimateByFifthLevel = $00000005;
  ppAnimateByAllLevels = $00000010;

// Constants for enum PpTextUnitEffect
type
  PpTextUnitEffect = TOleEnum;
const
  ppAnimateUnitMixed = $FFFFFFFE;
  ppAnimateByParagraph = $00000000;
  ppAnimateByWord = $00000001;
  ppAnimateByCharacter = $00000002;

// Constants for enum PpChartUnitEffect
type
  PpChartUnitEffect = TOleEnum;
const
  ppAnimateChartMixed = $FFFFFFFE;
  ppAnimateBySeries = $00000001;
  ppAnimateByCategory = $00000002;
  ppAnimateBySeriesElements = $00000003;
  ppAnimateByCategoryElements = $00000004;

// Constants for enum PpAfterEffect
type
  PpAfterEffect = TOleEnum;
const
  ppAfterEffectMixed = $FFFFFFFE;
  ppAfterEffectNothing = $00000000;
  ppAfterEffectHide = $00000001;
  ppAfterEffectDim = $00000002;
  ppAfterEffectHideOnClick = $00000003;

// Constants for enum PpAdvanceMode
type
  PpAdvanceMode = TOleEnum;
const
  ppAdvanceModeMixed = $FFFFFFFE;
  ppAdvanceOnClick = $00000001;
  ppAdvanceOnTime = $00000002;

// Constants for enum PpSoundEffectType
type
  PpSoundEffectType = TOleEnum;
const
  ppSoundEffectsMixed = $FFFFFFFE;
  ppSoundNone = $00000000;
  ppSoundStopPrevious = $00000001;
  ppSoundFile = $00000002;

// Constants for enum PpFollowColors
type
  PpFollowColors = TOleEnum;
const
  ppFollowColorsMixed = $FFFFFFFE;
  ppFollowColorsNone = $00000000;
  ppFollowColorsScheme = $00000001;
  ppFollowColorsTextAndBackground = $00000002;

// Constants for enum PpUpdateOption
type
  PpUpdateOption = TOleEnum;
const
  ppUpdateOptionMixed = $FFFFFFFE;
  ppUpdateOptionManual = $00000001;
  ppUpdateOptionAutomatic = $00000002;

// Constants for enum PpParagraphAlignment
type
  PpParagraphAlignment = TOleEnum;
const
  ppAlignmentMixed = $FFFFFFFE;
  ppAlignLeft = $00000001;
  ppAlignCenter = $00000002;
  ppAlignRight = $00000003;
  ppAlignJustify = $00000004;
  ppAlignDistribute = $00000005;

// Constants for enum PpBaselineAlignment
type
  PpBaselineAlignment = TOleEnum;
const
  ppBaselineAlignMixed = $FFFFFFFE;
  ppBaselineAlignBaseline = $00000001;
  ppBaselineAlignTop = $00000002;
  ppBaselineAlignCenter = $00000003;
  ppBaselineAlignFarEast50 = $00000004;

// Constants for enum PpTabStopType
type
  PpTabStopType = TOleEnum;
const
  ppTabStopMixed = $FFFFFFFE;
  ppTabStopLeft = $00000001;
  ppTabStopCenter = $00000002;
  ppTabStopRight = $00000003;
  ppTabStopDecimal = $00000004;

// Constants for enum PpIndentControl
type
  PpIndentControl = TOleEnum;
const
  ppIndentControlMixed = $FFFFFFFE;
  ppIndentReplaceAttr = $00000001;
  ppIndentKeepAttr = $00000002;

// Constants for enum PpChangeCase
type
  PpChangeCase = TOleEnum;
const
  ppCaseSentence = $00000001;
  ppCaseLower = $00000002;
  ppCaseUpper = $00000003;
  ppCaseTitle = $00000004;
  ppCaseToggle = $00000005;

// Constants for enum PpDialogMode
type
  PpDialogMode = TOleEnum;
const
  ppDialogModeMixed = $FFFFFFFE;
  ppDialogModeless = $00000000;
  ppDialogModal = $00000001;

// Constants for enum PpDialogStyle
type
  PpDialogStyle = TOleEnum;
const
  ppDialogStyleMixed = $FFFFFFFE;
  ppDialogStandard = $00000001;
  ppDialogTabbed = $00000002;

// Constants for enum PpDialogPositioning
type
  PpDialogPositioning = TOleEnum;
const
  ppDialogPositionNormal = $00000001;
  ppDialogPositionCenterParent = $00000002;
  ppDialogPositionCenterScreen = $00000003;
  ppDialogPositionRememberLast = $00000004;

// Constants for enum PpDialogFontStyle
type
  PpDialogFontStyle = TOleEnum;
const
  ppDialogFontStyleMixed = $FFFFFFFE;
  ppDialogSmall = $FFFFFFFF;
  ppDialogItalic = $00000000;

// Constants for enum PpScrollBarStyle
type
  PpScrollBarStyle = TOleEnum;
const
  ppScrollBarVertical = $00000000;
  ppScrollBarHorizontal = $00000001;

// Constants for enum PpListBoxSelectionStyle
type
  PpListBoxSelectionStyle = TOleEnum;
const
  ppListBoxSingle = $00000000;
  ppListBoxMulti = $00000001;

// Constants for enum PpListBoxAbbreviationStyle
type
  PpListBoxAbbreviationStyle = TOleEnum;
const
  ppListBoxAbbreviationNone = $00000000;
  ppListBoxAbbreviationTruncation = $00000001;
  ppListBoxAbbreviationTruncationWithEllipsis = $00000002;
  ppListBoxAbbreviationFileNames = $00000003;

// Constants for enum PpAlertType
type
  PpAlertType = TOleEnum;
const
  ppAlertTypeOK = $00000000;
  ppAlertTypeOKCANCEL = $00000001;
  ppAlertTypeYESNO = $00000002;
  ppAlertTypeYESNOCANCEL = $00000003;
  ppAlertTypeBACKNEXTCLOSE = $00000004;
  ppAlertTypeRETRYCANCEL = $00000005;
  ppAlertTypeABORTRETRYIGNORE = $00000006;

// Constants for enum PpAlertButton
type
  PpAlertButton = TOleEnum;
const
  ppAlertButtonCLOSE = $00000000;
  ppAlertButtonSNOOZE = $00000001;
  ppAlertButtonSEARCH = $00000002;
  ppAlertButtonIGNORE = $00000003;
  ppAlertButtonABORT = $00000004;
  ppAlertButtonRETRY = $00000005;
  ppAlertButtonNEXT = $00000006;
  ppAlertButtonBACK = $00000007;
  ppAlertButtonNO = $00000008;
  ppAlertButtonYES = $00000009;
  ppAlertButtonCANCEL = $0000000A;
  ppAlertButtonOK = $0000000B;
  ppAlertButtonNULL = $0000000C;

// Constants for enum PpAlertIcon
type
  PpAlertIcon = TOleEnum;
const
  ppAlertIconQuestionMark = $00000000;
  ppAlertIconNote = $00000001;
  ppAlertIconCaution = $00000002;
  ppAlertIconStop = $00000003;

// Constants for enum PpSlideShowPointerType
type
  PpSlideShowPointerType = TOleEnum;
const
  ppSlideShowPointerNone = $00000000;
  ppSlideShowPointerArrow = $00000001;
  ppSlideShowPointerPen = $00000002;
  ppSlideShowPointerAlwaysHidden = $00000003;
  ppSlideShowPointerAutoArrow = $00000004;

// Constants for enum PpSlideShowState
type
  PpSlideShowState = TOleEnum;
const
  ppSlideShowRunning = $00000001;
  ppSlideShowPaused = $00000002;
  ppSlideShowBlackScreen = $00000003;
  ppSlideShowWhiteScreen = $00000004;
  ppSlideShowDone = $00000005;

// Constants for enum PpSlideShowAdvanceMode
type
  PpSlideShowAdvanceMode = TOleEnum;
const
  ppSlideShowManualAdvance = $00000001;
  ppSlideShowUseSlideTimings = $00000002;
  ppSlideShowRehearseNewTimings = $00000003;

// Constants for enum PpFileDialogType
type
  PpFileDialogType = TOleEnum;
const
  ppFileDialogOpen = $00000001;
  ppFileDialogSave = $00000002;

// Constants for enum PpFileDialogView
type
  PpFileDialogView = TOleEnum;
const
  ppFileDialogViewDetails = $00000001;
  ppFileDialogViewPreview = $00000002;
  ppFileDialogViewProperties = $00000003;
  ppFileDialogViewList = $00000004;

// Constants for enum PpPrintOutputType
type
  PpPrintOutputType = TOleEnum;
const
  ppPrintOutputSlides = $00000001;
  ppPrintOutputTwoSlideHandouts = $00000002;
  ppPrintOutputThreeSlideHandouts = $00000003;
  ppPrintOutputSixSlideHandouts = $00000004;
  ppPrintOutputNotesPages = $00000005;
  ppPrintOutputOutline = $00000006;
  ppPrintOutputBuildSlides = $00000007;
  ppPrintOutputFourSlideHandouts = $00000008;
  ppPrintOutputNineSlideHandouts = $00000009;

// Constants for enum PpPrintHandoutOrder
type
  PpPrintHandoutOrder = TOleEnum;
const
  ppPrintHandoutVerticalFirst = $00000001;
  ppPrintHandoutHorizontalFirst = $00000002;

// Constants for enum PpPrintColorType
type
  PpPrintColorType = TOleEnum;
const
  ppPrintColor = $00000001;
  ppPrintBlackAndWhite = $00000002;
  ppPrintPureBlackAndWhite = $00000003;

// Constants for enum PpSelectionType
type
  PpSelectionType = TOleEnum;
const
  ppSelectionNone = $00000000;
  ppSelectionSlides = $00000001;
  ppSelectionShapes = $00000002;
  ppSelectionText = $00000003;

// Constants for enum PpDirection
type
  PpDirection = TOleEnum;
const
  ppDirectionMixed = $FFFFFFFE;
  ppDirectionLeftToRight = $00000001;
  ppDirectionRightToLeft = $00000002;

// Constants for enum PpDateTimeFormat
type
  PpDateTimeFormat = TOleEnum;
const
  ppDateTimeFormatMixed = $FFFFFFFE;
  ppDateTimeMdyy = $00000001;
  ppDateTimeddddMMMMddyyyy = $00000002;
  ppDateTimedMMMMyyyy = $00000003;
  ppDateTimeMMMMdyyyy = $00000004;
  ppDateTimedMMMyy = $00000005;
  ppDateTimeMMMMyy = $00000006;
  ppDateTimeMMyy = $00000007;
  ppDateTimeMMddyyHmm = $00000008;
  ppDateTimeMMddyyhmmAMPM = $00000009;
  ppDateTimeHmm = $0000000A;
  ppDateTimeHmmss = $0000000B;
  ppDateTimehmmAMPM = $0000000C;
  ppDateTimehmmssAMPM = $0000000D;

// Constants for enum PpTransitionSpeed
type
  PpTransitionSpeed = TOleEnum;
const
  ppTransitionSpeedMixed = $FFFFFFFE;
  ppTransitionSpeedSlow = $00000001;
  ppTransitionSpeedMedium = $00000002;
  ppTransitionSpeedFast = $00000003;

// Constants for enum PpMouseActivation
type
  PpMouseActivation = TOleEnum;
const
  ppMouseClick = $00000001;
  ppMouseOver = $00000002;

// Constants for enum PpActionType
type
  PpActionType = TOleEnum;
const
  ppActionMixed = $FFFFFFFE;
  ppActionNone = $00000000;
  ppActionNextSlide = $00000001;
  ppActionPreviousSlide = $00000002;
  ppActionFirstSlide = $00000003;
  ppActionLastSlide = $00000004;
  ppActionLastSlideViewed = $00000005;
  ppActionEndShow = $00000006;
  ppActionHyperlink = $00000007;
  ppActionRunMacro = $00000008;
  ppActionRunProgram = $00000009;
  ppActionNamedSlideShow = $0000000A;
  ppActionOLEVerb = $0000000B;
  ppActionPlay = $0000000C;

// Constants for enum PpPlaceholderType
type
  PpPlaceholderType = TOleEnum;
const
  ppPlaceholderMixed = $FFFFFFFE;
  ppPlaceholderTitle = $00000001;
  ppPlaceholderBody = $00000002;
  ppPlaceholderCenterTitle = $00000003;
  ppPlaceholderSubtitle = $00000004;
  ppPlaceholderVerticalTitle = $00000005;
  ppPlaceholderVerticalBody = $00000006;
  ppPlaceholderObject = $00000007;
  ppPlaceholderChart = $00000008;
  ppPlaceholderBitmap = $00000009;
  ppPlaceholderMediaClip = $0000000A;
  ppPlaceholderOrgChart = $0000000B;
  ppPlaceholderTable = $0000000C;
  ppPlaceholderSlideNumber = $0000000D;
  ppPlaceholderHeader = $0000000E;
  ppPlaceholderFooter = $0000000F;
  ppPlaceholderDate = $00000010;

// Constants for enum PpSlideShowType
type
  PpSlideShowType = TOleEnum;
const
  ppShowTypeSpeaker = $00000001;
  ppShowTypeWindow = $00000002;
  ppShowTypeKiosk = $00000003;

// Constants for enum PpPrintRangeType
type
  PpPrintRangeType = TOleEnum;
const
  ppPrintAll = $00000001;
  ppPrintSelection = $00000002;
  ppPrintCurrent = $00000003;
  ppPrintSlideRange = $00000004;
  ppPrintNamedSlideShow = $00000005;

// Constants for enum PpAutoSize
type
  PpAutoSize = TOleEnum;
const
  ppAutoSizeMixed = $FFFFFFFE;
  ppAutoSizeNone = $00000000;
  ppAutoSizeShapeToFitText = $00000001;

// Constants for enum PpMediaType
type
  PpMediaType = TOleEnum;
const
  ppMediaTypeMixed = $FFFFFFFE;
  ppMediaTypeOther = $00000001;
  ppMediaTypeSound = $00000002;
  ppMediaTypeMovie = $00000003;

// Constants for enum PpSoundFormatType
type
  PpSoundFormatType = TOleEnum;
const
  ppSoundFormatMixed = $FFFFFFFE;
  ppSoundFormatNone = $00000000;
  ppSoundFormatWAV = $00000001;
  ppSoundFormatMIDI = $00000002;
  ppSoundFormatCDAudio = $00000003;

// Constants for enum PpFarEastLineBreakLevel
type
  PpFarEastLineBreakLevel = TOleEnum;
const
  ppFarEastLineBreakLevelNormal = $00000001;
  ppFarEastLineBreakLevelStrict = $00000002;
  ppFarEastLineBreakLevelCustom = $00000003;

// Constants for enum PpSlideShowRangeType
type
  PpSlideShowRangeType = TOleEnum;
const
  ppShowAll = $00000001;
  ppShowSlideRange = $00000002;
  ppShowNamedSlideShow = $00000003;

// Constants for enum PpFrameColors
type
  PpFrameColors = TOleEnum;
const
  ppFrameColorsBrowserColors = $00000001;
  ppFrameColorsPresentationSchemeTextColor = $00000002;
  ppFrameColorsPresentationSchemeAccentColor = $00000003;
  ppFrameColorsWhiteTextOnBlack = $00000004;
  ppFrameColorsBlackTextOnWhite = $00000005;

// Constants for enum PpBorderType
type
  PpBorderType = TOleEnum;
const
  ppBorderTop = $00000001;
  ppBorderLeft = $00000002;
  ppBorderBottom = $00000003;
  ppBorderRight = $00000004;
  ppBorderDiagonalDown = $00000005;
  ppBorderDiagonalUp = $00000006;

// Constants for enum PpHTMLVersion
type
  PpHTMLVersion = TOleEnum;
const
  ppHTMLv3 = $00000001;
  ppHTMLv4 = $00000002;
  ppHTMLDual = $00000003;

// Constants for enum PpPublishSourceType
type
  PpPublishSourceType = TOleEnum;
const
  ppPublishAll = $00000001;
  ppPublishSlideRange = $00000002;
  ppPublishNamedSlideShow = $00000003;

// Constants for enum PpBulletType
type
  PpBulletType = TOleEnum;
const
  ppBulletMixed = $FFFFFFFE;
  ppBulletNone = $00000000;
  ppBulletUnnumbered = $00000001;
  ppBulletNumbered = $00000002;
  ppBulletPicture = $00000003;

// Constants for enum PpNumberedBulletStyle
type
  PpNumberedBulletStyle = TOleEnum;
const
  ppBulletStyleMixed = $FFFFFFFE;
  ppBulletAlphaLCPeriod = $00000000;
  ppBulletAlphaUCPeriod = $00000001;
  ppBulletArabicParenRight = $00000002;
  ppBulletArabicPeriod = $00000003;
  ppBulletRomanLCParenBoth = $00000004;
  ppBulletRomanLCParenRight = $00000005;
  ppBulletRomanLCPeriod = $00000006;
  ppBulletRomanUCPeriod = $00000007;
  ppBulletAlphaLCParenBoth = $00000008;
  ppBulletAlphaLCParenRight = $00000009;
  ppBulletAlphaUCParenBoth = $0000000A;
  ppBulletAlphaUCParenRight = $0000000B;
  ppBulletArabicParenBoth = $0000000C;
  ppBulletArabicPlain = $0000000D;
  ppBulletRomanUCParenBoth = $0000000E;
  ppBulletRomanUCParenRight = $0000000F;
  ppBulletSimpChinPlain = $00000010;
  ppBulletSimpChinPeriod = $00000011;
  ppBulletCircleNumDBPlain = $00000012;
  ppBulletCircleNumWDWhitePlain = $00000013;
  ppBulletCircleNumWDBlackPlain = $00000014;
  ppBulletTradChinPlain = $00000015;
  ppBulletTradChinPeriod = $00000016;
  ppBulletArabicAlphaDash = $00000017;
  ppBulletArabicAbjadDash = $00000018;
  ppBulletHebrewAlphaDash = $00000019;
  ppBulletKanjiKoreanPlain = $0000001A;
  ppBulletKanjiKoreanPeriod = $0000001B;
  ppBulletArabicDBPlain = $0000001C;
  ppBulletArabicDBPeriod = $0000001D;

// Constants for enum PpMarkerType
type
  PpMarkerType = TOleEnum;
const
  ppBoot = $00000000;
  ppFileNew = $00000001;
  ppFileOpen = $00000002;
  ppFileSave = $00000003;
  ppPrintForeground = $00000004;
  ppPrintBackground = $00000005;
  ppOLEInsert = $00000006;
  ppSlideShowStart = $00000007;
  ppSlideShowDraw = $00000008;
  ppSlideViewScroll = $00000009;
  ppDialogStart = $0000000A;

// Constants for enum PpShapeFormat
type
  PpShapeFormat = TOleEnum;
const
  ppShapeFormatGIF = $00000000;
  ppShapeFormatJPG = $00000001;
  ppShapeFormatPNG = $00000002;
  ppShapeFormatBMP = $00000003;
  ppShapeFormatWMF = $00000004;

// Constants for enum PpExportMode
type
  PpExportMode = TOleEnum;
const
  ppRelativeToSlide = $00000001;
  ppClipRelativeToSlide = $00000002;
  ppScaleToFit = $00000003;
  ppScaleXY = $00000004;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  Collection = interface;
  CollectionDisp = dispinterface;
  _Application = interface;
  _ApplicationDisp = dispinterface;
  _Global = interface;
  _GlobalDisp = dispinterface;
  EApplication = interface;
  ColorFormat = interface;
  ColorFormatDisp = dispinterface;
  SlideShowWindow = interface;
  SlideShowWindowDisp = dispinterface;
  Selection = interface;
  SelectionDisp = dispinterface;
  DocumentWindows = interface;
  DocumentWindowsDisp = dispinterface;
  SlideShowWindows = interface;
  SlideShowWindowsDisp = dispinterface;
  DocumentWindow = interface;
  DocumentWindowDisp = dispinterface;
  View = interface;
  ViewDisp = dispinterface;
  SlideShowView = interface;
  SlideShowViewDisp = dispinterface;
  SlideShowSettings = interface;
  SlideShowSettingsDisp = dispinterface;
  NamedSlideShows = interface;
  NamedSlideShowsDisp = dispinterface;
  NamedSlideShow = interface;
  NamedSlideShowDisp = dispinterface;
  PrintOptions = interface;
  PrintOptionsDisp = dispinterface;
  PrintRanges = interface;
  PrintRangesDisp = dispinterface;
  PrintRange = interface;
  PrintRangeDisp = dispinterface;
  AddIns = interface;
  AddInsDisp = dispinterface;
  AddIn = interface;
  AddInDisp = dispinterface;
  Presentations = interface;
  PresentationsDisp = dispinterface;
  PresEvents = interface;
  _Presentation = interface;
  _PresentationDisp = dispinterface;
  Hyperlinks = interface;
  HyperlinksDisp = dispinterface;
  Hyperlink = interface;
  HyperlinkDisp = dispinterface;
  PageSetup = interface;
  PageSetupDisp = dispinterface;
  Fonts = interface;
  FontsDisp = dispinterface;
  ExtraColors = interface;
  ExtraColorsDisp = dispinterface;
  Slides = interface;
  SlidesDisp = dispinterface;
  _Slide = interface;
  _SlideDisp = dispinterface;
  SlideRange = interface;
  SlideRangeDisp = dispinterface;
  _Master = interface;
  _MasterDisp = dispinterface;
  SldEvents = interface;
  ColorSchemes = interface;
  ColorSchemesDisp = dispinterface;
  ColorScheme = interface;
  ColorSchemeDisp = dispinterface;
  RGBColor = interface;
  RGBColorDisp = dispinterface;
  SlideShowTransition = interface;
  SlideShowTransitionDisp = dispinterface;
  SoundEffect = interface;
  SoundEffectDisp = dispinterface;
  SoundFormat = interface;
  SoundFormatDisp = dispinterface;
  HeadersFooters = interface;
  HeadersFootersDisp = dispinterface;
  Shapes = interface;
  ShapesDisp = dispinterface;
  Placeholders = interface;
  PlaceholdersDisp = dispinterface;
  PlaceholderFormat = interface;
  PlaceholderFormatDisp = dispinterface;
  FreeformBuilder = interface;
  FreeformBuilderDisp = dispinterface;
  Shape = interface;
  ShapeDisp = dispinterface;
  ShapeRange = interface;
  ShapeRangeDisp = dispinterface;
  GroupShapes = interface;
  GroupShapesDisp = dispinterface;
  Adjustments = interface;
  AdjustmentsDisp = dispinterface;
  PictureFormat = interface;
  PictureFormatDisp = dispinterface;
  FillFormat = interface;
  FillFormatDisp = dispinterface;
  LineFormat = interface;
  LineFormatDisp = dispinterface;
  ShadowFormat = interface;
  ShadowFormatDisp = dispinterface;
  ConnectorFormat = interface;
  ConnectorFormatDisp = dispinterface;
  TextEffectFormat = interface;
  TextEffectFormatDisp = dispinterface;
  ThreeDFormat = interface;
  ThreeDFormatDisp = dispinterface;
  TextFrame = interface;
  TextFrameDisp = dispinterface;
  CalloutFormat = interface;
  CalloutFormatDisp = dispinterface;
  ShapeNodes = interface;
  ShapeNodesDisp = dispinterface;
  ShapeNode = interface;
  ShapeNodeDisp = dispinterface;
  OLEFormat = interface;
  OLEFormatDisp = dispinterface;
  LinkFormat = interface;
  LinkFormatDisp = dispinterface;
  ObjectVerbs = interface;
  ObjectVerbsDisp = dispinterface;
  AnimationSettings = interface;
  AnimationSettingsDisp = dispinterface;
  ActionSettings = interface;
  ActionSettingsDisp = dispinterface;
  ActionSetting = interface;
  ActionSettingDisp = dispinterface;
  PlaySettings = interface;
  PlaySettingsDisp = dispinterface;
  TextRange = interface;
  TextRangeDisp = dispinterface;
  Ruler = interface;
  RulerDisp = dispinterface;
  RulerLevels = interface;
  RulerLevelsDisp = dispinterface;
  RulerLevel = interface;
  RulerLevelDisp = dispinterface;
  TabStops = interface;
  TabStopsDisp = dispinterface;
  TabStop = interface;
  TabStopDisp = dispinterface;
  Font = interface;
  FontDisp = dispinterface;
  ParagraphFormat = interface;
  ParagraphFormatDisp = dispinterface;
  BulletFormat = interface;
  BulletFormatDisp = dispinterface;
  TextStyles = interface;
  TextStylesDisp = dispinterface;
  TextStyle = interface;
  TextStyleDisp = dispinterface;
  TextStyleLevels = interface;
  TextStyleLevelsDisp = dispinterface;
  TextStyleLevel = interface;
  TextStyleLevelDisp = dispinterface;
  HeaderFooter = interface;
  HeaderFooterDisp = dispinterface;
  PPDialogs = interface;
  PPDialogsDisp = dispinterface;
  PPAlert = interface;
  PPAlertDisp = dispinterface;
  PPDialog = interface;
  PPDialogDisp = dispinterface;
  PPTabSheet = interface;
  PPTabSheetDisp = dispinterface;
  PPControls = interface;
  PPControlsDisp = dispinterface;
  PPTabSheets = interface;
  PPTabSheetsDisp = dispinterface;
  PPControl = interface;
  PPControlDisp = dispinterface;
  PPPushButton = interface;
  PPPushButtonDisp = dispinterface;
  PPToggleButton = interface;
  PPToggleButtonDisp = dispinterface;
  PPBitmapButton = interface;
  PPBitmapButtonDisp = dispinterface;
  PPListBox = interface;
  PPListBoxDisp = dispinterface;
  PPStrings = interface;
  PPStringsDisp = dispinterface;
  PPCheckBox = interface;
  PPCheckBoxDisp = dispinterface;
  PPRadioCluster = interface;
  PPRadioClusterDisp = dispinterface;
  PPStaticText = interface;
  PPStaticTextDisp = dispinterface;
  PPEditText = interface;
  PPEditTextDisp = dispinterface;
  PPIcon = interface;
  PPIconDisp = dispinterface;
  PPBitmap = interface;
  PPBitmapDisp = dispinterface;
  PPSpinner = interface;
  PPSpinnerDisp = dispinterface;
  PPScrollBar = interface;
  PPScrollBarDisp = dispinterface;
  PPGroupBox = interface;
  PPGroupBoxDisp = dispinterface;
  PPFrame = interface;
  PPFrameDisp = dispinterface;
  PPTabControl = interface;
  PPTabControlDisp = dispinterface;
  PPDropDown = interface;
  PPDropDownDisp = dispinterface;
  PPDropDownEdit = interface;
  PPDropDownEditDisp = dispinterface;
  PPSlideMiniature = interface;
  PPSlideMiniatureDisp = dispinterface;
  PPRadioButton = interface;
  PPRadioButtonDisp = dispinterface;
  Tags = interface;
  TagsDisp = dispinterface;
  FileDialogFileList = interface;
  FileDialogFileListDisp = dispinterface;
  FileDialogExtension = interface;
  FileDialogExtensionDisp = dispinterface;
  FileDialogExtensionList = interface;
  FileDialogExtensionListDisp = dispinterface;
  FileDialog = interface;
  FileDialogDisp = dispinterface;
  MouseTracker = interface;
  MouseDownHandler = interface;
  OCXExtender = interface;
  OCXExtenderDisp = dispinterface;
  OCXExtenderEvents = interface;
  Table = interface;
  TableDisp = dispinterface;
  Columns = interface;
  ColumnsDisp = dispinterface;
  Column = interface;
  ColumnDisp = dispinterface;
  Rows = interface;
  RowsDisp = dispinterface;
  Row = interface;
  RowDisp = dispinterface;
  CellRange = interface;
  CellRangeDisp = dispinterface;
  Cell = interface;
  CellDisp = dispinterface;
  Borders = interface;
  BordersDisp = dispinterface;
  Panes = interface;
  PanesDisp = dispinterface;
  Pane = interface;
  PaneDisp = dispinterface;
  DefaultWebOptions = interface;
  DefaultWebOptionsDisp = dispinterface;
  WebOptions = interface;
  WebOptionsDisp = dispinterface;
  PublishObjects = interface;
  PublishObjectsDisp = dispinterface;
  PublishObject = interface;
  PublishObjectDisp = dispinterface;
  Marker = interface;
  MarkerDisp = dispinterface;
  MasterEvents = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  PowerPointGlobal = _Global;
  PowerPointSlide = _Slide;
  PowerPointPresentation = _Presentation;
  OLECtrl = OCXExtender;
  PowerPointApplication = _Application;
  Master = _Master;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PPSafeArray1 = ^PSafeArray; {*}
  POleVariant1 = ^OleVariant; {*}
  PSingle1 = ^Single; {*}


// *********************************************************************//
// Interface: Collection
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {91493450-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Collection = interface(IDispatch)
    ['{91493450-5A91-11CF-8700-00AA0060263B}']
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  _Index {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): OleVariant; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  CollectionDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {91493450-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  CollectionDisp = dispinterface
    ['{91493450-5A91-11CF-8700-00AA0060263B}']
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: _Application
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493442-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  _Application = interface(IDispatch)
    ['{91493442-5A91-11CF-8700-00AA0060263B}']
    function  Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Presentations; safecall;
    function  Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:6}: DocumentWindows; safecall;
    function  Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PPDialogs; safecall;
    function  Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:6}: DocumentWindow; safecall;
    function  Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointPresentation; safecall;
    function  Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SlideShowWindows; safecall;
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBars; safecall;
    function  Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Caption {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Caption: WideString); safecall;
    function  Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Assistant; safecall;
    function  Get_FileSearch {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FileSearch; safecall;
    function  Get_FileFind {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IFind; safecall;
    function  Get_Build {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_OperatingSystem {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ActivePrinter {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AddIns; safecall;
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBE; safecall;
    procedure Help {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const HelpFile: WideString; 
                                                        {VT_22:0}ContextID: SYSINT); safecall;
    procedure Quit {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Run {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const MacroName: WideString; 
                                                       {VT_27:1}var safeArrayOfParams: PSafeArray): OleVariant; safecall;
    function  FileDialog {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}Type_: PpFileDialogType): FileDialog; safecall;
    procedure LaunchSpelling {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const pWindow: DocumentWindow); safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Left: Single); safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Top: Single); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Width: Single); safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Height: Single); safecall;
    function  Get_WindowState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpWindowState; safecall;
    procedure Set_WindowState {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}WindowState: PpWindowState); safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    function  Get_HWND {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Active {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Activate {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AnswerWizard; safecall;
    function  Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:6}: COMAddIns; safecall;
    function  Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_DefaultWebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: DefaultWebOptions; safecall;
    function  Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: LanguageSettings; safecall;
    function  Get_MsoDebugOptions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoDebugOptions; safecall;
    function  Get_ShowWindowsInTaskbar {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_ShowWindowsInTaskbar {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ShowWindowsInTaskbar: MsoTriState); safecall;
    function  Get_Marker {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Marker; safecall;
    function  Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoFeatureInstall; safecall;
    procedure Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FeatureInstall: MsoFeatureInstall); safecall;
    function  GetOptionFlag {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_3:0}Option: Integer; 
                                                                 {VT_11:0}Persist: WordBool): WordBool; safecall;
    procedure SetOptionFlag {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_3:0}Option: Integer; 
                                                                 {VT_11:0}State: WordBool; 
                                                                 {VT_11:0}Persist: WordBool); safecall;
    property Presentations: Presentations read Get_Presentations;
    property Windows: DocumentWindows read Get_Windows;
    property Dialogs: PPDialogs read Get_Dialogs;
    property ActiveWindow: DocumentWindow read Get_ActiveWindow;
    property ActivePresentation: PowerPointPresentation read Get_ActivePresentation;
    property SlideShowWindows: SlideShowWindows read Get_SlideShowWindows;
    property CommandBars: CommandBars read Get_CommandBars;
    property Path: WideString read Get_Path;
    property Name: WideString read Get_Name;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Assistant: Assistant read Get_Assistant;
    property FileSearch: FileSearch read Get_FileSearch;
    property FileFind: IFind read Get_FileFind;
    property Build: WideString read Get_Build;
    property Version: WideString read Get_Version;
    property OperatingSystem: WideString read Get_OperatingSystem;
    property ActivePrinter: WideString read Get_ActivePrinter;
    property Creator: Integer read Get_Creator;
    property AddIns: AddIns read Get_AddIns;
    property VBE: VBE read Get_VBE;
    property Left: Single read Get_Left write Set_Left;
    property Top: Single read Get_Top write Set_Top;
    property Width: Single read Get_Width write Set_Width;
    property Height: Single read Get_Height write Set_Height;
    property WindowState: PpWindowState read Get_WindowState write Set_WindowState;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
    property HWND: Integer read Get_HWND;
    property Active: MsoTriState read Get_Active;
    property AnswerWizard: AnswerWizard read Get_AnswerWizard;
    property COMAddIns: COMAddIns read Get_COMAddIns;
    property ProductCode: WideString read Get_ProductCode;
    property DefaultWebOptions: DefaultWebOptions read Get_DefaultWebOptions;
    property LanguageSettings: LanguageSettings read Get_LanguageSettings;
    property MsoDebugOptions: MsoDebugOptions read Get_MsoDebugOptions;
    property ShowWindowsInTaskbar: MsoTriState read Get_ShowWindowsInTaskbar write Set_ShowWindowsInTaskbar;
    property Marker: Marker read Get_Marker;
    property FeatureInstall: MsoFeatureInstall read Get_FeatureInstall write Set_FeatureInstall;
  end;

// *********************************************************************//
// DispIntf:  _ApplicationDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493442-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  _ApplicationDisp = dispinterface
    ['{91493442-5A91-11CF-8700-00AA0060263B}']
    property Presentations {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Presentations readonly dispid 2001;
    property Windows {Flags(2), (1/0) CC:0, INV:2, DBG:6}: DocumentWindows readonly dispid 2002;
    property Dialogs {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PPDialogs readonly dispid 2003;
    property ActiveWindow {Flags(2), (1/0) CC:0, INV:2, DBG:6}: DocumentWindow readonly dispid 2004;
    property ActivePresentation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointPresentation readonly dispid 2005;
    property SlideShowWindows {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SlideShowWindows readonly dispid 2006;
    property CommandBars {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBars readonly dispid 2007;
    property Path {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2008;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 0;
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2009;
    property Assistant {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Assistant readonly dispid 2010;
    property FileSearch {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FileSearch readonly dispid 2011;
    property FileFind {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IFind readonly dispid 2012;
    property Build {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2013;
    property Version {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2014;
    property OperatingSystem {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2015;
    property ActivePrinter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2016;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2017;
    property AddIns {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AddIns readonly dispid 2018;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBE readonly dispid 2019;
    procedure Help {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const HelpFile: WideString; 
                                                        {VT_22:0}ContextID: SYSINT); dispid 2020;
    procedure Quit {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2021;
    function  Run {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const MacroName: WideString; 
                                                       {VT_27:1}var safeArrayOfParams: {??PSafeArray} OleVariant): OleVariant; dispid 2022;
    function  FileDialog {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}Type_: PpFileDialogType): FileDialog; dispid 2023;
    procedure LaunchSpelling {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const pWindow: DocumentWindow); dispid 2024;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2025;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2026;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2027;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2028;
    property WindowState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpWindowState dispid 2029;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2030;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2031;
    property Active {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2032;
    procedure Activate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2033;
    property AnswerWizard {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AnswerWizard readonly dispid 2034;
    property COMAddIns {Flags(2), (1/0) CC:0, INV:2, DBG:6}: COMAddIns readonly dispid 2035;
    property ProductCode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2036;
    property DefaultWebOptions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: DefaultWebOptions readonly dispid 2037;
    property LanguageSettings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: LanguageSettings readonly dispid 2038;
    property MsoDebugOptions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoDebugOptions readonly dispid 2039;
    property ShowWindowsInTaskbar {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2040;
    property Marker {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Marker readonly dispid 2041;
    property FeatureInstall {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoFeatureInstall dispid 2042;
    function  GetOptionFlag {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}Option: Integer; 
                                                                 {VT_11:0}Persist: WordBool): WordBool; dispid 2043;
    procedure SetOptionFlag {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_3:0}Option: Integer; 
                                                                 {VT_11:0}State: WordBool; 
                                                                 {VT_11:0}Persist: WordBool); dispid 2044;
  end;

// *********************************************************************//
// Interface: _Global
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493451-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  _Global = interface(IDispatch)
    ['{91493451-5A91-11CF-8700-00AA0060263B}']
    function  Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointPresentation; safecall;
    function  Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:6}: DocumentWindow; safecall;
    function  Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AddIns; safecall;
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Assistant; safecall;
    function  Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PPDialogs; safecall;
    function  Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Presentations; safecall;
    function  Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SlideShowWindows; safecall;
    function  Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:6}: DocumentWindows; safecall;
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBars; safecall;
    function  Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AnswerWizard; safecall;
    property ActivePresentation: PowerPointPresentation read Get_ActivePresentation;
    property ActiveWindow: DocumentWindow read Get_ActiveWindow;
    property AddIns: AddIns read Get_AddIns;
    property Application: PowerPointApplication read Get_Application;
    property Assistant: Assistant read Get_Assistant;
    property Dialogs: PPDialogs read Get_Dialogs;
    property Presentations: Presentations read Get_Presentations;
    property SlideShowWindows: SlideShowWindows read Get_SlideShowWindows;
    property Windows: DocumentWindows read Get_Windows;
    property CommandBars: CommandBars read Get_CommandBars;
    property AnswerWizard: AnswerWizard read Get_AnswerWizard;
  end;

// *********************************************************************//
// DispIntf:  _GlobalDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493451-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  _GlobalDisp = dispinterface
    ['{91493451-5A91-11CF-8700-00AA0060263B}']
    property ActivePresentation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointPresentation readonly dispid 2001;
    property ActiveWindow {Flags(2), (1/0) CC:0, INV:2, DBG:6}: DocumentWindow readonly dispid 2002;
    property AddIns {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AddIns readonly dispid 2003;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2004;
    property Assistant {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Assistant readonly dispid 2005;
    property Dialogs {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PPDialogs readonly dispid 2006;
    property Presentations {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Presentations readonly dispid 2007;
    property SlideShowWindows {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SlideShowWindows readonly dispid 2008;
    property Windows {Flags(2), (1/0) CC:0, INV:2, DBG:6}: DocumentWindows readonly dispid 2009;
    property CommandBars {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBars readonly dispid 2010;
    property AnswerWizard {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AnswerWizard readonly dispid 2011;
  end;

// *********************************************************************//
// Interface: EApplication
// Flags:     (4096) Dispatchable
// GUID:      {914934C2-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  EApplication = interface(IDispatch)
    ['{914934C2-5A91-11CF-8700-00AA0060263B}']
    function  WindowSelectionChange {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Sel: Selection): HResult; stdcall;
    function  WindowBeforeRightClick {Flags(1), (2/2) CC:4, INV:1, DBG:6}({VT_29:1}const Sel: Selection; 
                                                                          {VT_11:1}var Cancel: WordBool): HResult; stdcall;
    function  WindowBeforeDoubleClick {Flags(1), (2/2) CC:4, INV:1, DBG:6}({VT_29:1}const Sel: Selection; 
                                                                           {VT_11:1}var Cancel: WordBool): HResult; stdcall;
    function  PresentationClose {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Pres: PowerPointPresentation): HResult; stdcall;
    function  PresentationSave {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Pres: PowerPointPresentation): HResult; stdcall;
    function  PresentationOpen {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Pres: PowerPointPresentation): HResult; stdcall;
    function  NewPresentation {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Pres: PowerPointPresentation): HResult; stdcall;
    function  PresentationNewSlide {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Sld: PowerPointSlide): HResult; stdcall;
    function  WindowActivate {Flags(1), (2/2) CC:4, INV:1, DBG:6}({VT_29:1}const Pres: PowerPointPresentation; 
                                                                  {VT_29:1}const Wn: DocumentWindow): HResult; stdcall;
    function  WindowDeactivate {Flags(1), (2/2) CC:4, INV:1, DBG:6}({VT_29:1}const Pres: PowerPointPresentation; 
                                                                    {VT_29:1}const Wn: DocumentWindow): HResult; stdcall;
    function  SlideShowBegin {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Wn: SlideShowWindow): HResult; stdcall;
    function  SlideShowNextBuild {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Wn: SlideShowWindow): HResult; stdcall;
    function  SlideShowNextSlide {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Wn: SlideShowWindow): HResult; stdcall;
    function  SlideShowEnd {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Pres: PowerPointPresentation): HResult; stdcall;
    function  PresentationPrint {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Pres: PowerPointPresentation): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ColorFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493452-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ColorFormat = interface(IDispatch)
    ['{91493452-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_RGB {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType; safecall;
    procedure Set_RGB {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}RGB: MsoRGBType); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoColorType; safecall;
    function  Get_SchemeColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpColorSchemeIndex; safecall;
    procedure Set_SchemeColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}SchemeColor: PpColorSchemeIndex); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property RGB: MsoRGBType read Get_RGB write Set_RGB;
    property Type_: MsoColorType read Get_Type_;
    property SchemeColor: PpColorSchemeIndex read Get_SchemeColor write Set_SchemeColor;
  end;

// *********************************************************************//
// DispIntf:  ColorFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493452-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ColorFormatDisp = dispinterface
    ['{91493452-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property RGB {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType dispid 0;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoColorType readonly dispid 101;
    property SchemeColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpColorSchemeIndex dispid 2003;
  end;

// *********************************************************************//
// Interface: SlideShowWindow
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493453-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideShowWindow = interface(IDispatch)
    ['{91493453-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_View {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SlideShowView; safecall;
    function  Get_Presentation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointPresentation; safecall;
    function  Get_IsFullScreen {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Left: Single); safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Top: Single); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Width: Single); safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Height: Single); safecall;
    function  Get_HWND {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Active {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Activate {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property View: SlideShowView read Get_View;
    property Presentation: PowerPointPresentation read Get_Presentation;
    property IsFullScreen: MsoTriState read Get_IsFullScreen;
    property Left: Single read Get_Left write Set_Left;
    property Top: Single read Get_Top write Set_Top;
    property Width: Single read Get_Width write Set_Width;
    property Height: Single read Get_Height write Set_Height;
    property HWND: Integer read Get_HWND;
    property Active: MsoTriState read Get_Active;
  end;

// *********************************************************************//
// DispIntf:  SlideShowWindowDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493453-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideShowWindowDisp = dispinterface
    ['{91493453-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property View {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SlideShowView readonly dispid 2003;
    property Presentation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointPresentation readonly dispid 2004;
    property IsFullScreen {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2005;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2006;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2007;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2008;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2009;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2010;
    property Active {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2011;
    procedure Activate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2012;
  end;

// *********************************************************************//
// Interface: Selection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493454-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Selection = interface(IDispatch)
    ['{91493454-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Cut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Copy {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Unselect {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSelectionType; safecall;
    function  Get_SlideRange {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SlideRange; safecall;
    function  Get_ShapeRange {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ShapeRange; safecall;
    function  Get_TextRange {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TextRange; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Type_: PpSelectionType read Get_Type_;
    property SlideRange: SlideRange read Get_SlideRange;
    property ShapeRange: ShapeRange read Get_ShapeRange;
    property TextRange: TextRange read Get_TextRange;
  end;

// *********************************************************************//
// DispIntf:  SelectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493454-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SelectionDisp = dispinterface
    ['{91493454-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    procedure Cut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2003;
    procedure Copy {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2004;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2005;
    procedure Unselect {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2006;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSelectionType readonly dispid 2007;
    property SlideRange {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SlideRange readonly dispid 2008;
    property ShapeRange {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ShapeRange readonly dispid 2009;
    property TextRange {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TextRange readonly dispid 2010;
  end;

// *********************************************************************//
// Interface: DocumentWindows
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493455-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  DocumentWindows = interface(Collection)
    ['{91493455-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): DocumentWindow; safecall;
    procedure Arrange {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}arrangeStyle: PpArrangeStyle); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  DocumentWindowsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493455-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  DocumentWindowsDisp = dispinterface
    ['{91493455-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): DocumentWindow; dispid 0;
    procedure Arrange {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}arrangeStyle: PpArrangeStyle); dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: SlideShowWindows
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493456-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideShowWindows = interface(Collection)
    ['{91493456-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): SlideShowWindow; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  SlideShowWindowsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493456-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideShowWindowsDisp = dispinterface
    ['{91493456-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): SlideShowWindow; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: DocumentWindow
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493457-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  DocumentWindow = interface(IDispatch)
    ['{91493457-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Selection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Selection; safecall;
    function  Get_View {Flags(1), (1/0) CC:0, INV:2, DBG:6}: View; safecall;
    function  Get_Presentation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointPresentation; safecall;
    function  Get_ViewType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpViewType; safecall;
    procedure Set_ViewType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ViewType: PpViewType); safecall;
    function  Get_BlackAndWhite {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_BlackAndWhite {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}BlackAndWhite: MsoTriState); safecall;
    function  Get_Active {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_WindowState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpWindowState; safecall;
    procedure Set_WindowState {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}WindowState: PpWindowState); safecall;
    function  Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Left: Single); safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Top: Single); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Width: Single); safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Height: Single); safecall;
    procedure FitToPage {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Activate {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure LargeScroll {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_22:0}Down: SYSINT; 
                                                               {VT_22:0}Up: SYSINT; 
                                                               {VT_22:0}ToRight: SYSINT; 
                                                               {VT_22:0}ToLeft: SYSINT); safecall;
    procedure SmallScroll {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_22:0}Down: SYSINT; 
                                                               {VT_22:0}Up: SYSINT; 
                                                               {VT_22:0}ToRight: SYSINT; 
                                                               {VT_22:0}ToLeft: SYSINT); safecall;
    function  NewWindow {Flags(1), (1/0) CC:0, INV:1, DBG:6}: DocumentWindow; safecall;
    procedure Close {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_HWND {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_ActivePane {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Pane; safecall;
    function  Get_Panes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Panes; safecall;
    function  Get_SplitVertical {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_SplitVertical {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}SplitVertical: Integer); safecall;
    function  Get_SplitHorizontal {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_SplitHorizontal {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}SplitHorizontal: Integer); safecall;
    function  RangeFromPoint {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_22:0}X: SYSINT; 
                                                                  {VT_22:0}Y: SYSINT): IDispatch; safecall;
    function  PointsToScreenPixelsX {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_4:0}Points: Single): SYSINT; safecall;
    function  PointsToScreenPixelsY {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_4:0}Points: Single): SYSINT; safecall;
    procedure ScrollIntoView {Flags(1), (5/5) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                                  {VT_4:0}Top: Single; 
                                                                  {VT_4:0}Width: Single; 
                                                                  {VT_4:0}Height: Single; 
                                                                  {VT_29:0}Start: MsoTriState); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Selection: Selection read Get_Selection;
    property View: View read Get_View;
    property Presentation: PowerPointPresentation read Get_Presentation;
    property ViewType: PpViewType read Get_ViewType write Set_ViewType;
    property BlackAndWhite: MsoTriState read Get_BlackAndWhite write Set_BlackAndWhite;
    property Active: MsoTriState read Get_Active;
    property WindowState: PpWindowState read Get_WindowState write Set_WindowState;
    property Caption: WideString read Get_Caption;
    property Left: Single read Get_Left write Set_Left;
    property Top: Single read Get_Top write Set_Top;
    property Width: Single read Get_Width write Set_Width;
    property Height: Single read Get_Height write Set_Height;
    property HWND: Integer read Get_HWND;
    property ActivePane: Pane read Get_ActivePane;
    property Panes: Panes read Get_Panes;
    property SplitVertical: Integer read Get_SplitVertical write Set_SplitVertical;
    property SplitHorizontal: Integer read Get_SplitHorizontal write Set_SplitHorizontal;
  end;

// *********************************************************************//
// DispIntf:  DocumentWindowDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493457-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  DocumentWindowDisp = dispinterface
    ['{91493457-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Selection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Selection readonly dispid 2003;
    property View {Flags(2), (1/0) CC:0, INV:2, DBG:6}: View readonly dispid 2004;
    property Presentation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointPresentation readonly dispid 2005;
    property ViewType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpViewType dispid 2006;
    property BlackAndWhite {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2007;
    property Active {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2008;
    property WindowState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpWindowState dispid 2009;
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 0;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2010;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2011;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2012;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2013;
    procedure FitToPage {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2014;
    procedure Activate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2015;
    procedure LargeScroll {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_22:0}Down: SYSINT; 
                                                               {VT_22:0}Up: SYSINT; 
                                                               {VT_22:0}ToRight: SYSINT; 
                                                               {VT_22:0}ToLeft: SYSINT); dispid 2016;
    procedure SmallScroll {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_22:0}Down: SYSINT; 
                                                               {VT_22:0}Up: SYSINT; 
                                                               {VT_22:0}ToRight: SYSINT; 
                                                               {VT_22:0}ToLeft: SYSINT); dispid 2017;
    function  NewWindow {Flags(2), (1/0) CC:0, INV:1, DBG:4}: DocumentWindow; dispid 2018;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2019;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2020;
    property ActivePane {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Pane readonly dispid 2021;
    property Panes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Panes readonly dispid 2022;
    property SplitVertical {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 2023;
    property SplitHorizontal {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 2024;
    function  RangeFromPoint {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_22:0}X: SYSINT; 
                                                                  {VT_22:0}Y: SYSINT): IDispatch; dispid 2025;
    function  PointsToScreenPixelsX {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_4:0}Points: Single): SYSINT; dispid 2026;
    function  PointsToScreenPixelsY {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_4:0}Points: Single): SYSINT; dispid 2027;
    procedure ScrollIntoView {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                                  {VT_4:0}Top: Single; 
                                                                  {VT_4:0}Width: Single; 
                                                                  {VT_4:0}Height: Single; 
                                                                  {VT_29:0}Start: MsoTriState); dispid 2028;
  end;

// *********************************************************************//
// Interface: View
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493458-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  View = interface(IDispatch)
    ['{91493458-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpViewType; safecall;
    function  Get_Zoom {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Zoom {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}Zoom: SYSINT); safecall;
    procedure Paste {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Slide {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Set_Slide {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_9:0}const Slide: IDispatch); safecall;
    procedure GotoSlide {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT); safecall;
    function  Get_DisplaySlideMiniature {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_DisplaySlideMiniature {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}DisplaySlideMiniature: MsoTriState); safecall;
    function  Get_ZoomToFit {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_ZoomToFit {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ZoomToFit: MsoTriState); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Type_: PpViewType read Get_Type_;
    property Zoom: SYSINT read Get_Zoom write Set_Zoom;
    property Slide: IDispatch read Get_Slide write Set_Slide;
    property DisplaySlideMiniature: MsoTriState read Get_DisplaySlideMiniature write Set_DisplaySlideMiniature;
    property ZoomToFit: MsoTriState read Get_ZoomToFit write Set_ZoomToFit;
  end;

// *********************************************************************//
// DispIntf:  ViewDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493458-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ViewDisp = dispinterface
    ['{91493458-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpViewType readonly dispid 2003;
    property Zoom {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2004;
    procedure Paste {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2005;
    property Slide {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch dispid 2006;
    procedure GotoSlide {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT); dispid 2007;
    property DisplaySlideMiniature {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2008;
    property ZoomToFit {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2009;
  end;

// *********************************************************************//
// Interface: SlideShowView
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493459-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideShowView = interface(IDispatch)
    ['{91493459-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Zoom {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Slide {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointSlide; safecall;
    function  Get_PointerType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowPointerType; safecall;
    procedure Set_PointerType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}PointerType: PpSlideShowPointerType); safecall;
    function  Get_State {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowState; safecall;
    procedure Set_State {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}State: PpSlideShowState); safecall;
    function  Get_AcceleratorsEnabled {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AcceleratorsEnabled {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AcceleratorsEnabled: MsoTriState); safecall;
    function  Get_PresentationElapsedTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_SlideElapsedTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_SlideElapsedTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}SlideElapsedTime: Single); safecall;
    function  Get_LastSlideViewed {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointSlide; safecall;
    function  Get_AdvanceMode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowAdvanceMode; safecall;
    function  Get_PointerColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorFormat; safecall;
    function  Get_IsNamedShow {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_SlideShowName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure DrawLine {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_4:0}BeginX: Single; 
                                                            {VT_4:0}BeginY: Single; 
                                                            {VT_4:0}EndX: Single; 
                                                            {VT_4:0}EndY: Single); safecall;
    procedure EraseDrawing {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure First {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Last {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Next {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Previous {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure GotoSlide {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT; 
                                                             {VT_29:0}ResetSlide: MsoTriState); safecall;
    procedure GotoNamedShow {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const SlideShowName: WideString); safecall;
    procedure EndNamedShow {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure ResetSlideTime {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Exit {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure InstallTracker {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_29:1}const pTracker: MouseTracker; 
                                                                  {VT_29:0}Presenter: MsoTriState); safecall;
    function  Get_CurrentShowPosition {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Zoom: SYSINT read Get_Zoom;
    property Slide: PowerPointSlide read Get_Slide;
    property PointerType: PpSlideShowPointerType read Get_PointerType write Set_PointerType;
    property State: PpSlideShowState read Get_State write Set_State;
    property AcceleratorsEnabled: MsoTriState read Get_AcceleratorsEnabled write Set_AcceleratorsEnabled;
    property PresentationElapsedTime: Single read Get_PresentationElapsedTime;
    property SlideElapsedTime: Single read Get_SlideElapsedTime write Set_SlideElapsedTime;
    property LastSlideViewed: PowerPointSlide read Get_LastSlideViewed;
    property AdvanceMode: PpSlideShowAdvanceMode read Get_AdvanceMode;
    property PointerColor: ColorFormat read Get_PointerColor;
    property IsNamedShow: MsoTriState read Get_IsNamedShow;
    property SlideShowName: WideString read Get_SlideShowName;
    property CurrentShowPosition: SYSINT read Get_CurrentShowPosition;
  end;

// *********************************************************************//
// DispIntf:  SlideShowViewDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493459-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideShowViewDisp = dispinterface
    ['{91493459-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Zoom {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2003;
    property Slide {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointSlide readonly dispid 2004;
    property PointerType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowPointerType dispid 2005;
    property State {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowState dispid 2006;
    property AcceleratorsEnabled {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2007;
    property PresentationElapsedTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2008;
    property SlideElapsedTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2009;
    property LastSlideViewed {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointSlide readonly dispid 2010;
    property AdvanceMode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowAdvanceMode readonly dispid 2011;
    property PointerColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorFormat readonly dispid 2012;
    property IsNamedShow {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2013;
    property SlideShowName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2014;
    procedure DrawLine {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_4:0}BeginX: Single; 
                                                            {VT_4:0}BeginY: Single; 
                                                            {VT_4:0}EndX: Single; 
                                                            {VT_4:0}EndY: Single); dispid 2015;
    procedure EraseDrawing {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2016;
    procedure First {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2017;
    procedure Last {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2018;
    procedure Next {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2019;
    procedure Previous {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2020;
    procedure GotoSlide {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT; 
                                                             {VT_29:0}ResetSlide: MsoTriState); dispid 2021;
    procedure GotoNamedShow {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const SlideShowName: WideString); dispid 2022;
    procedure EndNamedShow {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2023;
    procedure ResetSlideTime {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2024;
    procedure Exit {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2025;
    procedure InstallTracker {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const pTracker: MouseTracker; 
                                                                  {VT_29:0}Presenter: MsoTriState); dispid 2026;
    property CurrentShowPosition {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2027;
  end;

// *********************************************************************//
// Interface: SlideShowSettings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345A-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideShowSettings = interface(IDispatch)
    ['{9149345A-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_PointerColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorFormat; safecall;
    function  Get_NamedSlideShows {Flags(1), (1/0) CC:0, INV:2, DBG:6}: NamedSlideShows; safecall;
    function  Get_StartingSlide {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_StartingSlide {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}StartingSlide: SYSINT); safecall;
    function  Get_EndingSlide {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_EndingSlide {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}EndingSlide: SYSINT); safecall;
    function  Get_AdvanceMode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowAdvanceMode; safecall;
    procedure Set_AdvanceMode {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AdvanceMode: PpSlideShowAdvanceMode); safecall;
    function  Run {Flags(1), (1/0) CC:0, INV:1, DBG:6}: SlideShowWindow; safecall;
    function  Get_LoopUntilStopped {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_LoopUntilStopped {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}LoopUntilStopped: MsoTriState); safecall;
    function  Get_ShowType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowType; safecall;
    procedure Set_ShowType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ShowType: PpSlideShowType); safecall;
    function  Get_ShowWithNarration {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_ShowWithNarration {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ShowWithNarration: MsoTriState); safecall;
    function  Get_ShowWithAnimation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_ShowWithAnimation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ShowWithAnimation: MsoTriState); safecall;
    function  Get_SlideShowName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_SlideShowName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const SlideShowName: WideString); safecall;
    function  Get_RangeType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowRangeType; safecall;
    procedure Set_RangeType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}RangeType: PpSlideShowRangeType); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property PointerColor: ColorFormat read Get_PointerColor;
    property NamedSlideShows: NamedSlideShows read Get_NamedSlideShows;
    property StartingSlide: SYSINT read Get_StartingSlide write Set_StartingSlide;
    property EndingSlide: SYSINT read Get_EndingSlide write Set_EndingSlide;
    property AdvanceMode: PpSlideShowAdvanceMode read Get_AdvanceMode write Set_AdvanceMode;
    property LoopUntilStopped: MsoTriState read Get_LoopUntilStopped write Set_LoopUntilStopped;
    property ShowType: PpSlideShowType read Get_ShowType write Set_ShowType;
    property ShowWithNarration: MsoTriState read Get_ShowWithNarration write Set_ShowWithNarration;
    property ShowWithAnimation: MsoTriState read Get_ShowWithAnimation write Set_ShowWithAnimation;
    property SlideShowName: WideString read Get_SlideShowName write Set_SlideShowName;
    property RangeType: PpSlideShowRangeType read Get_RangeType write Set_RangeType;
  end;

// *********************************************************************//
// DispIntf:  SlideShowSettingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345A-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideShowSettingsDisp = dispinterface
    ['{9149345A-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property PointerColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorFormat readonly dispid 2003;
    property NamedSlideShows {Flags(2), (1/0) CC:0, INV:2, DBG:6}: NamedSlideShows readonly dispid 2004;
    property StartingSlide {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2005;
    property EndingSlide {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2006;
    property AdvanceMode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowAdvanceMode dispid 2007;
    function  Run {Flags(2), (1/0) CC:0, INV:1, DBG:4}: SlideShowWindow; dispid 2008;
    property LoopUntilStopped {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2009;
    property ShowType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowType dispid 2010;
    property ShowWithNarration {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2011;
    property ShowWithAnimation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2012;
    property SlideShowName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2013;
    property RangeType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSlideShowRangeType dispid 2014;
  end;

// *********************************************************************//
// Interface: NamedSlideShows
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345B-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  NamedSlideShows = interface(Collection)
    ['{9149345B-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): NamedSlideShow; safecall;
    function  Add {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                       {VT_12:0}safeArrayOfSlideIDs: OleVariant): NamedSlideShow; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  NamedSlideShowsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345B-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  NamedSlideShowsDisp = dispinterface
    ['{9149345B-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): NamedSlideShow; dispid 0;
    function  Add {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                       {VT_12:0}safeArrayOfSlideIDs: OleVariant): NamedSlideShow; dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: NamedSlideShow
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345C-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  NamedSlideShow = interface(IDispatch)
    ['{9149345C-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_SlideIDs {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Name: WideString read Get_Name;
    property SlideIDs: OleVariant read Get_SlideIDs;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  NamedSlideShowDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345C-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  NamedSlideShowDisp = dispinterface
    ['{9149345C-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2003;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2004;
    property SlideIDs {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 2005;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2006;
  end;

// *********************************************************************//
// Interface: PrintOptions
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345D-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PrintOptions = interface(IDispatch)
    ['{9149345D-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_PrintColorType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpPrintColorType; safecall;
    procedure Set_PrintColorType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}PrintColorType: PpPrintColorType); safecall;
    function  Get_Collate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Collate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Collate: MsoTriState); safecall;
    function  Get_FitToPage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_FitToPage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FitToPage: MsoTriState); safecall;
    function  Get_FrameSlides {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_FrameSlides {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FrameSlides: MsoTriState); safecall;
    function  Get_NumberOfCopies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_NumberOfCopies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}NumberOfCopies: SYSINT); safecall;
    function  Get_OutputType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpPrintOutputType; safecall;
    procedure Set_OutputType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}OutputType: PpPrintOutputType); safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_PrintHiddenSlides {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_PrintHiddenSlides {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}PrintHiddenSlides: MsoTriState); safecall;
    function  Get_PrintInBackground {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_PrintInBackground {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}PrintInBackground: MsoTriState); safecall;
    function  Get_RangeType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpPrintRangeType; safecall;
    procedure Set_RangeType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}RangeType: PpPrintRangeType); safecall;
    function  Get_Ranges {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PrintRanges; safecall;
    function  Get_PrintFontsAsGraphics {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_PrintFontsAsGraphics {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}PrintFontsAsGraphics: MsoTriState); safecall;
    function  Get_SlideShowName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_SlideShowName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const SlideShowName: WideString); safecall;
    function  Get_ActivePrinter {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ActivePrinter {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ActivePrinter: WideString); safecall;
    function  Get_HandoutOrder {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpPrintHandoutOrder; safecall;
    procedure Set_HandoutOrder {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}HandoutOrder: PpPrintHandoutOrder); safecall;
    property Application: PowerPointApplication read Get_Application;
    property PrintColorType: PpPrintColorType read Get_PrintColorType write Set_PrintColorType;
    property Collate: MsoTriState read Get_Collate write Set_Collate;
    property FitToPage: MsoTriState read Get_FitToPage write Set_FitToPage;
    property FrameSlides: MsoTriState read Get_FrameSlides write Set_FrameSlides;
    property NumberOfCopies: SYSINT read Get_NumberOfCopies write Set_NumberOfCopies;
    property OutputType: PpPrintOutputType read Get_OutputType write Set_OutputType;
    property Parent: IDispatch read Get_Parent;
    property PrintHiddenSlides: MsoTriState read Get_PrintHiddenSlides write Set_PrintHiddenSlides;
    property PrintInBackground: MsoTriState read Get_PrintInBackground write Set_PrintInBackground;
    property RangeType: PpPrintRangeType read Get_RangeType write Set_RangeType;
    property Ranges: PrintRanges read Get_Ranges;
    property PrintFontsAsGraphics: MsoTriState read Get_PrintFontsAsGraphics write Set_PrintFontsAsGraphics;
    property SlideShowName: WideString read Get_SlideShowName write Set_SlideShowName;
    property ActivePrinter: WideString read Get_ActivePrinter write Set_ActivePrinter;
    property HandoutOrder: PpPrintHandoutOrder read Get_HandoutOrder write Set_HandoutOrder;
  end;

// *********************************************************************//
// DispIntf:  PrintOptionsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345D-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PrintOptionsDisp = dispinterface
    ['{9149345D-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property PrintColorType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpPrintColorType dispid 2002;
    property Collate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2003;
    property FitToPage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2004;
    property FrameSlides {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2005;
    property NumberOfCopies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2006;
    property OutputType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpPrintOutputType dispid 2007;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2008;
    property PrintHiddenSlides {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2009;
    property PrintInBackground {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2010;
    property RangeType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpPrintRangeType dispid 2011;
    property Ranges {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PrintRanges readonly dispid 2012;
    property PrintFontsAsGraphics {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2013;
    property SlideShowName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2014;
    property ActivePrinter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2015;
    property HandoutOrder {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpPrintHandoutOrder dispid 2016;
  end;

// *********************************************************************//
// Interface: PrintRanges
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345E-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PrintRanges = interface(Collection)
    ['{9149345E-5A91-11CF-8700-00AA0060263B}']
    function  Add {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_22:0}Start: SYSINT; {VT_22:0}End_: SYSINT): PrintRange; safecall;
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    procedure ClearAll {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): PrintRange; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  PrintRangesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345E-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PrintRangesDisp = dispinterface
    ['{9149345E-5A91-11CF-8700-00AA0060263B}']
    function  Add {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_22:0}Start: SYSINT; {VT_22:0}End_: SYSINT): PrintRange; dispid 2001;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2002;
    procedure ClearAll {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2003;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): PrintRange; dispid 0;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2004;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: PrintRange
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345F-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PrintRange = interface(IDispatch)
    ['{9149345F-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Start {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_End_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Start: SYSINT read Get_Start;
    property End_: SYSINT read Get_End_;
  end;

// *********************************************************************//
// DispIntf:  PrintRangeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149345F-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PrintRangeDisp = dispinterface
    ['{9149345F-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Start {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2003;
    property End_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2004;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2005;
  end;

// *********************************************************************//
// Interface: AddIns
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493460-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  AddIns = interface(Collection)
    ['{91493460-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:1}var index: OleVariant): AddIn; safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString): AddIn; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:1}var index: OleVariant); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  AddInsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493460-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  AddInsDisp = dispinterface
    ['{91493460-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:1}var index: OleVariant): AddIn; dispid 0;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString): AddIn; dispid 2003;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:1}var index: OleVariant); dispid 2004;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: AddIn
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493461-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  AddIn = interface(IDispatch)
    ['{91493461-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_FullName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Registered {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Registered {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Registered: MsoTriState); safecall;
    function  Get_AutoLoad {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AutoLoad {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AutoLoad: MsoTriState); safecall;
    function  Get_Loaded {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Loaded {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Loaded: MsoTriState); safecall;
    function  Get_DisplayAlerts {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_DisplayAlerts {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}DisplayAlerts: MsoTriState); safecall;
    function  Get_RegisteredInHKLM {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property FullName: WideString read Get_FullName;
    property Name: WideString read Get_Name;
    property Path: WideString read Get_Path;
    property Registered: MsoTriState read Get_Registered write Set_Registered;
    property AutoLoad: MsoTriState read Get_AutoLoad write Set_AutoLoad;
    property Loaded: MsoTriState read Get_Loaded write Set_Loaded;
    property DisplayAlerts: MsoTriState read Get_DisplayAlerts write Set_DisplayAlerts;
    property RegisteredInHKLM: MsoTriState read Get_RegisteredInHKLM;
  end;

// *********************************************************************//
// DispIntf:  AddInDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493461-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  AddInDisp = dispinterface
    ['{91493461-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property FullName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2003;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2004;
    property Path {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2005;
    property Registered {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2006;
    property AutoLoad {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2007;
    property Loaded {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2008;
    property DisplayAlerts {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2009;
    property RegisteredInHKLM {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2010;
  end;

// *********************************************************************//
// Interface: Presentations
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493462-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Presentations = interface(Collection)
    ['{91493462-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): PowerPointPresentation; safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}WithWindow: MsoTriState): PowerPointPresentation; safecall;
    function  Open {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString; 
                                                        {VT_29:0}ReadOnly: MsoTriState; 
                                                        {VT_29:0}Untitled: MsoTriState; 
                                                        {VT_29:0}WithWindow: MsoTriState): PowerPointPresentation; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  PresentationsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493462-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PresentationsDisp = dispinterface
    ['{91493462-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): PowerPointPresentation; dispid 0;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}WithWindow: MsoTriState): PowerPointPresentation; dispid 2003;
    function  Open {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString; 
                                                        {VT_29:0}ReadOnly: MsoTriState; 
                                                        {VT_29:0}Untitled: MsoTriState; 
                                                        {VT_29:0}WithWindow: MsoTriState): PowerPointPresentation; dispid 2004;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: PresEvents
// Flags:     (16) Hidden
// GUID:      {91493463-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PresEvents = interface(IUnknown)
    ['{91493463-5A91-11CF-8700-00AA0060263B}']
  end;

// *********************************************************************//
// Interface: _Presentation
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349D-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  _Presentation = interface(IDispatch)
    ['{9149349D-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_SlideMaster {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Master; safecall;
    function  Get_TitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Master; safecall;
    function  Get_HasTitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  AddTitleMaster {Flags(1), (1/0) CC:0, INV:1, DBG:6}: _Master; safecall;
    procedure ApplyTemplate {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString); safecall;
    function  Get_TemplateName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_NotesMaster {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Master; safecall;
    function  Get_HandoutMaster {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Master; safecall;
    function  Get_Slides {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Slides; safecall;
    function  Get_PageSetup {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PageSetup; safecall;
    function  Get_ColorSchemes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorSchemes; safecall;
    function  Get_ExtraColors {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ExtraColors; safecall;
    function  Get_SlideShowSettings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SlideShowSettings; safecall;
    function  Get_Fonts {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Fonts; safecall;
    function  Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:6}: DocumentWindows; safecall;
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Tags; safecall;
    function  Get_DefaultShape {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Shape; safecall;
    function  Get_BuiltInDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_CustomDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_VBProject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: VBProject; safecall;
    function  Get_ReadOnly {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_FullName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Saved {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Saved: MsoTriState); safecall;
    function  Get_LayoutDirection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpDirection; safecall;
    procedure Set_LayoutDirection {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}LayoutDirection: PpDirection); safecall;
    function  NewWindow {Flags(1), (1/0) CC:0, INV:1, DBG:6}: DocumentWindow; safecall;
    procedure FollowHyperlink {Flags(1), (7/7) CC:0, INV:1, DBG:6}({VT_8:0}const Address: WideString; 
                                                                   {VT_8:0}const SubAddress: WideString; 
                                                                   {VT_11:0}NewWindow: WordBool; 
                                                                   {VT_11:0}AddHistory: WordBool; 
                                                                   {VT_8:0}const ExtraInfo: WideString; 
                                                                   {VT_29:0}Method: MsoExtraInfoMethod; 
                                                                   {VT_8:0}const HeaderInfo: WideString); safecall;
    procedure AddToFavorites {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Unused {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_PrintOptions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PrintOptions; safecall;
    procedure PrintOut {Flags(1), (5/5) CC:0, INV:1, DBG:6}({VT_22:0}From: SYSINT; 
                                                            {VT_22:0}To_: SYSINT; 
                                                            {VT_8:0}const PrintToFile: WideString; 
                                                            {VT_22:0}Copies: SYSINT; 
                                                            {VT_29:0}Collate: MsoTriState); safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString; 
                                                          {VT_29:0}FileFormat: PpSaveAsFileType; 
                                                          {VT_29:0}EmbedTrueTypeFonts: MsoTriState); safecall;
    procedure SaveCopyAs {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString; 
                                                              {VT_29:0}FileFormat: PpSaveAsFileType; 
                                                              {VT_29:0}EmbedTrueTypeFonts: MsoTriState); safecall;
    procedure Export {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_8:0}const FilterName: WideString; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT); safecall;
    procedure Close {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SetUndoText {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Text: WideString); safecall;
    function  Get_Container {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_DisplayComments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_DisplayComments {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}DisplayComments: MsoTriState); safecall;
    function  Get_FarEastLineBreakLevel {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpFarEastLineBreakLevel; safecall;
    procedure Set_FarEastLineBreakLevel {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FarEastLineBreakLevel: PpFarEastLineBreakLevel); safecall;
    function  Get_NoLineBreakBefore {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NoLineBreakBefore {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NoLineBreakBefore: WideString); safecall;
    function  Get_NoLineBreakAfter {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NoLineBreakAfter {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NoLineBreakAfter: WideString); safecall;
    procedure UpdateLinks {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_SlideShowWindow {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SlideShowWindow; safecall;
    function  Get_FarEastLineBreakLanguage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoFarEastLineBreakLanguageID; safecall;
    procedure Set_FarEastLineBreakLanguage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FarEastLineBreakLanguage: MsoFarEastLineBreakLanguageID); safecall;
    procedure WebPagePreview {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_DefaultLanguageID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoLanguageID; safecall;
    procedure Set_DefaultLanguageID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}DefaultLanguageID: MsoLanguageID); safecall;
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBars; safecall;
    function  Get_PublishObjects {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PublishObjects; safecall;
    function  Get_WebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WebOptions; safecall;
    function  Get_HTMLProject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: HTMLProject; safecall;
    procedure ReloadAs {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}cp: MsoEncoding); safecall;
    procedure MakeIntoTemplate {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}IsDesignTemplate: MsoTriState); safecall;
    function  Get_EnvelopeVisible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_EnvelopeVisible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}EnvelopeVisible: MsoTriState); safecall;
    procedure sblt {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const s: WideString); safecall;
    function  Get_VBASigned {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property SlideMaster: _Master read Get_SlideMaster;
    property TitleMaster: _Master read Get_TitleMaster;
    property HasTitleMaster: MsoTriState read Get_HasTitleMaster;
    property TemplateName: WideString read Get_TemplateName;
    property NotesMaster: _Master read Get_NotesMaster;
    property HandoutMaster: _Master read Get_HandoutMaster;
    property Slides: Slides read Get_Slides;
    property PageSetup: PageSetup read Get_PageSetup;
    property ColorSchemes: ColorSchemes read Get_ColorSchemes;
    property ExtraColors: ExtraColors read Get_ExtraColors;
    property SlideShowSettings: SlideShowSettings read Get_SlideShowSettings;
    property Fonts: Fonts read Get_Fonts;
    property Windows: DocumentWindows read Get_Windows;
    property Tags: Tags read Get_Tags;
    property DefaultShape: Shape read Get_DefaultShape;
    property BuiltInDocumentProperties: IDispatch read Get_BuiltInDocumentProperties;
    property CustomDocumentProperties: IDispatch read Get_CustomDocumentProperties;
    property VBProject: VBProject read Get_VBProject;
    property ReadOnly: MsoTriState read Get_ReadOnly;
    property FullName: WideString read Get_FullName;
    property Name: WideString read Get_Name;
    property Path: WideString read Get_Path;
    property Saved: MsoTriState read Get_Saved write Set_Saved;
    property LayoutDirection: PpDirection read Get_LayoutDirection write Set_LayoutDirection;
    property PrintOptions: PrintOptions read Get_PrintOptions;
    property Container: IDispatch read Get_Container;
    property DisplayComments: MsoTriState read Get_DisplayComments write Set_DisplayComments;
    property FarEastLineBreakLevel: PpFarEastLineBreakLevel read Get_FarEastLineBreakLevel write Set_FarEastLineBreakLevel;
    property NoLineBreakBefore: WideString read Get_NoLineBreakBefore write Set_NoLineBreakBefore;
    property NoLineBreakAfter: WideString read Get_NoLineBreakAfter write Set_NoLineBreakAfter;
    property SlideShowWindow: SlideShowWindow read Get_SlideShowWindow;
    property FarEastLineBreakLanguage: MsoFarEastLineBreakLanguageID read Get_FarEastLineBreakLanguage write Set_FarEastLineBreakLanguage;
    property DefaultLanguageID: MsoLanguageID read Get_DefaultLanguageID write Set_DefaultLanguageID;
    property CommandBars: CommandBars read Get_CommandBars;
    property PublishObjects: PublishObjects read Get_PublishObjects;
    property WebOptions: WebOptions read Get_WebOptions;
    property HTMLProject: HTMLProject read Get_HTMLProject;
    property EnvelopeVisible: MsoTriState read Get_EnvelopeVisible write Set_EnvelopeVisible;
    property VBASigned: MsoTriState read Get_VBASigned;
  end;

// *********************************************************************//
// DispIntf:  _PresentationDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349D-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  _PresentationDisp = dispinterface
    ['{9149349D-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property SlideMaster {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Master readonly dispid 2003;
    property TitleMaster {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Master readonly dispid 2004;
    property HasTitleMaster {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2005;
    function  AddTitleMaster {Flags(2), (1/0) CC:0, INV:1, DBG:4}: _Master; dispid 2006;
    procedure ApplyTemplate {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString); dispid 2007;
    property TemplateName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2008;
    property NotesMaster {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Master readonly dispid 2009;
    property HandoutMaster {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Master readonly dispid 2010;
    property Slides {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Slides readonly dispid 2011;
    property PageSetup {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PageSetup readonly dispid 2012;
    property ColorSchemes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorSchemes readonly dispid 2013;
    property ExtraColors {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ExtraColors readonly dispid 2014;
    property SlideShowSettings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SlideShowSettings readonly dispid 2015;
    property Fonts {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Fonts readonly dispid 2016;
    property Windows {Flags(2), (1/0) CC:0, INV:2, DBG:6}: DocumentWindows readonly dispid 2017;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 2018;
    property DefaultShape {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Shape readonly dispid 2019;
    property BuiltInDocumentProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2020;
    property CustomDocumentProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2021;
    property VBProject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: VBProject readonly dispid 2022;
    property ReadOnly {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2023;
    property FullName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2024;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2025;
    property Path {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2026;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2027;
    property LayoutDirection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpDirection dispid 2028;
    function  NewWindow {Flags(2), (1/0) CC:0, INV:1, DBG:4}: DocumentWindow; dispid 2029;
    procedure FollowHyperlink {Flags(2), (7/7) CC:0, INV:1, DBG:4}({VT_8:0}const Address: WideString; 
                                                                   {VT_8:0}const SubAddress: WideString; 
                                                                   {VT_11:0}NewWindow: WordBool; 
                                                                   {VT_11:0}AddHistory: WordBool; 
                                                                   {VT_8:0}const ExtraInfo: WideString; 
                                                                   {VT_29:0}Method: MsoExtraInfoMethod; 
                                                                   {VT_8:0}const HeaderInfo: WideString); dispid 2030;
    procedure AddToFavorites {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2031;
    procedure Unused {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2032;
    property PrintOptions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PrintOptions readonly dispid 2033;
    procedure PrintOut {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_22:0}From: SYSINT; 
                                                            {VT_22:0}To_: SYSINT; 
                                                            {VT_8:0}const PrintToFile: WideString; 
                                                            {VT_22:0}Copies: SYSINT; 
                                                            {VT_29:0}Collate: MsoTriState); dispid 2034;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2035;
    procedure SaveAs {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString; 
                                                          {VT_29:0}FileFormat: PpSaveAsFileType; 
                                                          {VT_29:0}EmbedTrueTypeFonts: MsoTriState); dispid 2036;
    procedure SaveCopyAs {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString; 
                                                              {VT_29:0}FileFormat: PpSaveAsFileType; 
                                                              {VT_29:0}EmbedTrueTypeFonts: MsoTriState); dispid 2037;
    procedure Export {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_8:0}const FilterName: WideString; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT); dispid 2038;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2039;
    procedure SetUndoText {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Text: WideString); dispid 2040;
    property Container {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2041;
    property DisplayComments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2042;
    property FarEastLineBreakLevel {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpFarEastLineBreakLevel dispid 2043;
    property NoLineBreakBefore {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2044;
    property NoLineBreakAfter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2045;
    procedure UpdateLinks {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2046;
    property SlideShowWindow {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SlideShowWindow readonly dispid 2047;
    property FarEastLineBreakLanguage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoFarEastLineBreakLanguageID dispid 2048;
    procedure WebPagePreview {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2049;
    property DefaultLanguageID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoLanguageID dispid 2050;
    property CommandBars {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBars readonly dispid 2051;
    property PublishObjects {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PublishObjects readonly dispid 2052;
    property WebOptions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WebOptions readonly dispid 2053;
    property HTMLProject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: HTMLProject readonly dispid 2054;
    procedure ReloadAs {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}cp: MsoEncoding); dispid 2055;
    procedure MakeIntoTemplate {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}IsDesignTemplate: MsoTriState); dispid 2056;
    property EnvelopeVisible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2057;
    procedure sblt {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const s: WideString); dispid 2058;
    property VBASigned {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2059;
  end;

// *********************************************************************//
// Interface: Hyperlinks
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493464-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Hyperlinks = interface(Collection)
    ['{91493464-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): Hyperlink; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  HyperlinksDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493464-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  HyperlinksDisp = dispinterface
    ['{91493464-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): Hyperlink; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: Hyperlink
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493465-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Hyperlink = interface(IDispatch)
    ['{91493465-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoHyperlinkType; safecall;
    function  Get_Address {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Address {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Address: WideString); safecall;
    function  Get_SubAddress {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_SubAddress {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const SubAddress: WideString); safecall;
    procedure AddToFavorites {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_EmailSubject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_EmailSubject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const EmailSubject: WideString); safecall;
    function  Get_ScreenTip {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ScreenTip {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ScreenTip: WideString); safecall;
    function  Get_TextToDisplay {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_TextToDisplay {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const TextToDisplay: WideString); safecall;
    function  Get_ShowandReturn {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_ShowandReturn {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ShowandReturn: MsoTriState); safecall;
    procedure Follow {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure CreateNewDocument {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString; 
                                                                     {VT_29:0}EditNow: MsoTriState; 
                                                                     {VT_29:0}Overwrite: MsoTriState); safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Type_: MsoHyperlinkType read Get_Type_;
    property Address: WideString read Get_Address write Set_Address;
    property SubAddress: WideString read Get_SubAddress write Set_SubAddress;
    property EmailSubject: WideString read Get_EmailSubject write Set_EmailSubject;
    property ScreenTip: WideString read Get_ScreenTip write Set_ScreenTip;
    property TextToDisplay: WideString read Get_TextToDisplay write Set_TextToDisplay;
    property ShowandReturn: MsoTriState read Get_ShowandReturn write Set_ShowandReturn;
  end;

// *********************************************************************//
// DispIntf:  HyperlinkDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493465-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  HyperlinkDisp = dispinterface
    ['{91493465-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoHyperlinkType readonly dispid 2003;
    property Address {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2004;
    property SubAddress {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2005;
    procedure AddToFavorites {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2006;
    property EmailSubject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2007;
    property ScreenTip {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2008;
    property TextToDisplay {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2009;
    property ShowandReturn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2010;
    procedure Follow {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2011;
    procedure CreateNewDocument {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString; 
                                                                     {VT_29:0}EditNow: MsoTriState; 
                                                                     {VT_29:0}Overwrite: MsoTriState); dispid 2012;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2013;
  end;

// *********************************************************************//
// Interface: PageSetup
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493466-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PageSetup = interface(IDispatch)
    ['{91493466-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_FirstSlideNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_FirstSlideNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}FirstSlideNumber: SYSINT); safecall;
    function  Get_SlideHeight {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_SlideHeight {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}SlideHeight: Single); safecall;
    function  Get_SlideWidth {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_SlideWidth {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}SlideWidth: Single); safecall;
    function  Get_SlideSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSlideSizeType; safecall;
    procedure Set_SlideSize {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}SlideSize: PpSlideSizeType); safecall;
    function  Get_NotesOrientation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoOrientation; safecall;
    procedure Set_NotesOrientation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}NotesOrientation: MsoOrientation); safecall;
    function  Get_SlideOrientation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoOrientation; safecall;
    procedure Set_SlideOrientation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}SlideOrientation: MsoOrientation); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property FirstSlideNumber: SYSINT read Get_FirstSlideNumber write Set_FirstSlideNumber;
    property SlideHeight: Single read Get_SlideHeight write Set_SlideHeight;
    property SlideWidth: Single read Get_SlideWidth write Set_SlideWidth;
    property SlideSize: PpSlideSizeType read Get_SlideSize write Set_SlideSize;
    property NotesOrientation: MsoOrientation read Get_NotesOrientation write Set_NotesOrientation;
    property SlideOrientation: MsoOrientation read Get_SlideOrientation write Set_SlideOrientation;
  end;

// *********************************************************************//
// DispIntf:  PageSetupDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493466-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PageSetupDisp = dispinterface
    ['{91493466-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property FirstSlideNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2003;
    property SlideHeight {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2004;
    property SlideWidth {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2005;
    property SlideSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSlideSizeType dispid 2006;
    property NotesOrientation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoOrientation dispid 2007;
    property SlideOrientation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoOrientation dispid 2008;
  end;

// *********************************************************************//
// Interface: Fonts
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493467-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Fonts = interface(Collection)
    ['{91493467-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): Font; safecall;
    procedure Replace {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Original: WideString; 
                                                           {VT_8:0}const Replacement: WideString); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  FontsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493467-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FontsDisp = dispinterface
    ['{91493467-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): Font; dispid 0;
    procedure Replace {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Original: WideString; 
                                                           {VT_8:0}const Replacement: WideString); dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: ExtraColors
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493468-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ExtraColors = interface(Collection)
    ['{91493468-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): MsoRGBType; safecall;
    procedure Add {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Type_: MsoRGBType); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  ExtraColorsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493468-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ExtraColorsDisp = dispinterface
    ['{91493468-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): MsoRGBType; dispid 0;
    procedure Add {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Type_: MsoRGBType); dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: Slides
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493469-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Slides = interface(Collection)
    ['{91493469-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): PowerPointSlide; safecall;
    function  FindBySlideID {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_3:0}SlideID: Integer): PowerPointSlide; safecall;
    function  Add {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT; 
                                                       {VT_29:0}Layout: PpSlideLayout): PowerPointSlide; safecall;
    function  InsertFromFile {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString; 
                                                                  {VT_22:0}index: SYSINT; 
                                                                  {VT_22:0}SlideStart: SYSINT; 
                                                                  {VT_22:0}SlideEnd: SYSINT): SYSINT; safecall;
    function  Range {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): SlideRange; safecall;
    function  Paste {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): SlideRange; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  SlidesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493469-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlidesDisp = dispinterface
    ['{91493469-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): PowerPointSlide; dispid 0;
    function  FindBySlideID {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_3:0}SlideID: Integer): PowerPointSlide; dispid 2003;
    function  Add {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT; 
                                                       {VT_29:0}Layout: PpSlideLayout): PowerPointSlide; dispid 2004;
    function  InsertFromFile {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString; 
                                                                  {VT_22:0}index: SYSINT; 
                                                                  {VT_22:0}SlideStart: SYSINT; 
                                                                  {VT_22:0}SlideEnd: SYSINT): SYSINT; dispid 2005;
    function  Range {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): SlideRange; dispid 2006;
    function  Paste {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): SlideRange; dispid 2007;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: _Slide
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149346A-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  _Slide = interface(IDispatch)
    ['{9149346A-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Shapes; safecall;
    function  Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:6}: HeadersFooters; safecall;
    function  Get_SlideShowTransition {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SlideShowTransition; safecall;
    function  Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorScheme; safecall;
    procedure Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:1}const ColorScheme: ColorScheme); safecall;
    function  Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ShapeRange; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_SlideID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_PrintSteps {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Select {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Cut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Copy {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Layout {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSlideLayout; safecall;
    procedure Set_Layout {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Layout: PpSlideLayout); safecall;
    function  Duplicate {Flags(1), (1/0) CC:0, INV:1, DBG:6}: SlideRange; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Tags; safecall;
    function  Get_SlideIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_SlideNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_DisplayMasterShapes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_DisplayMasterShapes {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}DisplayMasterShapes: MsoTriState); safecall;
    function  Get_FollowMasterBackground {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_FollowMasterBackground {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FollowMasterBackground: MsoTriState); safecall;
    function  Get_NotesPage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SlideRange; safecall;
    function  Get_Master {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Master; safecall;
    function  Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Hyperlinks; safecall;
    procedure Export {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString; 
                                                          {VT_8:0}const FilterName: WideString; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT); safecall;
    function  Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Scripts; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Shapes: Shapes read Get_Shapes;
    property HeadersFooters: HeadersFooters read Get_HeadersFooters;
    property SlideShowTransition: SlideShowTransition read Get_SlideShowTransition;
    property ColorScheme: ColorScheme read Get_ColorScheme write Set_ColorScheme;
    property Background: ShapeRange read Get_Background;
    property Name: WideString read Get_Name write Set_Name;
    property SlideID: Integer read Get_SlideID;
    property PrintSteps: SYSINT read Get_PrintSteps;
    property Layout: PpSlideLayout read Get_Layout write Set_Layout;
    property Tags: Tags read Get_Tags;
    property SlideIndex: SYSINT read Get_SlideIndex;
    property SlideNumber: SYSINT read Get_SlideNumber;
    property DisplayMasterShapes: MsoTriState read Get_DisplayMasterShapes write Set_DisplayMasterShapes;
    property FollowMasterBackground: MsoTriState read Get_FollowMasterBackground write Set_FollowMasterBackground;
    property NotesPage: SlideRange read Get_NotesPage;
    property Master: _Master read Get_Master;
    property Hyperlinks: Hyperlinks read Get_Hyperlinks;
    property Scripts: Scripts read Get_Scripts;
  end;

// *********************************************************************//
// DispIntf:  _SlideDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149346A-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  _SlideDisp = dispinterface
    ['{9149346A-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Shapes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Shapes readonly dispid 2003;
    property HeadersFooters {Flags(2), (1/0) CC:0, INV:2, DBG:6}: HeadersFooters readonly dispid 2004;
    property SlideShowTransition {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SlideShowTransition readonly dispid 2005;
    property ColorScheme {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorScheme dispid 2006;
    property Background {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ShapeRange readonly dispid 2007;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2008;
    property SlideID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2009;
    property PrintSteps {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2010;
    procedure Select {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2011;
    procedure Cut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2012;
    procedure Copy {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2013;
    property Layout {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSlideLayout dispid 2014;
    function  Duplicate {Flags(2), (1/0) CC:0, INV:1, DBG:4}: SlideRange; dispid 2015;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2016;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 2017;
    property SlideIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2018;
    property SlideNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2019;
    property DisplayMasterShapes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2020;
    property FollowMasterBackground {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2021;
    property NotesPage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SlideRange readonly dispid 2022;
    property Master {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Master readonly dispid 2023;
    property Hyperlinks {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Hyperlinks readonly dispid 2024;
    procedure Export {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString; 
                                                          {VT_8:0}const FilterName: WideString; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT); dispid 2025;
    property Scripts {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Scripts readonly dispid 2026;
  end;

// *********************************************************************//
// Interface: SlideRange
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149346B-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideRange = interface(IDispatch)
    ['{9149346B-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Shapes; safecall;
    function  Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:6}: HeadersFooters; safecall;
    function  Get_SlideShowTransition {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SlideShowTransition; safecall;
    function  Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorScheme; safecall;
    procedure Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:1}const ColorScheme: ColorScheme); safecall;
    function  Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ShapeRange; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_SlideID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_PrintSteps {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Select {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Cut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Copy {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Layout {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSlideLayout; safecall;
    procedure Set_Layout {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Layout: PpSlideLayout); safecall;
    function  Duplicate {Flags(1), (1/0) CC:0, INV:1, DBG:6}: SlideRange; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Tags; safecall;
    function  Get_SlideIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_SlideNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_DisplayMasterShapes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_DisplayMasterShapes {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}DisplayMasterShapes: MsoTriState); safecall;
    function  Get_FollowMasterBackground {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_FollowMasterBackground {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FollowMasterBackground: MsoTriState); safecall;
    function  Get_NotesPage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SlideRange; safecall;
    function  Get_Master {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Master; safecall;
    function  Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Hyperlinks; safecall;
    procedure Export {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString; 
                                                          {VT_8:0}const FilterName: WideString; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT); safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): PowerPointSlide; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  _Index {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): OleVariant; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Scripts; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Shapes: Shapes read Get_Shapes;
    property HeadersFooters: HeadersFooters read Get_HeadersFooters;
    property SlideShowTransition: SlideShowTransition read Get_SlideShowTransition;
    property ColorScheme: ColorScheme read Get_ColorScheme write Set_ColorScheme;
    property Background: ShapeRange read Get_Background;
    property Name: WideString read Get_Name write Set_Name;
    property SlideID: Integer read Get_SlideID;
    property PrintSteps: SYSINT read Get_PrintSteps;
    property Layout: PpSlideLayout read Get_Layout write Set_Layout;
    property Tags: Tags read Get_Tags;
    property SlideIndex: SYSINT read Get_SlideIndex;
    property SlideNumber: SYSINT read Get_SlideNumber;
    property DisplayMasterShapes: MsoTriState read Get_DisplayMasterShapes write Set_DisplayMasterShapes;
    property FollowMasterBackground: MsoTriState read Get_FollowMasterBackground write Set_FollowMasterBackground;
    property NotesPage: SlideRange read Get_NotesPage;
    property Master: _Master read Get_Master;
    property Hyperlinks: Hyperlinks read Get_Hyperlinks;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property Scripts: Scripts read Get_Scripts;
  end;

// *********************************************************************//
// DispIntf:  SlideRangeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149346B-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideRangeDisp = dispinterface
    ['{9149346B-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Shapes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Shapes readonly dispid 2003;
    property HeadersFooters {Flags(2), (1/0) CC:0, INV:2, DBG:6}: HeadersFooters readonly dispid 2004;
    property SlideShowTransition {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SlideShowTransition readonly dispid 2005;
    property ColorScheme {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorScheme dispid 2006;
    property Background {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ShapeRange readonly dispid 2007;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2008;
    property SlideID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2009;
    property PrintSteps {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2010;
    procedure Select {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2011;
    procedure Cut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2012;
    procedure Copy {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2013;
    property Layout {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSlideLayout dispid 2014;
    function  Duplicate {Flags(2), (1/0) CC:0, INV:1, DBG:4}: SlideRange; dispid 2015;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2016;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 2017;
    property SlideIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2018;
    property SlideNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2019;
    property DisplayMasterShapes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2020;
    property FollowMasterBackground {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2021;
    property NotesPage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SlideRange readonly dispid 2022;
    property Master {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Master readonly dispid 2023;
    property Hyperlinks {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Hyperlinks readonly dispid 2024;
    procedure Export {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString; 
                                                          {VT_8:0}const FilterName: WideString; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT); dispid 2025;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): PowerPointSlide; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
    property Scripts {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Scripts readonly dispid 2026;
  end;

// *********************************************************************//
// Interface: _Master
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149346C-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  _Master = interface(IDispatch)
    ['{9149346C-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Shapes; safecall;
    function  Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:6}: HeadersFooters; safecall;
    function  Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorScheme; safecall;
    procedure Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:1}const ColorScheme: ColorScheme); safecall;
    function  Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ShapeRange; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_TextStyles {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TextStyles; safecall;
    function  Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Hyperlinks; safecall;
    function  Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Scripts; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Shapes: Shapes read Get_Shapes;
    property HeadersFooters: HeadersFooters read Get_HeadersFooters;
    property ColorScheme: ColorScheme read Get_ColorScheme write Set_ColorScheme;
    property Background: ShapeRange read Get_Background;
    property Name: WideString read Get_Name write Set_Name;
    property Height: Single read Get_Height;
    property Width: Single read Get_Width;
    property TextStyles: TextStyles read Get_TextStyles;
    property Hyperlinks: Hyperlinks read Get_Hyperlinks;
    property Scripts: Scripts read Get_Scripts;
  end;

// *********************************************************************//
// DispIntf:  _MasterDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149346C-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  _MasterDisp = dispinterface
    ['{9149346C-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Shapes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Shapes readonly dispid 2003;
    property HeadersFooters {Flags(2), (1/0) CC:0, INV:2, DBG:6}: HeadersFooters readonly dispid 2004;
    property ColorScheme {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorScheme dispid 2005;
    property Background {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ShapeRange readonly dispid 2006;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2007;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2008;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2010;
    property TextStyles {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TextStyles readonly dispid 2011;
    property Hyperlinks {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Hyperlinks readonly dispid 2012;
    property Scripts {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Scripts readonly dispid 2013;
  end;

// *********************************************************************//
// Interface: SldEvents
// Flags:     (16) Hidden
// GUID:      {9149346D-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SldEvents = interface(IUnknown)
    ['{9149346D-5A91-11CF-8700-00AA0060263B}']
  end;

// *********************************************************************//
// Interface: ColorSchemes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149346E-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ColorSchemes = interface(Collection)
    ['{9149346E-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): ColorScheme; safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const Scheme: ColorScheme): ColorScheme; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  ColorSchemesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149346E-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ColorSchemesDisp = dispinterface
    ['{9149346E-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): ColorScheme; dispid 0;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const Scheme: ColorScheme): ColorScheme; dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: ColorScheme
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149346F-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ColorScheme = interface(Collection)
    ['{9149346F-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Colors {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}SchemeColor: PpColorSchemeIndex): RGBColor; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  ColorSchemeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149346F-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ColorSchemeDisp = dispinterface
    ['{9149346F-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Colors {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}SchemeColor: PpColorSchemeIndex): RGBColor; dispid 0;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: RGBColor
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493470-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  RGBColor = interface(IDispatch)
    ['{91493470-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_RGB {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType; safecall;
    procedure Set_RGB {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}RGB: MsoRGBType); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property RGB: MsoRGBType read Get_RGB write Set_RGB;
  end;

// *********************************************************************//
// DispIntf:  RGBColorDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493470-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  RGBColorDisp = dispinterface
    ['{91493470-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property RGB {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType dispid 0;
  end;

// *********************************************************************//
// Interface: SlideShowTransition
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493471-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideShowTransition = interface(IDispatch)
    ['{91493471-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_AdvanceOnClick {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AdvanceOnClick {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AdvanceOnClick: MsoTriState); safecall;
    function  Get_AdvanceOnTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AdvanceOnTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AdvanceOnTime: MsoTriState); safecall;
    function  Get_AdvanceTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_AdvanceTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}AdvanceTime: Single); safecall;
    function  Get_EntryEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpEntryEffect; safecall;
    procedure Set_EntryEffect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}EntryEffect: PpEntryEffect); safecall;
    function  Get_Hidden {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Hidden {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Hidden: MsoTriState); safecall;
    function  Get_LoopSoundUntilNext {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_LoopSoundUntilNext {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}LoopSoundUntilNext: MsoTriState); safecall;
    function  Get_SoundEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SoundEffect; safecall;
    function  Get_Speed {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpTransitionSpeed; safecall;
    procedure Set_Speed {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Speed: PpTransitionSpeed); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property AdvanceOnClick: MsoTriState read Get_AdvanceOnClick write Set_AdvanceOnClick;
    property AdvanceOnTime: MsoTriState read Get_AdvanceOnTime write Set_AdvanceOnTime;
    property AdvanceTime: Single read Get_AdvanceTime write Set_AdvanceTime;
    property EntryEffect: PpEntryEffect read Get_EntryEffect write Set_EntryEffect;
    property Hidden: MsoTriState read Get_Hidden write Set_Hidden;
    property LoopSoundUntilNext: MsoTriState read Get_LoopSoundUntilNext write Set_LoopSoundUntilNext;
    property SoundEffect: SoundEffect read Get_SoundEffect;
    property Speed: PpTransitionSpeed read Get_Speed write Set_Speed;
  end;

// *********************************************************************//
// DispIntf:  SlideShowTransitionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493471-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SlideShowTransitionDisp = dispinterface
    ['{91493471-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property AdvanceOnClick {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2003;
    property AdvanceOnTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2004;
    property AdvanceTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2005;
    property EntryEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpEntryEffect dispid 2006;
    property Hidden {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2007;
    property LoopSoundUntilNext {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2008;
    property SoundEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SoundEffect readonly dispid 2009;
    property Speed {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpTransitionSpeed dispid 2010;
  end;

// *********************************************************************//
// Interface: SoundEffect
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493472-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SoundEffect = interface(IDispatch)
    ['{91493472-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSoundEffectType; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Type_: PpSoundEffectType); safecall;
    procedure ImportFromFile {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString); safecall;
    procedure Play {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Name: WideString read Get_Name write Set_Name;
    property Type_: PpSoundEffectType read Get_Type_ write Set_Type_;
  end;

// *********************************************************************//
// DispIntf:  SoundEffectDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493472-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SoundEffectDisp = dispinterface
    ['{91493472-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2003;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSoundEffectType dispid 2004;
    procedure ImportFromFile {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString); dispid 2005;
    procedure Play {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2006;
  end;

// *********************************************************************//
// Interface: SoundFormat
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493473-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SoundFormat = interface(IDispatch)
    ['{91493473-5A91-11CF-8700-00AA0060263B}']
    procedure Play {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Import {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString); safecall;
    function  Export {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString): PpSoundFormatType; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpSoundFormatType; safecall;
    function  Get_SourceFullName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    property Type_: PpSoundFormatType read Get_Type_;
    property SourceFullName: WideString read Get_SourceFullName;
  end;

// *********************************************************************//
// DispIntf:  SoundFormatDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493473-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  SoundFormatDisp = dispinterface
    ['{91493473-5A91-11CF-8700-00AA0060263B}']
    procedure Play {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2000;
    procedure Import {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString); dispid 2001;
    function  Export {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString): PpSoundFormatType; dispid 2002;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpSoundFormatType readonly dispid 2003;
    property SourceFullName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2004;
  end;

// *********************************************************************//
// Interface: HeadersFooters
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493474-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  HeadersFooters = interface(IDispatch)
    ['{91493474-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_DateAndTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: HeaderFooter; safecall;
    function  Get_SlideNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: HeaderFooter; safecall;
    function  Get_Header {Flags(1), (1/0) CC:0, INV:2, DBG:6}: HeaderFooter; safecall;
    function  Get_Footer {Flags(1), (1/0) CC:0, INV:2, DBG:6}: HeaderFooter; safecall;
    function  Get_DisplayOnTitleSlide {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_DisplayOnTitleSlide {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}DisplayOnTitleSlide: MsoTriState); safecall;
    procedure Clear {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property DateAndTime: HeaderFooter read Get_DateAndTime;
    property SlideNumber: HeaderFooter read Get_SlideNumber;
    property Header: HeaderFooter read Get_Header;
    property Footer: HeaderFooter read Get_Footer;
    property DisplayOnTitleSlide: MsoTriState read Get_DisplayOnTitleSlide write Set_DisplayOnTitleSlide;
  end;

// *********************************************************************//
// DispIntf:  HeadersFootersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493474-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  HeadersFootersDisp = dispinterface
    ['{91493474-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property DateAndTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: HeaderFooter readonly dispid 2003;
    property SlideNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: HeaderFooter readonly dispid 2004;
    property Header {Flags(2), (1/0) CC:0, INV:2, DBG:6}: HeaderFooter readonly dispid 2005;
    property Footer {Flags(2), (1/0) CC:0, INV:2, DBG:6}: HeaderFooter readonly dispid 2006;
    property DisplayOnTitleSlide {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2007;
    procedure Clear {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2008;
  end;

// *********************************************************************//
// Interface: Shapes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493475-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Shapes = interface(IDispatch)
    ['{91493475-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): Shape; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  AddCallout {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_29:0}Type_: MsoCalloutType; 
                                                              {VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): Shape; safecall;
    function  AddConnector {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_29:0}Type_: MsoConnectorType; 
                                                                {VT_4:0}BeginX: Single; 
                                                                {VT_4:0}BeginY: Single; 
                                                                {VT_4:0}EndX: Single; 
                                                                {VT_4:0}EndY: Single): Shape; safecall;
    function  AddCurve {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}SafeArrayOfPoints: OleVariant): Shape; safecall;
    function  AddLabel {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_29:0}Orientation: MsoTextOrientation; 
                                                            {VT_4:0}Left: Single; 
                                                            {VT_4:0}Top: Single; 
                                                            {VT_4:0}Width: Single; 
                                                            {VT_4:0}Height: Single): Shape; safecall;
    function  AddLine {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}BeginX: Single; 
                                                           {VT_4:0}BeginY: Single; 
                                                           {VT_4:0}EndX: Single; 
                                                           {VT_4:0}EndY: Single): Shape; safecall;
    function  AddPicture {Flags(1), (8/7) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString; 
                                                              {VT_29:0}LinkToFile: MsoTriState; 
                                                              {VT_29:0}SaveWithDocument: MsoTriState; 
                                                              {VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): Shape; safecall;
    function  AddPolyline {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}SafeArrayOfPoints: OleVariant): Shape; safecall;
    function  AddShape {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_29:0}Type_: MsoAutoShapeType; 
                                                            {VT_4:0}Left: Single; 
                                                            {VT_4:0}Top: Single; 
                                                            {VT_4:0}Width: Single; 
                                                            {VT_4:0}Height: Single): Shape; safecall;
    function  AddTextEffect {Flags(1), (9/8) CC:0, INV:1, DBG:6}({VT_29:0}PresetTextEffect: MsoPresetTextEffect; 
                                                                 {VT_8:0}const Text: WideString; 
                                                                 {VT_8:0}const FontName: WideString; 
                                                                 {VT_4:0}FontSize: Single; 
                                                                 {VT_29:0}FontBold: MsoTriState; 
                                                                 {VT_29:0}FontItalic: MsoTriState; 
                                                                 {VT_4:0}Left: Single; 
                                                                 {VT_4:0}Top: Single): Shape; safecall;
    function  AddTextbox {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_29:0}Orientation: MsoTextOrientation; 
                                                              {VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): Shape; safecall;
    function  BuildFreeform {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_29:0}EditingType: MsoEditingType; 
                                                                 {VT_4:0}X1: Single; 
                                                                 {VT_4:0}Y1: Single): FreeformBuilder; safecall;
    procedure SelectAll {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Range {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): ShapeRange; safecall;
    function  Get_HasTitle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  AddTitle {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Shape; safecall;
    function  Get_Title {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Shape; safecall;
    function  Get_Placeholders {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Placeholders; safecall;
    function  AddOLEObject {Flags(1), (12/11) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                                  {VT_4:0}Top: Single; 
                                                                  {VT_4:0}Width: Single; 
                                                                  {VT_4:0}Height: Single; 
                                                                  {VT_8:0}const ClassName: WideString; 
                                                                  {VT_8:0}const FileName: WideString; 
                                                                  {VT_29:0}DisplayAsIcon: MsoTriState; 
                                                                  {VT_8:0}const IconFileName: WideString; 
                                                                  {VT_22:0}IconIndex: SYSINT; 
                                                                  {VT_8:0}const IconLabel: WideString; 
                                                                  {VT_29:0}Link: MsoTriState): Shape; safecall;
    function  AddComment {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): Shape; safecall;
    function  AddPlaceholder {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_29:0}Type_: PpPlaceholderType; 
                                                                  {VT_4:0}Left: Single; 
                                                                  {VT_4:0}Top: Single; 
                                                                  {VT_4:0}Width: Single; 
                                                                  {VT_4:0}Height: Single): Shape; safecall;
    function  AddMediaObject {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString; 
                                                                  {VT_4:0}Left: Single; 
                                                                  {VT_4:0}Top: Single; 
                                                                  {VT_4:0}Width: Single; 
                                                                  {VT_4:0}Height: Single): Shape; safecall;
    function  Paste {Flags(1), (1/0) CC:0, INV:1, DBG:6}: ShapeRange; safecall;
    function  AddTable {Flags(1), (7/6) CC:0, INV:1, DBG:6}({VT_22:0}NumRows: SYSINT; 
                                                            {VT_22:0}NumColumns: SYSINT; 
                                                            {VT_4:0}Left: Single; 
                                                            {VT_4:0}Top: Single; 
                                                            {VT_4:0}Width: Single; 
                                                            {VT_4:0}Height: Single): Shape; safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property Count: SYSINT read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property HasTitle: MsoTriState read Get_HasTitle;
    property Title: Shape read Get_Title;
    property Placeholders: Placeholders read Get_Placeholders;
  end;

// *********************************************************************//
// DispIntf:  ShapesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493475-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ShapesDisp = dispinterface
    ['{91493475-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): Shape; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  AddCallout {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_29:0}Type_: MsoCalloutType; 
                                                              {VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): Shape; dispid 10;
    function  AddConnector {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_29:0}Type_: MsoConnectorType; 
                                                                {VT_4:0}BeginX: Single; 
                                                                {VT_4:0}BeginY: Single; 
                                                                {VT_4:0}EndX: Single; 
                                                                {VT_4:0}EndY: Single): Shape; dispid 11;
    function  AddCurve {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}SafeArrayOfPoints: OleVariant): Shape; dispid 12;
    function  AddLabel {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_29:0}Orientation: MsoTextOrientation; 
                                                            {VT_4:0}Left: Single; 
                                                            {VT_4:0}Top: Single; 
                                                            {VT_4:0}Width: Single; 
                                                            {VT_4:0}Height: Single): Shape; dispid 13;
    function  AddLine {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}BeginX: Single; 
                                                           {VT_4:0}BeginY: Single; 
                                                           {VT_4:0}EndX: Single; 
                                                           {VT_4:0}EndY: Single): Shape; dispid 14;
    function  AddPicture {Flags(2), (8/7) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString; 
                                                              {VT_29:0}LinkToFile: MsoTriState; 
                                                              {VT_29:0}SaveWithDocument: MsoTriState; 
                                                              {VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): Shape; dispid 15;
    function  AddPolyline {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}SafeArrayOfPoints: OleVariant): Shape; dispid 16;
    function  AddShape {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_29:0}Type_: MsoAutoShapeType; 
                                                            {VT_4:0}Left: Single; 
                                                            {VT_4:0}Top: Single; 
                                                            {VT_4:0}Width: Single; 
                                                            {VT_4:0}Height: Single): Shape; dispid 17;
    function  AddTextEffect {Flags(2), (9/8) CC:0, INV:1, DBG:4}({VT_29:0}PresetTextEffect: MsoPresetTextEffect; 
                                                                 {VT_8:0}const Text: WideString; 
                                                                 {VT_8:0}const FontName: WideString; 
                                                                 {VT_4:0}FontSize: Single; 
                                                                 {VT_29:0}FontBold: MsoTriState; 
                                                                 {VT_29:0}FontItalic: MsoTriState; 
                                                                 {VT_4:0}Left: Single; 
                                                                 {VT_4:0}Top: Single): Shape; dispid 18;
    function  AddTextbox {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_29:0}Orientation: MsoTextOrientation; 
                                                              {VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): Shape; dispid 19;
    function  BuildFreeform {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_29:0}EditingType: MsoEditingType; 
                                                                 {VT_4:0}X1: Single; 
                                                                 {VT_4:0}Y1: Single): FreeformBuilder; dispid 20;
    procedure SelectAll {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 22;
    function  Range {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): ShapeRange; dispid 2003;
    property HasTitle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2004;
    function  AddTitle {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Shape; dispid 2005;
    property Title {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Shape readonly dispid 2006;
    property Placeholders {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Placeholders readonly dispid 2007;
    function  AddOLEObject {Flags(2), (12/11) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                                  {VT_4:0}Top: Single; 
                                                                  {VT_4:0}Width: Single; 
                                                                  {VT_4:0}Height: Single; 
                                                                  {VT_8:0}const ClassName: WideString; 
                                                                  {VT_8:0}const FileName: WideString; 
                                                                  {VT_29:0}DisplayAsIcon: MsoTriState; 
                                                                  {VT_8:0}const IconFileName: WideString; 
                                                                  {VT_22:0}IconIndex: SYSINT; 
                                                                  {VT_8:0}const IconLabel: WideString; 
                                                                  {VT_29:0}Link: MsoTriState): Shape; dispid 2008;
    function  AddComment {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): Shape; dispid 2009;
    function  AddPlaceholder {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_29:0}Type_: PpPlaceholderType; 
                                                                  {VT_4:0}Left: Single; 
                                                                  {VT_4:0}Top: Single; 
                                                                  {VT_4:0}Width: Single; 
                                                                  {VT_4:0}Height: Single): Shape; dispid 2010;
    function  AddMediaObject {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString; 
                                                                  {VT_4:0}Left: Single; 
                                                                  {VT_4:0}Top: Single; 
                                                                  {VT_4:0}Width: Single; 
                                                                  {VT_4:0}Height: Single): Shape; dispid 2011;
    function  Paste {Flags(2), (1/0) CC:0, INV:1, DBG:4}: ShapeRange; dispid 2012;
    function  AddTable {Flags(2), (7/6) CC:0, INV:1, DBG:4}({VT_22:0}NumRows: SYSINT; 
                                                            {VT_22:0}NumColumns: SYSINT; 
                                                            {VT_4:0}Left: Single; 
                                                            {VT_4:0}Top: Single; 
                                                            {VT_4:0}Width: Single; 
                                                            {VT_4:0}Height: Single): Shape; dispid 2013;
  end;

// *********************************************************************//
// Interface: Placeholders
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493476-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Placeholders = interface(Collection)
    ['{91493476-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): Shape; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  PlaceholdersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493476-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PlaceholdersDisp = dispinterface
    ['{91493476-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): Shape; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: PlaceholderFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493477-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PlaceholderFormat = interface(IDispatch)
    ['{91493477-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpPlaceholderType; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Type_: PpPlaceholderType read Get_Type_;
  end;

// *********************************************************************//
// DispIntf:  PlaceholderFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493477-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PlaceholderFormatDisp = dispinterface
    ['{91493477-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpPlaceholderType readonly dispid 2003;
  end;

// *********************************************************************//
// Interface: FreeformBuilder
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493478-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FreeformBuilder = interface(IDispatch)
    ['{91493478-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure AddNodes {Flags(1), (8/8) CC:0, INV:1, DBG:6}({VT_29:0}SegmentType: MsoSegmentType; 
                                                            {VT_29:0}EditingType: MsoEditingType; 
                                                            {VT_4:0}X1: Single; {VT_4:0}Y1: Single; 
                                                            {VT_4:0}X2: Single; {VT_4:0}Y2: Single; 
                                                            {VT_4:0}X3: Single; {VT_4:0}Y3: Single); safecall;
    function  ConvertToShape {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Shape; safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  FreeformBuilderDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493478-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FreeformBuilderDisp = dispinterface
    ['{91493478-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure AddNodes {Flags(2), (8/8) CC:0, INV:1, DBG:4}({VT_29:0}SegmentType: MsoSegmentType; 
                                                            {VT_29:0}EditingType: MsoEditingType; 
                                                            {VT_4:0}X1: Single; {VT_4:0}Y1: Single; 
                                                            {VT_4:0}X2: Single; {VT_4:0}Y2: Single; 
                                                            {VT_4:0}X3: Single; {VT_4:0}Y3: Single); dispid 10;
    function  ConvertToShape {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Shape; dispid 11;
  end;

// *********************************************************************//
// Interface: Shape
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493479-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Shape = interface(IDispatch)
    ['{91493479-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Apply {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Flip {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}FlipCmd: MsoFlipCmd); safecall;
    procedure IncrementLeft {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure IncrementRotation {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure IncrementTop {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure PickUp {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure RerouteConnections {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure ScaleHeight {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_4:0}Factor: Single; 
                                                               {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                               {VT_29:0}fScale: MsoScaleFrom); safecall;
    procedure ScaleWidth {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_4:0}Factor: Single; 
                                                              {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                              {VT_29:0}fScale: MsoScaleFrom); safecall;
    procedure SetShapesDefaultProperties {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Ungroup {Flags(1), (1/0) CC:0, INV:1, DBG:6}: ShapeRange; safecall;
    procedure ZOrder {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}ZOrderCmd: MsoZOrderCmd); safecall;
    function  Get_Adjustments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Adjustments; safecall;
    function  Get_AutoShapeType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoAutoShapeType; safecall;
    procedure Set_AutoShapeType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AutoShapeType: MsoAutoShapeType); safecall;
    function  Get_BlackWhiteMode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoBlackWhiteMode; safecall;
    procedure Set_BlackWhiteMode {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}BlackWhiteMode: MsoBlackWhiteMode); safecall;
    function  Get_Callout {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CalloutFormat; safecall;
    function  Get_ConnectionSiteCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Connector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_ConnectorFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ConnectorFormat; safecall;
    function  Get_Fill {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FillFormat; safecall;
    function  Get_GroupItems {Flags(1), (1/0) CC:0, INV:2, DBG:6}: GroupShapes; safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Height: Single); safecall;
    function  Get_HorizontalFlip {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Left: Single); safecall;
    function  Get_Line {Flags(1), (1/0) CC:0, INV:2, DBG:6}: LineFormat; safecall;
    function  Get_LockAspectRatio {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_LockAspectRatio {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}LockAspectRatio: MsoTriState); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_Nodes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ShapeNodes; safecall;
    function  Get_Rotation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Rotation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Rotation: Single); safecall;
    function  Get_PictureFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PictureFormat; safecall;
    function  Get_Shadow {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ShadowFormat; safecall;
    function  Get_TextEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TextEffectFormat; safecall;
    function  Get_TextFrame {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TextFrame; safecall;
    function  Get_ThreeD {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ThreeDFormat; safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Top: Single); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoShapeType; safecall;
    function  Get_VerticalFlip {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_Vertices {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Width: Single); safecall;
    function  Get_ZOrderPosition {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_OLEFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OLEFormat; safecall;
    function  Get_LinkFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: LinkFormat; safecall;
    function  Get_PlaceholderFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PlaceholderFormat; safecall;
    function  Get_AnimationSettings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AnimationSettings; safecall;
    function  Get_ActionSettings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ActionSettings; safecall;
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Tags; safecall;
    procedure Cut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Copy {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Select {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}Replace: MsoTriState); safecall;
    function  Duplicate {Flags(1), (1/0) CC:0, INV:1, DBG:6}: ShapeRange; safecall;
    function  Get_MediaType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpMediaType; safecall;
    function  Get_HasTextFrame {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_SoundFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SoundFormat; safecall;
    function  Get_Script {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Script; safecall;
    function  Get_AlternativeText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_AlternativeText {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const AlternativeText: WideString); safecall;
    function  Get_HasTable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_Table {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Table; safecall;
    procedure Export {Flags(1), (5/5) CC:0, INV:1, DBG:6}({VT_8:0}const PathName: WideString; 
                                                          {VT_29:0}Filter: PpShapeFormat; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT; 
                                                          {VT_29:0}ExportMode: PpExportMode); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property Adjustments: Adjustments read Get_Adjustments;
    property AutoShapeType: MsoAutoShapeType read Get_AutoShapeType write Set_AutoShapeType;
    property BlackWhiteMode: MsoBlackWhiteMode read Get_BlackWhiteMode write Set_BlackWhiteMode;
    property Callout: CalloutFormat read Get_Callout;
    property ConnectionSiteCount: SYSINT read Get_ConnectionSiteCount;
    property Connector: MsoTriState read Get_Connector;
    property ConnectorFormat: ConnectorFormat read Get_ConnectorFormat;
    property Fill: FillFormat read Get_Fill;
    property GroupItems: GroupShapes read Get_GroupItems;
    property Height: Single read Get_Height write Set_Height;
    property HorizontalFlip: MsoTriState read Get_HorizontalFlip;
    property Left: Single read Get_Left write Set_Left;
    property Line: LineFormat read Get_Line;
    property LockAspectRatio: MsoTriState read Get_LockAspectRatio write Set_LockAspectRatio;
    property Name: WideString read Get_Name write Set_Name;
    property Nodes: ShapeNodes read Get_Nodes;
    property Rotation: Single read Get_Rotation write Set_Rotation;
    property PictureFormat: PictureFormat read Get_PictureFormat;
    property Shadow: ShadowFormat read Get_Shadow;
    property TextEffect: TextEffectFormat read Get_TextEffect;
    property TextFrame: TextFrame read Get_TextFrame;
    property ThreeD: ThreeDFormat read Get_ThreeD;
    property Top: Single read Get_Top write Set_Top;
    property Type_: MsoShapeType read Get_Type_;
    property VerticalFlip: MsoTriState read Get_VerticalFlip;
    property Vertices: OleVariant read Get_Vertices;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
    property Width: Single read Get_Width write Set_Width;
    property ZOrderPosition: SYSINT read Get_ZOrderPosition;
    property OLEFormat: OLEFormat read Get_OLEFormat;
    property LinkFormat: LinkFormat read Get_LinkFormat;
    property PlaceholderFormat: PlaceholderFormat read Get_PlaceholderFormat;
    property AnimationSettings: AnimationSettings read Get_AnimationSettings;
    property ActionSettings: ActionSettings read Get_ActionSettings;
    property Tags: Tags read Get_Tags;
    property MediaType: PpMediaType read Get_MediaType;
    property HasTextFrame: MsoTriState read Get_HasTextFrame;
    property SoundFormat: SoundFormat read Get_SoundFormat;
    property Script: Script read Get_Script;
    property AlternativeText: WideString read Get_AlternativeText write Set_AlternativeText;
    property HasTable: MsoTriState read Get_HasTable;
    property Table: Table read Get_Table;
  end;

// *********************************************************************//
// DispIntf:  ShapeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493479-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ShapeDisp = dispinterface
    ['{91493479-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure Apply {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 10;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 11;
    procedure Flip {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}FlipCmd: MsoFlipCmd); dispid 13;
    procedure IncrementLeft {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 14;
    procedure IncrementRotation {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 15;
    procedure IncrementTop {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 16;
    procedure PickUp {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 17;
    procedure RerouteConnections {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 18;
    procedure ScaleHeight {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_4:0}Factor: Single; 
                                                               {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                               {VT_29:0}fScale: MsoScaleFrom); dispid 19;
    procedure ScaleWidth {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_4:0}Factor: Single; 
                                                              {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                              {VT_29:0}fScale: MsoScaleFrom); dispid 20;
    procedure SetShapesDefaultProperties {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 22;
    function  Ungroup {Flags(2), (1/0) CC:0, INV:1, DBG:4}: ShapeRange; dispid 23;
    procedure ZOrder {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}ZOrderCmd: MsoZOrderCmd); dispid 24;
    property Adjustments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Adjustments readonly dispid 100;
    property AutoShapeType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoAutoShapeType dispid 101;
    property BlackWhiteMode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoBlackWhiteMode dispid 102;
    property Callout {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CalloutFormat readonly dispid 103;
    property ConnectionSiteCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 104;
    property Connector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 105;
    property ConnectorFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ConnectorFormat readonly dispid 106;
    property Fill {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FillFormat readonly dispid 107;
    property GroupItems {Flags(2), (1/0) CC:0, INV:2, DBG:6}: GroupShapes readonly dispid 108;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 109;
    property HorizontalFlip {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 110;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 111;
    property Line {Flags(2), (1/0) CC:0, INV:2, DBG:6}: LineFormat readonly dispid 112;
    property LockAspectRatio {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 113;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 115;
    property Nodes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ShapeNodes readonly dispid 116;
    property Rotation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 117;
    property PictureFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PictureFormat readonly dispid 118;
    property Shadow {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ShadowFormat readonly dispid 119;
    property TextEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TextEffectFormat readonly dispid 120;
    property TextFrame {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TextFrame readonly dispid 121;
    property ThreeD {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ThreeDFormat readonly dispid 122;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 123;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoShapeType readonly dispid 124;
    property VerticalFlip {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 125;
    property Vertices {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 126;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 127;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 128;
    property ZOrderPosition {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 129;
    property OLEFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OLEFormat readonly dispid 2003;
    property LinkFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: LinkFormat readonly dispid 2004;
    property PlaceholderFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PlaceholderFormat readonly dispid 2005;
    property AnimationSettings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AnimationSettings readonly dispid 2006;
    property ActionSettings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ActionSettings readonly dispid 2007;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 2008;
    procedure Cut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2009;
    procedure Copy {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2010;
    procedure Select {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}Replace: MsoTriState); dispid 2011;
    function  Duplicate {Flags(2), (1/0) CC:0, INV:1, DBG:4}: ShapeRange; dispid 2012;
    property MediaType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpMediaType readonly dispid 2013;
    property HasTextFrame {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2014;
    property SoundFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SoundFormat readonly dispid 2015;
    property Script {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Script readonly dispid 130;
    property AlternativeText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 131;
    property HasTable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2016;
    property Table {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Table readonly dispid 2017;
    procedure Export {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_8:0}const PathName: WideString; 
                                                          {VT_29:0}Filter: PpShapeFormat; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT; 
                                                          {VT_29:0}ExportMode: PpExportMode); dispid 2018;
  end;

// *********************************************************************//
// Interface: ShapeRange
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347A-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ShapeRange = interface(IDispatch)
    ['{9149347A-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Apply {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Flip {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}FlipCmd: MsoFlipCmd); safecall;
    procedure IncrementLeft {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure IncrementRotation {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure IncrementTop {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure PickUp {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure RerouteConnections {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure ScaleHeight {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_4:0}Factor: Single; 
                                                               {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                               {VT_29:0}fScale: MsoScaleFrom); safecall;
    procedure ScaleWidth {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_4:0}Factor: Single; 
                                                              {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                              {VT_29:0}fScale: MsoScaleFrom); safecall;
    procedure SetShapesDefaultProperties {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Ungroup {Flags(1), (1/0) CC:0, INV:1, DBG:6}: ShapeRange; safecall;
    procedure ZOrder {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}ZOrderCmd: MsoZOrderCmd); safecall;
    function  Get_Adjustments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Adjustments; safecall;
    function  Get_AutoShapeType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoAutoShapeType; safecall;
    procedure Set_AutoShapeType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AutoShapeType: MsoAutoShapeType); safecall;
    function  Get_BlackWhiteMode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoBlackWhiteMode; safecall;
    procedure Set_BlackWhiteMode {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}BlackWhiteMode: MsoBlackWhiteMode); safecall;
    function  Get_Callout {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CalloutFormat; safecall;
    function  Get_ConnectionSiteCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Connector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_ConnectorFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ConnectorFormat; safecall;
    function  Get_Fill {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FillFormat; safecall;
    function  Get_GroupItems {Flags(1), (1/0) CC:0, INV:2, DBG:6}: GroupShapes; safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Height: Single); safecall;
    function  Get_HorizontalFlip {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Left: Single); safecall;
    function  Get_Line {Flags(1), (1/0) CC:0, INV:2, DBG:6}: LineFormat; safecall;
    function  Get_LockAspectRatio {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_LockAspectRatio {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}LockAspectRatio: MsoTriState); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_Nodes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ShapeNodes; safecall;
    function  Get_Rotation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Rotation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Rotation: Single); safecall;
    function  Get_PictureFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PictureFormat; safecall;
    function  Get_Shadow {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ShadowFormat; safecall;
    function  Get_TextEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TextEffectFormat; safecall;
    function  Get_TextFrame {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TextFrame; safecall;
    function  Get_ThreeD {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ThreeDFormat; safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Top: Single); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoShapeType; safecall;
    function  Get_VerticalFlip {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_Vertices {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Width: Single); safecall;
    function  Get_ZOrderPosition {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_OLEFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OLEFormat; safecall;
    function  Get_LinkFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: LinkFormat; safecall;
    function  Get_PlaceholderFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PlaceholderFormat; safecall;
    function  Get_AnimationSettings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AnimationSettings; safecall;
    function  Get_ActionSettings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ActionSettings; safecall;
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Tags; safecall;
    procedure Cut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Copy {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Select {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}Replace: MsoTriState); safecall;
    function  Duplicate {Flags(1), (1/0) CC:0, INV:1, DBG:6}: ShapeRange; safecall;
    function  Get_MediaType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpMediaType; safecall;
    function  Get_HasTextFrame {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_SoundFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SoundFormat; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): Shape; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  _Index {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): OleVariant; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Group {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Shape; safecall;
    function  Regroup {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Shape; safecall;
    procedure Align {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_29:0}AlignCmd: MsoAlignCmd; 
                                                         {VT_29:0}RelativeTo: MsoTriState); safecall;
    procedure Distribute {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_29:0}DistributeCmd: MsoDistributeCmd; 
                                                              {VT_29:0}RelativeTo: MsoTriState); safecall;
    procedure GetPolygonalRepresentation {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_19:0}maxPointsInBuffer: LongWord; 
                                                                              {VT_4:1}var pPoints: Single; 
                                                                              {VT_19:1}out numPointsInPolygon: LongWord; 
                                                                              {VT_29:1}out IsOpen: MsoTriState); safecall;
    function  Get_Script {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Script; safecall;
    function  Get_AlternativeText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_AlternativeText {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const AlternativeText: WideString); safecall;
    function  Get_HasTable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_Table {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Table; safecall;
    procedure Export {Flags(1), (5/5) CC:0, INV:1, DBG:6}({VT_8:0}const PathName: WideString; 
                                                          {VT_29:0}Filter: PpShapeFormat; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT; 
                                                          {VT_29:0}ExportMode: PpExportMode); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property Adjustments: Adjustments read Get_Adjustments;
    property AutoShapeType: MsoAutoShapeType read Get_AutoShapeType write Set_AutoShapeType;
    property BlackWhiteMode: MsoBlackWhiteMode read Get_BlackWhiteMode write Set_BlackWhiteMode;
    property Callout: CalloutFormat read Get_Callout;
    property ConnectionSiteCount: SYSINT read Get_ConnectionSiteCount;
    property Connector: MsoTriState read Get_Connector;
    property ConnectorFormat: ConnectorFormat read Get_ConnectorFormat;
    property Fill: FillFormat read Get_Fill;
    property GroupItems: GroupShapes read Get_GroupItems;
    property Height: Single read Get_Height write Set_Height;
    property HorizontalFlip: MsoTriState read Get_HorizontalFlip;
    property Left: Single read Get_Left write Set_Left;
    property Line: LineFormat read Get_Line;
    property LockAspectRatio: MsoTriState read Get_LockAspectRatio write Set_LockAspectRatio;
    property Name: WideString read Get_Name write Set_Name;
    property Nodes: ShapeNodes read Get_Nodes;
    property Rotation: Single read Get_Rotation write Set_Rotation;
    property PictureFormat: PictureFormat read Get_PictureFormat;
    property Shadow: ShadowFormat read Get_Shadow;
    property TextEffect: TextEffectFormat read Get_TextEffect;
    property TextFrame: TextFrame read Get_TextFrame;
    property ThreeD: ThreeDFormat read Get_ThreeD;
    property Top: Single read Get_Top write Set_Top;
    property Type_: MsoShapeType read Get_Type_;
    property VerticalFlip: MsoTriState read Get_VerticalFlip;
    property Vertices: OleVariant read Get_Vertices;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
    property Width: Single read Get_Width write Set_Width;
    property ZOrderPosition: SYSINT read Get_ZOrderPosition;
    property OLEFormat: OLEFormat read Get_OLEFormat;
    property LinkFormat: LinkFormat read Get_LinkFormat;
    property PlaceholderFormat: PlaceholderFormat read Get_PlaceholderFormat;
    property AnimationSettings: AnimationSettings read Get_AnimationSettings;
    property ActionSettings: ActionSettings read Get_ActionSettings;
    property Tags: Tags read Get_Tags;
    property MediaType: PpMediaType read Get_MediaType;
    property HasTextFrame: MsoTriState read Get_HasTextFrame;
    property SoundFormat: SoundFormat read Get_SoundFormat;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property Script: Script read Get_Script;
    property AlternativeText: WideString read Get_AlternativeText write Set_AlternativeText;
    property HasTable: MsoTriState read Get_HasTable;
    property Table: Table read Get_Table;
  end;

// *********************************************************************//
// DispIntf:  ShapeRangeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347A-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ShapeRangeDisp = dispinterface
    ['{9149347A-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure Apply {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 10;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 11;
    procedure Flip {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}FlipCmd: MsoFlipCmd); dispid 13;
    procedure IncrementLeft {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 14;
    procedure IncrementRotation {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 15;
    procedure IncrementTop {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 16;
    procedure PickUp {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 17;
    procedure RerouteConnections {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 18;
    procedure ScaleHeight {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_4:0}Factor: Single; 
                                                               {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                               {VT_29:0}fScale: MsoScaleFrom); dispid 19;
    procedure ScaleWidth {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_4:0}Factor: Single; 
                                                              {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                              {VT_29:0}fScale: MsoScaleFrom); dispid 20;
    procedure SetShapesDefaultProperties {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 22;
    function  Ungroup {Flags(2), (1/0) CC:0, INV:1, DBG:4}: ShapeRange; dispid 23;
    procedure ZOrder {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}ZOrderCmd: MsoZOrderCmd); dispid 24;
    property Adjustments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Adjustments readonly dispid 100;
    property AutoShapeType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoAutoShapeType dispid 101;
    property BlackWhiteMode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoBlackWhiteMode dispid 102;
    property Callout {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CalloutFormat readonly dispid 103;
    property ConnectionSiteCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 104;
    property Connector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 105;
    property ConnectorFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ConnectorFormat readonly dispid 106;
    property Fill {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FillFormat readonly dispid 107;
    property GroupItems {Flags(2), (1/0) CC:0, INV:2, DBG:6}: GroupShapes readonly dispid 108;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 109;
    property HorizontalFlip {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 110;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 111;
    property Line {Flags(2), (1/0) CC:0, INV:2, DBG:6}: LineFormat readonly dispid 112;
    property LockAspectRatio {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 113;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 115;
    property Nodes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ShapeNodes readonly dispid 116;
    property Rotation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 117;
    property PictureFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PictureFormat readonly dispid 118;
    property Shadow {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ShadowFormat readonly dispid 119;
    property TextEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TextEffectFormat readonly dispid 120;
    property TextFrame {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TextFrame readonly dispid 121;
    property ThreeD {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ThreeDFormat readonly dispid 122;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 123;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoShapeType readonly dispid 124;
    property VerticalFlip {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 125;
    property Vertices {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 126;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 127;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 128;
    property ZOrderPosition {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 129;
    property OLEFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OLEFormat readonly dispid 2003;
    property LinkFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: LinkFormat readonly dispid 2004;
    property PlaceholderFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PlaceholderFormat readonly dispid 2005;
    property AnimationSettings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AnimationSettings readonly dispid 2006;
    property ActionSettings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ActionSettings readonly dispid 2007;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 2008;
    procedure Cut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2009;
    procedure Copy {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2010;
    procedure Select {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}Replace: MsoTriState); dispid 2011;
    function  Duplicate {Flags(2), (1/0) CC:0, INV:1, DBG:4}: ShapeRange; dispid 2012;
    property MediaType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpMediaType readonly dispid 2013;
    property HasTextFrame {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2014;
    property SoundFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SoundFormat readonly dispid 2015;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): Shape; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 8;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 9;
    function  Group {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Shape; dispid 2016;
    function  Regroup {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Shape; dispid 2017;
    procedure Align {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:0}AlignCmd: MsoAlignCmd; 
                                                         {VT_29:0}RelativeTo: MsoTriState); dispid 2018;
    procedure Distribute {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:0}DistributeCmd: MsoDistributeCmd; 
                                                              {VT_29:0}RelativeTo: MsoTriState); dispid 2019;
    procedure GetPolygonalRepresentation {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_19:0}maxPointsInBuffer: LongWord; 
                                                                              {VT_4:1}var pPoints: Single; 
                                                                              {VT_19:1}out numPointsInPolygon: LongWord; 
                                                                              {VT_29:1}out IsOpen: MsoTriState); dispid 2020;
    property Script {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Script readonly dispid 130;
    property AlternativeText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 131;
    property HasTable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2021;
    property Table {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Table readonly dispid 2022;
    procedure Export {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_8:0}const PathName: WideString; 
                                                          {VT_29:0}Filter: PpShapeFormat; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT; 
                                                          {VT_29:0}ExportMode: PpExportMode); dispid 2023;
  end;

// *********************************************************************//
// Interface: GroupShapes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347B-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  GroupShapes = interface(IDispatch)
    ['{9149347B-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): Shape; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property Count: SYSINT read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  GroupShapesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347B-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  GroupShapesDisp = dispinterface
    ['{9149347B-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): Shape; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: Adjustments
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347C-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Adjustments = interface(IDispatch)
    ['{9149347C-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_22:0}index: SYSINT): Single; safecall;
    procedure Set_Item {Flags(1), (2/2) CC:0, INV:4, DBG:6}({VT_22:0}index: SYSINT; 
                                                            {VT_4:0}Val: Single); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property Count: SYSINT read Get_Count;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_22:0}index: SYSINT]: Single read Get_Item write Set_Item; default;
  end;

// *********************************************************************//
// DispIntf:  AdjustmentsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347C-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  AdjustmentsDisp = dispinterface
    ['{9149347C-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_22:0}index: SYSINT]: Single dispid 0; default;
  end;

// *********************************************************************//
// Interface: PictureFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347D-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PictureFormat = interface(IDispatch)
    ['{9149347D-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure IncrementBrightness {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure IncrementContrast {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    function  Get_Brightness {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Brightness {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Brightness: Single); safecall;
    function  Get_ColorType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPictureColorType; safecall;
    procedure Set_ColorType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ColorType: MsoPictureColorType); safecall;
    function  Get_Contrast {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Contrast {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Contrast: Single); safecall;
    function  Get_CropBottom {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_CropBottom {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}CropBottom: Single); safecall;
    function  Get_CropLeft {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_CropLeft {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}CropLeft: Single); safecall;
    function  Get_CropRight {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_CropRight {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}CropRight: Single); safecall;
    function  Get_CropTop {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_CropTop {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}CropTop: Single); safecall;
    function  Get_TransparencyColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType; safecall;
    procedure Set_TransparencyColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}TransparencyColor: MsoRGBType); safecall;
    function  Get_TransparentBackground {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_TransparentBackground {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}TransparentBackground: MsoTriState); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property Brightness: Single read Get_Brightness write Set_Brightness;
    property ColorType: MsoPictureColorType read Get_ColorType write Set_ColorType;
    property Contrast: Single read Get_Contrast write Set_Contrast;
    property CropBottom: Single read Get_CropBottom write Set_CropBottom;
    property CropLeft: Single read Get_CropLeft write Set_CropLeft;
    property CropRight: Single read Get_CropRight write Set_CropRight;
    property CropTop: Single read Get_CropTop write Set_CropTop;
    property TransparencyColor: MsoRGBType read Get_TransparencyColor write Set_TransparencyColor;
    property TransparentBackground: MsoTriState read Get_TransparentBackground write Set_TransparentBackground;
  end;

// *********************************************************************//
// DispIntf:  PictureFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347D-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PictureFormatDisp = dispinterface
    ['{9149347D-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure IncrementBrightness {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 10;
    procedure IncrementContrast {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 11;
    property Brightness {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 100;
    property ColorType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPictureColorType dispid 101;
    property Contrast {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 102;
    property CropBottom {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 103;
    property CropLeft {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 104;
    property CropRight {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 105;
    property CropTop {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 106;
    property TransparencyColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType dispid 107;
    property TransparentBackground {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 108;
  end;

// *********************************************************************//
// Interface: FillFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347E-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FillFormat = interface(IDispatch)
    ['{9149347E-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Background {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure OneColorGradient {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_29:0}Style: MsoGradientStyle; 
                                                                    {VT_22:0}Variant: SYSINT; 
                                                                    {VT_4:0}Degree: Single); safecall;
    procedure Patterned {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}Pattern: MsoPatternType); safecall;
    procedure PresetGradient {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_29:0}Style: MsoGradientStyle; 
                                                                  {VT_22:0}Variant: SYSINT; 
                                                                  {VT_29:0}PresetGradientType: MsoPresetGradientType); safecall;
    procedure PresetTextured {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}PresetTexture: MsoPresetTexture); safecall;
    procedure Solid {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure TwoColorGradient {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_29:0}Style: MsoGradientStyle; 
                                                                    {VT_22:0}Variant: SYSINT); safecall;
    procedure UserPicture {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const PictureFile: WideString); safecall;
    procedure UserTextured {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const TextureFile: WideString); safecall;
    function  Get_BackColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorFormat; safecall;
    procedure Set_BackColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:1}const BackColor: ColorFormat); safecall;
    function  Get_ForeColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorFormat; safecall;
    procedure Set_ForeColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:1}const ForeColor: ColorFormat); safecall;
    function  Get_GradientColorType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoGradientColorType; safecall;
    function  Get_GradientDegree {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_GradientStyle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoGradientStyle; safecall;
    function  Get_GradientVariant {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Pattern {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPatternType; safecall;
    function  Get_PresetGradientType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPresetGradientType; safecall;
    function  Get_PresetTexture {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPresetTexture; safecall;
    function  Get_TextureName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_TextureType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTextureType; safecall;
    function  Get_Transparency {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Transparency {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Transparency: Single); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoFillType; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property BackColor: ColorFormat read Get_BackColor write Set_BackColor;
    property ForeColor: ColorFormat read Get_ForeColor write Set_ForeColor;
    property GradientColorType: MsoGradientColorType read Get_GradientColorType;
    property GradientDegree: Single read Get_GradientDegree;
    property GradientStyle: MsoGradientStyle read Get_GradientStyle;
    property GradientVariant: SYSINT read Get_GradientVariant;
    property Pattern: MsoPatternType read Get_Pattern;
    property PresetGradientType: MsoPresetGradientType read Get_PresetGradientType;
    property PresetTexture: MsoPresetTexture read Get_PresetTexture;
    property TextureName: WideString read Get_TextureName;
    property TextureType: MsoTextureType read Get_TextureType;
    property Transparency: Single read Get_Transparency write Set_Transparency;
    property Type_: MsoFillType read Get_Type_;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
  end;

// *********************************************************************//
// DispIntf:  FillFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347E-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FillFormatDisp = dispinterface
    ['{9149347E-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure Background {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 10;
    procedure OneColorGradient {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_29:0}Style: MsoGradientStyle; 
                                                                    {VT_22:0}Variant: SYSINT; 
                                                                    {VT_4:0}Degree: Single); dispid 11;
    procedure Patterned {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}Pattern: MsoPatternType); dispid 12;
    procedure PresetGradient {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_29:0}Style: MsoGradientStyle; 
                                                                  {VT_22:0}Variant: SYSINT; 
                                                                  {VT_29:0}PresetGradientType: MsoPresetGradientType); dispid 13;
    procedure PresetTextured {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}PresetTexture: MsoPresetTexture); dispid 14;
    procedure Solid {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 15;
    procedure TwoColorGradient {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:0}Style: MsoGradientStyle; 
                                                                    {VT_22:0}Variant: SYSINT); dispid 16;
    procedure UserPicture {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const PictureFile: WideString); dispid 17;
    procedure UserTextured {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const TextureFile: WideString); dispid 18;
    property BackColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorFormat dispid 100;
    property ForeColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorFormat dispid 101;
    property GradientColorType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoGradientColorType readonly dispid 102;
    property GradientDegree {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 103;
    property GradientStyle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoGradientStyle readonly dispid 104;
    property GradientVariant {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 105;
    property Pattern {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPatternType readonly dispid 106;
    property PresetGradientType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPresetGradientType readonly dispid 107;
    property PresetTexture {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPresetTexture readonly dispid 108;
    property TextureName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 109;
    property TextureType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTextureType readonly dispid 110;
    property Transparency {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 111;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoFillType readonly dispid 112;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 113;
  end;

// *********************************************************************//
// Interface: LineFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347F-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  LineFormat = interface(IDispatch)
    ['{9149347F-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_BackColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorFormat; safecall;
    procedure Set_BackColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:1}const BackColor: ColorFormat); safecall;
    function  Get_BeginArrowheadLength {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadLength; safecall;
    procedure Set_BeginArrowheadLength {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}BeginArrowheadLength: MsoArrowheadLength); safecall;
    function  Get_BeginArrowheadStyle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadStyle; safecall;
    procedure Set_BeginArrowheadStyle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}BeginArrowheadStyle: MsoArrowheadStyle); safecall;
    function  Get_BeginArrowheadWidth {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadWidth; safecall;
    procedure Set_BeginArrowheadWidth {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}BeginArrowheadWidth: MsoArrowheadWidth); safecall;
    function  Get_DashStyle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoLineDashStyle; safecall;
    procedure Set_DashStyle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}DashStyle: MsoLineDashStyle); safecall;
    function  Get_EndArrowheadLength {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadLength; safecall;
    procedure Set_EndArrowheadLength {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}EndArrowheadLength: MsoArrowheadLength); safecall;
    function  Get_EndArrowheadStyle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadStyle; safecall;
    procedure Set_EndArrowheadStyle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}EndArrowheadStyle: MsoArrowheadStyle); safecall;
    function  Get_EndArrowheadWidth {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadWidth; safecall;
    procedure Set_EndArrowheadWidth {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}EndArrowheadWidth: MsoArrowheadWidth); safecall;
    function  Get_ForeColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorFormat; safecall;
    procedure Set_ForeColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:1}const ForeColor: ColorFormat); safecall;
    function  Get_Pattern {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPatternType; safecall;
    procedure Set_Pattern {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Pattern: MsoPatternType); safecall;
    function  Get_Style {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoLineStyle; safecall;
    procedure Set_Style {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Style: MsoLineStyle); safecall;
    function  Get_Transparency {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Transparency {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Transparency: Single); safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    function  Get_Weight {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Weight {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Weight: Single); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property BackColor: ColorFormat read Get_BackColor write Set_BackColor;
    property BeginArrowheadLength: MsoArrowheadLength read Get_BeginArrowheadLength write Set_BeginArrowheadLength;
    property BeginArrowheadStyle: MsoArrowheadStyle read Get_BeginArrowheadStyle write Set_BeginArrowheadStyle;
    property BeginArrowheadWidth: MsoArrowheadWidth read Get_BeginArrowheadWidth write Set_BeginArrowheadWidth;
    property DashStyle: MsoLineDashStyle read Get_DashStyle write Set_DashStyle;
    property EndArrowheadLength: MsoArrowheadLength read Get_EndArrowheadLength write Set_EndArrowheadLength;
    property EndArrowheadStyle: MsoArrowheadStyle read Get_EndArrowheadStyle write Set_EndArrowheadStyle;
    property EndArrowheadWidth: MsoArrowheadWidth read Get_EndArrowheadWidth write Set_EndArrowheadWidth;
    property ForeColor: ColorFormat read Get_ForeColor write Set_ForeColor;
    property Pattern: MsoPatternType read Get_Pattern write Set_Pattern;
    property Style: MsoLineStyle read Get_Style write Set_Style;
    property Transparency: Single read Get_Transparency write Set_Transparency;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
    property Weight: Single read Get_Weight write Set_Weight;
  end;

// *********************************************************************//
// DispIntf:  LineFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149347F-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  LineFormatDisp = dispinterface
    ['{9149347F-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property BackColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorFormat dispid 100;
    property BeginArrowheadLength {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadLength dispid 101;
    property BeginArrowheadStyle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadStyle dispid 102;
    property BeginArrowheadWidth {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadWidth dispid 103;
    property DashStyle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoLineDashStyle dispid 104;
    property EndArrowheadLength {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadLength dispid 105;
    property EndArrowheadStyle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadStyle dispid 106;
    property EndArrowheadWidth {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoArrowheadWidth dispid 107;
    property ForeColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorFormat dispid 108;
    property Pattern {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPatternType dispid 109;
    property Style {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoLineStyle dispid 110;
    property Transparency {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 111;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 112;
    property Weight {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 113;
  end;

// *********************************************************************//
// Interface: ShadowFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493480-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ShadowFormat = interface(IDispatch)
    ['{91493480-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure IncrementOffsetX {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure IncrementOffsetY {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    function  Get_ForeColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorFormat; safecall;
    procedure Set_ForeColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:1}const ForeColor: ColorFormat); safecall;
    function  Get_Obscured {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Obscured {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Obscured: MsoTriState); safecall;
    function  Get_OffsetX {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_OffsetX {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}OffsetX: Single); safecall;
    function  Get_OffsetY {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_OffsetY {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}OffsetY: Single); safecall;
    function  Get_Transparency {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Transparency {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Transparency: Single); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoShadowType; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Type_: MsoShadowType); safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property ForeColor: ColorFormat read Get_ForeColor write Set_ForeColor;
    property Obscured: MsoTriState read Get_Obscured write Set_Obscured;
    property OffsetX: Single read Get_OffsetX write Set_OffsetX;
    property OffsetY: Single read Get_OffsetY write Set_OffsetY;
    property Transparency: Single read Get_Transparency write Set_Transparency;
    property Type_: MsoShadowType read Get_Type_ write Set_Type_;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
  end;

// *********************************************************************//
// DispIntf:  ShadowFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493480-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ShadowFormatDisp = dispinterface
    ['{91493480-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure IncrementOffsetX {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 10;
    procedure IncrementOffsetY {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 11;
    property ForeColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorFormat dispid 100;
    property Obscured {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 101;
    property OffsetX {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 102;
    property OffsetY {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 103;
    property Transparency {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 104;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoShadowType dispid 105;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 106;
  end;

// *********************************************************************//
// Interface: ConnectorFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493481-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ConnectorFormat = interface(IDispatch)
    ['{91493481-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure BeginConnect {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_29:1}const ConnectedShape: Shape; 
                                                                {VT_22:0}ConnectionSite: SYSINT); safecall;
    procedure BeginDisconnect {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure EndConnect {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_29:1}const ConnectedShape: Shape; 
                                                              {VT_22:0}ConnectionSite: SYSINT); safecall;
    procedure EndDisconnect {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_BeginConnected {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_BeginConnectedShape {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Shape; safecall;
    function  Get_BeginConnectionSite {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_EndConnected {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_EndConnectedShape {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Shape; safecall;
    function  Get_EndConnectionSite {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoConnectorType; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Type_: MsoConnectorType); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property BeginConnected: MsoTriState read Get_BeginConnected;
    property BeginConnectedShape: Shape read Get_BeginConnectedShape;
    property BeginConnectionSite: SYSINT read Get_BeginConnectionSite;
    property EndConnected: MsoTriState read Get_EndConnected;
    property EndConnectedShape: Shape read Get_EndConnectedShape;
    property EndConnectionSite: SYSINT read Get_EndConnectionSite;
    property Type_: MsoConnectorType read Get_Type_ write Set_Type_;
  end;

// *********************************************************************//
// DispIntf:  ConnectorFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493481-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ConnectorFormatDisp = dispinterface
    ['{91493481-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure BeginConnect {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const ConnectedShape: Shape; 
                                                                {VT_22:0}ConnectionSite: SYSINT); dispid 10;
    procedure BeginDisconnect {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 11;
    procedure EndConnect {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const ConnectedShape: Shape; 
                                                              {VT_22:0}ConnectionSite: SYSINT); dispid 12;
    procedure EndDisconnect {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 13;
    property BeginConnected {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 100;
    property BeginConnectedShape {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Shape readonly dispid 101;
    property BeginConnectionSite {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 102;
    property EndConnected {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 103;
    property EndConnectedShape {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Shape readonly dispid 104;
    property EndConnectionSite {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 105;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoConnectorType dispid 106;
  end;

// *********************************************************************//
// Interface: TextEffectFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493482-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextEffectFormat = interface(IDispatch)
    ['{91493482-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure ToggleVerticalText {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Alignment {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTextEffectAlignment; safecall;
    procedure Set_Alignment {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Alignment: MsoTextEffectAlignment); safecall;
    function  Get_FontBold {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_FontBold {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FontBold: MsoTriState); safecall;
    function  Get_FontItalic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_FontItalic {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FontItalic: MsoTriState); safecall;
    function  Get_FontName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_FontName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const FontName: WideString); safecall;
    function  Get_FontSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_FontSize {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}FontSize: Single); safecall;
    function  Get_KernedPairs {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_KernedPairs {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}KernedPairs: MsoTriState); safecall;
    function  Get_NormalizedHeight {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_NormalizedHeight {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}NormalizedHeight: MsoTriState); safecall;
    function  Get_PresetShape {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPresetTextEffectShape; safecall;
    procedure Set_PresetShape {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}PresetShape: MsoPresetTextEffectShape); safecall;
    function  Get_PresetTextEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPresetTextEffect; safecall;
    procedure Set_PresetTextEffect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Preset: MsoPresetTextEffect); safecall;
    function  Get_RotatedChars {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_RotatedChars {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}RotatedChars: MsoTriState); safecall;
    function  Get_Text {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Text {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Text: WideString); safecall;
    function  Get_Tracking {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Tracking {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Tracking: Single); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property Alignment: MsoTextEffectAlignment read Get_Alignment write Set_Alignment;
    property FontBold: MsoTriState read Get_FontBold write Set_FontBold;
    property FontItalic: MsoTriState read Get_FontItalic write Set_FontItalic;
    property FontName: WideString read Get_FontName write Set_FontName;
    property FontSize: Single read Get_FontSize write Set_FontSize;
    property KernedPairs: MsoTriState read Get_KernedPairs write Set_KernedPairs;
    property NormalizedHeight: MsoTriState read Get_NormalizedHeight write Set_NormalizedHeight;
    property PresetShape: MsoPresetTextEffectShape read Get_PresetShape write Set_PresetShape;
    property PresetTextEffect: MsoPresetTextEffect read Get_PresetTextEffect write Set_PresetTextEffect;
    property RotatedChars: MsoTriState read Get_RotatedChars write Set_RotatedChars;
    property Text: WideString read Get_Text write Set_Text;
    property Tracking: Single read Get_Tracking write Set_Tracking;
  end;

// *********************************************************************//
// DispIntf:  TextEffectFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493482-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextEffectFormatDisp = dispinterface
    ['{91493482-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure ToggleVerticalText {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 10;
    property Alignment {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTextEffectAlignment dispid 100;
    property FontBold {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 101;
    property FontItalic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 102;
    property FontName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 103;
    property FontSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 104;
    property KernedPairs {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 105;
    property NormalizedHeight {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 106;
    property PresetShape {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPresetTextEffectShape dispid 107;
    property PresetTextEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPresetTextEffect dispid 108;
    property RotatedChars {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 109;
    property Text {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 110;
    property Tracking {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 111;
  end;

// *********************************************************************//
// Interface: ThreeDFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493483-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ThreeDFormat = interface(IDispatch)
    ['{91493483-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure IncrementRotationX {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure IncrementRotationY {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure ResetRotation {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SetThreeDFormat {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}PresetThreeDFormat: MsoPresetThreeDFormat); safecall;
    procedure SetExtrusionDirection {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}PresetExtrusionDirection: MsoPresetExtrusionDirection); safecall;
    function  Get_Depth {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Depth {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Depth: Single); safecall;
    function  Get_ExtrusionColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorFormat; safecall;
    function  Get_ExtrusionColorType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoExtrusionColorType; safecall;
    procedure Set_ExtrusionColorType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ExtrusionColorType: MsoExtrusionColorType); safecall;
    function  Get_Perspective {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Perspective {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Perspective: MsoTriState); safecall;
    function  Get_PresetExtrusionDirection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPresetExtrusionDirection; safecall;
    function  Get_PresetLightingDirection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPresetLightingDirection; safecall;
    procedure Set_PresetLightingDirection {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}PresetLightingDirection: MsoPresetLightingDirection); safecall;
    function  Get_PresetLightingSoftness {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPresetLightingSoftness; safecall;
    procedure Set_PresetLightingSoftness {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}PresetLightingSoftness: MsoPresetLightingSoftness); safecall;
    function  Get_PresetMaterial {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPresetMaterial; safecall;
    procedure Set_PresetMaterial {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}PresetMaterial: MsoPresetMaterial); safecall;
    function  Get_PresetThreeDFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoPresetThreeDFormat; safecall;
    function  Get_RotationX {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_RotationX {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}RotationX: Single); safecall;
    function  Get_RotationY {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_RotationY {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}RotationY: Single); safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property Depth: Single read Get_Depth write Set_Depth;
    property ExtrusionColor: ColorFormat read Get_ExtrusionColor;
    property ExtrusionColorType: MsoExtrusionColorType read Get_ExtrusionColorType write Set_ExtrusionColorType;
    property Perspective: MsoTriState read Get_Perspective write Set_Perspective;
    property PresetExtrusionDirection: MsoPresetExtrusionDirection read Get_PresetExtrusionDirection;
    property PresetLightingDirection: MsoPresetLightingDirection read Get_PresetLightingDirection write Set_PresetLightingDirection;
    property PresetLightingSoftness: MsoPresetLightingSoftness read Get_PresetLightingSoftness write Set_PresetLightingSoftness;
    property PresetMaterial: MsoPresetMaterial read Get_PresetMaterial write Set_PresetMaterial;
    property PresetThreeDFormat: MsoPresetThreeDFormat read Get_PresetThreeDFormat;
    property RotationX: Single read Get_RotationX write Set_RotationX;
    property RotationY: Single read Get_RotationY write Set_RotationY;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
  end;

// *********************************************************************//
// DispIntf:  ThreeDFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493483-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ThreeDFormatDisp = dispinterface
    ['{91493483-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure IncrementRotationX {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 10;
    procedure IncrementRotationY {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 11;
    procedure ResetRotation {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 12;
    procedure SetThreeDFormat {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}PresetThreeDFormat: MsoPresetThreeDFormat); dispid 13;
    procedure SetExtrusionDirection {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}PresetExtrusionDirection: MsoPresetExtrusionDirection); dispid 14;
    property Depth {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 100;
    property ExtrusionColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorFormat readonly dispid 101;
    property ExtrusionColorType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoExtrusionColorType dispid 102;
    property Perspective {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 103;
    property PresetExtrusionDirection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPresetExtrusionDirection readonly dispid 104;
    property PresetLightingDirection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPresetLightingDirection dispid 105;
    property PresetLightingSoftness {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPresetLightingSoftness dispid 106;
    property PresetMaterial {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPresetMaterial dispid 107;
    property PresetThreeDFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoPresetThreeDFormat readonly dispid 108;
    property RotationX {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 109;
    property RotationY {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 110;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 111;
  end;

// *********************************************************************//
// Interface: TextFrame
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493484-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextFrame = interface(IDispatch)
    ['{91493484-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_MarginBottom {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_MarginBottom {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}MarginBottom: Single); safecall;
    function  Get_MarginLeft {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_MarginLeft {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}MarginLeft: Single); safecall;
    function  Get_MarginRight {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_MarginRight {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}MarginRight: Single); safecall;
    function  Get_MarginTop {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_MarginTop {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}MarginTop: Single); safecall;
    function  Get_Orientation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTextOrientation; safecall;
    procedure Set_Orientation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Orientation: MsoTextOrientation); safecall;
    function  Get_HasText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_TextRange {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TextRange; safecall;
    function  Get_Ruler {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Ruler; safecall;
    function  Get_HorizontalAnchor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoHorizontalAnchor; safecall;
    procedure Set_HorizontalAnchor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}HorizontalAnchor: MsoHorizontalAnchor); safecall;
    function  Get_VerticalAnchor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoVerticalAnchor; safecall;
    procedure Set_VerticalAnchor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}VerticalAnchor: MsoVerticalAnchor); safecall;
    function  Get_AutoSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpAutoSize; safecall;
    procedure Set_AutoSize {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AutoSize: PpAutoSize); safecall;
    function  Get_WordWrap {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_WordWrap {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}WordWrap: MsoTriState); safecall;
    procedure DeleteText {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property MarginBottom: Single read Get_MarginBottom write Set_MarginBottom;
    property MarginLeft: Single read Get_MarginLeft write Set_MarginLeft;
    property MarginRight: Single read Get_MarginRight write Set_MarginRight;
    property MarginTop: Single read Get_MarginTop write Set_MarginTop;
    property Orientation: MsoTextOrientation read Get_Orientation write Set_Orientation;
    property HasText: MsoTriState read Get_HasText;
    property TextRange: TextRange read Get_TextRange;
    property Ruler: Ruler read Get_Ruler;
    property HorizontalAnchor: MsoHorizontalAnchor read Get_HorizontalAnchor write Set_HorizontalAnchor;
    property VerticalAnchor: MsoVerticalAnchor read Get_VerticalAnchor write Set_VerticalAnchor;
    property AutoSize: PpAutoSize read Get_AutoSize write Set_AutoSize;
    property WordWrap: MsoTriState read Get_WordWrap write Set_WordWrap;
  end;

// *********************************************************************//
// DispIntf:  TextFrameDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493484-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextFrameDisp = dispinterface
    ['{91493484-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property MarginBottom {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 100;
    property MarginLeft {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 101;
    property MarginRight {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 102;
    property MarginTop {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 103;
    property Orientation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTextOrientation dispid 104;
    property HasText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2003;
    property TextRange {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TextRange readonly dispid 2004;
    property Ruler {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Ruler readonly dispid 2005;
    property HorizontalAnchor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoHorizontalAnchor dispid 2006;
    property VerticalAnchor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoVerticalAnchor dispid 2007;
    property AutoSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpAutoSize dispid 2008;
    property WordWrap {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2009;
    procedure DeleteText {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2010;
  end;

// *********************************************************************//
// Interface: CalloutFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493485-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  CalloutFormat = interface(IDispatch)
    ['{91493485-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure AutomaticLength {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure CustomDrop {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Drop: Single); safecall;
    procedure CustomLength {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Length: Single); safecall;
    procedure PresetDrop {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}DropType: MsoCalloutDropType); safecall;
    function  Get_Accent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Accent {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Accent: MsoTriState); safecall;
    function  Get_Angle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoCalloutAngleType; safecall;
    procedure Set_Angle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Angle: MsoCalloutAngleType); safecall;
    function  Get_AutoAttach {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AutoAttach {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AutoAttach: MsoTriState); safecall;
    function  Get_AutoLength {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_Border {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Border {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Border: MsoTriState); safecall;
    function  Get_Drop {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_DropType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoCalloutDropType; safecall;
    function  Get_Gap {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Gap {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Gap: Single); safecall;
    function  Get_Length {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoCalloutType; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Type_: MsoCalloutType); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property Accent: MsoTriState read Get_Accent write Set_Accent;
    property Angle: MsoCalloutAngleType read Get_Angle write Set_Angle;
    property AutoAttach: MsoTriState read Get_AutoAttach write Set_AutoAttach;
    property AutoLength: MsoTriState read Get_AutoLength;
    property Border: MsoTriState read Get_Border write Set_Border;
    property Drop: Single read Get_Drop;
    property DropType: MsoCalloutDropType read Get_DropType;
    property Gap: Single read Get_Gap write Set_Gap;
    property Length: Single read Get_Length;
    property Type_: MsoCalloutType read Get_Type_ write Set_Type_;
  end;

// *********************************************************************//
// DispIntf:  CalloutFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493485-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  CalloutFormatDisp = dispinterface
    ['{91493485-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure AutomaticLength {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 10;
    procedure CustomDrop {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Drop: Single); dispid 11;
    procedure CustomLength {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Length: Single); dispid 12;
    procedure PresetDrop {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}DropType: MsoCalloutDropType); dispid 13;
    property Accent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 100;
    property Angle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoCalloutAngleType dispid 101;
    property AutoAttach {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 102;
    property AutoLength {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 103;
    property Border {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 104;
    property Drop {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 105;
    property DropType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoCalloutDropType readonly dispid 106;
    property Gap {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 107;
    property Length {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 108;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoCalloutType dispid 109;
  end;

// *********************************************************************//
// Interface: ShapeNodes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493486-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ShapeNodes = interface(IDispatch)
    ['{91493486-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): ShapeNode; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    procedure Delete {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT); safecall;
    procedure Insert {Flags(1), (9/9) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT; 
                                                          {VT_29:0}SegmentType: MsoSegmentType; 
                                                          {VT_29:0}EditingType: MsoEditingType; 
                                                          {VT_4:0}X1: Single; {VT_4:0}Y1: Single; 
                                                          {VT_4:0}X2: Single; {VT_4:0}Y2: Single; 
                                                          {VT_4:0}X3: Single; {VT_4:0}Y3: Single); safecall;
    procedure SetEditingType {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT; 
                                                                  {VT_29:0}EditingType: MsoEditingType); safecall;
    procedure SetPosition {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT; 
                                                               {VT_4:0}X1: Single; 
                                                               {VT_4:0}Y1: Single); safecall;
    procedure SetSegmentType {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT; 
                                                                  {VT_29:0}SegmentType: MsoSegmentType); safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property Count: SYSINT read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  ShapeNodesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493486-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ShapeNodesDisp = dispinterface
    ['{91493486-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): ShapeNode; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT); dispid 11;
    procedure Insert {Flags(2), (9/9) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT; 
                                                          {VT_29:0}SegmentType: MsoSegmentType; 
                                                          {VT_29:0}EditingType: MsoEditingType; 
                                                          {VT_4:0}X1: Single; {VT_4:0}Y1: Single; 
                                                          {VT_4:0}X2: Single; {VT_4:0}Y2: Single; 
                                                          {VT_4:0}X3: Single; {VT_4:0}Y3: Single); dispid 12;
    procedure SetEditingType {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT; 
                                                                  {VT_29:0}EditingType: MsoEditingType); dispid 13;
    procedure SetPosition {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT; 
                                                               {VT_4:0}X1: Single; 
                                                               {VT_4:0}Y1: Single); dispid 14;
    procedure SetSegmentType {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT; 
                                                                  {VT_29:0}SegmentType: MsoSegmentType); dispid 15;
  end;

// *********************************************************************//
// Interface: ShapeNode
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493487-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ShapeNode = interface(IDispatch)
    ['{91493487-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_EditingType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoEditingType; safecall;
    function  Get_Points {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_SegmentType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoSegmentType; safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
    property Parent: IDispatch read Get_Parent;
    property EditingType: MsoEditingType read Get_EditingType;
    property Points: OleVariant read Get_Points;
    property SegmentType: MsoSegmentType read Get_SegmentType;
  end;

// *********************************************************************//
// DispIntf:  ShapeNodeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493487-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ShapeNodeDisp = dispinterface
    ['{91493487-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2001;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2002;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property EditingType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoEditingType readonly dispid 100;
    property Points {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 101;
    property SegmentType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoSegmentType readonly dispid 102;
  end;

// *********************************************************************//
// Interface: OLEFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493488-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  OLEFormat = interface(IDispatch)
    ['{91493488-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_ObjectVerbs {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ObjectVerbs; safecall;
    function  Get_Object_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_ProgID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FollowColors {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpFollowColors; safecall;
    procedure Set_FollowColors {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FollowColors: PpFollowColors); safecall;
    procedure DoVerb {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT); safecall;
    procedure Activate {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property ObjectVerbs: ObjectVerbs read Get_ObjectVerbs;
    property Object_: IDispatch read Get_Object_;
    property ProgID: WideString read Get_ProgID;
    property FollowColors: PpFollowColors read Get_FollowColors write Set_FollowColors;
  end;

// *********************************************************************//
// DispIntf:  OLEFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493488-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  OLEFormatDisp = dispinterface
    ['{91493488-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property ObjectVerbs {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ObjectVerbs readonly dispid 2003;
    property Object_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2004;
    property ProgID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2005;
    property FollowColors {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpFollowColors dispid 2006;
    procedure DoVerb {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT); dispid 2007;
    procedure Activate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2008;
  end;

// *********************************************************************//
// Interface: LinkFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493489-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  LinkFormat = interface(IDispatch)
    ['{91493489-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_SourceFullName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_SourceFullName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const SourceFullName: WideString); safecall;
    function  Get_AutoUpdate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpUpdateOption; safecall;
    procedure Set_AutoUpdate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AutoUpdate: PpUpdateOption); safecall;
    procedure Update {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property SourceFullName: WideString read Get_SourceFullName write Set_SourceFullName;
    property AutoUpdate: PpUpdateOption read Get_AutoUpdate write Set_AutoUpdate;
  end;

// *********************************************************************//
// DispIntf:  LinkFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493489-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  LinkFormatDisp = dispinterface
    ['{91493489-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property SourceFullName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2003;
    property AutoUpdate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpUpdateOption dispid 2004;
    procedure Update {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2005;
  end;

// *********************************************************************//
// Interface: ObjectVerbs
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348A-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ObjectVerbs = interface(Collection)
    ['{9149348A-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): WideString; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  ObjectVerbsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348A-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ObjectVerbsDisp = dispinterface
    ['{9149348A-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): WideString; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: AnimationSettings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348B-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  AnimationSettings = interface(IDispatch)
    ['{9149348B-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_DimColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorFormat; safecall;
    function  Get_SoundEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SoundEffect; safecall;
    function  Get_EntryEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpEntryEffect; safecall;
    procedure Set_EntryEffect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}EntryEffect: PpEntryEffect); safecall;
    function  Get_AfterEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpAfterEffect; safecall;
    procedure Set_AfterEffect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AfterEffect: PpAfterEffect); safecall;
    function  Get_AnimationOrder {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_AnimationOrder {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}AnimationOrder: SYSINT); safecall;
    function  Get_AdvanceMode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpAdvanceMode; safecall;
    procedure Set_AdvanceMode {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AdvanceMode: PpAdvanceMode); safecall;
    function  Get_AdvanceTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_AdvanceTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}AdvanceTime: Single); safecall;
    function  Get_PlaySettings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PlaySettings; safecall;
    function  Get_TextLevelEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpTextLevelEffect; safecall;
    procedure Set_TextLevelEffect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}TextLevelEffect: PpTextLevelEffect); safecall;
    function  Get_TextUnitEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpTextUnitEffect; safecall;
    procedure Set_TextUnitEffect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}TextUnitEffect: PpTextUnitEffect); safecall;
    function  Get_Animate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Animate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Animate: MsoTriState); safecall;
    function  Get_AnimateBackground {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AnimateBackground {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AnimateBackground: MsoTriState); safecall;
    function  Get_AnimateTextInReverse {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AnimateTextInReverse {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AnimateTextInReverse: MsoTriState); safecall;
    function  Get_ChartUnitEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpChartUnitEffect; safecall;
    procedure Set_ChartUnitEffect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ChartUnitEffect: PpChartUnitEffect); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property DimColor: ColorFormat read Get_DimColor;
    property SoundEffect: SoundEffect read Get_SoundEffect;
    property EntryEffect: PpEntryEffect read Get_EntryEffect write Set_EntryEffect;
    property AfterEffect: PpAfterEffect read Get_AfterEffect write Set_AfterEffect;
    property AnimationOrder: SYSINT read Get_AnimationOrder write Set_AnimationOrder;
    property AdvanceMode: PpAdvanceMode read Get_AdvanceMode write Set_AdvanceMode;
    property AdvanceTime: Single read Get_AdvanceTime write Set_AdvanceTime;
    property PlaySettings: PlaySettings read Get_PlaySettings;
    property TextLevelEffect: PpTextLevelEffect read Get_TextLevelEffect write Set_TextLevelEffect;
    property TextUnitEffect: PpTextUnitEffect read Get_TextUnitEffect write Set_TextUnitEffect;
    property Animate: MsoTriState read Get_Animate write Set_Animate;
    property AnimateBackground: MsoTriState read Get_AnimateBackground write Set_AnimateBackground;
    property AnimateTextInReverse: MsoTriState read Get_AnimateTextInReverse write Set_AnimateTextInReverse;
    property ChartUnitEffect: PpChartUnitEffect read Get_ChartUnitEffect write Set_ChartUnitEffect;
  end;

// *********************************************************************//
// DispIntf:  AnimationSettingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348B-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  AnimationSettingsDisp = dispinterface
    ['{9149348B-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property DimColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorFormat readonly dispid 2003;
    property SoundEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SoundEffect readonly dispid 2004;
    property EntryEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpEntryEffect dispid 2005;
    property AfterEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpAfterEffect dispid 2006;
    property AnimationOrder {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2007;
    property AdvanceMode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpAdvanceMode dispid 2008;
    property AdvanceTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2009;
    property PlaySettings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PlaySettings readonly dispid 2010;
    property TextLevelEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpTextLevelEffect dispid 2011;
    property TextUnitEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpTextUnitEffect dispid 2012;
    property Animate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2013;
    property AnimateBackground {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2014;
    property AnimateTextInReverse {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2015;
    property ChartUnitEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpChartUnitEffect dispid 2016;
  end;

// *********************************************************************//
// Interface: ActionSettings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348C-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ActionSettings = interface(Collection)
    ['{9149348C-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}index: PpMouseActivation): ActionSetting; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  ActionSettingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348C-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ActionSettingsDisp = dispinterface
    ['{9149348C-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}index: PpMouseActivation): ActionSetting; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: ActionSetting
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348D-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ActionSetting = interface(IDispatch)
    ['{9149348D-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Action {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpActionType; safecall;
    procedure Set_Action {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Action: PpActionType); safecall;
    function  Get_ActionVerb {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ActionVerb {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ActionVerb: WideString); safecall;
    function  Get_AnimateAction {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AnimateAction {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AnimateAction: MsoTriState); safecall;
    function  Get_Run {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Run {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Run: WideString); safecall;
    function  Get_SlideShowName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_SlideShowName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const SlideShowName: WideString); safecall;
    function  Get_Hyperlink {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Hyperlink; safecall;
    function  Get_SoundEffect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SoundEffect; safecall;
    function  Get_ShowandReturn {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_ShowandReturn {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ShowandReturn: MsoTriState); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Action: PpActionType read Get_Action write Set_Action;
    property ActionVerb: WideString read Get_ActionVerb write Set_ActionVerb;
    property AnimateAction: MsoTriState read Get_AnimateAction write Set_AnimateAction;
    property Run: WideString read Get_Run write Set_Run;
    property SlideShowName: WideString read Get_SlideShowName write Set_SlideShowName;
    property Hyperlink: Hyperlink read Get_Hyperlink;
    property SoundEffect: SoundEffect read Get_SoundEffect;
    property ShowandReturn: MsoTriState read Get_ShowandReturn write Set_ShowandReturn;
  end;

// *********************************************************************//
// DispIntf:  ActionSettingDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348D-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ActionSettingDisp = dispinterface
    ['{9149348D-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Action {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpActionType dispid 2003;
    property ActionVerb {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2004;
    property AnimateAction {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2005;
    property Run {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2006;
    property SlideShowName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2007;
    property Hyperlink {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Hyperlink readonly dispid 2008;
    property SoundEffect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SoundEffect readonly dispid 2009;
    property ShowandReturn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2010;
  end;

// *********************************************************************//
// Interface: PlaySettings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348E-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PlaySettings = interface(IDispatch)
    ['{9149348E-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_ActionVerb {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ActionVerb {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ActionVerb: WideString); safecall;
    function  Get_HideWhileNotPlaying {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_HideWhileNotPlaying {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}HideWhileNotPlaying: MsoTriState); safecall;
    function  Get_LoopUntilStopped {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_LoopUntilStopped {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}LoopUntilStopped: MsoTriState); safecall;
    function  Get_PlayOnEntry {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_PlayOnEntry {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}PlayOnEntry: MsoTriState); safecall;
    function  Get_RewindMovie {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_RewindMovie {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}RewindMovie: MsoTriState); safecall;
    function  Get_PauseAnimation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_PauseAnimation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}PauseAnimation: MsoTriState); safecall;
    function  Get_StopAfterSlides {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_StopAfterSlides {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}StopAfterSlides: SYSINT); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property ActionVerb: WideString read Get_ActionVerb write Set_ActionVerb;
    property HideWhileNotPlaying: MsoTriState read Get_HideWhileNotPlaying write Set_HideWhileNotPlaying;
    property LoopUntilStopped: MsoTriState read Get_LoopUntilStopped write Set_LoopUntilStopped;
    property PlayOnEntry: MsoTriState read Get_PlayOnEntry write Set_PlayOnEntry;
    property RewindMovie: MsoTriState read Get_RewindMovie write Set_RewindMovie;
    property PauseAnimation: MsoTriState read Get_PauseAnimation write Set_PauseAnimation;
    property StopAfterSlides: SYSINT read Get_StopAfterSlides write Set_StopAfterSlides;
  end;

// *********************************************************************//
// DispIntf:  PlaySettingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348E-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PlaySettingsDisp = dispinterface
    ['{9149348E-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property ActionVerb {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2003;
    property HideWhileNotPlaying {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2004;
    property LoopUntilStopped {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2005;
    property PlayOnEntry {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2006;
    property RewindMovie {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2007;
    property PauseAnimation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2008;
    property StopAfterSlides {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2009;
  end;

// *********************************************************************//
// Interface: TextRange
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348F-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextRange = interface(Collection)
    ['{9149348F-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_ActionSettings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ActionSettings; safecall;
    function  Get_Start {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Length {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_BoundLeft {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_BoundTop {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_BoundWidth {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_BoundHeight {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Paragraphs {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_22:0}Start: SYSINT; 
                                                              {VT_22:0}Length: SYSINT): TextRange; safecall;
    function  Sentences {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_22:0}Start: SYSINT; 
                                                             {VT_22:0}Length: SYSINT): TextRange; safecall;
    function  Words {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_22:0}Start: SYSINT; 
                                                         {VT_22:0}Length: SYSINT): TextRange; safecall;
    function  Characters {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_22:0}Start: SYSINT; 
                                                              {VT_22:0}Length: SYSINT): TextRange; safecall;
    function  Lines {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_22:0}Start: SYSINT; 
                                                         {VT_22:0}Length: SYSINT): TextRange; safecall;
    function  Runs {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_22:0}Start: SYSINT; 
                                                        {VT_22:0}Length: SYSINT): TextRange; safecall;
    function  TrimText {Flags(1), (1/0) CC:0, INV:1, DBG:6}: TextRange; safecall;
    function  Get_Text {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Text {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Text: WideString); safecall;
    function  InsertAfter {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const NewText: WideString): TextRange; safecall;
    function  InsertBefore {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const NewText: WideString): TextRange; safecall;
    function  InsertDateTime {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_29:0}DateTimeFormat: PpDateTimeFormat; 
                                                                  {VT_29:0}InsertAsField: MsoTriState): TextRange; safecall;
    function  InsertSlideNumber {Flags(1), (1/0) CC:0, INV:1, DBG:6}: TextRange; safecall;
    function  InsertSymbol {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_8:0}const FontName: WideString; 
                                                                {VT_22:0}CharNumber: SYSINT; 
                                                                {VT_29:0}Unicode: MsoTriState): TextRange; safecall;
    function  Get_Font {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Font; safecall;
    function  Get_ParagraphFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ParagraphFormat; safecall;
    function  Get_IndentLevel {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_IndentLevel {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}IndentLevel: SYSINT); safecall;
    procedure Select {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Cut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Copy {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Paste {Flags(1), (1/0) CC:0, INV:1, DBG:6}: TextRange; safecall;
    procedure ChangeCase {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}Type_: PpChangeCase); safecall;
    procedure AddPeriods {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure RemovePeriods {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Find {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const FindWhat: WideString; 
                                                        {VT_22:0}After: SYSINT; 
                                                        {VT_29:0}MatchCase: MsoTriState; 
                                                        {VT_29:0}WholeWords: MsoTriState): TextRange; safecall;
    function  Replace {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_8:0}const FindWhat: WideString; 
                                                           {VT_8:0}const ReplaceWhat: WideString; 
                                                           {VT_22:0}After: SYSINT; 
                                                           {VT_29:0}MatchCase: MsoTriState; 
                                                           {VT_29:0}WholeWords: MsoTriState): TextRange; safecall;
    procedure RotatedBounds {Flags(1), (8/8) CC:0, INV:1, DBG:6}({VT_4:1}out X1: Single; 
                                                                 {VT_4:1}out Y1: Single; 
                                                                 {VT_4:1}out X2: Single; 
                                                                 {VT_4:1}out Y2: Single; 
                                                                 {VT_4:1}out X3: Single; 
                                                                 {VT_4:1}out Y3: Single; 
                                                                 {VT_4:1}out x4: Single; 
                                                                 {VT_4:1}out y4: Single); safecall;
    function  Get_LanguageID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoLanguageID; safecall;
    procedure Set_LanguageID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}LanguageID: MsoLanguageID); safecall;
    procedure RtlRun {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure LtrRun {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property ActionSettings: ActionSettings read Get_ActionSettings;
    property Start: Integer read Get_Start;
    property Length: Integer read Get_Length;
    property BoundLeft: Single read Get_BoundLeft;
    property BoundTop: Single read Get_BoundTop;
    property BoundWidth: Single read Get_BoundWidth;
    property BoundHeight: Single read Get_BoundHeight;
    property Text: WideString read Get_Text write Set_Text;
    property Font: Font read Get_Font;
    property ParagraphFormat: ParagraphFormat read Get_ParagraphFormat;
    property IndentLevel: SYSINT read Get_IndentLevel write Set_IndentLevel;
    property LanguageID: MsoLanguageID read Get_LanguageID write Set_LanguageID;
  end;

// *********************************************************************//
// DispIntf:  TextRangeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149348F-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextRangeDisp = dispinterface
    ['{9149348F-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property ActionSettings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ActionSettings readonly dispid 2003;
    property Start {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2004;
    property Length {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2005;
    property BoundLeft {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2006;
    property BoundTop {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2007;
    property BoundWidth {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2008;
    property BoundHeight {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2009;
    function  Paragraphs {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_22:0}Start: SYSINT; 
                                                              {VT_22:0}Length: SYSINT): TextRange; dispid 2010;
    function  Sentences {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_22:0}Start: SYSINT; 
                                                             {VT_22:0}Length: SYSINT): TextRange; dispid 2011;
    function  Words {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_22:0}Start: SYSINT; 
                                                         {VT_22:0}Length: SYSINT): TextRange; dispid 2012;
    function  Characters {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_22:0}Start: SYSINT; 
                                                              {VT_22:0}Length: SYSINT): TextRange; dispid 2013;
    function  Lines {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_22:0}Start: SYSINT; 
                                                         {VT_22:0}Length: SYSINT): TextRange; dispid 2014;
    function  Runs {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_22:0}Start: SYSINT; 
                                                        {VT_22:0}Length: SYSINT): TextRange; dispid 2015;
    function  TrimText {Flags(2), (1/0) CC:0, INV:1, DBG:4}: TextRange; dispid 2016;
    property Text {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 0;
    function  InsertAfter {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const NewText: WideString): TextRange; dispid 2017;
    function  InsertBefore {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const NewText: WideString): TextRange; dispid 2018;
    function  InsertDateTime {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_29:0}DateTimeFormat: PpDateTimeFormat; 
                                                                  {VT_29:0}InsertAsField: MsoTriState): TextRange; dispid 2019;
    function  InsertSlideNumber {Flags(2), (1/0) CC:0, INV:1, DBG:4}: TextRange; dispid 2020;
    function  InsertSymbol {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_8:0}const FontName: WideString; 
                                                                {VT_22:0}CharNumber: SYSINT; 
                                                                {VT_29:0}Unicode: MsoTriState): TextRange; dispid 2021;
    property Font {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Font readonly dispid 2022;
    property ParagraphFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ParagraphFormat readonly dispid 2023;
    property IndentLevel {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2024;
    procedure Select {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2025;
    procedure Cut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2026;
    procedure Copy {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2027;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2028;
    function  Paste {Flags(2), (1/0) CC:0, INV:1, DBG:4}: TextRange; dispid 2029;
    procedure ChangeCase {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}Type_: PpChangeCase); dispid 2030;
    procedure AddPeriods {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2031;
    procedure RemovePeriods {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2032;
    function  Find {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const FindWhat: WideString; 
                                                        {VT_22:0}After: SYSINT; 
                                                        {VT_29:0}MatchCase: MsoTriState; 
                                                        {VT_29:0}WholeWords: MsoTriState): TextRange; dispid 2033;
    function  Replace {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_8:0}const FindWhat: WideString; 
                                                           {VT_8:0}const ReplaceWhat: WideString; 
                                                           {VT_22:0}After: SYSINT; 
                                                           {VT_29:0}MatchCase: MsoTriState; 
                                                           {VT_29:0}WholeWords: MsoTriState): TextRange; dispid 2034;
    procedure RotatedBounds {Flags(2), (8/8) CC:0, INV:1, DBG:4}({VT_4:1}out X1: Single; 
                                                                 {VT_4:1}out Y1: Single; 
                                                                 {VT_4:1}out X2: Single; 
                                                                 {VT_4:1}out Y2: Single; 
                                                                 {VT_4:1}out X3: Single; 
                                                                 {VT_4:1}out Y3: Single; 
                                                                 {VT_4:1}out x4: Single; 
                                                                 {VT_4:1}out y4: Single); dispid 2035;
    property LanguageID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoLanguageID dispid 2036;
    procedure RtlRun {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2037;
    procedure LtrRun {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2038;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: Ruler
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493490-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Ruler = interface(IDispatch)
    ['{91493490-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_TabStops {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TabStops; safecall;
    function  Get_Levels {Flags(1), (1/0) CC:0, INV:2, DBG:6}: RulerLevels; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property TabStops: TabStops read Get_TabStops;
    property Levels: RulerLevels read Get_Levels;
  end;

// *********************************************************************//
// DispIntf:  RulerDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493490-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  RulerDisp = dispinterface
    ['{91493490-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property TabStops {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TabStops readonly dispid 2003;
    property Levels {Flags(2), (1/0) CC:0, INV:2, DBG:6}: RulerLevels readonly dispid 2004;
  end;

// *********************************************************************//
// Interface: RulerLevels
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493491-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  RulerLevels = interface(Collection)
    ['{91493491-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): RulerLevel; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  RulerLevelsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493491-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  RulerLevelsDisp = dispinterface
    ['{91493491-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): RulerLevel; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: RulerLevel
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493492-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  RulerLevel = interface(IDispatch)
    ['{91493492-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_FirstMargin {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_FirstMargin {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}FirstMargin: Single); safecall;
    function  Get_LeftMargin {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_LeftMargin {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}LeftMargin: Single); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property FirstMargin: Single read Get_FirstMargin write Set_FirstMargin;
    property LeftMargin: Single read Get_LeftMargin write Set_LeftMargin;
  end;

// *********************************************************************//
// DispIntf:  RulerLevelDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493492-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  RulerLevelDisp = dispinterface
    ['{91493492-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property FirstMargin {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2003;
    property LeftMargin {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2004;
  end;

// *********************************************************************//
// Interface: TabStops
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493493-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TabStops = interface(Collection)
    ['{91493493-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): TabStop; safecall;
    function  Get_DefaultSpacing {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_DefaultSpacing {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}DefaultSpacing: Single); safecall;
    function  Add {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_29:0}Type_: PpTabStopType; 
                                                       {VT_4:0}Position: Single): TabStop; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property DefaultSpacing: Single read Get_DefaultSpacing write Set_DefaultSpacing;
  end;

// *********************************************************************//
// DispIntf:  TabStopsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493493-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TabStopsDisp = dispinterface
    ['{91493493-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): TabStop; dispid 0;
    property DefaultSpacing {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2003;
    function  Add {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_29:0}Type_: PpTabStopType; 
                                                       {VT_4:0}Position: Single): TabStop; dispid 2004;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: TabStop
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493494-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TabStop = interface(IDispatch)
    ['{91493494-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpTabStopType; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Type_: PpTabStopType); safecall;
    function  Get_Position {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Position {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Position: Single); safecall;
    procedure Clear {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Type_: PpTabStopType read Get_Type_ write Set_Type_;
    property Position: Single read Get_Position write Set_Position;
  end;

// *********************************************************************//
// DispIntf:  TabStopDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493494-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TabStopDisp = dispinterface
    ['{91493494-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpTabStopType dispid 2003;
    property Position {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2004;
    procedure Clear {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2005;
  end;

// *********************************************************************//
// Interface: Font
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493495-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Font = interface(IDispatch)
    ['{91493495-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Color {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ColorFormat; safecall;
    function  Get_Bold {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Bold {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Bold: MsoTriState); safecall;
    function  Get_Italic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Italic {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Italic: MsoTriState); safecall;
    function  Get_Shadow {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Shadow {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Shadow: MsoTriState); safecall;
    function  Get_Emboss {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Emboss {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Emboss: MsoTriState); safecall;
    function  Get_Underline {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Underline {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Underline: MsoTriState); safecall;
    function  Get_Subscript {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Subscript {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Subscript: MsoTriState); safecall;
    function  Get_Superscript {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Superscript {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Superscript: MsoTriState); safecall;
    function  Get_BaselineOffset {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_BaselineOffset {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}BaselineOffset: Single); safecall;
    function  Get_Embedded {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_Embeddable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Size {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Size: Single); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_NameFarEast {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NameFarEast {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NameFarEast: WideString); safecall;
    function  Get_NameAscii {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NameAscii {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NameAscii: WideString); safecall;
    function  Get_AutoRotateNumbers {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AutoRotateNumbers {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AutoRotateNumbers: MsoTriState); safecall;
    function  Get_NameOther {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NameOther {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NameOther: WideString); safecall;
    function  Get_NameComplexScript {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NameComplexScript {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NameComplexScript: WideString); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Color: ColorFormat read Get_Color;
    property Bold: MsoTriState read Get_Bold write Set_Bold;
    property Italic: MsoTriState read Get_Italic write Set_Italic;
    property Shadow: MsoTriState read Get_Shadow write Set_Shadow;
    property Emboss: MsoTriState read Get_Emboss write Set_Emboss;
    property Underline: MsoTriState read Get_Underline write Set_Underline;
    property Subscript: MsoTriState read Get_Subscript write Set_Subscript;
    property Superscript: MsoTriState read Get_Superscript write Set_Superscript;
    property BaselineOffset: Single read Get_BaselineOffset write Set_BaselineOffset;
    property Embedded: MsoTriState read Get_Embedded;
    property Embeddable: MsoTriState read Get_Embeddable;
    property Size: Single read Get_Size write Set_Size;
    property Name: WideString read Get_Name write Set_Name;
    property NameFarEast: WideString read Get_NameFarEast write Set_NameFarEast;
    property NameAscii: WideString read Get_NameAscii write Set_NameAscii;
    property AutoRotateNumbers: MsoTriState read Get_AutoRotateNumbers write Set_AutoRotateNumbers;
    property NameOther: WideString read Get_NameOther write Set_NameOther;
    property NameComplexScript: WideString read Get_NameComplexScript write Set_NameComplexScript;
  end;

// *********************************************************************//
// DispIntf:  FontDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493495-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FontDisp = dispinterface
    ['{91493495-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Color {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ColorFormat readonly dispid 2003;
    property Bold {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2004;
    property Italic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2005;
    property Shadow {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2006;
    property Emboss {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2007;
    property Underline {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2008;
    property Subscript {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2009;
    property Superscript {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2010;
    property BaselineOffset {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2011;
    property Embedded {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2012;
    property Embeddable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2013;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2014;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2015;
    property NameFarEast {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2016;
    property NameAscii {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2017;
    property AutoRotateNumbers {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2018;
    property NameOther {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2019;
    property NameComplexScript {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2020;
  end;

// *********************************************************************//
// Interface: ParagraphFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493496-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ParagraphFormat = interface(IDispatch)
    ['{91493496-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Alignment {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpParagraphAlignment; safecall;
    procedure Set_Alignment {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Alignment: PpParagraphAlignment); safecall;
    function  Get_Bullet {Flags(1), (1/0) CC:0, INV:2, DBG:6}: BulletFormat; safecall;
    function  Get_LineRuleBefore {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_LineRuleBefore {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}LineRuleBefore: MsoTriState); safecall;
    function  Get_LineRuleAfter {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_LineRuleAfter {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}LineRuleAfter: MsoTriState); safecall;
    function  Get_LineRuleWithin {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_LineRuleWithin {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}LineRuleWithin: MsoTriState); safecall;
    function  Get_SpaceBefore {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_SpaceBefore {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}SpaceBefore: Single); safecall;
    function  Get_SpaceAfter {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_SpaceAfter {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}SpaceAfter: Single); safecall;
    function  Get_SpaceWithin {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_SpaceWithin {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}SpaceWithin: Single); safecall;
    function  Get_BaseLineAlignment {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpBaselineAlignment; safecall;
    procedure Set_BaseLineAlignment {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}BaseLineAlignment: PpBaselineAlignment); safecall;
    function  Get_FarEastLineBreakControl {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_FarEastLineBreakControl {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FarEastLineBreakControl: MsoTriState); safecall;
    function  Get_WordWrap {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_WordWrap {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}WordWrap: MsoTriState); safecall;
    function  Get_HangingPunctuation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_HangingPunctuation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}HangingPunctuation: MsoTriState); safecall;
    function  Get_TextDirection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpDirection; safecall;
    procedure Set_TextDirection {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}TextDirection: PpDirection); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Alignment: PpParagraphAlignment read Get_Alignment write Set_Alignment;
    property Bullet: BulletFormat read Get_Bullet;
    property LineRuleBefore: MsoTriState read Get_LineRuleBefore write Set_LineRuleBefore;
    property LineRuleAfter: MsoTriState read Get_LineRuleAfter write Set_LineRuleAfter;
    property LineRuleWithin: MsoTriState read Get_LineRuleWithin write Set_LineRuleWithin;
    property SpaceBefore: Single read Get_SpaceBefore write Set_SpaceBefore;
    property SpaceAfter: Single read Get_SpaceAfter write Set_SpaceAfter;
    property SpaceWithin: Single read Get_SpaceWithin write Set_SpaceWithin;
    property BaseLineAlignment: PpBaselineAlignment read Get_BaseLineAlignment write Set_BaseLineAlignment;
    property FarEastLineBreakControl: MsoTriState read Get_FarEastLineBreakControl write Set_FarEastLineBreakControl;
    property WordWrap: MsoTriState read Get_WordWrap write Set_WordWrap;
    property HangingPunctuation: MsoTriState read Get_HangingPunctuation write Set_HangingPunctuation;
    property TextDirection: PpDirection read Get_TextDirection write Set_TextDirection;
  end;

// *********************************************************************//
// DispIntf:  ParagraphFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493496-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ParagraphFormatDisp = dispinterface
    ['{91493496-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Alignment {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpParagraphAlignment dispid 2003;
    property Bullet {Flags(2), (1/0) CC:0, INV:2, DBG:6}: BulletFormat readonly dispid 2004;
    property LineRuleBefore {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2005;
    property LineRuleAfter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2006;
    property LineRuleWithin {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2007;
    property SpaceBefore {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2008;
    property SpaceAfter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2009;
    property SpaceWithin {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2010;
    property BaseLineAlignment {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpBaselineAlignment dispid 2011;
    property FarEastLineBreakControl {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2012;
    property WordWrap {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2013;
    property HangingPunctuation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2014;
    property TextDirection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpDirection dispid 2015;
  end;

// *********************************************************************//
// Interface: BulletFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493497-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  BulletFormat = interface(IDispatch)
    ['{91493497-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    function  Get_Character {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Character {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}Character: SYSINT); safecall;
    function  Get_RelativeSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_RelativeSize {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}RelativeSize: Single); safecall;
    function  Get_UseTextColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_UseTextColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}UseTextColor: MsoTriState); safecall;
    function  Get_UseTextFont {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_UseTextFont {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}UseTextFont: MsoTriState); safecall;
    function  Get_Font {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Font; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpBulletType; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Type_: PpBulletType); safecall;
    function  Get_Style {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpNumberedBulletStyle; safecall;
    procedure Set_Style {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Style: PpNumberedBulletStyle); safecall;
    function  Get_StartValue {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_StartValue {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}StartValue: SYSINT); safecall;
    procedure Picture {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Picture: WideString); safecall;
    function  Get_Number {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
    property Character: SYSINT read Get_Character write Set_Character;
    property RelativeSize: Single read Get_RelativeSize write Set_RelativeSize;
    property UseTextColor: MsoTriState read Get_UseTextColor write Set_UseTextColor;
    property UseTextFont: MsoTriState read Get_UseTextFont write Set_UseTextFont;
    property Font: Font read Get_Font;
    property Type_: PpBulletType read Get_Type_ write Set_Type_;
    property Style: PpNumberedBulletStyle read Get_Style write Set_Style;
    property StartValue: SYSINT read Get_StartValue write Set_StartValue;
    property Number: SYSINT read Get_Number;
  end;

// *********************************************************************//
// DispIntf:  BulletFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493497-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  BulletFormatDisp = dispinterface
    ['{91493497-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 0;
    property Character {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2003;
    property RelativeSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2004;
    property UseTextColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2005;
    property UseTextFont {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2006;
    property Font {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Font readonly dispid 2007;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpBulletType dispid 2008;
    property Style {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpNumberedBulletStyle dispid 2009;
    property StartValue {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2010;
    procedure Picture {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Picture: WideString); dispid 2011;
    property Number {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2012;
  end;

// *********************************************************************//
// Interface: TextStyles
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493498-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextStyles = interface(Collection)
    ['{91493498-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}Type_: PpTextStyleType): TextStyle; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  TextStylesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493498-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextStylesDisp = dispinterface
    ['{91493498-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}Type_: PpTextStyleType): TextStyle; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: TextStyle
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493499-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextStyle = interface(IDispatch)
    ['{91493499-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Ruler {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Ruler; safecall;
    function  Get_TextFrame {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TextFrame; safecall;
    function  Get_Levels {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TextStyleLevels; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Ruler: Ruler read Get_Ruler;
    property TextFrame: TextFrame read Get_TextFrame;
    property Levels: TextStyleLevels read Get_Levels;
  end;

// *********************************************************************//
// DispIntf:  TextStyleDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {91493499-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextStyleDisp = dispinterface
    ['{91493499-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Ruler {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Ruler readonly dispid 2003;
    property TextFrame {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TextFrame readonly dispid 2004;
    property Levels {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TextStyleLevels readonly dispid 2005;
  end;

// *********************************************************************//
// Interface: TextStyleLevels
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349A-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextStyleLevels = interface(Collection)
    ['{9149349A-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}Level: SYSINT): TextStyleLevel; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  TextStyleLevelsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349A-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextStyleLevelsDisp = dispinterface
    ['{9149349A-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}Level: SYSINT): TextStyleLevel; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: TextStyleLevel
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349B-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextStyleLevel = interface(IDispatch)
    ['{9149349B-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_ParagraphFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: ParagraphFormat; safecall;
    function  Get_Font {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Font; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property ParagraphFormat: ParagraphFormat read Get_ParagraphFormat;
    property Font: Font read Get_Font;
  end;

// *********************************************************************//
// DispIntf:  TextStyleLevelDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349B-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TextStyleLevelDisp = dispinterface
    ['{9149349B-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property ParagraphFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: ParagraphFormat readonly dispid 2003;
    property Font {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Font readonly dispid 2004;
  end;

// *********************************************************************//
// Interface: HeaderFooter
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349C-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  HeaderFooter = interface(IDispatch)
    ['{9149349C-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    function  Get_Text {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Text {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Text: WideString); safecall;
    function  Get_UseFormat {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_UseFormat {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}UseFormat: MsoTriState); safecall;
    function  Get_Format {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpDateTimeFormat; safecall;
    procedure Set_Format {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Format: PpDateTimeFormat); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
    property Text: WideString read Get_Text write Set_Text;
    property UseFormat: MsoTriState read Get_UseFormat write Set_UseFormat;
    property Format: PpDateTimeFormat read Get_Format write Set_Format;
  end;

// *********************************************************************//
// DispIntf:  HeaderFooterDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349C-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  HeaderFooterDisp = dispinterface
    ['{9149349C-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2003;
    property Text {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2004;
    property UseFormat {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2005;
    property Format {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpDateTimeFormat dispid 2006;
  end;

// *********************************************************************//
// Interface: PPDialogs
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349E-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPDialogs = interface(Collection)
    ['{9149349E-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): PPDialog; safecall;
    function  AddDialog {Flags(1), (9/8) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                             {VT_4:0}Top: Single; 
                                                             {VT_4:0}Width: Single; 
                                                             {VT_4:0}Height: Single; 
                                                             {VT_29:0}Modal: MsoTriState; 
                                                             {VT_13:0}const ParentWindow: IUnknown; 
                                                             {VT_29:0}Position: PpDialogPositioning; 
                                                             {VT_29:0}DisplayHelp: MsoTriState): PPDialog; safecall;
    function  AddTabDialog {Flags(1), (9/8) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                                {VT_4:0}Top: Single; 
                                                                {VT_4:0}Width: Single; 
                                                                {VT_4:0}Height: Single; 
                                                                {VT_29:0}Modal: MsoTriState; 
                                                                {VT_13:0}const ParentWindow: IUnknown; 
                                                                {VT_29:0}Position: PpDialogPositioning; 
                                                                {VT_29:0}DisplayHelp: MsoTriState): PPDialog; safecall;
    function  LoadDialog {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_8:0}const resourceDLL: WideString; 
                                                              {VT_22:0}nResID: SYSINT; 
                                                              {VT_29:0}bModal: MsoTriState; 
                                                              {VT_13:0}const ParentWindow: IUnknown; 
                                                              {VT_29:0}Position: PpDialogPositioning): PPDialog; safecall;
    function  AddAlert {Flags(1), (1/0) CC:0, INV:1, DBG:6}: PPAlert; safecall;
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Tags; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  RunCharacterAlert {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const Text: WideString; 
                                                                     {VT_29:0}Type_: PpAlertType; 
                                                                     {VT_29:0}icon: PpAlertIcon; 
                                                                     {VT_13:0}const ParentWindow: IUnknown): PpAlertButton; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Tags: Tags read Get_Tags;
    property Name: WideString read Get_Name write Set_Name;
  end;

// *********************************************************************//
// DispIntf:  PPDialogsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349E-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPDialogsDisp = dispinterface
    ['{9149349E-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): PPDialog; dispid 0;
    function  AddDialog {Flags(2), (9/8) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                             {VT_4:0}Top: Single; 
                                                             {VT_4:0}Width: Single; 
                                                             {VT_4:0}Height: Single; 
                                                             {VT_29:0}Modal: MsoTriState; 
                                                             {VT_13:0}const ParentWindow: IUnknown; 
                                                             {VT_29:0}Position: PpDialogPositioning; 
                                                             {VT_29:0}DisplayHelp: MsoTriState): PPDialog; dispid 2002;
    function  AddTabDialog {Flags(2), (9/8) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                                {VT_4:0}Top: Single; 
                                                                {VT_4:0}Width: Single; 
                                                                {VT_4:0}Height: Single; 
                                                                {VT_29:0}Modal: MsoTriState; 
                                                                {VT_13:0}const ParentWindow: IUnknown; 
                                                                {VT_29:0}Position: PpDialogPositioning; 
                                                                {VT_29:0}DisplayHelp: MsoTriState): PPDialog; dispid 2003;
    function  LoadDialog {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_8:0}const resourceDLL: WideString; 
                                                              {VT_22:0}nResID: SYSINT; 
                                                              {VT_29:0}bModal: MsoTriState; 
                                                              {VT_13:0}const ParentWindow: IUnknown; 
                                                              {VT_29:0}Position: PpDialogPositioning): PPDialog; dispid 2004;
    function  AddAlert {Flags(2), (1/0) CC:0, INV:1, DBG:4}: PPAlert; dispid 2005;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 2006;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2007;
    function  RunCharacterAlert {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const Text: WideString; 
                                                                     {VT_29:0}Type_: PpAlertType; 
                                                                     {VT_29:0}icon: PpAlertIcon; 
                                                                     {VT_13:0}const ParentWindow: IUnknown): PpAlertButton; dispid 2008;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: PPAlert
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349F-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPAlert = interface(IDispatch)
    ['{9149349F-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Run {Flags(1), (6/6) CC:0, INV:1, DBG:6}({VT_8:0}const Title: WideString; 
                                                       {VT_22:0}Type_: SYSINT; 
                                                       {VT_8:0}const Text: WideString; 
                                                       {VT_8:0}const leftBtn: WideString; 
                                                       {VT_8:0}const middleBtn: WideString; 
                                                       {VT_8:0}const rightBtn: WideString); safecall;
    function  Get_PressedButton {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_OnButton {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnButton {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnButton: WideString); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property PressedButton: SYSINT read Get_PressedButton;
    property OnButton: WideString read Get_OnButton write Set_OnButton;
  end;

// *********************************************************************//
// DispIntf:  PPAlertDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9149349F-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPAlertDisp = dispinterface
    ['{9149349F-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    procedure Run {Flags(2), (6/6) CC:0, INV:1, DBG:4}({VT_8:0}const Title: WideString; 
                                                       {VT_22:0}Type_: SYSINT; 
                                                       {VT_8:0}const Text: WideString; 
                                                       {VT_8:0}const leftBtn: WideString; 
                                                       {VT_8:0}const middleBtn: WideString; 
                                                       {VT_8:0}const rightBtn: WideString); dispid 2003;
    property PressedButton {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2004;
    property OnButton {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2005;
  end;

// *********************************************************************//
// Interface: PPDialog
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A0-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPDialog = interface(IDispatch)
    ['{914934A0-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Style {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpDialogStyle; safecall;
    function  Get_Mode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpDialogMode; safecall;
    procedure Set_Mode {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Mode: PpDialogMode); safecall;
    function  Get_HelpId {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_HelpId {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}HelpId: SYSINT); safecall;
    function  Get_HideOnIdle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_HideOnIdle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}HideOnIdle: MsoTriState); safecall;
    function  Get_resourceDLL {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_resourceDLL {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const resourceDLL: WideString); safecall;
    function  Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Caption {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Caption: WideString); safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Left: Single); safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Top: Single); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Width: Single); safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Height: Single); safecall;
    function  Get_ClientLeft {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_ClientTop {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_ClientWidth {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_ClientHeight {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    function  Get_Controls {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PPControls; safecall;
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Tags; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_Sheets {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PPTabSheets; safecall;
    function  Get_TabControl {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PPTabControl; safecall;
    function  Get_DelayTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_DelayTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}DelayTime: SYSINT); safecall;
    function  SaveDialog {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString): SYSINT; safecall;
    procedure Terminate {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_HWND {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OnTerminate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnTerminate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnTerminate: WideString); safecall;
    function  Get_OnIdle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnIdle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnIdle: WideString); safecall;
    function  Get_OnMouseDown {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnMouseDown {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnMouseDown: WideString); safecall;
    function  Get_OnMouseUp {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnMouseUp {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnMouseUp: WideString); safecall;
    function  Get_OnKeyPressed {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnKeyPressed {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnKeyPressed: WideString); safecall;
    function  Get_OnTimer {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnTimer {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnTimer: WideString); safecall;
    function  Get_OnActivate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnActivate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnActivate: WideString); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Style: PpDialogStyle read Get_Style;
    property Mode: PpDialogMode read Get_Mode write Set_Mode;
    property HelpId: SYSINT read Get_HelpId write Set_HelpId;
    property HideOnIdle: MsoTriState read Get_HideOnIdle write Set_HideOnIdle;
    property resourceDLL: WideString read Get_resourceDLL write Set_resourceDLL;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Left: Single read Get_Left write Set_Left;
    property Top: Single read Get_Top write Set_Top;
    property Width: Single read Get_Width write Set_Width;
    property Height: Single read Get_Height write Set_Height;
    property ClientLeft: Single read Get_ClientLeft;
    property ClientTop: Single read Get_ClientTop;
    property ClientWidth: Single read Get_ClientWidth;
    property ClientHeight: Single read Get_ClientHeight;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
    property Controls: PPControls read Get_Controls;
    property Tags: Tags read Get_Tags;
    property Name: WideString read Get_Name write Set_Name;
    property Sheets: PPTabSheets read Get_Sheets;
    property TabControl: PPTabControl read Get_TabControl;
    property DelayTime: SYSINT read Get_DelayTime write Set_DelayTime;
    property HWND: Integer read Get_HWND;
    property OnTerminate: WideString read Get_OnTerminate write Set_OnTerminate;
    property OnIdle: WideString read Get_OnIdle write Set_OnIdle;
    property OnMouseDown: WideString read Get_OnMouseDown write Set_OnMouseDown;
    property OnMouseUp: WideString read Get_OnMouseUp write Set_OnMouseUp;
    property OnKeyPressed: WideString read Get_OnKeyPressed write Set_OnKeyPressed;
    property OnTimer: WideString read Get_OnTimer write Set_OnTimer;
    property OnActivate: WideString read Get_OnActivate write Set_OnActivate;
  end;

// *********************************************************************//
// DispIntf:  PPDialogDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A0-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPDialogDisp = dispinterface
    ['{914934A0-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Style {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpDialogStyle readonly dispid 2003;
    property Mode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpDialogMode dispid 2004;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2005;
    property HideOnIdle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2006;
    property resourceDLL {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2007;
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2008;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2009;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2010;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2011;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2012;
    property ClientLeft {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2013;
    property ClientTop {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2014;
    property ClientWidth {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2015;
    property ClientHeight {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2016;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2017;
    property Controls {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PPControls readonly dispid 2018;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 2019;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2020;
    property Sheets {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PPTabSheets readonly dispid 2021;
    property TabControl {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PPTabControl readonly dispid 2022;
    property DelayTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2023;
    function  SaveDialog {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString): SYSINT; dispid 2024;
    procedure Terminate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2025;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 2026;
    property OnTerminate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2027;
    property OnIdle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2028;
    property OnMouseDown {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2029;
    property OnMouseUp {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2030;
    property OnKeyPressed {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2031;
    property OnTimer {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2032;
    property OnActivate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2033;
  end;

// *********************************************************************//
// Interface: PPTabSheet
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A1-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPTabSheet = interface(IDispatch)
    ['{914934A1-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    procedure Select {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_ClientLeft {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_ClientTop {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_ClientWidth {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_ClientHeight {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    function  Get_Controls {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PPControls; safecall;
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Tags; safecall;
    function  Get_OnActivate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnActivate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnActivate: WideString); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Name: WideString read Get_Name write Set_Name;
    property ClientLeft: Single read Get_ClientLeft;
    property ClientTop: Single read Get_ClientTop;
    property ClientWidth: Single read Get_ClientWidth;
    property ClientHeight: Single read Get_ClientHeight;
    property Controls: PPControls read Get_Controls;
    property Tags: Tags read Get_Tags;
    property OnActivate: WideString read Get_OnActivate write Set_OnActivate;
  end;

// *********************************************************************//
// DispIntf:  PPTabSheetDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A1-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPTabSheetDisp = dispinterface
    ['{914934A1-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2003;
    procedure Select {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2004;
    property ClientLeft {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2005;
    property ClientTop {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2006;
    property ClientWidth {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2007;
    property ClientHeight {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single readonly dispid 2008;
    property Controls {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PPControls readonly dispid 2009;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 2010;
    property OnActivate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2011;
  end;

// *********************************************************************//
// Interface: PPControls
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A2-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPControls = interface(Collection)
    ['{914934A2-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): PPControl; safecall;
    function  AddPushButton {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                                 {VT_4:0}Top: Single; 
                                                                 {VT_4:0}Width: Single; 
                                                                 {VT_4:0}Height: Single): PPPushButton; safecall;
    function  AddToggleButton {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                                   {VT_4:0}Top: Single; 
                                                                   {VT_4:0}Width: Single; 
                                                                   {VT_4:0}Height: Single): PPToggleButton; safecall;
    function  AddBitmapButton {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                                   {VT_4:0}Top: Single; 
                                                                   {VT_4:0}Width: Single; 
                                                                   {VT_4:0}Height: Single): PPBitmapButton; safecall;
    function  AddListBox {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): PPListBox; safecall;
    function  AddCheckBox {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                               {VT_4:0}Top: Single; 
                                                               {VT_4:0}Width: Single; 
                                                               {VT_4:0}Height: Single): PPCheckBox; safecall;
    function  AddRadioCluster {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                                   {VT_4:0}Top: Single; 
                                                                   {VT_4:0}Width: Single; 
                                                                   {VT_4:0}Height: Single): PPRadioCluster; safecall;
    function  AddStaticText {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                                 {VT_4:0}Top: Single; 
                                                                 {VT_4:0}Width: Single; 
                                                                 {VT_4:0}Height: Single): PPStaticText; safecall;
    function  AddEditText {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                               {VT_4:0}Top: Single; 
                                                               {VT_4:0}Width: Single; 
                                                               {VT_4:0}Height: Single; 
                                                               {VT_12:0}VerticalScrollBar: OleVariant): PPEditText; safecall;
    function  AddIcon {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                           {VT_4:0}Top: Single; 
                                                           {VT_4:0}Width: Single; 
                                                           {VT_4:0}Height: Single): PPIcon; safecall;
    function  AddBitmap {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                             {VT_4:0}Top: Single; 
                                                             {VT_4:0}Width: Single; 
                                                             {VT_4:0}Height: Single): PPBitmap; safecall;
    function  AddSpinner {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): PPSpinner; safecall;
    function  AddScrollBar {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_29:0}Style: PpScrollBarStyle; 
                                                                {VT_4:0}Left: Single; 
                                                                {VT_4:0}Top: Single; 
                                                                {VT_4:0}Width: Single; 
                                                                {VT_4:0}Height: Single): PPScrollBar; safecall;
    function  AddGroupBox {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                               {VT_4:0}Top: Single; 
                                                               {VT_4:0}Width: Single; 
                                                               {VT_4:0}Height: Single): PPGroupBox; safecall;
    function  AddDropDown {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                               {VT_4:0}Top: Single; 
                                                               {VT_4:0}Width: Single; 
                                                               {VT_4:0}Height: Single): PPDropDown; safecall;
    function  AddDropDownEdit {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                                   {VT_4:0}Top: Single; 
                                                                   {VT_4:0}Width: Single; 
                                                                   {VT_4:0}Height: Single): PPDropDownEdit; safecall;
    function  AddMiniature {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                                {VT_4:0}Top: Single; 
                                                                {VT_4:0}Width: Single; 
                                                                {VT_4:0}Height: Single): PPSlideMiniature; safecall;
    function  AddFrame {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; 
                                                            {VT_4:0}Top: Single; 
                                                            {VT_4:0}Width: Single; 
                                                            {VT_4:0}Height: Single): PPFrame; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
  end;

// *********************************************************************//
// DispIntf:  PPControlsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A2-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPControlsDisp = dispinterface
    ['{914934A2-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): PPControl; dispid 0;
    function  AddPushButton {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                                 {VT_4:0}Top: Single; 
                                                                 {VT_4:0}Width: Single; 
                                                                 {VT_4:0}Height: Single): PPPushButton; dispid 2002;
    function  AddToggleButton {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                                   {VT_4:0}Top: Single; 
                                                                   {VT_4:0}Width: Single; 
                                                                   {VT_4:0}Height: Single): PPToggleButton; dispid 2003;
    function  AddBitmapButton {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                                   {VT_4:0}Top: Single; 
                                                                   {VT_4:0}Width: Single; 
                                                                   {VT_4:0}Height: Single): PPBitmapButton; dispid 2004;
    function  AddListBox {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): PPListBox; dispid 2005;
    function  AddCheckBox {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                               {VT_4:0}Top: Single; 
                                                               {VT_4:0}Width: Single; 
                                                               {VT_4:0}Height: Single): PPCheckBox; dispid 2006;
    function  AddRadioCluster {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                                   {VT_4:0}Top: Single; 
                                                                   {VT_4:0}Width: Single; 
                                                                   {VT_4:0}Height: Single): PPRadioCluster; dispid 2007;
    function  AddStaticText {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                                 {VT_4:0}Top: Single; 
                                                                 {VT_4:0}Width: Single; 
                                                                 {VT_4:0}Height: Single): PPStaticText; dispid 2008;
    function  AddEditText {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                               {VT_4:0}Top: Single; 
                                                               {VT_4:0}Width: Single; 
                                                               {VT_4:0}Height: Single; 
                                                               {VT_12:0}VerticalScrollBar: OleVariant): PPEditText; dispid 2009;
    function  AddIcon {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                           {VT_4:0}Top: Single; 
                                                           {VT_4:0}Width: Single; 
                                                           {VT_4:0}Height: Single): PPIcon; dispid 2010;
    function  AddBitmap {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                             {VT_4:0}Top: Single; 
                                                             {VT_4:0}Width: Single; 
                                                             {VT_4:0}Height: Single): PPBitmap; dispid 2011;
    function  AddSpinner {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                              {VT_4:0}Top: Single; 
                                                              {VT_4:0}Width: Single; 
                                                              {VT_4:0}Height: Single): PPSpinner; dispid 2012;
    function  AddScrollBar {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_29:0}Style: PpScrollBarStyle; 
                                                                {VT_4:0}Left: Single; 
                                                                {VT_4:0}Top: Single; 
                                                                {VT_4:0}Width: Single; 
                                                                {VT_4:0}Height: Single): PPScrollBar; dispid 2013;
    function  AddGroupBox {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                               {VT_4:0}Top: Single; 
                                                               {VT_4:0}Width: Single; 
                                                               {VT_4:0}Height: Single): PPGroupBox; dispid 2014;
    function  AddDropDown {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                               {VT_4:0}Top: Single; 
                                                               {VT_4:0}Width: Single; 
                                                               {VT_4:0}Height: Single): PPDropDown; dispid 2015;
    function  AddDropDownEdit {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                                   {VT_4:0}Top: Single; 
                                                                   {VT_4:0}Width: Single; 
                                                                   {VT_4:0}Height: Single): PPDropDownEdit; dispid 2016;
    function  AddMiniature {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                                {VT_4:0}Top: Single; 
                                                                {VT_4:0}Width: Single; 
                                                                {VT_4:0}Height: Single): PPSlideMiniature; dispid 2017;
    function  AddFrame {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; 
                                                            {VT_4:0}Top: Single; 
                                                            {VT_4:0}Width: Single; 
                                                            {VT_4:0}Height: Single): PPFrame; dispid 2018;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2019;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: PPTabSheets
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A3-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPTabSheets = interface(Collection)
    ['{914934A3-5A91-11CF-8700-00AA0060263B}']
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): PPTabSheet; safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString): PPTabSheet; safecall;
    function  Get_ActiveSheet {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PPTabSheet; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    property ActiveSheet: PPTabSheet read Get_ActiveSheet;
    property Name: WideString read Get_Name write Set_Name;
  end;

// *********************************************************************//
// DispIntf:  PPTabSheetsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A3-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPTabSheetsDisp = dispinterface
    ['{914934A3-5A91-11CF-8700-00AA0060263B}']
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): PPTabSheet; dispid 0;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString): PPTabSheet; dispid 2001;
    property ActiveSheet {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PPTabSheet readonly dispid 2002;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: PPControl
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {914934A4-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPControl = interface(IDispatch)
    ['{914934A4-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Enable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Enable {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Enable: MsoTriState); safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Visible: MsoTriState); safecall;
    function  Get_Focus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_Focus {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Focus: MsoTriState); safecall;
    function  Get_Label_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Label_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Label_: WideString); safecall;
    function  Get_HelpId {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_HelpId {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}HelpId: SYSINT); safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Left: Single); safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Top: Single); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Width: Single); safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Height: Single); safecall;
    function  Get_HWND {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OnSetFocus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnSetFocus {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnSetFocus: WideString); safecall;
    function  Get_OnKillFocus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnKillFocus {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnKillFocus: WideString); safecall;
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Tags; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Enable: MsoTriState read Get_Enable write Set_Enable;
    property Visible: MsoTriState read Get_Visible write Set_Visible;
    property Focus: MsoTriState read Get_Focus write Set_Focus;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property HelpId: SYSINT read Get_HelpId write Set_HelpId;
    property Left: Single read Get_Left write Set_Left;
    property Top: Single read Get_Top write Set_Top;
    property Width: Single read Get_Width write Set_Width;
    property Height: Single read Get_Height write Set_Height;
    property HWND: Integer read Get_HWND;
    property OnSetFocus: WideString read Get_OnSetFocus write Set_OnSetFocus;
    property OnKillFocus: WideString read Get_OnKillFocus write Set_OnKillFocus;
    property Tags: Tags read Get_Tags;
    property Name: WideString read Get_Name write Set_Name;
  end;

// *********************************************************************//
// DispIntf:  PPControlDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {914934A4-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPControlDisp = dispinterface
    ['{914934A4-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPPushButton
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A5-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPPushButton = interface(PPControl)
    ['{914934A5-5A91-11CF-8700-00AA0060263B}']
    procedure Click {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_IsDefault {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_IsDefault {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}IsDefault: MsoTriState); safecall;
    function  Get_IsEscape {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_IsEscape {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}IsEscape: MsoTriState); safecall;
    function  Get_OnPressed {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnPressed {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnPressed: WideString); safecall;
    property IsDefault: MsoTriState read Get_IsDefault write Set_IsDefault;
    property IsEscape: MsoTriState read Get_IsEscape write Set_IsEscape;
    property OnPressed: WideString read Get_OnPressed write Set_OnPressed;
  end;

// *********************************************************************//
// DispIntf:  PPPushButtonDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A5-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPPushButtonDisp = dispinterface
    ['{914934A5-5A91-11CF-8700-00AA0060263B}']
    procedure Click {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2001;
    property IsDefault {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2002;
    property IsEscape {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2003;
    property OnPressed {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2004;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPToggleButton
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A6-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPToggleButton = interface(PPControl)
    ['{914934A6-5A91-11CF-8700-00AA0060263B}']
    function  Get_State {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_State {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}State: MsoTriState); safecall;
    function  Get_ResourceID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_ResourceID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}ResourceID: SYSINT); safecall;
    procedure Click {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_OnClick {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnClick {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnClick: WideString); safecall;
    property State: MsoTriState read Get_State write Set_State;
    property ResourceID: SYSINT read Get_ResourceID write Set_ResourceID;
    property OnClick: WideString read Get_OnClick write Set_OnClick;
  end;

// *********************************************************************//
// DispIntf:  PPToggleButtonDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A6-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPToggleButtonDisp = dispinterface
    ['{914934A6-5A91-11CF-8700-00AA0060263B}']
    property State {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2001;
    property ResourceID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2002;
    procedure Click {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2003;
    property OnClick {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2004;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPBitmapButton
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A7-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPBitmapButton = interface(PPControl)
    ['{914934A7-5A91-11CF-8700-00AA0060263B}']
    procedure Click {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_ResourceID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_ResourceID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}ResourceID: SYSINT); safecall;
    function  Get_OnPressed {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnPressed {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnPressed: WideString); safecall;
    function  Get_IsDefault {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_IsDefault {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}IsDefault: MsoTriState); safecall;
    function  Get_IsEscape {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_IsEscape {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}IsEscape: MsoTriState); safecall;
    property ResourceID: SYSINT read Get_ResourceID write Set_ResourceID;
    property OnPressed: WideString read Get_OnPressed write Set_OnPressed;
    property IsDefault: MsoTriState read Get_IsDefault write Set_IsDefault;
    property IsEscape: MsoTriState read Get_IsEscape write Set_IsEscape;
  end;

// *********************************************************************//
// DispIntf:  PPBitmapButtonDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A7-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPBitmapButtonDisp = dispinterface
    ['{914934A7-5A91-11CF-8700-00AA0060263B}']
    procedure Click {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2001;
    property ResourceID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2002;
    property OnPressed {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2003;
    property IsDefault {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2004;
    property IsEscape {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2005;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPListBox
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A8-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPListBox = interface(PPControl)
    ['{914934A8-5A91-11CF-8700-00AA0060263B}']
    function  Get_Strings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PPStrings; safecall;
    function  Get_SelectionStyle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpListBoxSelectionStyle; safecall;
    procedure Set_SelectionStyle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}SelectionStyle: PpListBoxSelectionStyle); safecall;
    procedure SetTabStops {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}safeArrayTabStops: OleVariant); safecall;
    function  Get_FocusItem {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_FocusItem {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}FocusItem: SYSINT); safecall;
    function  Get_TopItem {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_OnSelectionChange {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnSelectionChange {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnSelectionChange: WideString); safecall;
    function  Get_OnDoubleClick {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnDoubleClick {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnDoubleClick: WideString); safecall;
    function  Get_IsSelected {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_22:0}index: SYSINT): MsoTriState; safecall;
    procedure Set_IsSelected {Flags(1), (2/2) CC:0, INV:4, DBG:6}({VT_22:0}index: SYSINT; 
                                                                  {VT_29:0}IsSelected: MsoTriState); safecall;
    procedure Abbreviate {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}Style: PpListBoxAbbreviationStyle); safecall;
    function  Get_IsAbbreviated {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpListBoxAbbreviationStyle; safecall;
    property Strings: PPStrings read Get_Strings;
    property SelectionStyle: PpListBoxSelectionStyle read Get_SelectionStyle write Set_SelectionStyle;
    property FocusItem: SYSINT read Get_FocusItem write Set_FocusItem;
    property TopItem: SYSINT read Get_TopItem;
    property OnSelectionChange: WideString read Get_OnSelectionChange write Set_OnSelectionChange;
    property OnDoubleClick: WideString read Get_OnDoubleClick write Set_OnDoubleClick;
    property IsSelected {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_22:0}index: SYSINT]: MsoTriState read Get_IsSelected write Set_IsSelected;
    property IsAbbreviated: PpListBoxAbbreviationStyle read Get_IsAbbreviated;
  end;

// *********************************************************************//
// DispIntf:  PPListBoxDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A8-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPListBoxDisp = dispinterface
    ['{914934A8-5A91-11CF-8700-00AA0060263B}']
    property Strings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PPStrings readonly dispid 2001;
    property SelectionStyle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpListBoxSelectionStyle dispid 2002;
    procedure SetTabStops {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}safeArrayTabStops: OleVariant); dispid 2003;
    property FocusItem {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2004;
    property TopItem {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2005;
    property OnSelectionChange {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2006;
    property OnDoubleClick {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2007;
    property IsSelected {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_22:0}index: SYSINT]: MsoTriState dispid 999;
    procedure Abbreviate {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}Style: PpListBoxAbbreviationStyle); dispid 2008;
    property IsAbbreviated {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpListBoxAbbreviationStyle readonly dispid 2009;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPStrings
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A9-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPStrings = interface(Collection)
    ['{914934A9-5A91-11CF-8700-00AA0060263B}']
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): WideString; safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const String_: WideString): WideString; safecall;
    procedure Insert {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const String_: WideString; 
                                                          {VT_22:0}Position: SYSINT); safecall;
    procedure Delete {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT); safecall;
  end;

// *********************************************************************//
// DispIntf:  PPStringsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934A9-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPStringsDisp = dispinterface
    ['{914934A9-5A91-11CF-8700-00AA0060263B}']
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): WideString; dispid 0;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const String_: WideString): WideString; dispid 2001;
    procedure Insert {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const String_: WideString; 
                                                          {VT_22:0}Position: SYSINT); dispid 2002;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT); dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: PPCheckBox
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AA-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPCheckBox = interface(PPControl)
    ['{914934AA-5A91-11CF-8700-00AA0060263B}']
    function  Get_State {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_State {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}State: MsoTriState); safecall;
    procedure Click {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_OnClick {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnClick {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnClick: WideString); safecall;
    property State: MsoTriState read Get_State write Set_State;
    property OnClick: WideString read Get_OnClick write Set_OnClick;
  end;

// *********************************************************************//
// DispIntf:  PPCheckBoxDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AA-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPCheckBoxDisp = dispinterface
    ['{914934AA-5A91-11CF-8700-00AA0060263B}']
    property State {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2001;
    procedure Click {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2002;
    property OnClick {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2003;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPRadioCluster
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AB-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPRadioCluster = interface(PPControl)
    ['{914934AB-5A91-11CF-8700-00AA0060263B}']
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}index: OleVariant): PPRadioButton; safecall;
    function  Add {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_4:0}Left: Single; {VT_4:0}Top: Single; 
                                                       {VT_4:0}Width: Single; {VT_4:0}Height: Single): PPRadioButton; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Selected {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PPRadioButton; safecall;
    function  Get_OnClick {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnClick {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnClick: WideString); safecall;
    property Count: SYSINT read Get_Count;
    property Selected: PPRadioButton read Get_Selected;
    property OnClick: WideString read Get_OnClick write Set_OnClick;
  end;

// *********************************************************************//
// DispIntf:  PPRadioClusterDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AB-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPRadioClusterDisp = dispinterface
    ['{914934AB-5A91-11CF-8700-00AA0060263B}']
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}index: OleVariant): PPRadioButton; dispid 0;
    function  Add {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_4:0}Left: Single; {VT_4:0}Top: Single; 
                                                       {VT_4:0}Width: Single; {VT_4:0}Height: Single): PPRadioButton; dispid 2001;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2002;
    property Selected {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PPRadioButton readonly dispid 2003;
    property OnClick {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2004;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPStaticText
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AC-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPStaticText = interface(PPControl)
    ['{914934AC-5A91-11CF-8700-00AA0060263B}']
    function  Get_UseForegroundColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_UseForegroundColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}UseForegroundColor: MsoTriState); safecall;
    function  Get_UseBackgroundColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_UseBackgroundColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}UseBackgroundColor: MsoTriState); safecall;
    function  Get_ForegroundColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType; safecall;
    procedure Set_ForegroundColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}ForegroundColor: MsoRGBType); safecall;
    function  Get_BackgroundColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType; safecall;
    procedure Set_BackgroundColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}BackgroundColor: MsoRGBType); safecall;
    property UseForegroundColor: MsoTriState read Get_UseForegroundColor write Set_UseForegroundColor;
    property UseBackgroundColor: MsoTriState read Get_UseBackgroundColor write Set_UseBackgroundColor;
    property ForegroundColor: MsoRGBType read Get_ForegroundColor write Set_ForegroundColor;
    property BackgroundColor: MsoRGBType read Get_BackgroundColor write Set_BackgroundColor;
  end;

// *********************************************************************//
// DispIntf:  PPStaticTextDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AC-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPStaticTextDisp = dispinterface
    ['{914934AC-5A91-11CF-8700-00AA0060263B}']
    property UseForegroundColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2001;
    property UseBackgroundColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2002;
    property ForegroundColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType dispid 2003;
    property BackgroundColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType dispid 2004;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPEditText
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AD-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPEditText = interface(PPControl)
    ['{914934AD-5A91-11CF-8700-00AA0060263B}']
    function  Get_MultiLine {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_MultiLine {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}MultiLine: MsoTriState); safecall;
    function  Get_VerticalScrollBar {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_VerticalScrollBar {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}VerticalScrollBar: MsoTriState); safecall;
    function  Get_WordWrap {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_WordWrap {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}WordWrap: MsoTriState); safecall;
    function  Get_ReadOnly {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_ReadOnly {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ReadOnly: MsoTriState); safecall;
    function  Get_Text {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Text {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Text: WideString); safecall;
    function  Get_MaxLength {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_MaxLength {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}MaxLength: SYSINT); safecall;
    function  Get_OnAChange {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnAChange {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnAChange: WideString); safecall;
    property MultiLine: MsoTriState read Get_MultiLine write Set_MultiLine;
    property VerticalScrollBar: MsoTriState read Get_VerticalScrollBar write Set_VerticalScrollBar;
    property WordWrap: MsoTriState read Get_WordWrap write Set_WordWrap;
    property ReadOnly: MsoTriState read Get_ReadOnly write Set_ReadOnly;
    property Text: WideString read Get_Text write Set_Text;
    property MaxLength: SYSINT read Get_MaxLength write Set_MaxLength;
    property OnAChange: WideString read Get_OnAChange write Set_OnAChange;
  end;

// *********************************************************************//
// DispIntf:  PPEditTextDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AD-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPEditTextDisp = dispinterface
    ['{914934AD-5A91-11CF-8700-00AA0060263B}']
    property MultiLine {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2001;
    property VerticalScrollBar {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2002;
    property WordWrap {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2003;
    property ReadOnly {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2004;
    property Text {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2005;
    property MaxLength {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2006;
    property OnAChange {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2007;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPIcon
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AE-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPIcon = interface(PPControl)
    ['{914934AE-5A91-11CF-8700-00AA0060263B}']
    function  Get_ResourceID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_ResourceID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}ResourceID: SYSINT); safecall;
    property ResourceID: SYSINT read Get_ResourceID write Set_ResourceID;
  end;

// *********************************************************************//
// DispIntf:  PPIconDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AE-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPIconDisp = dispinterface
    ['{914934AE-5A91-11CF-8700-00AA0060263B}']
    property ResourceID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2001;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPBitmap
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AF-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPBitmap = interface(PPControl)
    ['{914934AF-5A91-11CF-8700-00AA0060263B}']
    function  Get_ResourceID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_ResourceID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}ResourceID: SYSINT); safecall;
    function  Get_OnClick {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnClick {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnClick: WideString); safecall;
    property ResourceID: SYSINT read Get_ResourceID write Set_ResourceID;
    property OnClick: WideString read Get_OnClick write Set_OnClick;
  end;

// *********************************************************************//
// DispIntf:  PPBitmapDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934AF-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPBitmapDisp = dispinterface
    ['{914934AF-5A91-11CF-8700-00AA0060263B}']
    property ResourceID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2000;
    property OnClick {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2001;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPSpinner
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B0-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPSpinner = interface(PPControl)
    ['{914934B0-5A91-11CF-8700-00AA0060263B}']
    function  Get_Minimum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Minimum {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}Minimum: SYSINT); safecall;
    function  Get_Maximum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Maximum {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}Maximum: SYSINT); safecall;
    function  Get_Increment {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Increment {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}Increment: SYSINT); safecall;
    function  Get_PageChange {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_PageChange {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}PageChange: SYSINT); safecall;
    function  Get_CurrentValue {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_CurrentValue {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}CurrentValue: SYSINT); safecall;
    function  Get_OnAChange {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnAChange {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnAChange: WideString); safecall;
    property Minimum: SYSINT read Get_Minimum write Set_Minimum;
    property Maximum: SYSINT read Get_Maximum write Set_Maximum;
    property Increment: SYSINT read Get_Increment write Set_Increment;
    property PageChange: SYSINT read Get_PageChange write Set_PageChange;
    property CurrentValue: SYSINT read Get_CurrentValue write Set_CurrentValue;
    property OnAChange: WideString read Get_OnAChange write Set_OnAChange;
  end;

// *********************************************************************//
// DispIntf:  PPSpinnerDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B0-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPSpinnerDisp = dispinterface
    ['{914934B0-5A91-11CF-8700-00AA0060263B}']
    property Minimum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2001;
    property Maximum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2002;
    property Increment {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2003;
    property PageChange {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2004;
    property CurrentValue {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2005;
    property OnAChange {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2006;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPScrollBar
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B1-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPScrollBar = interface(PPControl)
    ['{914934B1-5A91-11CF-8700-00AA0060263B}']
    function  Get_Minimum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Minimum {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}Minimum: SYSINT); safecall;
    function  Get_Maximum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Maximum {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}Maximum: SYSINT); safecall;
    function  Get_Increment {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Increment {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}Increment: SYSINT); safecall;
    function  Get_PageChange {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_PageChange {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}PageChange: SYSINT); safecall;
    function  Get_CurrentValue {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_CurrentValue {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}CurrentValue: SYSINT); safecall;
    function  Get_OnScroll {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnScroll {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnScroll: WideString); safecall;
    property Minimum: SYSINT read Get_Minimum write Set_Minimum;
    property Maximum: SYSINT read Get_Maximum write Set_Maximum;
    property Increment: SYSINT read Get_Increment write Set_Increment;
    property PageChange: SYSINT read Get_PageChange write Set_PageChange;
    property CurrentValue: SYSINT read Get_CurrentValue write Set_CurrentValue;
    property OnScroll: WideString read Get_OnScroll write Set_OnScroll;
  end;

// *********************************************************************//
// DispIntf:  PPScrollBarDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B1-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPScrollBarDisp = dispinterface
    ['{914934B1-5A91-11CF-8700-00AA0060263B}']
    property Minimum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2001;
    property Maximum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2002;
    property Increment {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2003;
    property PageChange {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2004;
    property CurrentValue {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2005;
    property OnScroll {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2006;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPGroupBox
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B2-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPGroupBox = interface(PPControl)
    ['{914934B2-5A91-11CF-8700-00AA0060263B}']
  end;

// *********************************************************************//
// DispIntf:  PPGroupBoxDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B2-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPGroupBoxDisp = dispinterface
    ['{914934B2-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPFrame
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B3-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPFrame = interface(PPControl)
    ['{914934B3-5A91-11CF-8700-00AA0060263B}']
  end;

// *********************************************************************//
// DispIntf:  PPFrameDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B3-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPFrameDisp = dispinterface
    ['{914934B3-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPTabControl
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B4-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPTabControl = interface(PPControl)
    ['{914934B4-5A91-11CF-8700-00AA0060263B}']
  end;

// *********************************************************************//
// DispIntf:  PPTabControlDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B4-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPTabControlDisp = dispinterface
    ['{914934B4-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPDropDown
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B5-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPDropDown = interface(PPControl)
    ['{914934B5-5A91-11CF-8700-00AA0060263B}']
    function  Get_Strings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PPStrings; safecall;
    function  Get_FocusItem {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_FocusItem {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}FocusItem: SYSINT); safecall;
    function  Get_OnSelectionChange {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnSelectionChange {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnSelectionChange: WideString); safecall;
    property Strings: PPStrings read Get_Strings;
    property FocusItem: SYSINT read Get_FocusItem write Set_FocusItem;
    property OnSelectionChange: WideString read Get_OnSelectionChange write Set_OnSelectionChange;
  end;

// *********************************************************************//
// DispIntf:  PPDropDownDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B5-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPDropDownDisp = dispinterface
    ['{914934B5-5A91-11CF-8700-00AA0060263B}']
    property Strings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PPStrings readonly dispid 2001;
    property FocusItem {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2002;
    property OnSelectionChange {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2003;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPDropDownEdit
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B6-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPDropDownEdit = interface(PPControl)
    ['{914934B6-5A91-11CF-8700-00AA0060263B}']
    function  Get_Strings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PPStrings; safecall;
    function  Get_FocusItem {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_FocusItem {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}FocusItem: SYSINT); safecall;
    function  Get_OnSelectionChange {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnSelectionChange {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnSelectionChange: WideString); safecall;
    function  Get_OnEdit {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnEdit {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnEdit: WideString); safecall;
    property Strings: PPStrings read Get_Strings;
    property FocusItem: SYSINT read Get_FocusItem write Set_FocusItem;
    property OnSelectionChange: WideString read Get_OnSelectionChange write Set_OnSelectionChange;
    property OnEdit: WideString read Get_OnEdit write Set_OnEdit;
  end;

// *********************************************************************//
// DispIntf:  PPDropDownEditDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B6-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPDropDownEditDisp = dispinterface
    ['{914934B6-5A91-11CF-8700-00AA0060263B}']
    property Strings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PPStrings readonly dispid 2001;
    property FocusItem {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2002;
    property OnSelectionChange {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2003;
    property OnEdit {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2004;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPSlideMiniature
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B7-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPSlideMiniature = interface(PPControl)
    ['{914934B7-5A91-11CF-8700-00AA0060263B}']
    procedure SetImage {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const Slide: PowerPointSlide); safecall;
    function  Get_Selected {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Selected {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}Selected: SYSINT); safecall;
    function  Get_OnClick {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnClick {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnClick: WideString); safecall;
    function  Get_OnDoubleClick {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnDoubleClick {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnDoubleClick: WideString); safecall;
    property Selected: SYSINT read Get_Selected write Set_Selected;
    property OnClick: WideString read Get_OnClick write Set_OnClick;
    property OnDoubleClick: WideString read Get_OnDoubleClick write Set_OnDoubleClick;
  end;

// *********************************************************************//
// DispIntf:  PPSlideMiniatureDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B7-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPSlideMiniatureDisp = dispinterface
    ['{914934B7-5A91-11CF-8700-00AA0060263B}']
    procedure SetImage {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Slide: PowerPointSlide); dispid 2001;
    property Selected {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2002;
    property OnClick {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2003;
    property OnDoubleClick {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2004;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: PPRadioButton
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B8-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPRadioButton = interface(PPControl)
    ['{914934B8-5A91-11CF-8700-00AA0060263B}']
    function  Get_State {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_State {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}State: MsoTriState); safecall;
    procedure Click {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure DoubleClick {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_OnClick {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnClick {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnClick: WideString); safecall;
    function  Get_OnDoubleClick {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnDoubleClick {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnDoubleClick: WideString); safecall;
    property State: MsoTriState read Get_State write Set_State;
    property OnClick: WideString read Get_OnClick write Set_OnClick;
    property OnDoubleClick: WideString read Get_OnDoubleClick write Set_OnDoubleClick;
  end;

// *********************************************************************//
// DispIntf:  PPRadioButtonDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B8-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PPRadioButtonDisp = dispinterface
    ['{914934B8-5A91-11CF-8700-00AA0060263B}']
    property State {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2001;
    procedure Click {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2002;
    procedure DoubleClick {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2003;
    property OnClick {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2004;
    property OnDoubleClick {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2005;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 1001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1002;
    property Enable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1003;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1004;
    property Focus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 1005;
    property Label_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1006;
    property HelpId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 1007;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1008;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1009;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1010;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 1011;
    property HWND {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1012;
    property OnSetFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1013;
    property OnKillFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1014;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Tags readonly dispid 1015;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1016;
  end;

// *********************************************************************//
// Interface: Tags
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B9-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Tags = interface(Collection)
    ['{914934B9-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString): WideString; safecall;
    procedure Add {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                       {VT_8:0}const Value: WideString); safecall;
    procedure Delete {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString); safecall;
    procedure AddBinary {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                             {VT_8:0}const FilePath: WideString); safecall;
    function  BinaryValue {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString): Integer; safecall;
    function  Name {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): WideString; safecall;
    function  Value {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): WideString; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  TagsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934B9-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TagsDisp = dispinterface
    ['{914934B9-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString): WideString; dispid 0;
    procedure Add {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                       {VT_8:0}const Value: WideString); dispid 2003;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 2004;
    procedure AddBinary {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                             {VT_8:0}const FilePath: WideString); dispid 2005;
    function  BinaryValue {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString): Integer; dispid 2006;
    function  Name {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): WideString; dispid 2007;
    function  Value {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): WideString; dispid 2008;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: FileDialogFileList
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934BA-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FileDialogFileList = interface(Collection)
    ['{914934BA-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): WideString; safecall;
    function  DisplayName {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): WideString; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  FileDialogFileListDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934BA-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FileDialogFileListDisp = dispinterface
    ['{914934BA-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): WideString; dispid 0;
    function  DisplayName {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): WideString; dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: FileDialogExtension
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934BB-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FileDialogExtension = interface(IDispatch)
    ['{914934BB-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Extensions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Extensions {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Extensions: WideString); safecall;
    function  Get_Description {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Description {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Description: WideString); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Extensions: WideString read Get_Extensions write Set_Extensions;
    property Description: WideString read Get_Description write Set_Description;
  end;

// *********************************************************************//
// DispIntf:  FileDialogExtensionDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934BB-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FileDialogExtensionDisp = dispinterface
    ['{914934BB-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Extensions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2003;
    property Description {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2004;
  end;

// *********************************************************************//
// Interface: FileDialogExtensionList
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934BC-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FileDialogExtensionList = interface(Collection)
    ['{914934BC-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): FileDialogExtension; safecall;
    function  Add {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const Extension: WideString; 
                                                       {VT_8:0}const Description: WideString): FileDialogExtension; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  FileDialogExtensionListDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934BC-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FileDialogExtensionListDisp = dispinterface
    ['{914934BC-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): FileDialogExtension; dispid 0;
    function  Add {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const Extension: WideString; 
                                                       {VT_8:0}const Description: WideString): FileDialogExtension; dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: FileDialog
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934BD-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FileDialog = interface(IDispatch)
    ['{914934BD-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Extensions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FileDialogExtensionList; safecall;
    function  Get_DefaultDirectoryRegKey {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_DefaultDirectoryRegKey {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const DefaultDirectoryRegKey: WideString); safecall;
    function  Get_DialogTitle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_DialogTitle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const DialogTitle: WideString); safecall;
    function  Get_ActionButtonName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ActionButtonName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ActionButtonName: WideString); safecall;
    function  Get_IsMultiSelect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_IsMultiSelect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}IsMultiSelect: MsoTriState); safecall;
    function  Get_IsPrintEnabled {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_IsPrintEnabled {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}IsPrintEnabled: MsoTriState); safecall;
    function  Get_IsReadOnlyEnabled {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_IsReadOnlyEnabled {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}IsReadOnlyEnabled: MsoTriState); safecall;
    function  Get_DirectoriesOnly {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_DirectoriesOnly {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}DirectoriesOnly: MsoTriState); safecall;
    function  Get_InitialView {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpFileDialogView; safecall;
    procedure Set_InitialView {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}InitialView: PpFileDialogView); safecall;
    procedure Launch {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_13:0}const pUnk: IUnknown); safecall;
    function  Get_OnAction {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnAction {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OnAction: WideString); safecall;
    function  Get_Files {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FileDialogFileList; safecall;
    function  Get_UseODMADlgs {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_UseODMADlgs {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}UseODMADlgs: MsoTriState); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Extensions: FileDialogExtensionList read Get_Extensions;
    property DefaultDirectoryRegKey: WideString read Get_DefaultDirectoryRegKey write Set_DefaultDirectoryRegKey;
    property DialogTitle: WideString read Get_DialogTitle write Set_DialogTitle;
    property ActionButtonName: WideString read Get_ActionButtonName write Set_ActionButtonName;
    property IsMultiSelect: MsoTriState read Get_IsMultiSelect write Set_IsMultiSelect;
    property IsPrintEnabled: MsoTriState read Get_IsPrintEnabled write Set_IsPrintEnabled;
    property IsReadOnlyEnabled: MsoTriState read Get_IsReadOnlyEnabled write Set_IsReadOnlyEnabled;
    property DirectoriesOnly: MsoTriState read Get_DirectoriesOnly write Set_DirectoriesOnly;
    property InitialView: PpFileDialogView read Get_InitialView write Set_InitialView;
    property OnAction: WideString read Get_OnAction write Set_OnAction;
    property Files: FileDialogFileList read Get_Files;
    property UseODMADlgs: MsoTriState read Get_UseODMADlgs write Set_UseODMADlgs;
  end;

// *********************************************************************//
// DispIntf:  FileDialogDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934BD-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  FileDialogDisp = dispinterface
    ['{914934BD-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Extensions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FileDialogExtensionList readonly dispid 2003;
    property DefaultDirectoryRegKey {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2004;
    property DialogTitle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2005;
    property ActionButtonName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2006;
    property IsMultiSelect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2007;
    property IsPrintEnabled {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2008;
    property IsReadOnlyEnabled {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2009;
    property DirectoriesOnly {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2010;
    property InitialView {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpFileDialogView dispid 2011;
    procedure Launch {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_13:0}const pUnk: IUnknown); dispid 2012;
    property OnAction {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2013;
    property Files {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FileDialogFileList readonly dispid 2014;
    property UseODMADlgs {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2015;
  end;

// *********************************************************************//
// Interface: MouseTracker
// Flags:     (16) Hidden
// GUID:      {914934BE-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  MouseTracker = interface(IUnknown)
    ['{914934BE-5A91-11CF-8700-00AA0060263B}']
    function  OnTrack {Flags(1), (2/2) CC:4, INV:1, DBG:6}({VT_4:0}X: Single; {VT_4:0}Y: Single): HResult; stdcall;
    function  EndTrack {Flags(1), (2/2) CC:4, INV:1, DBG:6}({VT_4:0}X: Single; {VT_4:0}Y: Single): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: MouseDownHandler
// Flags:     (16) Hidden
// GUID:      {914934BF-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  MouseDownHandler = interface(IUnknown)
    ['{914934BF-5A91-11CF-8700-00AA0060263B}']
    function  OnMouseDown {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_13:0}const activeWin: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: OCXExtender
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C0-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  OCXExtender = interface(IDispatch)
    ['{914934C0-5A91-11CF-8700-00AA0060263B}']
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}Visible: WordBool); safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Left: Single); safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Top: Single); safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Height: Single); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Width: Single); safecall;
    function  Get_ZOrderPosition {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_AltHTML {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_AltHTML {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const AltHTML: WideString); safecall;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Left: Single read Get_Left write Set_Left;
    property Top: Single read Get_Top write Set_Top;
    property Height: Single read Get_Height write Set_Height;
    property Width: Single read Get_Width write Set_Width;
    property ZOrderPosition: SYSINT read Get_ZOrderPosition;
    property Name: WideString read Get_Name write Set_Name;
    property AltHTML: WideString read Get_AltHTML write Set_AltHTML;
  end;

// *********************************************************************//
// DispIntf:  OCXExtenderDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C0-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  OCXExtenderDisp = dispinterface
    ['{914934C0-5A91-11CF-8700-00AA0060263B}']
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid -2147418105;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid -2147418109;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid -2147418108;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid -2147418107;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid -2147418106;
    property ZOrderPosition {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid -2147417882;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid -2147418112;
    property AltHTML {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid -2147417881;
  end;

// *********************************************************************//
// Interface: OCXExtenderEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {914934C1-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  OCXExtenderEvents = interface(IDispatch)
    ['{914934C1-5A91-11CF-8700-00AA0060263B}']
    function  GotFocus {Flags(1), (0/0) CC:4, INV:1, DBG:6}: HResult; stdcall;
    function  LostFocus {Flags(1), (0/0) CC:4, INV:1, DBG:6}: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: Table
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C3-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Table = interface(IDispatch)
    ['{914934C3-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Columns {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Columns; safecall;
    function  Get_Rows {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Rows; safecall;
    function  Cell {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_22:0}Row: SYSINT; 
                                                        {VT_22:0}Column: SYSINT): Cell; safecall;
    function  Get_TableDirection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpDirection; safecall;
    procedure Set_TableDirection {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}TableDirection: PpDirection); safecall;
    procedure MergeBorders {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Columns: Columns read Get_Columns;
    property Rows: Rows read Get_Rows;
    property TableDirection: PpDirection read Get_TableDirection write Set_TableDirection;
  end;

// *********************************************************************//
// DispIntf:  TableDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C3-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  TableDisp = dispinterface
    ['{914934C3-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Columns {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Columns readonly dispid 2003;
    property Rows {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Rows readonly dispid 2004;
    function  Cell {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_22:0}Row: SYSINT; 
                                                        {VT_22:0}Column: SYSINT): Cell; dispid 2005;
    property TableDirection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpDirection dispid 2006;
    procedure MergeBorders {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2007;
  end;

// *********************************************************************//
// Interface: Columns
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C4-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Columns = interface(Collection)
    ['{914934C4-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): Column; safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}BeforeColumn: SYSINT): Column; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  ColumnsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C4-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ColumnsDisp = dispinterface
    ['{914934C4-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): Column; dispid 0;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}BeforeColumn: SYSINT): Column; dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: Column
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C5-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Column = interface(IDispatch)
    ['{914934C5-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Cells {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CellRange; safecall;
    procedure Select {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Width: Single); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Cells: CellRange read Get_Cells;
    property Width: Single read Get_Width write Set_Width;
  end;

// *********************************************************************//
// DispIntf:  ColumnDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C5-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  ColumnDisp = dispinterface
    ['{914934C5-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Cells {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CellRange readonly dispid 2003;
    procedure Select {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2004;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2005;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2006;
  end;

// *********************************************************************//
// Interface: Rows
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C6-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Rows = interface(Collection)
    ['{914934C6-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): Row; safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}BeforeRow: SYSINT): Row; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  RowsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C6-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  RowsDisp = dispinterface
    ['{914934C6-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): Row; dispid 0;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}BeforeRow: SYSINT): Row; dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: Row
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C7-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Row = interface(IDispatch)
    ['{914934C7-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Cells {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CellRange; safecall;
    procedure Select {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}Height: Single); safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Cells: CellRange read Get_Cells;
    property Height: Single read Get_Height write Set_Height;
  end;

// *********************************************************************//
// DispIntf:  RowDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C7-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  RowDisp = dispinterface
    ['{914934C7-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Cells {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CellRange readonly dispid 2003;
    procedure Select {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2004;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2005;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 2006;
  end;

// *********************************************************************//
// Interface: CellRange
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C8-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  CellRange = interface(Collection)
    ['{914934C8-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): Cell; safecall;
    function  Get_Borders {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Borders; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Borders: Borders read Get_Borders;
  end;

// *********************************************************************//
// DispIntf:  CellRangeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C8-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  CellRangeDisp = dispinterface
    ['{914934C8-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): Cell; dispid 0;
    property Borders {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Borders readonly dispid 2003;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: Cell
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C9-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Cell = interface(IDispatch)
    ['{914934C9-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Shape {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Shape; safecall;
    function  Get_Borders {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Borders; safecall;
    procedure Merge {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const MergeTo: Cell); safecall;
    procedure Split {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_22:0}NumRows: SYSINT; 
                                                         {VT_22:0}NumColumns: SYSINT); safecall;
    procedure Select {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Selected {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Shape: Shape read Get_Shape;
    property Borders: Borders read Get_Borders;
    property Selected: WordBool read Get_Selected;
  end;

// *********************************************************************//
// DispIntf:  CellDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934C9-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  CellDisp = dispinterface
    ['{914934C9-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property Shape {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Shape readonly dispid 2003;
    property Borders {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Borders readonly dispid 2004;
    procedure Merge {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const MergeTo: Cell); dispid 2005;
    procedure Split {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_22:0}NumRows: SYSINT; 
                                                         {VT_22:0}NumColumns: SYSINT); dispid 2006;
    procedure Select {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2007;
    property Selected {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 2008;
  end;

// *********************************************************************//
// Interface: Borders
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CA-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Borders = interface(Collection)
    ['{914934CA-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}BorderType: PpBorderType): LineFormat; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  BordersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CA-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  BordersDisp = dispinterface
    ['{914934CA-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}BorderType: PpBorderType): LineFormat; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: Panes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CB-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Panes = interface(Collection)
    ['{914934CB-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): Pane; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  PanesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CB-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PanesDisp = dispinterface
    ['{914934CB-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): Pane; dispid 0;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: Pane
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CC-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Pane = interface(IDispatch)
    ['{914934CC-5A91-11CF-8700-00AA0060263B}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Activate {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Active {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_ViewType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpViewType; safecall;
    property Parent: IDispatch read Get_Parent;
    property Active: MsoTriState read Get_Active;
    property Application: PowerPointApplication read Get_Application;
    property ViewType: PpViewType read Get_ViewType;
  end;

// *********************************************************************//
// DispIntf:  PaneDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CC-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PaneDisp = dispinterface
    ['{914934CC-5A91-11CF-8700-00AA0060263B}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2000;
    procedure Activate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2001;
    property Active {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState readonly dispid 2002;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2003;
    property ViewType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpViewType readonly dispid 2004;
  end;

// *********************************************************************//
// Interface: DefaultWebOptions
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CD-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  DefaultWebOptions = interface(IDispatch)
    ['{914934CD-5A91-11CF-8700-00AA0060263B}']
    function  Get_IncludeNavigation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_IncludeNavigation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}IncludeNavigation: MsoTriState); safecall;
    function  Get_FrameColors {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpFrameColors; safecall;
    procedure Set_FrameColors {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FrameColors: PpFrameColors); safecall;
    function  Get_ResizeGraphics {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_ResizeGraphics {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ResizeGraphics: MsoTriState); safecall;
    function  Get_ShowSlideAnimation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_ShowSlideAnimation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ShowSlideAnimation: MsoTriState); safecall;
    function  Get_OrganizeInFolder {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_OrganizeInFolder {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}OrganizeInFolder: MsoTriState); safecall;
    function  Get_UseLongFileNames {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_UseLongFileNames {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}UseLongFileNames: MsoTriState); safecall;
    function  Get_RelyOnVML {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_RelyOnVML {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}RelyOnVML: MsoTriState); safecall;
    function  Get_AllowPNG {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AllowPNG {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AllowPNG: MsoTriState); safecall;
    function  Get_ScreenSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoScreenSize; safecall;
    procedure Set_ScreenSize {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ScreenSize: MsoScreenSize); safecall;
    function  Get_Encoding {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoEncoding; safecall;
    procedure Set_Encoding {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Encoding: MsoEncoding); safecall;
    function  Get_UpdateLinksOnSave {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_UpdateLinksOnSave {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}UpdateLinksOnSave: MsoTriState); safecall;
    function  Get_CheckIfOfficeIsHTMLEditor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_CheckIfOfficeIsHTMLEditor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}CheckIfOfficeIsHTMLEditor: MsoTriState); safecall;
    function  Get_AlwaysSaveInDefaultEncoding {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AlwaysSaveInDefaultEncoding {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AlwaysSaveInDefaultEncoding: MsoTriState); safecall;
    function  Get_Fonts {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WebPageFonts; safecall;
    function  Get_FolderSuffix {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    property IncludeNavigation: MsoTriState read Get_IncludeNavigation write Set_IncludeNavigation;
    property FrameColors: PpFrameColors read Get_FrameColors write Set_FrameColors;
    property ResizeGraphics: MsoTriState read Get_ResizeGraphics write Set_ResizeGraphics;
    property ShowSlideAnimation: MsoTriState read Get_ShowSlideAnimation write Set_ShowSlideAnimation;
    property OrganizeInFolder: MsoTriState read Get_OrganizeInFolder write Set_OrganizeInFolder;
    property UseLongFileNames: MsoTriState read Get_UseLongFileNames write Set_UseLongFileNames;
    property RelyOnVML: MsoTriState read Get_RelyOnVML write Set_RelyOnVML;
    property AllowPNG: MsoTriState read Get_AllowPNG write Set_AllowPNG;
    property ScreenSize: MsoScreenSize read Get_ScreenSize write Set_ScreenSize;
    property Encoding: MsoEncoding read Get_Encoding write Set_Encoding;
    property UpdateLinksOnSave: MsoTriState read Get_UpdateLinksOnSave write Set_UpdateLinksOnSave;
    property CheckIfOfficeIsHTMLEditor: MsoTriState read Get_CheckIfOfficeIsHTMLEditor write Set_CheckIfOfficeIsHTMLEditor;
    property AlwaysSaveInDefaultEncoding: MsoTriState read Get_AlwaysSaveInDefaultEncoding write Set_AlwaysSaveInDefaultEncoding;
    property Fonts: WebPageFonts read Get_Fonts;
    property FolderSuffix: WideString read Get_FolderSuffix;
  end;

// *********************************************************************//
// DispIntf:  DefaultWebOptionsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CD-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  DefaultWebOptionsDisp = dispinterface
    ['{914934CD-5A91-11CF-8700-00AA0060263B}']
    property IncludeNavigation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2001;
    property FrameColors {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpFrameColors dispid 2002;
    property ResizeGraphics {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2003;
    property ShowSlideAnimation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2004;
    property OrganizeInFolder {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2005;
    property UseLongFileNames {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2006;
    property RelyOnVML {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2007;
    property AllowPNG {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2008;
    property ScreenSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoScreenSize dispid 2009;
    property Encoding {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoEncoding dispid 2010;
    property UpdateLinksOnSave {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2011;
    property CheckIfOfficeIsHTMLEditor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2012;
    property AlwaysSaveInDefaultEncoding {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2013;
    property Fonts {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WebPageFonts readonly dispid 2014;
    property FolderSuffix {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2015;
  end;

// *********************************************************************//
// Interface: WebOptions
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CE-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  WebOptions = interface(IDispatch)
    ['{914934CE-5A91-11CF-8700-00AA0060263B}']
    function  Get_IncludeNavigation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_IncludeNavigation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}IncludeNavigation: MsoTriState); safecall;
    function  Get_FrameColors {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpFrameColors; safecall;
    procedure Set_FrameColors {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FrameColors: PpFrameColors); safecall;
    function  Get_ResizeGraphics {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_ResizeGraphics {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ResizeGraphics: MsoTriState); safecall;
    function  Get_ShowSlideAnimation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_ShowSlideAnimation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ShowSlideAnimation: MsoTriState); safecall;
    function  Get_OrganizeInFolder {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_OrganizeInFolder {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}OrganizeInFolder: MsoTriState); safecall;
    function  Get_UseLongFileNames {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_UseLongFileNames {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}UseLongFileNames: MsoTriState); safecall;
    function  Get_RelyOnVML {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_RelyOnVML {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}RelyOnVML: MsoTriState); safecall;
    function  Get_AllowPNG {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_AllowPNG {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}AllowPNG: MsoTriState); safecall;
    function  Get_ScreenSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoScreenSize; safecall;
    procedure Set_ScreenSize {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ScreenSize: MsoScreenSize); safecall;
    function  Get_Encoding {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoEncoding; safecall;
    procedure Set_Encoding {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Encoding: MsoEncoding); safecall;
    function  Get_FolderSuffix {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure UseDefaultFolderSuffix {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property IncludeNavigation: MsoTriState read Get_IncludeNavigation write Set_IncludeNavigation;
    property FrameColors: PpFrameColors read Get_FrameColors write Set_FrameColors;
    property ResizeGraphics: MsoTriState read Get_ResizeGraphics write Set_ResizeGraphics;
    property ShowSlideAnimation: MsoTriState read Get_ShowSlideAnimation write Set_ShowSlideAnimation;
    property OrganizeInFolder: MsoTriState read Get_OrganizeInFolder write Set_OrganizeInFolder;
    property UseLongFileNames: MsoTriState read Get_UseLongFileNames write Set_UseLongFileNames;
    property RelyOnVML: MsoTriState read Get_RelyOnVML write Set_RelyOnVML;
    property AllowPNG: MsoTriState read Get_AllowPNG write Set_AllowPNG;
    property ScreenSize: MsoScreenSize read Get_ScreenSize write Set_ScreenSize;
    property Encoding: MsoEncoding read Get_Encoding write Set_Encoding;
    property FolderSuffix: WideString read Get_FolderSuffix;
  end;

// *********************************************************************//
// DispIntf:  WebOptionsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CE-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  WebOptionsDisp = dispinterface
    ['{914934CE-5A91-11CF-8700-00AA0060263B}']
    property IncludeNavigation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2001;
    property FrameColors {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpFrameColors dispid 2002;
    property ResizeGraphics {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2003;
    property ShowSlideAnimation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2004;
    property OrganizeInFolder {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2005;
    property UseLongFileNames {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2006;
    property RelyOnVML {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2007;
    property AllowPNG {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2008;
    property ScreenSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoScreenSize dispid 2009;
    property Encoding {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoEncoding dispid 2010;
    property FolderSuffix {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 2011;
    procedure UseDefaultFolderSuffix {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2012;
  end;

// *********************************************************************//
// Interface: PublishObjects
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CF-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PublishObjects = interface(Collection)
    ['{914934CF-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_22:0}index: SYSINT): PublishObject; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  PublishObjectsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934CF-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PublishObjectsDisp = dispinterface
    ['{914934CF-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): PublishObject; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  _Index {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_22:0}index: SYSINT): OleVariant; dispid 10;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 11;
  end;

// *********************************************************************//
// Interface: PublishObject
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934D0-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PublishObject = interface(IDispatch)
    ['{914934D0-5A91-11CF-8700-00AA0060263B}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_HTMLVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpHTMLVersion; safecall;
    procedure Set_HTMLVersion {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}HTMLVersion: PpHTMLVersion); safecall;
    function  Get_SourceType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpPublishSourceType; safecall;
    procedure Set_SourceType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}SourceType: PpPublishSourceType); safecall;
    function  Get_RangeStart {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_RangeStart {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}RangeStart: SYSINT); safecall;
    function  Get_RangeEnd {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_RangeEnd {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}RangeEnd: SYSINT); safecall;
    function  Get_SlideShowName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_SlideShowName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const SlideShowName: WideString); safecall;
    function  Get_SpeakerNotes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoTriState; safecall;
    procedure Set_SpeakerNotes {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}SpeakerNotes: MsoTriState); safecall;
    function  Get_FileName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_FileName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const FileName: WideString); safecall;
    procedure Publish {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: PowerPointApplication read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property HTMLVersion: PpHTMLVersion read Get_HTMLVersion write Set_HTMLVersion;
    property SourceType: PpPublishSourceType read Get_SourceType write Set_SourceType;
    property RangeStart: SYSINT read Get_RangeStart write Set_RangeStart;
    property RangeEnd: SYSINT read Get_RangeEnd write Set_RangeEnd;
    property SlideShowName: WideString read Get_SlideShowName write Set_SlideShowName;
    property SpeakerNotes: MsoTriState read Get_SpeakerNotes write Set_SpeakerNotes;
    property FileName: WideString read Get_FileName write Set_FileName;
  end;

// *********************************************************************//
// DispIntf:  PublishObjectDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934D0-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  PublishObjectDisp = dispinterface
    ['{914934D0-5A91-11CF-8700-00AA0060263B}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PowerPointApplication readonly dispid 2001;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2002;
    property HTMLVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpHTMLVersion dispid 2003;
    property SourceType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpPublishSourceType dispid 2004;
    property RangeStart {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2005;
    property RangeEnd {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 2006;
    property SlideShowName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2007;
    property SpeakerNotes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTriState dispid 2008;
    property FileName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 2009;
    procedure Publish {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2010;
  end;

// *********************************************************************//
// Interface: Marker
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934D1-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  Marker = interface(IDispatch)
    ['{914934D1-5A91-11CF-8700-00AA0060263B}']
    function  Get_MarkerType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PpMarkerType; safecall;
    procedure Set_MarkerType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}MarkerType: PpMarkerType); safecall;
    function  Get_Time {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    property MarkerType: PpMarkerType read Get_MarkerType write Set_MarkerType;
    property Time: SYSINT read Get_Time;
  end;

// *********************************************************************//
// DispIntf:  MarkerDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {914934D1-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  MarkerDisp = dispinterface
    ['{914934D1-5A91-11CF-8700-00AA0060263B}']
    property MarkerType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PpMarkerType dispid 2001;
    property Time {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2002;
  end;

// *********************************************************************//
// Interface: MasterEvents
// Flags:     (16) Hidden
// GUID:      {914934D2-5A91-11CF-8700-00AA0060263B}
// *********************************************************************//
  MasterEvents = interface(IUnknown)
    ['{914934D2-5A91-11CF-8700-00AA0060263B}']
  end;

// *********************************************************************//
// The Class CoPowerPointGlobal provides a Create and CreateRemote method to          
// create instances of the default interface _Global exposed by              
// the CoClass PowerPointGlobal. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPowerPointGlobal = class
    class function Create: _Global;
    class function CreateRemote(const MachineName: string): _Global;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPowerPointGlobal
// Help String      : 
// Default Interface: _Global
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (27) AppObject CanCreate Predeclid Hidden
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPowerPointGlobalProperties= class;
{$ENDIF}
  TPowerPointGlobal = class(TOleServer)
  private
    FIntf:        _Global;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TPowerPointGlobalProperties;
    function      GetServerProperties: TPowerPointGlobalProperties;
{$ENDIF}
    function      GetDefaultInterface: _Global;
  protected
    procedure InitServerData; override;
  {CoClassWriteArrayPropMethods}
// StdProp:
    function  Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointPresentation;
// StdProp:
    function  Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindow;
// StdProp:
    function  Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AddIns;
// StdProp:
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
// StdProp:
    function  Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
// StdProp:
    function  Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PPDialogs;
// StdProp:
    function  Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Presentations;
// StdProp:
    function  Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindows;
// StdProp:
    function  Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
// StdProp:
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
// StdProp:
    function  Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Global);
    procedure Disconnect; override;
  {CoClassWriteMethods}
    property  DefaultInterface: _Global read GetDefaultInterface;
  {CoClassWriteProperties}
    property ActivePresentation {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PowerPointPresentation read Get_ActivePresentation;
    property ActiveWindow {Flags(2), (1/0) CC:0, INV:2, DBG:2}: DocumentWindow read Get_ActiveWindow;
    property AddIns {Flags(2), (1/0) CC:0, INV:2, DBG:2}: AddIns read Get_AddIns;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PowerPointApplication read Get_Application;
    property Assistant {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Assistant read Get_Assistant;
    property Dialogs {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PPDialogs read Get_Dialogs;
    property Presentations {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Presentations read Get_Presentations;
    property SlideShowWindows {Flags(2), (1/0) CC:0, INV:2, DBG:2}: SlideShowWindows read Get_SlideShowWindows;
    property Windows {Flags(2), (1/0) CC:0, INV:2, DBG:2}: DocumentWindows read Get_Windows;
    property CommandBars {Flags(2), (1/0) CC:0, INV:2, DBG:2}: CommandBars read Get_CommandBars;
    property AnswerWizard {Flags(2), (1/0) CC:0, INV:2, DBG:2}: AnswerWizard read Get_AnswerWizard;
  {CoClassWriteProperties}
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPowerPointGlobalProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPowerPointGlobal
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPowerPointGlobalProperties = class(TPersistent)
  private
    FServer:    TPowerPointGlobal;
    function    GetDefaultInterface: _Global;
    constructor Create(AServer: TPowerPointGlobal);
  protected
// StdProp:
    function  Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointPresentation;
// StdProp:
    function  Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindow;
// StdProp:
    function  Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AddIns;
// StdProp:
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
// StdProp:
    function  Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
// StdProp:
    function  Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PPDialogs;
// StdProp:
    function  Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Presentations;
// StdProp:
    function  Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindows;
// StdProp:
    function  Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
// StdProp:
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
// StdProp:
    function  Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
  public
    property DefaultInterface: _Global read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPowerPointSlide provides a Create and CreateRemote method to          
// create instances of the default interface _Slide exposed by              
// the CoClass PowerPointSlide. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPowerPointSlide = class
    class function Create: _Slide;
    class function CreateRemote(const MachineName: string): _Slide;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPowerPointSlide
// Help String      : 
// Default Interface: _Slide
// Def. Intf. DISP? : No
// Event   Interface: SldEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPowerPointSlideProperties= class;
{$ENDIF}
  TPowerPointSlide = class(TOleServer)
  private
    FIntf:        _Slide;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TPowerPointSlideProperties;
    function      GetServerProperties: TPowerPointSlideProperties;
{$ENDIF}
    function      GetDefaultInterface: _Slide;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
  {CoClassWriteArrayPropMethods}
// StdProp:
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
// StdProp:IDispatch
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:
    function  Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shapes;
// StdProp:
    function  Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HeadersFooters;
// StdProp:
    function  Get_SlideShowTransition {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowTransition;
// StdProp:
    function  Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorScheme;
// StdProp:
    procedure Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:1}const ColorScheme: ColorScheme);
// StdProp:
    function  Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ShapeRange;
// StdProp:WideString
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Name: WideString);
// StdProp:Integer
    function  Get_SlideID {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Integer;
// StdProp:Integer
    function  Get_PrintSteps {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
// StdProp:TOleEnum
    function  Get_Layout {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpSlideLayout;
// StdProp:TOleEnum
    procedure Set_Layout {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Layout: PpSlideLayout);
// StdProp:
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Tags;
// StdProp:Integer
    function  Get_SlideIndex {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
// StdProp:Integer
    function  Get_SlideNumber {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
// StdProp:TOleEnum
    function  Get_DisplayMasterShapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_DisplayMasterShapes {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DisplayMasterShapes: MsoTriState);
// StdProp:TOleEnum
    function  Get_FollowMasterBackground {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_FollowMasterBackground {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FollowMasterBackground: MsoTriState);
// StdProp:
    function  Get_NotesPage {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideRange;
// StdProp:
    function  Get_Master {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
// StdProp:
    function  Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Hyperlinks;
// StdProp:
    function  Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Scripts;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Slide);
    procedure Disconnect; override;
  {CoClassWriteMethods}
    procedure Select {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    procedure Cut {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    procedure Copy {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    function  Duplicate {Flags(1), (1/0) CC:0, INV:1, DBG:3}: SlideRange;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    procedure Export {Flags(1), (4/4) CC:0, INV:1, DBG:3}({VT_8:0}const FileName: WideString; 
                                                          {VT_8:0}const FilterName: WideString; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT);
    property  DefaultInterface: _Slide read GetDefaultInterface;
  {CoClassWriteProperties}
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PowerPointApplication read Get_Application;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:2}: IDispatch read Get_Parent;
    property Shapes {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Shapes read Get_Shapes;
    property HeadersFooters {Flags(2), (1/0) CC:0, INV:2, DBG:2}: HeadersFooters read Get_HeadersFooters;
    property SlideShowTransition {Flags(2), (1/0) CC:0, INV:2, DBG:2}: SlideShowTransition read Get_SlideShowTransition;
    property Background {Flags(2), (1/0) CC:0, INV:2, DBG:2}: ShapeRange read Get_Background;
    property SlideID {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Integer read Get_SlideID;
    property PrintSteps {Flags(2), (1/0) CC:0, INV:2, DBG:2}: SYSINT read Get_PrintSteps;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Tags read Get_Tags;
    property SlideIndex {Flags(2), (1/0) CC:0, INV:2, DBG:2}: SYSINT read Get_SlideIndex;
    property SlideNumber {Flags(2), (1/0) CC:0, INV:2, DBG:2}: SYSINT read Get_SlideNumber;
    property NotesPage {Flags(2), (1/0) CC:0, INV:2, DBG:2}: SlideRange read Get_NotesPage;
    property Master {Flags(2), (1/0) CC:0, INV:2, DBG:2}: _Master read Get_Master;
    property Hyperlinks {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Hyperlinks read Get_Hyperlinks;
    property Scripts {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Scripts read Get_Scripts;
  {CoClassWriteProperties}
    property ColorScheme {Flags(2), (1/0) CC:0, INV:2, DBG:2}: ColorScheme read Get_ColorScheme write Set_ColorScheme;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Name write Set_Name;
    property Layout {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PpSlideLayout read Get_Layout write Set_Layout;
    property DisplayMasterShapes {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_DisplayMasterShapes write Set_DisplayMasterShapes;
    property FollowMasterBackground {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_FollowMasterBackground write Set_FollowMasterBackground;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPowerPointSlideProperties read GetServerProperties;
{$ENDIF}
  {CoClassWriteEventDecls}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPowerPointSlide
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPowerPointSlideProperties = class(TPersistent)
  private
    FServer:    TPowerPointSlide;
    function    GetDefaultInterface: _Slide;
    constructor Create(AServer: TPowerPointSlide);
  protected
// StdProp:
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
// StdProp:IDispatch
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:
    function  Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shapes;
// StdProp:
    function  Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HeadersFooters;
// StdProp:
    function  Get_SlideShowTransition {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowTransition;
// StdProp:
    function  Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorScheme;
// StdProp:
    procedure Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:1}const ColorScheme: ColorScheme);
// StdProp:
    function  Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ShapeRange;
// StdProp:WideString
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Name: WideString);
// StdProp:Integer
    function  Get_SlideID {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Integer;
// StdProp:Integer
    function  Get_PrintSteps {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
// StdProp:TOleEnum
    function  Get_Layout {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpSlideLayout;
// StdProp:TOleEnum
    procedure Set_Layout {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Layout: PpSlideLayout);
// StdProp:
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Tags;
// StdProp:Integer
    function  Get_SlideIndex {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
// StdProp:Integer
    function  Get_SlideNumber {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
// StdProp:TOleEnum
    function  Get_DisplayMasterShapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_DisplayMasterShapes {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DisplayMasterShapes: MsoTriState);
// StdProp:TOleEnum
    function  Get_FollowMasterBackground {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_FollowMasterBackground {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FollowMasterBackground: MsoTriState);
// StdProp:
    function  Get_NotesPage {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideRange;
// StdProp:
    function  Get_Master {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
// StdProp:
    function  Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Hyperlinks;
// StdProp:
    function  Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Scripts;
  public
    property DefaultInterface: _Slide read GetDefaultInterface;
  published
    property ColorScheme {Flags(2), (1/0) CC:0, INV:2, DBG:2}: ColorScheme read Get_ColorScheme write Set_ColorScheme;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Name write Set_Name;
    property Layout {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PpSlideLayout read Get_Layout write Set_Layout;
    property DisplayMasterShapes {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_DisplayMasterShapes write Set_DisplayMasterShapes;
    property FollowMasterBackground {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_FollowMasterBackground write Set_FollowMasterBackground;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPowerPointPresentation provides a Create and CreateRemote method to          
// create instances of the default interface _Presentation exposed by              
// the CoClass PowerPointPresentation. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPowerPointPresentation = class
    class function Create: _Presentation;
    class function CreateRemote(const MachineName: string): _Presentation;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPowerPointPresentation
// Help String      : 
// Default Interface: _Presentation
// Def. Intf. DISP? : No
// Event   Interface: PresEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPowerPointPresentationProperties= class;
{$ENDIF}
  TPowerPointPresentation = class(TOleServer)
  private
    FIntf:        _Presentation;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TPowerPointPresentationProperties;
    function      GetServerProperties: TPowerPointPresentationProperties;
{$ENDIF}
    function      GetDefaultInterface: _Presentation;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
  {CoClassWriteArrayPropMethods}
// StdProp:
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
// StdProp:IDispatch
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:
    function  Get_SlideMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
// StdProp:
    function  Get_TitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
// StdProp:TOleEnum
    function  Get_HasTitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:WideString
    function  Get_TemplateName {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:
    function  Get_NotesMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
// StdProp:
    function  Get_HandoutMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
// StdProp:
    function  Get_Slides {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Slides;
// StdProp:
    function  Get_PageSetup {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PageSetup;
// StdProp:
    function  Get_ColorSchemes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorSchemes;
// StdProp:
    function  Get_ExtraColors {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ExtraColors;
// StdProp:
    function  Get_SlideShowSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowSettings;
// StdProp:
    function  Get_Fonts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Fonts;
// StdProp:
    function  Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
// StdProp:
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Tags;
// StdProp:
    function  Get_DefaultShape {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shape;
// StdProp:IDispatch
    function  Get_BuiltInDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:IDispatch
    function  Get_CustomDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:
    function  Get_VBProject {Flags(1), (1/0) CC:0, INV:2, DBG:3}: VBProject;
// StdProp:TOleEnum
    function  Get_ReadOnly {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:WideString
    function  Get_FullName {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:TOleEnum
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_Saved {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Saved: MsoTriState);
// StdProp:TOleEnum
    function  Get_LayoutDirection {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpDirection;
// StdProp:TOleEnum
    procedure Set_LayoutDirection {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}LayoutDirection: PpDirection);
// StdProp:
    function  Get_PrintOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PrintOptions;
// StdProp:IDispatch
    function  Get_Container {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:TOleEnum
    function  Get_DisplayComments {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_DisplayComments {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DisplayComments: MsoTriState);
// StdProp:TOleEnum
    function  Get_FarEastLineBreakLevel {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpFarEastLineBreakLevel;
// StdProp:TOleEnum
    procedure Set_FarEastLineBreakLevel {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FarEastLineBreakLevel: PpFarEastLineBreakLevel);
// StdProp:WideString
    function  Get_NoLineBreakBefore {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    procedure Set_NoLineBreakBefore {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const NoLineBreakBefore: WideString);
// StdProp:WideString
    function  Get_NoLineBreakAfter {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    procedure Set_NoLineBreakAfter {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const NoLineBreakAfter: WideString);
// StdProp:
    function  Get_SlideShowWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindow;
// StdProp:TOleEnum
    function  Get_FarEastLineBreakLanguage {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoFarEastLineBreakLanguageID;
// StdProp:TOleEnum
    procedure Set_FarEastLineBreakLanguage {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FarEastLineBreakLanguage: MsoFarEastLineBreakLanguageID);
// StdProp:TOleEnum
    function  Get_DefaultLanguageID {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoLanguageID;
// StdProp:TOleEnum
    procedure Set_DefaultLanguageID {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DefaultLanguageID: MsoLanguageID);
// StdProp:
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
// StdProp:
    function  Get_PublishObjects {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PublishObjects;
// StdProp:
    function  Get_WebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WebOptions;
// StdProp:
    function  Get_HTMLProject {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HTMLProject;
// StdProp:TOleEnum
    function  Get_EnvelopeVisible {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_EnvelopeVisible {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}EnvelopeVisible: MsoTriState);
// StdProp:TOleEnum
    function  Get_VBASigned {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Presentation);
    procedure Disconnect; override;
  {CoClassWriteMethods}
    function  AddTitleMaster {Flags(1), (1/0) CC:0, INV:1, DBG:3}: _Master;
    procedure ApplyTemplate {Flags(1), (1/1) CC:0, INV:1, DBG:3}({VT_8:0}const FileName: WideString);
    function  NewWindow {Flags(1), (1/0) CC:0, INV:1, DBG:3}: DocumentWindow;
    procedure FollowHyperlink {Flags(1), (7/7) CC:0, INV:1, DBG:3}({VT_8:0}const Address: WideString; 
                                                                   {VT_8:0}const SubAddress: WideString; 
                                                                   {VT_11:0}NewWindow: WordBool; 
                                                                   {VT_11:0}AddHistory: WordBool; 
                                                                   {VT_8:0}const ExtraInfo: WideString; 
                                                                   {VT_29:0}Method: MsoExtraInfoMethod; 
                                                                   {VT_8:0}const HeaderInfo: WideString);
    procedure AddToFavorites {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    procedure PrintOut {Flags(1), (5/5) CC:0, INV:1, DBG:3}({VT_22:0}From: SYSINT; 
                                                            {VT_22:0}To_: SYSINT; 
                                                            {VT_8:0}const PrintToFile: WideString; 
                                                            {VT_22:0}Copies: SYSINT; 
                                                            {VT_29:0}Collate: MsoTriState);
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    procedure SaveAs {Flags(1), (3/3) CC:0, INV:1, DBG:3}({VT_8:0}const FileName: WideString; 
                                                          {VT_29:0}FileFormat: PpSaveAsFileType; 
                                                          {VT_29:0}EmbedTrueTypeFonts: MsoTriState);
    procedure SaveCopyAs {Flags(1), (3/3) CC:0, INV:1, DBG:3}({VT_8:0}const FileName: WideString; 
                                                              {VT_29:0}FileFormat: PpSaveAsFileType; 
                                                              {VT_29:0}EmbedTrueTypeFonts: MsoTriState);
    procedure Export {Flags(1), (4/4) CC:0, INV:1, DBG:3}({VT_8:0}const Path: WideString; 
                                                          {VT_8:0}const FilterName: WideString; 
                                                          {VT_22:0}ScaleWidth: SYSINT; 
                                                          {VT_22:0}ScaleHeight: SYSINT);
    procedure Close {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    procedure SetUndoText {Flags(1), (1/1) CC:0, INV:1, DBG:3}({VT_8:0}const Text: WideString);
    procedure UpdateLinks {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    procedure WebPagePreview {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    procedure ReloadAs {Flags(1), (1/1) CC:0, INV:1, DBG:3}({VT_29:0}cp: MsoEncoding);
    procedure MakeIntoTemplate {Flags(1), (1/1) CC:0, INV:1, DBG:3}({VT_29:0}IsDesignTemplate: MsoTriState);
    procedure sblt {Flags(1), (1/1) CC:0, INV:1, DBG:3}({VT_8:0}const s: WideString);
    property  DefaultInterface: _Presentation read GetDefaultInterface;
  {CoClassWriteProperties}
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PowerPointApplication read Get_Application;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:2}: IDispatch read Get_Parent;
    property SlideMaster {Flags(2), (1/0) CC:0, INV:2, DBG:2}: _Master read Get_SlideMaster;
    property TitleMaster {Flags(2), (1/0) CC:0, INV:2, DBG:2}: _Master read Get_TitleMaster;
    property HasTitleMaster {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_HasTitleMaster;
    property TemplateName {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_TemplateName;
    property NotesMaster {Flags(2), (1/0) CC:0, INV:2, DBG:2}: _Master read Get_NotesMaster;
    property HandoutMaster {Flags(2), (1/0) CC:0, INV:2, DBG:2}: _Master read Get_HandoutMaster;
    property Slides {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Slides read Get_Slides;
    property PageSetup {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PageSetup read Get_PageSetup;
    property ColorSchemes {Flags(2), (1/0) CC:0, INV:2, DBG:2}: ColorSchemes read Get_ColorSchemes;
    property ExtraColors {Flags(2), (1/0) CC:0, INV:2, DBG:2}: ExtraColors read Get_ExtraColors;
    property SlideShowSettings {Flags(2), (1/0) CC:0, INV:2, DBG:2}: SlideShowSettings read Get_SlideShowSettings;
    property Fonts {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Fonts read Get_Fonts;
    property Windows {Flags(2), (1/0) CC:0, INV:2, DBG:2}: DocumentWindows read Get_Windows;
    property Tags {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Tags read Get_Tags;
    property DefaultShape {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Shape read Get_DefaultShape;
    property BuiltInDocumentProperties {Flags(2), (1/0) CC:0, INV:2, DBG:2}: IDispatch read Get_BuiltInDocumentProperties;
    property CustomDocumentProperties {Flags(2), (1/0) CC:0, INV:2, DBG:2}: IDispatch read Get_CustomDocumentProperties;
    property VBProject {Flags(2), (1/0) CC:0, INV:2, DBG:2}: VBProject read Get_VBProject;
    property ReadOnly {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_ReadOnly;
    property FullName {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_FullName;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Name;
    property Path {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Path;
    property PrintOptions {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PrintOptions read Get_PrintOptions;
    property Container {Flags(2), (1/0) CC:0, INV:2, DBG:2}: IDispatch read Get_Container;
    property SlideShowWindow {Flags(2), (1/0) CC:0, INV:2, DBG:2}: SlideShowWindow read Get_SlideShowWindow;
    property CommandBars {Flags(2), (1/0) CC:0, INV:2, DBG:2}: CommandBars read Get_CommandBars;
    property PublishObjects {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PublishObjects read Get_PublishObjects;
    property WebOptions {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WebOptions read Get_WebOptions;
    property HTMLProject {Flags(2), (1/0) CC:0, INV:2, DBG:2}: HTMLProject read Get_HTMLProject;
    property VBASigned {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_VBASigned;
  {CoClassWriteProperties}
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_Saved write Set_Saved;
    property LayoutDirection {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PpDirection read Get_LayoutDirection write Set_LayoutDirection;
    property DisplayComments {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_DisplayComments write Set_DisplayComments;
    property FarEastLineBreakLevel {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PpFarEastLineBreakLevel read Get_FarEastLineBreakLevel write Set_FarEastLineBreakLevel;
    property NoLineBreakBefore {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_NoLineBreakBefore write Set_NoLineBreakBefore;
    property NoLineBreakAfter {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_NoLineBreakAfter write Set_NoLineBreakAfter;
    property FarEastLineBreakLanguage {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoFarEastLineBreakLanguageID read Get_FarEastLineBreakLanguage write Set_FarEastLineBreakLanguage;
    property DefaultLanguageID {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoLanguageID read Get_DefaultLanguageID write Set_DefaultLanguageID;
    property EnvelopeVisible {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_EnvelopeVisible write Set_EnvelopeVisible;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPowerPointPresentationProperties read GetServerProperties;
{$ENDIF}
  {CoClassWriteEventDecls}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPowerPointPresentation
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPowerPointPresentationProperties = class(TPersistent)
  private
    FServer:    TPowerPointPresentation;
    function    GetDefaultInterface: _Presentation;
    constructor Create(AServer: TPowerPointPresentation);
  protected
// StdProp:
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
// StdProp:IDispatch
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:
    function  Get_SlideMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
// StdProp:
    function  Get_TitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
// StdProp:TOleEnum
    function  Get_HasTitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:WideString
    function  Get_TemplateName {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:
    function  Get_NotesMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
// StdProp:
    function  Get_HandoutMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
// StdProp:
    function  Get_Slides {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Slides;
// StdProp:
    function  Get_PageSetup {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PageSetup;
// StdProp:
    function  Get_ColorSchemes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorSchemes;
// StdProp:
    function  Get_ExtraColors {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ExtraColors;
// StdProp:
    function  Get_SlideShowSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowSettings;
// StdProp:
    function  Get_Fonts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Fonts;
// StdProp:
    function  Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
// StdProp:
    function  Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Tags;
// StdProp:
    function  Get_DefaultShape {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shape;
// StdProp:IDispatch
    function  Get_BuiltInDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:IDispatch
    function  Get_CustomDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:
    function  Get_VBProject {Flags(1), (1/0) CC:0, INV:2, DBG:3}: VBProject;
// StdProp:TOleEnum
    function  Get_ReadOnly {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:WideString
    function  Get_FullName {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:TOleEnum
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_Saved {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Saved: MsoTriState);
// StdProp:TOleEnum
    function  Get_LayoutDirection {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpDirection;
// StdProp:TOleEnum
    procedure Set_LayoutDirection {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}LayoutDirection: PpDirection);
// StdProp:
    function  Get_PrintOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PrintOptions;
// StdProp:IDispatch
    function  Get_Container {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:TOleEnum
    function  Get_DisplayComments {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_DisplayComments {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DisplayComments: MsoTriState);
// StdProp:TOleEnum
    function  Get_FarEastLineBreakLevel {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpFarEastLineBreakLevel;
// StdProp:TOleEnum
    procedure Set_FarEastLineBreakLevel {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FarEastLineBreakLevel: PpFarEastLineBreakLevel);
// StdProp:WideString
    function  Get_NoLineBreakBefore {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    procedure Set_NoLineBreakBefore {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const NoLineBreakBefore: WideString);
// StdProp:WideString
    function  Get_NoLineBreakAfter {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    procedure Set_NoLineBreakAfter {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const NoLineBreakAfter: WideString);
// StdProp:
    function  Get_SlideShowWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindow;
// StdProp:TOleEnum
    function  Get_FarEastLineBreakLanguage {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoFarEastLineBreakLanguageID;
// StdProp:TOleEnum
    procedure Set_FarEastLineBreakLanguage {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FarEastLineBreakLanguage: MsoFarEastLineBreakLanguageID);
// StdProp:TOleEnum
    function  Get_DefaultLanguageID {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoLanguageID;
// StdProp:TOleEnum
    procedure Set_DefaultLanguageID {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DefaultLanguageID: MsoLanguageID);
// StdProp:
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
// StdProp:
    function  Get_PublishObjects {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PublishObjects;
// StdProp:
    function  Get_WebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WebOptions;
// StdProp:
    function  Get_HTMLProject {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HTMLProject;
// StdProp:TOleEnum
    function  Get_EnvelopeVisible {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_EnvelopeVisible {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}EnvelopeVisible: MsoTriState);
// StdProp:TOleEnum
    function  Get_VBASigned {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
  public
    property DefaultInterface: _Presentation read GetDefaultInterface;
  published
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_Saved write Set_Saved;
    property LayoutDirection {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PpDirection read Get_LayoutDirection write Set_LayoutDirection;
    property DisplayComments {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_DisplayComments write Set_DisplayComments;
    property FarEastLineBreakLevel {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PpFarEastLineBreakLevel read Get_FarEastLineBreakLevel write Set_FarEastLineBreakLevel;
    property NoLineBreakBefore {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_NoLineBreakBefore write Set_NoLineBreakBefore;
    property NoLineBreakAfter {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_NoLineBreakAfter write Set_NoLineBreakAfter;
    property FarEastLineBreakLanguage {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoFarEastLineBreakLanguageID read Get_FarEastLineBreakLanguage write Set_FarEastLineBreakLanguage;
    property DefaultLanguageID {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoLanguageID read Get_DefaultLanguageID write Set_DefaultLanguageID;
    property EnvelopeVisible {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_EnvelopeVisible write Set_EnvelopeVisible;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoOLECtrl provides a Create and CreateRemote method to          
// create instances of the default interface OCXExtender exposed by              
// the CoClass OLECtrl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOLECtrl = class
    class function Create: OCXExtender;
    class function CreateRemote(const MachineName: string): OCXExtender;
  end;

// *********************************************************************//
// The Class CoPowerPointApplication provides a Create and CreateRemote method to          
// create instances of the default interface _Application exposed by              
// the CoClass PowerPointApplication. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPowerPointApplication = class
    class function Create: _Application;
    class function CreateRemote(const MachineName: string): _Application;
  end;

  TPowerPointApplicationWindowSelectionChange = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Sel: OleVariant) of object;
  TPowerPointApplicationWindowBeforeRightClick = procedure(Sender: TObject;  {Flags(3), (2/2) CC:4, INV:1, DBG:9}var {VT_29:1}Sel: OleVariant;
                                                                                                                 var {VT_11:1}Cancel: OleVariant) of object;
  TPowerPointApplicationWindowBeforeDoubleClick = procedure(Sender: TObject;  {Flags(3), (2/2) CC:4, INV:1, DBG:9}var {VT_29:1}Sel: OleVariant;
                                                                                                                  var {VT_11:1}Cancel: OleVariant) of object;
  TPowerPointApplicationPresentationClose = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Pres: OleVariant) of object;
  TPowerPointApplicationPresentationSave = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Pres: OleVariant) of object;
  TPowerPointApplicationPresentationOpen = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Pres: OleVariant) of object;
  TPowerPointApplicationNewPresentation = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Pres: OleVariant) of object;
  TPowerPointApplicationPresentationNewSlide = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Sld: OleVariant) of object;
  TPowerPointApplicationWindowActivate = procedure(Sender: TObject;  {Flags(3), (2/2) CC:4, INV:1, DBG:9}var {VT_29:1}Pres: OleVariant;
                                                                                                         var {VT_29:1}Wn: OleVariant) of object;
  TPowerPointApplicationWindowDeactivate = procedure(Sender: TObject;  {Flags(3), (2/2) CC:4, INV:1, DBG:9}var {VT_29:1}Pres: OleVariant;
                                                                                                           var {VT_29:1}Wn: OleVariant) of object;
  TPowerPointApplicationSlideShowBegin = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Wn: OleVariant) of object;
  TPowerPointApplicationSlideShowNextBuild = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Wn: OleVariant) of object;
  TPowerPointApplicationSlideShowNextSlide = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Wn: OleVariant) of object;
  TPowerPointApplicationSlideShowEnd = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Pres: OleVariant) of object;
  TPowerPointApplicationPresentationPrint = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Pres: OleVariant) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPowerPointApplication
// Help String      : 
// Default Interface: _Application
// Def. Intf. DISP? : No
// Event   Interface: EApplication
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPowerPointApplicationProperties= class;
{$ENDIF}
  TPowerPointApplication = class(TOleServer)
  private
    FOnWindowSelectionChange: TPowerPointApplicationWindowSelectionChange;
    FOnWindowBeforeRightClick: TPowerPointApplicationWindowBeforeRightClick;
    FOnWindowBeforeDoubleClick: TPowerPointApplicationWindowBeforeDoubleClick;
    FOnPresentationClose: TPowerPointApplicationPresentationClose;
    FOnPresentationSave: TPowerPointApplicationPresentationSave;
    FOnPresentationOpen: TPowerPointApplicationPresentationOpen;
    FOnNewPresentation: TPowerPointApplicationNewPresentation;
    FOnPresentationNewSlide: TPowerPointApplicationPresentationNewSlide;
    FOnWindowActivate: TPowerPointApplicationWindowActivate;
    FOnWindowDeactivate: TPowerPointApplicationWindowDeactivate;
    FOnSlideShowBegin: TPowerPointApplicationSlideShowBegin;
    FOnSlideShowNextBuild: TPowerPointApplicationSlideShowNextBuild;
    FOnSlideShowNextSlide: TPowerPointApplicationSlideShowNextSlide;
    FOnSlideShowEnd: TPowerPointApplicationSlideShowEnd;
    FOnPresentationPrint: TPowerPointApplicationPresentationPrint;
    FAutoQuit:    Boolean;
    FIntf:        _Application;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TPowerPointApplicationProperties;
    function      GetServerProperties: TPowerPointApplicationProperties;
{$ENDIF}
    function      GetDefaultInterface: _Application;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
  {CoClassWriteArrayPropMethods}
// StdProp:
    function  Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Presentations;
// StdProp:
    function  Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
// StdProp:
    function  Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PPDialogs;
// StdProp:
    function  Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindow;
// StdProp:
    function  Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointPresentation;
// StdProp:
    function  Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindows;
// StdProp:
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
// StdProp:WideString
    function  Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    procedure Set_Caption {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Caption: WideString);
// StdProp:
    function  Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
// StdProp:
    function  Get_FileSearch {Flags(1), (1/0) CC:0, INV:2, DBG:3}: FileSearch;
// StdProp:
    function  Get_FileFind {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IFind;
// StdProp:WideString
    function  Get_Build {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_OperatingSystem {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_ActivePrinter {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:Integer
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Integer;
// StdProp:
    function  Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AddIns;
// StdProp:
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:3}: VBE;
// StdProp:Single
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:Single
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Left: Single);
// StdProp:Single
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:Single
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Top: Single);
// StdProp:Single
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:Single
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Width: Single);
// StdProp:Single
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:Single
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Height: Single);
// StdProp:TOleEnum
    function  Get_WindowState {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpWindowState;
// StdProp:TOleEnum
    procedure Set_WindowState {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}WindowState: PpWindowState);
// StdProp:TOleEnum
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Visible: MsoTriState);
// StdProp:TOleEnum
    function  Get_Active {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:
    function  Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
// StdProp:
    function  Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: COMAddIns;
// StdProp:WideString
    function  Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:
    function  Get_DefaultWebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DefaultWebOptions;
// StdProp:
    function  Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: LanguageSettings;
// StdProp:
    function  Get_MsoDebugOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoDebugOptions;
// StdProp:TOleEnum
    function  Get_ShowWindowsInTaskbar {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_ShowWindowsInTaskbar {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}ShowWindowsInTaskbar: MsoTriState);
// StdProp:
    function  Get_Marker {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Marker;
// StdProp:TOleEnum
    function  Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoFeatureInstall;
// StdProp:TOleEnum
    procedure Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FeatureInstall: MsoFeatureInstall);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Application);
    procedure Disconnect; override;
  {CoClassWriteMethods}
    procedure Help {Flags(1), (2/2) CC:0, INV:1, DBG:3}({VT_8:0}const HelpFile: WideString; 
                                                        {VT_22:0}ContextID: SYSINT);
    procedure Quit {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    function  Run {Flags(1), (3/2) CC:0, INV:1, DBG:3}({VT_8:0}const MacroName: WideString; 
                                                       {VT_27:1}var safeArrayOfParams: PSafeArray): OleVariant;
    function  FileDialog {Flags(1), (2/1) CC:0, INV:1, DBG:3}({VT_29:0}Type_: PpFileDialogType): FileDialog;
    procedure Activate {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    function  GetOptionFlag {Flags(1), (3/2) CC:0, INV:1, DBG:3}({VT_3:0}Option: Integer; 
                                                                 {VT_11:0}Persist: WordBool): WordBool;
    procedure SetOptionFlag {Flags(1), (3/3) CC:0, INV:1, DBG:3}({VT_3:0}Option: Integer; 
                                                                 {VT_11:0}State: WordBool; 
                                                                 {VT_11:0}Persist: WordBool);
    property  DefaultInterface: _Application read GetDefaultInterface;
  {CoClassWriteProperties}
    property Presentations {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Presentations read Get_Presentations;
    property Windows {Flags(2), (1/0) CC:0, INV:2, DBG:2}: DocumentWindows read Get_Windows;
    property Dialogs {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PPDialogs read Get_Dialogs;
    property ActiveWindow {Flags(2), (1/0) CC:0, INV:2, DBG:2}: DocumentWindow read Get_ActiveWindow;
    property ActivePresentation {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PowerPointPresentation read Get_ActivePresentation;
    property SlideShowWindows {Flags(2), (1/0) CC:0, INV:2, DBG:2}: SlideShowWindows read Get_SlideShowWindows;
    property CommandBars {Flags(2), (1/0) CC:0, INV:2, DBG:2}: CommandBars read Get_CommandBars;
    property Path {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Path;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Name;
    property Assistant {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Assistant read Get_Assistant;
    property FileSearch {Flags(2), (1/0) CC:0, INV:2, DBG:2}: FileSearch read Get_FileSearch;
    property FileFind {Flags(2), (1/0) CC:0, INV:2, DBG:2}: IFind read Get_FileFind;
    property Build {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Build;
    property Version {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Version;
    property OperatingSystem {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_OperatingSystem;
    property ActivePrinter {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_ActivePrinter;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Integer read Get_Creator;
    property AddIns {Flags(2), (1/0) CC:0, INV:2, DBG:2}: AddIns read Get_AddIns;
    property VBE {Flags(2), (1/0) CC:0, INV:2, DBG:2}: VBE read Get_VBE;
    property Active {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_Active;
    property AnswerWizard {Flags(2), (1/0) CC:0, INV:2, DBG:2}: AnswerWizard read Get_AnswerWizard;
    property COMAddIns {Flags(2), (1/0) CC:0, INV:2, DBG:2}: COMAddIns read Get_COMAddIns;
    property ProductCode {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_ProductCode;
    property DefaultWebOptions {Flags(2), (1/0) CC:0, INV:2, DBG:2}: DefaultWebOptions read Get_DefaultWebOptions;
    property LanguageSettings {Flags(2), (1/0) CC:0, INV:2, DBG:2}: LanguageSettings read Get_LanguageSettings;
    property MsoDebugOptions {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoDebugOptions read Get_MsoDebugOptions;
    property Marker {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Marker read Get_Marker;
  {CoClassWriteProperties}
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Caption write Set_Caption;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Single read Get_Left write Set_Left;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Single read Get_Top write Set_Top;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Single read Get_Width write Set_Width;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Single read Get_Height write Set_Height;
    property WindowState {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PpWindowState read Get_WindowState write Set_WindowState;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_Visible write Set_Visible;
    property ShowWindowsInTaskbar {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_ShowWindowsInTaskbar write Set_ShowWindowsInTaskbar;
    property FeatureInstall {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoFeatureInstall read Get_FeatureInstall write Set_FeatureInstall;
  published
    property AutoQuit: Boolean read FAutoQuit write FAutoQuit; 
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPowerPointApplicationProperties read GetServerProperties;
{$ENDIF}
  {CoClassWriteEventDecls}
    property OnWindowSelectionChange: TPowerPointApplicationWindowSelectionChange read FOnWindowSelectionChange write FOnWindowSelectionChange;
    property OnWindowBeforeRightClick: TPowerPointApplicationWindowBeforeRightClick read FOnWindowBeforeRightClick write FOnWindowBeforeRightClick;
    property OnWindowBeforeDoubleClick: TPowerPointApplicationWindowBeforeDoubleClick read FOnWindowBeforeDoubleClick write FOnWindowBeforeDoubleClick;
    property OnPresentationClose: TPowerPointApplicationPresentationClose read FOnPresentationClose write FOnPresentationClose;
    property OnPresentationSave: TPowerPointApplicationPresentationSave read FOnPresentationSave write FOnPresentationSave;
    property OnPresentationOpen: TPowerPointApplicationPresentationOpen read FOnPresentationOpen write FOnPresentationOpen;
    property OnNewPresentation: TPowerPointApplicationNewPresentation read FOnNewPresentation write FOnNewPresentation;
    property OnPresentationNewSlide: TPowerPointApplicationPresentationNewSlide read FOnPresentationNewSlide write FOnPresentationNewSlide;
    property OnWindowActivate: TPowerPointApplicationWindowActivate read FOnWindowActivate write FOnWindowActivate;
    property OnWindowDeactivate: TPowerPointApplicationWindowDeactivate read FOnWindowDeactivate write FOnWindowDeactivate;
    property OnSlideShowBegin: TPowerPointApplicationSlideShowBegin read FOnSlideShowBegin write FOnSlideShowBegin;
    property OnSlideShowNextBuild: TPowerPointApplicationSlideShowNextBuild read FOnSlideShowNextBuild write FOnSlideShowNextBuild;
    property OnSlideShowNextSlide: TPowerPointApplicationSlideShowNextSlide read FOnSlideShowNextSlide write FOnSlideShowNextSlide;
    property OnSlideShowEnd: TPowerPointApplicationSlideShowEnd read FOnSlideShowEnd write FOnSlideShowEnd;
    property OnPresentationPrint: TPowerPointApplicationPresentationPrint read FOnPresentationPrint write FOnPresentationPrint;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPowerPointApplication
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPowerPointApplicationProperties = class(TPersistent)
  private
    FServer:    TPowerPointApplication;
    function    GetDefaultInterface: _Application;
    constructor Create(AServer: TPowerPointApplication);
  protected
// StdProp:
    function  Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Presentations;
// StdProp:
    function  Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
// StdProp:
    function  Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PPDialogs;
// StdProp:
    function  Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindow;
// StdProp:
    function  Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointPresentation;
// StdProp:
    function  Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindows;
// StdProp:
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
// StdProp:WideString
    function  Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    procedure Set_Caption {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Caption: WideString);
// StdProp:
    function  Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
// StdProp:
    function  Get_FileSearch {Flags(1), (1/0) CC:0, INV:2, DBG:3}: FileSearch;
// StdProp:
    function  Get_FileFind {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IFind;
// StdProp:WideString
    function  Get_Build {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_OperatingSystem {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_ActivePrinter {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:Integer
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Integer;
// StdProp:
    function  Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AddIns;
// StdProp:
    function  Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:3}: VBE;
// StdProp:Single
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:Single
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Left: Single);
// StdProp:Single
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:Single
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Top: Single);
// StdProp:Single
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:Single
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Width: Single);
// StdProp:Single
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:Single
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Height: Single);
// StdProp:TOleEnum
    function  Get_WindowState {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpWindowState;
// StdProp:TOleEnum
    procedure Set_WindowState {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}WindowState: PpWindowState);
// StdProp:TOleEnum
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Visible: MsoTriState);
// StdProp:TOleEnum
    function  Get_Active {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:
    function  Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
// StdProp:
    function  Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: COMAddIns;
// StdProp:WideString
    function  Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:
    function  Get_DefaultWebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DefaultWebOptions;
// StdProp:
    function  Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: LanguageSettings;
// StdProp:
    function  Get_MsoDebugOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoDebugOptions;
// StdProp:TOleEnum
    function  Get_ShowWindowsInTaskbar {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
// StdProp:TOleEnum
    procedure Set_ShowWindowsInTaskbar {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}ShowWindowsInTaskbar: MsoTriState);
// StdProp:
    function  Get_Marker {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Marker;
// StdProp:TOleEnum
    function  Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoFeatureInstall;
// StdProp:TOleEnum
    procedure Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FeatureInstall: MsoFeatureInstall);
  public
    property DefaultInterface: _Application read GetDefaultInterface;
  published
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Caption write Set_Caption;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Single read Get_Left write Set_Left;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Single read Get_Top write Set_Top;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Single read Get_Width write Set_Width;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Single read Get_Height write Set_Height;
    property WindowState {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PpWindowState read Get_WindowState write Set_WindowState;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_Visible write Set_Visible;
    property ShowWindowsInTaskbar {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoTriState read Get_ShowWindowsInTaskbar write Set_ShowWindowsInTaskbar;
    property FeatureInstall {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoFeatureInstall read Get_FeatureInstall write Set_FeatureInstall;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMaster provides a Create and CreateRemote method to          
// create instances of the default interface _Master exposed by              
// the CoClass Master. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMaster = class
    class function Create: _Master;
    class function CreateRemote(const MachineName: string): _Master;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMaster
// Help String      : 
// Default Interface: _Master
// Def. Intf. DISP? : No
// Event   Interface: MasterEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMasterProperties= class;
{$ENDIF}
  TMaster = class(TOleServer)
  private
    FIntf:        _Master;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMasterProperties;
    function      GetServerProperties: TMasterProperties;
{$ENDIF}
    function      GetDefaultInterface: _Master;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
  {CoClassWriteArrayPropMethods}
// StdProp:
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
// StdProp:IDispatch
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:
    function  Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shapes;
// StdProp:
    function  Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HeadersFooters;
// StdProp:
    function  Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorScheme;
// StdProp:
    procedure Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:1}const ColorScheme: ColorScheme);
// StdProp:
    function  Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ShapeRange;
// StdProp:WideString
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Name: WideString);
// StdProp:Single
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:Single
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:
    function  Get_TextStyles {Flags(1), (1/0) CC:0, INV:2, DBG:3}: TextStyles;
// StdProp:
    function  Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Hyperlinks;
// StdProp:
    function  Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Scripts;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Master);
    procedure Disconnect; override;
  {CoClassWriteMethods}
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    property  DefaultInterface: _Master read GetDefaultInterface;
  {CoClassWriteProperties}
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:2}: PowerPointApplication read Get_Application;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:2}: IDispatch read Get_Parent;
    property Shapes {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Shapes read Get_Shapes;
    property HeadersFooters {Flags(2), (1/0) CC:0, INV:2, DBG:2}: HeadersFooters read Get_HeadersFooters;
    property Background {Flags(2), (1/0) CC:0, INV:2, DBG:2}: ShapeRange read Get_Background;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Single read Get_Height;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Single read Get_Width;
    property TextStyles {Flags(2), (1/0) CC:0, INV:2, DBG:2}: TextStyles read Get_TextStyles;
    property Hyperlinks {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Hyperlinks read Get_Hyperlinks;
    property Scripts {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Scripts read Get_Scripts;
  {CoClassWriteProperties}
    property ColorScheme {Flags(2), (1/0) CC:0, INV:2, DBG:2}: ColorScheme read Get_ColorScheme write Set_ColorScheme;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Name write Set_Name;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMasterProperties read GetServerProperties;
{$ENDIF}
  {CoClassWriteEventDecls}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMaster
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMasterProperties = class(TPersistent)
  private
    FServer:    TMaster;
    function    GetDefaultInterface: _Master;
    constructor Create(AServer: TMaster);
  protected
// StdProp:
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
// StdProp:IDispatch
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:
    function  Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shapes;
// StdProp:
    function  Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HeadersFooters;
// StdProp:
    function  Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorScheme;
// StdProp:
    procedure Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:1}const ColorScheme: ColorScheme);
// StdProp:
    function  Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ShapeRange;
// StdProp:WideString
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Name: WideString);
// StdProp:Single
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:Single
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
// StdProp:
    function  Get_TextStyles {Flags(1), (1/0) CC:0, INV:2, DBG:3}: TextStyles;
// StdProp:
    function  Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Hyperlinks;
// StdProp:
    function  Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Scripts;
  public
    property DefaultInterface: _Master read GetDefaultInterface;
  published
    property ColorScheme {Flags(2), (1/0) CC:0, INV:2, DBG:2}: ColorScheme read Get_ColorScheme write Set_ColorScheme;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Name write Set_Name;
  end;
{$ENDIF}


procedure Register;

implementation

uses ComObj;

class function CoPowerPointGlobal.Create: _Global;
begin
  Result := CreateComObject(CLASS_PowerPointGlobal) as _Global;
end;

class function CoPowerPointGlobal.CreateRemote(const MachineName: string): _Global;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PowerPointGlobal) as _Global;
end;

procedure TPowerPointGlobal.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{91493443-5A91-11CF-8700-00AA0060263B}';
    IntfIID:   '{91493451-5A91-11CF-8700-00AA0060263B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPowerPointGlobal.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _Global;
  end;
end;

procedure TPowerPointGlobal.ConnectTo(svrIntf: _Global);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPowerPointGlobal.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPowerPointGlobal.GetDefaultInterface: _Global;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TPowerPointGlobal.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPowerPointGlobalProperties.Create(Self);
{$ENDIF}
end;

destructor TPowerPointGlobal.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPowerPointGlobal.GetServerProperties: TPowerPointGlobalProperties;
begin
  Result := FProps;
end;
{$ENDIF}

// StdProp:
function  TPowerPointGlobal.Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointPresentation;
begin
  Result := DefaultInterface.Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobal.Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindow;
begin
  Result := DefaultInterface.Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobal.Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AddIns;
begin
  Result := DefaultInterface.Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobal.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
begin
  Result := DefaultInterface.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobal.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
begin
  Result := DefaultInterface.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobal.Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PPDialogs;
begin
  Result := DefaultInterface.Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobal.Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Presentations;
begin
  Result := DefaultInterface.Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobal.Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindows;
begin
  Result := DefaultInterface.Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobal.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
begin
  Result := DefaultInterface.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobal.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
begin
  Result := DefaultInterface.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobal.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
begin
  Result := DefaultInterface.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPowerPointGlobalProperties.Create(AServer: TPowerPointGlobal);
begin
  inherited Create;
  FServer := AServer;
end;

function TPowerPointGlobalProperties.GetDefaultInterface: _Global;
begin
  Result := FServer.DefaultInterface;
end;

// StdProp:
function  TPowerPointGlobalProperties.Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointPresentation;
begin
  Result := DefaultInterface.Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobalProperties.Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindow;
begin
  Result := DefaultInterface.Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobalProperties.Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AddIns;
begin
  Result := DefaultInterface.Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobalProperties.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
begin
  Result := DefaultInterface.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobalProperties.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
begin
  Result := DefaultInterface.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobalProperties.Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PPDialogs;
begin
  Result := DefaultInterface.Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobalProperties.Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Presentations;
begin
  Result := DefaultInterface.Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobalProperties.Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindows;
begin
  Result := DefaultInterface.Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobalProperties.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
begin
  Result := DefaultInterface.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobalProperties.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
begin
  Result := DefaultInterface.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointGlobalProperties.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
begin
  Result := DefaultInterface.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

{$ENDIF}

class function CoPowerPointSlide.Create: _Slide;
begin
  Result := CreateComObject(CLASS_PowerPointSlide) as _Slide;
end;

class function CoPowerPointSlide.CreateRemote(const MachineName: string): _Slide;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PowerPointSlide) as _Slide;
end;

procedure TPowerPointSlide.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{91493445-5A91-11CF-8700-00AA0060263B}';
    IntfIID:   '{9149346A-5A91-11CF-8700-00AA0060263B}';
    EventIID:  '{9149346D-5A91-11CF-8700-00AA0060263B}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPowerPointSlide.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _Slide;
  end;
end;

procedure TPowerPointSlide.ConnectTo(svrIntf: _Slide);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TPowerPointSlide.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TPowerPointSlide.GetDefaultInterface: _Slide;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TPowerPointSlide.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPowerPointSlideProperties.Create(Self);
{$ENDIF}
end;

destructor TPowerPointSlide.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPowerPointSlide.GetServerProperties: TPowerPointSlideProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TPowerPointSlide.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
  end; {case DispID}
end;

// StdProp:
function  TPowerPointSlide.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
begin
  Result := DefaultInterface.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TPowerPointSlide.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlide.Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shapes;
begin
  Result := DefaultInterface.Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlide.Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HeadersFooters;
begin
  Result := DefaultInterface.Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlide.Get_SlideShowTransition {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowTransition;
begin
  Result := DefaultInterface.Get_SlideShowTransition {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlide.Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorScheme;
begin
  Result := DefaultInterface.Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
procedure TPowerPointSlide.Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:1}const ColorScheme: ColorScheme);
begin
  DefaultInterface.Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:1}ColorScheme);
end;

// StdProp:
function  TPowerPointSlide.Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ShapeRange;
begin
  Result := DefaultInterface.Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointSlide.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
procedure TPowerPointSlide.Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Name: WideString);
begin
  DefaultInterface.Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_8:0}Name);
end;

// StdProp:Integer
function  TPowerPointSlide.Get_SlideID {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Integer;
begin
  Result := DefaultInterface.Get_SlideID {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Integer
function  TPowerPointSlide.Get_PrintSteps {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
begin
  Result := DefaultInterface.Get_PrintSteps {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointSlide.Get_Layout {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpSlideLayout;
begin
  Result := DefaultInterface.Get_Layout {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointSlide.Set_Layout {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Layout: PpSlideLayout);
begin
  DefaultInterface.Set_Layout {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}Layout);
end;

// StdProp:
function  TPowerPointSlide.Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Tags;
begin
  Result := DefaultInterface.Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Integer
function  TPowerPointSlide.Get_SlideIndex {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
begin
  Result := DefaultInterface.Get_SlideIndex {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Integer
function  TPowerPointSlide.Get_SlideNumber {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
begin
  Result := DefaultInterface.Get_SlideNumber {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointSlide.Get_DisplayMasterShapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_DisplayMasterShapes {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointSlide.Set_DisplayMasterShapes {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DisplayMasterShapes: MsoTriState);
begin
  DefaultInterface.Set_DisplayMasterShapes {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}DisplayMasterShapes);
end;

// StdProp:TOleEnum
function  TPowerPointSlide.Get_FollowMasterBackground {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_FollowMasterBackground {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointSlide.Set_FollowMasterBackground {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FollowMasterBackground: MsoTriState);
begin
  DefaultInterface.Set_FollowMasterBackground {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}FollowMasterBackground);
end;

// StdProp:
function  TPowerPointSlide.Get_NotesPage {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideRange;
begin
  Result := DefaultInterface.Get_NotesPage {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlide.Get_Master {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
begin
  Result := DefaultInterface.Get_Master {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlide.Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Hyperlinks;
begin
  Result := DefaultInterface.Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlide.Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Scripts;
begin
  Result := DefaultInterface.Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

procedure TPowerPointSlide.Select {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.Select {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

procedure TPowerPointSlide.Cut {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.Cut {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

procedure TPowerPointSlide.Copy {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.Copy {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

function  TPowerPointSlide.Duplicate {Flags(1), (1/0) CC:0, INV:1, DBG:3}: SlideRange;
begin
  Result := DefaultInterface.Duplicate {Flags(1), (1/0) CC:0, INV:1, DBG:7};
end;

procedure TPowerPointSlide.Delete {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.Delete {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

procedure TPowerPointSlide.Export {Flags(1), (4/4) CC:0, INV:1, DBG:3}({VT_8:0}const FileName: WideString; 
                                                                       {VT_8:0}const FilterName: WideString; 
                                                                       {VT_22:0}ScaleWidth: SYSINT; 
                                                                       {VT_22:0}ScaleHeight: SYSINT);
begin
  DefaultInterface.Export {Flags(1), (4/4) CC:0, INV:1, DBG:7}({VT_8:0}FileName, 
                                                               {VT_8:0}FilterName, 
                                                               {VT_22:0}ScaleWidth, 
                                                               {VT_22:0}ScaleHeight);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPowerPointSlideProperties.Create(AServer: TPowerPointSlide);
begin
  inherited Create;
  FServer := AServer;
end;

function TPowerPointSlideProperties.GetDefaultInterface: _Slide;
begin
  Result := FServer.DefaultInterface;
end;

// StdProp:
function  TPowerPointSlideProperties.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
begin
  Result := DefaultInterface.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TPowerPointSlideProperties.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlideProperties.Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shapes;
begin
  Result := DefaultInterface.Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlideProperties.Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HeadersFooters;
begin
  Result := DefaultInterface.Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlideProperties.Get_SlideShowTransition {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowTransition;
begin
  Result := DefaultInterface.Get_SlideShowTransition {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlideProperties.Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorScheme;
begin
  Result := DefaultInterface.Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
procedure TPowerPointSlideProperties.Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:1}const ColorScheme: ColorScheme);
begin
  DefaultInterface.Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:1}ColorScheme);
end;

// StdProp:
function  TPowerPointSlideProperties.Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ShapeRange;
begin
  Result := DefaultInterface.Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointSlideProperties.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
procedure TPowerPointSlideProperties.Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Name: WideString);
begin
  DefaultInterface.Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_8:0}Name);
end;

// StdProp:Integer
function  TPowerPointSlideProperties.Get_SlideID {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Integer;
begin
  Result := DefaultInterface.Get_SlideID {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Integer
function  TPowerPointSlideProperties.Get_PrintSteps {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
begin
  Result := DefaultInterface.Get_PrintSteps {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointSlideProperties.Get_Layout {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpSlideLayout;
begin
  Result := DefaultInterface.Get_Layout {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointSlideProperties.Set_Layout {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Layout: PpSlideLayout);
begin
  DefaultInterface.Set_Layout {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}Layout);
end;

// StdProp:
function  TPowerPointSlideProperties.Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Tags;
begin
  Result := DefaultInterface.Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Integer
function  TPowerPointSlideProperties.Get_SlideIndex {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
begin
  Result := DefaultInterface.Get_SlideIndex {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Integer
function  TPowerPointSlideProperties.Get_SlideNumber {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SYSINT;
begin
  Result := DefaultInterface.Get_SlideNumber {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointSlideProperties.Get_DisplayMasterShapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_DisplayMasterShapes {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointSlideProperties.Set_DisplayMasterShapes {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DisplayMasterShapes: MsoTriState);
begin
  DefaultInterface.Set_DisplayMasterShapes {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}DisplayMasterShapes);
end;

// StdProp:TOleEnum
function  TPowerPointSlideProperties.Get_FollowMasterBackground {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_FollowMasterBackground {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointSlideProperties.Set_FollowMasterBackground {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FollowMasterBackground: MsoTriState);
begin
  DefaultInterface.Set_FollowMasterBackground {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}FollowMasterBackground);
end;

// StdProp:
function  TPowerPointSlideProperties.Get_NotesPage {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideRange;
begin
  Result := DefaultInterface.Get_NotesPage {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlideProperties.Get_Master {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
begin
  Result := DefaultInterface.Get_Master {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlideProperties.Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Hyperlinks;
begin
  Result := DefaultInterface.Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointSlideProperties.Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Scripts;
begin
  Result := DefaultInterface.Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

{$ENDIF}

class function CoPowerPointPresentation.Create: _Presentation;
begin
  Result := CreateComObject(CLASS_PowerPointPresentation) as _Presentation;
end;

class function CoPowerPointPresentation.CreateRemote(const MachineName: string): _Presentation;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PowerPointPresentation) as _Presentation;
end;

procedure TPowerPointPresentation.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{91493444-5A91-11CF-8700-00AA0060263B}';
    IntfIID:   '{9149349D-5A91-11CF-8700-00AA0060263B}';
    EventIID:  '{91493463-5A91-11CF-8700-00AA0060263B}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPowerPointPresentation.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _Presentation;
  end;
end;

procedure TPowerPointPresentation.ConnectTo(svrIntf: _Presentation);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TPowerPointPresentation.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TPowerPointPresentation.GetDefaultInterface: _Presentation;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TPowerPointPresentation.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPowerPointPresentationProperties.Create(Self);
{$ENDIF}
end;

destructor TPowerPointPresentation.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPowerPointPresentation.GetServerProperties: TPowerPointPresentationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TPowerPointPresentation.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
  end; {case DispID}
end;

// StdProp:
function  TPowerPointPresentation.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
begin
  Result := DefaultInterface.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TPowerPointPresentation.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_SlideMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
begin
  Result := DefaultInterface.Get_SlideMaster {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_TitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
begin
  Result := DefaultInterface.Get_TitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentation.Get_HasTitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_HasTitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointPresentation.Get_TemplateName {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_TemplateName {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_NotesMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
begin
  Result := DefaultInterface.Get_NotesMaster {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_HandoutMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
begin
  Result := DefaultInterface.Get_HandoutMaster {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_Slides {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Slides;
begin
  Result := DefaultInterface.Get_Slides {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_PageSetup {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PageSetup;
begin
  Result := DefaultInterface.Get_PageSetup {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_ColorSchemes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorSchemes;
begin
  Result := DefaultInterface.Get_ColorSchemes {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_ExtraColors {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ExtraColors;
begin
  Result := DefaultInterface.Get_ExtraColors {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_SlideShowSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowSettings;
begin
  Result := DefaultInterface.Get_SlideShowSettings {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_Fonts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Fonts;
begin
  Result := DefaultInterface.Get_Fonts {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
begin
  Result := DefaultInterface.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Tags;
begin
  Result := DefaultInterface.Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_DefaultShape {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shape;
begin
  Result := DefaultInterface.Get_DefaultShape {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TPowerPointPresentation.Get_BuiltInDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_BuiltInDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TPowerPointPresentation.Get_CustomDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_CustomDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_VBProject {Flags(1), (1/0) CC:0, INV:2, DBG:3}: VBProject;
begin
  Result := DefaultInterface.Get_VBProject {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentation.Get_ReadOnly {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_ReadOnly {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointPresentation.Get_FullName {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_FullName {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointPresentation.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointPresentation.Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentation.Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentation.Set_Saved {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Saved: MsoTriState);
begin
  DefaultInterface.Set_Saved {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}Saved);
end;

// StdProp:TOleEnum
function  TPowerPointPresentation.Get_LayoutDirection {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpDirection;
begin
  Result := DefaultInterface.Get_LayoutDirection {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentation.Set_LayoutDirection {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}LayoutDirection: PpDirection);
begin
  DefaultInterface.Set_LayoutDirection {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}LayoutDirection);
end;

// StdProp:
function  TPowerPointPresentation.Get_PrintOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PrintOptions;
begin
  Result := DefaultInterface.Get_PrintOptions {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TPowerPointPresentation.Get_Container {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_Container {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentation.Get_DisplayComments {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_DisplayComments {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentation.Set_DisplayComments {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DisplayComments: MsoTriState);
begin
  DefaultInterface.Set_DisplayComments {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}DisplayComments);
end;

// StdProp:TOleEnum
function  TPowerPointPresentation.Get_FarEastLineBreakLevel {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpFarEastLineBreakLevel;
begin
  Result := DefaultInterface.Get_FarEastLineBreakLevel {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentation.Set_FarEastLineBreakLevel {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FarEastLineBreakLevel: PpFarEastLineBreakLevel);
begin
  DefaultInterface.Set_FarEastLineBreakLevel {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}FarEastLineBreakLevel);
end;

// StdProp:WideString
function  TPowerPointPresentation.Get_NoLineBreakBefore {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_NoLineBreakBefore {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
procedure TPowerPointPresentation.Set_NoLineBreakBefore {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const NoLineBreakBefore: WideString);
begin
  DefaultInterface.Set_NoLineBreakBefore {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_8:0}NoLineBreakBefore);
end;

// StdProp:WideString
function  TPowerPointPresentation.Get_NoLineBreakAfter {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_NoLineBreakAfter {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
procedure TPowerPointPresentation.Set_NoLineBreakAfter {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const NoLineBreakAfter: WideString);
begin
  DefaultInterface.Set_NoLineBreakAfter {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_8:0}NoLineBreakAfter);
end;

// StdProp:
function  TPowerPointPresentation.Get_SlideShowWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindow;
begin
  Result := DefaultInterface.Get_SlideShowWindow {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentation.Get_FarEastLineBreakLanguage {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoFarEastLineBreakLanguageID;
begin
  Result := DefaultInterface.Get_FarEastLineBreakLanguage {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentation.Set_FarEastLineBreakLanguage {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FarEastLineBreakLanguage: MsoFarEastLineBreakLanguageID);
begin
  DefaultInterface.Set_FarEastLineBreakLanguage {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}FarEastLineBreakLanguage);
end;

// StdProp:TOleEnum
function  TPowerPointPresentation.Get_DefaultLanguageID {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoLanguageID;
begin
  Result := DefaultInterface.Get_DefaultLanguageID {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentation.Set_DefaultLanguageID {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DefaultLanguageID: MsoLanguageID);
begin
  DefaultInterface.Set_DefaultLanguageID {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}DefaultLanguageID);
end;

// StdProp:
function  TPowerPointPresentation.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
begin
  Result := DefaultInterface.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_PublishObjects {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PublishObjects;
begin
  Result := DefaultInterface.Get_PublishObjects {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_WebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WebOptions;
begin
  Result := DefaultInterface.Get_WebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentation.Get_HTMLProject {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HTMLProject;
begin
  Result := DefaultInterface.Get_HTMLProject {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentation.Get_EnvelopeVisible {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_EnvelopeVisible {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentation.Set_EnvelopeVisible {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}EnvelopeVisible: MsoTriState);
begin
  DefaultInterface.Set_EnvelopeVisible {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}EnvelopeVisible);
end;

// StdProp:TOleEnum
function  TPowerPointPresentation.Get_VBASigned {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_VBASigned {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

function  TPowerPointPresentation.AddTitleMaster {Flags(1), (1/0) CC:0, INV:1, DBG:3}: _Master;
begin
  Result := DefaultInterface.AddTitleMaster {Flags(1), (1/0) CC:0, INV:1, DBG:7};
end;

procedure TPowerPointPresentation.ApplyTemplate {Flags(1), (1/1) CC:0, INV:1, DBG:3}({VT_8:0}const FileName: WideString);
begin
  DefaultInterface.ApplyTemplate {Flags(1), (1/1) CC:0, INV:1, DBG:7}({VT_8:0}FileName);
end;

function  TPowerPointPresentation.NewWindow {Flags(1), (1/0) CC:0, INV:1, DBG:3}: DocumentWindow;
begin
  Result := DefaultInterface.NewWindow {Flags(1), (1/0) CC:0, INV:1, DBG:7};
end;

procedure TPowerPointPresentation.FollowHyperlink {Flags(1), (7/7) CC:0, INV:1, DBG:3}({VT_8:0}const Address: WideString; 
                                                                                       {VT_8:0}const SubAddress: WideString; 
                                                                                       {VT_11:0}NewWindow: WordBool; 
                                                                                       {VT_11:0}AddHistory: WordBool; 
                                                                                       {VT_8:0}const ExtraInfo: WideString; 
                                                                                       {VT_29:0}Method: MsoExtraInfoMethod; 
                                                                                       {VT_8:0}const HeaderInfo: WideString);
begin
  DefaultInterface.FollowHyperlink {Flags(1), (7/7) CC:0, INV:1, DBG:7}({VT_8:0}Address, 
                                                                        {VT_8:0}SubAddress, 
                                                                        {VT_11:0}NewWindow, 
                                                                        {VT_11:0}AddHistory, 
                                                                        {VT_8:0}ExtraInfo, 
                                                                        {VT_29:0}Method, 
                                                                        {VT_8:0}HeaderInfo);
end;

procedure TPowerPointPresentation.AddToFavorites {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.AddToFavorites {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

procedure TPowerPointPresentation.PrintOut {Flags(1), (5/5) CC:0, INV:1, DBG:3}({VT_22:0}From: SYSINT; 
                                                                                {VT_22:0}To_: SYSINT; 
                                                                                {VT_8:0}const PrintToFile: WideString; 
                                                                                {VT_22:0}Copies: SYSINT; 
                                                                                {VT_29:0}Collate: MsoTriState);
begin
  DefaultInterface.PrintOut {Flags(1), (5/5) CC:0, INV:1, DBG:7}({VT_22:0}From, {VT_22:0}To_, 
                                                                 {VT_8:0}PrintToFile, 
                                                                 {VT_22:0}Copies, {VT_29:0}Collate);
end;

procedure TPowerPointPresentation.Save {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.Save {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

procedure TPowerPointPresentation.SaveAs {Flags(1), (3/3) CC:0, INV:1, DBG:3}({VT_8:0}const FileName: WideString; 
                                                                              {VT_29:0}FileFormat: PpSaveAsFileType; 
                                                                              {VT_29:0}EmbedTrueTypeFonts: MsoTriState);
begin
  DefaultInterface.SaveAs {Flags(1), (3/3) CC:0, INV:1, DBG:7}({VT_8:0}FileName, 
                                                               {VT_29:0}FileFormat, 
                                                               {VT_29:0}EmbedTrueTypeFonts);
end;

procedure TPowerPointPresentation.SaveCopyAs {Flags(1), (3/3) CC:0, INV:1, DBG:3}({VT_8:0}const FileName: WideString; 
                                                                                  {VT_29:0}FileFormat: PpSaveAsFileType; 
                                                                                  {VT_29:0}EmbedTrueTypeFonts: MsoTriState);
begin
  DefaultInterface.SaveCopyAs {Flags(1), (3/3) CC:0, INV:1, DBG:7}({VT_8:0}FileName, 
                                                                   {VT_29:0}FileFormat, 
                                                                   {VT_29:0}EmbedTrueTypeFonts);
end;

procedure TPowerPointPresentation.Export {Flags(1), (4/4) CC:0, INV:1, DBG:3}({VT_8:0}const Path: WideString; 
                                                                              {VT_8:0}const FilterName: WideString; 
                                                                              {VT_22:0}ScaleWidth: SYSINT; 
                                                                              {VT_22:0}ScaleHeight: SYSINT);
begin
  DefaultInterface.Export {Flags(1), (4/4) CC:0, INV:1, DBG:7}({VT_8:0}Path, {VT_8:0}FilterName, 
                                                               {VT_22:0}ScaleWidth, 
                                                               {VT_22:0}ScaleHeight);
end;

procedure TPowerPointPresentation.Close {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.Close {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

procedure TPowerPointPresentation.SetUndoText {Flags(1), (1/1) CC:0, INV:1, DBG:3}({VT_8:0}const Text: WideString);
begin
  DefaultInterface.SetUndoText {Flags(1), (1/1) CC:0, INV:1, DBG:7}({VT_8:0}Text);
end;

procedure TPowerPointPresentation.UpdateLinks {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.UpdateLinks {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

procedure TPowerPointPresentation.WebPagePreview {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.WebPagePreview {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

procedure TPowerPointPresentation.ReloadAs {Flags(1), (1/1) CC:0, INV:1, DBG:3}({VT_29:0}cp: MsoEncoding);
begin
  DefaultInterface.ReloadAs {Flags(1), (1/1) CC:0, INV:1, DBG:7}({VT_29:0}cp);
end;

procedure TPowerPointPresentation.MakeIntoTemplate {Flags(1), (1/1) CC:0, INV:1, DBG:3}({VT_29:0}IsDesignTemplate: MsoTriState);
begin
  DefaultInterface.MakeIntoTemplate {Flags(1), (1/1) CC:0, INV:1, DBG:7}({VT_29:0}IsDesignTemplate);
end;

procedure TPowerPointPresentation.sblt {Flags(1), (1/1) CC:0, INV:1, DBG:3}({VT_8:0}const s: WideString);
begin
  DefaultInterface.sblt {Flags(1), (1/1) CC:0, INV:1, DBG:7}({VT_8:0}s);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPowerPointPresentationProperties.Create(AServer: TPowerPointPresentation);
begin
  inherited Create;
  FServer := AServer;
end;

function TPowerPointPresentationProperties.GetDefaultInterface: _Presentation;
begin
  Result := FServer.DefaultInterface;
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
begin
  Result := DefaultInterface.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TPowerPointPresentationProperties.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_SlideMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
begin
  Result := DefaultInterface.Get_SlideMaster {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_TitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
begin
  Result := DefaultInterface.Get_TitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentationProperties.Get_HasTitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_HasTitleMaster {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointPresentationProperties.Get_TemplateName {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_TemplateName {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_NotesMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
begin
  Result := DefaultInterface.Get_NotesMaster {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_HandoutMaster {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Master;
begin
  Result := DefaultInterface.Get_HandoutMaster {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_Slides {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Slides;
begin
  Result := DefaultInterface.Get_Slides {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_PageSetup {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PageSetup;
begin
  Result := DefaultInterface.Get_PageSetup {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_ColorSchemes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorSchemes;
begin
  Result := DefaultInterface.Get_ColorSchemes {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_ExtraColors {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ExtraColors;
begin
  Result := DefaultInterface.Get_ExtraColors {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_SlideShowSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowSettings;
begin
  Result := DefaultInterface.Get_SlideShowSettings {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_Fonts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Fonts;
begin
  Result := DefaultInterface.Get_Fonts {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
begin
  Result := DefaultInterface.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Tags;
begin
  Result := DefaultInterface.Get_Tags {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_DefaultShape {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shape;
begin
  Result := DefaultInterface.Get_DefaultShape {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TPowerPointPresentationProperties.Get_BuiltInDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_BuiltInDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TPowerPointPresentationProperties.Get_CustomDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_CustomDocumentProperties {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_VBProject {Flags(1), (1/0) CC:0, INV:2, DBG:3}: VBProject;
begin
  Result := DefaultInterface.Get_VBProject {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentationProperties.Get_ReadOnly {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_ReadOnly {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointPresentationProperties.Get_FullName {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_FullName {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointPresentationProperties.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointPresentationProperties.Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentationProperties.Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentationProperties.Set_Saved {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Saved: MsoTriState);
begin
  DefaultInterface.Set_Saved {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}Saved);
end;

// StdProp:TOleEnum
function  TPowerPointPresentationProperties.Get_LayoutDirection {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpDirection;
begin
  Result := DefaultInterface.Get_LayoutDirection {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentationProperties.Set_LayoutDirection {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}LayoutDirection: PpDirection);
begin
  DefaultInterface.Set_LayoutDirection {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}LayoutDirection);
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_PrintOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PrintOptions;
begin
  Result := DefaultInterface.Get_PrintOptions {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TPowerPointPresentationProperties.Get_Container {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_Container {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentationProperties.Get_DisplayComments {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_DisplayComments {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentationProperties.Set_DisplayComments {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DisplayComments: MsoTriState);
begin
  DefaultInterface.Set_DisplayComments {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}DisplayComments);
end;

// StdProp:TOleEnum
function  TPowerPointPresentationProperties.Get_FarEastLineBreakLevel {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpFarEastLineBreakLevel;
begin
  Result := DefaultInterface.Get_FarEastLineBreakLevel {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentationProperties.Set_FarEastLineBreakLevel {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FarEastLineBreakLevel: PpFarEastLineBreakLevel);
begin
  DefaultInterface.Set_FarEastLineBreakLevel {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}FarEastLineBreakLevel);
end;

// StdProp:WideString
function  TPowerPointPresentationProperties.Get_NoLineBreakBefore {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_NoLineBreakBefore {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
procedure TPowerPointPresentationProperties.Set_NoLineBreakBefore {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const NoLineBreakBefore: WideString);
begin
  DefaultInterface.Set_NoLineBreakBefore {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_8:0}NoLineBreakBefore);
end;

// StdProp:WideString
function  TPowerPointPresentationProperties.Get_NoLineBreakAfter {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_NoLineBreakAfter {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
procedure TPowerPointPresentationProperties.Set_NoLineBreakAfter {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const NoLineBreakAfter: WideString);
begin
  DefaultInterface.Set_NoLineBreakAfter {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_8:0}NoLineBreakAfter);
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_SlideShowWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindow;
begin
  Result := DefaultInterface.Get_SlideShowWindow {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentationProperties.Get_FarEastLineBreakLanguage {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoFarEastLineBreakLanguageID;
begin
  Result := DefaultInterface.Get_FarEastLineBreakLanguage {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentationProperties.Set_FarEastLineBreakLanguage {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FarEastLineBreakLanguage: MsoFarEastLineBreakLanguageID);
begin
  DefaultInterface.Set_FarEastLineBreakLanguage {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}FarEastLineBreakLanguage);
end;

// StdProp:TOleEnum
function  TPowerPointPresentationProperties.Get_DefaultLanguageID {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoLanguageID;
begin
  Result := DefaultInterface.Get_DefaultLanguageID {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentationProperties.Set_DefaultLanguageID {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}DefaultLanguageID: MsoLanguageID);
begin
  DefaultInterface.Set_DefaultLanguageID {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}DefaultLanguageID);
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
begin
  Result := DefaultInterface.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_PublishObjects {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PublishObjects;
begin
  Result := DefaultInterface.Get_PublishObjects {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_WebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WebOptions;
begin
  Result := DefaultInterface.Get_WebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointPresentationProperties.Get_HTMLProject {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HTMLProject;
begin
  Result := DefaultInterface.Get_HTMLProject {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointPresentationProperties.Get_EnvelopeVisible {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_EnvelopeVisible {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointPresentationProperties.Set_EnvelopeVisible {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}EnvelopeVisible: MsoTriState);
begin
  DefaultInterface.Set_EnvelopeVisible {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}EnvelopeVisible);
end;

// StdProp:TOleEnum
function  TPowerPointPresentationProperties.Get_VBASigned {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_VBASigned {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

{$ENDIF}

class function CoOLECtrl.Create: OCXExtender;
begin
  Result := CreateComObject(CLASS_OLECtrl) as OCXExtender;
end;

class function CoOLECtrl.CreateRemote(const MachineName: string): OCXExtender;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OLECtrl) as OCXExtender;
end;

class function CoPowerPointApplication.Create: _Application;
begin
  Result := CreateComObject(CLASS_PowerPointApplication) as _Application;
end;

class function CoPowerPointApplication.CreateRemote(const MachineName: string): _Application;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PowerPointApplication) as _Application;
end;

procedure TPowerPointApplication.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{91493441-5A91-11CF-8700-00AA0060263B}';
    IntfIID:   '{91493442-5A91-11CF-8700-00AA0060263B}';
    EventIID:  '{914934C2-5A91-11CF-8700-00AA0060263B}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPowerPointApplication.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _Application;
  end;
end;

procedure TPowerPointApplication.ConnectTo(svrIntf: _Application);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TPowerPointApplication.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    if FAutoQuit then
      Quit();
    FIntf := nil;
  end;
end;

function TPowerPointApplication.GetDefaultInterface: _Application;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TPowerPointApplication.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPowerPointApplicationProperties.Create(Self);
{$ENDIF}
end;

destructor TPowerPointApplication.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPowerPointApplication.GetServerProperties: TPowerPointApplicationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TPowerPointApplication.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
   2001: if Assigned(FOnWindowSelectionChange) then
            FOnWindowSelectionChange(Self, Params[0] {VT_29:1}{const Selection});
   2002: if Assigned(FOnWindowBeforeRightClick) then
            FOnWindowBeforeRightClick(Self, Params[0] {VT_29:1}{const Selection}, Params[1] {VT_11:1}{var WordBool});
   2003: if Assigned(FOnWindowBeforeDoubleClick) then
            FOnWindowBeforeDoubleClick(Self, Params[0] {VT_29:1}{const Selection}, Params[1] {VT_11:1}{var WordBool});
   2004: if Assigned(FOnPresentationClose) then
            FOnPresentationClose(Self, Params[0] {VT_29:1}{const PowerPointPresentation});
   2005: if Assigned(FOnPresentationSave) then
            FOnPresentationSave(Self, Params[0] {VT_29:1}{const PowerPointPresentation});
   2006: if Assigned(FOnPresentationOpen) then
            FOnPresentationOpen(Self, Params[0] {VT_29:1}{const PowerPointPresentation});
   2007: if Assigned(FOnNewPresentation) then
            FOnNewPresentation(Self, Params[0] {VT_29:1}{const PowerPointPresentation});
   2008: if Assigned(FOnPresentationNewSlide) then
            FOnPresentationNewSlide(Self, Params[0] {VT_29:1}{const PowerPointSlide});
   2009: if Assigned(FOnWindowActivate) then
            FOnWindowActivate(Self, Params[0] {VT_29:1}{const PowerPointPresentation}, Params[1] {VT_29:1}{const DocumentWindow});
   2010: if Assigned(FOnWindowDeactivate) then
            FOnWindowDeactivate(Self, Params[0] {VT_29:1}{const PowerPointPresentation}, Params[1] {VT_29:1}{const DocumentWindow});
   2011: if Assigned(FOnSlideShowBegin) then
            FOnSlideShowBegin(Self, Params[0] {VT_29:1}{const SlideShowWindow});
   2012: if Assigned(FOnSlideShowNextBuild) then
            FOnSlideShowNextBuild(Self, Params[0] {VT_29:1}{const SlideShowWindow});
   2013: if Assigned(FOnSlideShowNextSlide) then
            FOnSlideShowNextSlide(Self, Params[0] {VT_29:1}{const SlideShowWindow});
   2014: if Assigned(FOnSlideShowEnd) then
            FOnSlideShowEnd(Self, Params[0] {VT_29:1}{const PowerPointPresentation});
   2015: if Assigned(FOnPresentationPrint) then
            FOnPresentationPrint(Self, Params[0] {VT_29:1}{const PowerPointPresentation});
  end; {case DispID}
end;

// StdProp:
function  TPowerPointApplication.Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Presentations;
begin
  Result := DefaultInterface.Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
begin
  Result := DefaultInterface.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PPDialogs;
begin
  Result := DefaultInterface.Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindow;
begin
  Result := DefaultInterface.Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointPresentation;
begin
  Result := DefaultInterface.Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindows;
begin
  Result := DefaultInterface.Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
begin
  Result := DefaultInterface.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplication.Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplication.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplication.Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
procedure TPowerPointApplication.Set_Caption {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Caption: WideString);
begin
  DefaultInterface.Set_Caption {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_8:0}Caption);
end;

// StdProp:
function  TPowerPointApplication.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
begin
  Result := DefaultInterface.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_FileSearch {Flags(1), (1/0) CC:0, INV:2, DBG:3}: FileSearch;
begin
  Result := DefaultInterface.Get_FileSearch {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_FileFind {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IFind;
begin
  Result := DefaultInterface.Get_FileFind {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplication.Get_Build {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Build {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplication.Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplication.Get_OperatingSystem {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_OperatingSystem {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplication.Get_ActivePrinter {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_ActivePrinter {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Integer
function  TPowerPointApplication.Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Integer;
begin
  Result := DefaultInterface.Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AddIns;
begin
  Result := DefaultInterface.Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:3}: VBE;
begin
  Result := DefaultInterface.Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
function  TPowerPointApplication.Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
procedure TPowerPointApplication.Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Left: Single);
begin
  DefaultInterface.Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_4:0}Left);
end;

// StdProp:Single
function  TPowerPointApplication.Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
procedure TPowerPointApplication.Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Top: Single);
begin
  DefaultInterface.Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_4:0}Top);
end;

// StdProp:Single
function  TPowerPointApplication.Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
procedure TPowerPointApplication.Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Width: Single);
begin
  DefaultInterface.Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_4:0}Width);
end;

// StdProp:Single
function  TPowerPointApplication.Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
procedure TPowerPointApplication.Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Height: Single);
begin
  DefaultInterface.Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_4:0}Height);
end;

// StdProp:TOleEnum
function  TPowerPointApplication.Get_WindowState {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpWindowState;
begin
  Result := DefaultInterface.Get_WindowState {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointApplication.Set_WindowState {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}WindowState: PpWindowState);
begin
  DefaultInterface.Set_WindowState {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}WindowState);
end;

// StdProp:TOleEnum
function  TPowerPointApplication.Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointApplication.Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Visible: MsoTriState);
begin
  DefaultInterface.Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}Visible);
end;

// StdProp:TOleEnum
function  TPowerPointApplication.Get_Active {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_Active {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
begin
  Result := DefaultInterface.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: COMAddIns;
begin
  Result := DefaultInterface.Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplication.Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_DefaultWebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DefaultWebOptions;
begin
  Result := DefaultInterface.Get_DefaultWebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: LanguageSettings;
begin
  Result := DefaultInterface.Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplication.Get_MsoDebugOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoDebugOptions;
begin
  Result := DefaultInterface.Get_MsoDebugOptions {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointApplication.Get_ShowWindowsInTaskbar {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_ShowWindowsInTaskbar {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointApplication.Set_ShowWindowsInTaskbar {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}ShowWindowsInTaskbar: MsoTriState);
begin
  DefaultInterface.Set_ShowWindowsInTaskbar {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}ShowWindowsInTaskbar);
end;

// StdProp:
function  TPowerPointApplication.Get_Marker {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Marker;
begin
  Result := DefaultInterface.Get_Marker {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointApplication.Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoFeatureInstall;
begin
  Result := DefaultInterface.Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointApplication.Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FeatureInstall: MsoFeatureInstall);
begin
  DefaultInterface.Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}FeatureInstall);
end;

procedure TPowerPointApplication.Help {Flags(1), (2/2) CC:0, INV:1, DBG:3}({VT_8:0}const HelpFile: WideString; 
                                                                           {VT_22:0}ContextID: SYSINT);
begin
  DefaultInterface.Help {Flags(1), (2/2) CC:0, INV:1, DBG:7}({VT_8:0}HelpFile, {VT_22:0}ContextID);
end;

procedure TPowerPointApplication.Quit {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.Quit {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

function  TPowerPointApplication.Run {Flags(1), (3/2) CC:0, INV:1, DBG:3}({VT_8:0}const MacroName: WideString; 
                                                                          {VT_27:1}var safeArrayOfParams: PSafeArray): OleVariant;
begin
  Result := DefaultInterface.Run {Flags(1), (3/2) CC:0, INV:1, DBG:7}({VT_8:0}MacroName, 
                                                                      {VT_27:1}safeArrayOfParams);
end;

function  TPowerPointApplication.FileDialog {Flags(1), (2/1) CC:0, INV:1, DBG:3}({VT_29:0}Type_: PpFileDialogType): FileDialog;
begin
  Result := DefaultInterface.FileDialog {Flags(1), (2/1) CC:0, INV:1, DBG:7}({VT_29:0}Type_);
end;

procedure TPowerPointApplication.Activate {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.Activate {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

function  TPowerPointApplication.GetOptionFlag {Flags(1), (3/2) CC:0, INV:1, DBG:3}({VT_3:0}Option: Integer; 
                                                                                    {VT_11:0}Persist: WordBool): WordBool;
begin
  Result := DefaultInterface.GetOptionFlag {Flags(1), (3/2) CC:0, INV:1, DBG:7}({VT_3:0}Option, 
                                                                                {VT_11:0}Persist);
end;

procedure TPowerPointApplication.SetOptionFlag {Flags(1), (3/3) CC:0, INV:1, DBG:3}({VT_3:0}Option: Integer; 
                                                                                    {VT_11:0}State: WordBool; 
                                                                                    {VT_11:0}Persist: WordBool);
begin
  DefaultInterface.SetOptionFlag {Flags(1), (3/3) CC:0, INV:1, DBG:7}({VT_3:0}Option, 
                                                                      {VT_11:0}State, 
                                                                      {VT_11:0}Persist);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPowerPointApplicationProperties.Create(AServer: TPowerPointApplication);
begin
  inherited Create;
  FServer := AServer;
end;

function TPowerPointApplicationProperties.GetDefaultInterface: _Application;
begin
  Result := FServer.DefaultInterface;
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Presentations;
begin
  Result := DefaultInterface.Get_Presentations {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindows;
begin
  Result := DefaultInterface.Get_Windows {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PPDialogs;
begin
  Result := DefaultInterface.Get_Dialogs {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DocumentWindow;
begin
  Result := DefaultInterface.Get_ActiveWindow {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointPresentation;
begin
  Result := DefaultInterface.Get_ActivePresentation {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:3}: SlideShowWindows;
begin
  Result := DefaultInterface.Get_SlideShowWindows {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:3}: CommandBars;
begin
  Result := DefaultInterface.Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplicationProperties.Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Path {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplicationProperties.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplicationProperties.Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
procedure TPowerPointApplicationProperties.Set_Caption {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Caption: WideString);
begin
  DefaultInterface.Set_Caption {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_8:0}Caption);
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
begin
  Result := DefaultInterface.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_FileSearch {Flags(1), (1/0) CC:0, INV:2, DBG:3}: FileSearch;
begin
  Result := DefaultInterface.Get_FileSearch {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_FileFind {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IFind;
begin
  Result := DefaultInterface.Get_FileFind {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplicationProperties.Get_Build {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Build {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplicationProperties.Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplicationProperties.Get_OperatingSystem {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_OperatingSystem {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplicationProperties.Get_ActivePrinter {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_ActivePrinter {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Integer
function  TPowerPointApplicationProperties.Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Integer;
begin
  Result := DefaultInterface.Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AddIns;
begin
  Result := DefaultInterface.Get_AddIns {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:3}: VBE;
begin
  Result := DefaultInterface.Get_VBE {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
function  TPowerPointApplicationProperties.Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
procedure TPowerPointApplicationProperties.Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Left: Single);
begin
  DefaultInterface.Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_4:0}Left);
end;

// StdProp:Single
function  TPowerPointApplicationProperties.Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
procedure TPowerPointApplicationProperties.Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Top: Single);
begin
  DefaultInterface.Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_4:0}Top);
end;

// StdProp:Single
function  TPowerPointApplicationProperties.Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
procedure TPowerPointApplicationProperties.Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Width: Single);
begin
  DefaultInterface.Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_4:0}Width);
end;

// StdProp:Single
function  TPowerPointApplicationProperties.Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
procedure TPowerPointApplicationProperties.Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_4:0}Height: Single);
begin
  DefaultInterface.Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_4:0}Height);
end;

// StdProp:TOleEnum
function  TPowerPointApplicationProperties.Get_WindowState {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PpWindowState;
begin
  Result := DefaultInterface.Get_WindowState {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointApplicationProperties.Set_WindowState {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}WindowState: PpWindowState);
begin
  DefaultInterface.Set_WindowState {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}WindowState);
end;

// StdProp:TOleEnum
function  TPowerPointApplicationProperties.Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointApplicationProperties.Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}Visible: MsoTriState);
begin
  DefaultInterface.Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}Visible);
end;

// StdProp:TOleEnum
function  TPowerPointApplicationProperties.Get_Active {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_Active {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
begin
  Result := DefaultInterface.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: COMAddIns;
begin
  Result := DefaultInterface.Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TPowerPointApplicationProperties.Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_DefaultWebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: DefaultWebOptions;
begin
  Result := DefaultInterface.Get_DefaultWebOptions {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: LanguageSettings;
begin
  Result := DefaultInterface.Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_MsoDebugOptions {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoDebugOptions;
begin
  Result := DefaultInterface.Get_MsoDebugOptions {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointApplicationProperties.Get_ShowWindowsInTaskbar {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoTriState;
begin
  Result := DefaultInterface.Get_ShowWindowsInTaskbar {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointApplicationProperties.Set_ShowWindowsInTaskbar {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}ShowWindowsInTaskbar: MsoTriState);
begin
  DefaultInterface.Set_ShowWindowsInTaskbar {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}ShowWindowsInTaskbar);
end;

// StdProp:
function  TPowerPointApplicationProperties.Get_Marker {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Marker;
begin
  Result := DefaultInterface.Get_Marker {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TPowerPointApplicationProperties.Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoFeatureInstall;
begin
  Result := DefaultInterface.Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TPowerPointApplicationProperties.Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FeatureInstall: MsoFeatureInstall);
begin
  DefaultInterface.Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}FeatureInstall);
end;

{$ENDIF}

class function CoMaster.Create: _Master;
begin
  Result := CreateComObject(CLASS_Master) as _Master;
end;

class function CoMaster.CreateRemote(const MachineName: string): _Master;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Master) as _Master;
end;

procedure TMaster.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{91493447-5A91-11CF-8700-00AA0060263B}';
    IntfIID:   '{9149346C-5A91-11CF-8700-00AA0060263B}';
    EventIID:  '{914934D2-5A91-11CF-8700-00AA0060263B}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMaster.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _Master;
  end;
end;

procedure TMaster.ConnectTo(svrIntf: _Master);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TMaster.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TMaster.GetDefaultInterface: _Master;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMaster.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMasterProperties.Create(Self);
{$ENDIF}
end;

destructor TMaster.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMaster.GetServerProperties: TMasterProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TMaster.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
  end; {case DispID}
end;

// StdProp:
function  TMaster.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
begin
  Result := DefaultInterface.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TMaster.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMaster.Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shapes;
begin
  Result := DefaultInterface.Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMaster.Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HeadersFooters;
begin
  Result := DefaultInterface.Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMaster.Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorScheme;
begin
  Result := DefaultInterface.Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
procedure TMaster.Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:1}const ColorScheme: ColorScheme);
begin
  DefaultInterface.Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:1}ColorScheme);
end;

// StdProp:
function  TMaster.Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ShapeRange;
begin
  Result := DefaultInterface.Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TMaster.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
procedure TMaster.Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Name: WideString);
begin
  DefaultInterface.Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_8:0}Name);
end;

// StdProp:Single
function  TMaster.Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
function  TMaster.Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMaster.Get_TextStyles {Flags(1), (1/0) CC:0, INV:2, DBG:3}: TextStyles;
begin
  Result := DefaultInterface.Get_TextStyles {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMaster.Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Hyperlinks;
begin
  Result := DefaultInterface.Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMaster.Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Scripts;
begin
  Result := DefaultInterface.Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

procedure TMaster.Delete {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.Delete {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMasterProperties.Create(AServer: TMaster);
begin
  inherited Create;
  FServer := AServer;
end;

function TMasterProperties.GetDefaultInterface: _Master;
begin
  Result := FServer.DefaultInterface;
end;

// StdProp:
function  TMasterProperties.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: PowerPointApplication;
begin
  Result := DefaultInterface.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TMasterProperties.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMasterProperties.Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Shapes;
begin
  Result := DefaultInterface.Get_Shapes {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMasterProperties.Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:3}: HeadersFooters;
begin
  Result := DefaultInterface.Get_HeadersFooters {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMasterProperties.Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ColorScheme;
begin
  Result := DefaultInterface.Get_ColorScheme {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
procedure TMasterProperties.Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:1}const ColorScheme: ColorScheme);
begin
  DefaultInterface.Set_ColorScheme {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:1}ColorScheme);
end;

// StdProp:
function  TMasterProperties.Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:3}: ShapeRange;
begin
  Result := DefaultInterface.Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TMasterProperties.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
procedure TMasterProperties.Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_8:0}const Name: WideString);
begin
  DefaultInterface.Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_8:0}Name);
end;

// StdProp:Single
function  TMasterProperties.Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:Single
function  TMasterProperties.Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Single;
begin
  Result := DefaultInterface.Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMasterProperties.Get_TextStyles {Flags(1), (1/0) CC:0, INV:2, DBG:3}: TextStyles;
begin
  Result := DefaultInterface.Get_TextStyles {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMasterProperties.Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Hyperlinks;
begin
  Result := DefaultInterface.Get_Hyperlinks {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TMasterProperties.Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Scripts;
begin
  Result := DefaultInterface.Get_Scripts {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents('Servers',[TPowerPointGlobal, TPowerPointSlide, TPowerPointPresentation, TPowerPointApplication, 
    TMaster]);
end;

end.
