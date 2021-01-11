unit Office2000;

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
// Type Lib: D:\MSOF2K\Office\MSO9.DLL (2)
// IID\LCID: {2DF8D04C-5BFA-101B-BDE5-00AA0044DE52}\0
// Helpfile: D:\MSOF2K\Office\vbaoff9.chm
// DepndLst: 
//   (1) v2.0 stdole, (D:\WINNT\System32\stdole2.tlb)
// Parent TypeLibrary:
//   (0) v9.0 Access, (d:\rampage\typelib\typelibraries\msacc9.olb)
// Errors:
//   Hint: Parameter 'Type' of _CommandBars.FindControl changed to 'Type_'
//   Hint: Parameter 'Type' of _CommandBars.FindControls changed to 'Type_'
//   Hint: Parameter 'Type' of CommandBar.FindControl changed to 'Type_'
//   Hint: Member 'Type' of 'CommandBar' changed to 'Type_'
//   Hint: Parameter 'Type' of CommandBarControls.Add changed to 'Type_'
//   Hint: Member 'Type' of 'CommandBarControl' changed to 'Type_'
//   Hint: Member 'Type' of 'CalloutFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of CalloutFormat.Type changed to 'Type_'
//   Hint: Parameter 'Type' of CalloutFormat.Type changed to 'Type_'
//   Hint: Member 'Type' of 'ColorFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of ColorFormat.Type changed to 'Type_'
//   Hint: Member 'Type' of 'ConnectorFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of ConnectorFormat.Type changed to 'Type_'
//   Hint: Parameter 'Type' of ConnectorFormat.Type changed to 'Type_'
//   Hint: Member 'Type' of 'FillFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of FillFormat.Type changed to 'Type_'
//   Hint: Member 'Type' of 'ShadowFormat' changed to 'Type_'
//   Hint: Parameter 'Type' of ShadowFormat.Type changed to 'Type_'
//   Hint: Parameter 'Type' of ShadowFormat.Type changed to 'Type_'
//   Hint: Parameter 'Object' of Script.Shape changed to 'Object_'
//   Hint: Member 'Type' of 'Shape' changed to 'Type_'
//   Hint: Parameter 'Type' of Shape.Type changed to 'Type_'
//   Hint: Member 'Type' of 'ShapeRange' changed to 'Type_'
//   Hint: Parameter 'Type' of ShapeRange.Type changed to 'Type_'
//   Hint: Parameter 'Type' of Shapes.AddCallout changed to 'Type_'
//   Hint: Parameter 'Type' of Shapes.AddConnector changed to 'Type_'
//   Hint: Parameter 'Label' of Shapes.AddLabel changed to 'Label_'
//   Hint: Parameter 'Type' of Shapes.AddShape changed to 'Type_'
//   Hint: Member 'Private' of 'Balloon' changed to 'Private_'
//   Hint: Parameter 'On' of Assistant.StartWizard changed to 'On_'
//   Hint: Member 'On' of 'Assistant' changed to 'On_'
//   Hint: Member 'Type' of 'DocumentProperty' changed to 'Type_'
//   Hint: Parameter 'Type' of DocumentProperties.Add changed to 'Type_'
//   Hint: Member 'Object' of 'COMAddIn' changed to 'Object_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, OleCtrls, StdVCL;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  OfficeMajorVersion = 2;
  OfficeMinorVersion = 1;

  LIBID_Office: TGUID = '{2DF8D04C-5BFA-101B-BDE5-00AA0044DE52}';

  IID_IAccessible: TGUID = '{618736E0-3C3D-11CF-810C-00AA00389B71}';
  IID__IMsoDispObj: TGUID = '{000C0300-0000-0000-C000-000000000046}';
  IID__IMsoOleAccDispObj: TGUID = '{000C0301-0000-0000-C000-000000000046}';
  IID__CommandBars: TGUID = '{000C0302-0000-0000-C000-000000000046}';
  IID_CommandBar: TGUID = '{000C0304-0000-0000-C000-000000000046}';
  IID_CommandBarControls: TGUID = '{000C0306-0000-0000-C000-000000000046}';
  IID_CommandBarControl: TGUID = '{000C0308-0000-0000-C000-000000000046}';
  IID__CommandBarButton: TGUID = '{000C030E-0000-0000-C000-000000000046}';
  IID_CommandBarPopup: TGUID = '{000C030A-0000-0000-C000-000000000046}';
  IID__CommandBarComboBox: TGUID = '{000C030C-0000-0000-C000-000000000046}';
  IID__CommandBarActiveX: TGUID = '{000C030D-0000-0000-C000-000000000046}';
  IID_Adjustments: TGUID = '{000C0310-0000-0000-C000-000000000046}';
  IID_CalloutFormat: TGUID = '{000C0311-0000-0000-C000-000000000046}';
  IID_ColorFormat: TGUID = '{000C0312-0000-0000-C000-000000000046}';
  IID_ConnectorFormat: TGUID = '{000C0313-0000-0000-C000-000000000046}';
  IID_FillFormat: TGUID = '{000C0314-0000-0000-C000-000000000046}';
  IID_FreeformBuilder: TGUID = '{000C0315-0000-0000-C000-000000000046}';
  IID_GroupShapes: TGUID = '{000C0316-0000-0000-C000-000000000046}';
  IID_LineFormat: TGUID = '{000C0317-0000-0000-C000-000000000046}';
  IID_ShapeNode: TGUID = '{000C0318-0000-0000-C000-000000000046}';
  IID_ShapeNodes: TGUID = '{000C0319-0000-0000-C000-000000000046}';
  IID_PictureFormat: TGUID = '{000C031A-0000-0000-C000-000000000046}';
  IID_ShadowFormat: TGUID = '{000C031B-0000-0000-C000-000000000046}';
  IID_Script: TGUID = '{000C0341-0000-0000-C000-000000000046}';
  IID_Scripts: TGUID = '{000C0340-0000-0000-C000-000000000046}';
  IID_Shape: TGUID = '{000C031C-0000-0000-C000-000000000046}';
  IID_ShapeRange: TGUID = '{000C031D-0000-0000-C000-000000000046}';
  IID_Shapes: TGUID = '{000C031E-0000-0000-C000-000000000046}';
  IID_TextEffectFormat: TGUID = '{000C031F-0000-0000-C000-000000000046}';
  IID_TextFrame: TGUID = '{000C0320-0000-0000-C000-000000000046}';
  IID_ThreeDFormat: TGUID = '{000C0321-0000-0000-C000-000000000046}';
  IID_IMsoDispCagNotifySink: TGUID = '{000C0359-0000-0000-C000-000000000046}';
  IID_Balloon: TGUID = '{000C0324-0000-0000-C000-000000000046}';
  IID_BalloonCheckboxes: TGUID = '{000C0326-0000-0000-C000-000000000046}';
  IID_BalloonCheckbox: TGUID = '{000C0328-0000-0000-C000-000000000046}';
  IID_BalloonLabels: TGUID = '{000C032E-0000-0000-C000-000000000046}';
  IID_BalloonLabel: TGUID = '{000C0330-0000-0000-C000-000000000046}';
  IID_AnswerWizardFiles: TGUID = '{000C0361-0000-0000-C000-000000000046}';
  IID_AnswerWizard: TGUID = '{000C0360-0000-0000-C000-000000000046}';
  IID_Assistant: TGUID = '{000C0322-0000-0000-C000-000000000046}';
  IID_DocumentProperty: TGUID = '{2DF8D04E-5BFA-101B-BDE5-00AA0044DE52}';
  IID_DocumentProperties: TGUID = '{2DF8D04D-5BFA-101B-BDE5-00AA0044DE52}';
  IID_IFoundFiles: TGUID = '{000C0338-0000-0000-C000-000000000046}';
  IID_IFind: TGUID = '{000C0337-0000-0000-C000-000000000046}';
  IID_FoundFiles: TGUID = '{000C0331-0000-0000-C000-000000000046}';
  IID_PropertyTest: TGUID = '{000C0333-0000-0000-C000-000000000046}';
  IID_PropertyTests: TGUID = '{000C0334-0000-0000-C000-000000000046}';
  IID_FileSearch: TGUID = '{000C0332-0000-0000-C000-000000000046}';
  IID_COMAddIn: TGUID = '{000C033A-0000-0000-C000-000000000046}';
  IID_COMAddIns: TGUID = '{000C0339-0000-0000-C000-000000000046}';
  IID_LanguageSettings: TGUID = '{000C0353-0000-0000-C000-000000000046}';
  IID_ICommandBarsEvents: TGUID = '{55F88892-7708-11D1-ACEB-006008961DA5}';
  DIID__CommandBarsEvents: TGUID = '{000C0352-0000-0000-C000-000000000046}';
  CLASS_CommandBars: TGUID = '{55F88893-7708-11D1-ACEB-006008961DA5}';
  IID_ICommandBarComboBoxEvents: TGUID = '{55F88896-7708-11D1-ACEB-006008961DA5}';
  DIID__CommandBarComboBoxEvents: TGUID = '{000C0354-0000-0000-C000-000000000046}';
  CLASS_CommandBarComboBox: TGUID = '{55F88897-7708-11D1-ACEB-006008961DA5}';
  IID_ICommandBarButtonEvents: TGUID = '{55F88890-7708-11D1-ACEB-006008961DA5}';
  DIID__CommandBarButtonEvents: TGUID = '{000C0351-0000-0000-C000-000000000046}';
  CLASS_CommandBarButton: TGUID = '{55F88891-7708-11D1-ACEB-006008961DA5}';
  IID_WebPageFont: TGUID = '{000C0913-0000-0000-C000-000000000046}';
  IID_WebPageFonts: TGUID = '{000C0914-0000-0000-C000-000000000046}';
  IID_HTMLProjectItem: TGUID = '{000C0358-0000-0000-C000-000000000046}';
  IID_HTMLProjectItems: TGUID = '{000C0357-0000-0000-C000-000000000046}';
  IID_HTMLProject: TGUID = '{000C0356-0000-0000-C000-000000000046}';
  IID_MsoDebugOptions: TGUID = '{000C035A-0000-0000-C000-000000000046}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum MsoLineDashStyle
type
  MsoLineDashStyle = TOleEnum;
const
  msoLineDashStyleMixed = $FFFFFFFE;
  msoLineSolid = $00000001;
  msoLineSquareDot = $00000002;
  msoLineRoundDot = $00000003;
  msoLineDash = $00000004;
  msoLineDashDot = $00000005;
  msoLineDashDotDot = $00000006;
  msoLineLongDash = $00000007;
  msoLineLongDashDot = $00000008;

// Constants for enum MsoLineStyle
type
  MsoLineStyle = TOleEnum;
const
  msoLineStyleMixed = $FFFFFFFE;
  msoLineSingle = $00000001;
  msoLineThinThin = $00000002;
  msoLineThinThick = $00000003;
  msoLineThickThin = $00000004;
  msoLineThickBetweenThin = $00000005;

// Constants for enum MsoArrowheadStyle
type
  MsoArrowheadStyle = TOleEnum;
const
  msoArrowheadStyleMixed = $FFFFFFFE;
  msoArrowheadNone = $00000001;
  msoArrowheadTriangle = $00000002;
  msoArrowheadOpen = $00000003;
  msoArrowheadStealth = $00000004;
  msoArrowheadDiamond = $00000005;
  msoArrowheadOval = $00000006;

// Constants for enum MsoArrowheadWidth
type
  MsoArrowheadWidth = TOleEnum;
const
  msoArrowheadWidthMixed = $FFFFFFFE;
  msoArrowheadNarrow = $00000001;
  msoArrowheadWidthMedium = $00000002;
  msoArrowheadWide = $00000003;

// Constants for enum MsoArrowheadLength
type
  MsoArrowheadLength = TOleEnum;
const
  msoArrowheadLengthMixed = $FFFFFFFE;
  msoArrowheadShort = $00000001;
  msoArrowheadLengthMedium = $00000002;
  msoArrowheadLong = $00000003;

// Constants for enum MsoFillType
type
  MsoFillType = TOleEnum;
const
  msoFillMixed = $FFFFFFFE;
  msoFillSolid = $00000001;
  msoFillPatterned = $00000002;
  msoFillGradient = $00000003;
  msoFillTextured = $00000004;
  msoFillBackground = $00000005;
  msoFillPicture = $00000006;

// Constants for enum MsoGradientStyle
type
  MsoGradientStyle = TOleEnum;
const
  msoGradientMixed = $FFFFFFFE;
  msoGradientHorizontal = $00000001;
  msoGradientVertical = $00000002;
  msoGradientDiagonalUp = $00000003;
  msoGradientDiagonalDown = $00000004;
  msoGradientFromCorner = $00000005;
  msoGradientFromTitle = $00000006;
  msoGradientFromCenter = $00000007;

// Constants for enum MsoGradientColorType
type
  MsoGradientColorType = TOleEnum;
const
  msoGradientColorMixed = $FFFFFFFE;
  msoGradientOneColor = $00000001;
  msoGradientTwoColors = $00000002;
  msoGradientPresetColors = $00000003;

// Constants for enum MsoTextureType
type
  MsoTextureType = TOleEnum;
const
  msoTextureTypeMixed = $FFFFFFFE;
  msoTexturePreset = $00000001;
  msoTextureUserDefined = $00000002;

// Constants for enum MsoPresetTexture
type
  MsoPresetTexture = TOleEnum;
const
  msoPresetTextureMixed = $FFFFFFFE;
  msoTexturePapyrus = $00000001;
  msoTextureCanvas = $00000002;
  msoTextureDenim = $00000003;
  msoTextureWovenMat = $00000004;
  msoTextureWaterDroplets = $00000005;
  msoTexturePaperBag = $00000006;
  msoTextureFishFossil = $00000007;
  msoTextureSand = $00000008;
  msoTextureGreenMarble = $00000009;
  msoTextureWhiteMarble = $0000000A;
  msoTextureBrownMarble = $0000000B;
  msoTextureGranite = $0000000C;
  msoTextureNewsprint = $0000000D;
  msoTextureRecycledPaper = $0000000E;
  msoTextureParchment = $0000000F;
  msoTextureStationery = $00000010;
  msoTextureBlueTissuePaper = $00000011;
  msoTexturePinkTissuePaper = $00000012;
  msoTexturePurpleMesh = $00000013;
  msoTextureBouquet = $00000014;
  msoTextureCork = $00000015;
  msoTextureWalnut = $00000016;
  msoTextureOak = $00000017;
  msoTextureMediumWood = $00000018;

// Constants for enum MsoPatternType
type
  MsoPatternType = TOleEnum;
const
  msoPatternMixed = $FFFFFFFE;
  msoPattern5Percent = $00000001;
  msoPattern10Percent = $00000002;
  msoPattern20Percent = $00000003;
  msoPattern25Percent = $00000004;
  msoPattern30Percent = $00000005;
  msoPattern40Percent = $00000006;
  msoPattern50Percent = $00000007;
  msoPattern60Percent = $00000008;
  msoPattern70Percent = $00000009;
  msoPattern75Percent = $0000000A;
  msoPattern80Percent = $0000000B;
  msoPattern90Percent = $0000000C;
  msoPatternDarkHorizontal = $0000000D;
  msoPatternDarkVertical = $0000000E;
  msoPatternDarkDownwardDiagonal = $0000000F;
  msoPatternDarkUpwardDiagonal = $00000010;
  msoPatternSmallCheckerBoard = $00000011;
  msoPatternTrellis = $00000012;
  msoPatternLightHorizontal = $00000013;
  msoPatternLightVertical = $00000014;
  msoPatternLightDownwardDiagonal = $00000015;
  msoPatternLightUpwardDiagonal = $00000016;
  msoPatternSmallGrid = $00000017;
  msoPatternDottedDiamond = $00000018;
  msoPatternWideDownwardDiagonal = $00000019;
  msoPatternWideUpwardDiagonal = $0000001A;
  msoPatternDashedUpwardDiagonal = $0000001B;
  msoPatternDashedDownwardDiagonal = $0000001C;
  msoPatternNarrowVertical = $0000001D;
  msoPatternNarrowHorizontal = $0000001E;
  msoPatternDashedVertical = $0000001F;
  msoPatternDashedHorizontal = $00000020;
  msoPatternLargeConfetti = $00000021;
  msoPatternLargeGrid = $00000022;
  msoPatternHorizontalBrick = $00000023;
  msoPatternLargeCheckerBoard = $00000024;
  msoPatternSmallConfetti = $00000025;
  msoPatternZigZag = $00000026;
  msoPatternSolidDiamond = $00000027;
  msoPatternDiagonalBrick = $00000028;
  msoPatternOutlinedDiamond = $00000029;
  msoPatternPlaid = $0000002A;
  msoPatternSphere = $0000002B;
  msoPatternWeave = $0000002C;
  msoPatternDottedGrid = $0000002D;
  msoPatternDivot = $0000002E;
  msoPatternShingle = $0000002F;
  msoPatternWave = $00000030;

// Constants for enum MsoPresetGradientType
type
  MsoPresetGradientType = TOleEnum;
const
  msoPresetGradientMixed = $FFFFFFFE;
  msoGradientEarlySunset = $00000001;
  msoGradientLateSunset = $00000002;
  msoGradientNightfall = $00000003;
  msoGradientDaybreak = $00000004;
  msoGradientHorizon = $00000005;
  msoGradientDesert = $00000006;
  msoGradientOcean = $00000007;
  msoGradientCalmWater = $00000008;
  msoGradientFire = $00000009;
  msoGradientFog = $0000000A;
  msoGradientMoss = $0000000B;
  msoGradientPeacock = $0000000C;
  msoGradientWheat = $0000000D;
  msoGradientParchment = $0000000E;
  msoGradientMahogany = $0000000F;
  msoGradientRainbow = $00000010;
  msoGradientRainbowII = $00000011;
  msoGradientGold = $00000012;
  msoGradientGoldII = $00000013;
  msoGradientBrass = $00000014;
  msoGradientChrome = $00000015;
  msoGradientChromeII = $00000016;
  msoGradientSilver = $00000017;
  msoGradientSapphire = $00000018;

// Constants for enum MsoShadowType
type
  MsoShadowType = TOleEnum;
const
  msoShadowMixed = $FFFFFFFE;
  msoShadow1 = $00000001;
  msoShadow2 = $00000002;
  msoShadow3 = $00000003;
  msoShadow4 = $00000004;
  msoShadow5 = $00000005;
  msoShadow6 = $00000006;
  msoShadow7 = $00000007;
  msoShadow8 = $00000008;
  msoShadow9 = $00000009;
  msoShadow10 = $0000000A;
  msoShadow11 = $0000000B;
  msoShadow12 = $0000000C;
  msoShadow13 = $0000000D;
  msoShadow14 = $0000000E;
  msoShadow15 = $0000000F;
  msoShadow16 = $00000010;
  msoShadow17 = $00000011;
  msoShadow18 = $00000012;
  msoShadow19 = $00000013;
  msoShadow20 = $00000014;

// Constants for enum MsoPresetTextEffect
type
  MsoPresetTextEffect = TOleEnum;
const
  msoTextEffectMixed = $FFFFFFFE;
  msoTextEffect1 = $00000000;
  msoTextEffect2 = $00000001;
  msoTextEffect3 = $00000002;
  msoTextEffect4 = $00000003;
  msoTextEffect5 = $00000004;
  msoTextEffect6 = $00000005;
  msoTextEffect7 = $00000006;
  msoTextEffect8 = $00000007;
  msoTextEffect9 = $00000008;
  msoTextEffect10 = $00000009;
  msoTextEffect11 = $0000000A;
  msoTextEffect12 = $0000000B;
  msoTextEffect13 = $0000000C;
  msoTextEffect14 = $0000000D;
  msoTextEffect15 = $0000000E;
  msoTextEffect16 = $0000000F;
  msoTextEffect17 = $00000010;
  msoTextEffect18 = $00000011;
  msoTextEffect19 = $00000012;
  msoTextEffect20 = $00000013;
  msoTextEffect21 = $00000014;
  msoTextEffect22 = $00000015;
  msoTextEffect23 = $00000016;
  msoTextEffect24 = $00000017;
  msoTextEffect25 = $00000018;
  msoTextEffect26 = $00000019;
  msoTextEffect27 = $0000001A;
  msoTextEffect28 = $0000001B;
  msoTextEffect29 = $0000001C;
  msoTextEffect30 = $0000001D;

// Constants for enum MsoPresetTextEffectShape
type
  MsoPresetTextEffectShape = TOleEnum;
const
  msoTextEffectShapeMixed = $FFFFFFFE;
  msoTextEffectShapePlainText = $00000001;
  msoTextEffectShapeStop = $00000002;
  msoTextEffectShapeTriangleUp = $00000003;
  msoTextEffectShapeTriangleDown = $00000004;
  msoTextEffectShapeChevronUp = $00000005;
  msoTextEffectShapeChevronDown = $00000006;
  msoTextEffectShapeRingInside = $00000007;
  msoTextEffectShapeRingOutside = $00000008;
  msoTextEffectShapeArchUpCurve = $00000009;
  msoTextEffectShapeArchDownCurve = $0000000A;
  msoTextEffectShapeCircleCurve = $0000000B;
  msoTextEffectShapeButtonCurve = $0000000C;
  msoTextEffectShapeArchUpPour = $0000000D;
  msoTextEffectShapeArchDownPour = $0000000E;
  msoTextEffectShapeCirclePour = $0000000F;
  msoTextEffectShapeButtonPour = $00000010;
  msoTextEffectShapeCurveUp = $00000011;
  msoTextEffectShapeCurveDown = $00000012;
  msoTextEffectShapeCanUp = $00000013;
  msoTextEffectShapeCanDown = $00000014;
  msoTextEffectShapeWave1 = $00000015;
  msoTextEffectShapeWave2 = $00000016;
  msoTextEffectShapeDoubleWave1 = $00000017;
  msoTextEffectShapeDoubleWave2 = $00000018;
  msoTextEffectShapeInflate = $00000019;
  msoTextEffectShapeDeflate = $0000001A;
  msoTextEffectShapeInflateBottom = $0000001B;
  msoTextEffectShapeDeflateBottom = $0000001C;
  msoTextEffectShapeInflateTop = $0000001D;
  msoTextEffectShapeDeflateTop = $0000001E;
  msoTextEffectShapeDeflateInflate = $0000001F;
  msoTextEffectShapeDeflateInflateDeflate = $00000020;
  msoTextEffectShapeFadeRight = $00000021;
  msoTextEffectShapeFadeLeft = $00000022;
  msoTextEffectShapeFadeUp = $00000023;
  msoTextEffectShapeFadeDown = $00000024;
  msoTextEffectShapeSlantUp = $00000025;
  msoTextEffectShapeSlantDown = $00000026;
  msoTextEffectShapeCascadeUp = $00000027;
  msoTextEffectShapeCascadeDown = $00000028;

// Constants for enum MsoTextEffectAlignment
type
  MsoTextEffectAlignment = TOleEnum;
const
  msoTextEffectAlignmentMixed = $FFFFFFFE;
  msoTextEffectAlignmentLeft = $00000001;
  msoTextEffectAlignmentCentered = $00000002;
  msoTextEffectAlignmentRight = $00000003;
  msoTextEffectAlignmentLetterJustify = $00000004;
  msoTextEffectAlignmentWordJustify = $00000005;
  msoTextEffectAlignmentStretchJustify = $00000006;

// Constants for enum MsoPresetLightingDirection
type
  MsoPresetLightingDirection = TOleEnum;
const
  msoPresetLightingDirectionMixed = $FFFFFFFE;
  msoLightingTopLeft = $00000001;
  msoLightingTop = $00000002;
  msoLightingTopRight = $00000003;
  msoLightingLeft = $00000004;
  msoLightingNone = $00000005;
  msoLightingRight = $00000006;
  msoLightingBottomLeft = $00000007;
  msoLightingBottom = $00000008;
  msoLightingBottomRight = $00000009;

// Constants for enum MsoPresetLightingSoftness
type
  MsoPresetLightingSoftness = TOleEnum;
const
  msoPresetLightingSoftnessMixed = $FFFFFFFE;
  msoLightingDim = $00000001;
  msoLightingNormal = $00000002;
  msoLightingBright = $00000003;

