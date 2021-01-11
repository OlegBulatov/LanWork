unit DAO2000;

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
// File generated on 12/03/99 10:54:04 AM from Type Library described below.

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
// Type Lib: D:\Program Files\Common Files\Microsoft Shared\DAO\dao360.dll (1)
// IID\LCID: {00025E01-0000-0000-C000-000000000046}\0
// Helpfile: D:\Program Files\Common Files\Microsoft Shared\DAO\dao360.chm
// DepndLst: 
//   (1) v2.0 stdole, (D:\WINNT\System32\stdole2.tlb)
// Parent TypeLibrary:
//   (0) v9.0 Access, (d:\rampage\typelib\typelibraries\msacc9.olb)
// Errors:
//   Hint: TypeInfo 'Property' changed to 'Property_'
//   Hint: Parameter 'Object' of _DynaCollection.Append changed to 'Object_'
//   Hint: Member 'Type' of 'Property' changed to 'Type_'
//   Hint: Member 'Inherited' of 'Property' changed to 'Inherited_'
//   Hint: Member 'Type' of 'Workspace' changed to 'Type_'
//   Hint: Parameter 'Type' of Database._30_OpenRecordset changed to 'Type_'
//   Hint: Parameter 'Type' of Database.CreateProperty changed to 'Type_'
//   Hint: Parameter 'Type' of Database.OpenRecordset changed to 'Type_'
//   Hint: Parameter 'Type' of _TableDef.OpenRecordset changed to 'Type_'
//   Hint: Parameter 'Type' of _TableDef.CreateField changed to 'Type_'
//   Hint: Parameter 'Type' of _TableDef.CreateProperty changed to 'Type_'
//   Hint: Member 'Type' of '_Field' changed to 'Type_'
//   Hint: Parameter 'Type' of _Field.CreateProperty changed to 'Type_'
//   Hint: Parameter 'Type' of _Index.CreateField changed to 'Type_'
//   Hint: Parameter 'Type' of _Index.CreateProperty changed to 'Type_'
//   Hint: Member 'Type' of 'Recordset' changed to 'Type_'
//   Hint: Parameter 'Type' of Recordset.OpenRecordset changed to 'Type_'
//   Hint: Member 'Type' of '_QueryDef' changed to 'Type_'
//   Hint: Parameter 'Type' of _QueryDef._30_OpenRecordset changed to 'Type_'
//   Hint: Parameter 'Type' of _QueryDef._30__OpenRecordset changed to 'Type_'
//   Hint: Parameter 'Type' of _QueryDef.CreateProperty changed to 'Type_'
//   Hint: Parameter 'Type' of _QueryDef.OpenRecordset changed to 'Type_'
//   Hint: Parameter 'Type' of _QueryDef._OpenRecordset changed to 'Type_'
//   Hint: Member 'Type' of 'Parameter' changed to 'Type_'
//   Hint: Parameter 'Type' of Connection.OpenRecordset changed to 'Type_'
//   Hint: Parameter 'Type' of _Relation.CreateField changed to 'Type_'
//   Hint: Parameter 'Type' of Document.CreateProperty changed to 'Type_'
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
  DAOMajorVersion = 5;
  DAOMinorVersion = 0;

  LIBID_DAO: TGUID = '{00025E01-0000-0000-C000-000000000046}';

  IID__DAO: TGUID = '{0000000A-0000-0010-8000-00AA006D2EA4}';
  IID__DBEngine: TGUID = '{00000021-0000-0010-8000-00AA006D2EA4}';
  IID__Collection: TGUID = '{000000A0-0000-0010-8000-00AA006D2EA4}';
  IID__DynaCollection: TGUID = '{000000A2-0000-0010-8000-00AA006D2EA4}';
  IID_Properties: TGUID = '{00000029-0000-0010-8000-00AA006D2EA4}';
  IID_Property_: TGUID = '{00000027-0000-0010-8000-00AA006D2EA4}';
  IID_Workspaces: TGUID = '{0000003B-0000-0010-8000-00AA006D2EA4}';
  IID_Workspace: TGUID = '{00000039-0000-0010-8000-00AA006D2EA4}';
  IID_Databases: TGUID = '{00000073-0000-0010-8000-00AA006D2EA4}';
  IID_Database: TGUID = '{00000071-0000-0010-8000-00AA006D2EA4}';
  IID_TableDefs: TGUID = '{0000004B-0000-0010-8000-00AA006D2EA4}';
  IID__TableDef: TGUID = '{00000049-0000-0010-8000-00AA006D2EA4}';
  CLASS_TableDef: TGUID = '{00000103-0000-0010-8000-00AA006D2EA4}';
  IID_Fields: TGUID = '{00000053-0000-0010-8000-00AA006D2EA4}';
  IID__Field: TGUID = '{00000051-0000-0010-8000-00AA006D2EA4}';
  CLASS_Field: TGUID = '{00000104-0000-0010-8000-00AA006D2EA4}';
  IID_Indexes: TGUID = '{0000005B-0000-0010-8000-00AA006D2EA4}';
  IID__Index: TGUID = '{00000059-0000-0010-8000-00AA006D2EA4}';
  CLASS_Index: TGUID = '{00000105-0000-0010-8000-00AA006D2EA4}';
  IID_Recordset: TGUID = '{00000031-0000-0010-8000-00AA006D2EA4}';
  IID__QueryDef: TGUID = '{00000079-0000-0010-8000-00AA006D2EA4}';
  CLASS_QueryDef: TGUID = '{00000108-0000-0010-8000-00AA006D2EA4}';
  IID_Parameters: TGUID = '{00000083-0000-0010-8000-00AA006D2EA4}';
  IID_Parameter: TGUID = '{00000081-0000-0010-8000-00AA006D2EA4}';
  IID_Connection: TGUID = '{00000041-0000-0010-8000-00AA006D2EA4}';
  IID_QueryDefs: TGUID = '{0000007B-0000-0010-8000-00AA006D2EA4}';
  IID_Recordsets: TGUID = '{00000033-0000-0010-8000-00AA006D2EA4}';
  IID_Relations: TGUID = '{0000008B-0000-0010-8000-00AA006D2EA4}';
  IID__Relation: TGUID = '{00000089-0000-0010-8000-00AA006D2EA4}';
  CLASS_Relation: TGUID = '{00000109-0000-0010-8000-00AA006D2EA4}';
  IID_Containers: TGUID = '{00000093-0000-0010-8000-00AA006D2EA4}';
  IID_Container: TGUID = '{00000091-0000-0010-8000-00AA006D2EA4}';
  IID_Documents: TGUID = '{0000009B-0000-0010-8000-00AA006D2EA4}';
  IID_Document: TGUID = '{00000099-0000-0010-8000-00AA006D2EA4}';
  IID_Users: TGUID = '{0000006B-0000-0010-8000-00AA006D2EA4}';
  IID__User: TGUID = '{00000069-0000-0010-8000-00AA006D2EA4}';
  CLASS_User: TGUID = '{00000107-0000-0010-8000-00AA006D2EA4}';
  IID_Groups: TGUID = '{00000063-0000-0010-8000-00AA006D2EA4}';
  IID__Group: TGUID = '{00000061-0000-0010-8000-00AA006D2EA4}';
  CLASS_Group: TGUID = '{00000106-0000-0010-8000-00AA006D2EA4}';
  IID_Connections: TGUID = '{00000043-0000-0010-8000-00AA006D2EA4}';
  IID_Errors: TGUID = '{00000025-0000-0010-8000-00AA006D2EA4}';
  IID_Error: TGUID = '{00000023-0000-0010-8000-00AA006D2EA4}';
  CLASS_DBEngine: TGUID = '{00000100-0000-0010-8000-00AA006D2EA4}';
  CLASS_PrivDBEngine: TGUID = '{00000101-0000-0010-8000-00AA006D2EA4}';
  IID_IndexFields: TGUID = '{0000005D-0000-0010-8000-00AA006D2EA4}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum RecordsetTypeEnum
type
  RecordsetTypeEnum = TOleEnum;
const
  dbOpenTable = $00000001;
  dbOpenDynaset = $00000002;
  dbOpenSnapshot = $00000004;
  dbOpenForwardOnly = $00000008;
  dbOpenDynamic = $00000010;

// Constants for enum EditModeEnum
type
  EditModeEnum = TOleEnum;
const
  dbEditNone = $00000000;
  dbEditInProgress = $00000001;
  dbEditAdd = $00000002;

// Constants for enum RecordsetOptionEnum
type
  RecordsetOptionEnum = TOleEnum;
const
  dbDenyWrite = $00000001;
  dbDenyRead = $00000002;
  dbReadOnly = $00000004;
  dbAppendOnly = $00000008;
  dbInconsistent = $00000010;
  dbConsistent = $00000020;
  dbSQLPassThrough = $00000040;
  dbFailOnError = $00000080;
  dbForwardOnly = $00000100;
  dbSeeChanges = $00000200;
  dbRunAsync = $00000400;
  dbExecDirect = $00000800;

// Constants for enum LockTypeEnum
type
  LockTypeEnum = TOleEnum;
const
  dbPessimistic = $00000002;
  dbOptimistic = $00000003;
  dbOptimisticValue = $00000001;
  dbOptimisticBatch = $00000005;

// Constants for enum UpdateCriteriaEnum
type
  UpdateCriteriaEnum = TOleEnum;
const
  dbCriteriaKey = $00000001;
  dbCriteriaModValues = $00000002;
  dbCriteriaAllCols = $00000004;
  dbCriteriaTimestamp = $00000008;
  dbCriteriaDeleteInsert = $00000010;
  dbCriteriaUpdate = $00000020;

// Constants for enum FieldAttributeEnum
type
  FieldAttributeEnum = TOleEnum;
const
  dbFixedField = $00000001;
  dbVariableField = $00000002;
  dbAutoIncrField = $00000010;
  dbUpdatableField = $00000020;
  dbSystemField = $00002000;
  dbHyperlinkField = $00008000;
  dbDescending = $00000001;

// Constants for enum DataTypeEnum
type
  DataTypeEnum = TOleEnum;
const
  dbBoolean = $00000001;
  dbByte = $00000002;
  dbInteger = $00000003;
  dbLong = $00000004;
  dbCurrency = $00000005;
  dbSingle = $00000006;
  dbDouble = $00000007;
  dbDate = $00000008;
  dbBinary = $00000009;
  dbText = $0000000A;
  dbLongBinary = $0000000B;
  dbMemo = $0000000C;
  dbGUID = $0000000F;
  dbBigInt = $00000010;
  dbVarBinary = $00000011;
  dbChar = $00000012;
  dbNumeric = $00000013;
  dbDecimal = $00000014;
  dbFloat = $00000015;
  dbTime = $00000016;
  dbTimeStamp = $00000017;

// Constants for enum RelationAttributeEnum
type
  RelationAttributeEnum = TOleEnum;