// Constants for enum MsoPresetMaterial
type
  MsoPresetMaterial = TOleEnum;
const
  msoPresetMaterialMixed = $FFFFFFFE;
  msoMaterialMatte = $00000001;
  msoMaterialPlastic = $00000002;
  msoMaterialMetal = $00000003;
  msoMaterialWireFrame = $00000004;

// Constants for enum MsoPresetExtrusionDirection
type
  MsoPresetExtrusionDirection = TOleEnum;
const
  msoPresetExtrusionDirectionMixed = $FFFFFFFE;
  msoExtrusionBottomRight = $00000001;
  msoExtrusionBottom = $00000002;
  msoExtrusionBottomLeft = $00000003;
  msoExtrusionRight = $00000004;
  msoExtrusionNone = $00000005;
  msoExtrusionLeft = $00000006;
  msoExtrusionTopRight = $00000007;
  msoExtrusionTop = $00000008;
  msoExtrusionTopLeft = $00000009;

// Constants for enum MsoPresetThreeDFormat
type
  MsoPresetThreeDFormat = TOleEnum;
const
  msoPresetThreeDFormatMixed = $FFFFFFFE;
  msoThreeD1 = $00000001;
  msoThreeD2 = $00000002;
  msoThreeD3 = $00000003;
  msoThreeD4 = $00000004;
  msoThreeD5 = $00000005;
  msoThreeD6 = $00000006;
  msoThreeD7 = $00000007;
  msoThreeD8 = $00000008;
  msoThreeD9 = $00000009;
  msoThreeD10 = $0000000A;
  msoThreeD11 = $0000000B;
  msoThreeD12 = $0000000C;
  msoThreeD13 = $0000000D;
  msoThreeD14 = $0000000E;
  msoThreeD15 = $0000000F;
  msoThreeD16 = $00000010;
  msoThreeD17 = $00000011;
  msoThreeD18 = $00000012;
  msoThreeD19 = $00000013;
  msoThreeD20 = $00000014;

// Constants for enum MsoExtrusionColorType
type
  MsoExtrusionColorType = TOleEnum;
const
  msoExtrusionColorTypeMixed = $FFFFFFFE;
  msoExtrusionColorAutomatic = $00000001;
  msoExtrusionColorCustom = $00000002;

// Constants for enum MsoAlignCmd
type
  MsoAlignCmd = TOleEnum;
const
  msoAlignLefts = $00000000;
  msoAlignCenters = $00000001;
  msoAlignRights = $00000002;
  msoAlignTops = $00000003;
  msoAlignMiddles = $00000004;
  msoAlignBottoms = $00000005;

// Constants for enum MsoDistributeCmd
type
  MsoDistributeCmd = TOleEnum;
const
  msoDistributeHorizontally = $00000000;
  msoDistributeVertically = $00000001;

// Constants for enum MsoConnectorType
type
  MsoConnectorType = TOleEnum;
const
  msoConnectorTypeMixed = $FFFFFFFE;
  msoConnectorStraight = $00000001;
  msoConnectorElbow = $00000002;
  msoConnectorCurve = $00000003;

// Constants for enum MsoHorizontalAnchor
type
  MsoHorizontalAnchor = TOleEnum;
const
  msoHorizontalAnchorMixed = $FFFFFFFE;
  msoAnchorNone = $00000001;
  msoAnchorCenter = $00000002;

// Constants for enum MsoVerticalAnchor
type
  MsoVerticalAnchor = TOleEnum;
const
  msoVerticalAnchorMixed = $FFFFFFFE;
  msoAnchorTop = $00000001;
  msoAnchorTopBaseline = $00000002;
  msoAnchorMiddle = $00000003;
  msoAnchorBottom = $00000004;
  msoAnchorBottomBaseLine = $00000005;

// Constants for enum MsoOrientation
type
  MsoOrientation = TOleEnum;
const
  msoOrientationMixed = $FFFFFFFE;
  msoOrientationHorizontal = $00000001;
  msoOrientationVertical = $00000002;

// Constants for enum MsoZOrderCmd
type
  MsoZOrderCmd = TOleEnum;
const
  msoBringToFront = $00000000;
  msoSendToBack = $00000001;
  msoBringForward = $00000002;
  msoSendBackward = $00000003;
  msoBringInFrontOfText = $00000004;
  msoSendBehindText = $00000005;

// Constants for enum MsoSegmentType
type
  MsoSegmentType = TOleEnum;
const
  msoSegmentLine = $00000000;
  msoSegmentCurve = $00000001;

// Constants for enum MsoEditingType
type
  MsoEditingType = TOleEnum;
const
  msoEditingAuto = $00000000;
  msoEditingCorner = $00000001;
  msoEditingSmooth = $00000002;
  msoEditingSymmetric = $00000003;

// Constants for enum MsoAutoShapeType
type
  MsoAutoShapeType = TOleEnum;
const
  msoShapeMixed = $FFFFFFFE;
  msoShapeRectangle = $00000001;
  msoShapeParallelogram = $00000002;
  msoShapeTrapezoid = $00000003;
  msoShapeDiamond = $00000004;
  msoShapeRoundedRectangle = $00000005;
  msoShapeOctagon = $00000006;
  msoShapeIsoscelesTriangle = $00000007;
  msoShapeRightTriangle = $00000008;
  msoShapeOval = $00000009;
  msoShapeHexagon = $0000000A;
  msoShapeCross = $0000000B;
  msoShapeRegularPentagon = $0000000C;
  msoShapeCan = $0000000D;
  msoShapeCube = $0000000E;
  msoShapeBevel = $0000000F;
  msoShapeFoldedCorner = $00000010;
  msoShapeSmileyFace = $00000011;
  msoShapeDonut = $00000012;
  msoShapeNoSymbol = $00000013;
  msoShapeBlockArc = $00000014;
  msoShapeHeart = $00000015;
  msoShapeLightningBolt = $00000016;
  msoShapeSun = $00000017;
  msoShapeMoon = $00000018;
  msoShapeArc = $00000019;
  msoShapeDoubleBracket = $0000001A;
  msoShapeDoubleBrace = $0000001B;
  msoShapePlaque = $0000001C;
  msoShapeLeftBracket = $0000001D;
  msoShapeRightBracket = $0000001E;
  msoShapeLeftBrace = $0000001F;
  msoShapeRightBrace = $00000020;
  msoShapeRightArrow = $00000021;
  msoShapeLeftArrow = $00000022;
  msoShapeUpArrow = $00000023;
  msoShapeDownArrow = $00000024;
  msoShapeLeftRightArrow = $00000025;
  msoShapeUpDownArrow = $00000026;
  msoShapeQuadArrow = $00000027;
  msoShapeLeftRightUpArrow = $00000028;
  msoShapeBentArrow = $00000029;
  msoShapeUTurnArrow = $0000002A;
  msoShapeLeftUpArrow = $0000002B;
  msoShapeBentUpArrow = $0000002C;
  msoShapeCurvedRightArrow = $0000002D;
  msoShapeCurvedLeftArrow = $0000002E;
  msoShapeCurvedUpArrow = $0000002F;
  msoShapeCurvedDownArrow = $00000030;
  msoShapeStripedRightArrow = $00000031;
  msoShapeNotchedRightArrow = $00000032;
  msoShapePentagon = $00000033;
  msoShapeChevron = $00000034;
  msoShapeRightArrowCallout = $00000035;
  msoShapeLeftArrowCallout = $00000036;
  msoShapeUpArrowCallout = $00000037;
  msoShapeDownArrowCallout = $00000038;
  msoShapeLeftRightArrowCallout = $00000039;
  msoShapeUpDownArrowCallout = $0000003A;
  msoShapeQuadArrowCallout = $0000003B;
  msoShapeCircularArrow = $0000003C;
  msoShapeFlowchartProcess = $0000003D;
  msoShapeFlowchartAlternateProcess = $0000003E;
  msoShapeFlowchartDecision = $0000003F;
  msoShapeFlowchartData = $00000040;
  msoShapeFlowchartPredefinedProcess = $00000041;
  msoShapeFlowchartInternalStorage = $00000042;
  msoShapeFlowchartDocument = $00000043;
  msoShapeFlowchartMultidocument = $00000044;
  msoShapeFlowchartTerminator = $00000045;
  msoShapeFlowchartPreparation = $00000046;
  msoShapeFlowchartManualInput = $00000047;
  msoShapeFlowchartManualOperation = $00000048;
  msoShapeFlowchartConnector = $00000049;
  msoShapeFlowchartOffpageConnector = $0000004A;
  msoShapeFlowchartCard = $0000004B;
  msoShapeFlowchartPunchedTape = $0000004C;
  msoShapeFlowchartSummingJunction = $0000004D;
  msoShapeFlowchartOr = $0000004E;
  msoShapeFlowchartCollate = $0000004F;
  msoShapeFlowchartSort = $00000050;
  msoShapeFlowchartExtract = $00000051;
  msoShapeFlowchartMerge = $00000052;
  msoShapeFlowchartStoredData = $00000053;
  msoShapeFlowchartDelay = $00000054;
  msoShapeFlowchartSequentialAccessStorage = $00000055;
  msoShapeFlowchartMagneticDisk = $00000056;
  msoShapeFlowchartDirectAccessStorage = $00000057;
  msoShapeFlowchartDisplay = $00000058;
  msoShapeExplosion1 = $00000059;
  msoShapeExplosion2 = $0000005A;
  msoShape4pointStar = $0000005B;
  msoShape5pointStar = $0000005C;
  msoShape8pointStar = $0000005D;
  msoShape16pointStar = $0000005E;
  msoShape24pointStar = $0000005F;
  msoShape32pointStar = $00000060;
  msoShapeUpRibbon = $00000061;
  msoShapeDownRibbon = $00000062;
  msoShapeCurvedUpRibbon = $00000063;
  msoShapeCurvedDownRibbon = $00000064;
  msoShapeVerticalScroll = $00000065;
  msoShapeHorizontalScroll = $00000066;
  msoShapeWave = $00000067;
  msoShapeDoubleWave = $00000068;
  msoShapeRectangularCallout = $00000069;
  msoShapeRoundedRectangularCallout = $0000006A;
  msoShapeOvalCallout = $0000006B;
  msoShapeCloudCallout = $0000006C;
  msoShapeLineCallout1 = $0000006D;
  msoShapeLineCallout2 = $0000006E;
  msoShapeLineCallout3 = $0000006F;
  msoShapeLineCallout4 = $00000070;
  msoShapeLineCallout1AccentBar = $00000071;
  msoShapeLineCallout2AccentBar = $00000072;
  msoShapeLineCallout3AccentBar = $00000073;
  msoShapeLineCallout4AccentBar = $00000074;
  msoShapeLineCallout1NoBorder = $00000075;
  msoShapeLineCallout2NoBorder = $00000076;
  msoShapeLineCallout3NoBorder = $00000077;
  msoShapeLineCallout4NoBorder = $00000078;
  msoShapeLineCallout1BorderandAccentBar = $00000079;
  msoShapeLineCallout2BorderandAccentBar = $0000007A;
  msoShapeLineCallout3BorderandAccentBar = $0000007B;
  msoShapeLineCallout4BorderandAccentBar = $0000007C;
  msoShapeActionButtonCustom = $0000007D;
  msoShapeActionButtonHome = $0000007E;
  msoShapeActionButtonHelp = $0000007F;
  msoShapeActionButtonInformation = $00000080;
  msoShapeActionButtonBackorPrevious = $00000081;
  msoShapeActionButtonForwardorNext = $00000082;
  msoShapeActionButtonBeginning = $00000083;
  msoShapeActionButtonEnd = $00000084;
  msoShapeActionButtonReturn = $00000085;
  msoShapeActionButtonDocument = $00000086;
  msoShapeActionButtonSound = $00000087;
  msoShapeActionButtonMovie = $00000088;
  msoShapeBalloon = $00000089;
  msoShapeNotPrimitive = $0000008A;

// Constants for enum MsoShapeType
type
  MsoShapeType = TOleEnum;
const
  msoShapeTypeMixed = $FFFFFFFE;
  msoAutoShape = $00000001;
  msoCallout = $00000002;
  msoChart = $00000003;
  msoComment = $00000004;
  msoFreeform = $00000005;
  msoGroup = $00000006;
  msoEmbeddedOLEObject = $00000007;
  msoFormControl = $00000008;
  msoLine = $00000009;
  msoLinkedOLEObject = $0000000A;
  msoLinkedPicture = $0000000B;
  msoOLEControlObject = $0000000C;
  msoPicture = $0000000D;
  msoPlaceholder = $0000000E;
  msoTextEffect = $0000000F;
  msoMedia = $00000010;
  msoTextBox = $00000011;
  msoScriptAnchor = $00000012;
  msoTable = $00000013;

// Constants for enum MsoFlipCmd
type
  MsoFlipCmd = TOleEnum;
const
  msoFlipHorizontal = $00000000;
  msoFlipVertical = $00000001;

// Constants for enum MsoTriState
type
  MsoTriState = TOleEnum;
const
  msoTrue = $FFFFFFFF;
  msoFalse = $00000000;
  msoCTrue = $00000001;
  msoTriStateToggle = $FFFFFFFD;
  msoTriStateMixed = $FFFFFFFE;

// Constants for enum MsoColorType
type
  MsoColorType = TOleEnum;
const
  msoColorTypeMixed = $FFFFFFFE;
  msoColorTypeRGB = $00000001;
  msoColorTypeScheme = $00000002;

// Constants for enum MsoPictureColorType
type
  MsoPictureColorType = TOleEnum;
const
  msoPictureMixed = $FFFFFFFE;
  msoPictureAutomatic = $00000001;
  msoPictureGrayscale = $00000002;
  msoPictureBlackAndWhite = $00000003;
  msoPictureWatermark = $00000004;

// Constants for enum MsoCalloutAngleType
type
  MsoCalloutAngleType = TOleEnum;
const
  msoCalloutAngleMixed = $FFFFFFFE;
  msoCalloutAngleAutomatic = $00000001;
  msoCalloutAngle30 = $00000002;
  msoCalloutAngle45 = $00000003;
  msoCalloutAngle60 = $00000004;
  msoCalloutAngle90 = $00000005;

// Constants for enum MsoCalloutDropType
type
  MsoCalloutDropType = TOleEnum;
const
  msoCalloutDropMixed = $FFFFFFFE;
  msoCalloutDropCustom = $00000001;
  msoCalloutDropTop = $00000002;
  msoCalloutDropCenter = $00000003;
  msoCalloutDropBottom = $00000004;

// Constants for enum MsoCalloutType
type
  MsoCalloutType = TOleEnum;
const
  msoCalloutMixed = $FFFFFFFE;
  msoCalloutOne = $00000001;
  msoCalloutTwo = $00000002;
  msoCalloutThree = $00000003;
  msoCalloutFour = $00000004;

// Constants for enum MsoBlackWhiteMode
type
  MsoBlackWhiteMode = TOleEnum;
const
  msoBlackWhiteMixed = $FFFFFFFE;
  msoBlackWhiteAutomatic = $00000001;
  msoBlackWhiteGrayScale = $00000002;
  msoBlackWhiteLightGrayScale = $00000003;
  msoBlackWhiteInverseGrayScale = $00000004;
  msoBlackWhiteGrayOutline = $00000005;
  msoBlackWhiteBlackTextAndLine = $00000006;
  msoBlackWhiteHighContrast = $00000007;
  msoBlackWhiteBlack = $00000008;
  msoBlackWhiteWhite = $00000009;
  msoBlackWhiteDontShow = $0000000A;

// Constants for enum MsoMixedType
type
  MsoMixedType = TOleEnum;
const
  msoIntegerMixed = $00008000;
  msoSingleMixed = $80000000;

// Constants for enum MsoTextOrientation
type
  MsoTextOrientation = TOleEnum;
const
  msoTextOrientationMixed = $FFFFFFFE;
  msoTextOrientationHorizontal = $00000001;
  msoTextOrientationUpward = $00000002;
  msoTextOrientationDownward = $00000003;
  msoTextOrientationVerticalFarEast = $00000004;
  msoTextOrientationVertical = $00000005;
  msoTextOrientationHorizontalRotatedFarEast = $00000006;

// Constants for enum MsoScaleFrom
type
  MsoScaleFrom = TOleEnum;
const
  msoScaleFromTopLeft = $00000000;
  msoScaleFromMiddle = $00000001;
  msoScaleFromBottomRight = $00000002;

// Constants for enum MsoBarPosition
type
  MsoBarPosition = TOleEnum;
const
  msoBarLeft = $00000000;
  msoBarTop = $00000001;
  msoBarRight = $00000002;
  msoBarBottom = $00000003;
  msoBarFloating = $00000004;
  msoBarPopup = $00000005;
  msoBarMenuBar = $00000006;

// Constants for enum MsoBarProtection
type
  MsoBarProtection = TOleEnum;
const
  msoBarNoProtection = $00000000;
  msoBarNoCustomize = $00000001;
  msoBarNoResize = $00000002;
  msoBarNoMove = $00000004;
  msoBarNoChangeVisible = $00000008;
  msoBarNoChangeDock = $00000010;
  msoBarNoVerticalDock = $00000020;
  msoBarNoHorizontalDock = $00000040;

// Constants for enum MsoBarType
type
  MsoBarType = TOleEnum;
const
  msoBarTypeNormal = $00000000;
  msoBarTypeMenuBar = $00000001;
  msoBarTypePopup = $00000002;

// Constants for enum MsoControlType
type
  MsoControlType = TOleEnum;
const
  msoControlCustom = $00000000;
  msoControlButton = $00000001;
  msoControlEdit = $00000002;
  msoControlDropdown = $00000003;
  msoControlComboBox = $00000004;
  msoControlButtonDropdown = $00000005;
  msoControlSplitDropdown = $00000006;
  msoControlOCXDropdown = $00000007;
  msoControlGenericDropdown = $00000008;
  msoControlGraphicDropdown = $00000009;
  msoControlPopup = $0000000A;
  msoControlGraphicPopup = $0000000B;
  msoControlButtonPopup = $0000000C;
  msoControlSplitButtonPopup = $0000000D;
  msoControlSplitButtonMRUPopup = $0000000E;
  msoControlLabel = $0000000F;
  msoControlExpandingGrid = $00000010;
  msoControlSplitExpandingGrid = $00000011;
  msoControlGrid = $00000012;
  msoControlGauge = $00000013;
  msoControlGraphicCombo = $00000014;
  msoControlPane = $00000015;
  msoControlActiveX = $00000016;

// Constants for enum MsoButtonState
type
  MsoButtonState = TOleEnum;
const
  msoButtonUp = $00000000;
  msoButtonDown = $FFFFFFFF;
  msoButtonMixed = $00000002;

// Constants for enum MsoControlOLEUsage
type
  MsoControlOLEUsage = TOleEnum;
const
  msoControlOLEUsageNeither = $00000000;
  msoControlOLEUsageServer = $00000001;
  msoControlOLEUsageClient = $00000002;
  msoControlOLEUsageBoth = $00000003;

// Constants for enum MsoButtonStyleHidden
type
  MsoButtonStyleHidden = TOleEnum;
const
  msoButtonWrapText = $00000004;
  msoButtonTextBelow = $00000008;

// Constants for enum MsoButtonStyle
type
  MsoButtonStyle = TOleEnum;
const
  msoButtonAutomatic = $00000000;
  msoButtonIcon = $00000001;
  msoButtonCaption = $00000002;
  msoButtonIconAndCaption = $00000003;
  msoButtonIconAndWrapCaption = $00000007;
  msoButtonIconAndCaptionBelow = $0000000B;
  msoButtonWrapCaption = $0000000E;
  msoButtonIconAndWrapCaptionBelow = $0000000F;

// Constants for enum MsoComboStyle
type
  MsoComboStyle = TOleEnum;
const
  msoComboNormal = $00000000;
  msoComboLabel = $00000001;

// Constants for enum MsoOLEMenuGroup
type
  MsoOLEMenuGroup = TOleEnum;
const
  msoOLEMenuGroupNone = $FFFFFFFF;
  msoOLEMenuGroupFile = $00000000;
  msoOLEMenuGroupEdit = $00000001;
  msoOLEMenuGroupContainer = $00000002;
  msoOLEMenuGroupObject = $00000003;
  msoOLEMenuGroupWindow = $00000004;
  msoOLEMenuGroupHelp = $00000005;

// Constants for enum MsoMenuAnimation
type
  MsoMenuAnimation = TOleEnum;
const
  msoMenuAnimationNone = $00000000;
  msoMenuAnimationRandom = $00000001;
  msoMenuAnimationUnfold = $00000002;
  msoMenuAnimationSlide = $00000003;

// Constants for enum MsoBarRow
type
  MsoBarRow = TOleEnum;
const
  msoBarRowFirst = $00000000;
  msoBarRowLast = $FFFFFFFF;

// Constants for enum MsoCommandBarButtonHyperlinkType
type
  MsoCommandBarButtonHyperlinkType = TOleEnum;
const
  msoCommandBarButtonHyperlinkNone = $00000000;
  msoCommandBarButtonHyperlinkOpen = $00000001;
  msoCommandBarButtonHyperlinkInsertPicture = $00000002;

// Constants for enum MsoHyperlinkType
type
  MsoHyperlinkType = TOleEnum;
const
  msoHyperlinkRange = $00000000;
  msoHyperlinkShape = $00000001;
  msoHyperlinkInlineShape = $00000002;

// Constants for enum MsoExtraInfoMethod
type
  MsoExtraInfoMethod = TOleEnum;
const
  msoMethodGet = $00000000;
  msoMethodPost = $00000001;

// Constants for enum MsoAnimationType
type
  MsoAnimationType = TOleEnum;
const
  msoAnimationIdle = $00000001;
  msoAnimationGreeting = $00000002;
  msoAnimationGoodbye = $00000003;
  msoAnimationBeginSpeaking = $00000004;
  msoAnimationRestPose = $00000005;
  msoAnimationCharacterSuccessMajor = $00000006;
  msoAnimationGetAttentionMajor = $0000000B;
  msoAnimationGetAttentionMinor = $0000000C;
  msoAnimationSearching = $0000000D;
  msoAnimationPrinting = $00000012;
  msoAnimationGestureRight = $00000013;
  msoAnimationWritingNotingSomething = $00000016;
  msoAnimationWorkingAtSomething = $00000017;
  msoAnimationThinking = $00000018;
  msoAnimationSendingMail = $00000019;
  msoAnimationListensToComputer = $0000001A;
  msoAnimationDisappear = $0000001F;
  msoAnimationAppear = $00000020;
  msoAnimationGetArtsy = $00000064;
  msoAnimationGetTechy = $00000065;
  msoAnimationGetWizardy = $00000066;
  msoAnimationCheckingSomething = $00000067;
  msoAnimationLookDown = $00000068;
  msoAnimationLookDownLeft = $00000069;
  msoAnimationLookDownRight = $0000006A;
  msoAnimationLookLeft = $0000006B;
  msoAnimationLookRight = $0000006C;
  msoAnimationLookUp = $0000006D;
  msoAnimationLookUpLeft = $0000006E;
  msoAnimationLookUpRight = $0000006F;
  msoAnimationSaving = $00000070;
  msoAnimationGestureDown = $00000071;
  msoAnimationGestureLeft = $00000072;
  msoAnimationGestureUp = $00000073;
  msoAnimationEmptyTrash = $00000074;

// Constants for enum MsoButtonSetType
type
  MsoButtonSetType = TOleEnum;
const
  msoButtonSetNone = $00000000;
  msoButtonSetOK = $00000001;
  msoButtonSetCancel = $00000002;
  msoButtonSetOkCancel = $00000003;
  msoButtonSetYesNo = $00000004;
  msoButtonSetYesNoCancel = $00000005;
  msoButtonSetBackClose = $00000006;
  msoButtonSetNextClose = $00000007;
  msoButtonSetBackNextClose = $00000008;
  msoButtonSetRetryCancel = $00000009;
  msoButtonSetAbortRetryIgnore = $0000000A;
  msoButtonSetSearchClose = $0000000B;
  msoButtonSetBackNextSnooze = $0000000C;
  msoButtonSetTipsOptionsClose = $0000000D;
  msoButtonSetYesAllNoCancel = $0000000E;

// Constants for enum MsoIconType
type
  MsoIconType = TOleEnum;
const
  msoIconNone = $00000000;
  msoIconAlert = $00000002;
  msoIconTip = $00000003;
  msoIconAlertInfo = $00000004;
  msoIconAlertWarning = $00000005;
  msoIconAlertQuery = $00000006;
  msoIconAlertCritical = $00000007;

// Constants for enum MsoBalloonType
type
  MsoBalloonType = TOleEnum;
const
  msoBalloonTypeButtons = $00000000;
  msoBalloonTypeBullets = $00000001;
  msoBalloonTypeNumbers = $00000002;

// Constants for enum MsoModeType
type
  MsoModeType = TOleEnum;
const
  msoModeModal = $00000000;
  msoModeAutoDown = $00000001;
  msoModeModeless = $00000002;

// Constants for enum MsoBalloonErrorType
type
  MsoBalloonErrorType = TOleEnum;
const
  msoBalloonErrorNone = $00000000;
  msoBalloonErrorOther = $00000001;
  msoBalloonErrorTooBig = $00000002;
  msoBalloonErrorOutOfMemory = $00000003;
  msoBalloonErrorBadPictureRef = $00000004;
  msoBalloonErrorBadReference = $00000005;
  msoBalloonErrorButtonlessModal = $00000006;
  msoBalloonErrorButtonModeless = $00000007;
  msoBalloonErrorBadCharacter = $00000008;
  msoBalloonErrorCOMFailure = $00000009;
  msoBalloonErrorCharNotTopmostForModal = $0000000A;
  msoBalloonErrorTooManyControls = $0000000B;

// Constants for enum MsoWizardActType
type
  MsoWizardActType = TOleEnum;
const
  msoWizardActInactive = $00000000;
  msoWizardActActive = $00000001;
  msoWizardActSuspend = $00000002;
  msoWizardActResume = $00000003;

// Constants for enum MsoWizardMsgType
type
  MsoWizardMsgType = TOleEnum;
const
  msoWizardMsgLocalStateOn = $00000001;
  msoWizardMsgLocalStateOff = $00000002;
  msoWizardMsgShowHelp = $00000003;
  msoWizardMsgSuspending = $00000004;
  msoWizardMsgResuming = $00000005;

// Constants for enum MsoBalloonButtonType
type
  MsoBalloonButtonType = TOleEnum;
const
  msoBalloonButtonYesToAll = $FFFFFFF1;
  msoBalloonButtonOptions = $FFFFFFF2;
  msoBalloonButtonTips = $FFFFFFF3;
  msoBalloonButtonClose = $FFFFFFF4;
  msoBalloonButtonSnooze = $FFFFFFF5;
  msoBalloonButtonSearch = $FFFFFFF6;
  msoBalloonButtonIgnore = $FFFFFFF7;
  msoBalloonButtonAbort = $FFFFFFF8;
  msoBalloonButtonRetry = $FFFFFFF9;
  msoBalloonButtonNext = $FFFFFFFA;
  msoBalloonButtonBack = $FFFFFFFB;
  msoBalloonButtonNo = $FFFFFFFC;
  msoBalloonButtonYes = $FFFFFFFD;
  msoBalloonButtonCancel = $FFFFFFFE;
  msoBalloonButtonOK = $FFFFFFFF;
  msoBalloonButtonNull = $00000000;

// Constants for enum DocProperties
type
  DocProperties = TOleEnum;
const
  offPropertyTypeNumber = $00000001;
  offPropertyTypeBoolean = $00000002;
  offPropertyTypeDate = $00000003;
  offPropertyTypeString = $00000004;
  offPropertyTypeFloat = $00000005;

// Constants for enum MsoDocProperties
type
  MsoDocProperties = TOleEnum;
const
  msoPropertyTypeNumber = $00000001;
  msoPropertyTypeBoolean = $00000002;
  msoPropertyTypeDate = $00000003;
  msoPropertyTypeString = $00000004;
  msoPropertyTypeFloat = $00000005;

// Constants for enum MsoAppLanguageID
type
  MsoAppLanguageID = TOleEnum;
const
  msoLanguageIDInstall = $00000001;
  msoLanguageIDUI = $00000002;
  msoLanguageIDHelp = $00000003;
  msoLanguageIDExeMode = $00000004;
  msoLanguageIDUIPrevious = $00000005;

// Constants for enum MsoFarEastLineBreakLanguageID
type
  MsoFarEastLineBreakLanguageID = TOleEnum;
const
  MsoFarEastLineBreakLanguageJapanese = $00000411;
  MsoFarEastLineBreakLanguageKorean = $00000412;
  MsoFarEastLineBreakLanguageSimplifiedChinese = $00000804;
  MsoFarEastLineBreakLanguageTraditionalChinese = $00000404;

// Constants for enum MsoFeatureInstall
type
  MsoFeatureInstall = TOleEnum;
const
  msoFeatureInstallNone = $00000000;
  msoFeatureInstallOnDemand = $00000001;
  msoFeatureInstallOnDemandWithUI = $00000002;

// Constants for enum MsoScriptLanguage
type
  MsoScriptLanguage = TOleEnum;
const
  msoScriptLanguageJava = $00000001;
  msoScriptLanguageVisualBasic = $00000002;
  msoScriptLanguageASP = $00000003;
  msoScriptLanguageOther = $00000004;

// Constants for enum MsoScriptLocation
type
  MsoScriptLocation = TOleEnum;
const
  msoScriptLocationInHead = $00000001;
  msoScriptLocationInBody = $00000002;

// Constants for enum MsoFileFindOptions
type
  MsoFileFindOptions = TOleEnum;
const
  msoOptionsNew = $00000001;
  msoOptionsAdd = $00000002;
  msoOptionsWithin = $00000003;

// Constants for enum MsoFileFindView
type
  MsoFileFindView = TOleEnum;
const
  msoViewFileInfo = $00000001;
  msoViewPreview = $00000002;
  msoViewSummaryInfo = $00000003;

// Constants for enum MsoFileFindSortBy
type
  MsoFileFindSortBy = TOleEnum;
const
  msoFileFindSortbyAuthor = $00000001;
  msoFileFindSortbyDateCreated = $00000002;
  msoFileFindSortbyLastSavedBy = $00000003;
  msoFileFindSortbyDateSaved = $00000004;
  msoFileFindSortbyFileName = $00000005;
  msoFileFindSortbySize = $00000006;
  msoFileFindSortbyTitle = $00000007;

// Constants for enum MsoFileFindListBy
type
  MsoFileFindListBy = TOleEnum;
const
  msoListbyName = $00000001;
  msoListbyTitle = $00000002;

// Constants for enum MsoLastModified
type
  MsoLastModified = TOleEnum;
const
  msoLastModifiedYesterday = $00000001;
  msoLastModifiedToday = $00000002;
  msoLastModifiedLastWeek = $00000003;
  msoLastModifiedThisWeek = $00000004;
  msoLastModifiedLastMonth = $00000005;
  msoLastModifiedThisMonth = $00000006;
  msoLastModifiedAnyTime = $00000007;

// Constants for enum MsoSortBy
type
  MsoSortBy = TOleEnum;
const
  msoSortByFileName = $00000001;
  msoSortBySize = $00000002;
  msoSortByFileType = $00000003;
  msoSortByLastModified = $00000004;

// Constants for enum MsoSortOrder
type
  MsoSortOrder = TOleEnum;
const
  msoSortOrderAscending = $00000001;
  msoSortOrderDescending = $00000002;

// Constants for enum MsoConnector
type
  MsoConnector = TOleEnum;
const
  msoConnectorAnd = $00000001;
  msoConnectorOr = $00000002;

// Constants for enum MsoCondition
type
  MsoCondition = TOleEnum;
const
  msoConditionFileTypeAllFiles = $00000001;
  msoConditionFileTypeOfficeFiles = $00000002;
  msoConditionFileTypeWordDocuments = $00000003;
  msoConditionFileTypeExcelWorkbooks = $00000004;
  msoConditionFileTypePowerPointPresentations = $00000005;
  msoConditionFileTypeBinders = $00000006;
  msoConditionFileTypeDatabases = $00000007;
  msoConditionFileTypeTemplates = $00000008;
  msoConditionIncludes = $00000009;
  msoConditionIncludesPhrase = $0000000A;
  msoConditionBeginsWith = $0000000B;
  msoConditionEndsWith = $0000000C;
  msoConditionIncludesNearEachOther = $0000000D;
  msoConditionIsExactly = $0000000E;
  msoConditionIsNot = $0000000F;
  msoConditionYesterday = $00000010;
  msoConditionToday = $00000011;
  msoConditionTomorrow = $00000012;
  msoConditionLastWeek = $00000013;
  msoConditionThisWeek = $00000014;
  msoConditionNextWeek = $00000015;
  msoConditionLastMonth = $00000016;
  msoConditionThisMonth = $00000017;
  msoConditionNextMonth = $00000018;
  msoConditionAnytime = $00000019;
  msoConditionAnytimeBetween = $0000001A;
  msoConditionOn = $0000001B;
  msoConditionOnOrAfter = $0000001C;
  msoConditionOnOrBefore = $0000001D;
  msoConditionInTheNext = $0000001E;
  msoConditionInTheLast = $0000001F;
  msoConditionEquals = $00000020;
  msoConditionDoesNotEqual = $00000021;
  msoConditionAnyNumberBetween = $00000022;
  msoConditionAtMost = $00000023;
  msoConditionAtLeast = $00000024;
  msoConditionMoreThan = $00000025;
  msoConditionLessThan = $00000026;
  msoConditionIsYes = $00000027;
  msoConditionIsNo = $00000028;

// Constants for enum MsoFileType
type
  MsoFileType = TOleEnum;
const
  msoFileTypeAllFiles = $00000001;
  msoFileTypeOfficeFiles = $00000002;
  msoFileTypeWordDocuments = $00000003;
  msoFileTypeExcelWorkbooks = $00000004;
  msoFileTypePowerPointPresentations = $00000005;
  msoFileTypeBinders = $00000006;
  msoFileTypeDatabases = $00000007;
  msoFileTypeTemplates = $00000008;

// Constants for enum MsoLanguageID
type
  MsoLanguageID = TOleEnum;
const
  msoLanguageIDMixed = $FFFFFFFE;
  msoLanguageIDNone = $00000000;
  msoLanguageIDNoProofing = $00000400;
  msoLanguageIDAfrikaans = $00000436;
  msoLanguageIDAlbanian = $0000041C;
  msoLanguageIDArabicAlgeria = $00001401;
  msoLanguageIDArabicBahrain = $00003C01;
  msoLanguageIDArabicEgypt = $00000C01;
  msoLanguageIDArabicIraq = $00000801;
  msoLanguageIDArabicJordan = $00002C01;
  msoLanguageIDArabicKuwait = $00003401;
  msoLanguageIDArabicLebanon = $00003001;
  msoLanguageIDArabicLibya = $00001001;
  msoLanguageIDArabicMorocco = $00001801;
  msoLanguageIDArabicOman = $00002001;
  msoLanguageIDArabicQatar = $00004001;
  msoLanguageIDArabic = $00000401;
  msoLanguageIDArabicSyria = $00002801;
  msoLanguageIDArabicTunisia = $00001C01;
  msoLanguageIDArabicUAE = $00003801;
  msoLanguageIDArabicYemen = $00002401;
  msoLanguageIDArmenian = $0000042B;
  msoLanguageIDAssamese = $0000044D;
  msoLanguageIDAzeriCyrillic = $0000082C;
  msoLanguageIDAzeriLatin = $0000042C;
  msoLanguageIDBasque = $0000042D;
  msoLanguageIDByelorussian = $00000423;
  msoLanguageIDBengali = $00000445;
  msoLanguageIDBulgarian = $00000402;
  msoLanguageIDBurmese = $00000455;
  msoLanguageIDCatalan = $00000403;
  msoLanguageIDChineseHongKong = $00000C04;
  msoLanguageIDChineseMacao = $00001404;
  msoLanguageIDSimplifiedChinese = $00000804;
  msoLanguageIDChineseSingapore = $00001004;
  msoLanguageIDTraditionalChinese = $00000404;
  msoLanguageIDCroatian = $0000041A;
  msoLanguageIDCzech = $00000405;
  msoLanguageIDDanish = $00000406;
  msoLanguageIDBelgianDutch = $00000813;
  msoLanguageIDDutch = $00000413;
  msoLanguageIDEnglishAUS = $00000C09;
  msoLanguageIDEnglishBelize = $00002809;
  msoLanguageIDEnglishCanadian = $00001009;
  msoLanguageIDEnglishCaribbean = $00002409;
  msoLanguageIDEnglishIreland = $00001809;
  msoLanguageIDEnglishJamaica = $00002009;
  msoLanguageIDEnglishNewZealand = $00001409;
  msoLanguageIDEnglishPhilippines = $00003409;
  msoLanguageIDEnglishSouthAfrica = $00001C09;
  msoLanguageIDEnglishTrinidad = $00002C09;
  msoLanguageIDEnglishUK = $00000809;
  msoLanguageIDEnglishUS = $00000409;
  msoLanguageIDEnglishZimbabwe = $00003009;
  msoLanguageIDEstonian = $00000425;
  msoLanguageIDFaeroese = $00000438;
  msoLanguageIDFarsi = $00000429;
  msoLanguageIDFinnish = $0000040B;
  msoLanguageIDBelgianFrench = $0000080C;
  msoLanguageIDFrenchCameroon = $00002C0C;
  msoLanguageIDFrenchCanadian = $00000C0C;
  msoLanguageIDFrenchCotedIvoire = $0000300C;
  msoLanguageIDFrench = $0000040C;
  msoLanguageIDFrenchLuxembourg = $0000140C;
  msoLanguageIDFrenchMali = $0000340C;
  msoLanguageIDFrenchMonaco = $0000180C;
  msoLanguageIDFrenchReunion = $0000200C;
  msoLanguageIDFrenchSenegal = $0000280C;
  msoLanguageIDSwissFrench = $0000100C;
  msoLanguageIDFrenchWestIndies = $00001C0C;
  msoLanguageIDFrenchZaire = $0000240C;
  msoLanguageIDFrisianNetherlands = $00000462;
  msoLanguageIDGaelicIreland = $0000083C;
  msoLanguageIDGaelicScotland = $0000043C;
  msoLanguageIDGalician = $00000456;
  msoLanguageIDGeorgian = $00000437;
  msoLanguageIDGermanAustria = $00000C07;
  msoLanguageIDGerman = $00000407;
  msoLanguageIDGermanLiechtenstein = $00001407;
  msoLanguageIDGermanLuxembourg = $00001007;
  msoLanguageIDSwissGerman = $00000807;
  msoLanguageIDGreek = $00000408;
  msoLanguageIDGujarati = $00000447;
  msoLanguageIDHebrew = $0000040D;
  msoLanguageIDHindi = $00000439;
  msoLanguageIDHungarian = $0000040E;
  msoLanguageIDIcelandic = $0000040F;
  msoLanguageIDIndonesian = $00000421;
  msoLanguageIDItalian = $00000410;
  msoLanguageIDSwissItalian = $00000810;
  msoLanguageIDJapanese = $00000411;
  msoLanguageIDKannada = $0000044B;
  msoLanguageIDKashmiri = $00000460;
  msoLanguageIDKazakh = $0000043F;
  msoLanguageIDKhmer = $00000453;
  msoLanguageIDKirghiz = $00000440;
  msoLanguageIDKonkani = $00000457;
  msoLanguageIDKorean = $00000412;
  msoLanguageIDLao = $00000454;
  msoLanguageIDLatvian = $00000426;
  msoLanguageIDLithuanian = $00000427;
  msoLanguageIDMacedonian = $0000042F;
  msoLanguageIDMalaysian = $0000043E;
  msoLanguageIDMalayBruneiDarussalam = $0000083E;
  msoLanguageIDMalayalam = $0000044C;
  msoLanguageIDMaltese = $0000043A;
  msoLanguageIDManipuri = $00000458;
  msoLanguageIDMarathi = $0000044E;
  msoLanguageIDMongolian = $00000450;
  msoLanguageIDNepali = $00000461;
  msoLanguageIDNorwegianBokmol = $00000414;
  msoLanguageIDNorwegianNynorsk = $00000814;
  msoLanguageIDOriya = $00000448;
  msoLanguageIDPolish = $00000415;
  msoLanguageIDBrazilianPortuguese = $00000416;
  msoLanguageIDPortuguese = $00000816;
  msoLanguageIDPunjabi = $00000446;
  msoLanguageIDRhaetoRomanic = $00000417;
  msoLanguageIDRomanianMoldova = $00000818;
  msoLanguageIDRomanian = $00000418;
  msoLanguageIDRussianMoldova = $00000819;
  msoLanguageIDRussian = $00000419;
  msoLanguageIDSamiLappish = $0000043B;
  msoLanguageIDSanskrit = $0000044F;
  msoLanguageIDSerbianCyrillic = $00000C1A;
  msoLanguageIDSerbianLatin = $0000081A;
  msoLanguageIDSesotho = $00000430;
  msoLanguageIDSindhi = $00000459;
  msoLanguageIDSlovak = $0000041B;
  msoLanguageIDSlovenian = $00000424;
  msoLanguageIDSorbian = $0000042E;
  msoLanguageIDSpanishArgentina = $00002C0A;
  msoLanguageIDSpanishBolivia = $0000400A;
  msoLanguageIDSpanishChile = $0000340A;
  msoLanguageIDSpanishColombia = $0000240A;
  msoLanguageIDSpanishCostaRica = $0000140A;
  msoLanguageIDSpanishDominicanRepublic = $00001C0A;
  msoLanguageIDSpanishEcuador = $0000300A;
  msoLanguageIDSpanishElSalvador = $0000440A;
  msoLanguageIDSpanishGuatemala = $0000100A;
  msoLanguageIDSpanishHonduras = $0000480A;
  msoLanguageIDMexicanSpanish = $0000080A;
  msoLanguageIDSpanishNicaragua = $00004C0A;
  msoLanguageIDSpanishPanama = $0000180A;
  msoLanguageIDSpanishParaguay = $00003C0A;
  msoLanguageIDSpanishPeru = $0000280A;
  msoLanguageIDSpanishPuertoRico = $0000500A;
  msoLanguageIDSpanishModernSort = $00000C0A;
  msoLanguageIDSpanish = $0000040A;
  msoLanguageIDSpanishUruguay = $0000380A;
  msoLanguageIDSpanishVenezuela = $0000200A;
  msoLanguageIDSutu = $00000430;
  msoLanguageIDSwahili = $00000441;
  msoLanguageIDSwedishFinland = $0000081D;
  msoLanguageIDSwedish = $0000041D;
  msoLanguageIDTajik = $00000428;
  msoLanguageIDTamil = $00000449;
  msoLanguageIDTatar = $00000444;
  msoLanguageIDTelugu = $0000044A;
  msoLanguageIDThai = $0000041E;
  msoLanguageIDTibetan = $00000451;
  msoLanguageIDTsonga = $00000431;
  msoLanguageIDTswana = $00000432;
  msoLanguageIDTurkish = $0000041F;
  msoLanguageIDTurkmen = $00000442;
  msoLanguageIDUkrainian = $00000422;
  msoLanguageIDUrdu = $00000420;
  msoLanguageIDUzbekCyrillic = $00000843;
  msoLanguageIDUzbekLatin = $00000443;
  msoLanguageIDVenda = $00000433;
  msoLanguageIDVietnamese = $0000042A;
  msoLanguageIDWelsh = $00000452;
  msoLanguageIDXhosa = $00000434;
  msoLanguageIDZulu = $00000435;

// Constants for enum MsoScreenSize
type
  MsoScreenSize = TOleEnum;
const
  msoScreenSize544x376 = $00000000;
  msoScreenSize640x480 = $00000001;
  msoScreenSize720x512 = $00000002;
  msoScreenSize800x600 = $00000003;
  msoScreenSize1024x768 = $00000004;
  msoScreenSize1152x882 = $00000005;
  msoScreenSize1152x900 = $00000006;
  msoScreenSize1280x1024 = $00000007;
  msoScreenSize1600x1200 = $00000008;
  msoScreenSize1800x1440 = $00000009;
  msoScreenSize1920x1200 = $0000000A;

// Constants for enum MsoCharacterSet
type
  MsoCharacterSet = TOleEnum;
const
  msoCharacterSetArabic = $00000001;
  msoCharacterSetCyrillic = $00000002;
  msoCharacterSetEnglishWesternEuropeanOtherLatinScript = $00000003;
  msoCharacterSetGreek = $00000004;
  msoCharacterSetHebrew = $00000005;
  msoCharacterSetJapanese = $00000006;
  msoCharacterSetKorean = $00000007;
  msoCharacterSetMultilingualUnicode = $00000008;
  msoCharacterSetSimplifiedChinese = $00000009;
  msoCharacterSetThai = $0000000A;
  msoCharacterSetTraditionalChinese = $0000000B;
  msoCharacterSetVietnamese = $0000000C;

// Constants for enum MsoEncoding
type
  MsoEncoding = TOleEnum;