const
  dbRelationUnique = $00000001;
  dbRelationDontEnforce = $00000002;
  dbRelationInherited = $00000004;
  dbRelationUpdateCascade = $00000100;
  dbRelationDeleteCascade = $00001000;
  dbRelationLeft = $01000000;
  dbRelationRight = $02000000;

// Constants for enum TableDefAttributeEnum
type
  TableDefAttributeEnum = TOleEnum;
const
  dbAttachExclusive = $00010000;
  dbAttachSavePWD = $00020000;
  dbSystemObject = $80000002;
  dbAttachedTable = $40000000;
  dbAttachedODBC = $20000000;
  dbHiddenObject = $00000001;

// Constants for enum QueryDefTypeEnum
type
  QueryDefTypeEnum = TOleEnum;
const
  dbQSelect = $00000000;
  dbQProcedure = $000000E0;
  dbQAction = $000000F0;
  dbQCrosstab = $00000010;
  dbQDelete = $00000020;
  dbQUpdate = $00000030;
  dbQAppend = $00000040;
  dbQMakeTable = $00000050;
  dbQDDL = $00000060;
  dbQSQLPassThrough = $00000070;
  dbQSetOperation = $00000080;
  dbQSPTBulk = $00000090;
  dbQCompound = $000000A0;

// Constants for enum QueryDefStateEnum
type
  QueryDefStateEnum = TOleEnum;
const
  dbQPrepare = $00000001;
  dbQUnprepare = $00000002;

// Constants for enum DatabaseTypeEnum
type
  DatabaseTypeEnum = TOleEnum;
const
  dbVersion10 = $00000001;
  dbEncrypt = $00000002;
  dbDecrypt = $00000004;
  dbVersion11 = $00000008;
  dbVersion20 = $00000010;
  dbVersion30 = $00000020;
  dbVersion40 = $00000040;

// Constants for enum CollatingOrderEnum
type
  CollatingOrderEnum = TOleEnum;
const
  dbSortNeutral = $00000400;
  dbSortArabic = $00000401;
  dbSortCyrillic = $00000419;
  dbSortCzech = $00000405;
  dbSortDutch = $00000413;
  dbSortGeneral = $00000409;
  dbSortGreek = $00000408;
  dbSortHebrew = $0000040D;
  dbSortHungarian = $0000040E;
  dbSortIcelandic = $0000040F;
  dbSortNorwdan = $00000406;
  dbSortPDXIntl = $00000409;
  dbSortPDXNor = $00000406;
  dbSortPDXSwe = $0000041D;
  dbSortPolish = $00000415;
  dbSortSpanish = $0000040A;
  dbSortSwedFin = $0000041D;
  dbSortTurkish = $0000041F;
  dbSortJapanese = $00000411;
  dbSortChineseSimplified = $00000804;
  dbSortChineseTraditional = $00000404;
  dbSortKorean = $00000412;
  dbSortThai = $0000041E;
  dbSortSlovenian = $00000424;
  dbSortUndefined = $FFFFFFFF;

// Constants for enum IdleEnum
type
  IdleEnum = TOleEnum;
const
  dbFreeLocks = $00000001;
  dbRefreshCache = $00000008;

// Constants for enum PermissionEnum
type
  PermissionEnum = TOleEnum;
const
  dbSecNoAccess = $00000000;
  dbSecFullAccess = $000FFFFF;
  dbSecDelete = $00010000;
  dbSecReadSec = $00020000;
  dbSecWriteSec = $00040000;
  dbSecWriteOwner = $00080000;
  dbSecDBCreate = $00000001;
  dbSecDBOpen = $00000002;
  dbSecDBExclusive = $00000004;
  dbSecDBAdmin = $00000008;
  dbSecCreate = $00000001;
  dbSecReadDef = $00000004;
  dbSecWriteDef = $0001000C;
  dbSecRetrieveData = $00000014;
  dbSecInsertData = $00000020;
  dbSecReplaceData = $00000040;
  dbSecDeleteData = $00000080;

// Constants for enum SynchronizeTypeEnum
type
  SynchronizeTypeEnum = TOleEnum;
const
  dbRepExportChanges = $00000001;
  dbRepImportChanges = $00000002;
  dbRepImpExpChanges = $00000004;
  dbRepSyncInternet = $00000010;

// Constants for enum ReplicaTypeEnum
type
  ReplicaTypeEnum = TOleEnum;
const
  dbRepMakeReadOnly = $00000002;
  dbRepMakePartial = $00000001;

// Constants for enum WorkspaceTypeEnum
type
  WorkspaceTypeEnum = TOleEnum;
const
  dbUseODBC = $00000001;
  dbUseJet = $00000002;

// Constants for enum CursorDriverEnum
type
  CursorDriverEnum = TOleEnum;
const
  dbUseDefaultCursor = $FFFFFFFF;
  dbUseODBCCursor = $00000001;
  dbUseServerCursor = $00000002;
  dbUseClientBatchCursor = $00000003;
  dbUseNoCursor = $00000004;

// Constants for enum DriverPromptEnum
type
  DriverPromptEnum = TOleEnum;
const
  dbDriverPrompt = $00000002;
  dbDriverNoPrompt = $00000001;
  dbDriverComplete = $00000000;
  dbDriverCompleteRequired = $00000003;

// Constants for enum SetOptionEnum
type
  SetOptionEnum = TOleEnum;
const
  dbPageTimeout = $00000006;
  dbLockRetry = $00000039;
  dbMaxBufferSize = $00000008;
  dbUserCommitSync = $0000003A;
  dbImplicitCommitSync = $0000003B;
  dbExclusiveAsyncDelay = $0000003C;
  dbSharedAsyncDelay = $0000003D;
  dbMaxLocksPerFile = $0000003E;
  dbLockDelay = $0000003F;
  dbRecycleLVs = $00000041;
  dbFlushTransactionTimeout = $00000042;

// Constants for enum ParameterDirectionEnum
type
  ParameterDirectionEnum = TOleEnum;
const
  dbParamInput = $00000001;
  dbParamOutput = $00000002;
  dbParamInputOutput = $00000003;
  dbParamReturnValue = $00000004;

// Constants for enum UpdateTypeEnum
type
  UpdateTypeEnum = TOleEnum;
const
  dbUpdateBatch = $00000004;
  dbUpdateRegular = $00000001;
  dbUpdateCurrentRecord = $00000002;

// Constants for enum RecordStatusEnum
type
  RecordStatusEnum = TOleEnum;
const
  dbRecordUnmodified = $00000000;
  dbRecordModified = $00000001;
  dbRecordNew = $00000002;
  dbRecordDeleted = $00000003;
  dbRecordDBDeleted = $00000004;

// Constants for enum CommitTransOptionsEnum
type
  CommitTransOptionsEnum = TOleEnum;
const
  dbForceOSFlush = $00000001;

// Constants for enum _DAOSuppHelp
type
  _DAOSuppHelp = TOleEnum;
const
  LogMessages = $00000000;
  KeepLocal = $00000000;
  Replicable = $00000000;
  ReplicableBool = $00000000;
  V1xNullBehavior = $00000000;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _DAO = interface;
  _DAODisp = dispinterface;
  _DBEngine = interface;
  _DBEngineDisp = dispinterface;
  _Collection = interface;
  _CollectionDisp = dispinterface;
  _DynaCollection = interface;
  _DynaCollectionDisp = dispinterface;
  Properties = interface;
  PropertiesDisp = dispinterface;
  Property_ = interface;
  Property_Disp = dispinterface;
  Workspaces = interface;
  WorkspacesDisp = dispinterface;
  Workspace = interface;
  WorkspaceDisp = dispinterface;
  Databases = interface;
  DatabasesDisp = dispinterface;
  Database = interface;
  DatabaseDisp = dispinterface;
  TableDefs = interface;
  TableDefsDisp = dispinterface;
  _TableDef = interface;
  _TableDefDisp = dispinterface;
  Fields = interface;
  FieldsDisp = dispinterface;
  _Field = interface;
  _FieldDisp = dispinterface;
  Indexes = interface;
  IndexesDisp = dispinterface;
  _Index = interface;
  _IndexDisp = dispinterface;
  Recordset = interface;
  RecordsetDisp = dispinterface;
  _QueryDef = interface;
  _QueryDefDisp = dispinterface;
  Parameters = interface;
  ParametersDisp = dispinterface;
  Parameter = interface;
  ParameterDisp = dispinterface;
  Connection = interface;
  ConnectionDisp = dispinterface;
  QueryDefs = interface;
  QueryDefsDisp = dispinterface;
  Recordsets = interface;
  RecordsetsDisp = dispinterface;
  Relations = interface;
  RelationsDisp = dispinterface;
  _Relation = interface;
  _RelationDisp = dispinterface;
  Containers = interface;
  ContainersDisp = dispinterface;
  Container = interface;
  ContainerDisp = dispinterface;
  Documents = interface;
  DocumentsDisp = dispinterface;
  Document = interface;
  DocumentDisp = dispinterface;
  Users = interface;
  UsersDisp = dispinterface;
  _User = interface;
  _UserDisp = dispinterface;
  Groups = interface;
  GroupsDisp = dispinterface;
  _Group = interface;
  _GroupDisp = dispinterface;
  Connections = interface;
  ConnectionsDisp = dispinterface;
  Errors = interface;
  ErrorsDisp = dispinterface;
  Error = interface;
  ErrorDisp = dispinterface;
  IndexFields = interface;
  IndexFieldsDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  TableDef = _TableDef;
  Field = _Field;
  Index = _Index;
  QueryDef = _QueryDef;
  Relation = _Relation;
  User = _User;
  Group = _Group;
  DBEngine = _DBEngine;
  PrivDBEngine = _DBEngine;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PPSafeArray1 = ^PSafeArray; {*}
  PSmallint1 = ^Smallint; {*}