const
  msoEncodingThai = $0000036A;
  msoEncodingJapaneseShiftJIS = $000003A4;
  msoEncodingSimplifiedChineseGBK = $000003A8;
  msoEncodingKorean = $000003B5;
  msoEncodingTraditionalChineseBig5 = $000003B6;
  msoEncodingUnicodeLittleEndian = $000004B0;
  msoEncodingUnicodeBigEndian = $000004B1;
  msoEncodingCentralEuropean = $000004E2;
  msoEncodingCyrillic = $000004E3;
  msoEncodingWestern = $000004E4;
  msoEncodingGreek = $000004E5;
  msoEncodingTurkish = $000004E6;
  msoEncodingHebrew = $000004E7;
  msoEncodingArabic = $000004E8;
  msoEncodingBaltic = $000004E9;
  msoEncodingVietnamese = $000004EA;
  msoEncodingAutoDetect = $0000C351;
  msoEncodingJapaneseAutoDetect = $0000C6F4;
  msoEncodingSimplifiedChineseAutoDetect = $0000C6F8;
  msoEncodingKoreanAutoDetect = $0000C705;
  msoEncodingTraditionalChineseAutoDetect = $0000C706;
  msoEncodingCyrillicAutoDetect = $0000C833;
  msoEncodingGreekAutoDetect = $0000C835;
  msoEncodingArabicAutoDetect = $0000C838;
  msoEncodingISO88591Latin1 = $00006FAF;
  msoEncodingISO88592CentralEurope = $00006FB0;
  msoEncodingISO88593Latin3 = $00006FB1;
  msoEncodingISO88594Baltic = $00006FB2;
  msoEncodingISO88595Cyrillic = $00006FB3;
  msoEncodingISO88596Arabic = $00006FB4;
  msoEncodingISO88597Greek = $00006FB5;
  msoEncodingISO88598Hebrew = $00006FB6;
  msoEncodingISO88599Turkish = $00006FB7;
  msoEncodingISO885915Latin9 = $00006FBD;
  msoEncodingISO2022JPNoHalfwidthKatakana = $0000C42C;
  msoEncodingISO2022JPJISX02021984 = $0000C42D;
  msoEncodingISO2022JPJISX02011989 = $0000C42E;
  msoEncodingISO2022KR = $0000C431;
  msoEncodingISO2022CNTraditionalChinese = $0000C433;
  msoEncodingISO2022CNSimplifiedChinese = $0000C435;
  msoEncodingMacRoman = $00002710;
  msoEncodingMacJapanese = $00002711;
  msoEncodingMacTraditionalChineseBig5 = $00002712;
  msoEncodingMacKorean = $00002713;
  msoEncodingMacArabic = $00002714;
  msoEncodingMacHebrew = $00002715;
  msoEncodingMacGreek1 = $00002716;
  msoEncodingMacCyrillic = $00002717;
  msoEncodingMacSimplifiedChineseGB2312 = $00002718;
  msoEncodingMacRomania = $0000271A;
  msoEncodingMacUkraine = $00002721;
  msoEncodingMacLatin2 = $0000272D;
  msoEncodingMacIcelandic = $0000275F;
  msoEncodingMacTurkish = $00002761;
  msoEncodingMacCroatia = $00002762;
  msoEncodingEBCDICUSCanada = $00000025;
  msoEncodingEBCDICInternational = $000001F4;
  msoEncodingEBCDICMultilingualROECELatin2 = $00000366;
  msoEncodingEBCDICGreekModern = $0000036B;
  msoEncodingEBCDICTurkishLatin5 = $00000402;
  msoEncodingEBCDICGermany = $00004F31;
  msoEncodingEBCDICDenmarkNorway = $00004F35;
  msoEncodingEBCDICFinlandSweden = $00004F36;
  msoEncodingEBCDICItaly = $00004F38;
  msoEncodingEBCDICLatinAmericaSpain = $00004F3C;
  msoEncodingEBCDICUnitedKingdom = $00004F3D;
  msoEncodingEBCDICJapaneseKatakanaExtended = $00004F42;
  msoEncodingEBCDICFrance = $00004F49;
  msoEncodingEBCDICArabic = $00004FC4;
  msoEncodingEBCDICGreek = $00004FC7;
  msoEncodingEBCDICHebrew = $00004FC8;
  msoEncodingEBCDICKoreanExtended = $00005161;
  msoEncodingEBCDICThai = $00005166;
  msoEncodingEBCDICIcelandic = $00005187;
  msoEncodingEBCDICTurkish = $000051A9;
  msoEncodingEBCDICRussian = $00005190;
  msoEncodingEBCDICSerbianBulgarian = $00005221;
  msoEncodingEBCDICJapaneseKatakanaExtendedAndJapanese = $0000C6F2;
  msoEncodingEBCDICUSCanadaandJapanese = $0000C6F3;
  msoEncodingEBCDICKoreanExtendedAndKorean = $0000C6F5;
  msoEncodingEBCDICSimplifiedChineseExtendedAndSimplifiedChinese = $0000C6F7;
  msoEncodingEBCDICUSCanadaAndTraditionalChinese = $0000C6F9;
  msoEncodingEBCDICJapaneseLatinExtendedAndJapanese = $0000C6FB;
  msoEncodingOEMUnitedStates = $000001B5;
  msoEncodingOEMGreek437G = $000002E1;
  msoEncodingOEMBaltic = $00000307;
  msoEncodingOEMMultilingualLatinI = $00000352;
  msoEncodingOEMMultilingualLatinII = $00000354;
  msoEncodingOEMCyrillic = $00000357;
  msoEncodingOEMTurkish = $00000359;
  msoEncodingOEMPortuguese = $0000035C;
  msoEncodingOEMIcelandic = $0000035D;
  msoEncodingOEMHebrew = $0000035E;
  msoEncodingOEMCanadianFrench = $0000035F;
  msoEncodingOEMArabic = $00000360;
  msoEncodingOEMNordic = $00000361;
  msoEncodingOEMCyrillicII = $00000362;
  msoEncodingOEMModernGreek = $00000365;
  msoEncodingEUCJapanese = $0000CADC;
  msoEncodingEUCChineseSimplifiedChinese = $0000CAE0;
  msoEncodingEUCKorean = $0000CAED;
  msoEncodingEUCTaiwaneseTraditionalChinese = $0000CAEE;
  msoEncodingArabicASMO = $000002C4;
  msoEncodingArabicTransparentASMO = $000002D0;
  msoEncodingKoreanJohab = $00000551;
  msoEncodingTaiwanCNS = $00004E20;
  msoEncodingTaiwanTCA = $00004E21;
  msoEncodingTaiwanEten = $00004E22;
  msoEncodingTaiwanIBM5550 = $00004E23;
  msoEncodingTaiwanTeleText = $00004E24;
  msoEncodingTaiwanWang = $00004E25;
  msoEncodingIA5IRV = $00004E89;
  msoEncodingIA5German = $00004E8A;
  msoEncodingIA5Swedish = $00004E8B;
  msoEncodingIA5Norwegian = $00004E8C;
  msoEncodingUSASCII = $00004E9F;
  msoEncodingT61 = $00004F25;
  msoEncodingISO6937NonSpacingAccent = $00004F2D;
  msoEncodingKOI8R = $00005182;
  msoEncodingExtAlphaLowercase = $00005223;
  msoEncodingKOI8U = $0000556A;
  msoEncodingEuropa3 = $00007149;
  msoEncodingHZGBSimplifiedChinese = $0000CEC8;
  msoEncodingUTF7 = $0000FDE8;
  msoEncodingUTF8 = $0000FDE9;

// Constants for enum MsoHTMLProjectOpen
type
  MsoHTMLProjectOpen = TOleEnum;
const
  msoHTMLProjectOpenSourceView = $00000001;
  msoHTMLProjectOpenTextView = $00000002;

// Constants for enum MsoHTMLProjectState
type
  MsoHTMLProjectState = TOleEnum;
const
  msoHTMLProjectStateDocumentLocked = $00000001;
  msoHTMLProjectStateProjectLocked = $00000002;
  msoHTMLProjectStateDocumentProjectUnlocked = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IAccessible = interface;
  IAccessibleDisp = dispinterface;
  _IMsoDispObj = interface;
  _IMsoDispObjDisp = dispinterface;
  _IMsoOleAccDispObj = interface;
  _IMsoOleAccDispObjDisp = dispinterface;
  _CommandBars = interface;
  _CommandBarsDisp = dispinterface;
  CommandBar = interface;
  CommandBarDisp = dispinterface;
  CommandBarControls = interface;
  CommandBarControlsDisp = dispinterface;
  CommandBarControl = interface;
  CommandBarControlDisp = dispinterface;
  _CommandBarButton = interface;
  _CommandBarButtonDisp = dispinterface;
  CommandBarPopup = interface;
  CommandBarPopupDisp = dispinterface;
  _CommandBarComboBox = interface;
  _CommandBarComboBoxDisp = dispinterface;
  _CommandBarActiveX = interface;
  _CommandBarActiveXDisp = dispinterface;
  Adjustments = interface;
  AdjustmentsDisp = dispinterface;
  CalloutFormat = interface;
  CalloutFormatDisp = dispinterface;
  ColorFormat = interface;
  ColorFormatDisp = dispinterface;
  ConnectorFormat = interface;
  ConnectorFormatDisp = dispinterface;
  FillFormat = interface;
  FillFormatDisp = dispinterface;
  FreeformBuilder = interface;
  FreeformBuilderDisp = dispinterface;
  GroupShapes = interface;
  GroupShapesDisp = dispinterface;
  LineFormat = interface;
  LineFormatDisp = dispinterface;
  ShapeNode = interface;
  ShapeNodeDisp = dispinterface;
  ShapeNodes = interface;
  ShapeNodesDisp = dispinterface;
  PictureFormat = interface;
  PictureFormatDisp = dispinterface;
  ShadowFormat = interface;
  ShadowFormatDisp = dispinterface;
  Script = interface;
  ScriptDisp = dispinterface;
  Scripts = interface;
  ScriptsDisp = dispinterface;
  Shape = interface;
  ShapeDisp = dispinterface;
  ShapeRange = interface;
  ShapeRangeDisp = dispinterface;
  Shapes = interface;
  ShapesDisp = dispinterface;
  TextEffectFormat = interface;
  TextEffectFormatDisp = dispinterface;
  TextFrame = interface;
  TextFrameDisp = dispinterface;
  ThreeDFormat = interface;
  ThreeDFormatDisp = dispinterface;
  IMsoDispCagNotifySink = interface;
  IMsoDispCagNotifySinkDisp = dispinterface;
  Balloon = interface;
  BalloonDisp = dispinterface;
  BalloonCheckboxes = interface;
  BalloonCheckboxesDisp = dispinterface;
  BalloonCheckbox = interface;
  BalloonCheckboxDisp = dispinterface;
  BalloonLabels = interface;
  BalloonLabelsDisp = dispinterface;
  BalloonLabel = interface;
  BalloonLabelDisp = dispinterface;
  AnswerWizardFiles = interface;
  AnswerWizardFilesDisp = dispinterface;
  AnswerWizard = interface;
  AnswerWizardDisp = dispinterface;
  Assistant = interface;
  AssistantDisp = dispinterface;
  DocumentProperty = interface;
  DocumentProperties = interface;
  IFoundFiles = interface;
  IFoundFilesDisp = dispinterface;
  IFind = interface;
  IFindDisp = dispinterface;
  FoundFiles = interface;
  FoundFilesDisp = dispinterface;
  PropertyTest = interface;
  PropertyTestDisp = dispinterface;
  PropertyTests = interface;
  PropertyTestsDisp = dispinterface;
  FileSearch = interface;
  FileSearchDisp = dispinterface;
  COMAddIn = interface;
  COMAddInDisp = dispinterface;
  COMAddIns = interface;
  COMAddInsDisp = dispinterface;
  LanguageSettings = interface;
  LanguageSettingsDisp = dispinterface;
  ICommandBarsEvents = interface;
  ICommandBarsEventsDisp = dispinterface;
  _CommandBarsEvents = dispinterface;
  ICommandBarComboBoxEvents = interface;
  ICommandBarComboBoxEventsDisp = dispinterface;
  _CommandBarComboBoxEvents = dispinterface;
  ICommandBarButtonEvents = interface;
  ICommandBarButtonEventsDisp = dispinterface;
  _CommandBarButtonEvents = dispinterface;
  WebPageFont = interface;
  WebPageFontDisp = dispinterface;
  WebPageFonts = interface;
  WebPageFontsDisp = dispinterface;
  HTMLProjectItem = interface;
  HTMLProjectItemDisp = dispinterface;
  HTMLProjectItems = interface;
  HTMLProjectItemsDisp = dispinterface;
  HTMLProject = interface;
  HTMLProjectDisp = dispinterface;
  MsoDebugOptions = interface;
  MsoDebugOptionsDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CommandBars = _CommandBars;
  CommandBarComboBox = _CommandBarComboBox;
  CommandBarButton = _CommandBarButton;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}
  PUserType1 = ^TGUID; {*}
  PShortint1 = ^Shortint; {*}
  PPShortint1 = ^PShortint1; {*}
  PUserType2 = ^TGUID; {*}

  MsoRGBType = Integer; 

// *********************************************************************//
// Interface: IAccessible
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {618736E0-3C3D-11CF-810C-00AA00389B71}
// *********************************************************************//
  IAccessible = interface(IDispatch)
    ['{618736E0-3C3D-11CF-810C-00AA00389B71}']
    function  Get_accParent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_accChildCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_accChild {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}varChild: OleVariant): IDispatch; safecall;
    function  Get_accName {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}varChild: OleVariant): WideString; safecall;
    function  Get_accValue {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}varChild: OleVariant): WideString; safecall;
    function  Get_accDescription {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}varChild: OleVariant): WideString; safecall;
    function  Get_accRole {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}varChild: OleVariant): OleVariant; safecall;
    function  Get_accState {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}varChild: OleVariant): OleVariant; safecall;
    function  Get_accHelp {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}varChild: OleVariant): WideString; safecall;
    function  Get_accHelpTopic {Flags(1), (3/2) CC:0, INV:2, DBG:6}({VT_8:1}out pszHelpFile: WideString; 
                                                                    {VT_12:0}varChild: OleVariant): Integer; safecall;
    function  Get_accKeyboardShortcut {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}varChild: OleVariant): WideString; safecall;
    function  Get_accFocus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_accSelection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_accDefaultAction {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}varChild: OleVariant): WideString; safecall;
    procedure accSelect {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_3:0}flagsSelect: Integer; 
                                                             {VT_12:0}varChild: OleVariant); safecall;
    procedure accLocation {Flags(1), (5/5) CC:0, INV:1, DBG:6}({VT_3:1}out pxLeft: Integer; 
                                                               {VT_3:1}out pyTop: Integer; 
                                                               {VT_3:1}out pcxWidth: Integer; 
                                                               {VT_3:1}out pcyHeight: Integer; 
                                                               {VT_12:0}varChild: OleVariant); safecall;
    function  accNavigate {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_3:0}navDir: Integer; 
                                                               {VT_12:0}varStart: OleVariant): OleVariant; safecall;
    function  accHitTest {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_3:0}xLeft: Integer; 
                                                              {VT_3:0}yTop: Integer): OleVariant; safecall;
    procedure accDoDefaultAction {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}varChild: OleVariant); safecall;
    procedure Set_accName {Flags(1), (2/2) CC:0, INV:4, DBG:6}({VT_12:0}varChild: OleVariant; 
                                                               {VT_8:0}const pszName: WideString); safecall;
    procedure Set_accValue {Flags(1), (2/2) CC:0, INV:4, DBG:6}({VT_12:0}varChild: OleVariant; 
                                                                {VT_8:0}const pszValue: WideString); safecall;
    property accParent: IDispatch read Get_accParent;
    property accChildCount: Integer read Get_accChildCount;
    property accChild {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}varChild: OleVariant]: IDispatch read Get_accChild;
    property accName {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}varChild: OleVariant]: WideString read Get_accName write Set_accName;
    property accValue {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}varChild: OleVariant]: WideString read Get_accValue write Set_accValue;
    property accDescription {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}varChild: OleVariant]: WideString read Get_accDescription;
    property accRole {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}varChild: OleVariant]: OleVariant read Get_accRole;
    property accState {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}varChild: OleVariant]: OleVariant read Get_accState;
    property accHelp {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}varChild: OleVariant]: WideString read Get_accHelp;
    property accHelpTopic {Flags(2), (3/2) CC:0, INV:2, DBG:5}[{VT_8:1}out pszHelpFile: WideString; 
                                                               {VT_12:0}varChild: OleVariant]: Integer read Get_accHelpTopic;
    property accKeyboardShortcut {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}varChild: OleVariant]: WideString read Get_accKeyboardShortcut;
    property accFocus: OleVariant read Get_accFocus;
    property accSelection: OleVariant read Get_accSelection;
    property accDefaultAction {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}varChild: OleVariant]: WideString read Get_accDefaultAction;
  end;

// *********************************************************************//
// DispIntf:  IAccessibleDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {618736E0-3C3D-11CF-810C-00AA00389B71}
// *********************************************************************//
  IAccessibleDisp = dispinterface
    ['{618736E0-3C3D-11CF-810C-00AA00389B71}']
    property accParent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid -5000;
    property accChildCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid -5001;
    property accChild {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: IDispatch readonly dispid -5002;
    property accName {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5003;
    property accValue {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5004;
    property accDescription {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5005;
    property accRole {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5006;
    property accState {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5007;
    property accHelp {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5008;
    property accHelpTopic {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_8:1}out pszHelpFile: WideString; 
                                                               {VT_12:0}varChild: OleVariant]: Integer readonly dispid -5009;
    property accKeyboardShortcut {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5010;
    property accFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5011;
    property accSelection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5012;
    property accDefaultAction {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5013;
    procedure accSelect {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}flagsSelect: Integer; 
                                                             {VT_12:0}varChild: OleVariant); dispid -5014;
    procedure accLocation {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_3:1}out pxLeft: Integer; 
                                                               {VT_3:1}out pyTop: Integer; 
                                                               {VT_3:1}out pcxWidth: Integer; 
                                                               {VT_3:1}out pcyHeight: Integer; 
                                                               {VT_12:0}varChild: OleVariant); dispid -5015;
    function  accNavigate {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}navDir: Integer; 
                                                               {VT_12:0}varStart: OleVariant): OleVariant; dispid -5016;
    function  accHitTest {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}xLeft: Integer; 
                                                              {VT_3:0}yTop: Integer): OleVariant; dispid -5017;
    procedure accDoDefaultAction {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}varChild: OleVariant); dispid -5018;
  end;

// *********************************************************************//
// Interface: _IMsoDispObj
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0300-0000-0000-C000-000000000046}
// *********************************************************************//
  _IMsoDispObj = interface(IDispatch)
    ['{000C0300-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
  end;

// *********************************************************************//
// DispIntf:  _IMsoDispObjDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0300-0000-0000-C000-000000000046}
// *********************************************************************//
  _IMsoDispObjDisp = dispinterface
    ['{000C0300-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: _IMsoOleAccDispObj
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0301-0000-0000-C000-000000000046}
// *********************************************************************//
  _IMsoOleAccDispObj = interface(IAccessible)
    ['{000C0301-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Creator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    property Application: IDispatch read Get_Application;
    property Creator: Integer read Get_Creator;
  end;

// *********************************************************************//
// DispIntf:  _IMsoOleAccDispObjDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0301-0000-0000-C000-000000000046}
// *********************************************************************//
  _IMsoOleAccDispObjDisp = dispinterface
    ['{000C0301-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809345;
    property accParent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid -5000;
    property accChildCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid -5001;
    property accChild {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: IDispatch readonly dispid -5002;
    property accName {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5003;
    property accValue {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5004;
    property accDescription {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5005;
    property accRole {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5006;
    property accState {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5007;
    property accHelp {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5008;
    property accHelpTopic {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_8:1}out pszHelpFile: WideString; 
                                                               {VT_12:0}varChild: OleVariant]: Integer readonly dispid -5009;
    property accKeyboardShortcut {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5010;
    property accFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5011;
    property accSelection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5012;
    property accDefaultAction {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5013;
    procedure accSelect {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}flagsSelect: Integer; 
                                                             {VT_12:0}varChild: OleVariant); dispid -5014;
    procedure accLocation {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_3:1}out pxLeft: Integer; 
                                                               {VT_3:1}out pyTop: Integer; 
                                                               {VT_3:1}out pcxWidth: Integer; 
                                                               {VT_3:1}out pcyHeight: Integer; 
                                                               {VT_12:0}varChild: OleVariant); dispid -5015;
    function  accNavigate {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}navDir: Integer; 
                                                               {VT_12:0}varStart: OleVariant): OleVariant; dispid -5016;
    function  accHitTest {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}xLeft: Integer; 
                                                              {VT_3:0}yTop: Integer): OleVariant; dispid -5017;
    procedure accDoDefaultAction {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}varChild: OleVariant); dispid -5018;
  end;

// *********************************************************************//
// Interface: _CommandBars
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0302-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBars = interface(_IMsoDispObj)
    ['{000C0302-0000-0000-C000-000000000046}']
    function  Get_ActionControl {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBarControl; safecall;
    function  Get_ActiveMenuBar {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBar; safecall;
    function  Add {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                       {VT_12:0}Position: OleVariant; 
                                                       {VT_12:0}MenuBar: OleVariant; 
                                                       {VT_12:0}Temporary: OleVariant): CommandBar; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_DisplayTooltips {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_DisplayTooltips {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfDisplayTooltips: WordBool); safecall;
    function  Get_DisplayKeysInTooltips {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_DisplayKeysInTooltips {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfDisplayKeys: WordBool); safecall;
    function  FindControl {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Type_: OleVariant; 
                                                               {VT_12:0}Id: OleVariant; 
                                                               {VT_12:0}Tag: OleVariant; 
                                                               {VT_12:0}Visible: OleVariant): CommandBarControl; safecall;
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Index: OleVariant): CommandBar; safecall;
    function  Get_LargeButtons {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_LargeButtons {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfLargeButtons: WordBool); safecall;
    function  Get_MenuAnimationStyle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoMenuAnimation; safecall;
    procedure Set_MenuAnimationStyle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}pma: MsoMenuAnimation); safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure ReleaseFocus {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_IdsString {Flags(1), (3/2) CC:0, INV:2, DBG:6}({VT_22:0}ids: SYSINT; 
                                                                 {VT_8:1}out pbstrName: WideString): SYSINT; safecall;
    function  Get_TmcGetName {Flags(1), (3/2) CC:0, INV:2, DBG:6}({VT_22:0}tmc: SYSINT; 
                                                                  {VT_8:1}out pbstrName: WideString): SYSINT; safecall;
    function  Get_AdaptiveMenus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_AdaptiveMenus {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfAdaptiveMenus: WordBool); safecall;
    function  FindControls {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Type_: OleVariant; 
                                                                {VT_12:0}Id: OleVariant; 
                                                                {VT_12:0}Tag: OleVariant; 
                                                                {VT_12:0}Visible: OleVariant): CommandBarControls; safecall;
    function  AddEx {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_12:0}TbidOrName: OleVariant; 
                                                         {VT_12:0}Position: OleVariant; 
                                                         {VT_12:0}MenuBar: OleVariant; 
                                                         {VT_12:0}Temporary: OleVariant; 
                                                         {VT_12:0}TbtrProtection: OleVariant): CommandBar; safecall;
    function  Get_DisplayFonts {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_DisplayFonts {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfDisplayFonts: WordBool); safecall;
    property ActionControl: CommandBarControl read Get_ActionControl;
    property ActiveMenuBar: CommandBar read Get_ActiveMenuBar;
    property Count: SYSINT read Get_Count;
    property DisplayTooltips: WordBool read Get_DisplayTooltips;
    property DisplayKeysInTooltips: WordBool read Get_DisplayKeysInTooltips;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Index: OleVariant]: CommandBar read Get_Item; default;
    property LargeButtons: WordBool read Get_LargeButtons;
    property MenuAnimationStyle: MsoMenuAnimation read Get_MenuAnimationStyle;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Parent: IDispatch read Get_Parent;
    property IdsString {Flags(2), (3/2) CC:0, INV:2, DBG:5}[{VT_22:0}ids: SYSINT; 
                                                            {VT_8:1}out pbstrName: WideString]: SYSINT read Get_IdsString;
    property TmcGetName {Flags(2), (3/2) CC:0, INV:2, DBG:5}[{VT_22:0}tmc: SYSINT; 
                                                             {VT_8:1}out pbstrName: WideString]: SYSINT read Get_TmcGetName;
    property AdaptiveMenus: WordBool read Get_AdaptiveMenus;
    property DisplayFonts: WordBool read Get_DisplayFonts;
  end;

// *********************************************************************//
// DispIntf:  _CommandBarsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0302-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBarsDisp = dispinterface
    ['{000C0302-0000-0000-C000-000000000046}']
    property ActionControl {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBarControl readonly dispid 1610809344;
    property ActiveMenuBar {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBar readonly dispid 1610809345;
    function  Add {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                       {VT_12:0}Position: OleVariant; 
                                                       {VT_12:0}MenuBar: OleVariant; 
                                                       {VT_12:0}Temporary: OleVariant): CommandBar; dispid 1610809346;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610809347;
    property DisplayTooltips {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809348;
    property DisplayKeysInTooltips {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809350;
    function  FindControl {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Type_: OleVariant; 
                                                               {VT_12:0}Id: OleVariant; 
                                                               {VT_12:0}Tag: OleVariant; 
                                                               {VT_12:0}Visible: OleVariant): CommandBarControl; dispid 1610809352;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Index: OleVariant]: CommandBar readonly dispid 0; default;
    property LargeButtons {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809354;
    property MenuAnimationStyle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoMenuAnimation readonly dispid 1610809356;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809359;
    procedure ReleaseFocus {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809360;
    property IdsString {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_22:0}ids: SYSINT; 
                                                            {VT_8:1}out pbstrName: WideString]: SYSINT readonly dispid 1610809361;
    property TmcGetName {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_22:0}tmc: SYSINT; 
                                                             {VT_8:1}out pbstrName: WideString]: SYSINT readonly dispid 1610809362;
    property AdaptiveMenus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809363;
    function  FindControls {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Type_: OleVariant; 
                                                                {VT_12:0}Id: OleVariant; 
                                                                {VT_12:0}Tag: OleVariant; 
                                                                {VT_12:0}Visible: OleVariant): CommandBarControls; dispid 1610809365;
    function  AddEx {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_12:0}TbidOrName: OleVariant; 
                                                         {VT_12:0}Position: OleVariant; 
                                                         {VT_12:0}MenuBar: OleVariant; 
                                                         {VT_12:0}Temporary: OleVariant; 
                                                         {VT_12:0}TbtrProtection: OleVariant): CommandBar; dispid 1610809366;
    property DisplayFonts {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809367;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: CommandBar
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0304-0000-0000-C000-000000000046}
// *********************************************************************//
  CommandBar = interface(_IMsoOleAccDispObj)
    ['{000C0304-0000-0000-C000-000000000046}']
    function  Get_BuiltIn {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Context {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Context {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrContext: WideString); safecall;
    function  Get_Controls {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBarControls; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Enabled {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Enabled {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfEnabled: WordBool); safecall;
    function  FindControl {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_12:0}Type_: OleVariant; 
                                                               {VT_12:0}Id: OleVariant; 
                                                               {VT_12:0}Tag: OleVariant; 
                                                               {VT_12:0}Visible: OleVariant; 
                                                               {VT_12:0}Recursive: OleVariant): CommandBarControl; safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pdy: SYSINT); safecall;
    function  Get_Index {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_InstanceId {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pxpLeft: SYSINT); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrName: WideString); safecall;
    function  Get_NameLocal {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NameLocal {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrNameLocal: WideString); safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Position {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoBarPosition; safecall;
    procedure Set_Position {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ppos: MsoBarPosition); safecall;
    function  Get_RowIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_RowIndex {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}piRow: SYSINT); safecall;
    function  Get_Protection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoBarProtection; safecall;
    procedure Set_Protection {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}pprot: MsoBarProtection); safecall;
    procedure Reset {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure ShowPopup {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_12:0}x: OleVariant; 
                                                             {VT_12:0}y: OleVariant); safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pypTop: SYSINT); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoBarType; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfVisible: WordBool); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pdx: SYSINT); safecall;
    function  Get_AdaptiveMenu {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_AdaptiveMenu {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfAdaptiveMenu: WordBool); safecall;
    property BuiltIn: WordBool read Get_BuiltIn;
    property Context: WideString read Get_Context;
    property Controls: CommandBarControls read Get_Controls;
    property Enabled: WordBool read Get_Enabled;
    property Height: SYSINT read Get_Height;
    property Index: SYSINT read Get_Index;
    property InstanceId: Integer read Get_InstanceId;
    property Left: SYSINT read Get_Left;
    property Name: WideString read Get_Name;
    property NameLocal: WideString read Get_NameLocal;
    property Parent: IDispatch read Get_Parent;
    property Position: MsoBarPosition read Get_Position;
    property RowIndex: SYSINT read Get_RowIndex;
    property Protection: MsoBarProtection read Get_Protection;
    property Top: SYSINT read Get_Top;
    property Type_: MsoBarType read Get_Type_;
    property Visible: WordBool read Get_Visible;
    property Width: SYSINT read Get_Width;
    property AdaptiveMenu: WordBool read Get_AdaptiveMenu;
  end;

// *********************************************************************//
// DispIntf:  CommandBarDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0304-0000-0000-C000-000000000046}
// *********************************************************************//
  CommandBarDisp = dispinterface
    ['{000C0304-0000-0000-C000-000000000046}']
    property BuiltIn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874880;
    property Context {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874881;
    property Controls {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBarControls readonly dispid 1610874883;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874884;
    property Enabled {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874885;
    function  FindControl {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_12:0}Type_: OleVariant; 
                                                               {VT_12:0}Id: OleVariant; 
                                                               {VT_12:0}Tag: OleVariant; 
                                                               {VT_12:0}Visible: OleVariant; 
                                                               {VT_12:0}Recursive: OleVariant): CommandBarControl; dispid 1610874887;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874888;
    property Index {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874890;
    property InstanceId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610874891;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874892;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874894;
    property NameLocal {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874896;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610874898;
    property Position {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoBarPosition readonly dispid 1610874899;
    property RowIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874901;
    property Protection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoBarProtection readonly dispid 1610874903;
    procedure Reset {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874905;
    procedure ShowPopup {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_12:0}x: OleVariant; 
                                                             {VT_12:0}y: OleVariant); dispid 1610874906;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874907;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoBarType readonly dispid 1610874909;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874910;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874912;
    property AdaptiveMenu {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874914;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809345;
    property accParent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid -5000;
    property accChildCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid -5001;
    property accChild {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: IDispatch readonly dispid -5002;
    property accName {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5003;
    property accValue {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5004;
    property accDescription {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5005;
    property accRole {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5006;
    property accState {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5007;
    property accHelp {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5008;
    property accHelpTopic {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_8:1}out pszHelpFile: WideString; 
                                                               {VT_12:0}varChild: OleVariant]: Integer readonly dispid -5009;
    property accKeyboardShortcut {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5010;
    property accFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5011;
    property accSelection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5012;
    property accDefaultAction {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5013;
    procedure accSelect {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}flagsSelect: Integer; 
                                                             {VT_12:0}varChild: OleVariant); dispid -5014;
    procedure accLocation {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_3:1}out pxLeft: Integer; 
                                                               {VT_3:1}out pyTop: Integer; 
                                                               {VT_3:1}out pcxWidth: Integer; 
                                                               {VT_3:1}out pcyHeight: Integer; 
                                                               {VT_12:0}varChild: OleVariant); dispid -5015;
    function  accNavigate {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}navDir: Integer; 
                                                               {VT_12:0}varStart: OleVariant): OleVariant; dispid -5016;
    function  accHitTest {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}xLeft: Integer; 
                                                              {VT_3:0}yTop: Integer): OleVariant; dispid -5017;
    procedure accDoDefaultAction {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}varChild: OleVariant); dispid -5018;
  end;

// *********************************************************************//
// Interface: CommandBarControls
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0306-0000-0000-C000-000000000046}
// *********************************************************************//
  CommandBarControls = interface(_IMsoDispObj)
    ['{000C0306-0000-0000-C000-000000000046}']
    function  Add {Flags(1), (6/5) CC:0, INV:1, DBG:6}({VT_12:0}Type_: OleVariant; 
                                                       {VT_12:0}Id: OleVariant; 
                                                       {VT_12:0}Parameter: OleVariant; 
                                                       {VT_12:0}Before: OleVariant; 
                                                       {VT_12:0}Temporary: OleVariant): CommandBarControl; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Index: OleVariant): CommandBarControl; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBar; safecall;
    property Count: SYSINT read Get_Count;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Index: OleVariant]: CommandBarControl read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Parent: CommandBar read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  CommandBarControlsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0306-0000-0000-C000-000000000046}
// *********************************************************************//
  CommandBarControlsDisp = dispinterface
    ['{000C0306-0000-0000-C000-000000000046}']
    function  Add {Flags(2), (6/5) CC:0, INV:1, DBG:4}({VT_12:0}Type_: OleVariant; 
                                                       {VT_12:0}Id: OleVariant; 
                                                       {VT_12:0}Parameter: OleVariant; 
                                                       {VT_12:0}Before: OleVariant; 
                                                       {VT_12:0}Temporary: OleVariant): CommandBarControl; dispid 1610809344;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610809345;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Index: OleVariant]: CommandBarControl readonly dispid 0; default;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBar readonly dispid 1610809348;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: CommandBarControl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {000C0308-0000-0000-C000-000000000046}
// *********************************************************************//
  CommandBarControl = interface(_IMsoOleAccDispObj)
    ['{000C0308-0000-0000-C000-000000000046}']
    function  Get_BeginGroup {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_BeginGroup {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfBeginGroup: WordBool); safecall;
    function  Get_BuiltIn {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Caption {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrCaption: WideString); safecall;
    function  Get_Control {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Copy {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; safecall;
    procedure Delete {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Temporary: OleVariant); safecall;
    function  Get_DescriptionText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_DescriptionText {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrText: WideString); safecall;
    function  Get_Enabled {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Enabled {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfEnabled: WordBool); safecall;
    procedure Execute {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pdy: SYSINT); safecall;
    function  Get_HelpContextId {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_HelpContextId {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pid: SYSINT); safecall;
    function  Get_HelpFile {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HelpFile {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrFilename: WideString); safecall;
    function  Get_Id {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Index {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_InstanceId {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Move {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_OLEUsage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoControlOLEUsage; safecall;
    procedure Set_OLEUsage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}pcou: MsoControlOLEUsage); safecall;
    function  Get_OnAction {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OnAction {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrOnAction: WideString); safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBar; safecall;
    function  Get_Parameter {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Parameter {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrParam: WideString); safecall;
    function  Get_Priority {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Priority {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pnPri: SYSINT); safecall;
    procedure Reset {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SetFocus {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Tag {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Tag {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrTag: WideString); safecall;
    function  Get_TooltipText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_TooltipText {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrTooltip: WideString); safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoControlType; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfVisible: WordBool); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pdx: SYSINT); safecall;
    function  Get_IsPriorityDropped {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Reserved1 {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Reserved2 {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Reserved3 {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Reserved4 {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Reserved5 {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Reserved6 {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Reserved7 {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property BeginGroup: WordBool read Get_BeginGroup;
    property BuiltIn: WordBool read Get_BuiltIn;
    property Caption: WideString read Get_Caption;
    property Control: IDispatch read Get_Control;
    property DescriptionText: WideString read Get_DescriptionText;
    property Enabled: WordBool read Get_Enabled;
    property Height: SYSINT read Get_Height;
    property HelpContextId: SYSINT read Get_HelpContextId;
    property HelpFile: WideString read Get_HelpFile;
    property Id: SYSINT read Get_Id;
    property Index: SYSINT read Get_Index;
    property InstanceId: Integer read Get_InstanceId;
    property Left: SYSINT read Get_Left;
    property OLEUsage: MsoControlOLEUsage read Get_OLEUsage;
    property OnAction: WideString read Get_OnAction;
    property Parent: CommandBar read Get_Parent;
    property Parameter: WideString read Get_Parameter;
    property Priority: SYSINT read Get_Priority;
    property Tag: WideString read Get_Tag;
    property TooltipText: WideString read Get_TooltipText;
    property Top: SYSINT read Get_Top;
    property Type_: MsoControlType read Get_Type_;
    property Visible: WordBool read Get_Visible;
    property Width: SYSINT read Get_Width;
    property IsPriorityDropped: WordBool read Get_IsPriorityDropped;
  end;

// *********************************************************************//
// DispIntf:  CommandBarControlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {000C0308-0000-0000-C000-000000000046}
// *********************************************************************//
  CommandBarControlDisp = dispinterface
    ['{000C0308-0000-0000-C000-000000000046}']
    property BeginGroup {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874880;
    property BuiltIn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874882;
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874883;
    property Control {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610874885;
    function  Copy {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; dispid 1610874886;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Temporary: OleVariant); dispid 1610874887;
    property DescriptionText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874888;
    property Enabled {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874890;
    procedure Execute {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874892;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874893;
    property HelpContextId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874895;
    property HelpFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874897;
    property Id {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874899;
    property Index {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874900;
    property InstanceId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610874901;
    function  Move {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; dispid 1610874902;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874903;
    property OLEUsage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoControlOLEUsage readonly dispid 1610874904;
    property OnAction {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874906;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBar readonly dispid 1610874908;
    property Parameter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874909;
    property Priority {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874911;
    procedure Reset {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874913;
    procedure SetFocus {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874914;
    property Tag {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874915;
    property TooltipText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874917;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874919;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoControlType readonly dispid 1610874920;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874921;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874923;
    property IsPriorityDropped {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874925;
    procedure Reserved1 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874926;
    procedure Reserved2 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874927;
    procedure Reserved3 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874928;
    procedure Reserved4 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874929;
    procedure Reserved5 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874930;
    procedure Reserved6 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874931;
    procedure Reserved7 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874932;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809345;
    property accParent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid -5000;
    property accChildCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid -5001;
    property accChild {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: IDispatch readonly dispid -5002;
    property accName {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5003;
    property accValue {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5004;
    property accDescription {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5005;
    property accRole {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5006;
    property accState {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5007;
    property accHelp {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5008;
    property accHelpTopic {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_8:1}out pszHelpFile: WideString; 
                                                               {VT_12:0}varChild: OleVariant]: Integer readonly dispid -5009;
    property accKeyboardShortcut {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5010;
    property accFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5011;
    property accSelection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5012;
    property accDefaultAction {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5013;
    procedure accSelect {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}flagsSelect: Integer; 
                                                             {VT_12:0}varChild: OleVariant); dispid -5014;
    procedure accLocation {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_3:1}out pxLeft: Integer; 
                                                               {VT_3:1}out pyTop: Integer; 
                                                               {VT_3:1}out pcxWidth: Integer; 
                                                               {VT_3:1}out pcyHeight: Integer; 
                                                               {VT_12:0}varChild: OleVariant); dispid -5015;
    function  accNavigate {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}navDir: Integer; 
                                                               {VT_12:0}varStart: OleVariant): OleVariant; dispid -5016;
    function  accHitTest {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}xLeft: Integer; 
                                                              {VT_3:0}yTop: Integer): OleVariant; dispid -5017;
    procedure accDoDefaultAction {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}varChild: OleVariant); dispid -5018;
  end;

// *********************************************************************//
// Interface: _CommandBarButton
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C030E-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBarButton = interface(CommandBarControl)
    ['{000C030E-0000-0000-C000-000000000046}']
    function  Get_BuiltInFace {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_BuiltInFace {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfBuiltIn: WordBool); safecall;
    procedure CopyFace {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_FaceId {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_FaceId {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pid: SYSINT); safecall;
    procedure PasteFace {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_ShortcutText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ShortcutText {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrText: WideString); safecall;
    function  Get_State {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoButtonState; safecall;
    procedure Set_State {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}pstate: MsoButtonState); safecall;
    function  Get_Style {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoButtonStyle; safecall;
    procedure Set_Style {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}pstyle: MsoButtonStyle); safecall;
    function  Get_HyperlinkType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoCommandBarButtonHyperlinkType; safecall;
    procedure Set_HyperlinkType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}phlType: MsoCommandBarButtonHyperlinkType); safecall;
    property BuiltInFace: WordBool read Get_BuiltInFace;
    property FaceId: SYSINT read Get_FaceId;
    property ShortcutText: WideString read Get_ShortcutText;
    property State: MsoButtonState read Get_State;
    property Style: MsoButtonStyle read Get_Style;
    property HyperlinkType: MsoCommandBarButtonHyperlinkType read Get_HyperlinkType;
  end;

// *********************************************************************//
// DispIntf:  _CommandBarButtonDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C030E-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBarButtonDisp = dispinterface
    ['{000C030E-0000-0000-C000-000000000046}']
    property BuiltInFace {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610940416;
    procedure CopyFace {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610940418;
    property FaceId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610940419;
    procedure PasteFace {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610940421;
    property ShortcutText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610940422;
    property State {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoButtonState readonly dispid 1610940424;
    property Style {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoButtonStyle readonly dispid 1610940426;
    property HyperlinkType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoCommandBarButtonHyperlinkType readonly dispid 1610940428;
    property BeginGroup {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874880;
    property BuiltIn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874882;
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874883;
    property Control {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610874885;
    function  Copy {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; dispid 1610874886;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Temporary: OleVariant); dispid 1610874887;
    property DescriptionText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874888;
    property Enabled {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874890;
    procedure Execute {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874892;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874893;
    property HelpContextId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874895;
    property HelpFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874897;
    property Id {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874899;
    property Index {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874900;
    property InstanceId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610874901;
    function  Move {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; dispid 1610874902;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874903;
    property OLEUsage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoControlOLEUsage readonly dispid 1610874904;
    property OnAction {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874906;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBar readonly dispid 1610874908;
    property Parameter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874909;
    property Priority {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874911;
    procedure Reset {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874913;
    procedure SetFocus {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874914;
    property Tag {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874915;
    property TooltipText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874917;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874919;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoControlType readonly dispid 1610874920;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874921;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874923;
    property IsPriorityDropped {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874925;
    procedure Reserved1 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874926;
    procedure Reserved2 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874927;
    procedure Reserved3 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874928;
    procedure Reserved4 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874929;
    procedure Reserved5 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874930;
    procedure Reserved6 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874931;
    procedure Reserved7 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874932;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809345;
    property accParent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid -5000;
    property accChildCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid -5001;
    property accChild {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: IDispatch readonly dispid -5002;
    property accName {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5003;
    property accValue {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5004;
    property accDescription {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5005;
    property accRole {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5006;
    property accState {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5007;
    property accHelp {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5008;
    property accHelpTopic {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_8:1}out pszHelpFile: WideString; 
                                                               {VT_12:0}varChild: OleVariant]: Integer readonly dispid -5009;
    property accKeyboardShortcut {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5010;
    property accFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5011;
    property accSelection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5012;
    property accDefaultAction {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5013;
    procedure accSelect {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}flagsSelect: Integer; 
                                                             {VT_12:0}varChild: OleVariant); dispid -5014;
    procedure accLocation {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_3:1}out pxLeft: Integer; 
                                                               {VT_3:1}out pyTop: Integer; 
                                                               {VT_3:1}out pcxWidth: Integer; 
                                                               {VT_3:1}out pcyHeight: Integer; 
                                                               {VT_12:0}varChild: OleVariant); dispid -5015;
    function  accNavigate {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}navDir: Integer; 
                                                               {VT_12:0}varStart: OleVariant): OleVariant; dispid -5016;
    function  accHitTest {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}xLeft: Integer; 
                                                              {VT_3:0}yTop: Integer): OleVariant; dispid -5017;
    procedure accDoDefaultAction {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}varChild: OleVariant); dispid -5018;
  end;

// *********************************************************************//
// Interface: CommandBarPopup
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C030A-0000-0000-C000-000000000046}
// *********************************************************************//
  CommandBarPopup = interface(CommandBarControl)
    ['{000C030A-0000-0000-C000-000000000046}']
    function  Get_CommandBar {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBar; safecall;
    function  Get_Controls {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBarControls; safecall;
    function  Get_OLEMenuGroup {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoOLEMenuGroup; safecall;
    procedure Set_OLEMenuGroup {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}pomg: MsoOLEMenuGroup); safecall;
    property CommandBar: CommandBar read Get_CommandBar;
    property Controls: CommandBarControls read Get_Controls;
    property OLEMenuGroup: MsoOLEMenuGroup read Get_OLEMenuGroup;
  end;

// *********************************************************************//
// DispIntf:  CommandBarPopupDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C030A-0000-0000-C000-000000000046}
// *********************************************************************//
  CommandBarPopupDisp = dispinterface
    ['{000C030A-0000-0000-C000-000000000046}']
    property CommandBar {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBar readonly dispid 1610940416;
    property Controls {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBarControls readonly dispid 1610940417;
    property OLEMenuGroup {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoOLEMenuGroup readonly dispid 1610940418;
    property BeginGroup {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874880;
    property BuiltIn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874882;
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874883;
    property Control {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610874885;
    function  Copy {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; dispid 1610874886;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Temporary: OleVariant); dispid 1610874887;
    property DescriptionText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874888;
    property Enabled {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874890;
    procedure Execute {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874892;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874893;
    property HelpContextId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874895;
    property HelpFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874897;
    property Id {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874899;
    property Index {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874900;
    property InstanceId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610874901;
    function  Move {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; dispid 1610874902;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874903;
    property OLEUsage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoControlOLEUsage readonly dispid 1610874904;
    property OnAction {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874906;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBar readonly dispid 1610874908;
    property Parameter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874909;
    property Priority {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874911;
    procedure Reset {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874913;
    procedure SetFocus {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874914;
    property Tag {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874915;
    property TooltipText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874917;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874919;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoControlType readonly dispid 1610874920;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874921;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874923;
    property IsPriorityDropped {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874925;
    procedure Reserved1 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874926;
    procedure Reserved2 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874927;
    procedure Reserved3 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874928;
    procedure Reserved4 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874929;
    procedure Reserved5 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874930;
    procedure Reserved6 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874931;
    procedure Reserved7 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874932;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809345;
    property accParent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid -5000;
    property accChildCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid -5001;
    property accChild {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: IDispatch readonly dispid -5002;
    property accName {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5003;
    property accValue {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5004;
    property accDescription {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5005;
    property accRole {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5006;
    property accState {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5007;
    property accHelp {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5008;
    property accHelpTopic {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_8:1}out pszHelpFile: WideString; 
                                                               {VT_12:0}varChild: OleVariant]: Integer readonly dispid -5009;
    property accKeyboardShortcut {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5010;
    property accFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5011;
    property accSelection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5012;
    property accDefaultAction {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5013;
    procedure accSelect {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}flagsSelect: Integer; 
                                                             {VT_12:0}varChild: OleVariant); dispid -5014;
    procedure accLocation {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_3:1}out pxLeft: Integer; 
                                                               {VT_3:1}out pyTop: Integer; 
                                                               {VT_3:1}out pcxWidth: Integer; 
                                                               {VT_3:1}out pcyHeight: Integer; 
                                                               {VT_12:0}varChild: OleVariant); dispid -5015;
    function  accNavigate {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}navDir: Integer; 
                                                               {VT_12:0}varStart: OleVariant): OleVariant; dispid -5016;
    function  accHitTest {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}xLeft: Integer; 
                                                              {VT_3:0}yTop: Integer): OleVariant; dispid -5017;
    procedure accDoDefaultAction {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}varChild: OleVariant); dispid -5018;
  end;

// *********************************************************************//
// Interface: _CommandBarComboBox
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C030C-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBarComboBox = interface(CommandBarControl)
    ['{000C030C-0000-0000-C000-000000000046}']
    procedure AddItem {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Text: WideString; 
                                                           {VT_12:0}Index: OleVariant); safecall;
    procedure Clear {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_DropDownLines {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_DropDownLines {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pcLines: SYSINT); safecall;
    function  Get_DropDownWidth {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_DropDownWidth {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pdx: SYSINT); safecall;
    function  Get_List {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_22:0}Index: SYSINT): WideString; safecall;
    procedure Set_List {Flags(1), (2/2) CC:0, INV:4, DBG:6}({VT_22:0}Index: SYSINT; 
                                                            {VT_8:0}const pbstrItem: WideString); safecall;
    function  Get_ListCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_ListHeaderCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_ListHeaderCount {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pcItems: SYSINT); safecall;
    function  Get_ListIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_ListIndex {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pi: SYSINT); safecall;
    procedure RemoveItem {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_22:0}Index: SYSINT); safecall;
    function  Get_Style {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoComboStyle; safecall;
    procedure Set_Style {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}pstyle: MsoComboStyle); safecall;
    function  Get_Text {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Text {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrText: WideString); safecall;
    property DropDownLines: SYSINT read Get_DropDownLines;
    property DropDownWidth: SYSINT read Get_DropDownWidth;
    property List {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_22:0}Index: SYSINT]: WideString read Get_List;
    property ListCount: SYSINT read Get_ListCount;
    property ListHeaderCount: SYSINT read Get_ListHeaderCount;
    property ListIndex: SYSINT read Get_ListIndex;
    property Style: MsoComboStyle read Get_Style;
    property Text: WideString read Get_Text;
  end;

// *********************************************************************//
// DispIntf:  _CommandBarComboBoxDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C030C-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBarComboBoxDisp = dispinterface
    ['{000C030C-0000-0000-C000-000000000046}']
    procedure AddItem {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Text: WideString; 
                                                           {VT_12:0}Index: OleVariant); dispid 1610940416;
    procedure Clear {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610940417;
    property DropDownLines {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610940418;
    property DropDownWidth {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610940420;
    property List {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_22:0}Index: SYSINT]: WideString readonly dispid 1610940422;
    property ListCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610940424;
    property ListHeaderCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610940425;
    property ListIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610940427;
    procedure RemoveItem {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_22:0}Index: SYSINT); dispid 1610940429;
    property Style {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoComboStyle readonly dispid 1610940430;
    property Text {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610940432;
    property BeginGroup {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874880;
    property BuiltIn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874882;
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874883;
    property Control {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610874885;
    function  Copy {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; dispid 1610874886;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Temporary: OleVariant); dispid 1610874887;
    property DescriptionText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874888;
    property Enabled {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874890;
    procedure Execute {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874892;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874893;
    property HelpContextId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874895;
    property HelpFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874897;
    property Id {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874899;
    property Index {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874900;
    property InstanceId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610874901;
    function  Move {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; dispid 1610874902;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874903;
    property OLEUsage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoControlOLEUsage readonly dispid 1610874904;
    property OnAction {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874906;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBar readonly dispid 1610874908;
    property Parameter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874909;
    property Priority {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874911;
    procedure Reset {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874913;
    procedure SetFocus {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874914;
    property Tag {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874915;
    property TooltipText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874917;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874919;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoControlType readonly dispid 1610874920;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874921;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874923;
    property IsPriorityDropped {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874925;
    procedure Reserved1 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874926;
    procedure Reserved2 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874927;
    procedure Reserved3 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874928;
    procedure Reserved4 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874929;
    procedure Reserved5 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874930;
    procedure Reserved6 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874931;
    procedure Reserved7 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874932;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809345;
    property accParent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid -5000;
    property accChildCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid -5001;
    property accChild {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: IDispatch readonly dispid -5002;
    property accName {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5003;
    property accValue {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5004;
    property accDescription {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5005;
    property accRole {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5006;
    property accState {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5007;
    property accHelp {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5008;
    property accHelpTopic {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_8:1}out pszHelpFile: WideString; 
                                                               {VT_12:0}varChild: OleVariant]: Integer readonly dispid -5009;
    property accKeyboardShortcut {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5010;
    property accFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5011;
    property accSelection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5012;
    property accDefaultAction {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5013;
    procedure accSelect {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}flagsSelect: Integer; 
                                                             {VT_12:0}varChild: OleVariant); dispid -5014;
    procedure accLocation {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_3:1}out pxLeft: Integer; 
                                                               {VT_3:1}out pyTop: Integer; 
                                                               {VT_3:1}out pcxWidth: Integer; 
                                                               {VT_3:1}out pcyHeight: Integer; 
                                                               {VT_12:0}varChild: OleVariant); dispid -5015;
    function  accNavigate {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}navDir: Integer; 
                                                               {VT_12:0}varStart: OleVariant): OleVariant; dispid -5016;
    function  accHitTest {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}xLeft: Integer; 
                                                              {VT_3:0}yTop: Integer): OleVariant; dispid -5017;
    procedure accDoDefaultAction {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}varChild: OleVariant); dispid -5018;
  end;

// *********************************************************************//
// Interface: _CommandBarActiveX
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C030D-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBarActiveX = interface(CommandBarControl)
    ['{000C030D-0000-0000-C000-000000000046}']
    function  Get_ControlCLSID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ControlCLSID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstrClsid: WideString); safecall;
    function  Get_QueryControlInterface {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_8:0}const bstrIid: WideString): IUnknown; safecall;
    procedure SetInnerObjectFactory {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_13:0}const pUnk: IUnknown); safecall;
    procedure EnsureControl {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Set_InitWith {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_13:0}const Param1: IUnknown); safecall;
    property ControlCLSID: WideString read Get_ControlCLSID;
    property QueryControlInterface {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_8:0}const bstrIid: WideString]: IUnknown read Get_QueryControlInterface;
    property InitWith: IUnknown write Set_InitWith;
  end;

// *********************************************************************//
// DispIntf:  _CommandBarActiveXDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C030D-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBarActiveXDisp = dispinterface
    ['{000C030D-0000-0000-C000-000000000046}']
    property ControlCLSID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610940416;
    property QueryControlInterface {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_8:0}const bstrIid: WideString]: IUnknown readonly dispid 1610940418;
    procedure SetInnerObjectFactory {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_13:0}const pUnk: IUnknown); dispid 1610940419;
    procedure EnsureControl {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610940420;
    property InitWith {Flags(2), (1/0) CC:0, INV:4, DBG:6}: IUnknown writeonly dispid 1610940421;
    property BeginGroup {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874880;
    property BuiltIn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874882;
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874883;
    property Control {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610874885;
    function  Copy {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; dispid 1610874886;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Temporary: OleVariant); dispid 1610874887;
    property DescriptionText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874888;
    property Enabled {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874890;
    procedure Execute {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874892;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874893;
    property HelpContextId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874895;
    property HelpFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874897;
    property Id {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874899;
    property Index {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874900;
    property InstanceId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610874901;
    function  Move {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Bar: OleVariant; 
                                                        {VT_12:0}Before: OleVariant): CommandBarControl; dispid 1610874902;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874903;
    property OLEUsage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoControlOLEUsage readonly dispid 1610874904;
    property OnAction {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874906;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBar readonly dispid 1610874908;
    property Parameter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874909;
    property Priority {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874911;
    procedure Reset {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874913;
    procedure SetFocus {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874914;
    property Tag {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874915;
    property TooltipText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610874917;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874919;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoControlType readonly dispid 1610874920;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874921;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610874923;
    property IsPriorityDropped {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610874925;
    procedure Reserved1 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874926;
    procedure Reserved2 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874927;
    procedure Reserved3 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874928;
    procedure Reserved4 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874929;
    procedure Reserved5 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874930;
    procedure Reserved6 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874931;
    procedure Reserved7 {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610874932;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809345;
    property accParent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid -5000;
    property accChildCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid -5001;
    property accChild {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: IDispatch readonly dispid -5002;
    property accName {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5003;
    property accValue {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString dispid -5004;
    property accDescription {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5005;
    property accRole {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5006;
    property accState {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: OleVariant readonly dispid -5007;
    property accHelp {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5008;
    property accHelpTopic {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_8:1}out pszHelpFile: WideString; 
                                                               {VT_12:0}varChild: OleVariant]: Integer readonly dispid -5009;
    property accKeyboardShortcut {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5010;
    property accFocus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5011;
    property accSelection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid -5012;
    property accDefaultAction {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}varChild: OleVariant]: WideString readonly dispid -5013;
    procedure accSelect {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}flagsSelect: Integer; 
                                                             {VT_12:0}varChild: OleVariant); dispid -5014;
    procedure accLocation {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_3:1}out pxLeft: Integer; 
                                                               {VT_3:1}out pyTop: Integer; 
                                                               {VT_3:1}out pcxWidth: Integer; 
                                                               {VT_3:1}out pcyHeight: Integer; 
                                                               {VT_12:0}varChild: OleVariant); dispid -5015;
    function  accNavigate {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}navDir: Integer; 
                                                               {VT_12:0}varStart: OleVariant): OleVariant; dispid -5016;
    function  accHitTest {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}xLeft: Integer; 
                                                              {VT_3:0}yTop: Integer): OleVariant; dispid -5017;
    procedure accDoDefaultAction {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}varChild: OleVariant); dispid -5018;
  end;

// *********************************************************************//
// Interface: Adjustments
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0310-0000-0000-C000-000000000046}
// *********************************************************************//
  Adjustments = interface(_IMsoDispObj)
    ['{000C0310-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_22:0}Index: SYSINT): Single; safecall;
    procedure Set_Item {Flags(1), (2/2) CC:0, INV:4, DBG:6}({VT_22:0}Index: SYSINT; 
                                                            {VT_4:0}Val: Single); safecall;
    property Parent: IDispatch read Get_Parent;
    property Count: SYSINT read Get_Count;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_22:0}Index: SYSINT]: Single read Get_Item write Set_Item; default;
  end;

// *********************************************************************//
// DispIntf:  AdjustmentsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0310-0000-0000-C000-000000000046}
// *********************************************************************//
  AdjustmentsDisp = dispinterface
    ['{000C0310-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_22:0}Index: SYSINT]: Single dispid 0; default;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: CalloutFormat
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0311-0000-0000-C000-000000000046}
// *********************************************************************//
  CalloutFormat = interface(_IMsoDispObj)
    ['{000C0311-0000-0000-C000-000000000046}']
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
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0311-0000-0000-C000-000000000046}
// *********************************************************************//
  CalloutFormatDisp = dispinterface
    ['{000C0311-0000-0000-C000-000000000046}']
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
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: ColorFormat
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0312-0000-0000-C000-000000000046}
// *********************************************************************//
  ColorFormat = interface(_IMsoDispObj)
    ['{000C0312-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_RGB {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType; safecall;
    procedure Set_RGB {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}RGB: MsoRGBType); safecall;
    function  Get_SchemeColor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_SchemeColor {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}SchemeColor: SYSINT); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoColorType; safecall;
    property Parent: IDispatch read Get_Parent;
    property RGB: MsoRGBType read Get_RGB write Set_RGB;
    property SchemeColor: SYSINT read Get_SchemeColor write Set_SchemeColor;
    property Type_: MsoColorType read Get_Type_;
  end;

// *********************************************************************//
// DispIntf:  ColorFormatDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0312-0000-0000-C000-000000000046}
// *********************************************************************//
  ColorFormatDisp = dispinterface
    ['{000C0312-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property RGB {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoRGBType dispid 0;
    property SchemeColor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 100;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoColorType readonly dispid 101;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: ConnectorFormat
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0313-0000-0000-C000-000000000046}
// *********************************************************************//
  ConnectorFormat = interface(_IMsoDispObj)
    ['{000C0313-0000-0000-C000-000000000046}']
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
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0313-0000-0000-C000-000000000046}
// *********************************************************************//
  ConnectorFormatDisp = dispinterface
    ['{000C0313-0000-0000-C000-000000000046}']
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
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: FillFormat
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0314-0000-0000-C000-000000000046}
// *********************************************************************//
  FillFormat = interface(_IMsoDispObj)
    ['{000C0314-0000-0000-C000-000000000046}']
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
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0314-0000-0000-C000-000000000046}
// *********************************************************************//
  FillFormatDisp = dispinterface
    ['{000C0314-0000-0000-C000-000000000046}']
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
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: FreeformBuilder
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0315-0000-0000-C000-000000000046}
// *********************************************************************//
  FreeformBuilder = interface(_IMsoDispObj)
    ['{000C0315-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure AddNodes {Flags(1), (8/8) CC:0, INV:1, DBG:6}({VT_29:0}SegmentType: MsoSegmentType; 
                                                            {VT_29:0}EditingType: MsoEditingType; 
                                                            {VT_4:0}X1: Single; {VT_4:0}Y1: Single; 
                                                            {VT_4:0}X2: Single; {VT_4:0}Y2: Single; 
                                                            {VT_4:0}X3: Single; {VT_4:0}Y3: Single); safecall;
    function  ConvertToShape {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Shape; safecall;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  FreeformBuilderDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0315-0000-0000-C000-000000000046}
// *********************************************************************//
  FreeformBuilderDisp = dispinterface
    ['{000C0315-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure AddNodes {Flags(2), (8/8) CC:0, INV:1, DBG:4}({VT_29:0}SegmentType: MsoSegmentType; 
                                                            {VT_29:0}EditingType: MsoEditingType; 
                                                            {VT_4:0}X1: Single; {VT_4:0}Y1: Single; 
                                                            {VT_4:0}X2: Single; {VT_4:0}Y2: Single; 
                                                            {VT_4:0}X3: Single; {VT_4:0}Y3: Single); dispid 10;
    function  ConvertToShape {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Shape; dispid 11;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: GroupShapes
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0316-0000-0000-C000-000000000046}
// *********************************************************************//
  GroupShapes = interface(_IMsoDispObj)
    ['{000C0316-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): Shape; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    property Parent: IDispatch read Get_Parent;
    property Count: SYSINT read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  GroupShapesDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0316-0000-0000-C000-000000000046}
// *********************************************************************//
  GroupShapesDisp = dispinterface
    ['{000C0316-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): Shape; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: LineFormat
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0317-0000-0000-C000-000000000046}
// *********************************************************************//
  LineFormat = interface(_IMsoDispObj)
    ['{000C0317-0000-0000-C000-000000000046}']
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
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0317-0000-0000-C000-000000000046}
// *********************************************************************//
  LineFormatDisp = dispinterface
    ['{000C0317-0000-0000-C000-000000000046}']
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
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: ShapeNode
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0318-0000-0000-C000-000000000046}
// *********************************************************************//
  ShapeNode = interface(_IMsoDispObj)
    ['{000C0318-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_EditingType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoEditingType; safecall;
    function  Get_Points {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_SegmentType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoSegmentType; safecall;
    property Parent: IDispatch read Get_Parent;
    property EditingType: MsoEditingType read Get_EditingType;
    property Points: OleVariant read Get_Points;
    property SegmentType: MsoSegmentType read Get_SegmentType;
  end;

// *********************************************************************//
// DispIntf:  ShapeNodeDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0318-0000-0000-C000-000000000046}
// *********************************************************************//
  ShapeNodeDisp = dispinterface
    ['{000C0318-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property EditingType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoEditingType readonly dispid 100;
    property Points {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 101;
    property SegmentType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoSegmentType readonly dispid 102;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: ShapeNodes
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0319-0000-0000-C000-000000000046}
// *********************************************************************//
  ShapeNodes = interface(_IMsoDispObj)
    ['{000C0319-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): ShapeNode; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    procedure Delete {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_22:0}Index: SYSINT); safecall;
    procedure Insert {Flags(1), (9/9) CC:0, INV:1, DBG:6}({VT_22:0}Index: SYSINT; 
                                                          {VT_29:0}SegmentType: MsoSegmentType; 
                                                          {VT_29:0}EditingType: MsoEditingType; 
                                                          {VT_4:0}X1: Single; {VT_4:0}Y1: Single; 
                                                          {VT_4:0}X2: Single; {VT_4:0}Y2: Single; 
                                                          {VT_4:0}X3: Single; {VT_4:0}Y3: Single); safecall;
    procedure SetEditingType {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_22:0}Index: SYSINT; 
                                                                  {VT_29:0}EditingType: MsoEditingType); safecall;
    procedure SetPosition {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_22:0}Index: SYSINT; 
                                                               {VT_4:0}X1: Single; 
                                                               {VT_4:0}Y1: Single); safecall;
    procedure SetSegmentType {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_22:0}Index: SYSINT; 
                                                                  {VT_29:0}SegmentType: MsoSegmentType); safecall;
    property Parent: IDispatch read Get_Parent;
    property Count: SYSINT read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  ShapeNodesDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0319-0000-0000-C000-000000000046}
// *********************************************************************//
  ShapeNodesDisp = dispinterface
    ['{000C0319-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): ShapeNode; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_22:0}Index: SYSINT); dispid 11;
    procedure Insert {Flags(2), (9/9) CC:0, INV:1, DBG:4}({VT_22:0}Index: SYSINT; 
                                                          {VT_29:0}SegmentType: MsoSegmentType; 
                                                          {VT_29:0}EditingType: MsoEditingType; 
                                                          {VT_4:0}X1: Single; {VT_4:0}Y1: Single; 
                                                          {VT_4:0}X2: Single; {VT_4:0}Y2: Single; 
                                                          {VT_4:0}X3: Single; {VT_4:0}Y3: Single); dispid 12;
    procedure SetEditingType {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_22:0}Index: SYSINT; 
                                                                  {VT_29:0}EditingType: MsoEditingType); dispid 13;
    procedure SetPosition {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_22:0}Index: SYSINT; 
                                                               {VT_4:0}X1: Single; 
                                                               {VT_4:0}Y1: Single); dispid 14;
    procedure SetSegmentType {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_22:0}Index: SYSINT; 
                                                                  {VT_29:0}SegmentType: MsoSegmentType); dispid 15;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: PictureFormat
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031A-0000-0000-C000-000000000046}
// *********************************************************************//
  PictureFormat = interface(_IMsoDispObj)
    ['{000C031A-0000-0000-C000-000000000046}']
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
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031A-0000-0000-C000-000000000046}
// *********************************************************************//
  PictureFormatDisp = dispinterface
    ['{000C031A-0000-0000-C000-000000000046}']
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
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: ShadowFormat
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031B-0000-0000-C000-000000000046}
// *********************************************************************//
  ShadowFormat = interface(_IMsoDispObj)
    ['{000C031B-0000-0000-C000-000000000046}']
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
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031B-0000-0000-C000-000000000046}
// *********************************************************************//
  ShadowFormatDisp = dispinterface
    ['{000C031B-0000-0000-C000-000000000046}']
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
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: Script
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0341-0000-0000-C000-000000000046}
// *********************************************************************//
  Script = interface(_IMsoDispObj)
    ['{000C0341-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Extended {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Extended {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Extended: WideString); safecall;
    function  Get_Id {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Id {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Id: WideString); safecall;
    function  Get_Language {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoScriptLanguage; safecall;
    procedure Set_Language {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Language: MsoScriptLanguage); safecall;
    function  Get_Location {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoScriptLocation; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Shape {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_ScriptText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ScriptText {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Script: WideString); safecall;
    property Parent: IDispatch read Get_Parent;
    property Extended: WideString read Get_Extended;
    property Id: WideString read Get_Id;
    property Language: MsoScriptLanguage read Get_Language;
    property Location: MsoScriptLocation read Get_Location;
    property Shape: IDispatch read Get_Shape;
    property ScriptText: WideString read Get_ScriptText write Set_ScriptText;
  end;

// *********************************************************************//
// DispIntf:  ScriptDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0341-0000-0000-C000-000000000046}
// *********************************************************************//
  ScriptDisp = dispinterface
    ['{000C0341-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Extended {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809345;
    property Id {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809347;
    property Language {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoScriptLanguage readonly dispid 1610809349;
    property Location {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoScriptLocation readonly dispid 1610809351;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809352;
    property Shape {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809353;
    property ScriptText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 0;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: Scripts
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0340-0000-0000-C000-000000000046}
// *********************************************************************//
  Scripts = interface(_IMsoDispObj)
    ['{000C0340-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): Script; safecall;
    function  Add {Flags(1), (7/6) CC:0, INV:1, DBG:6}({VT_9:0}const Anchor: IDispatch; 
                                                       {VT_29:0}Location: MsoScriptLocation; 
                                                       {VT_29:0}Language: MsoScriptLanguage; 
                                                       {VT_8:0}const Id: WideString; 
                                                       {VT_8:0}const Extended: WideString; 
                                                       {VT_8:0}const ScriptText: WideString): Script; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  ScriptsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0340-0000-0000-C000-000000000046}
// *********************************************************************//
  ScriptsDisp = dispinterface
    ['{000C0340-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809345;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): Script; dispid 0;
    function  Add {Flags(2), (7/6) CC:0, INV:1, DBG:4}({VT_9:0}const Anchor: IDispatch; 
                                                       {VT_29:0}Location: MsoScriptLocation; 
                                                       {VT_29:0}Language: MsoScriptLanguage; 
                                                       {VT_8:0}const Id: WideString; 
                                                       {VT_8:0}const Extended: WideString; 
                                                       {VT_8:0}const ScriptText: WideString): Script; dispid 1610809348;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809349;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: Shape
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031C-0000-0000-C000-000000000046}
// *********************************************************************//
  Shape = interface(_IMsoDispObj)
    ['{000C031C-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Apply {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Duplicate {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Shape; safecall;
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
    procedure Select {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Replace: OleVariant); safecall;
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
    function  Get_Script {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Script; safecall;
    function  Get_AlternativeText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_AlternativeText {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const AlternativeText: WideString); safecall;
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
    property Script: Script read Get_Script;
    property AlternativeText: WideString read Get_AlternativeText write Set_AlternativeText;
  end;

// *********************************************************************//
// DispIntf:  ShapeDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031C-0000-0000-C000-000000000046}
// *********************************************************************//
  ShapeDisp = dispinterface
    ['{000C031C-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    procedure Apply {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 10;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 11;
    function  Duplicate {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Shape; dispid 12;
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
    procedure Select {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Replace: OleVariant); dispid 21;
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
    property Script {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Script readonly dispid 130;
    property AlternativeText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 131;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: ShapeRange
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031D-0000-0000-C000-000000000046}
// *********************************************************************//
  ShapeRange = interface(_IMsoDispObj)
    ['{000C031D-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): Shape; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    procedure Align {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_29:0}AlignCmd: MsoAlignCmd; 
                                                         {VT_29:0}RelativeTo: MsoTriState); safecall;
    procedure Apply {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Distribute {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_29:0}DistributeCmd: MsoDistributeCmd; 
                                                              {VT_29:0}RelativeTo: MsoTriState); safecall;
    function  Duplicate {Flags(1), (1/0) CC:0, INV:1, DBG:6}: ShapeRange; safecall;
    procedure Flip {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}FlipCmd: MsoFlipCmd); safecall;
    procedure IncrementLeft {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure IncrementRotation {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    procedure IncrementTop {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_4:0}Increment: Single); safecall;
    function  Group {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Shape; safecall;
    procedure PickUp {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Regroup {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Shape; safecall;
    procedure RerouteConnections {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure ScaleHeight {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_4:0}Factor: Single; 
                                                               {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                               {VT_29:0}fScale: MsoScaleFrom); safecall;
    procedure ScaleWidth {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_4:0}Factor: Single; 
                                                              {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                              {VT_29:0}fScale: MsoScaleFrom); safecall;
    procedure Select {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Replace: OleVariant); safecall;
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
    function  Get_Script {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Script; safecall;
    function  Get_AlternativeText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_AlternativeText {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const AlternativeText: WideString); safecall;
    property Parent: IDispatch read Get_Parent;
    property Count: SYSINT read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
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
    property Script: Script read Get_Script;
    property AlternativeText: WideString read Get_AlternativeText write Set_AlternativeText;
  end;

// *********************************************************************//
// DispIntf:  ShapeRangeDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031D-0000-0000-C000-000000000046}
// *********************************************************************//
  ShapeRangeDisp = dispinterface
    ['{000C031D-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): Shape; dispid 0;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    procedure Align {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:0}AlignCmd: MsoAlignCmd; 
                                                         {VT_29:0}RelativeTo: MsoTriState); dispid 10;
    procedure Apply {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 11;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 12;
    procedure Distribute {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:0}DistributeCmd: MsoDistributeCmd; 
                                                              {VT_29:0}RelativeTo: MsoTriState); dispid 13;
    function  Duplicate {Flags(2), (1/0) CC:0, INV:1, DBG:4}: ShapeRange; dispid 14;
    procedure Flip {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}FlipCmd: MsoFlipCmd); dispid 15;
    procedure IncrementLeft {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 16;
    procedure IncrementRotation {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 17;
    procedure IncrementTop {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_4:0}Increment: Single); dispid 18;
    function  Group {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Shape; dispid 19;
    procedure PickUp {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 20;
    function  Regroup {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Shape; dispid 21;
    procedure RerouteConnections {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 22;
    procedure ScaleHeight {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_4:0}Factor: Single; 
                                                               {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                               {VT_29:0}fScale: MsoScaleFrom); dispid 23;
    procedure ScaleWidth {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_4:0}Factor: Single; 
                                                              {VT_29:0}RelativeToOriginalSize: MsoTriState; 
                                                              {VT_29:0}fScale: MsoScaleFrom); dispid 24;
    procedure Select {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Replace: OleVariant); dispid 25;
    procedure SetShapesDefaultProperties {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 26;
    function  Ungroup {Flags(2), (1/0) CC:0, INV:1, DBG:4}: ShapeRange; dispid 27;
    procedure ZOrder {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}ZOrderCmd: MsoZOrderCmd); dispid 28;
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
    property Script {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Script readonly dispid 130;
    property AlternativeText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 131;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: Shapes
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031E-0000-0000-C000-000000000046}
// *********************************************************************//
  Shapes = interface(_IMsoDispObj)
    ['{000C031E-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): Shape; safecall;
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
    function  Range {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): ShapeRange; safecall;
    procedure SelectAll {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Background {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Shape; safecall;
    function  Get_Default {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Shape; safecall;
    property Parent: IDispatch read Get_Parent;
    property Count: SYSINT read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Background: Shape read Get_Background;
    property Default: Shape read Get_Default;
  end;

// *********************************************************************//
// DispIntf:  ShapesDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031E-0000-0000-C000-000000000046}
// *********************************************************************//
  ShapesDisp = dispinterface
    ['{000C031E-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 2;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): Shape; dispid 0;
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
    function  Range {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): ShapeRange; dispid 21;
    procedure SelectAll {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 22;
    property Background {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Shape readonly dispid 100;
    property Default {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Shape readonly dispid 101;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: TextEffectFormat
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031F-0000-0000-C000-000000000046}
// *********************************************************************//
  TextEffectFormat = interface(_IMsoDispObj)
    ['{000C031F-0000-0000-C000-000000000046}']
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
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C031F-0000-0000-C000-000000000046}
// *********************************************************************//
  TextEffectFormatDisp = dispinterface
    ['{000C031F-0000-0000-C000-000000000046}']
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
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: TextFrame
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0320-0000-0000-C000-000000000046}
// *********************************************************************//
  TextFrame = interface(_IMsoDispObj)
    ['{000C0320-0000-0000-C000-000000000046}']
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
    property Parent: IDispatch read Get_Parent;
    property MarginBottom: Single read Get_MarginBottom write Set_MarginBottom;
    property MarginLeft: Single read Get_MarginLeft write Set_MarginLeft;
    property MarginRight: Single read Get_MarginRight write Set_MarginRight;
    property MarginTop: Single read Get_MarginTop write Set_MarginTop;
    property Orientation: MsoTextOrientation read Get_Orientation write Set_Orientation;
  end;

// *********************************************************************//
// DispIntf:  TextFrameDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0320-0000-0000-C000-000000000046}
// *********************************************************************//
  TextFrameDisp = dispinterface
    ['{000C0320-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1;
    property MarginBottom {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 100;
    property MarginLeft {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 101;
    property MarginRight {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 102;
    property MarginTop {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 103;
    property Orientation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoTextOrientation dispid 104;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: ThreeDFormat
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0321-0000-0000-C000-000000000046}
// *********************************************************************//
  ThreeDFormat = interface(_IMsoDispObj)
    ['{000C0321-0000-0000-C000-000000000046}']
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
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0321-0000-0000-C000-000000000046}
// *********************************************************************//
  ThreeDFormatDisp = dispinterface
    ['{000C0321-0000-0000-C000-000000000046}']
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
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: IMsoDispCagNotifySink
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0359-0000-0000-C000-000000000046}
// *********************************************************************//
  IMsoDispCagNotifySink = interface(IDispatch)
    ['{000C0359-0000-0000-C000-000000000046}']
    procedure InsertClip {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_13:0}const pClipMoniker: IUnknown; 
                                                              {VT_13:0}const pItemMoniker: IUnknown); safecall;
    procedure WindowIsClosing {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
  end;

// *********************************************************************//
// DispIntf:  IMsoDispCagNotifySinkDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0359-0000-0000-C000-000000000046}
// *********************************************************************//
  IMsoDispCagNotifySinkDisp = dispinterface
    ['{000C0359-0000-0000-C000-000000000046}']
    procedure InsertClip {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_13:0}const pClipMoniker: IUnknown; 
                                                              {VT_13:0}const pItemMoniker: IUnknown); dispid 1;
    procedure WindowIsClosing {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2;
  end;

// *********************************************************************//
// Interface: Balloon
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0324-0000-0000-C000-000000000046}
// *********************************************************************//
  Balloon = interface(_IMsoDispObj)
    ['{000C0324-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Checkboxes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Labels {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Set_BalloonType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}pbty: MsoBalloonType); safecall;
    function  Get_BalloonType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoBalloonType; safecall;
    procedure Set_Icon {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}picn: MsoIconType); safecall;
    function  Get_Icon {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoIconType; safecall;
    procedure Set_Heading {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Heading {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Text {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Text {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mode {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}pmd: MsoModeType); safecall;
    function  Get_Mode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoModeType; safecall;
    procedure Set_Animation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}pfca: MsoAnimationType); safecall;
    function  Get_Animation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoAnimationType; safecall;
    procedure Set_Button {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}psbs: MsoButtonSetType); safecall;
    function  Get_Button {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoButtonSetType; safecall;
    procedure Set_Callback {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Callback {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Private_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}plPrivate: Integer); safecall;
    function  Get_Private_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure SetAvoidRectangle {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_22:0}Left: SYSINT; 
                                                                     {VT_22:0}Top: SYSINT; 
                                                                     {VT_22:0}Right: SYSINT; 
                                                                     {VT_22:0}Bottom: SYSINT); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Show {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MsoBalloonButtonType; safecall;
    procedure Close {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Parent: IDispatch read Get_Parent;
    property Checkboxes: IDispatch read Get_Checkboxes;
    property Labels: IDispatch read Get_Labels;
    property BalloonType: MsoBalloonType write Set_BalloonType;
    property Icon: MsoIconType write Set_Icon;
    property Heading: WideString write Set_Heading;
    property Text: WideString write Set_Text;
    property Mode: MsoModeType write Set_Mode;
    property Animation: MsoAnimationType write Set_Animation;
    property Button: MsoButtonSetType write Set_Button;
    property Callback: WideString write Set_Callback;
    property Private_: Integer write Set_Private_;
    property Name: WideString read Get_Name;
  end;

// *********************************************************************//
// DispIntf:  BalloonDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0324-0000-0000-C000-000000000046}
// *********************************************************************//
  BalloonDisp = dispinterface
    ['{000C0324-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Checkboxes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809345;
    property Labels {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809346;
    property BalloonType {Flags(2), (1/0) CC:0, INV:4, DBG:6}: MsoBalloonType writeonly dispid 1610809347;
    property Icon {Flags(2), (1/0) CC:0, INV:4, DBG:6}: MsoIconType writeonly dispid 1610809349;
    property Heading {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809351;
    property Text {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809353;
    property Mode {Flags(2), (1/0) CC:0, INV:4, DBG:6}: MsoModeType writeonly dispid 1610809355;
    property Animation {Flags(2), (1/0) CC:0, INV:4, DBG:6}: MsoAnimationType writeonly dispid 1610809357;
    property Button {Flags(2), (1/0) CC:0, INV:4, DBG:6}: MsoButtonSetType writeonly dispid 1610809359;
    property Callback {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809361;
    property Private_ {Flags(2), (1/0) CC:0, INV:4, DBG:6}: Integer writeonly dispid 1610809363;
    procedure SetAvoidRectangle {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_22:0}Left: SYSINT; 
                                                                     {VT_22:0}Top: SYSINT; 
                                                                     {VT_22:0}Right: SYSINT; 
                                                                     {VT_22:0}Bottom: SYSINT); dispid 1610809365;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809366;
    function  Show {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MsoBalloonButtonType; dispid 1610809367;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809368;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: BalloonCheckboxes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0326-0000-0000-C000-000000000046}
// *********************************************************************//
  BalloonCheckboxes = interface(_IMsoDispObj)
    ['{000C0326-0000-0000-C000-000000000046}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_22:0}Index: SYSINT): IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Count {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pccbx: SYSINT); safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    property Name: WideString read Get_Name;
    property Parent: IDispatch read Get_Parent;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_22:0}Index: SYSINT]: IDispatch read Get_Item; default;
    property Count: SYSINT read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  BalloonCheckboxesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0326-0000-0000-C000-000000000046}
// *********************************************************************//
  BalloonCheckboxesDisp = dispinterface
    ['{000C0326-0000-0000-C000-000000000046}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809344;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809345;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_22:0}Index: SYSINT]: IDispatch readonly dispid 0; default;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610809347;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: BalloonCheckbox
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0328-0000-0000-C000-000000000046}
// *********************************************************************//
  BalloonCheckbox = interface(_IMsoDispObj)
    ['{000C0328-0000-0000-C000-000000000046}']
    function  Get_Item {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Set_Checked {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfChecked: WordBool); safecall;
    function  Get_Checked {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Text {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Text {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    property Item: WideString read Get_Item;
    property Name: WideString read Get_Name;
    property Parent: IDispatch read Get_Parent;
    property Checked: WordBool write Set_Checked;
    property Text: WideString write Set_Text;
  end;

// *********************************************************************//
// DispIntf:  BalloonCheckboxDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0328-0000-0000-C000-000000000046}
// *********************************************************************//
  BalloonCheckboxDisp = dispinterface
    ['{000C0328-0000-0000-C000-000000000046}']
    property Item {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 0;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809345;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809346;
    property Checked {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809347;
    property Text {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809349;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: BalloonLabels
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C032E-0000-0000-C000-000000000046}
// *********************************************************************//
  BalloonLabels = interface(_IMsoDispObj)
    ['{000C032E-0000-0000-C000-000000000046}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_22:0}Index: SYSINT): IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Count {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pcwz: SYSINT); safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    property Name: WideString read Get_Name;
    property Parent: IDispatch read Get_Parent;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_22:0}Index: SYSINT]: IDispatch read Get_Item; default;
    property Count: SYSINT read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  BalloonLabelsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C032E-0000-0000-C000-000000000046}
// *********************************************************************//
  BalloonLabelsDisp = dispinterface
    ['{000C032E-0000-0000-C000-000000000046}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809344;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809345;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_22:0}Index: SYSINT]: IDispatch readonly dispid 0; default;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610809347;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: BalloonLabel
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0330-0000-0000-C000-000000000046}
// *********************************************************************//
  BalloonLabel = interface(_IMsoDispObj)
    ['{000C0330-0000-0000-C000-000000000046}']
    function  Get_Item {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Set_Text {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Text {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    property Item: WideString read Get_Item;
    property Name: WideString read Get_Name;
    property Parent: IDispatch read Get_Parent;
    property Text: WideString write Set_Text;
  end;

// *********************************************************************//
// DispIntf:  BalloonLabelDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0330-0000-0000-C000-000000000046}
// *********************************************************************//
  BalloonLabelDisp = dispinterface
    ['{000C0330-0000-0000-C000-000000000046}']
    property Item {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 0;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809345;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809346;
    property Text {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809347;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: AnswerWizardFiles
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0361-0000-0000-C000-000000000046}
// *********************************************************************//
  AnswerWizardFiles = interface(_IMsoDispObj)
    ['{000C0361-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_22:0}Index: SYSINT): WideString; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Add {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString); safecall;
    procedure Delete {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString); safecall;
    property Parent: IDispatch read Get_Parent;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_22:0}Index: SYSINT]: WideString read Get_Item; default;
    property Count: SYSINT read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  AnswerWizardFilesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0361-0000-0000-C000-000000000046}
// *********************************************************************//
  AnswerWizardFilesDisp = dispinterface
    ['{000C0361-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_22:0}Index: SYSINT]: WideString readonly dispid 0; default;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610809346;
    procedure Add {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString); dispid 1610809347;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString); dispid 1610809348;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: AnswerWizard
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0360-0000-0000-C000-000000000046}
// *********************************************************************//
  AnswerWizard = interface(_IMsoDispObj)
    ['{000C0360-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Files {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AnswerWizardFiles; safecall;
    procedure ClearFileList {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure ResetFileList {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Parent: IDispatch read Get_Parent;
    property Files: AnswerWizardFiles read Get_Files;
  end;

// *********************************************************************//
// DispIntf:  AnswerWizardDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0360-0000-0000-C000-000000000046}
// *********************************************************************//
  AnswerWizardDisp = dispinterface
    ['{000C0360-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    property Files {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AnswerWizardFiles readonly dispid 1610809345;
    procedure ClearFileList {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809346;
    procedure ResetFileList {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809347;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: Assistant
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0322-0000-0000-C000-000000000046}
// *********************************************************************//
  Assistant = interface(_IMsoDispObj)
    ['{000C0322-0000-0000-C000-000000000046}']
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Move {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_22:0}xLeft: SYSINT; 
                                                        {VT_22:0}yTop: SYSINT); safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pyTop: SYSINT); safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pxLeft: SYSINT); safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Help {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  StartWizard {Flags(1), (10/9) CC:0, INV:1, DBG:6}({VT_11:0}On_: WordBool; 
                                                                {VT_8:0}const Callback: WideString; 
                                                                {VT_3:0}PrivateX: Integer; 
                                                                {VT_12:0}Animation: OleVariant; 
                                                                {VT_12:0}CustomTeaser: OleVariant; 
                                                                {VT_12:0}Top: OleVariant; 
                                                                {VT_12:0}Left: OleVariant; 
                                                                {VT_12:0}Bottom: OleVariant; 
                                                                {VT_12:0}Right: OleVariant): Integer; safecall;
    procedure EndWizard {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_3:0}WizardID: Integer; 
                                                             {VT_11:0}varfSuccess: WordBool; 
                                                             {VT_12:0}Animation: OleVariant); safecall;
    procedure ActivateWizard {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_3:0}WizardID: Integer; 
                                                                  {VT_29:0}act: MsoWizardActType; 
                                                                  {VT_12:0}Animation: OleVariant); safecall;
    procedure ResetTips {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_NewBalloon {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Balloon; safecall;
    function  Get_BalloonError {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoBalloonErrorType; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfVisible: WordBool); safecall;
    function  Get_Animation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoAnimationType; safecall;
    procedure Set_Animation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}pfca: MsoAnimationType); safecall;
    function  Get_Reduced {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Reduced {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfReduced: WordBool); safecall;
    procedure Set_AssistWithHelp {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfAssistWithHelp: WordBool); safecall;
    function  Get_AssistWithHelp {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_AssistWithWizards {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfAssistWithWizards: WordBool); safecall;
    function  Get_AssistWithWizards {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_AssistWithAlerts {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfAssistWithAlerts: WordBool); safecall;
    function  Get_AssistWithAlerts {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_MoveWhenInTheWay {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfMove: WordBool); safecall;
    function  Get_MoveWhenInTheWay {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Sounds {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfSounds: WordBool); safecall;
    function  Get_Sounds {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_FeatureTips {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfFeatures: WordBool); safecall;
    function  Get_FeatureTips {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_MouseTips {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfMouse: WordBool); safecall;
    function  Get_MouseTips {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_KeyboardShortcutTips {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfKeyboardShortcuts: WordBool); safecall;
    function  Get_KeyboardShortcutTips {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_HighPriorityTips {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfHighPriorityTips: WordBool); safecall;
    function  Get_HighPriorityTips {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_TipOfDay {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfTipOfDay: WordBool); safecall;
    function  Get_TipOfDay {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_GuessHelp {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfGuessHelp: WordBool); safecall;
    function  Get_GuessHelp {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_SearchWhenProgramming {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfSearchInProgram: WordBool); safecall;
    function  Get_SearchWhenProgramming {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Item {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FileName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_FileName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_On_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_On_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pvarfOn: WordBool); safecall;
    property Parent: IDispatch read Get_Parent;
    property Top: SYSINT write Set_Top;
    property Left: SYSINT write Set_Left;
    property NewBalloon: Balloon read Get_NewBalloon;
    property BalloonError: MsoBalloonErrorType read Get_BalloonError;
    property Visible: WordBool read Get_Visible;
    property Animation: MsoAnimationType read Get_Animation;
    property Reduced: WordBool read Get_Reduced;
    property AssistWithHelp: WordBool write Set_AssistWithHelp;
    property AssistWithWizards: WordBool write Set_AssistWithWizards;
    property AssistWithAlerts: WordBool write Set_AssistWithAlerts;
    property MoveWhenInTheWay: WordBool write Set_MoveWhenInTheWay;
    property Sounds: WordBool write Set_Sounds;
    property FeatureTips: WordBool write Set_FeatureTips;
    property MouseTips: WordBool write Set_MouseTips;
    property KeyboardShortcutTips: WordBool write Set_KeyboardShortcutTips;
    property HighPriorityTips: WordBool write Set_HighPriorityTips;
    property TipOfDay: WordBool write Set_TipOfDay;
    property GuessHelp: WordBool write Set_GuessHelp;
    property SearchWhenProgramming: WordBool write Set_SearchWhenProgramming;
    property Item: WideString read Get_Item;
    property FileName: WideString read Get_FileName;
    property Name: WideString read Get_Name;
    property On_: WordBool read Get_On_;
  end;

// *********************************************************************//
// DispIntf:  AssistantDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0322-0000-0000-C000-000000000046}
// *********************************************************************//
  AssistantDisp = dispinterface
    ['{000C0322-0000-0000-C000-000000000046}']
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610809344;
    procedure Move {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_22:0}xLeft: SYSINT; 
                                                        {VT_22:0}yTop: SYSINT); dispid 1610809345;
    property Top {Flags(2), (1/0) CC:0, INV:4, DBG:6}: SYSINT writeonly dispid 1610809346;
    property Left {Flags(2), (1/0) CC:0, INV:4, DBG:6}: SYSINT writeonly dispid 1610809348;
    procedure Help {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809350;
    function  StartWizard {Flags(2), (10/9) CC:0, INV:1, DBG:4}({VT_11:0}On_: WordBool; 
                                                                {VT_8:0}const Callback: WideString; 
                                                                {VT_3:0}PrivateX: Integer; 
                                                                {VT_12:0}Animation: OleVariant; 
                                                                {VT_12:0}CustomTeaser: OleVariant; 
                                                                {VT_12:0}Top: OleVariant; 
                                                                {VT_12:0}Left: OleVariant; 
                                                                {VT_12:0}Bottom: OleVariant; 
                                                                {VT_12:0}Right: OleVariant): Integer; dispid 1610809351;
    procedure EndWizard {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_3:0}WizardID: Integer; 
                                                             {VT_11:0}varfSuccess: WordBool; 
                                                             {VT_12:0}Animation: OleVariant); dispid 1610809352;
    procedure ActivateWizard {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_3:0}WizardID: Integer; 
                                                                  {VT_29:0}act: MsoWizardActType; 
                                                                  {VT_12:0}Animation: OleVariant); dispid 1610809353;
    procedure ResetTips {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809354;
    property NewBalloon {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Balloon readonly dispid 1610809355;
    property BalloonError {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoBalloonErrorType readonly dispid 1610809356;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809357;
    property Animation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoAnimationType readonly dispid 1610809359;
    property Reduced {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809361;
    property AssistWithHelp {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809363;
    property AssistWithWizards {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809365;
    property AssistWithAlerts {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809367;
    property MoveWhenInTheWay {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809369;
    property Sounds {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809371;
    property FeatureTips {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809373;
    property MouseTips {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809375;
    property KeyboardShortcutTips {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809377;
    property HighPriorityTips {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809379;
    property TipOfDay {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809381;
    property GuessHelp {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809383;
    property SearchWhenProgramming {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WordBool writeonly dispid 1610809385;
    property Item {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 0;
    property FileName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809388;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809390;
    property On_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809391;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: DocumentProperty
// Flags:     (4096) Dispatchable
// GUID:      {2DF8D04E-5BFA-101B-BDE5-00AA0044DE52}
// *********************************************************************//
  DocumentProperty = interface(IDispatch)
    ['{2DF8D04E-5BFA-101B-BDE5-00AA0044DE52}']
    function  Get_Parent {Flags(1), (0/0) CC:4, INV:2, DBG:6}: IDispatch; stdcall;
    function  Delete {Flags(1), (0/0) CC:4, INV:1, DBG:6}: HResult; stdcall;
    function  Get_Name {Flags(1), (2/2) CC:4, INV:2, DBG:6}({VT_3:0}lcid: Integer; 
                                                            {VT_8:1}out pbstrRetVal: WideString): HResult; stdcall;
    function  Set_Name {Flags(1), (2/2) CC:4, INV:4, DBG:6}({VT_3:0}lcid: Integer; 
                                                            {VT_8:0}const pbstrRetVal: WideString): HResult; stdcall;
    function  Get_Value {Flags(1), (2/2) CC:4, INV:2, DBG:6}({VT_3:0}lcid: Integer; 
                                                             {VT_12:1}out pvargRetVal: OleVariant): HResult; stdcall;
    function  Set_Value {Flags(1), (2/2) CC:4, INV:4, DBG:6}({VT_3:0}lcid: Integer; 
                                                             {VT_12:0}pvargRetVal: OleVariant): HResult; stdcall;
    function  Get_Type_ {Flags(1), (2/2) CC:4, INV:2, DBG:6}({VT_3:0}lcid: Integer; 
                                                             {VT_29:1}out ptypeRetVal: MsoDocProperties): HResult; stdcall;
    function  Set_Type_ {Flags(1), (2/2) CC:4, INV:4, DBG:6}({VT_3:0}lcid: Integer; 
                                                             {VT_29:0}ptypeRetVal: MsoDocProperties): HResult; stdcall;
    function  Get_LinkToContent {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_11:1}out pfLinkRetVal: WordBool): HResult; stdcall;
    function  Set_LinkToContent {Flags(1), (1/1) CC:4, INV:4, DBG:6}({VT_11:0}pfLinkRetVal: WordBool): HResult; stdcall;
    function  Get_LinkSource {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_8:1}out pbstrSourceRetVal: WideString): HResult; stdcall;
    function  Set_LinkSource {Flags(1), (1/1) CC:4, INV:4, DBG:6}({VT_8:0}const pbstrSourceRetVal: WideString): HResult; stdcall;
    function  Get_Application {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_9:1}out ppidisp: IDispatch): HResult; stdcall;
    function  Get_Creator {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_3:1}out plCreator: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: DocumentProperties
// Flags:     (4096) Dispatchable
// GUID:      {2DF8D04D-5BFA-101B-BDE5-00AA0044DE52}
// *********************************************************************//
  DocumentProperties = interface(IDispatch)
    ['{2DF8D04D-5BFA-101B-BDE5-00AA0044DE52}']
    function  Get_Parent {Flags(1), (0/0) CC:4, INV:2, DBG:6}: IDispatch; stdcall;
    function  Get_Item {Flags(1), (3/3) CC:4, INV:2, DBG:6}({VT_12:0}Index: OleVariant; 
                                                            {VT_3:0}lcid: Integer; 
                                                            {VT_29:2}out ppIDocProp: DocumentProperty): HResult; stdcall;
    function  Get_Count {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_3:1}out pc: Integer): HResult; stdcall;
    function  Add {Flags(1), (7/7) CC:4, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                       {VT_11:0}LinkToContent: WordBool; 
                                                       {VT_12:0}Type_: OleVariant; 
                                                       {VT_12:0}Value: OleVariant; 
                                                       {VT_12:0}LinkSource: OleVariant; 
                                                       {VT_3:0}lcid: Integer; 
                                                       {VT_29:2}out ppIDocProp: DocumentProperty): HResult; stdcall;
    function  Get__NewEnum {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_13:1}out ppunkEnum: IUnknown): HResult; stdcall;
    function  Get_Application {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_9:1}out ppidisp: IDispatch): HResult; stdcall;
    function  Get_Creator {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_3:1}out plCreator: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IFoundFiles
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0338-0000-0000-C000-000000000046}
// *********************************************************************//
  IFoundFiles = interface(IDispatch)
    ['{000C0338-0000-0000-C000-000000000046}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_22:0}Index: SYSINT): WideString; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_22:0}Index: SYSINT]: WideString read Get_Item; default;
    property Count: SYSINT read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IFoundFilesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0338-0000-0000-C000-000000000046}
// *********************************************************************//
  IFoundFilesDisp = dispinterface
    ['{000C0338-0000-0000-C000-000000000046}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_22:0}Index: SYSINT]: WideString readonly dispid 0; default;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610743809;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: IFind
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0337-0000-0000-C000-000000000046}
// *********************************************************************//
  IFind = interface(IDispatch)
    ['{000C0337-0000-0000-C000-000000000046}']
    function  Get_SearchPath {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_SubDir {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Title {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Author {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Keywords {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Options {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoFileFindOptions; safecall;
    function  Get_MatchCase {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Text {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_PatternMatch {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_DateSavedFrom {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_DateSavedTo {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_SavedBy {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_DateCreatedFrom {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_DateCreatedTo {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_View {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoFileFindView; safecall;
    function  Get_SortBy {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoFileFindSortBy; safecall;
    function  Get_ListBy {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoFileFindListBy; safecall;
    function  Get_SelectedFile {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Results {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IFoundFiles; safecall;
    function  Show {Flags(1), (1/0) CC:0, INV:1, DBG:6}: SYSINT; safecall;
    procedure Set_SearchPath {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Set_SubDir {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}retval: WordBool); safecall;
    procedure Set_Title {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Set_Author {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Set_Keywords {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Set_Options {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}penmOptions: MsoFileFindOptions); safecall;
    procedure Set_MatchCase {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}retval: WordBool); safecall;
    procedure Set_Text {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Set_PatternMatch {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}retval: WordBool); safecall;
    procedure Set_DateSavedFrom {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}pdatSavedFrom: OleVariant); safecall;
    procedure Set_DateSavedTo {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}pdatSavedTo: OleVariant); safecall;
    procedure Set_SavedBy {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Set_DateCreatedFrom {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}pdatCreatedFrom: OleVariant); safecall;
    procedure Set_DateCreatedTo {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}pdatCreatedTo: OleVariant); safecall;
    procedure Set_View {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}penmView: MsoFileFindView); safecall;
    procedure Set_SortBy {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}penmSortBy: MsoFileFindSortBy); safecall;
    procedure Set_ListBy {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}penmListBy: MsoFileFindListBy); safecall;
    procedure Set_SelectedFile {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}pintSelectedFile: SYSINT); safecall;
    procedure Execute {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Load {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const bstrQueryName: WideString); safecall;
    procedure Save {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const bstrQueryName: WideString); safecall;
    procedure Delete {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const bstrQueryName: WideString); safecall;
    function  Get_FileType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_FileType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}plFileType: Integer); safecall;
    property SearchPath: WideString read Get_SearchPath write Set_SearchPath;
    property Name: WideString read Get_Name;
    property SubDir: WordBool read Get_SubDir;
    property Title: WideString read Get_Title;
    property Author: WideString read Get_Author;
    property Keywords: WideString read Get_Keywords;
    property Subject: WideString read Get_Subject;
    property Options: MsoFileFindOptions read Get_Options;
    property MatchCase: WordBool read Get_MatchCase;
    property Text: WideString read Get_Text;
    property PatternMatch: WordBool read Get_PatternMatch;
    property DateSavedFrom: OleVariant read Get_DateSavedFrom;
    property DateSavedTo: OleVariant read Get_DateSavedTo;
    property SavedBy: WideString read Get_SavedBy;
    property DateCreatedFrom: OleVariant read Get_DateCreatedFrom;
    property DateCreatedTo: OleVariant read Get_DateCreatedTo;
    property View: MsoFileFindView read Get_View;
    property SortBy: MsoFileFindSortBy read Get_SortBy;
    property ListBy: MsoFileFindListBy read Get_ListBy;
    property SelectedFile: SYSINT read Get_SelectedFile;
    property Results: IFoundFiles read Get_Results;
    property FileType: Integer read Get_FileType;
  end;

// *********************************************************************//
// DispIntf:  IFindDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0337-0000-0000-C000-000000000046}
// *********************************************************************//
  IFindDisp = dispinterface
    ['{000C0337-0000-0000-C000-000000000046}']
    property SearchPath {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 0;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743809;
    property SubDir {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610743810;
    property Title {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743811;
    property Author {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743812;
    property Keywords {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743813;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743814;
    property Options {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoFileFindOptions readonly dispid 1610743815;
    property MatchCase {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610743816;
    property Text {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743817;
    property PatternMatch {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610743818;
    property DateSavedFrom {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610743819;
    property DateSavedTo {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610743820;
    property SavedBy {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743821;
    property DateCreatedFrom {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610743822;
    property DateCreatedTo {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610743823;
    property View {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoFileFindView readonly dispid 1610743824;
    property SortBy {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoFileFindSortBy readonly dispid 1610743825;
    property ListBy {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoFileFindListBy readonly dispid 1610743826;
    property SelectedFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1610743827;
    property Results {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IFoundFiles readonly dispid 1610743828;
    function  Show {Flags(2), (1/0) CC:0, INV:1, DBG:4}: SYSINT; dispid 1610743829;
    procedure Execute {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743850;
    procedure Load {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const bstrQueryName: WideString); dispid 1610743851;
    procedure Save {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const bstrQueryName: WideString); dispid 1610743852;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const bstrQueryName: WideString); dispid 1610743853;
    property FileType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743854;
  end;

// *********************************************************************//
// Interface: FoundFiles
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {000C0331-0000-0000-C000-000000000046}
// *********************************************************************//
  FoundFiles = interface(_IMsoDispObj)
    ['{000C0331-0000-0000-C000-000000000046}']
    function  Get_Item {Flags(1), (3/2) CC:0, INV:2, DBG:6}({VT_22:0}Index: SYSINT; 
                                                            {VT_3:0}lcid: Integer): WideString; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    property Item {Flags(2), (3/2) CC:0, INV:2, DBG:5}[{VT_22:0}Index: SYSINT; {VT_3:0}lcid: Integer]: WideString read Get_Item;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  FoundFilesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {000C0331-0000-0000-C000-000000000046}
// *********************************************************************//
  FoundFilesDisp = dispinterface
    ['{000C0331-0000-0000-C000-000000000046}']
    property Item {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_22:0}Index: SYSINT; {VT_3:0}lcid: Integer]: WideString readonly dispid 0;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 4;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: PropertyTest
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0333-0000-0000-C000-000000000046}
// *********************************************************************//
  PropertyTest = interface(_IMsoDispObj)
    ['{000C0333-0000-0000-C000-000000000046}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Condition {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoCondition; safecall;
    function  Get_Value {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_SecondValue {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_Connector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoConnector; safecall;
    property Name: WideString read Get_Name;
    property Condition: MsoCondition read Get_Condition;
    property Value: OleVariant read Get_Value;
    property SecondValue: OleVariant read Get_SecondValue;
    property Connector: MsoConnector read Get_Connector;
  end;

// *********************************************************************//
// DispIntf:  PropertyTestDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0333-0000-0000-C000-000000000046}
// *********************************************************************//
  PropertyTestDisp = dispinterface
    ['{000C0333-0000-0000-C000-000000000046}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 0;
    property Condition {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoCondition readonly dispid 2;
    property Value {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 3;
    property SecondValue {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 4;
    property Connector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoConnector readonly dispid 5;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: PropertyTests
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {000C0334-0000-0000-C000-000000000046}
// *********************************************************************//
  PropertyTests = interface(_IMsoDispObj)
    ['{000C0334-0000-0000-C000-000000000046}']
    function  Get_Item {Flags(1), (3/2) CC:0, INV:2, DBG:6}({VT_22:0}Index: SYSINT; 
                                                            {VT_3:0}lcid: Integer): PropertyTest; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Add {Flags(1), (5/5) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                       {VT_29:0}Condition: MsoCondition; 
                                                       {VT_12:0}Value: OleVariant; 
                                                       {VT_12:0}SecondValue: OleVariant; 
                                                       {VT_29:0}Connector: MsoConnector); safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_22:0}Index: SYSINT); safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    property Item {Flags(2), (3/2) CC:0, INV:2, DBG:5}[{VT_22:0}Index: SYSINT; {VT_3:0}lcid: Integer]: PropertyTest read Get_Item;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PropertyTestsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {000C0334-0000-0000-C000-000000000046}
// *********************************************************************//
  PropertyTestsDisp = dispinterface
    ['{000C0334-0000-0000-C000-000000000046}']
    property Item {Flags(2), (3/2) CC:0, INV:2, DBG:6}[{VT_22:0}Index: SYSINT; {VT_3:0}lcid: Integer]: PropertyTest readonly dispid 0;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 4;
    procedure Add {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                       {VT_29:0}Condition: MsoCondition; 
                                                       {VT_12:0}Value: OleVariant; 
                                                       {VT_12:0}SecondValue: OleVariant; 
                                                       {VT_29:0}Connector: MsoConnector); dispid 5;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_22:0}Index: SYSINT); dispid 6;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: FileSearch
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {000C0332-0000-0000-C000-000000000046}
// *********************************************************************//
  FileSearch = interface(_IMsoDispObj)
    ['{000C0332-0000-0000-C000-000000000046}']
    function  Get_SearchSubFolders {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_SearchSubFolders {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}SearchSubFoldersRetVal: WordBool); safecall;
    function  Get_MatchTextExactly {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_MatchTextExactly {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}MatchTextRetVal: WordBool); safecall;
    function  Get_MatchAllWordForms {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_MatchAllWordForms {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}MatchAllWordFormsRetVal: WordBool); safecall;
    function  Get_FileName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_FileName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const FileNameRetVal: WideString); safecall;
    function  Get_FileType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoFileType; safecall;
    procedure Set_FileType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FileTypeRetVal: MsoFileType); safecall;
    function  Get_LastModified {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoLastModified; safecall;
    procedure Set_LastModified {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}LastModifiedRetVal: MsoLastModified); safecall;
    function  Get_TextOrProperty {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_TextOrProperty {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const TextOrProperty: WideString); safecall;
    function  Get_LookIn {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_LookIn {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const LookInRetVal: WideString); safecall;
    function  Execute {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_29:0}SortBy: MsoSortBy; 
                                                           {VT_29:0}SortOrder: MsoSortOrder; 
                                                           {VT_11:0}AlwaysAccurate: WordBool): SYSINT; safecall;
    procedure NewSearch {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_FoundFiles {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FoundFiles; safecall;
    function  Get_PropertyTests {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PropertyTests; safecall;
    property SearchSubFolders: WordBool read Get_SearchSubFolders write Set_SearchSubFolders;
    property MatchTextExactly: WordBool read Get_MatchTextExactly write Set_MatchTextExactly;
    property MatchAllWordForms: WordBool read Get_MatchAllWordForms write Set_MatchAllWordForms;
    property FileName: WideString read Get_FileName write Set_FileName;
    property FileType: MsoFileType read Get_FileType write Set_FileType;
    property LastModified: MsoLastModified read Get_LastModified write Set_LastModified;
    property TextOrProperty: WideString read Get_TextOrProperty write Set_TextOrProperty;
    property LookIn: WideString read Get_LookIn write Set_LookIn;
    property FoundFiles: FoundFiles read Get_FoundFiles;
    property PropertyTests: PropertyTests read Get_PropertyTests;
  end;

// *********************************************************************//
// DispIntf:  FileSearchDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {000C0332-0000-0000-C000-000000000046}
// *********************************************************************//
  FileSearchDisp = dispinterface
    ['{000C0332-0000-0000-C000-000000000046}']
    property SearchSubFolders {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 1;
    property MatchTextExactly {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 2;
    property MatchAllWordForms {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 3;
    property FileName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 4;
    property FileType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoFileType dispid 5;
    property LastModified {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoLastModified dispid 6;
    property TextOrProperty {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 7;
    property LookIn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 8;
    function  Execute {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_29:0}SortBy: MsoSortBy; 
                                                           {VT_29:0}SortOrder: MsoSortOrder; 
                                                           {VT_11:0}AlwaysAccurate: WordBool): SYSINT; dispid 9;
    procedure NewSearch {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 10;
    property FoundFiles {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FoundFiles readonly dispid 11;
    property PropertyTests {Flags(2), (1/0) CC:0, INV:2, DBG:6}: PropertyTests readonly dispid 12;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: COMAddIn
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C033A-0000-0000-C000-000000000046}
// *********************************************************************//
  COMAddIn = interface(_IMsoDispObj)
    ['{000C033A-0000-0000-C000-000000000046}']
    function  Get_Description {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Description {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const RetValue: WideString); safecall;
    function  Get_ProgId {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Guid {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Connect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Connect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}RetValue: WordBool); safecall;
    function  Get_Object_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Set_Object_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_9:0}const RetValue: IDispatch); safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    property Description: WideString read Get_Description write Set_Description;
    property ProgId: WideString read Get_ProgId;
    property Guid: WideString read Get_Guid;
    property Connect: WordBool read Get_Connect write Set_Connect;
    property Object_: IDispatch read Get_Object_ write Set_Object_;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  COMAddInDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C033A-0000-0000-C000-000000000046}
// *********************************************************************//
  COMAddInDisp = dispinterface
    ['{000C033A-0000-0000-C000-000000000046}']
    property Description {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 0;
    property ProgId {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 3;
    property Guid {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 4;
    property Connect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 6;
    property Object_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch dispid 7;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 8;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: COMAddIns
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0339-0000-0000-C000-000000000046}
// *********************************************************************//
  COMAddIns = interface(_IMsoDispObj)
    ['{000C0339-0000-0000-C000-000000000046}']
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:1}var Index: OleVariant): COMAddIn; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    procedure Update {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure SetAppModal {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_11:0}varfModal: WordBool); safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  COMAddInsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0339-0000-0000-C000-000000000046}
// *********************************************************************//
  COMAddInsDisp = dispinterface
    ['{000C0339-0000-0000-C000-000000000046}']
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:1}var Index: OleVariant): COMAddIn; dispid 0;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    procedure Update {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 2;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 3;
    procedure SetAppModal {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_11:0}varfModal: WordBool); dispid 4;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: LanguageSettings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0353-0000-0000-C000-000000000046}
// *********************************************************************//
  LanguageSettings = interface(_IMsoDispObj)
    ['{000C0353-0000-0000-C000-000000000046}']
    function  Get_LanguageID {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_29:0}Id: MsoAppLanguageID): SYSINT; safecall;
    function  Get_LanguagePreferredForEditing {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_29:0}lid: MsoLanguageID): WordBool; safecall;
    property LanguageID {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_29:0}Id: MsoAppLanguageID]: SYSINT read Get_LanguageID;
    property LanguagePreferredForEditing {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_29:0}lid: MsoLanguageID]: WordBool read Get_LanguagePreferredForEditing;
  end;

// *********************************************************************//
// DispIntf:  LanguageSettingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0353-0000-0000-C000-000000000046}
// *********************************************************************//
  LanguageSettingsDisp = dispinterface
    ['{000C0353-0000-0000-C000-000000000046}']
    property LanguageID {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_29:0}Id: MsoAppLanguageID]: SYSINT readonly dispid 1;
    property LanguagePreferredForEditing {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_29:0}lid: MsoLanguageID]: WordBool readonly dispid 2;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: ICommandBarsEvents
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {55F88892-7708-11D1-ACEB-006008961DA5}
// *********************************************************************//
  ICommandBarsEvents = interface(IDispatch)
    ['{55F88892-7708-11D1-ACEB-006008961DA5}']
    procedure OnUpdate {Flags(1), (0/0) CC:4, INV:1, DBG:6}; stdcall;
  end;

// *********************************************************************//
// DispIntf:  ICommandBarsEventsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {55F88892-7708-11D1-ACEB-006008961DA5}
// *********************************************************************//
  ICommandBarsEventsDisp = dispinterface
    ['{55F88892-7708-11D1-ACEB-006008961DA5}']
    procedure OnUpdate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1;
  end;

// *********************************************************************//
// DispIntf:  _CommandBarsEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {000C0352-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBarsEvents = dispinterface
    ['{000C0352-0000-0000-C000-000000000046}']
    procedure OnUpdate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1;
  end;

// *********************************************************************//
// Interface: ICommandBarComboBoxEvents
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {55F88896-7708-11D1-ACEB-006008961DA5}
// *********************************************************************//
  ICommandBarComboBoxEvents = interface(IDispatch)
    ['{55F88896-7708-11D1-ACEB-006008961DA5}']
    procedure Change {Flags(1), (1/1) CC:4, INV:1, DBG:6}({VT_29:1}const Ctrl: CommandBarComboBox); stdcall;
  end;

// *********************************************************************//
// DispIntf:  ICommandBarComboBoxEventsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {55F88896-7708-11D1-ACEB-006008961DA5}
// *********************************************************************//
  ICommandBarComboBoxEventsDisp = dispinterface
    ['{55F88896-7708-11D1-ACEB-006008961DA5}']
    procedure Change {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Ctrl: CommandBarComboBox); dispid 1;
  end;

// *********************************************************************//
// DispIntf:  _CommandBarComboBoxEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {000C0354-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBarComboBoxEvents = dispinterface
    ['{000C0354-0000-0000-C000-000000000046}']
    procedure Change {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Ctrl: CommandBarComboBox); dispid 1;
  end;

// *********************************************************************//
// Interface: ICommandBarButtonEvents
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {55F88890-7708-11D1-ACEB-006008961DA5}
// *********************************************************************//
  ICommandBarButtonEvents = interface(IDispatch)
    ['{55F88890-7708-11D1-ACEB-006008961DA5}']
    procedure Click {Flags(1), (2/2) CC:4, INV:1, DBG:6}({VT_29:1}const Ctrl: CommandBarButton; 
                                                         {VT_11:1}var CancelDefault: WordBool); stdcall;
  end;

// *********************************************************************//
// DispIntf:  ICommandBarButtonEventsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {55F88890-7708-11D1-ACEB-006008961DA5}
// *********************************************************************//
  ICommandBarButtonEventsDisp = dispinterface
    ['{55F88890-7708-11D1-ACEB-006008961DA5}']
    procedure Click {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const Ctrl: CommandBarButton; 
                                                         {VT_11:1}var CancelDefault: WordBool); dispid 1;
  end;

// *********************************************************************//
// DispIntf:  _CommandBarButtonEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {000C0351-0000-0000-C000-000000000046}
// *********************************************************************//
  _CommandBarButtonEvents = dispinterface
    ['{000C0351-0000-0000-C000-000000000046}']
    procedure Click {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const Ctrl: CommandBarButton; 
                                                         {VT_11:1}var CancelDefault: WordBool); dispid 1;
  end;

// *********************************************************************//
// Interface: WebPageFont
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0913-0000-0000-C000-000000000046}
// *********************************************************************//
  WebPageFont = interface(_IMsoDispObj)
    ['{000C0913-0000-0000-C000-000000000046}']
    function  Get_ProportionalFont {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ProportionalFont {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pstr: WideString); safecall;
    function  Get_ProportionalFontSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_ProportionalFontSize {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}pf: Single); safecall;
    function  Get_FixedWidthFont {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_FixedWidthFont {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pstr: WideString); safecall;
    function  Get_FixedWidthFontSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_FixedWidthFontSize {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}pf: Single); safecall;
    property ProportionalFont: WideString read Get_ProportionalFont write Set_ProportionalFont;
    property ProportionalFontSize: Single read Get_ProportionalFontSize write Set_ProportionalFontSize;
    property FixedWidthFont: WideString read Get_FixedWidthFont write Set_FixedWidthFont;
    property FixedWidthFontSize: Single read Get_FixedWidthFontSize write Set_FixedWidthFontSize;
  end;

// *********************************************************************//
// DispIntf:  WebPageFontDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0913-0000-0000-C000-000000000046}
// *********************************************************************//
  WebPageFontDisp = dispinterface
    ['{000C0913-0000-0000-C000-000000000046}']
    property ProportionalFont {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 10;
    property ProportionalFontSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 11;
    property FixedWidthFont {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12;
    property FixedWidthFontSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 13;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: WebPageFonts
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0914-0000-0000-C000-000000000046}
// *********************************************************************//
  WebPageFonts = interface(_IMsoDispObj)
    ['{000C0914-0000-0000-C000-000000000046}']
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_29:0}Index: MsoCharacterSet): WebPageFont; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    property Count: SYSINT read Get_Count;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_29:0}Index: MsoCharacterSet]: WebPageFont read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  WebPageFontsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0914-0000-0000-C000-000000000046}
// *********************************************************************//
  WebPageFontsDisp = dispinterface
    ['{000C0914-0000-0000-C000-000000000046}']
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT readonly dispid 1;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_29:0}Index: MsoCharacterSet]: WebPageFont readonly dispid 0; default;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: HTMLProjectItem
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0358-0000-0000-C000-000000000046}
// *********************************************************************//
  HTMLProjectItem = interface(_IMsoDispObj)
    ['{000C0358-0000-0000-C000-000000000046}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_IsOpen {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure LoadFromFile {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString); safecall;
    procedure Open {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}OpenKind: MsoHTMLProjectOpen); safecall;
    procedure SaveCopyAs {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const FileName: WideString); safecall;
    function  Get_Text {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Text {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Text: WideString); safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    property Name: WideString read Get_Name;
    property IsOpen: WordBool read Get_IsOpen;
    property Text: WideString read Get_Text write Set_Text;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  HTMLProjectItemDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0358-0000-0000-C000-000000000046}
// *********************************************************************//
  HTMLProjectItemDisp = dispinterface
    ['{000C0358-0000-0000-C000-000000000046}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 0;
    property IsOpen {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 4;
    procedure LoadFromFile {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString); dispid 5;
    procedure Open {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}OpenKind: MsoHTMLProjectOpen); dispid 6;
    procedure SaveCopyAs {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const FileName: WideString); dispid 7;
    property Text {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 8;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 10;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: HTMLProjectItems
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0357-0000-0000-C000-000000000046}
// *********************************************************************//
  HTMLProjectItems = interface(_IMsoDispObj)
    ['{000C0357-0000-0000-C000-000000000046}']
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:1}var Index: OleVariant): HTMLProjectItem; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get__NewEnum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  HTMLProjectItemsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0357-0000-0000-C000-000000000046}
// *********************************************************************//
  HTMLProjectItemsDisp = dispinterface
    ['{000C0357-0000-0000-C000-000000000046}']
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:1}var Index: OleVariant): HTMLProjectItem; dispid 0;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1;
    property _NewEnum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid -4;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 2;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: HTMLProject
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0356-0000-0000-C000-000000000046}
// *********************************************************************//
  HTMLProject = interface(_IMsoDispObj)
    ['{000C0356-0000-0000-C000-000000000046}']
    function  Get_State {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoHTMLProjectState; safecall;
    procedure RefreshProject {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_11:0}Refresh: WordBool); safecall;
    procedure RefreshDocument {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_11:0}Refresh: WordBool); safecall;
    function  Get_HTMLProjectItems {Flags(1), (1/0) CC:0, INV:2, DBG:6}: HTMLProjectItems; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Open {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}OpenKind: MsoHTMLProjectOpen); safecall;
    property State: MsoHTMLProjectState read Get_State;
    property HTMLProjectItems: HTMLProjectItems read Get_HTMLProjectItems;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  HTMLProjectDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C0356-0000-0000-C000-000000000046}
// *********************************************************************//
  HTMLProjectDisp = dispinterface
    ['{000C0356-0000-0000-C000-000000000046}']
    property State {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoHTMLProjectState readonly dispid 0;
    procedure RefreshProject {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_11:0}Refresh: WordBool); dispid 1;
    procedure RefreshDocument {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_11:0}Refresh: WordBool); dispid 2;
    property HTMLProjectItems {Flags(2), (1/0) CC:0, INV:2, DBG:6}: HTMLProjectItems readonly dispid 3;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 4;
    procedure Open {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}OpenKind: MsoHTMLProjectOpen); dispid 5;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: MsoDebugOptions
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C035A-0000-0000-C000-000000000046}
// *********************************************************************//
  MsoDebugOptions = interface(_IMsoDispObj)
    ['{000C035A-0000-0000-C000-000000000046}']
    function  Get_FeatureReports {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SYSINT; safecall;
    procedure Set_FeatureReports {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_22:0}puintFeatureReports: SYSINT); safecall;
    property FeatureReports: SYSINT read Get_FeatureReports write Set_FeatureReports;
  end;

// *********************************************************************//
// DispIntf:  MsoDebugOptionsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000C035A-0000-0000-C000-000000000046}
// *********************************************************************//
  MsoDebugOptionsDisp = dispinterface
    ['{000C035A-0000-0000-C000-000000000046}']
    property FeatureReports {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SYSINT dispid 4;
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 1610743808;
    property Creator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// The Class CoCommandBars provides a Create and CreateRemote method to          
// create instances of the default interface _CommandBars exposed by              
// the CoClass CommandBars. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCommandBars = class
    class function Create: _CommandBars;
    class function CreateRemote(const MachineName: string): _CommandBars;
  end;

// *********************************************************************//
// The Class CoCommandBarComboBox provides a Create and CreateRemote method to          
// create instances of the default interface _CommandBarComboBox exposed by              
// the CoClass CommandBarComboBox. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCommandBarComboBox = class
    class function Create: _CommandBarComboBox;
    class function CreateRemote(const MachineName: string): _CommandBarComboBox;
  end;

// *********************************************************************//
// The Class CoCommandBarButton provides a Create and CreateRemote method to          
// create instances of the default interface _CommandBarButton exposed by              
// the CoClass CommandBarButton. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCommandBarButton = class
    class function Create: _CommandBarButton;
    class function CreateRemote(const MachineName: string): _CommandBarButton;
  end;

implementation

uses ComObj;

class function CoCommandBars.Create: _CommandBars;
begin
  Result := CreateComObject(CLASS_CommandBars) as _CommandBars;
end;

class function CoCommandBars.CreateRemote(const MachineName: string): _CommandBars;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CommandBars) as _CommandBars;
end;

class function CoCommandBarComboBox.Create: _CommandBarComboBox;
begin
  Result := CreateComObject(CLASS_CommandBarComboBox) as _CommandBarComboBox;
end;

class function CoCommandBarComboBox.CreateRemote(const MachineName: string): _CommandBarComboBox;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CommandBarComboBox) as _CommandBarComboBox;
end;

class function CoCommandBarButton.Create: _CommandBarButton;
begin
  Result := CreateComObject(CLASS_CommandBarButton) as _CommandBarButton;
end;

class function CoCommandBarButton.CreateRemote(const MachineName: string): _CommandBarButton;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CommandBarButton) as _CommandBarButton;
end;

end.