// *********************************************************************//
// Interface: _DAO
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000000A-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _DAO = interface(IDispatch)
    ['{0000000A-0000-0010-8000-00AA006D2EA4}']
    function  Get_Properties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Properties; safecall;
    property Properties: Properties read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  _DAODisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000000A-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _DAODisp = dispinterface
    ['{0000000A-0000-0010-8000-00AA006D2EA4}']
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: _DBEngine
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000021-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _DBEngine = interface(_DAO)
    ['{00000021-0000-0010-8000-00AA006D2EA4}']
    function  Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_IniPath {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_IniPath {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Set_DefaultUser {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Param1: WideString); safecall;
    procedure Set_DefaultPassword {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Param1: WideString); safecall;
    function  Get_LoginTimeout {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    procedure Set_LoginTimeout {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_2:0}ps: Smallint); safecall;
    function  Get_Workspaces {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Workspaces; safecall;
    function  Get_Errors {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Errors; safecall;
    procedure Idle {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Action: OleVariant); safecall;
    procedure CompactDatabase {Flags(1), (5/5) CC:0, INV:1, DBG:6}({VT_8:0}const SrcName: WideString; 
                                                                   {VT_8:0}const DstName: WideString; 
                                                                   {VT_12:0}DstLocale: OleVariant; 
                                                                   {VT_12:0}Options: OleVariant; 
                                                                   {VT_12:0}SrcLocale: OleVariant); safecall;
    procedure RepairDatabase {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString); safecall;
    procedure RegisterDatabase {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_8:0}const Dsn: WideString; 
                                                                    {VT_8:0}const Driver: WideString; 
                                                                    {VT_11:0}Silent: WordBool; 
                                                                    {VT_8:0}const Attributes: WideString); safecall;
    function  _30_CreateWorkspace {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                       {VT_8:0}const UserName: WideString; 
                                                                       {VT_8:0}const Password: WideString): Workspace; safecall;
    function  OpenDatabase {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                {VT_12:0}Options: OleVariant; 
                                                                {VT_12:0}ReadOnly: OleVariant; 
                                                                {VT_12:0}Connect: OleVariant): Database; safecall;
    function  CreateDatabase {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                  {VT_8:0}const Locale: WideString; 
                                                                  {VT_12:0}Option: OleVariant): Database; safecall;
    procedure FreeLocks {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure BeginTrans {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure CommitTrans {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Option: Integer); safecall;
    procedure Rollback {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SetDefaultWorkspace {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                       {VT_8:0}const Password: WideString); safecall;
    procedure SetDataAccessOption {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_2:0}Option: Smallint; 
                                                                       {VT_12:0}Value: OleVariant); safecall;
    function  ISAMStats {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_3:0}StatNum: Integer; 
                                                             {VT_12:0}Reset: OleVariant): Integer; safecall;
    function  Get_SystemDB {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_SystemDB {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  CreateWorkspace {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                   {VT_8:0}const UserName: WideString; 
                                                                   {VT_8:0}const Password: WideString; 
                                                                   {VT_12:0}UseType: OleVariant): Workspace; safecall;
    function  OpenConnection {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                  {VT_12:0}Options: OleVariant; 
                                                                  {VT_12:0}ReadOnly: OleVariant; 
                                                                  {VT_12:0}Connect: OleVariant): Connection; safecall;
    function  Get_DefaultType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_DefaultType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Option: Integer); safecall;
    procedure SetOption {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_3:0}Option: Integer; 
                                                             {VT_12:0}Value: OleVariant); safecall;
    property Version: WideString read Get_Version;
    property IniPath: WideString read Get_IniPath write Set_IniPath;
    property DefaultUser: WideString write Set_DefaultUser;
    property DefaultPassword: WideString write Set_DefaultPassword;
    property LoginTimeout: Smallint read Get_LoginTimeout write Set_LoginTimeout;
    property Workspaces: Workspaces read Get_Workspaces;
    property Errors: Errors read Get_Errors;
    property SystemDB: WideString read Get_SystemDB write Set_SystemDB;
    property DefaultType: Integer read Get_DefaultType write Set_DefaultType;
  end;

// *********************************************************************//
// DispIntf:  _DBEngineDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000021-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _DBEngineDisp = dispinterface
    ['{00000021-0000-0010-8000-00AA006D2EA4}']
    property Version {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809344;
    property IniPath {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1610809345;
    property DefaultUser {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809347;
    property DefaultPassword {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809348;
    property LoginTimeout {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint dispid 1610809349;
    property Workspaces {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Workspaces readonly dispid 0;
    property Errors {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Errors readonly dispid 1610809352;
    procedure Idle {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Action: OleVariant); dispid 1610809353;
    procedure CompactDatabase {Flags(2), (5/5) CC:0, INV:1, DBG:4}({VT_8:0}const SrcName: WideString; 
                                                                   {VT_8:0}const DstName: WideString; 
                                                                   {VT_12:0}DstLocale: OleVariant; 
                                                                   {VT_12:0}Options: OleVariant; 
                                                                   {VT_12:0}SrcLocale: OleVariant); dispid 1610809354;
    procedure RepairDatabase {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809355;
    procedure RegisterDatabase {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_8:0}const Dsn: WideString; 
                                                                    {VT_8:0}const Driver: WideString; 
                                                                    {VT_11:0}Silent: WordBool; 
                                                                    {VT_8:0}const Attributes: WideString); dispid 1610809356;
    function  _30_CreateWorkspace {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                       {VT_8:0}const UserName: WideString; 
                                                                       {VT_8:0}const Password: WideString): Workspace; dispid 1610809357;
    function  OpenDatabase {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                {VT_12:0}Options: OleVariant; 
                                                                {VT_12:0}ReadOnly: OleVariant; 
                                                                {VT_12:0}Connect: OleVariant): Database; dispid 1610809358;
    function  CreateDatabase {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                  {VT_8:0}const Locale: WideString; 
                                                                  {VT_12:0}Option: OleVariant): Database; dispid 1610809359;
    procedure FreeLocks {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809360;
    procedure BeginTrans {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809361;
    procedure CommitTrans {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Option: Integer); dispid 1610809362;
    procedure Rollback {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809363;
    procedure SetDefaultWorkspace {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                       {VT_8:0}const Password: WideString); dispid 1610809364;
    procedure SetDataAccessOption {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_2:0}Option: Smallint; 
                                                                       {VT_12:0}Value: OleVariant); dispid 1610809365;
    function  ISAMStats {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}StatNum: Integer; 
                                                             {VT_12:0}Reset: OleVariant): Integer; dispid 1610809366;
    property SystemDB {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 1610809367;
    function  CreateWorkspace {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                   {VT_8:0}const UserName: WideString; 
                                                                   {VT_8:0}const Password: WideString; 
                                                                   {VT_12:0}UseType: OleVariant): Workspace; dispid 1610809369;
    function  OpenConnection {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                  {VT_12:0}Options: OleVariant; 
                                                                  {VT_12:0}ReadOnly: OleVariant; 
                                                                  {VT_12:0}Connect: OleVariant): Connection; dispid 1610809370;
    property DefaultType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 1610809371;
    procedure SetOption {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}Option: Integer; 
                                                             {VT_12:0}Value: OleVariant); dispid 1610809373;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: _Collection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000000A0-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _Collection = interface(IDispatch)
    ['{000000A0-0000-0010-8000-00AA006D2EA4}']
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    function  _NewEnum {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IUnknown; safecall;
    procedure Refresh {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Count: Smallint read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _CollectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000000A0-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _CollectionDisp = dispinterface
    ['{000000A0-0000-0010-8000-00AA006D2EA4}']
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: _DynaCollection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000000A2-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _DynaCollection = interface(_Collection)
    ['{000000A2-0000-0010-8000-00AA006D2EA4}']
    procedure Append {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_9:0}const Object_: IDispatch); safecall;
    procedure Delete {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  _DynaCollectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {000000A2-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _DynaCollectionDisp = dispinterface
    ['{000000A2-0000-0010-8000-00AA006D2EA4}']
    procedure Append {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Object_: IDispatch); dispid 1610809344;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809345;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Properties
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000029-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Properties = interface(_DynaCollection)
    ['{00000029-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Property_; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Property_ read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  PropertiesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000029-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  PropertiesDisp = dispinterface
    ['{00000029-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Property_ readonly dispid 0; default;
    procedure Append {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Object_: IDispatch); dispid 1610809344;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809345;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Property_
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000027-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Property_ = interface(_DAO)
    ['{00000027-0000-0010-8000-00AA006D2EA4}']
    function  Get_Value {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_Value {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}pval: OleVariant); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_2:0}ptype: Smallint); safecall;
    function  Get_Inherited_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    property Value: OleVariant read Get_Value write Set_Value;
    property Name: WideString read Get_Name;
    property Type_: Smallint read Get_Type_;
    property Inherited_: WordBool read Get_Inherited_;
  end;

// *********************************************************************//
// DispIntf:  Property_Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000027-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Property_Disp = dispinterface
    ['{00000027-0000-0010-8000-00AA006D2EA4}']
    property Value {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant dispid 0;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809346;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610809348;
    property Inherited_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809350;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Workspaces
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000003B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Workspaces = interface(_DynaCollection)
    ['{0000003B-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Workspace; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Workspace read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  WorkspacesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000003B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  WorkspacesDisp = dispinterface
    ['{0000003B-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Workspace readonly dispid 0; default;
    procedure Append {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Object_: IDispatch); dispid 1610809344;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809345;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Workspace
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000039-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Workspace = interface(_DAO)
    ['{00000039-0000-0010-8000-00AA006D2EA4}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_UserName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set__30_UserName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Param1: WideString); safecall;
    procedure Set__30_Password {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Param1: WideString); safecall;
    function  Get_IsolateODBCTrans {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    procedure Set_IsolateODBCTrans {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_2:0}ps: Smallint); safecall;
    function  Get_Databases {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Databases; safecall;
    function  Get_Users {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Users; safecall;
    function  Get_Groups {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Groups; safecall;
    procedure BeginTrans {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure CommitTrans {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Options: Integer); safecall;
    procedure Close {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Rollback {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  OpenDatabase {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                {VT_12:0}Options: OleVariant; 
                                                                {VT_12:0}ReadOnly: OleVariant; 
                                                                {VT_12:0}Connect: OleVariant): Database; safecall;
    function  CreateDatabase {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                  {VT_8:0}const Connect: WideString; 
                                                                  {VT_12:0}Option: OleVariant): Database; safecall;
    function  CreateUser {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                              {VT_12:0}PID: OleVariant; 
                                                              {VT_12:0}Password: OleVariant): User; safecall;
    function  CreateGroup {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                               {VT_12:0}PID: OleVariant): Group; safecall;
    function  OpenConnection {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                  {VT_12:0}Options: OleVariant; 
                                                                  {VT_12:0}ReadOnly: OleVariant; 
                                                                  {VT_12:0}Connect: OleVariant): Connection; safecall;
    function  Get_LoginTimeout {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_LoginTimeout {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pTimeout: Integer); safecall;
    function  Get_DefaultCursorDriver {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_DefaultCursorDriver {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pCursorType: Integer); safecall;
    function  Get_hEnv {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Connections {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Connections; safecall;
    property Name: WideString read Get_Name;
    property UserName: WideString read Get_UserName;
    property _30_UserName: WideString write Set__30_UserName;
    property _30_Password: WideString write Set__30_Password;
    property IsolateODBCTrans: Smallint read Get_IsolateODBCTrans;
    property Databases: Databases read Get_Databases;
    property Users: Users read Get_Users;
    property Groups: Groups read Get_Groups;
    property LoginTimeout: Integer read Get_LoginTimeout;
    property DefaultCursorDriver: Integer read Get_DefaultCursorDriver;
    property hEnv: Integer read Get_hEnv;
    property Type_: Integer read Get_Type_;
    property Connections: Connections read Get_Connections;
  end;

// *********************************************************************//
// DispIntf:  WorkspaceDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000039-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  WorkspaceDisp = dispinterface
    ['{00000039-0000-0010-8000-00AA006D2EA4}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809344;
    property UserName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809346;
    property _30_UserName {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809347;
    property _30_Password {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809348;
    property IsolateODBCTrans {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610809349;
    property Databases {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Databases readonly dispid 0;
    property Users {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Users readonly dispid 1610809352;
    property Groups {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Groups readonly dispid 1610809353;
    procedure BeginTrans {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809354;
    procedure CommitTrans {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Options: Integer); dispid 1610809355;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809356;
    procedure Rollback {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809357;
    function  OpenDatabase {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                {VT_12:0}Options: OleVariant; 
                                                                {VT_12:0}ReadOnly: OleVariant; 
                                                                {VT_12:0}Connect: OleVariant): Database; dispid 1610809358;
    function  CreateDatabase {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                  {VT_8:0}const Connect: WideString; 
                                                                  {VT_12:0}Option: OleVariant): Database; dispid 1610809359;
    function  CreateUser {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                              {VT_12:0}PID: OleVariant; 
                                                              {VT_12:0}Password: OleVariant): User; dispid 1610809360;
    function  CreateGroup {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                               {VT_12:0}PID: OleVariant): Group; dispid 1610809361;
    function  OpenConnection {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                  {VT_12:0}Options: OleVariant; 
                                                                  {VT_12:0}ReadOnly: OleVariant; 
                                                                  {VT_12:0}Connect: OleVariant): Connection; dispid 1610809362;
    property LoginTimeout {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809363;
    property DefaultCursorDriver {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809365;
    property hEnv {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809367;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809368;
    property Connections {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Connections readonly dispid 1610809369;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Databases
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000073-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Databases = interface(_Collection)
    ['{00000073-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Database; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Database read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  DatabasesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000073-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  DatabasesDisp = dispinterface
    ['{00000073-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Database readonly dispid 0; default;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Database
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000071-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Database = interface(_DAO)
    ['{00000071-0000-0010-8000-00AA006D2EA4}']
    function  Get_CollatingOrder {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Connect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_QueryTimeout {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    procedure Set_QueryTimeout {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_2:0}ps: Smallint); safecall;
    function  Get_Transactions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Updatable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_RecordsAffected {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_TableDefs {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TableDefs; safecall;
    function  Get_QueryDefs {Flags(1), (1/0) CC:0, INV:2, DBG:6}: QueryDefs; safecall;
    function  Get_Relations {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Relations; safecall;
    function  Get_Containers {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Containers; safecall;
    function  Get_Recordsets {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Recordsets; safecall;
    procedure Close {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Execute {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Query: WideString; 
                                                           {VT_12:0}Options: OleVariant); safecall;
    function  _30_OpenRecordset {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                     {VT_12:0}Type_: OleVariant; 
                                                                     {VT_12:0}Options: OleVariant): Recordset; safecall;
    function  CreateProperty {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; safecall;
    function  CreateRelation {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Table: OleVariant; 
                                                                  {VT_12:0}ForeignTable: OleVariant; 
                                                                  {VT_12:0}Attributes: OleVariant): Relation; safecall;
    function  CreateTableDef {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Attributes: OleVariant; 
                                                                  {VT_12:0}SourceTableName: OleVariant; 
                                                                  {VT_12:0}Connect: OleVariant): TableDef; safecall;
    procedure BeginTrans {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure CommitTrans {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Options: Integer); safecall;
    procedure Rollback {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  CreateDynaset {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                 {VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}Inconsistent: OleVariant): Recordset; safecall;
    function  CreateQueryDef {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}SQLText: OleVariant): QueryDef; safecall;
    function  CreateSnapshot {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const Source: WideString; 
                                                                  {VT_12:0}Options: OleVariant): Recordset; safecall;
    procedure DeleteQueryDef {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  ExecuteSQL {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const SQL: WideString): Integer; safecall;
    function  ListFields {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString): Recordset; safecall;
    function  ListTables {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Recordset; safecall;
    function  OpenQueryDef {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString): QueryDef; safecall;
    function  OpenTable {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                             {VT_12:0}Options: OleVariant): Recordset; safecall;
    function  Get_ReplicaID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_DesignMasterID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_DesignMasterID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Synchronize {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const DbPathName: WideString; 
                                                               {VT_12:0}ExchangeType: OleVariant); safecall;
    procedure MakeReplica {Flags(1), (3/3) CC:0, INV:1, DBG:6}({VT_8:0}const PathName: WideString; 
                                                               {VT_8:0}const Description: WideString; 
                                                               {VT_12:0}Options: OleVariant); safecall;
    procedure Set_Connect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure NewPassword {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const bstrOld: WideString; 
                                                               {VT_8:0}const bstrNew: WideString); safecall;
    function  OpenRecordset {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                 {VT_12:0}Type_: OleVariant; 
                                                                 {VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}LockEdit: OleVariant): Recordset; safecall;
    function  Get_Connection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Connection; safecall;
    procedure PopulatePartial {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const DbPathName: WideString); safecall;
    property CollatingOrder: Integer read Get_CollatingOrder;
    property Connect: WideString read Get_Connect;
    property Name: WideString read Get_Name;
    property QueryTimeout: Smallint read Get_QueryTimeout;
    property Transactions: WordBool read Get_Transactions;
    property Updatable: WordBool read Get_Updatable;
    property Version: WideString read Get_Version;
    property RecordsAffected: Integer read Get_RecordsAffected;
    property TableDefs: TableDefs read Get_TableDefs;
    property QueryDefs: QueryDefs read Get_QueryDefs;
    property Relations: Relations read Get_Relations;
    property Containers: Containers read Get_Containers;
    property Recordsets: Recordsets read Get_Recordsets;
    property ReplicaID: WideString read Get_ReplicaID;
    property DesignMasterID: WideString read Get_DesignMasterID;
    property Connection: Connection read Get_Connection;
  end;

// *********************************************************************//
// DispIntf:  DatabaseDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000071-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  DatabaseDisp = dispinterface
    ['{00000071-0000-0010-8000-00AA006D2EA4}']
    property CollatingOrder {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809344;
    property Connect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809345;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809346;
    property QueryTimeout {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610809347;
    property Transactions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809349;
    property Updatable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809350;
    property Version {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809351;
    property RecordsAffected {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809352;
    property TableDefs {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TableDefs readonly dispid 0;
    property QueryDefs {Flags(2), (1/0) CC:0, INV:2, DBG:6}: QueryDefs readonly dispid 1610809354;
    property Relations {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Relations readonly dispid 1610809355;
    property Containers {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Containers readonly dispid 1610809356;
    property Recordsets {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Recordsets readonly dispid 1610809357;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809358;
    procedure Execute {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Query: WideString; 
                                                           {VT_12:0}Options: OleVariant); dispid 1610809359;
    function  _30_OpenRecordset {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                     {VT_12:0}Type_: OleVariant; 
                                                                     {VT_12:0}Options: OleVariant): Recordset; dispid 1610809360;
    function  CreateProperty {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; dispid 1610809361;
    function  CreateRelation {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Table: OleVariant; 
                                                                  {VT_12:0}ForeignTable: OleVariant; 
                                                                  {VT_12:0}Attributes: OleVariant): Relation; dispid 1610809362;
    function  CreateTableDef {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Attributes: OleVariant; 
                                                                  {VT_12:0}SourceTableName: OleVariant; 
                                                                  {VT_12:0}Connect: OleVariant): TableDef; dispid 1610809363;
    procedure BeginTrans {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809364;
    procedure CommitTrans {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Options: Integer); dispid 1610809365;
    procedure Rollback {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809366;
    function  CreateDynaset {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                 {VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}Inconsistent: OleVariant): Recordset; dispid 1610809367;
    function  CreateQueryDef {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}SQLText: OleVariant): QueryDef; dispid 1610809368;
    function  CreateSnapshot {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const Source: WideString; 
                                                                  {VT_12:0}Options: OleVariant): Recordset; dispid 1610809369;
    procedure DeleteQueryDef {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809370;
    function  ExecuteSQL {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const SQL: WideString): Integer; dispid 1610809371;
    function  ListFields {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString): Recordset; dispid 1610809372;
    function  ListTables {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Recordset; dispid 1610809373;
    function  OpenQueryDef {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString): QueryDef; dispid 1610809374;
    function  OpenTable {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                             {VT_12:0}Options: OleVariant): Recordset; dispid 1610809375;
    property ReplicaID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809376;
    property DesignMasterID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809377;
    procedure Synchronize {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const DbPathName: WideString; 
                                                               {VT_12:0}ExchangeType: OleVariant); dispid 1610809379;
    procedure MakeReplica {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_8:0}const PathName: WideString; 
                                                               {VT_8:0}const Description: WideString; 
                                                               {VT_12:0}Options: OleVariant); dispid 1610809380;
    procedure NewPassword {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const bstrOld: WideString; 
                                                               {VT_8:0}const bstrNew: WideString); dispid 1610809382;
    function  OpenRecordset {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                 {VT_12:0}Type_: OleVariant; 
                                                                 {VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}LockEdit: OleVariant): Recordset; dispid 1610809383;
    property Connection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Connection readonly dispid 1610809384;
    procedure PopulatePartial {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const DbPathName: WideString); dispid 1610809385;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: TableDefs
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000004B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  TableDefs = interface(_DynaCollection)
    ['{0000004B-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): TableDef; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: TableDef read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  TableDefsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000004B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  TableDefsDisp = dispinterface
    ['{0000004B-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: TableDef readonly dispid 0; default;
    procedure Append {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Object_: IDispatch); dispid 1610809344;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809345;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: _TableDef
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000049-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _TableDef = interface(_DAO)
    ['{00000049-0000-0010-8000-00AA006D2EA4}']
    function  Get_Attributes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Attributes {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pl: Integer); safecall;
    function  Get_Connect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Connect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_DateCreated {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_LastUpdated {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_SourceTableName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_SourceTableName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Updatable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_ValidationText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ValidationText {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_ValidationRule {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ValidationRule {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_RecordCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Fields {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Fields; safecall;
    function  Get_Indexes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Indexes; safecall;
    function  OpenRecordset {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Type_: OleVariant; 
                                                                 {VT_12:0}Options: OleVariant): Recordset; safecall;
    procedure RefreshLink {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  CreateField {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                               {VT_12:0}Type_: OleVariant; 
                                                               {VT_12:0}Size: OleVariant): Field; safecall;
    function  CreateIndex {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant): Index; safecall;
    function  CreateProperty {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; safecall;
    function  Get_ConflictTable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ReplicaFilter {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_ReplicaFilter {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}pFilter: OleVariant); safecall;
    property Attributes: Integer read Get_Attributes;
    property Connect: WideString read Get_Connect;
    property DateCreated: OleVariant read Get_DateCreated;
    property LastUpdated: OleVariant read Get_LastUpdated;
    property Name: WideString read Get_Name;
    property SourceTableName: WideString read Get_SourceTableName;
    property Updatable: WordBool read Get_Updatable;
    property ValidationText: WideString read Get_ValidationText;
    property ValidationRule: WideString read Get_ValidationRule;
    property RecordCount: Integer read Get_RecordCount;
    property Fields: Fields read Get_Fields;
    property Indexes: Indexes read Get_Indexes;
    property ConflictTable: WideString read Get_ConflictTable;
    property ReplicaFilter: OleVariant read Get_ReplicaFilter;
  end;

// *********************************************************************//
// DispIntf:  _TableDefDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000049-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _TableDefDisp = dispinterface
    ['{00000049-0000-0010-8000-00AA006D2EA4}']
    property Attributes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809344;
    property Connect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809346;
    property DateCreated {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809348;
    property LastUpdated {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809349;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809350;
    property SourceTableName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809352;
    property Updatable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809354;
    property ValidationText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809355;
    property ValidationRule {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809357;
    property RecordCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809359;
    property Fields {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Fields readonly dispid 0;
    property Indexes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Indexes readonly dispid 1610809361;
    function  OpenRecordset {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Type_: OleVariant; 
                                                                 {VT_12:0}Options: OleVariant): Recordset; dispid 1610809362;
    procedure RefreshLink {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809363;
    function  CreateField {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                               {VT_12:0}Type_: OleVariant; 
                                                               {VT_12:0}Size: OleVariant): Field; dispid 1610809364;
    function  CreateIndex {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant): Index; dispid 1610809365;
    function  CreateProperty {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; dispid 1610809366;
    property ConflictTable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809367;
    property ReplicaFilter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809368;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Fields
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000053-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Fields = interface(_DynaCollection)
    ['{00000053-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Field; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Field read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  FieldsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000053-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  FieldsDisp = dispinterface
    ['{00000053-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Field readonly dispid 0; default;
    procedure Append {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Object_: IDispatch); dispid 1610809344;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809345;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: _Field
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000051-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _Field = interface(_DAO)
    ['{00000051-0000-0010-8000-00AA006D2EA4}']
    function  Get_CollatingOrder {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_2:0}ps: Smallint); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Size {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pl: Integer); safecall;
    function  Get_SourceField {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_SourceTable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Value {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_Value {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}pvar: OleVariant); safecall;
    function  Get_Attributes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Attributes {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pl: Integer); safecall;
    function  Get_OrdinalPosition {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    procedure Set_OrdinalPosition {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_2:0}ps: Smallint); safecall;
    function  Get_ValidationText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ValidationText {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_ValidateOnSet {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ValidateOnSet {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pb: WordBool); safecall;
    function  Get_ValidationRule {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ValidationRule {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_DefaultValue {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_DefaultValue {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}pvar: OleVariant); safecall;
    function  Get_Required {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Required {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pb: WordBool); safecall;
    function  Get_AllowZeroLength {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_AllowZeroLength {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pb: WordBool); safecall;
    function  Get_DataUpdatable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_ForeignName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ForeignName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure AppendChunk {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Val: OleVariant); safecall;
    function  GetChunk {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_3:0}Offset: Integer; 
                                                            {VT_3:0}Bytes: Integer): OleVariant; safecall;
    function  _30_FieldSize {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Integer; safecall;
    function  CreateProperty {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; safecall;
    function  Get_CollectionIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    function  Get_OriginalValue {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_VisibleValue {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_FieldSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    property CollatingOrder: Integer read Get_CollatingOrder;
    property Type_: Smallint read Get_Type_;
    property Name: WideString read Get_Name;
    property Size: Integer read Get_Size;
    property SourceField: WideString read Get_SourceField;
    property SourceTable: WideString read Get_SourceTable;
    property Value: OleVariant read Get_Value write Set_Value;
    property Attributes: Integer read Get_Attributes;
    property OrdinalPosition: Smallint read Get_OrdinalPosition;
    property ValidationText: WideString read Get_ValidationText;
    property ValidateOnSet: WordBool read Get_ValidateOnSet;
    property ValidationRule: WideString read Get_ValidationRule;
    property DefaultValue: OleVariant read Get_DefaultValue;
    property Required: WordBool read Get_Required;
    property AllowZeroLength: WordBool read Get_AllowZeroLength;
    property DataUpdatable: WordBool read Get_DataUpdatable;
    property ForeignName: WideString read Get_ForeignName;
    property CollectionIndex: Smallint read Get_CollectionIndex;
    property OriginalValue: OleVariant read Get_OriginalValue;
    property VisibleValue: OleVariant read Get_VisibleValue;
    property FieldSize: Integer read Get_FieldSize;
  end;

// *********************************************************************//
// DispIntf:  _FieldDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000051-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _FieldDisp = dispinterface
    ['{00000051-0000-0010-8000-00AA006D2EA4}']
    property CollatingOrder {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809344;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610809345;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809347;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809349;
    property SourceField {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809351;
    property SourceTable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809352;
    property Value {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant dispid 0;
    property Attributes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809355;
    property OrdinalPosition {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610809357;
    property ValidationText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809359;
    property ValidateOnSet {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809361;
    property ValidationRule {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809363;
    property DefaultValue {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809365;
    property Required {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809367;
    property AllowZeroLength {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809369;
    property DataUpdatable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809371;
    property ForeignName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809372;
    procedure AppendChunk {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Val: OleVariant); dispid 1610809374;
    function  GetChunk {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_3:0}Offset: Integer; 
                                                            {VT_3:0}Bytes: Integer): OleVariant; dispid 1610809375;
    function  _30_FieldSize {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Integer; dispid 1610809376;
    function  CreateProperty {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; dispid 1610809377;
    property CollectionIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610809378;
    property OriginalValue {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809379;
    property VisibleValue {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809380;
    property FieldSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809381;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Indexes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000005B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Indexes = interface(_DynaCollection)
    ['{0000005B-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Index; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Index read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IndexesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000005B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  IndexesDisp = dispinterface
    ['{0000005B-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Index readonly dispid 0; default;
    procedure Append {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Object_: IDispatch); dispid 1610809344;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809345;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: _Index
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000059-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _Index = interface(_DAO)
    ['{00000059-0000-0010-8000-00AA006D2EA4}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Foreign {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Unique {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Unique {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pb: WordBool); safecall;
    function  Get_Clustered {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Clustered {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pb: WordBool); safecall;
    function  Get_Required {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Required {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pb: WordBool); safecall;
    function  Get_IgnoreNulls {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_IgnoreNulls {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pb: WordBool); safecall;
    function  Get_Primary {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Primary {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pb: WordBool); safecall;
    function  Get_DistinctCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Fields {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_Fields {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}pv: OleVariant); safecall;
    function  CreateField {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                               {VT_12:0}Type_: OleVariant; 
                                                               {VT_12:0}Size: OleVariant): Field; safecall;
    function  CreateProperty {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; safecall;
    property Name: WideString read Get_Name;
    property Foreign: WordBool read Get_Foreign;
    property Unique: WordBool read Get_Unique;
    property Clustered: WordBool read Get_Clustered;
    property Required: WordBool read Get_Required;
    property IgnoreNulls: WordBool read Get_IgnoreNulls;
    property Primary: WordBool read Get_Primary;
    property DistinctCount: Integer read Get_DistinctCount;
    property Fields: OleVariant read Get_Fields;
  end;

// *********************************************************************//
// DispIntf:  _IndexDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000059-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _IndexDisp = dispinterface
    ['{00000059-0000-0010-8000-00AA006D2EA4}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809344;
    property Foreign {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809346;
    property Unique {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809347;
    property Clustered {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809349;
    property Required {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809351;
    property IgnoreNulls {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809353;
    property Primary {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809355;
    property DistinctCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809357;
    property Fields {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809358;
    function  CreateField {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                               {VT_12:0}Type_: OleVariant; 
                                                               {VT_12:0}Size: OleVariant): Field; dispid 1610809360;
    function  CreateProperty {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; dispid 1610809361;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Recordset
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000031-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Recordset = interface(_DAO)
    ['{00000031-0000-0010-8000-00AA006D2EA4}']
    function  Get_BOF {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Bookmark {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PSafeArray; safecall;
    procedure Set_Bookmark {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_27:1}var ppsach: PSafeArray); safecall;
    function  Get_Bookmarkable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_DateCreated {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_EOF {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Filter {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Filter {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Index {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Index {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_LastModified {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PSafeArray; safecall;
    function  Get_LastUpdated {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_LockEdits {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_LockEdits {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pb: WordBool); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_NoMatch {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sort {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Sort {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Transactions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    function  Get_RecordCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Updatable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Restartable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_ValidationText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ValidationRule {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CacheStart {Flags(1), (1/0) CC:0, INV:2, DBG:6}: PSafeArray; safecall;
    procedure Set_CacheStart {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_27:1}var ppsa: PSafeArray); safecall;
    function  Get_CacheSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_CacheSize {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pl: Integer); safecall;
    function  Get_PercentPosition {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Single; safecall;
    procedure Set_PercentPosition {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_4:0}pd: Single); safecall;
    function  Get_AbsolutePosition {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_AbsolutePosition {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pl: Integer); safecall;
    function  Get_EditMode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    function  Get_ODBCFetchCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_ODBCFetchDelay {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Database; safecall;
    function  Get_Fields {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Fields; safecall;
    function  Get_Indexes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Indexes; safecall;
    procedure _30_CancelUpdate {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure AddNew {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Close {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  OpenRecordset {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Type_: OleVariant; 
                                                                 {VT_12:0}Options: OleVariant): Recordset; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Edit {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure FindFirst {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Criteria: WideString); safecall;
    procedure FindLast {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Criteria: WideString); safecall;
    procedure FindNext {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Criteria: WideString); safecall;
    procedure FindPrevious {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Criteria: WideString); safecall;
    procedure MoveFirst {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure _30_MoveLast {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure MoveNext {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure MovePrevious {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Seek {Flags(1), (14/14) CC:0, INV:1, DBG:6}({VT_8:0}const Comparison: WideString; 
                                                          {VT_12:0}Key1: OleVariant; 
                                                          {VT_12:0}Key2: OleVariant; 
                                                          {VT_12:0}Key3: OleVariant; 
                                                          {VT_12:0}Key4: OleVariant; 
                                                          {VT_12:0}Key5: OleVariant; 
                                                          {VT_12:0}Key6: OleVariant; 
                                                          {VT_12:0}Key7: OleVariant; 
                                                          {VT_12:0}Key8: OleVariant; 
                                                          {VT_12:0}Key9: OleVariant; 
                                                          {VT_12:0}Key10: OleVariant; 
                                                          {VT_12:0}Key11: OleVariant; 
                                                          {VT_12:0}Key12: OleVariant; 
                                                          {VT_12:0}Key13: OleVariant); safecall;
    procedure _30_Update {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Clone {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Recordset; safecall;
    procedure Requery {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}NewQueryDef: OleVariant); safecall;
    procedure Move {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_3:0}Rows: Integer; 
                                                        {VT_12:0}StartBookmark: OleVariant); safecall;
    procedure FillCache {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_12:0}Rows: OleVariant; 
                                                             {VT_12:0}StartBookmark: OleVariant); safecall;
    function  CreateDynaset {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}Inconsistent: OleVariant): Recordset; safecall;
    function  CreateSnapshot {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Options: OleVariant): Recordset; safecall;
    function  CopyQueryDef {Flags(1), (1/0) CC:0, INV:1, DBG:6}: QueryDef; safecall;
    function  ListFields {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Recordset; safecall;
    function  ListIndexes {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Recordset; safecall;
    function  GetRows {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}NumRows: OleVariant): OleVariant; safecall;
    function  Get_Collect {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): OleVariant; safecall;
    procedure Set_Collect {Flags(1), (2/2) CC:0, INV:4, DBG:6}({VT_12:0}Item: OleVariant; 
                                                               {VT_12:0}pvar: OleVariant); safecall;
    procedure Cancel {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  NextRecordset {Flags(1), (1/0) CC:0, INV:1, DBG:6}: WordBool; safecall;
    function  Get_hStmt {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_StillExecuting {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_BatchSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_BatchSize {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pl: Integer); safecall;
    function  Get_BatchCollisionCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_BatchCollisions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_Connection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Connection; safecall;
    procedure Set_Connection {Flags(1), (1/1) CC:0, INV:8, DBG:6}({VT_29:1}const ppCn: Connection); safecall;
    function  Get_RecordStatus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    function  Get_UpdateOptions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_UpdateOptions {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pl: Integer); safecall;
    procedure CancelUpdate {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}UpdateType: Integer); safecall;
    procedure Update {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_3:0}UpdateType: Integer; 
                                                          {VT_11:0}Force: WordBool); safecall;
    procedure MoveLast {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Options: Integer); safecall;
    property BOF: WordBool read Get_BOF;
    property Bookmarkable: WordBool read Get_Bookmarkable;
    property DateCreated: OleVariant read Get_DateCreated;
    property EOF: WordBool read Get_EOF;
    property Filter: WideString read Get_Filter write Set_Filter;
    property Index: WideString read Get_Index write Set_Index;
    property LastModified: PSafeArray read Get_LastModified;
    property LastUpdated: OleVariant read Get_LastUpdated;
    property LockEdits: WordBool read Get_LockEdits write Set_LockEdits;
    property Name: WideString read Get_Name;
    property NoMatch: WordBool read Get_NoMatch;
    property Sort: WideString read Get_Sort write Set_Sort;
    property Transactions: WordBool read Get_Transactions;
    property Type_: Smallint read Get_Type_;
    property RecordCount: Integer read Get_RecordCount;
    property Updatable: WordBool read Get_Updatable;
    property Restartable: WordBool read Get_Restartable;
    property ValidationText: WideString read Get_ValidationText;
    property ValidationRule: WideString read Get_ValidationRule;
    property CacheSize: Integer read Get_CacheSize write Set_CacheSize;
    property PercentPosition: Single read Get_PercentPosition write Set_PercentPosition;
    property AbsolutePosition: Integer read Get_AbsolutePosition write Set_AbsolutePosition;
    property EditMode: Smallint read Get_EditMode;
    property ODBCFetchCount: Integer read Get_ODBCFetchCount;
    property ODBCFetchDelay: Integer read Get_ODBCFetchDelay;
    property Parent: Database read Get_Parent;
    property Fields: Fields read Get_Fields;
    property Indexes: Indexes read Get_Indexes;
    property Collect {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: OleVariant read Get_Collect write Set_Collect;
    property hStmt: Integer read Get_hStmt;
    property StillExecuting: WordBool read Get_StillExecuting;
    property BatchSize: Integer read Get_BatchSize write Set_BatchSize;
    property BatchCollisionCount: Integer read Get_BatchCollisionCount;
    property BatchCollisions: OleVariant read Get_BatchCollisions;
    property Connection: Connection read Get_Connection write Set_Connection;
    property RecordStatus: Smallint read Get_RecordStatus;
    property UpdateOptions: Integer read Get_UpdateOptions write Set_UpdateOptions;
  end;

// *********************************************************************//
// DispIntf:  RecordsetDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000031-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  RecordsetDisp = dispinterface
    ['{00000031-0000-0010-8000-00AA006D2EA4}']
    property BOF {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 101;
    function  Bookmark {Flags(2), (1/0) CC:0, INV:2, DBG:4}: {??PSafeArray} OleVariant; dispid 102;
    property Bookmarkable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 103;
    property DateCreated {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 104;
    property EOF {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 105;
    property Filter {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 106;
    property Index {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 107;
    property LastModified {Flags(2), (1/0) CC:0, INV:2, DBG:6}: {??PSafeArray} OleVariant readonly dispid 108;
    property LastUpdated {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 109;
    property LockEdits {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 110;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 111;
    property NoMatch {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 112;
    property Sort {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 113;
    property Transactions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 114;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 115;
    property RecordCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 116;
    property Updatable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 117;
    property Restartable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 118;
    property ValidationText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 119;
    property ValidationRule {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 120;
    function  CacheStart {Flags(2), (1/0) CC:0, INV:2, DBG:4}: {??PSafeArray} OleVariant; dispid 121;
    property CacheSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 122;
    property PercentPosition {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Single dispid 123;
    property AbsolutePosition {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 124;
    property EditMode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 125;
    property ODBCFetchCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 126;
    property ODBCFetchDelay {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 127;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Database readonly dispid 128;
    property Fields {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Fields readonly dispid 0;
    property Indexes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Indexes readonly dispid 130;
    procedure _30_CancelUpdate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 131;
    procedure AddNew {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 132;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 133;
    function  OpenRecordset {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Type_: OleVariant; 
                                                                 {VT_12:0}Options: OleVariant): Recordset; dispid 134;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 135;
    procedure Edit {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 136;
    procedure FindFirst {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Criteria: WideString); dispid 137;
    procedure FindLast {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Criteria: WideString); dispid 138;
    procedure FindNext {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Criteria: WideString); dispid 139;
    procedure FindPrevious {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Criteria: WideString); dispid 140;
    procedure MoveFirst {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 141;
    procedure _30_MoveLast {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 142;
    procedure MoveNext {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 143;
    procedure MovePrevious {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 144;
    procedure Seek {Flags(2), (14/14) CC:0, INV:1, DBG:4}({VT_8:0}const Comparison: WideString; 
                                                          {VT_12:0}Key1: OleVariant; 
                                                          {VT_12:0}Key2: OleVariant; 
                                                          {VT_12:0}Key3: OleVariant; 
                                                          {VT_12:0}Key4: OleVariant; 
                                                          {VT_12:0}Key5: OleVariant; 
                                                          {VT_12:0}Key6: OleVariant; 
                                                          {VT_12:0}Key7: OleVariant; 
                                                          {VT_12:0}Key8: OleVariant; 
                                                          {VT_12:0}Key9: OleVariant; 
                                                          {VT_12:0}Key10: OleVariant; 
                                                          {VT_12:0}Key11: OleVariant; 
                                                          {VT_12:0}Key12: OleVariant; 
                                                          {VT_12:0}Key13: OleVariant); dispid 145;
    procedure _30_Update {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 146;
    function  Clone {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Recordset; dispid 147;
    procedure Requery {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}NewQueryDef: OleVariant); dispid 148;
    procedure Move {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}Rows: Integer; 
                                                        {VT_12:0}StartBookmark: OleVariant); dispid 149;
    procedure FillCache {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_12:0}Rows: OleVariant; 
                                                             {VT_12:0}StartBookmark: OleVariant); dispid 150;
    function  CreateDynaset {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}Inconsistent: OleVariant): Recordset; dispid 151;
    function  CreateSnapshot {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Options: OleVariant): Recordset; dispid 152;
    function  CopyQueryDef {Flags(2), (1/0) CC:0, INV:1, DBG:4}: QueryDef; dispid 153;
    function  ListFields {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Recordset; dispid 154;
    function  ListIndexes {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Recordset; dispid 155;
    function  GetRows {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}NumRows: OleVariant): OleVariant; dispid 156;
    property Collect {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: OleVariant dispid -8;
    procedure Cancel {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 157;
    function  NextRecordset {Flags(2), (1/0) CC:0, INV:1, DBG:4}: WordBool; dispid 158;
    property hStmt {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 159;
    property StillExecuting {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 160;
    property BatchSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 161;
    property BatchCollisionCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 162;
    property BatchCollisions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 163;
    property Connection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Connection dispid 164;
    property RecordStatus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 165;
    property UpdateOptions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 166;
    procedure CancelUpdate {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}UpdateType: Integer); dispid 167;
    procedure Update {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}UpdateType: Integer; 
                                                          {VT_11:0}Force: WordBool); dispid 168;
    procedure MoveLast {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Options: Integer); dispid 169;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: _QueryDef
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000079-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _QueryDef = interface(_DAO)
    ['{00000079-0000-0010-8000-00AA006D2EA4}']
    function  Get_DateCreated {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_LastUpdated {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_ODBCTimeout {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    procedure Set_ODBCTimeout {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_2:0}ps: Smallint); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    function  Get_SQL {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_SQL {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Updatable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Connect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Connect {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_ReturnsRecords {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReturnsRecords {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pb: WordBool); safecall;
    function  Get_RecordsAffected {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Fields {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Fields; safecall;
    function  Get_Parameters {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Parameters; safecall;
    procedure Close {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  _30_OpenRecordset {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Type_: OleVariant; 
                                                                     {VT_12:0}Options: OleVariant): Recordset; safecall;
    function  _30__OpenRecordset {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Type_: OleVariant; 
                                                                      {VT_12:0}Options: OleVariant): Recordset; safecall;
    function  _Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: QueryDef; safecall;
    procedure Execute {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Options: OleVariant); safecall;
    procedure Compare {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_29:1}const pQdef: QueryDef; 
                                                           {VT_2:1}var lps: Smallint); safecall;
    function  CreateDynaset {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}Inconsistent: OleVariant): Recordset; safecall;
    function  CreateSnapshot {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Options: OleVariant): Recordset; safecall;
    function  ListParameters {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Recordset; safecall;
    function  CreateProperty {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; safecall;
    function  OpenRecordset {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_12:0}Type_: OleVariant; 
                                                                 {VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}LockEdit: OleVariant): Recordset; safecall;
    function  _OpenRecordset {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Options: OleVariant; 
                                                                  {VT_12:0}LockEdit: OleVariant): Recordset; safecall;
    procedure Cancel {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_hStmt {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_MaxRecords {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_MaxRecords {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pMxRecs: Integer); safecall;
    function  Get_StillExecuting {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_CacheSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_CacheSize {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}lCacheSize: Integer); safecall;
    function  Get_Prepare {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_Prepare {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}pb: OleVariant); safecall;
    property DateCreated: OleVariant read Get_DateCreated;
    property LastUpdated: OleVariant read Get_LastUpdated;
    property Name: WideString read Get_Name;
    property ODBCTimeout: Smallint read Get_ODBCTimeout;
    property Type_: Smallint read Get_Type_;
    property SQL: WideString read Get_SQL;
    property Updatable: WordBool read Get_Updatable;
    property Connect: WideString read Get_Connect;
    property ReturnsRecords: WordBool read Get_ReturnsRecords;
    property RecordsAffected: Integer read Get_RecordsAffected;
    property Fields: Fields read Get_Fields;
    property Parameters: Parameters read Get_Parameters;
    property hStmt: Integer read Get_hStmt;
    property MaxRecords: Integer read Get_MaxRecords;
    property StillExecuting: WordBool read Get_StillExecuting;
    property CacheSize: Integer read Get_CacheSize;
    property Prepare: OleVariant read Get_Prepare;
  end;

// *********************************************************************//
// DispIntf:  _QueryDefDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000079-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _QueryDefDisp = dispinterface
    ['{00000079-0000-0010-8000-00AA006D2EA4}']
    property DateCreated {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809344;
    property LastUpdated {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809345;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809346;
    property ODBCTimeout {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610809348;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610809350;
    property SQL {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809351;
    property Updatable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809353;
    property Connect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809354;
    property ReturnsRecords {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809356;
    property RecordsAffected {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809358;
    property Fields {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Fields readonly dispid 1610809359;
    property Parameters {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Parameters readonly dispid 0;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809361;
    function  _30_OpenRecordset {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Type_: OleVariant; 
                                                                     {VT_12:0}Options: OleVariant): Recordset; dispid 1610809362;
    function  _30__OpenRecordset {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Type_: OleVariant; 
                                                                      {VT_12:0}Options: OleVariant): Recordset; dispid 1610809363;
    function  _Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: QueryDef; dispid 1610809364;
    procedure Execute {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Options: OleVariant); dispid 1610809365;
    procedure Compare {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const pQdef: QueryDef; 
                                                           {VT_2:1}var lps: Smallint); dispid 1610809366;
    function  CreateDynaset {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}Inconsistent: OleVariant): Recordset; dispid 1610809367;
    function  CreateSnapshot {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Options: OleVariant): Recordset; dispid 1610809368;
    function  ListParameters {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Recordset; dispid 1610809369;
    function  CreateProperty {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; dispid 1610809370;
    function  OpenRecordset {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_12:0}Type_: OleVariant; 
                                                                 {VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}LockEdit: OleVariant): Recordset; dispid 1610809371;
    function  _OpenRecordset {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Options: OleVariant; 
                                                                  {VT_12:0}LockEdit: OleVariant): Recordset; dispid 1610809372;
    procedure Cancel {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610809373;
    property hStmt {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809374;
    property MaxRecords {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809375;
    property StillExecuting {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809377;
    property CacheSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809378;
    property Prepare {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809380;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Parameters
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000083-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Parameters = interface(_Collection)
    ['{00000083-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Parameter; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Parameter read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ParametersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000083-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  ParametersDisp = dispinterface
    ['{00000083-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Parameter readonly dispid 0; default;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Parameter
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000081-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Parameter = interface(_DAO)
    ['{00000081-0000-0010-8000-00AA006D2EA4}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Value {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_Value {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}pvar: OleVariant); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_2:0}ps: Smallint); safecall;
    function  Get_Direction {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    procedure Set_Direction {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_2:0}pOption: Smallint); safecall;
    property Name: WideString read Get_Name;
    property Value: OleVariant read Get_Value write Set_Value;
    property Type_: Smallint read Get_Type_;
    property Direction: Smallint read Get_Direction;
  end;

// *********************************************************************//
// DispIntf:  ParameterDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000081-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  ParameterDisp = dispinterface
    ['{00000081-0000-0010-8000-00AA006D2EA4}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809344;
    property Value {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant dispid 0;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610809347;
    property Direction {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610809349;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Connection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000041-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Connection = interface(IDispatch)
    ['{00000041-0000-0010-8000-00AA006D2EA4}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Connect {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Database {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Database; safecall;
    function  Get_hDbc {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_QueryTimeout {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Smallint; safecall;
    procedure Set_QueryTimeout {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_2:0}pSeconds: Smallint); safecall;
    function  Get_Transactions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_RecordsAffected {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_StillExecuting {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Updatable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_QueryDefs {Flags(1), (1/0) CC:0, INV:2, DBG:6}: QueryDefs; safecall;
    function  Get_Recordsets {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Recordsets; safecall;
    procedure Cancel {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Close {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  CreateQueryDef {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}SQLText: OleVariant): QueryDef; safecall;
    procedure Execute {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Query: WideString; 
                                                           {VT_12:0}Options: OleVariant); safecall;
    function  OpenRecordset {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                                 {VT_12:0}Type_: OleVariant; 
                                                                 {VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}LockEdit: OleVariant): Recordset; safecall;
    property Name: WideString read Get_Name;
    property Connect: WideString read Get_Connect;
    property Database: Database read Get_Database;
    property hDbc: Integer read Get_hDbc;
    property QueryTimeout: Smallint read Get_QueryTimeout;
    property Transactions: WordBool read Get_Transactions;
    property RecordsAffected: Integer read Get_RecordsAffected;
    property StillExecuting: WordBool read Get_StillExecuting;
    property Updatable: WordBool read Get_Updatable;
    property QueryDefs: QueryDefs read Get_QueryDefs;
    property Recordsets: Recordsets read Get_Recordsets;
  end;

// *********************************************************************//
// DispIntf:  ConnectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000041-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  ConnectionDisp = dispinterface
    ['{00000041-0000-0010-8000-00AA006D2EA4}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743808;
    property Connect {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743809;
    property Database {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Database readonly dispid 1610743810;
    property hDbc {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743811;
    property QueryTimeout {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743812;
    property Transactions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610743814;
    property RecordsAffected {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743815;
    property StillExecuting {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610743816;
    property Updatable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610743817;
    property QueryDefs {Flags(2), (1/0) CC:0, INV:2, DBG:6}: QueryDefs readonly dispid 0;
    property Recordsets {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Recordsets readonly dispid 1610743819;
    procedure Cancel {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743820;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743821;
    function  CreateQueryDef {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}SQLText: OleVariant): QueryDef; dispid 1610743822;
    procedure Execute {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Query: WideString; 
                                                           {VT_12:0}Options: OleVariant); dispid 1610743823;
    function  OpenRecordset {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                                 {VT_12:0}Type_: OleVariant; 
                                                                 {VT_12:0}Options: OleVariant; 
                                                                 {VT_12:0}LockEdit: OleVariant): Recordset; dispid 1610743824;
  end;

// *********************************************************************//
// Interface: QueryDefs
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000007B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  QueryDefs = interface(_DynaCollection)
    ['{0000007B-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): QueryDef; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: QueryDef read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  QueryDefsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000007B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  QueryDefsDisp = dispinterface
    ['{0000007B-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: QueryDef readonly dispid 0; default;
    procedure Append {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Object_: IDispatch); dispid 1610809344;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809345;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Recordsets
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000033-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Recordsets = interface(_Collection)
    ['{00000033-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Recordset; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Recordset read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  RecordsetsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000033-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  RecordsetsDisp = dispinterface
    ['{00000033-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Recordset readonly dispid 0; default;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Relations
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000008B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Relations = interface(_DynaCollection)
    ['{0000008B-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Relation; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Relation read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  RelationsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000008B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  RelationsDisp = dispinterface
    ['{0000008B-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Relation readonly dispid 0; default;
    procedure Append {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Object_: IDispatch); dispid 1610809344;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809345;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: _Relation
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000089-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _Relation = interface(_DAO)
    ['{00000089-0000-0010-8000-00AA006D2EA4}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Table {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Table {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_ForeignTable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ForeignTable {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Attributes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Attributes {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pl: Integer); safecall;
    function  Get_Fields {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Fields; safecall;
    function  CreateField {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                               {VT_12:0}Type_: OleVariant; 
                                                               {VT_12:0}Size: OleVariant): Field; safecall;
    function  Get_PartialReplica {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_PartialReplica {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pfPartialReplica: WordBool); safecall;
    property Name: WideString read Get_Name;
    property Table: WideString read Get_Table;
    property ForeignTable: WideString read Get_ForeignTable;
    property Attributes: Integer read Get_Attributes;
    property Fields: Fields read Get_Fields;
    property PartialReplica: WordBool read Get_PartialReplica;
  end;

// *********************************************************************//
// DispIntf:  _RelationDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000089-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _RelationDisp = dispinterface
    ['{00000089-0000-0010-8000-00AA006D2EA4}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809344;
    property Table {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809346;
    property ForeignTable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809348;
    property Attributes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809350;
    property Fields {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Fields readonly dispid 0;
    function  CreateField {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                               {VT_12:0}Type_: OleVariant; 
                                                               {VT_12:0}Size: OleVariant): Field; dispid 1610809353;
    property PartialReplica {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809354;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Containers
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000093-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Containers = interface(_Collection)
    ['{00000093-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Container; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Container read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ContainersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000093-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  ContainersDisp = dispinterface
    ['{00000093-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Container readonly dispid 0; default;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Container
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000091-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Container = interface(_DAO)
    ['{00000091-0000-0010-8000-00AA006D2EA4}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Owner {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Owner {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_UserName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_UserName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Permissions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Permissions {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pl: Integer); safecall;
    function  Get_Inherit {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Inherit {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}pb: WordBool); safecall;
    function  Get_Documents {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Documents; safecall;
    function  Get_AllPermissions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    property Name: WideString read Get_Name;
    property Owner: WideString read Get_Owner;
    property UserName: WideString read Get_UserName;
    property Permissions: Integer read Get_Permissions;
    property Inherit: WordBool read Get_Inherit;
    property Documents: Documents read Get_Documents;
    property AllPermissions: Integer read Get_AllPermissions;
  end;

// *********************************************************************//
// DispIntf:  ContainerDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000091-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  ContainerDisp = dispinterface
    ['{00000091-0000-0010-8000-00AA006D2EA4}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809344;
    property Owner {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809345;
    property UserName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809347;
    property Permissions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809349;
    property Inherit {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 1610809351;
    property Documents {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Documents readonly dispid 0;
    property AllPermissions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809354;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Documents
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000009B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Documents = interface(_Collection)
    ['{0000009B-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Document; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Document read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  DocumentsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000009B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  DocumentsDisp = dispinterface
    ['{0000009B-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Document readonly dispid 0; default;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Document
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000099-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Document = interface(_DAO)
    ['{00000099-0000-0010-8000-00AA006D2EA4}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Owner {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Owner {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Container {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_UserName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_UserName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    function  Get_Permissions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Permissions {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}pl: Integer); safecall;
    function  Get_DateCreated {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_LastUpdated {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    function  Get_AllPermissions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  CreateProperty {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; safecall;
    property Name: WideString read Get_Name;
    property Owner: WideString read Get_Owner;
    property Container: WideString read Get_Container;
    property UserName: WideString read Get_UserName;
    property Permissions: Integer read Get_Permissions;
    property DateCreated: OleVariant read Get_DateCreated;
    property LastUpdated: OleVariant read Get_LastUpdated;
    property AllPermissions: Integer read Get_AllPermissions;
  end;

// *********************************************************************//
// DispIntf:  DocumentDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000099-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  DocumentDisp = dispinterface
    ['{00000099-0000-0010-8000-00AA006D2EA4}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809344;
    property Owner {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809345;
    property Container {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809347;
    property UserName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809348;
    property Permissions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809350;
    property DateCreated {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809352;
    property LastUpdated {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 1610809353;
    property AllPermissions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610809354;
    function  CreateProperty {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                                  {VT_12:0}Type_: OleVariant; 
                                                                  {VT_12:0}Value: OleVariant; 
                                                                  {VT_12:0}DDL: OleVariant): Property_; dispid 1610809355;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Users
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000006B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Users = interface(_DynaCollection)
    ['{0000006B-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): User; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: User read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  UsersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000006B-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  UsersDisp = dispinterface
    ['{0000006B-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: User readonly dispid 0; default;
    procedure Append {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Object_: IDispatch); dispid 1610809344;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809345;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: _User
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000069-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _User = interface(_DAO)
    ['{00000069-0000-0010-8000-00AA006D2EA4}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Set_PID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Param1: WideString); safecall;
    procedure Set_Password {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Param1: WideString); safecall;
    function  Get_Groups {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Groups; safecall;
    procedure NewPassword {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const bstrOld: WideString; 
                                                               {VT_8:0}const bstrNew: WideString); safecall;
    function  CreateGroup {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                               {VT_12:0}PID: OleVariant): Group; safecall;
    property Name: WideString read Get_Name;
    property PID: WideString write Set_PID;
    property Password: WideString write Set_Password;
    property Groups: Groups read Get_Groups;
  end;

// *********************************************************************//
// DispIntf:  _UserDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000069-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _UserDisp = dispinterface
    ['{00000069-0000-0010-8000-00AA006D2EA4}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809344;
    property PID {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809346;
    property Password {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809347;
    property Groups {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Groups readonly dispid 0;
    procedure NewPassword {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const bstrOld: WideString; 
                                                               {VT_8:0}const bstrNew: WideString); dispid 1610809349;
    function  CreateGroup {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                               {VT_12:0}PID: OleVariant): Group; dispid 1610809350;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Groups
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000063-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Groups = interface(_DynaCollection)
    ['{00000063-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Group; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Group read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  GroupsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000063-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  GroupsDisp = dispinterface
    ['{00000063-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Group readonly dispid 0; default;
    procedure Append {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Object_: IDispatch); dispid 1610809344;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809345;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: _Group
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000061-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _Group = interface(_DAO)
    ['{00000061-0000-0010-8000-00AA006D2EA4}']
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const pbstr: WideString); safecall;
    procedure Set_PID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Param1: WideString); safecall;
    function  Get_Users {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Users; safecall;
    function  CreateUser {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant; 
                                                              {VT_12:0}PID: OleVariant; 
                                                              {VT_12:0}Password: OleVariant): User; safecall;
    property Name: WideString read Get_Name;
    property PID: WideString write Set_PID;
    property Users: Users read Get_Users;
  end;

// *********************************************************************//
// DispIntf:  _GroupDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000061-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  _GroupDisp = dispinterface
    ['{00000061-0000-0010-8000-00AA006D2EA4}']
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610809344;
    property PID {Flags(2), (1/0) CC:0, INV:4, DBG:6}: WideString writeonly dispid 1610809346;
    property Users {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Users readonly dispid 0;
    function  CreateUser {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant; 
                                                              {VT_12:0}PID: OleVariant; 
                                                              {VT_12:0}Password: OleVariant): User; dispid 1610809348;
    property Properties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Properties readonly dispid 10;
  end;

// *********************************************************************//
// Interface: Connections
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000043-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Connections = interface(_Collection)
    ['{00000043-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Connection; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Connection read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ConnectionsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000043-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  ConnectionsDisp = dispinterface
    ['{00000043-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Connection readonly dispid 0; default;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Errors
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000025-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Errors = interface(_Collection)
    ['{00000025-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): Error; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: Error read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ErrorsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000025-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  ErrorsDisp = dispinterface
    ['{00000025-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: Error readonly dispid 0; default;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Error
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000023-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  Error = interface(IDispatch)
    ['{00000023-0000-0010-8000-00AA006D2EA4}']
    function  Get_Number {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Source {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Description {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_HelpFile {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_HelpContext {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    property Number: Integer read Get_Number;
    property Source: WideString read Get_Source;
    property Description: WideString read Get_Description;
    property HelpFile: WideString read Get_HelpFile;
    property HelpContext: Integer read Get_HelpContext;
  end;

// *********************************************************************//
// DispIntf:  ErrorDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {00000023-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  ErrorDisp = dispinterface
    ['{00000023-0000-0010-8000-00AA006D2EA4}']
    property Number {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743808;
    property Source {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743809;
    property Description {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 0;
    property HelpFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 1610743811;
    property HelpContext {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IndexFields
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000005D-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  IndexFields = interface(_DynaCollection)
    ['{0000005D-0000-0010-8000-00AA006D2EA4}']
    function  Get_Item {Flags(1), (2/1) CC:0, INV:2, DBG:6}({VT_12:0}Item: OleVariant): OleVariant; safecall;
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:5}[{VT_12:0}Item: OleVariant]: OleVariant read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IndexFieldsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0000005D-0000-0010-8000-00AA006D2EA4}
// *********************************************************************//
  IndexFieldsDisp = dispinterface
    ['{0000005D-0000-0010-8000-00AA006D2EA4}']
    property Item {Flags(2), (2/1) CC:0, INV:2, DBG:6}[{VT_12:0}Item: OleVariant]: OleVariant readonly dispid 0; default;
    procedure Append {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Object_: IDispatch); dispid 1610809344;
    procedure Delete {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 1610809345;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Smallint readonly dispid 1610743808;
    function  _NewEnum {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IUnknown; dispid -4;
    procedure Refresh {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 1610743810;
  end;

// *********************************************************************//
// The Class CoTableDef provides a Create and CreateRemote method to          
// create instances of the default interface _TableDef exposed by              
// the CoClass TableDef. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTableDef = class
    class function Create: _TableDef;
    class function CreateRemote(const MachineName: string): _TableDef;
  end;

// *********************************************************************//
// The Class CoField provides a Create and CreateRemote method to          
// create instances of the default interface _Field exposed by              
// the CoClass Field. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoField = class
    class function Create: _Field;
    class function CreateRemote(const MachineName: string): _Field;
  end;

// *********************************************************************//
// The Class CoIndex provides a Create and CreateRemote method to          
// create instances of the default interface _Index exposed by              
// the CoClass Index. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoIndex = class
    class function Create: _Index;
    class function CreateRemote(const MachineName: string): _Index;
  end;

// *********************************************************************//
// The Class CoQueryDef provides a Create and CreateRemote method to          
// create instances of the default interface _QueryDef exposed by              
// the CoClass QueryDef. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoQueryDef = class
    class function Create: _QueryDef;
    class function CreateRemote(const MachineName: string): _QueryDef;
  end;

// *********************************************************************//
// The Class CoRelation provides a Create and CreateRemote method to          
// create instances of the default interface _Relation exposed by              
// the CoClass Relation. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRelation = class
    class function Create: _Relation;
    class function CreateRemote(const MachineName: string): _Relation;
  end;

// *********************************************************************//
// The Class CoUser provides a Create and CreateRemote method to          
// create instances of the default interface _User exposed by              
// the CoClass User. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUser = class
    class function Create: _User;
    class function CreateRemote(const MachineName: string): _User;
  end;

// *********************************************************************//
// The Class CoGroup provides a Create and CreateRemote method to          
// create instances of the default interface _Group exposed by              
// the CoClass Group. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGroup = class
    class function Create: _Group;
    class function CreateRemote(const MachineName: string): _Group;
  end;

// *********************************************************************//
// The Class CoDBEngine provides a Create and CreateRemote method to          
// create instances of the default interface _DBEngine exposed by              
// the CoClass DBEngine. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDBEngine = class
    class function Create: _DBEngine;
    class function CreateRemote(const MachineName: string): _DBEngine;
  end;

// *********************************************************************//
// The Class CoPrivDBEngine provides a Create and CreateRemote method to          
// create instances of the default interface _DBEngine exposed by              
// the CoClass PrivDBEngine. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPrivDBEngine = class
    class function Create: _DBEngine;
    class function CreateRemote(const MachineName: string): _DBEngine;
  end;

implementation

uses ComObj;

class function CoTableDef.Create: _TableDef;
begin
  Result := CreateComObject(CLASS_TableDef) as _TableDef;
end;

class function CoTableDef.CreateRemote(const MachineName: string): _TableDef;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TableDef) as _TableDef;
end;

class function CoField.Create: _Field;
begin
  Result := CreateComObject(CLASS_Field) as _Field;
end;

class function CoField.CreateRemote(const MachineName: string): _Field;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Field) as _Field;
end;

class function CoIndex.Create: _Index;
begin
  Result := CreateComObject(CLASS_Index) as _Index;
end;

class function CoIndex.CreateRemote(const MachineName: string): _Index;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Index) as _Index;
end;

class function CoQueryDef.Create: _QueryDef;
begin
  Result := CreateComObject(CLASS_QueryDef) as _QueryDef;
end;

class function CoQueryDef.CreateRemote(const MachineName: string): _QueryDef;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_QueryDef) as _QueryDef;
end;

class function CoRelation.Create: _Relation;
begin
  Result := CreateComObject(CLASS_Relation) as _Relation;
end;

class function CoRelation.CreateRemote(const MachineName: string): _Relation;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Relation) as _Relation;
end;

class function CoUser.Create: _User;
begin
  Result := CreateComObject(CLASS_User) as _User;
end;

class function CoUser.CreateRemote(const MachineName: string): _User;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_User) as _User;
end;

class function CoGroup.Create: _Group;
begin
  Result := CreateComObject(CLASS_Group) as _Group;
end;

class function CoGroup.CreateRemote(const MachineName: string): _Group;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Group) as _Group;
end;

class function CoDBEngine.Create: _DBEngine;
begin
  Result := CreateComObject(CLASS_DBEngine) as _DBEngine;
end;

class function CoDBEngine.CreateRemote(const MachineName: string): _DBEngine;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DBEngine) as _DBEngine;
end;

class function CoPrivDBEngine.Create: _DBEngine;
begin
  Result := CreateComObject(CLASS_PrivDBEngine) as _DBEngine;
end;

class function CoPrivDBEngine.CreateRemote(const MachineName: string): _DBEngine;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PrivDBEngine) as _DBEngine;
end;

end.
