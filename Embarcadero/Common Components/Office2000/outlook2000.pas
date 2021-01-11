unit Outlook2000;

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
// File generated on 11/22/99 5:44:16 AM from Type Library described below.

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
// Type Lib: d:\rampage\typelib\typelibraries\msoutl9.olb (1)
// IID\LCID: {00062FFF-0000-0000-C000-000000000046}\0
// Helpfile: d:\rampage\typelib\typelibraries\VBAOUTL9.CHM
// DepndLst: 
//   (1) v2.0 stdole, (D:\WINNT\System32\stdole2.tlb)
//   (2) v2.1 Office, (D:\MSOF2K\Office\MSO9.DLL)
//   (3) v4.0 StdVCL, (D:\RAMPAGE\BIN\STDVCL40.DLL)
// Errors:
//   Hint: Symbol 'Application' renamed to 'OutlookApplication'
//   Hint: Member 'Class' of 'Action' changed to 'Class_'
//   Hint: Parameter 'Class' of Action.Class changed to 'Class_'
//   Hint: Member 'Class' of '_Application' changed to 'Class_'
//   Hint: Parameter 'Class' of _Application.Class changed to 'Class_'
//   Hint: Parameter 'Object' of _Application.CreateObject changed to 'Object_'
//   Hint: Parameter 'Type' of _Application.GetNamespace changed to 'Type_'
//   Hint: Member 'Class' of '_NameSpace' changed to 'Class_'
//   Hint: Parameter 'Class' of _NameSpace.Class changed to 'Class_'
//   Hint: Member 'Type' of '_NameSpace' changed to 'Type_'
//   Hint: Parameter 'Type' of _NameSpace.Type changed to 'Type_'
//   Hint: Member 'Class' of 'Recipient' changed to 'Class_'
//   Hint: Parameter 'Class' of Recipient.Class changed to 'Class_'
//   Hint: Member 'Type' of 'Recipient' changed to 'Type_'
//   Hint: Parameter 'Type' of Recipient.Type changed to 'Type_'
//   Hint: Parameter 'Type' of Recipient.Type changed to 'Type_'
//   Hint: Member 'Class' of 'AddressEntry' changed to 'Class_'
//   Hint: Parameter 'Class' of AddressEntry.Class changed to 'Class_'
//   Hint: Member 'Type' of 'AddressEntry' changed to 'Type_'
//   Hint: Parameter 'Type' of AddressEntry.Type changed to 'Type_'
//   Hint: Parameter 'Type' of AddressEntry.Type changed to 'Type_'
//   Hint: Member 'Class' of 'AddressEntries' changed to 'Class_'
//   Hint: Parameter 'Class' of AddressEntries.Class changed to 'Class_'
//   Hint: Parameter 'Type' of AddressEntries.Add changed to 'Type_'
//   Hint: Parameter 'Property' of AddressEntries.Sort changed to 'Property_'
//   Hint: Member 'Class' of '_Folders' changed to 'Class_'
//   Hint: Parameter 'Class' of _Folders.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _Folders.Add changed to 'Type_'
//   Hint: Member 'Class' of 'MAPIFolder' changed to 'Class_'
//   Hint: Parameter 'Class' of MAPIFolder.Class changed to 'Class_'
//   Hint: Member 'Class' of '_Items' changed to 'Class_'
//   Hint: Parameter 'Class' of _Items.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _Items.Add changed to 'Type_'
//   Hint: Parameter 'Property' of _Items.Sort changed to 'Property_'
//   Hint: Member 'Class' of '_Explorer' changed to 'Class_'
//   Hint: Parameter 'Class' of _Explorer.Class changed to 'Class_'
//   Hint: Member 'Class' of 'Panes' changed to 'Class_'
//   Hint: Parameter 'Class' of Panes.Class changed to 'Class_'
//   Hint: Member 'Class' of 'Selection' changed to 'Class_'
//   Hint: Parameter 'Class' of Selection.Class changed to 'Class_'
//   Hint: Member 'Class' of 'AddressLists' changed to 'Class_'
//   Hint: Parameter 'Class' of AddressLists.Class changed to 'Class_'
//   Hint: Member 'Class' of 'AddressList' changed to 'Class_'
//   Hint: Parameter 'Class' of AddressList.Class changed to 'Class_'
//   Hint: Member 'Class' of 'SyncObjects' changed to 'Class_'
//   Hint: Parameter 'Class' of SyncObjects.Class changed to 'Class_'
//   Hint: Member 'Class' of '_SyncObject' changed to 'Class_'
//   Hint: Parameter 'Class' of _SyncObject.Class changed to 'Class_'
//   Hint: Member 'Class' of '_Inspector' changed to 'Class_'
//   Hint: Parameter 'Class' of _Inspector.Class changed to 'Class_'
//   Hint: Member 'Class' of '_Explorers' changed to 'Class_'
//   Hint: Parameter 'Class' of _Explorers.Class changed to 'Class_'
//   Hint: Member 'Class' of '_Inspectors' changed to 'Class_'
//   Hint: Parameter 'Class' of _Inspectors.Class changed to 'Class_'
//   Hint: Member 'Class' of 'Actions' changed to 'Class_'
//   Hint: Parameter 'Class' of Actions.Class changed to 'Class_'
//   Hint: Member 'Class' of 'PropertyPages' changed to 'Class_'
//   Hint: Parameter 'Class' of PropertyPages.Class changed to 'Class_'
//   Hint: Member 'Class' of '_AppointmentItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _AppointmentItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _AppointmentItem.SaveAs changed to 'Type_'
//   Hint: Member 'End' of '_AppointmentItem' changed to 'End_'
//   Hint: Parameter 'End' of _AppointmentItem.End changed to 'End_'
//   Hint: Parameter 'End' of _AppointmentItem.End changed to 'End_'
//   Hint: Member 'Class' of 'Attachments' changed to 'Class_'
//   Hint: Parameter 'Class' of Attachments.Class changed to 'Class_'
//   Hint: Parameter 'Type' of Attachments.Add changed to 'Type_'
//   Hint: Member 'Class' of 'Attachment' changed to 'Class_'
//   Hint: Parameter 'Class' of Attachment.Class changed to 'Class_'
//   Hint: Member 'Type' of 'Attachment' changed to 'Type_'
//   Hint: Parameter 'Type' of Attachment.Type changed to 'Type_'
//   Hint: Member 'Class' of 'FormDescription' changed to 'Class_'
//   Hint: Parameter 'Class' of FormDescription.Class changed to 'Class_'
//   Hint: Member 'Class' of 'UserProperties' changed to 'Class_'
//   Hint: Parameter 'Class' of UserProperties.Class changed to 'Class_'
//   Hint: Parameter 'Type' of UserProperties.Add changed to 'Type_'
//   Hint: Member 'Class' of 'UserProperty' changed to 'Class_'
//   Hint: Parameter 'Class' of UserProperty.Class changed to 'Class_'
//   Hint: Member 'Type' of 'UserProperty' changed to 'Type_'
//   Hint: Parameter 'Type' of UserProperty.Type changed to 'Type_'
//   Hint: Member 'Class' of 'Recipients' changed to 'Class_'
//   Hint: Parameter 'Class' of Recipients.Class changed to 'Class_'
//   Hint: Member 'Class' of '_MailItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _MailItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _MailItem.SaveAs changed to 'Type_'
//   Hint: Member 'To' of '_MailItem' changed to 'To_'
//   Hint: Parameter 'To' of _MailItem.To changed to 'To_'
//   Hint: Parameter 'To' of _MailItem.To changed to 'To_'
//   Hint: Member 'Class' of 'Links' changed to 'Class_'
//   Hint: Parameter 'Class' of Links.Class changed to 'Class_'
//   Hint: Member 'Class' of 'Link' changed to 'Class_'
//   Hint: Parameter 'Class' of Link.Class changed to 'Class_'
//   Hint: Member 'Type' of 'Link' changed to 'Type_'
//   Hint: Parameter 'Type' of Link.Type changed to 'Type_'
//   Hint: Member 'Class' of 'RecurrencePattern' changed to 'Class_'
//   Hint: Parameter 'Class' of RecurrencePattern.Class changed to 'Class_'
//   Hint: Member 'Class' of 'Exceptions' changed to 'Class_'
//   Hint: Parameter 'Class' of Exceptions.Class changed to 'Class_'
//   Hint: Member 'Class' of 'Exception' changed to 'Class_'
//   Hint: Parameter 'Class' of Exception.Class changed to 'Class_'
//   Hint: Member 'Class' of '_MeetingItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _MeetingItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _MeetingItem.SaveAs changed to 'Type_'
//   Hint: Member 'Class' of '_ContactItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _ContactItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _ContactItem.SaveAs changed to 'Type_'
//   Hint: Member 'Class' of '_DistListItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _DistListItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _DistListItem.SaveAs changed to 'Type_'
//   Hint: Member 'Class' of '_DocumentItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _DocumentItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _DocumentItem.SaveAs changed to 'Type_'
//   Hint: Member 'Class' of '_JournalItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _JournalItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _JournalItem.SaveAs changed to 'Type_'
//   Hint: Member 'End' of '_JournalItem' changed to 'End_'
//   Hint: Parameter 'End' of _JournalItem.End changed to 'End_'
//   Hint: Parameter 'End' of _JournalItem.End changed to 'End_'
//   Hint: Member 'Type' of '_JournalItem' changed to 'Type_'
//   Hint: Parameter 'Type' of _JournalItem.Type changed to 'Type_'
//   Hint: Parameter 'Type' of _JournalItem.Type changed to 'Type_'
//   Hint: Member 'Class' of '_NoteItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _NoteItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _NoteItem.SaveAs changed to 'Type_'
//   Hint: Member 'Class' of 'OutlookBarGroup' changed to 'Class_'
//   Hint: Parameter 'Class' of OutlookBarGroup.Class changed to 'Class_'
//   Hint: Member 'Class' of '_OutlookBarShortcuts' changed to 'Class_'
//   Hint: Parameter 'Class' of _OutlookBarShortcuts.Class changed to 'Class_'
//   Hint: Member 'Class' of 'OutlookBarShortcut' changed to 'Class_'
//   Hint: Parameter 'Class' of OutlookBarShortcut.Class changed to 'Class_'
//   Hint: Member 'Class' of '_OutlookBarGroups' changed to 'Class_'
//   Hint: Parameter 'Class' of _OutlookBarGroups.Class changed to 'Class_'
//   Hint: Member 'Class' of '_OutlookBarPane' changed to 'Class_'
//   Hint: Parameter 'Class' of _OutlookBarPane.Class changed to 'Class_'
//   Hint: Member 'Class' of 'OutlookBarStorage' changed to 'Class_'
//   Hint: Parameter 'Class' of OutlookBarStorage.Class changed to 'Class_'
//   Hint: Member 'Class' of 'PropertyPageSite' changed to 'Class_'
//   Hint: Parameter 'Class' of PropertyPageSite.Class changed to 'Class_'
//   Hint: Member 'Class' of 'Pages' changed to 'Class_'
//   Hint: Parameter 'Class' of Pages.Class changed to 'Class_'
//   Hint: Member 'Class' of '_PostItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _PostItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _PostItem.SaveAs changed to 'Type_'
//   Hint: Member 'Class' of '_RemoteItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _RemoteItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _RemoteItem.SaveAs changed to 'Type_'
//   Hint: Member 'Class' of '_ReportItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _ReportItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _ReportItem.SaveAs changed to 'Type_'
//   Hint: Member 'Class' of '_TaskItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _TaskItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _TaskItem.SaveAs changed to 'Type_'
//   Hint: Symbol 'Assign' renamed to 'Assign_'
//   Hint: Member 'Class' of '_TaskRequestAcceptItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _TaskRequestAcceptItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _TaskRequestAcceptItem.SaveAs changed to 'Type_'
//   Hint: Member 'Class' of '_TaskRequestDeclineItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _TaskRequestDeclineItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _TaskRequestDeclineItem.SaveAs changed to 'Type_'
//   Hint: Member 'Class' of '_TaskRequestItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _TaskRequestItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _TaskRequestItem.SaveAs changed to 'Type_'
//   Hint: Member 'Class' of '_TaskRequestUpdateItem' changed to 'Class_'
//   Hint: Parameter 'Class' of _TaskRequestUpdateItem.Class changed to 'Class_'
//   Hint: Parameter 'Type' of _TaskRequestUpdateItem.SaveAs changed to 'Type_'
//   Hint: Symbol 'Application' renamed to 'OutlookApplication'
//   Hint: Member 'Class' of 'Action' changed to 'Class_'
//   Hint: Member 'Class' of '_Application' changed to 'Class_'
//   Hint: Member 'Class' of '_NameSpace' changed to 'Class_'
//   Hint: Member 'Type' of '_NameSpace' changed to 'Type_'
//   Hint: Member 'Class' of 'Recipient' changed to 'Class_'
//   Hint: Member 'Type' of 'Recipient' changed to 'Type_'
//   Hint: Member 'Class' of 'AddressEntry' changed to 'Class_'
//   Hint: Member 'Type' of 'AddressEntry' changed to 'Type_'
//   Hint: Member 'Class' of 'AddressEntries' changed to 'Class_'
//   Hint: Member 'Class' of '_Folders' changed to 'Class_'
//   Hint: Member 'Class' of 'MAPIFolder' changed to 'Class_'
//   Hint: Member 'Class' of '_Items' changed to 'Class_'
//   Hint: Member 'Class' of '_Explorer' changed to 'Class_'
//   Hint: Member 'Class' of 'Panes' changed to 'Class_'
//   Hint: Member 'Class' of 'Selection' changed to 'Class_'
//   Hint: Member 'Class' of 'AddressLists' changed to 'Class_'
//   Hint: Member 'Class' of 'AddressList' changed to 'Class_'
//   Hint: Member 'Class' of 'SyncObjects' changed to 'Class_'
//   Hint: Member 'Class' of '_SyncObject' changed to 'Class_'
//   Hint: Member 'Class' of '_Inspector' changed to 'Class_'
//   Hint: Member 'Class' of '_Explorers' changed to 'Class_'
//   Hint: Member 'Class' of '_Inspectors' changed to 'Class_'
//   Hint: Member 'Class' of 'Actions' changed to 'Class_'
//   Hint: Member 'Class' of 'PropertyPages' changed to 'Class_'
//   Hint: Member 'Class' of '_AppointmentItem' changed to 'Class_'
//   Hint: Member 'End' of '_AppointmentItem' changed to 'End_'
//   Hint: Member 'Class' of 'Attachments' changed to 'Class_'
//   Hint: Member 'Class' of 'Attachment' changed to 'Class_'
//   Hint: Member 'Type' of 'Attachment' changed to 'Type_'
//   Hint: Member 'Class' of 'FormDescription' changed to 'Class_'
//   Hint: Member 'Class' of 'UserProperties' changed to 'Class_'
//   Hint: Member 'Class' of 'UserProperty' changed to 'Class_'
//   Hint: Member 'Type' of 'UserProperty' changed to 'Type_'
//   Hint: Member 'Class' of 'Recipients' changed to 'Class_'
//   Hint: Member 'Class' of '_MailItem' changed to 'Class_'
//   Hint: Member 'To' of '_MailItem' changed to 'To_'
//   Hint: Member 'Class' of 'Links' changed to 'Class_'
//   Hint: Member 'Class' of 'Link' changed to 'Class_'
//   Hint: Member 'Type' of 'Link' changed to 'Type_'
//   Hint: Member 'Class' of 'RecurrencePattern' changed to 'Class_'
//   Hint: Member 'Class' of 'Exceptions' changed to 'Class_'
//   Hint: Member 'Class' of 'Exception' changed to 'Class_'
//   Hint: Member 'Class' of '_MeetingItem' changed to 'Class_'
//   Hint: Member 'Class' of '_ContactItem' changed to 'Class_'
//   Hint: Member 'Class' of '_DistListItem' changed to 'Class_'
//   Hint: Member 'Class' of '_DocumentItem' changed to 'Class_'
//   Hint: Member 'Class' of '_JournalItem' changed to 'Class_'
//   Hint: Member 'End' of '_JournalItem' changed to 'End_'
//   Hint: Member 'Type' of '_JournalItem' changed to 'Type_'
//   Hint: Member 'Class' of '_NoteItem' changed to 'Class_'
//   Hint: Member 'Class' of 'OutlookBarGroup' changed to 'Class_'
//   Hint: Member 'Class' of '_OutlookBarShortcuts' changed to 'Class_'
//   Hint: Member 'Class' of 'OutlookBarShortcut' changed to 'Class_'
//   Hint: Member 'Class' of '_OutlookBarGroups' changed to 'Class_'
//   Hint: Member 'Class' of '_OutlookBarPane' changed to 'Class_'
//   Hint: Member 'Class' of 'OutlookBarStorage' changed to 'Class_'
//   Hint: Member 'Class' of 'PropertyPageSite' changed to 'Class_'
//   Hint: Member 'Class' of 'Pages' changed to 'Class_'
//   Hint: Member 'Class' of '_PostItem' changed to 'Class_'
//   Hint: Member 'Class' of '_RemoteItem' changed to 'Class_'
//   Hint: Member 'Class' of '_ReportItem' changed to 'Class_'
//   Hint: Member 'Class' of '_TaskItem' changed to 'Class_'
//   Hint: Symbol 'Assign' renamed to 'Assign_'
//   Hint: Member 'Class' of '_TaskRequestAcceptItem' changed to 'Class_'
//   Hint: Member 'Class' of '_TaskRequestDeclineItem' changed to 'Class_'
//   Hint: Member 'Class' of '_TaskRequestItem' changed to 'Class_'
//   Hint: Member 'Class' of '_TaskRequestUpdateItem' changed to 'Class_'
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
  OutlookMajorVersion = 9;
  OutlookMinorVersion = 0;

  LIBID_Outlook: TGUID = '{00062FFF-0000-0000-C000-000000000046}';

  IID_Action: TGUID = '{00063043-0000-0000-C000-000000000046}';
  IID__Application: TGUID = '{00063001-0000-0000-C000-000000000046}';
  IID__NameSpace: TGUID = '{00063002-0000-0000-C000-000000000046}';
  IID_Recipient: TGUID = '{00063045-0000-0000-C000-000000000046}';
  IID_AddressEntry: TGUID = '{0006304B-0000-0000-C000-000000000046}';
  IID_AddressEntries: TGUID = '{0006304A-0000-0000-C000-000000000046}';
  IID__Folders: TGUID = '{00063040-0000-0000-C000-000000000046}';
  IID_MAPIFolder: TGUID = '{00063006-0000-0000-C000-000000000046}';
  IID__Items: TGUID = '{00063041-0000-0000-C000-000000000046}';
  IID__Explorer: TGUID = '{00063003-0000-0000-C000-000000000046}';
  IID_Panes: TGUID = '{00063009-0000-0000-C000-000000000046}';
  IID_Selection: TGUID = '{00063087-0000-0000-C000-000000000046}';
  IID_AddressLists: TGUID = '{00063048-0000-0000-C000-000000000046}';
  IID_AddressList: TGUID = '{00063049-0000-0000-C000-000000000046}';
  IID_SyncObjects: TGUID = '{00063086-0000-0000-C000-000000000046}';
  IID__SyncObject: TGUID = '{00063083-0000-0000-C000-000000000046}';
  DIID_SyncObjectEvents: TGUID = '{00063085-0000-0000-C000-000000000046}';
  CLASS_SyncObject: TGUID = '{00063084-0000-0000-C000-000000000046}';
  IID__Inspector: TGUID = '{00063005-0000-0000-C000-000000000046}';
  IID__Explorers: TGUID = '{0006300A-0000-0000-C000-000000000046}';
  DIID_ExplorerEvents: TGUID = '{0006304F-0000-0000-C000-000000000046}';
  CLASS_Explorer: TGUID = '{00063050-0000-0000-C000-000000000046}';
  IID__Inspectors: TGUID = '{00063008-0000-0000-C000-000000000046}';
  DIID_InspectorEvents: TGUID = '{0006307D-0000-0000-C000-000000000046}';
  CLASS_Inspector: TGUID = '{00063058-0000-0000-C000-000000000046}';
  IID_Actions: TGUID = '{0006303E-0000-0000-C000-000000000046}';
  DIID_ApplicationEvents: TGUID = '{0006304E-0000-0000-C000-000000000046}';
  IID_PropertyPages: TGUID = '{00063080-0000-0000-C000-000000000046}';
  IID__AppointmentItem: TGUID = '{00063033-0000-0000-C000-000000000046}';
  IID_Attachments: TGUID = '{0006303C-0000-0000-C000-000000000046}';
  IID_Attachment: TGUID = '{00063007-0000-0000-C000-000000000046}';
  IID_FormDescription: TGUID = '{00063046-0000-0000-C000-000000000046}';
  IID_UserProperties: TGUID = '{0006303D-0000-0000-C000-000000000046}';
  IID_UserProperty: TGUID = '{00063042-0000-0000-C000-000000000046}';
  IID_Recipients: TGUID = '{0006303B-0000-0000-C000-000000000046}';
  IID__MailItem: TGUID = '{00063034-0000-0000-C000-000000000046}';
  DIID_ItemEvents: TGUID = '{0006303A-0000-0000-C000-000000000046}';
  IID_Links: TGUID = '{0006308A-0000-0000-C000-000000000046}';
  IID_Link: TGUID = '{00063089-0000-0000-C000-000000000046}';
  CLASS_MailItem: TGUID = '{00061033-0000-0000-C000-000000000046}';
  IID_RecurrencePattern: TGUID = '{00063044-0000-0000-C000-000000000046}';
  IID_Exceptions: TGUID = '{0006304C-0000-0000-C000-000000000046}';
  IID_Exception: TGUID = '{0006304D-0000-0000-C000-000000000046}';
  CLASS_AppointmentItem: TGUID = '{00061030-0000-0000-C000-000000000046}';
  IID__MeetingItem: TGUID = '{00063062-0000-0000-C000-000000000046}';
  CLASS_MeetingItem: TGUID = '{00061036-0000-0000-C000-000000000046}';
  IID__ContactItem: TGUID = '{00063021-0000-0000-C000-000000000046}';
  IID__DistListItem: TGUID = '{00063081-0000-0000-C000-000000000046}';
  IID__DocumentItem: TGUID = '{00063020-0000-0000-C000-000000000046}';
  DIID_ExplorersEvents: TGUID = '{00063078-0000-0000-C000-000000000046}';
  DIID_FoldersEvents: TGUID = '{00063076-0000-0000-C000-000000000046}';
  DIID_InspectorsEvents: TGUID = '{00063079-0000-0000-C000-000000000046}';
  DIID_ItemsEvents: TGUID = '{00063077-0000-0000-C000-000000000046}';
  IID__JournalItem: TGUID = '{00063022-0000-0000-C000-000000000046}';
  DIID_NameSpaceEvents: TGUID = '{0006308C-0000-0000-C000-000000000046}';
  IID__NoteItem: TGUID = '{00063025-0000-0000-C000-000000000046}';
  IID_OutlookBarGroup: TGUID = '{00063073-0000-0000-C000-000000000046}';
  IID__OutlookBarShortcuts: TGUID = '{00063074-0000-0000-C000-000000000046}';
  IID_OutlookBarShortcut: TGUID = '{00063075-0000-0000-C000-000000000046}';
  IID__OutlookBarGroups: TGUID = '{00063072-0000-0000-C000-000000000046}';
  DIID_OutlookBarGroupsEvents: TGUID = '{0006307B-0000-0000-C000-000000000046}';
  IID__OutlookBarPane: TGUID = '{00063070-0000-0000-C000-000000000046}';
  IID_OutlookBarStorage: TGUID = '{00063071-0000-0000-C000-000000000046}';
  DIID_OutlookBarPaneEvents: TGUID = '{0006307A-0000-0000-C000-000000000046}';
  DIID_OutlookBarShortcutsEvents: TGUID = '{0006307C-0000-0000-C000-000000000046}';
  IID_PropertyPage: TGUID = '{0006307E-0000-0000-C000-000000000046}';
  IID_PropertyPageSite: TGUID = '{0006307F-0000-0000-C000-000000000046}';
  IID_Pages: TGUID = '{0006303F-0000-0000-C000-000000000046}';
  IID__PostItem: TGUID = '{00063024-0000-0000-C000-000000000046}';
  IID__RemoteItem: TGUID = '{00063023-0000-0000-C000-000000000046}';
  IID__ReportItem: TGUID = '{00063026-0000-0000-C000-000000000046}';
  IID__TaskItem: TGUID = '{00063035-0000-0000-C000-000000000046}';
  CLASS_TaskItem: TGUID = '{00061032-0000-0000-C000-000000000046}';
  IID__TaskRequestAcceptItem: TGUID = '{00063038-0000-0000-C000-000000000046}';
  IID__TaskRequestDeclineItem: TGUID = '{00063039-0000-0000-C000-000000000046}';
  IID__TaskRequestItem: TGUID = '{00063036-0000-0000-C000-000000000046}';
  IID__TaskRequestUpdateItem: TGUID = '{00063037-0000-0000-C000-000000000046}';
  CLASS_OutlookApplication: TGUID = '{0006F03A-0000-0000-C000-000000000046}';
  CLASS_ContactItem: TGUID = '{00061031-0000-0000-C000-000000000046}';
  CLASS_DistListItem: TGUID = '{0006103C-0000-0000-C000-000000000046}';
  CLASS_DocumentItem: TGUID = '{00061061-0000-0000-C000-000000000046}';
  CLASS_Explorers: TGUID = '{00063053-0000-0000-C000-000000000046}';
  CLASS_Inspectors: TGUID = '{00063054-0000-0000-C000-000000000046}';
  CLASS_Folders: TGUID = '{00063051-0000-0000-C000-000000000046}';
  CLASS_Items: TGUID = '{00063052-0000-0000-C000-000000000046}';
  CLASS_JournalItem: TGUID = '{00061037-0000-0000-C000-000000000046}';
  CLASS_NameSpace: TGUID = '{0006308B-0000-0000-C000-000000000046}';
  CLASS_NoteItem: TGUID = '{00061034-0000-0000-C000-000000000046}';
  CLASS_OutlookBarGroups: TGUID = '{00063056-0000-0000-C000-000000000046}';
  CLASS_OutlookBarPane: TGUID = '{00063055-0000-0000-C000-000000000046}';
  CLASS_OutlookBarShortcuts: TGUID = '{00063057-0000-0000-C000-000000000046}';
  CLASS_PostItem: TGUID = '{0006103A-0000-0000-C000-000000000046}';
  CLASS_RemoteItem: TGUID = '{00061060-0000-0000-C000-000000000046}';
  CLASS_ReportItem: TGUID = '{00061035-0000-0000-C000-000000000046}';
  CLASS_TaskRequestAcceptItem: TGUID = '{00061052-0000-0000-C000-000000000046}';
  CLASS_TaskRequestDeclineItem: TGUID = '{00061053-0000-0000-C000-000000000046}';
  CLASS_TaskRequestItem: TGUID = '{00061050-0000-0000-C000-000000000046}';
  CLASS_TaskRequestUpdateItem: TGUID = '{00061051-0000-0000-C000-000000000046}';
  IID__IRecipientControl: TGUID = '{D87E7E16-6897-11CE-A6C0-00AA00608FAA}';
  DIID__DRecipientControl: TGUID = '{0006F025-0000-0000-C000-000000000046}';
  DIID__DRecipientControlEvents: TGUID = '{D87E7E17-6897-11CE-A6C0-00AA00608FAA}';
  CLASS__RecipientControl: TGUID = '{0006F023-0000-0000-C000-000000000046}';
  IID__IDocSiteControl: TGUID = '{43507DD0-811D-11CE-B565-00AA00608FAA}';
  DIID__DDocSiteControl: TGUID = '{0006F026-0000-0000-C000-000000000046}';
  DIID__DDocSiteControlEvents: TGUID = '{50BB9B50-811D-11CE-B565-00AA00608FAA}';
  CLASS__DocSiteControl: TGUID = '{0006F024-0000-0000-C000-000000000046}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum OlActionCopyLike
type
  OlActionCopyLike = TOleEnum;
const
  olReply = $00000000;
  olReplyAll = $00000001;
  olForward = $00000002;
  olReplyFolder = $00000003;
  olRespond = $00000004;

// Constants for enum OlActionReplyStyle
type
  OlActionReplyStyle = TOleEnum;
const
  olOmitOriginalText = $00000000;
  olEmbedOriginalItem = $00000001;
  olIncludeOriginalText = $00000002;
  olIndentOriginalText = $00000003;
  olLinkOriginalItem = $00000004;
  olUserPreference = $00000005;
  olReplyTickOriginalText = $000003E8;

// Constants for enum OlActionResponseStyle
type
  OlActionResponseStyle = TOleEnum;
const
  olOpen = $00000000;
  olSend = $00000001;
  olPrompt = $00000002;

// Constants for enum OlActionShowOn
type
  OlActionShowOn = TOleEnum;
const
  olDontShow = $00000000;
  olMenu = $00000001;
  olMenuAndToolbar = $00000002;

// Constants for enum OlAttachmentType
type
  OlAttachmentType = TOleEnum;
const
  olByValue = $00000001;
  olByReference = $00000004;
  olEmbeddeditem = $00000005;
  olOLE = $00000006;

// Constants for enum OlBusyStatus
type
  OlBusyStatus = TOleEnum;
const
  olFree = $00000000;
  olTentative = $00000001;
  olBusy = $00000002;
  olOutOfOffice = $00000003;

// Constants for enum OlDaysOfWeek
type
  OlDaysOfWeek = TOleEnum;
const
  olSunday = $00000001;
  olMonday = $00000002;
  olTuesday = $00000004;
  olWednesday = $00000008;
  olThursday = $00000010;
  olFriday = $00000020;
  olSaturday = $00000040;

// Constants for enum OlDefaultFolders
type
  OlDefaultFolders = TOleEnum;
const
  olFolderDeletedItems = $00000003;
  olFolderOutbox = $00000004;
  olFolderSentMail = $00000005;
  olFolderInbox = $00000006;
  olFolderCalendar = $00000009;
  olFolderContacts = $0000000A;
  olFolderJournal = $0000000B;
  olFolderNotes = $0000000C;
  olFolderTasks = $0000000D;
  olFolderDrafts = $00000010;

// Constants for enum OlDisplayType
type
  OlDisplayType = TOleEnum;
const
  olUser = $00000000;
  olDistList = $00000001;
  olForum = $00000002;
  olAgent = $00000003;
  olOrganization = $00000004;
  olPrivateDistList = $00000005;
  olRemoteUser = $00000006;

// Constants for enum OlEditorType
type
  OlEditorType = TOleEnum;
const
  olEditorText = $00000001;
  olEditorHTML = $00000002;
  olEditorRTF = $00000003;
  olEditorWord = $00000004;

// Constants for enum OlFlagStatus
type
  OlFlagStatus = TOleEnum;
const
  olNoFlag = $00000000;
  olFlagComplete = $00000001;
  olFlagMarked = $00000002;

// Constants for enum OlFolderDisplayMode
type
  OlFolderDisplayMode = TOleEnum;
const
  olFolderDisplayNormal = $00000000;
  olFolderDisplayFolderOnly = $00000001;
  olFolderDisplayNoNavigation = $00000002;

// Constants for enum OlFormRegistry
type
  OlFormRegistry = TOleEnum;
const
  olDefaultRegistry = $00000000;
  olPersonalRegistry = $00000002;
  olFolderRegistry = $00000003;
  olOrganizationRegistry = $00000004;

// Constants for enum OlGender
type
  OlGender = TOleEnum;
const
  olUnspecified = $00000000;
  olFemale = $00000001;
  olMale = $00000002;

// Constants for enum OlImportance
type
  OlImportance = TOleEnum;
const
  olImportanceLow = $00000000;
  olImportanceNormal = $00000001;
  olImportanceHigh = $00000002;

// Constants for enum OlInspectorClose
type
  OlInspectorClose = TOleEnum;
const
  olSave = $00000000;
  olDiscard = $00000001;
  olPromptForSave = $00000002;

// Constants for enum OlItemType
type
  OlItemType = TOleEnum;
const
  olMailItem = $00000000;
  olAppointmentItem = $00000001;
  olContactItem = $00000002;
  olTaskItem = $00000003;
  olJournalItem = $00000004;
  olNoteItem = $00000005;
  olPostItem = $00000006;
  olDistributionListItem = $00000007;

// Constants for enum OlJournalRecipientType
type
  OlJournalRecipientType = TOleEnum;
const
  olAssociatedContact = $00000001;

// Constants for enum OlMailingAddress
type
  OlMailingAddress = TOleEnum;
const
  olNone = $00000000;
  olHome = $00000001;
  olBusiness = $00000002;
  olOther = $00000003;

// Constants for enum OlMailRecipientType
type
  OlMailRecipientType = TOleEnum;
const
  olOriginator = $00000000;
  olTo = $00000001;
  olCC = $00000002;
  olBCC = $00000003;

// Constants for enum OlMeetingRecipientType
type
  OlMeetingRecipientType = TOleEnum;
const
  olOrganizer = $00000000;
  olRequired = $00000001;
  olOptional = $00000002;
  olResource = $00000003;

// Constants for enum OlMeetingResponse
type
  OlMeetingResponse = TOleEnum;
const
  olMeetingTentative = $00000002;
  olMeetingAccepted = $00000003;
  olMeetingDeclined = $00000004;

// Constants for enum OlMeetingStatus
type
  OlMeetingStatus = TOleEnum;
const
  olNonMeeting = $00000000;
  olMeeting = $00000001;
  olMeetingReceived = $00000003;
  olMeetingCanceled = $00000005;

// Constants for enum OlNetMeetingType
type
  OlNetMeetingType = TOleEnum;
const
  olNetMeeting = $00000000;
  olNetShow = $00000001;
  olChat = $00000002;

// Constants for enum OlNoteColor
type
  OlNoteColor = TOleEnum;
const
  olBlue = $00000000;
  olGreen = $00000001;
  olPink = $00000002;
  olYellow = $00000003;
  olWhite = $00000004;

// Constants for enum OlObjectClass
type
  OlObjectClass = TOleEnum;
const
  olApplication = $00000000;
  olNamespace = $00000001;
  olFolder = $00000002;
  olRecipient = $00000004;
  olAttachment = $00000005;
  olAddressList = $00000007;
  olAddressEntry = $00000008;
  olFolders = $0000000F;
  olItems = $00000010;
  olRecipients = $00000011;
  olAttachments = $00000012;
  olAddressLists = $00000014;
  olAddressEntries = $00000015;
  olAppointment = $0000001A;
  olMeetingRequest = $00000035;
  olMeetingCancellation = $00000036;
  olMeetingResponseNegative = $00000037;
  olMeetingResponsePositive = $00000038;
  olMeetingResponseTentative = $00000039;
  olRecurrencePattern = $0000001C;
  olExceptions = $0000001D;
  olException = $0000001E;
  olAction = $00000020;
  olActions = $00000021;
  olExplorer = $00000022;
  olInspector = $00000023;
  olPages = $00000024;
  olFormDescription = $00000025;
  olUserProperties = $00000026;
  olUserProperty = $00000027;
  olContact = $00000028;
  olDocument = $00000029;
  olJournal = $0000002A;
  olMail = $0000002B;
  olNote = $0000002C;
  olPost = $0000002D;
  olReport = $0000002E;
  olRemote = $0000002F;
  olTask = $00000030;
  olTaskRequest = $00000031;
  olTaskRequestUpdate = $00000032;
  olTaskRequestAccept = $00000033;
  olTaskRequestDecline = $00000034;
  olExplorers = $0000003C;
  olInspectors = $0000003D;
  olPanes = $0000003E;
  olOutlookBarPane = $0000003F;
  olOutlookBarStorage = $00000040;
  olOutlookBarGroups = $00000041;
  olOutlookBarGroup = $00000042;
  olOutlookBarShortcuts = $00000043;
  olOutlookBarShortcut = $00000044;
  olDistributionList = $00000045;
  olPropertyPageSite = $00000046;
  olPropertyPages = $00000047;
  olSyncObject = $00000048;
  olSyncObjects = $00000049;
  olSelection = $0000004A;
  olLink = $0000004B;
  olLinks = $0000004C;

// Constants for enum OlOutlookBarViewType
type
  OlOutlookBarViewType = TOleEnum;
const
  olLargeIcon = $00000000;
  olSmallIcon = $00000001;

// Constants for enum OlPane
type
  OlPane = TOleEnum;
const
  olOutlookBar = $00000001;
  olFolderList = $00000002;
  olPreview = $00000003;

// Constants for enum OlRecurrenceState
type
  OlRecurrenceState = TOleEnum;
const
  olApptNotRecurring = $00000000;
  olApptMaster = $00000001;
  olApptOccurrence = $00000002;
  olApptException = $00000003;

// Constants for enum OlRecurrenceType
type
  OlRecurrenceType = TOleEnum;
const
  olRecursDaily = $00000000;
  olRecursWeekly = $00000001;
  olRecursMonthly = $00000002;
  olRecursMonthNth = $00000003;
  olRecursYearly = $00000005;
  olRecursYearNth = $00000006;

// Constants for enum OlRemoteStatus
type
  OlRemoteStatus = TOleEnum;
const
  olRemoteStatusNone = $00000000;
  olUnMarked = $00000001;
  olMarkedForDownload = $00000002;
  olMarkedForCopy = $00000003;
  olMarkedForDelete = $00000004;

// Constants for enum OlResponseStatus
type
  OlResponseStatus = TOleEnum;
const
  olResponseNone = $00000000;
  olResponseOrganized = $00000001;
  olResponseTentative = $00000002;
  olResponseAccepted = $00000003;
  olResponseDeclined = $00000004;
  olResponseNotResponded = $00000005;

// Constants for enum OlSaveAsType
type
  OlSaveAsType = TOleEnum;
const
  olTXT = $00000000;
  olRTF = $00000001;
  olTemplate = $00000002;
  olMSG = $00000003;
  olDoc = $00000004;
  olHTML = $00000005;
  olVCard = $00000006;
  olVCal = $00000007;

// Constants for enum OlSensitivity
type
  OlSensitivity = TOleEnum;
const
  olNormal = $00000000;
  olPersonal = $00000001;
  olPrivate = $00000002;
  olConfidential = $00000003;

// Constants for enum OlSortOrder
type
  OlSortOrder = TOleEnum;
const
  olSortNone = $00000000;
  olAscending = $00000001;
  olDescending = $00000002;

// Constants for enum OlTaskDelegationState
type
  OlTaskDelegationState = TOleEnum;
const
  olTaskNotDelegated = $00000000;
  olTaskDelegationUnknown = $00000001;
  olTaskDelegationAccepted = $00000002;
  olTaskDelegationDeclined = $00000003;

// Constants for enum OlTaskOwnership
type
  OlTaskOwnership = TOleEnum;
const
  olNewTask = $00000000;
  olDelegatedTask = $00000001;
  olOwnTask = $00000002;

// Constants for enum OlTaskRecipientType
type
  OlTaskRecipientType = TOleEnum;
const
  olUpdate = $00000002;
  olFinalStatus = $00000003;

// Constants for enum OlTaskResponse
type
  OlTaskResponse = TOleEnum;
const
  olTaskSimple = $00000000;
  olTaskAssign = $00000001;
  olTaskAccept = $00000002;
  olTaskDecline = $00000003;

// Constants for enum OlTaskStatus
type
  OlTaskStatus = TOleEnum;
const
  olTaskNotStarted = $00000000;
  olTaskInProgress = $00000001;
  olTaskComplete = $00000002;
  olTaskWaiting = $00000003;
  olTaskDeferred = $00000004;

// Constants for enum OlTrackingStatus
type
  OlTrackingStatus = TOleEnum;
const
  olTrackingNone = $00000000;
  olTrackingDelivered = $00000001;
  olTrackingNotDelivered = $00000002;
  olTrackingNotRead = $00000003;
  olTrackingRecallFailure = $00000004;
  olTrackingRecallSuccess = $00000005;
  olTrackingRead = $00000006;
  olTrackingReplied = $00000007;

// Constants for enum OlUserPropertyType
type
  OlUserPropertyType = TOleEnum;
const
  olText = $00000001;
  olNumber = $00000003;
  olDateTime = $00000005;
  olYesNo = $00000006;
  olDuration = $00000007;
  olKeywords = $0000000B;
  olPercent = $0000000C;
  olCurrency = $0000000E;
  olFormula = $00000012;
  olCombination = $00000013;

// Constants for enum OlWindowState
type
  OlWindowState = TOleEnum;
const
  olMaximized = $00000000;
  olMinimized = $00000001;
  olNormalWindow = $00000002;

// Constants for enum OlSyncState
type
  OlSyncState = TOleEnum;
const
  olSyncStopped = $00000000;
  olSyncStarted = $00000001;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  Action = interface;
  ActionDisp = dispinterface;
  _Application = interface;
  _ApplicationDisp = dispinterface;
  _NameSpace = interface;
  _NameSpaceDisp = dispinterface;
  Recipient = interface;
  RecipientDisp = dispinterface;
  AddressEntry = interface;
  AddressEntryDisp = dispinterface;
  AddressEntries = interface;
  AddressEntriesDisp = dispinterface;
  _Folders = interface;
  _FoldersDisp = dispinterface;
  MAPIFolder = interface;
  MAPIFolderDisp = dispinterface;
  _Items = interface;
  _ItemsDisp = dispinterface;
  _Explorer = interface;
  _ExplorerDisp = dispinterface;
  Panes = interface;
  PanesDisp = dispinterface;
  Selection = interface;
  SelectionDisp = dispinterface;
  AddressLists = interface;
  AddressListsDisp = dispinterface;
  AddressList = interface;
  AddressListDisp = dispinterface;
  SyncObjects = interface;
  SyncObjectsDisp = dispinterface;
  _SyncObject = interface;
  _SyncObjectDisp = dispinterface;
  SyncObjectEvents = dispinterface;
  _Inspector = interface;
  _InspectorDisp = dispinterface;
  _Explorers = interface;
  _ExplorersDisp = dispinterface;
  ExplorerEvents = dispinterface;
  _Inspectors = interface;
  _InspectorsDisp = dispinterface;
  InspectorEvents = dispinterface;
  Actions = interface;
  ActionsDisp = dispinterface;
  ApplicationEvents = dispinterface;
  PropertyPages = interface;
  PropertyPagesDisp = dispinterface;
  _AppointmentItem = interface;
  _AppointmentItemDisp = dispinterface;
  Attachments = interface;
  AttachmentsDisp = dispinterface;
  Attachment = interface;
  AttachmentDisp = dispinterface;
  FormDescription = interface;
  FormDescriptionDisp = dispinterface;
  UserProperties = interface;
  UserPropertiesDisp = dispinterface;
  UserProperty = interface;
  UserPropertyDisp = dispinterface;
  Recipients = interface;
  RecipientsDisp = dispinterface;
  _MailItem = interface;
  _MailItemDisp = dispinterface;
  ItemEvents = dispinterface;
  Links = interface;
  LinksDisp = dispinterface;
  Link = interface;
  LinkDisp = dispinterface;
  RecurrencePattern = interface;
  RecurrencePatternDisp = dispinterface;
  Exceptions = interface;
  ExceptionsDisp = dispinterface;
  Exception = interface;
  ExceptionDisp = dispinterface;
  _MeetingItem = interface;
  _MeetingItemDisp = dispinterface;
  _ContactItem = interface;
  _ContactItemDisp = dispinterface;
  _DistListItem = interface;
  _DistListItemDisp = dispinterface;
  _DocumentItem = interface;
  _DocumentItemDisp = dispinterface;
  ExplorersEvents = dispinterface;
  FoldersEvents = dispinterface;
  InspectorsEvents = dispinterface;
  ItemsEvents = dispinterface;
  _JournalItem = interface;
  _JournalItemDisp = dispinterface;
  NameSpaceEvents = dispinterface;
  _NoteItem = interface;
  _NoteItemDisp = dispinterface;
  OutlookBarGroup = interface;
  OutlookBarGroupDisp = dispinterface;
  _OutlookBarShortcuts = interface;
  _OutlookBarShortcutsDisp = dispinterface;
  OutlookBarShortcut = interface;
  OutlookBarShortcutDisp = dispinterface;
  _OutlookBarGroups = interface;
  _OutlookBarGroupsDisp = dispinterface;
  OutlookBarGroupsEvents = dispinterface;
  _OutlookBarPane = interface;
  _OutlookBarPaneDisp = dispinterface;
  OutlookBarStorage = interface;
  OutlookBarStorageDisp = dispinterface;
  OutlookBarPaneEvents = dispinterface;
  OutlookBarShortcutsEvents = dispinterface;
  PropertyPage = interface;
  PropertyPageSite = interface;
  PropertyPageSiteDisp = dispinterface;
  Pages = interface;
  PagesDisp = dispinterface;
  _PostItem = interface;
  _PostItemDisp = dispinterface;
  _RemoteItem = interface;
  _RemoteItemDisp = dispinterface;
  _ReportItem = interface;
  _ReportItemDisp = dispinterface;
  _TaskItem = interface;
  _TaskItemDisp = dispinterface;
  _TaskRequestAcceptItem = interface;
  _TaskRequestAcceptItemDisp = dispinterface;
  _TaskRequestDeclineItem = interface;
  _TaskRequestDeclineItemDisp = dispinterface;
  _TaskRequestItem = interface;
  _TaskRequestItemDisp = dispinterface;
  _TaskRequestUpdateItem = interface;
  _TaskRequestUpdateItemDisp = dispinterface;
  _IRecipientControl = interface;
  _DRecipientControl = dispinterface;
  _DRecipientControlEvents = dispinterface;
  _IDocSiteControl = interface;
  _DDocSiteControl = dispinterface;
  _DDocSiteControlEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  SyncObject = _SyncObject;
  Explorer = _Explorer;
  Inspector = _Inspector;
  MailItem = _MailItem;
  AppointmentItem = _AppointmentItem;
  MeetingItem = _MeetingItem;
  TaskItem = _TaskItem;
  OutlookApplication = _Application;
  ContactItem = _ContactItem;
  DistListItem = _DistListItem;
  DocumentItem = _DocumentItem;
  Explorers = _Explorers;
  Inspectors = _Inspectors;
  Folders = _Folders;
  Items = _Items;
  JournalItem = _JournalItem;
  NameSpace = _NameSpace;
  NoteItem = _NoteItem;
  OutlookBarGroups = _OutlookBarGroups;
  OutlookBarPane = _OutlookBarPane;
  OutlookBarShortcuts = _OutlookBarShortcuts;
  PostItem = _PostItem;
  RemoteItem = _RemoteItem;
  ReportItem = _ReportItem;
  TaskRequestAcceptItem = _TaskRequestAcceptItem;
  TaskRequestDeclineItem = _TaskRequestDeclineItem;
  TaskRequestItem = _TaskRequestItem;
  TaskRequestUpdateItem = _TaskRequestUpdateItem;
  _RecipientControl = _DRecipientControl;
  _DocSiteControl = _DDocSiteControl;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PWordBool1 = ^WordBool; {*}
  PUserType1 = ^TGUID; {*}
  PShortint1 = ^Shortint; {*}
  PPShortint1 = ^PShortint1; {*}
  PUserType2 = ^TGUID; {*}


// *********************************************************************//
// Interface: Action
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063043-0000-0000-C000-000000000046}
// *********************************************************************//
  Action = interface(IDispatch)
    ['{00063043-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_CopyLike {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlActionCopyLike; safecall;
    procedure Set_CopyLike {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}CopyLike: OlActionCopyLike); safecall;
    function  Get_Enabled {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Enabled {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}Enabled: WordBool); safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_Prefix {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Prefix {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Prefix: WideString); safecall;
    function  Get_ReplyStyle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlActionReplyStyle; safecall;
    procedure Set_ReplyStyle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ReplyStyle: OlActionReplyStyle); safecall;
    function  Get_ResponseStyle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlActionResponseStyle; safecall;
    procedure Set_ResponseStyle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ResponseStyle: OlActionResponseStyle); safecall;
    function  Get_ShowOn {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlActionShowOn; safecall;
    procedure Set_ShowOn {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ShowOn: OlActionShowOn); safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Execute {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property CopyLike: OlActionCopyLike read Get_CopyLike write Set_CopyLike;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Name: WideString read Get_Name write Set_Name;
    property Prefix: WideString read Get_Prefix write Set_Prefix;
    property ReplyStyle: OlActionReplyStyle read Get_ReplyStyle write Set_ReplyStyle;
    property ResponseStyle: OlActionResponseStyle read Get_ResponseStyle write Set_ResponseStyle;
    property ShowOn: OlActionShowOn read Get_ShowOn write Set_ShowOn;
  end;

// *********************************************************************//
// DispIntf:  ActionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063043-0000-0000-C000-000000000046}
// *********************************************************************//
  ActionDisp = dispinterface
    ['{00063043-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property CopyLike {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlActionCopyLike dispid 100;
    property Enabled {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 103;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12289;
    property Prefix {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 61;
    property ReplyStyle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlActionReplyStyle dispid 101;
    property ResponseStyle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlActionResponseStyle dispid 102;
    property ShowOn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlActionShowOn dispid 105;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 108;
    function  Execute {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 106;
  end;

// *********************************************************************//
// Interface: _Application
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063001-0000-0000-C000-000000000046}
// *********************************************************************//
  _Application = interface(IDispatch)
    ['{00063001-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Assistant; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  ActiveExplorer {Flags(1), (1/0) CC:0, INV:1, DBG:6}: _Explorer; safecall;
    function  ActiveInspector {Flags(1), (1/0) CC:0, INV:1, DBG:6}: _Inspector; safecall;
    function  CreateItem {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}ItemType: OlItemType): IDispatch; safecall;
    function  CreateItemFromTemplate {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const TemplatePath: WideString; 
                                                                          {VT_12:0}InFolder: OleVariant): IDispatch; safecall;
    function  CreateObject {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const ObjectName: WideString): IDispatch; safecall;
    function  GetNamespace {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const Type_: WideString): _NameSpace; safecall;
    procedure Quit {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:6}: COMAddIns; safecall;
    function  Get_Explorers {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Explorers; safecall;
    function  Get_Inspectors {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspectors; safecall;
    function  Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:6}: LanguageSettings; safecall;
    function  Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AnswerWizard; safecall;
    function  Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MsoFeatureInstall; safecall;
    procedure Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FeatureInstall: MsoFeatureInstall); safecall;
    function  ActiveWindow {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Assistant: Assistant read Get_Assistant;
    property Name: WideString read Get_Name;
    property Version: WideString read Get_Version;
    property COMAddIns: COMAddIns read Get_COMAddIns;
    property Explorers: _Explorers read Get_Explorers;
    property Inspectors: _Inspectors read Get_Inspectors;
    property LanguageSettings: LanguageSettings read Get_LanguageSettings;
    property ProductCode: WideString read Get_ProductCode;
    property AnswerWizard: AnswerWizard read Get_AnswerWizard;
    property FeatureInstall: MsoFeatureInstall read Get_FeatureInstall write Set_FeatureInstall;
  end;

// *********************************************************************//
// DispIntf:  _ApplicationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063001-0000-0000-C000-000000000046}
// *********************************************************************//
  _ApplicationDisp = dispinterface
    ['{00063001-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Assistant {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Assistant readonly dispid 276;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 12289;
    property Version {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 278;
    function  ActiveExplorer {Flags(2), (1/0) CC:0, INV:1, DBG:4}: _Explorer; dispid 273;
    function  ActiveInspector {Flags(2), (1/0) CC:0, INV:1, DBG:4}: _Inspector; dispid 274;
    function  CreateItem {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}ItemType: OlItemType): IDispatch; dispid 266;
    function  CreateItemFromTemplate {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const TemplatePath: WideString; 
                                                                          {VT_12:0}InFolder: OleVariant): IDispatch; dispid 267;
    function  CreateObject {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const ObjectName: WideString): IDispatch; dispid 277;
    function  GetNamespace {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const Type_: WideString): _NameSpace; dispid 272;
    procedure Quit {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 275;
    property COMAddIns {Flags(2), (1/0) CC:0, INV:2, DBG:6}: COMAddIns readonly dispid 280;
    property Explorers {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Explorers readonly dispid 281;
    property Inspectors {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspectors readonly dispid 282;
    property LanguageSettings {Flags(2), (1/0) CC:0, INV:2, DBG:6}: LanguageSettings readonly dispid 283;
    property ProductCode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 284;
    property AnswerWizard {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AnswerWizard readonly dispid 285;
    property FeatureInstall {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MsoFeatureInstall dispid 286;
    function  ActiveWindow {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 287;
  end;

// *********************************************************************//
// Interface: _NameSpace
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063002-0000-0000-C000-000000000046}
// *********************************************************************//
  _NameSpace = interface(IDispatch)
    ['{00063002-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_CurrentUser {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Recipient; safecall;
    function  Get_Folders {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Folders; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_AddressLists {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AddressLists; safecall;
    function  CreateRecipient {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const RecipientName: WideString): Recipient; safecall;
    function  GetDefaultFolder {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}FolderType: OlDefaultFolders): MAPIFolder; safecall;
    function  GetFolderFromID {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const EntryIDFolder: WideString; 
                                                                   {VT_12:0}EntryIDStore: OleVariant): MAPIFolder; safecall;
    function  GetItemFromID {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const EntryIDItem: WideString; 
                                                                 {VT_12:0}EntryIDStore: OleVariant): IDispatch; safecall;
    function  GetRecipientFromID {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const EntryID: WideString): Recipient; safecall;
    function  GetSharedDefaultFolder {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_29:1}const Recipient: Recipient; 
                                                                          {VT_29:0}FolderType: OlDefaultFolders): MAPIFolder; safecall;
    procedure Logoff {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Logon {Flags(1), (4/4) CC:0, INV:1, DBG:6}({VT_12:0}Profile: OleVariant; 
                                                         {VT_12:0}Password: OleVariant; 
                                                         {VT_12:0}ShowDialog: OleVariant; 
                                                         {VT_12:0}NewSession: OleVariant); safecall;
    function  PickFolder {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MAPIFolder; safecall;
    procedure RefreshRemoteHeaders {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_SyncObjects {Flags(1), (1/0) CC:0, INV:2, DBG:6}: SyncObjects; safecall;
    procedure AddStore {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Store: OleVariant); safecall;
    procedure RemoveStore {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const Folder: MAPIFolder); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property CurrentUser: Recipient read Get_CurrentUser;
    property Folders: _Folders read Get_Folders;
    property Type_: WideString read Get_Type_;
    property AddressLists: AddressLists read Get_AddressLists;
    property SyncObjects: SyncObjects read Get_SyncObjects;
  end;

// *********************************************************************//
// DispIntf:  _NameSpaceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063002-0000-0000-C000-000000000046}
// *********************************************************************//
  _NameSpaceDisp = dispinterface
    ['{00063002-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property CurrentUser {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Recipient readonly dispid 8449;
    property Folders {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Folders readonly dispid 8451;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 8452;
    property AddressLists {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AddressLists readonly dispid 8461;
    function  CreateRecipient {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const RecipientName: WideString): Recipient; dispid 8458;
    function  GetDefaultFolder {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}FolderType: OlDefaultFolders): MAPIFolder; dispid 8459;
    function  GetFolderFromID {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const EntryIDFolder: WideString; 
                                                                   {VT_12:0}EntryIDStore: OleVariant): MAPIFolder; dispid 8456;
    function  GetItemFromID {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const EntryIDItem: WideString; 
                                                                 {VT_12:0}EntryIDStore: OleVariant): IDispatch; dispid 8457;
    function  GetRecipientFromID {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const EntryID: WideString): Recipient; dispid 8455;
    function  GetSharedDefaultFolder {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_29:1}const Recipient: Recipient; 
                                                                          {VT_29:0}FolderType: OlDefaultFolders): MAPIFolder; dispid 8460;
    procedure Logoff {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 8454;
    procedure Logon {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_12:0}Profile: OleVariant; 
                                                         {VT_12:0}Password: OleVariant; 
                                                         {VT_12:0}ShowDialog: OleVariant; 
                                                         {VT_12:0}NewSession: OleVariant); dispid 8453;
    function  PickFolder {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MAPIFolder; dispid 8462;
    procedure RefreshRemoteHeaders {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 8471;
    property SyncObjects {Flags(2), (1/0) CC:0, INV:2, DBG:6}: SyncObjects readonly dispid 8472;
    procedure AddStore {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Store: OleVariant); dispid 8473;
    procedure RemoveStore {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Folder: MAPIFolder); dispid 8474;
  end;

// *********************************************************************//
// Interface: Recipient
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063045-0000-0000-C000-000000000046}
// *********************************************************************//
  Recipient = interface(IDispatch)
    ['{00063045-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Address {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_AddressEntry {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AddressEntry; safecall;
    procedure Set_AddressEntry {Flags(1), (1/1) CC:0, INV:8, DBG:6}({VT_29:1}const AddressEntry: AddressEntry); safecall;
    function  Get_AutoResponse {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_AutoResponse {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const AutoResponse: WideString); safecall;
    function  Get_DisplayType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlDisplayType; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Index {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_MeetingResponseStatus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlResponseStatus; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Resolved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_TrackingStatus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlTrackingStatus; safecall;
    procedure Set_TrackingStatus {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}TrackingStatus: OlTrackingStatus); safecall;
    function  Get_TrackingStatusTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_TrackingStatusTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}TrackingStatusTime: TDateTime); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Type_: Integer); safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  FreeBusy {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_7:0}Start: TDateTime; 
                                                            {VT_3:0}MinPerChar: Integer; 
                                                            {VT_12:0}CompleteFormat: OleVariant): WideString; safecall;
    function  Resolve {Flags(1), (1/0) CC:0, INV:1, DBG:6}: WordBool; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Address: WideString read Get_Address;
    property AddressEntry: AddressEntry read Get_AddressEntry write Set_AddressEntry;
    property AutoResponse: WideString read Get_AutoResponse write Set_AutoResponse;
    property DisplayType: OlDisplayType read Get_DisplayType;
    property EntryID: WideString read Get_EntryID;
    property Index: Integer read Get_Index;
    property MeetingResponseStatus: OlResponseStatus read Get_MeetingResponseStatus;
    property Name: WideString read Get_Name;
    property Resolved: WordBool read Get_Resolved;
    property TrackingStatus: OlTrackingStatus read Get_TrackingStatus write Set_TrackingStatus;
    property TrackingStatusTime: TDateTime read Get_TrackingStatusTime write Set_TrackingStatusTime;
    property Type_: Integer read Get_Type_ write Set_Type_;
  end;

// *********************************************************************//
// DispIntf:  RecipientDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063045-0000-0000-C000-000000000046}
// *********************************************************************//
  RecipientDisp = dispinterface
    ['{00063045-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 109;
    property Address {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 12291;
    property AddressEntry {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AddressEntry dispid 121;
    property AutoResponse {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 106;
    property DisplayType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlDisplayType readonly dispid 14592;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property Index {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 91;
    property MeetingResponseStatus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlResponseStatus readonly dispid 102;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 12289;
    property Resolved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 100;
    property TrackingStatus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlTrackingStatus dispid 118;
    property TrackingStatusTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 119;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 3093;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 110;
    function  FreeBusy {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_7:0}Start: TDateTime; 
                                                            {VT_3:0}MinPerChar: Integer; 
                                                            {VT_12:0}CompleteFormat: OleVariant): WideString; dispid 111;
    function  Resolve {Flags(2), (1/0) CC:0, INV:1, DBG:4}: WordBool; dispid 113;
  end;

// *********************************************************************//
// Interface: AddressEntry
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006304B-0000-0000-C000-000000000046}
// *********************************************************************//
  AddressEntry = interface(IDispatch)
    ['{0006304B-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Address {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Address {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Address: WideString); safecall;
    function  Get_DisplayType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlDisplayType; safecall;
    function  Get_ID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Manager {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AddressEntry; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    procedure Set_MAPIOBJECT {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_13:0}const MAPIOBJECT: IUnknown); safecall;
    function  Get_Members {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AddressEntries; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Type_: WideString); safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Details {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}HWnd: OleVariant); safecall;
    function  GetFreeBusy {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_7:0}Start: TDateTime; 
                                                               {VT_3:0}MinPerChar: Integer; 
                                                               {VT_12:0}CompleteFormat: OleVariant): WideString; safecall;
    procedure Update {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_12:0}MakePermanent: OleVariant; 
                                                          {VT_12:0}Refresh: OleVariant); safecall;
    procedure UpdateFreeBusy {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Address: WideString read Get_Address write Set_Address;
    property DisplayType: OlDisplayType read Get_DisplayType;
    property ID: WideString read Get_ID;
    property Manager: AddressEntry read Get_Manager;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT write Set_MAPIOBJECT;
    property Members: AddressEntries read Get_Members;
    property Name: WideString read Get_Name write Set_Name;
    property Type_: WideString read Get_Type_ write Set_Type_;
  end;

// *********************************************************************//
// DispIntf:  AddressEntryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006304B-0000-0000-C000-000000000046}
// *********************************************************************//
  AddressEntryDisp = dispinterface
    ['{0006304B-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Address {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12291;
    property DisplayType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlDisplayType readonly dispid 14592;
    property ID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property Manager {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AddressEntry readonly dispid 771;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown dispid 61696;
    property Members {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AddressEntries readonly dispid 772;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12289;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12290;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 770;
    procedure Details {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}HWnd: OleVariant); dispid 769;
    function  GetFreeBusy {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_7:0}Start: TDateTime; 
                                                               {VT_3:0}MinPerChar: Integer; 
                                                               {VT_12:0}CompleteFormat: OleVariant): WideString; dispid 774;
    procedure Update {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_12:0}MakePermanent: OleVariant; 
                                                          {VT_12:0}Refresh: OleVariant); dispid 768;
    procedure UpdateFreeBusy {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 775;
  end;

// *********************************************************************//
// Interface: AddressEntries
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006304A-0000-0000-C000-000000000046}
// *********************************************************************//
  AddressEntries = interface(IDispatch)
    ['{0006304A-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): AddressEntry; safecall;
    function  Get_RawTable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Add {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_8:0}const Type_: WideString; 
                                                       {VT_12:0}Name: OleVariant; 
                                                       {VT_12:0}Address: OleVariant): AddressEntry; safecall;
    function  GetFirst {Flags(1), (1/0) CC:0, INV:1, DBG:6}: AddressEntry; safecall;
    function  GetLast {Flags(1), (1/0) CC:0, INV:1, DBG:6}: AddressEntry; safecall;
    function  GetNext {Flags(1), (1/0) CC:0, INV:1, DBG:6}: AddressEntry; safecall;
    function  GetPrevious {Flags(1), (1/0) CC:0, INV:1, DBG:6}: AddressEntry; safecall;
    procedure Sort {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_12:0}Property_: OleVariant; 
                                                        {VT_12:0}Order: OleVariant); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
    property RawTable: IUnknown read Get_RawTable;
  end;

// *********************************************************************//
// DispIntf:  AddressEntriesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006304A-0000-0000-C000-000000000046}
// *********************************************************************//
  AddressEntriesDisp = dispinterface
    ['{0006304A-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): AddressEntry; dispid 81;
    property RawTable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 90;
    function  Add {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_8:0}const Type_: WideString; 
                                                       {VT_12:0}Name: OleVariant; 
                                                       {VT_12:0}Address: OleVariant): AddressEntry; dispid 95;
    function  GetFirst {Flags(2), (1/0) CC:0, INV:1, DBG:4}: AddressEntry; dispid 86;
    function  GetLast {Flags(2), (1/0) CC:0, INV:1, DBG:4}: AddressEntry; dispid 88;
    function  GetNext {Flags(2), (1/0) CC:0, INV:1, DBG:4}: AddressEntry; dispid 87;
    function  GetPrevious {Flags(2), (1/0) CC:0, INV:1, DBG:4}: AddressEntry; dispid 89;
    procedure Sort {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_12:0}Property_: OleVariant; 
                                                        {VT_12:0}Order: OleVariant); dispid 97;
  end;

// *********************************************************************//
// Interface: _Folders
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063040-0000-0000-C000-000000000046}
// *********************************************************************//
  _Folders = interface(IDispatch)
    ['{00063040-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): MAPIFolder; safecall;
    function  Get_RawTable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Add {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                       {VT_12:0}Type_: OleVariant): MAPIFolder; safecall;
    function  GetFirst {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MAPIFolder; safecall;
    function  GetLast {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MAPIFolder; safecall;
    function  GetNext {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MAPIFolder; safecall;
    function  GetPrevious {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MAPIFolder; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Index: Integer); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
    property RawTable: IUnknown read Get_RawTable;
  end;

// *********************************************************************//
// DispIntf:  _FoldersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063040-0000-0000-C000-000000000046}
// *********************************************************************//
  _FoldersDisp = dispinterface
    ['{00063040-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): MAPIFolder; dispid 81;
    property RawTable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 90;
    function  Add {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                       {VT_12:0}Type_: OleVariant): MAPIFolder; dispid 95;
    function  GetFirst {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MAPIFolder; dispid 86;
    function  GetLast {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MAPIFolder; dispid 88;
    function  GetNext {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MAPIFolder; dispid 87;
    function  GetPrevious {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MAPIFolder; dispid 89;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Index: Integer); dispid 84;
  end;

// *********************************************************************//
// Interface: MAPIFolder
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063006-0000-0000-C000-000000000046}
// *********************************************************************//
  MAPIFolder = interface(IDispatch)
    ['{00063006-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_DefaultItemType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlItemType; safecall;
    function  Get_DefaultMessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Description {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Description {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Description: WideString); safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Folders {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Folders; safecall;
    function  Get_Items {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Items; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_StoreID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_UnReadItemCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  CopyTo {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestinationFolder: MAPIFolder): MAPIFolder; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  GetExplorer {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}DisplayMode: OleVariant): _Explorer; safecall;
    procedure MoveTo {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestinationFolder: MAPIFolder); safecall;
    function  Get_UserPermissions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_WebViewOn {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_WebViewOn {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}WebViewOn: WordBool); safecall;
    function  Get_WebViewURL {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_WebViewURL {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const WebViewURL: WideString); safecall;
    function  Get_WebViewAllowNavigation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_WebViewAllowNavigation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}WebViewAllowNavigation: WordBool); safecall;
    procedure AddToPFFavorites {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property DefaultItemType: OlItemType read Get_DefaultItemType;
    property DefaultMessageClass: WideString read Get_DefaultMessageClass;
    property Description: WideString read Get_Description write Set_Description;
    property EntryID: WideString read Get_EntryID;
    property Folders: _Folders read Get_Folders;
    property Items: _Items read Get_Items;
    property Name: WideString read Get_Name write Set_Name;
    property StoreID: WideString read Get_StoreID;
    property UnReadItemCount: Integer read Get_UnReadItemCount;
    property UserPermissions: IDispatch read Get_UserPermissions;
    property WebViewOn: WordBool read Get_WebViewOn write Set_WebViewOn;
    property WebViewURL: WideString read Get_WebViewURL write Set_WebViewURL;
    property WebViewAllowNavigation: WordBool read Get_WebViewAllowNavigation write Set_WebViewAllowNavigation;
  end;

// *********************************************************************//
// DispIntf:  MAPIFolderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063006-0000-0000-C000-000000000046}
// *********************************************************************//
  MAPIFolderDisp = dispinterface
    ['{00063006-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property DefaultItemType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlItemType readonly dispid 12550;
    property DefaultMessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 12551;
    property Description {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12292;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property Folders {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Folders readonly dispid 8451;
    property Items {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Items readonly dispid 12544;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12289;
    property StoreID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 12552;
    property UnReadItemCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 13827;
    function  CopyTo {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestinationFolder: MAPIFolder): MAPIFolder; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61509;
    procedure Display {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 12548;
    function  GetExplorer {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}DisplayMode: OleVariant): _Explorer; dispid 12545;
    procedure MoveTo {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestinationFolder: MAPIFolder); dispid 61492;
    property UserPermissions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 12561;
    property WebViewOn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 12562;
    property WebViewURL {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12563;
    property WebViewAllowNavigation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 12564;
    procedure AddToPFFavorites {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 12565;
  end;

// *********************************************************************//
// Interface: _Items
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063041-0000-0000-C000-000000000046}
// *********************************************************************//
  _Items = interface(IDispatch)
    ['{00063041-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): IDispatch; safecall;
    function  Get_RawTable {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_IncludeRecurrences {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_IncludeRecurrences {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}IncludeRecurrences: WordBool); safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Type_: OleVariant): IDispatch; safecall;
    function  Find {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const Filter: WideString): IDispatch; safecall;
    function  FindNext {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    function  GetFirst {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    function  GetLast {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    function  GetNext {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    function  GetPrevious {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Index: Integer); safecall;
    procedure ResetColumns {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Restrict {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const Filter: WideString): _Items; safecall;
    procedure SetColumns {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Columns: WideString); safecall;
    procedure Sort {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Property_: WideString; 
                                                        {VT_12:0}Descending: OleVariant); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
    property RawTable: IUnknown read Get_RawTable;
    property IncludeRecurrences: WordBool read Get_IncludeRecurrences write Set_IncludeRecurrences;
  end;

// *********************************************************************//
// DispIntf:  _ItemsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063041-0000-0000-C000-000000000046}
// *********************************************************************//
  _ItemsDisp = dispinterface
    ['{00063041-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): IDispatch; dispid 81;
    property RawTable {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 90;
    property IncludeRecurrences {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 206;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Type_: OleVariant): IDispatch; dispid 95;
    function  Find {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const Filter: WideString): IDispatch; dispid 98;
    function  FindNext {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 99;
    function  GetFirst {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 86;
    function  GetLast {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 88;
    function  GetNext {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 87;
    function  GetPrevious {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 89;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Index: Integer); dispid 84;
    procedure ResetColumns {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 93;
    function  Restrict {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const Filter: WideString): _Items; dispid 100;
    procedure SetColumns {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Columns: WideString); dispid 92;
    procedure Sort {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Property_: WideString; 
                                                        {VT_12:0}Descending: OleVariant); dispid 97;
  end;

// *********************************************************************//
// Interface: _Explorer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063003-0000-0000-C000-000000000046}
// *********************************************************************//
  _Explorer = interface(IDispatch)
    ['{00063003-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBars; safecall;
    function  Get_CurrentFolder {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MAPIFolder; safecall;
    procedure Set_CurrentFolder {Flags(1), (1/1) CC:0, INV:8, DBG:6}({VT_29:1}const CurrentFolder: MAPIFolder); safecall;
    procedure Close {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CurrentView {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_CurrentView {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}CurrentView: OleVariant); safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Height: Integer); safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Left: Integer); safecall;
    function  Get_Panes {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Panes; safecall;
    function  Get_Selection {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Selection; safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Top: Integer); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Width: Integer); safecall;
    function  Get_WindowState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlWindowState; safecall;
    procedure Set_WindowState {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}WindowState: OlWindowState); safecall;
    procedure Activate {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  IsPaneVisible {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:0}Pane: OlPane): WordBool; safecall;
    procedure ShowPane {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_29:0}Pane: OlPane; 
                                                            {VT_11:0}Visible: WordBool); safecall;
    function  Get_Views {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property CommandBars: CommandBars read Get_CommandBars;
    property CurrentFolder: MAPIFolder read Get_CurrentFolder write Set_CurrentFolder;
    property Caption: WideString read Get_Caption;
    property CurrentView: OleVariant read Get_CurrentView write Set_CurrentView;
    property Height: Integer read Get_Height write Set_Height;
    property Left: Integer read Get_Left write Set_Left;
    property Panes: Panes read Get_Panes;
    property Selection: Selection read Get_Selection;
    property Top: Integer read Get_Top write Set_Top;
    property Width: Integer read Get_Width write Set_Width;
    property WindowState: OlWindowState read Get_WindowState write Set_WindowState;
    property Views: IDispatch read Get_Views;
  end;

// *********************************************************************//
// DispIntf:  _ExplorerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063003-0000-0000-C000-000000000046}
// *********************************************************************//
  _ExplorerDisp = dispinterface
    ['{00063003-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property CommandBars {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBars readonly dispid 8448;
    property CurrentFolder {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MAPIFolder dispid 8449;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 8451;
    procedure Display {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 8452;
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 8465;
    property CurrentView {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant dispid 8704;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 8468;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 8469;
    property Panes {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Panes readonly dispid 8705;
    property Selection {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Selection readonly dispid 8706;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 8470;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 8471;
    property WindowState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlWindowState dispid 8466;
    procedure Activate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 8467;
    function  IsPaneVisible {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:0}Pane: OlPane): WordBool; dispid 8707;
    procedure ShowPane {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:0}Pane: OlPane; 
                                                            {VT_11:0}Visible: WordBool); dispid 8708;
    property Views {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 12553;
  end;

// *********************************************************************//
// Interface: Panes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063009-0000-0000-C000-000000000046}
// *********************************************************************//
  Panes = interface(IDispatch)
    ['{00063009-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): IDispatch; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  PanesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063009-0000-0000-C000-000000000046}
// *********************************************************************//
  PanesDisp = dispinterface
    ['{00063009-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): IDispatch; dispid 81;
  end;

// *********************************************************************//
// Interface: Selection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063087-0000-0000-C000-000000000046}
// *********************************************************************//
  Selection = interface(IDispatch)
    ['{00063087-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): IDispatch; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  SelectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063087-0000-0000-C000-000000000046}
// *********************************************************************//
  SelectionDisp = dispinterface
    ['{00063087-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): IDispatch; dispid 81;
  end;

// *********************************************************************//
// Interface: AddressLists
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063048-0000-0000-C000-000000000046}
// *********************************************************************//
  AddressLists = interface(IDispatch)
    ['{00063048-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): AddressList; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  AddressListsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063048-0000-0000-C000-000000000046}
// *********************************************************************//
  AddressListsDisp = dispinterface
    ['{00063048-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): AddressList; dispid 81;
  end;

// *********************************************************************//
// Interface: AddressList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063049-0000-0000-C000-000000000046}
// *********************************************************************//
  AddressList = interface(IDispatch)
    ['{00063049-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_AddressEntries {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AddressEntries; safecall;
    function  Get_ID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Index {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_IsReadOnly {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property AddressEntries: AddressEntries read Get_AddressEntries;
    property ID: WideString read Get_ID;
    property Index: Integer read Get_Index;
    property IsReadOnly: WordBool read Get_IsReadOnly;
    property Name: WideString read Get_Name;
  end;

// *********************************************************************//
// DispIntf:  AddressListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063049-0000-0000-C000-000000000046}
// *********************************************************************//
  AddressListDisp = dispinterface
    ['{00063049-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property AddressEntries {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AddressEntries readonly dispid 256;
    property ID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property Index {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 91;
    property IsReadOnly {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61463;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 12289;
  end;

// *********************************************************************//
// Interface: SyncObjects
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063086-0000-0000-C000-000000000046}
// *********************************************************************//
  SyncObjects = interface(IDispatch)
    ['{00063086-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): SyncObject; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  SyncObjectsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063086-0000-0000-C000-000000000046}
// *********************************************************************//
  SyncObjectsDisp = dispinterface
    ['{00063086-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): SyncObject; dispid 81;
  end;

// *********************************************************************//
// Interface: _SyncObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063083-0000-0000-C000-000000000046}
// *********************************************************************//
  _SyncObject = interface(IDispatch)
    ['{00063083-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Start {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Stop {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Name: WideString read Get_Name;
  end;

// *********************************************************************//
// DispIntf:  _SyncObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063083-0000-0000-C000-000000000046}
// *********************************************************************//
  _SyncObjectDisp = dispinterface
    ['{00063083-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 8448;
    procedure Start {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 8449;
    procedure Stop {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 8450;
  end;

// *********************************************************************//
// DispIntf:  SyncObjectEvents
// Flags:     (4096) Dispatchable
// GUID:      {00063085-0000-0000-C000-000000000046}
// *********************************************************************//
  SyncObjectEvents = dispinterface
    ['{00063085-0000-0000-C000-000000000046}']
    procedure SyncStart {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61441;
    procedure Progress {Flags(2), (4/4) CC:0, INV:1, DBG:4}({VT_29:0}State: OlSyncState; 
                                                            {VT_8:0}const Description: WideString; 
                                                            {VT_3:0}Value: Integer; 
                                                            {VT_3:0}Max: Integer); dispid 61442;
    procedure OnError {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_3:0}Code: Integer; 
                                                           {VT_8:0}const Description: WideString); dispid 61443;
    procedure SyncEnd {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61444;
  end;

// *********************************************************************//
// Interface: _Inspector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063005-0000-0000-C000-000000000046}
// *********************************************************************//
  _Inspector = interface(IDispatch)
    ['{00063005-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_CommandBars {Flags(1), (1/0) CC:0, INV:2, DBG:6}: CommandBars; safecall;
    function  Get_CurrentItem {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_EditorType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlEditorType; safecall;
    function  Get_ModifiedFormPages {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    procedure HideFormPage {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const PageName: WideString); safecall;
    function  IsWordMail {Flags(1), (1/0) CC:0, INV:1, DBG:6}: WordBool; safecall;
    procedure SetCurrentFormPage {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const PageName: WideString); safecall;
    procedure ShowFormPage {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const PageName: WideString); safecall;
    function  Get_HTMLEditor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_WordEditor {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Caption {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Height: Integer); safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Left: Integer); safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Top: Integer); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Width: Integer); safecall;
    function  Get_WindowState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlWindowState; safecall;
    procedure Set_WindowState {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}WindowState: OlWindowState); safecall;
    procedure Activate {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property CommandBars: CommandBars read Get_CommandBars;
    property CurrentItem: IDispatch read Get_CurrentItem;
    property EditorType: OlEditorType read Get_EditorType;
    property ModifiedFormPages: IDispatch read Get_ModifiedFormPages;
    property HTMLEditor: IDispatch read Get_HTMLEditor;
    property WordEditor: IDispatch read Get_WordEditor;
    property Caption: WideString read Get_Caption;
    property Height: Integer read Get_Height write Set_Height;
    property Left: Integer read Get_Left write Set_Left;
    property Top: Integer read Get_Top write Set_Top;
    property Width: Integer read Get_Width write Set_Width;
    property WindowState: OlWindowState read Get_WindowState write Set_WindowState;
  end;

// *********************************************************************//
// DispIntf:  _InspectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063005-0000-0000-C000-000000000046}
// *********************************************************************//
  _InspectorDisp = dispinterface
    ['{00063005-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property CommandBars {Flags(2), (1/0) CC:0, INV:2, DBG:6}: CommandBars readonly dispid 8448;
    property CurrentItem {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 8450;
    property EditorType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlEditorType readonly dispid 8464;
    property ModifiedFormPages {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 8454;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 8451;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 8452;
    procedure HideFormPage {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const PageName: WideString); dispid 8456;
    function  IsWordMail {Flags(2), (1/0) CC:0, INV:1, DBG:4}: WordBool; dispid 8453;
    procedure SetCurrentFormPage {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const PageName: WideString); dispid 8460;
    procedure ShowFormPage {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const PageName: WideString); dispid 8457;
    property HTMLEditor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 8462;
    property WordEditor {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 8463;
    property Caption {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 8465;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 8468;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 8469;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 8470;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 8471;
    property WindowState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlWindowState dispid 8466;
    procedure Activate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 8467;
  end;

// *********************************************************************//
// Interface: _Explorers
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006300A-0000-0000-C000-000000000046}
// *********************************************************************//
  _Explorers = interface(IDispatch)
    ['{0006300A-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): Explorer; safecall;
    function  Add {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_12:0}Folder: OleVariant; 
                                                       {VT_29:0}DisplayMode: OlFolderDisplayMode): _Explorer; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _ExplorersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006300A-0000-0000-C000-000000000046}
// *********************************************************************//
  _ExplorersDisp = dispinterface
    ['{0006300A-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): Explorer; dispid 81;
    function  Add {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_12:0}Folder: OleVariant; 
                                                       {VT_29:0}DisplayMode: OlFolderDisplayMode): _Explorer; dispid 95;
  end;

// *********************************************************************//
// DispIntf:  ExplorerEvents
// Flags:     (4096) Dispatchable
// GUID:      {0006304F-0000-0000-C000-000000000046}
// *********************************************************************//
  ExplorerEvents = dispinterface
    ['{0006304F-0000-0000-C000-000000000046}']
    procedure Activate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61441;
    procedure FolderSwitch {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61442;
    procedure BeforeFolderSwitch {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_9:0}const NewFolder: IDispatch; 
                                                                      {VT_11:1}var Cancel: WordBool); dispid 61443;
    procedure ViewSwitch {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61444;
    procedure BeforeViewSwitch {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_12:0}NewView: OleVariant; 
                                                                    {VT_11:1}var Cancel: WordBool); dispid 61445;
    procedure Deactivate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61446;
    procedure SelectionChange {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61447;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61448;
  end;

// *********************************************************************//
// Interface: _Inspectors
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063008-0000-0000-C000-000000000046}
// *********************************************************************//
  _Inspectors = interface(IDispatch)
    ['{00063008-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): Inspector; safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_9:0}const Item: IDispatch): _Inspector; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _InspectorsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063008-0000-0000-C000-000000000046}
// *********************************************************************//
  _InspectorsDisp = dispinterface
    ['{00063008-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): Inspector; dispid 81;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_9:0}const Item: IDispatch): _Inspector; dispid 95;
  end;

// *********************************************************************//
// DispIntf:  InspectorEvents
// Flags:     (4096) Dispatchable
// GUID:      {0006307D-0000-0000-C000-000000000046}
// *********************************************************************//
  InspectorEvents = dispinterface
    ['{0006307D-0000-0000-C000-000000000046}']
    procedure Activate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61441;
    procedure Deactivate {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61446;
    procedure Close {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61448;
  end;

// *********************************************************************//
// Interface: Actions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006303E-0000-0000-C000-000000000046}
// *********************************************************************//
  Actions = interface(IDispatch)
    ['{0006303E-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): Action; safecall;
    function  Add {Flags(1), (1/0) CC:0, INV:1, DBG:6}: Action; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Index: Integer); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ActionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006303E-0000-0000-C000-000000000046}
// *********************************************************************//
  ActionsDisp = dispinterface
    ['{0006303E-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): Action; dispid 81;
    function  Add {Flags(2), (1/0) CC:0, INV:1, DBG:4}: Action; dispid 100;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Index: Integer); dispid 82;
  end;

// *********************************************************************//
// DispIntf:  ApplicationEvents
// Flags:     (4096) Dispatchable
// GUID:      {0006304E-0000-0000-C000-000000000046}
// *********************************************************************//
  ApplicationEvents = dispinterface
    ['{0006304E-0000-0000-C000-000000000046}']
    procedure ItemSend {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_9:0}const Item: IDispatch; 
                                                            {VT_11:1}var Cancel: WordBool); dispid 61442;
    procedure NewMail {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61443;
    procedure Reminder {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Item: IDispatch); dispid 61444;
    procedure OptionsPagesAdd {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Pages: PropertyPages); dispid 61445;
    procedure Startup {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61446;
    procedure Quit {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61447;
  end;

// *********************************************************************//
// Interface: PropertyPages
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063080-0000-0000-C000-000000000046}
// *********************************************************************//
  PropertyPages = interface(IDispatch)
    ['{00063080-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): IDispatch; safecall;
    procedure Add {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_12:0}Page: OleVariant; 
                                                       {VT_8:0}const Title: WideString); safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  PropertyPagesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063080-0000-0000-C000-000000000046}
// *********************************************************************//
  PropertyPagesDisp = dispinterface
    ['{00063080-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): IDispatch; dispid 81;
    procedure Add {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_12:0}Page: OleVariant; 
                                                       {VT_8:0}const Title: WideString); dispid 95;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant); dispid 84;
  end;

// *********************************************************************//
// Interface: _AppointmentItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063033-0000-0000-C000-000000000046}
// *********************************************************************//
  _AppointmentItem = interface(IDispatch)
    ['{00063033-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_AllDayEvent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_AllDayEvent {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}AllDayEvent: WordBool); safecall;
    function  Get_BusyStatus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlBusyStatus; safecall;
    procedure Set_BusyStatus {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}BusyStatus: OlBusyStatus); safecall;
    function  Get_Duration {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Duration {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Duration: Integer); safecall;
    function  Get_End_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_End_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}End_: TDateTime); safecall;
    function  Get_IsOnlineMeeting {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_IsOnlineMeeting {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}IsOnlineMeeting: WordBool); safecall;
    function  Get_IsRecurring {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Location {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Location {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Location: WideString); safecall;
    function  Get_MeetingStatus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlMeetingStatus; safecall;
    procedure Set_MeetingStatus {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}MeetingStatus: OlMeetingStatus); safecall;
    function  Get_NetMeetingAutoStart {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NetMeetingAutoStart {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NetMeetingAutoStart: WordBool); safecall;
    function  Get_NetMeetingOrganizerAlias {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NetMeetingOrganizerAlias {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NetMeetingOrganizerAlias: WideString); safecall;
    function  Get_NetMeetingServer {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NetMeetingServer {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NetMeetingServer: WideString); safecall;
    function  Get_NetMeetingType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlNetMeetingType; safecall;
    procedure Set_NetMeetingType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}NetMeetingType: OlNetMeetingType); safecall;
    function  Get_OptionalAttendees {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OptionalAttendees {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OptionalAttendees: WideString); safecall;
    function  Get_Organizer {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Recipients {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Recipients; safecall;
    function  Get_RecurrenceState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlRecurrenceState; safecall;
    function  Get_ReminderMinutesBeforeStart {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_ReminderMinutesBeforeStart {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}ReminderMinutesBeforeStart: Integer); safecall;
    function  Get_ReminderOverrideDefault {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReminderOverrideDefault {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ReminderOverrideDefault: WordBool); safecall;
    function  Get_ReminderPlaySound {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReminderPlaySound {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ReminderPlaySound: WordBool); safecall;
    function  Get_ReminderSet {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReminderSet {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ReminderSet: WordBool); safecall;
    function  Get_ReminderSoundFile {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ReminderSoundFile {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ReminderSoundFile: WideString); safecall;
    function  Get_ReplyTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_ReplyTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}ReplyTime: TDateTime); safecall;
    function  Get_RequiredAttendees {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_RequiredAttendees {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const RequiredAttendees: WideString); safecall;
    function  Get_Resources {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Resources {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Resources: WideString); safecall;
    function  Get_ResponseRequested {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ResponseRequested {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ResponseRequested: WordBool); safecall;
    function  Get_ResponseStatus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlResponseStatus; safecall;
    function  Get_Start {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_Start {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}Start: TDateTime); safecall;
    procedure ClearRecurrencePattern {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  ForwardAsVcal {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    function  GetRecurrencePattern {Flags(1), (1/0) CC:0, INV:1, DBG:6}: RecurrencePattern; safecall;
    function  Respond {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_29:0}Response: OlMeetingResponse; 
                                                           {VT_12:0}fNoUI: OleVariant; 
                                                           {VT_12:0}fAdditionalTextDialog: OleVariant): MeetingItem; safecall;
    procedure Send {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_NetMeetingDocPathName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NetMeetingDocPathName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NetMeetingDocPathName: WideString); safecall;
    function  Get_NetShowURL {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NetShowURL {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NetShowURL: WideString); safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    function  Get_ConferenceServerAllowExternal {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ConferenceServerAllowExternal {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ConferenceServerAllowExternal: WordBool); safecall;
    function  Get_ConferenceServerPassword {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ConferenceServerPassword {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ConferenceServerPassword: WideString); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property AllDayEvent: WordBool read Get_AllDayEvent write Set_AllDayEvent;
    property BusyStatus: OlBusyStatus read Get_BusyStatus write Set_BusyStatus;
    property Duration: Integer read Get_Duration write Set_Duration;
    property End_: TDateTime read Get_End_ write Set_End_;
    property IsOnlineMeeting: WordBool read Get_IsOnlineMeeting write Set_IsOnlineMeeting;
    property IsRecurring: WordBool read Get_IsRecurring;
    property Location: WideString read Get_Location write Set_Location;
    property MeetingStatus: OlMeetingStatus read Get_MeetingStatus write Set_MeetingStatus;
    property NetMeetingAutoStart: WordBool read Get_NetMeetingAutoStart write Set_NetMeetingAutoStart;
    property NetMeetingOrganizerAlias: WideString read Get_NetMeetingOrganizerAlias write Set_NetMeetingOrganizerAlias;
    property NetMeetingServer: WideString read Get_NetMeetingServer write Set_NetMeetingServer;
    property NetMeetingType: OlNetMeetingType read Get_NetMeetingType write Set_NetMeetingType;
    property OptionalAttendees: WideString read Get_OptionalAttendees write Set_OptionalAttendees;
    property Organizer: WideString read Get_Organizer;
    property Recipients: Recipients read Get_Recipients;
    property RecurrenceState: OlRecurrenceState read Get_RecurrenceState;
    property ReminderMinutesBeforeStart: Integer read Get_ReminderMinutesBeforeStart write Set_ReminderMinutesBeforeStart;
    property ReminderOverrideDefault: WordBool read Get_ReminderOverrideDefault write Set_ReminderOverrideDefault;
    property ReminderPlaySound: WordBool read Get_ReminderPlaySound write Set_ReminderPlaySound;
    property ReminderSet: WordBool read Get_ReminderSet write Set_ReminderSet;
    property ReminderSoundFile: WideString read Get_ReminderSoundFile write Set_ReminderSoundFile;
    property ReplyTime: TDateTime read Get_ReplyTime write Set_ReplyTime;
    property RequiredAttendees: WideString read Get_RequiredAttendees write Set_RequiredAttendees;
    property Resources: WideString read Get_Resources write Set_Resources;
    property ResponseRequested: WordBool read Get_ResponseRequested write Set_ResponseRequested;
    property ResponseStatus: OlResponseStatus read Get_ResponseStatus;
    property Start: TDateTime read Get_Start write Set_Start;
    property NetMeetingDocPathName: WideString read Get_NetMeetingDocPathName write Set_NetMeetingDocPathName;
    property NetShowURL: WideString read Get_NetShowURL write Set_NetShowURL;
    property Links: Links read Get_Links;
    property ConferenceServerAllowExternal: WordBool read Get_ConferenceServerAllowExternal write Set_ConferenceServerAllowExternal;
    property ConferenceServerPassword: WideString read Get_ConferenceServerPassword write Set_ConferenceServerPassword;
  end;

// *********************************************************************//
// DispIntf:  _AppointmentItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063033-0000-0000-C000-000000000046}
// *********************************************************************//
  _AppointmentItemDisp = dispinterface
    ['{00063033-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property AllDayEvent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 33301;
    property BusyStatus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlBusyStatus dispid 33285;
    property Duration {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 33299;
    property End_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 33294;
    property IsOnlineMeeting {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 33344;
    property IsRecurring {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 33315;
    property Location {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 33288;
    property MeetingStatus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlMeetingStatus dispid 33303;
    property NetMeetingAutoStart {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 33348;
    property NetMeetingOrganizerAlias {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 33347;
    property NetMeetingServer {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 33346;
    property NetMeetingType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlNetMeetingType dispid 33345;
    property OptionalAttendees {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 3587;
    property Organizer {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 66;
    property Recipients {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Recipients readonly dispid 63508;
    property RecurrenceState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlRecurrenceState readonly dispid 62789;
    property ReminderMinutesBeforeStart {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 34049;
    property ReminderOverrideDefault {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34076;
    property ReminderPlaySound {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34078;
    property ReminderSet {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34051;
    property ReminderSoundFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34079;
    property ReplyTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 33312;
    property RequiredAttendees {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 3588;
    property Resources {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 3586;
    property ResponseRequested {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 99;
    property ResponseStatus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlResponseStatus readonly dispid 33304;
    property Start {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 33293;
    procedure ClearRecurrencePattern {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61605;
    function  ForwardAsVcal {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 62791;
    function  GetRecurrencePattern {Flags(2), (1/0) CC:0, INV:1, DBG:4}: RecurrencePattern; dispid 61604;
    function  Respond {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_29:0}Response: OlMeetingResponse; 
                                                           {VT_12:0}fNoUI: OleVariant; 
                                                           {VT_12:0}fAdditionalTextDialog: OleVariant): MeetingItem; dispid 62722;
    procedure Send {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61557;
    property NetMeetingDocPathName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 33351;
    property NetShowURL {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 33352;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
    property ConferenceServerAllowExternal {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 33350;
    property ConferenceServerPassword {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 33353;
  end;

// *********************************************************************//
// Interface: Attachments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006303C-0000-0000-C000-000000000046}
// *********************************************************************//
  Attachments = interface(IDispatch)
    ['{0006303C-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): Attachment; safecall;
    function  Add {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_12:0}Source: OleVariant; 
                                                       {VT_12:0}Type_: OleVariant; 
                                                       {VT_12:0}Position: OleVariant; 
                                                       {VT_12:0}DisplayName: OleVariant): Attachment; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Index: Integer); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  AttachmentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006303C-0000-0000-C000-000000000046}
// *********************************************************************//
  AttachmentsDisp = dispinterface
    ['{0006303C-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): Attachment; dispid 81;
    function  Add {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_12:0}Source: OleVariant; 
                                                       {VT_12:0}Type_: OleVariant; 
                                                       {VT_12:0}Position: OleVariant; 
                                                       {VT_12:0}DisplayName: OleVariant): Attachment; dispid 101;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Index: Integer); dispid 84;
  end;

// *********************************************************************//
// Interface: Attachment
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063007-0000-0000-C000-000000000046}
// *********************************************************************//
  Attachment = interface(IDispatch)
    ['{00063007-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_DisplayName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_DisplayName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const DisplayName: WideString); safecall;
    function  Get_FileName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Index {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_PathName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Position {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Position {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Position: Integer); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlAttachmentType; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAsFile {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property FileName: WideString read Get_FileName;
    property Index: Integer read Get_Index;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property PathName: WideString read Get_PathName;
    property Position: Integer read Get_Position write Set_Position;
    property Type_: OlAttachmentType read Get_Type_;
  end;

// *********************************************************************//
// DispIntf:  AttachmentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063007-0000-0000-C000-000000000046}
// *********************************************************************//
  AttachmentDisp = dispinterface
    ['{00063007-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 113;
    property DisplayName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12289;
    property FileName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 14084;
    property Index {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 91;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property PathName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 14088;
    property Position {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 114;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlAttachmentType readonly dispid 14085;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 105;
    procedure SaveAsFile {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString); dispid 104;
  end;

// *********************************************************************//
// Interface: FormDescription
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063046-0000-0000-C000-000000000046}
// *********************************************************************//
  FormDescription = interface(IDispatch)
    ['{00063046-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Category {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Category {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Category: WideString); safecall;
    function  Get_CategorySub {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_CategorySub {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const CategorySub: WideString); safecall;
    function  Get_Comment {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Comment {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Comment: WideString); safecall;
    function  Get_ContactName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ContactName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ContactName: WideString); safecall;
    function  Get_DisplayName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_DisplayName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const DisplayName: WideString); safecall;
    function  Get_Hidden {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Hidden {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}Hidden: WordBool); safecall;
    function  Get_Icon {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Icon {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Icon: WideString); safecall;
    function  Get_Locked {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Locked {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}Locked: WordBool); safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_MiniIcon {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MiniIcon {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MiniIcon: WideString); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_Number {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Number {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Number: WideString); safecall;
    function  Get_OneOff {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_OneOff {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}OneOff: WordBool); safecall;
    function  Get_Password {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Password {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Password: WideString); safecall;
    function  Get_ScriptText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Template {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Template {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Template: WideString); safecall;
    function  Get_UseWordMail {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UseWordMail {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UseWordMail: WordBool); safecall;
    function  Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Version {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Version: WideString); safecall;
    procedure PublishForm {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_29:0}Registry: OlFormRegistry; 
                                                               {VT_12:0}Folder: OleVariant); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Category: WideString read Get_Category write Set_Category;
    property CategorySub: WideString read Get_CategorySub write Set_CategorySub;
    property Comment: WideString read Get_Comment write Set_Comment;
    property ContactName: WideString read Get_ContactName write Set_ContactName;
    property DisplayName: WideString read Get_DisplayName write Set_DisplayName;
    property Hidden: WordBool read Get_Hidden write Set_Hidden;
    property Icon: WideString read Get_Icon write Set_Icon;
    property Locked: WordBool read Get_Locked write Set_Locked;
    property MessageClass: WideString read Get_MessageClass;
    property MiniIcon: WideString read Get_MiniIcon write Set_MiniIcon;
    property Name: WideString read Get_Name write Set_Name;
    property Number: WideString read Get_Number write Set_Number;
    property OneOff: WordBool read Get_OneOff write Set_OneOff;
    property Password: WideString read Get_Password write Set_Password;
    property ScriptText: WideString read Get_ScriptText;
    property Template: WideString read Get_Template write Set_Template;
    property UseWordMail: WordBool read Get_UseWordMail write Set_UseWordMail;
    property Version: WideString read Get_Version write Set_Version;
  end;

// *********************************************************************//
// DispIntf:  FormDescriptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063046-0000-0000-C000-000000000046}
// *********************************************************************//
  FormDescriptionDisp = dispinterface
    ['{00063046-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Category {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 13060;
    property CategorySub {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 13061;
    property Comment {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12292;
    property ContactName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 13059;
    property DisplayName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12289;
    property Hidden {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 13063;
    property Icon {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 4093;
    property Locked {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 102;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 26;
    property MiniIcon {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 4092;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 61469;
    property Number {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 104;
    property OneOff {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 101;
    property Password {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 103;
    property ScriptText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 109;
    property Template {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 106;
    property UseWordMail {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 105;
    property Version {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 13057;
    procedure PublishForm {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:0}Registry: OlFormRegistry; 
                                                               {VT_12:0}Folder: OleVariant); dispid 107;
  end;

// *********************************************************************//
// Interface: UserProperties
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006303D-0000-0000-C000-000000000046}
// *********************************************************************//
  UserProperties = interface(IDispatch)
    ['{0006303D-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): UserProperty; safecall;
    function  Add {Flags(1), (5/4) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                       {VT_29:0}Type_: OlUserPropertyType; 
                                                       {VT_12:0}AddToFolderFields: OleVariant; 
                                                       {VT_12:0}DisplayFormat: OleVariant): UserProperty; safecall;
    function  Find {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                        {VT_12:0}Custom: OleVariant): UserProperty; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Index: Integer); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  UserPropertiesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006303D-0000-0000-C000-000000000046}
// *********************************************************************//
  UserPropertiesDisp = dispinterface
    ['{0006303D-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): UserProperty; dispid 81;
    function  Add {Flags(2), (5/4) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                       {VT_29:0}Type_: OlUserPropertyType; 
                                                       {VT_12:0}AddToFolderFields: OleVariant; 
                                                       {VT_12:0}DisplayFormat: OleVariant): UserProperty; dispid 102;
    function  Find {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                        {VT_12:0}Custom: OleVariant): UserProperty; dispid 103;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Index: Integer); dispid 82;
  end;

// *********************************************************************//
// Interface: UserProperty
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063042-0000-0000-C000-000000000046}
// *********************************************************************//
  UserProperty = interface(IDispatch)
    ['{00063042-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Formula {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Formula {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Formula: WideString); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlUserPropertyType; safecall;
    function  Get_ValidationFormula {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ValidationFormula {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ValidationFormula: WideString); safecall;
    function  Get_ValidationText {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ValidationText {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ValidationText: WideString); safecall;
    function  Get_Value {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_Value {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}Value: OleVariant); safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Formula: WideString read Get_Formula write Set_Formula;
    property Name: WideString read Get_Name;
    property Type_: OlUserPropertyType read Get_Type_;
    property ValidationFormula: WideString read Get_ValidationFormula write Set_ValidationFormula;
    property ValidationText: WideString read Get_ValidationText write Set_ValidationText;
    property Value: OleVariant read Get_Value write Set_Value;
  end;

// *********************************************************************//
// DispIntf:  UserPropertyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063042-0000-0000-C000-000000000046}
// *********************************************************************//
  UserPropertyDisp = dispinterface
    ['{00063042-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Formula {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 103;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlUserPropertyType readonly dispid 109;
    property ValidationFormula {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 104;
    property ValidationText {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 105;
    property Value {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant dispid 0;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 108;
  end;

// *********************************************************************//
// Interface: Recipients
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006303B-0000-0000-C000-000000000046}
// *********************************************************************//
  Recipients = interface(IDispatch)
    ['{0006303B-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): Recipient; safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString): Recipient; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Index: Integer); safecall;
    function  ResolveAll {Flags(1), (1/0) CC:0, INV:1, DBG:6}: WordBool; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  RecipientsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006303B-0000-0000-C000-000000000046}
// *********************************************************************//
  RecipientsDisp = dispinterface
    ['{0006303B-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): Recipient; dispid 81;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString): Recipient; dispid 111;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Index: Integer); dispid 84;
    function  ResolveAll {Flags(2), (1/0) CC:0, INV:1, DBG:4}: WordBool; dispid 126;
  end;

// *********************************************************************//
// Interface: _MailItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063034-0000-0000-C000-000000000046}
// *********************************************************************//
  _MailItem = interface(IDispatch)
    ['{00063034-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_AlternateRecipientAllowed {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_AlternateRecipientAllowed {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}AlternateRecipientAllowed: WordBool); safecall;
    function  Get_AutoForwarded {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_AutoForwarded {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}AutoForwarded: WordBool); safecall;
    function  Get_BCC {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BCC {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BCC: WideString); safecall;
    function  Get_CC {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_CC {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const CC: WideString); safecall;
    function  Get_DeferredDeliveryTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_DeferredDeliveryTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}DeferredDeliveryTime: TDateTime); safecall;
    function  Get_DeleteAfterSubmit {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_DeleteAfterSubmit {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}DeleteAfterSubmit: WordBool); safecall;
    function  Get_ExpiryTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_ExpiryTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}ExpiryTime: TDateTime); safecall;
    function  Get_FlagDueBy {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_FlagDueBy {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}FlagDueBy: TDateTime); safecall;
    function  Get_FlagRequest {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_FlagRequest {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const FlagRequest: WideString); safecall;
    function  Get_FlagStatus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlFlagStatus; safecall;
    procedure Set_FlagStatus {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FlagStatus: OlFlagStatus); safecall;
    function  Get_HTMLBody {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HTMLBody {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const HTMLBody: WideString); safecall;
    function  Get_OriginatorDeliveryReportRequested {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_OriginatorDeliveryReportRequested {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}OriginatorDeliveryReportRequested: WordBool); safecall;
    function  Get_ReadReceiptRequested {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReadReceiptRequested {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ReadReceiptRequested: WordBool); safecall;
    function  Get_ReceivedByEntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ReceivedByName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ReceivedOnBehalfOfEntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ReceivedOnBehalfOfName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ReceivedTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_RecipientReassignmentProhibited {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_RecipientReassignmentProhibited {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}RecipientReassignmentProhibited: WordBool); safecall;
    function  Get_Recipients {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Recipients; safecall;
    function  Get_ReminderOverrideDefault {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReminderOverrideDefault {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ReminderOverrideDefault: WordBool); safecall;
    function  Get_ReminderPlaySound {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReminderPlaySound {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ReminderPlaySound: WordBool); safecall;
    function  Get_ReminderSet {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReminderSet {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ReminderSet: WordBool); safecall;
    function  Get_ReminderSoundFile {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ReminderSoundFile {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ReminderSoundFile: WideString); safecall;
    function  Get_ReminderTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_ReminderTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}ReminderTime: TDateTime); safecall;
    function  Get_RemoteStatus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlRemoteStatus; safecall;
    procedure Set_RemoteStatus {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}RemoteStatus: OlRemoteStatus); safecall;
    function  Get_ReplyRecipientNames {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ReplyRecipients {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Recipients; safecall;
    function  Get_SaveSentMessageFolder {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MAPIFolder; safecall;
    procedure Set_SaveSentMessageFolder {Flags(1), (1/1) CC:0, INV:8, DBG:6}({VT_29:1}const SaveSentMessageFolder: MAPIFolder); safecall;
    function  Get_SenderName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Sent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_SentOn {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_SentOnBehalfOfName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_SentOnBehalfOfName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const SentOnBehalfOfName: WideString); safecall;
    function  Get_Submitted {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_To_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_To_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const To_: WideString); safecall;
    function  Get_VotingOptions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_VotingOptions {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const VotingOptions: WideString); safecall;
    function  Get_VotingResponse {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_VotingResponse {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const VotingResponse: WideString); safecall;
    procedure ClearConversationIndex {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Forward {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    function  Reply {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    function  ReplyAll {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    procedure Send {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property AlternateRecipientAllowed: WordBool read Get_AlternateRecipientAllowed write Set_AlternateRecipientAllowed;
    property AutoForwarded: WordBool read Get_AutoForwarded write Set_AutoForwarded;
    property BCC: WideString read Get_BCC write Set_BCC;
    property CC: WideString read Get_CC write Set_CC;
    property DeferredDeliveryTime: TDateTime read Get_DeferredDeliveryTime write Set_DeferredDeliveryTime;
    property DeleteAfterSubmit: WordBool read Get_DeleteAfterSubmit write Set_DeleteAfterSubmit;
    property ExpiryTime: TDateTime read Get_ExpiryTime write Set_ExpiryTime;
    property FlagDueBy: TDateTime read Get_FlagDueBy write Set_FlagDueBy;
    property FlagRequest: WideString read Get_FlagRequest write Set_FlagRequest;
    property FlagStatus: OlFlagStatus read Get_FlagStatus write Set_FlagStatus;
    property HTMLBody: WideString read Get_HTMLBody write Set_HTMLBody;
    property OriginatorDeliveryReportRequested: WordBool read Get_OriginatorDeliveryReportRequested write Set_OriginatorDeliveryReportRequested;
    property ReadReceiptRequested: WordBool read Get_ReadReceiptRequested write Set_ReadReceiptRequested;
    property ReceivedByEntryID: WideString read Get_ReceivedByEntryID;
    property ReceivedByName: WideString read Get_ReceivedByName;
    property ReceivedOnBehalfOfEntryID: WideString read Get_ReceivedOnBehalfOfEntryID;
    property ReceivedOnBehalfOfName: WideString read Get_ReceivedOnBehalfOfName;
    property ReceivedTime: TDateTime read Get_ReceivedTime;
    property RecipientReassignmentProhibited: WordBool read Get_RecipientReassignmentProhibited write Set_RecipientReassignmentProhibited;
    property Recipients: Recipients read Get_Recipients;
    property ReminderOverrideDefault: WordBool read Get_ReminderOverrideDefault write Set_ReminderOverrideDefault;
    property ReminderPlaySound: WordBool read Get_ReminderPlaySound write Set_ReminderPlaySound;
    property ReminderSet: WordBool read Get_ReminderSet write Set_ReminderSet;
    property ReminderSoundFile: WideString read Get_ReminderSoundFile write Set_ReminderSoundFile;
    property ReminderTime: TDateTime read Get_ReminderTime write Set_ReminderTime;
    property RemoteStatus: OlRemoteStatus read Get_RemoteStatus write Set_RemoteStatus;
    property ReplyRecipientNames: WideString read Get_ReplyRecipientNames;
    property ReplyRecipients: Recipients read Get_ReplyRecipients;
    property SaveSentMessageFolder: MAPIFolder read Get_SaveSentMessageFolder write Set_SaveSentMessageFolder;
    property SenderName: WideString read Get_SenderName;
    property Sent: WordBool read Get_Sent;
    property SentOn: TDateTime read Get_SentOn;
    property SentOnBehalfOfName: WideString read Get_SentOnBehalfOfName write Set_SentOnBehalfOfName;
    property Submitted: WordBool read Get_Submitted;
    property To_: WideString read Get_To_ write Set_To_;
    property VotingOptions: WideString read Get_VotingOptions write Set_VotingOptions;
    property VotingResponse: WideString read Get_VotingResponse write Set_VotingResponse;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _MailItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063034-0000-0000-C000-000000000046}
// *********************************************************************//
  _MailItemDisp = dispinterface
    ['{00063034-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property AlternateRecipientAllowed {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 2;
    property AutoForwarded {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 5;
    property BCC {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 3586;
    property CC {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 3587;
    property DeferredDeliveryTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 15;
    property DeleteAfterSubmit {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 3585;
    property ExpiryTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 21;
    property FlagDueBy {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 48;
    property FlagRequest {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34096;
    property FlagStatus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlFlagStatus dispid 4240;
    property HTMLBody {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 62468;
    property OriginatorDeliveryReportRequested {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 35;
    property ReadReceiptRequested {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 41;
    property ReceivedByEntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 63;
    property ReceivedByName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 64;
    property ReceivedOnBehalfOfEntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 67;
    property ReceivedOnBehalfOfName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 68;
    property ReceivedTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 3590;
    property RecipientReassignmentProhibited {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 43;
    property Recipients {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Recipients readonly dispid 63508;
    property ReminderOverrideDefault {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34076;
    property ReminderPlaySound {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34078;
    property ReminderSet {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34051;
    property ReminderSoundFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34079;
    property ReminderTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 34050;
    property RemoteStatus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlRemoteStatus dispid 34065;
    property ReplyRecipientNames {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 80;
    property ReplyRecipients {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Recipients readonly dispid 61459;
    property SaveSentMessageFolder {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MAPIFolder dispid 62465;
    property SenderName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 3098;
    property Sent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 62466;
    property SentOn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 57;
    property SentOnBehalfOfName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 66;
    property Submitted {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 62467;
    property To_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 3588;
    property VotingOptions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 61467;
    property VotingResponse {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34084;
    procedure ClearConversationIndex {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 63522;
    function  Forward {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 63507;
    function  Reply {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 63504;
    function  ReplyAll {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 63505;
    procedure Send {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61557;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// DispIntf:  ItemEvents
// Flags:     (4096) Dispatchable
// GUID:      {0006303A-0000-0000-C000-000000000046}
// *********************************************************************//
  ItemEvents = dispinterface
    ['{0006303A-0000-0000-C000-000000000046}']
    procedure Open {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_11:1}var Cancel: WordBool); dispid 61443;
    procedure CustomAction {Flags(2), (3/3) CC:0, INV:1, DBG:4}({VT_9:0}const Action: IDispatch; 
                                                                {VT_9:0}const Response: IDispatch; 
                                                                {VT_11:1}var Cancel: WordBool); dispid 61446;
    procedure CustomPropertyChange {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 61448;
    procedure Forward {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_9:0}const Forward: IDispatch; 
                                                           {VT_11:1}var Cancel: WordBool); dispid 62568;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_11:1}var Cancel: WordBool); dispid 61444;
    procedure PropertyChange {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString); dispid 61449;
    procedure Read {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61441;
    procedure Reply {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_9:0}const Response: IDispatch; 
                                                         {VT_11:1}var Cancel: WordBool); dispid 62566;
    procedure ReplyAll {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_9:0}const Response: IDispatch; 
                                                            {VT_11:1}var Cancel: WordBool); dispid 62567;
    procedure Send {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_11:1}var Cancel: WordBool); dispid 61445;
    procedure Write {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_11:1}var Cancel: WordBool); dispid 61442;
    procedure BeforeCheckNames {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_11:1}var Cancel: WordBool); dispid 61450;
    procedure AttachmentAdd {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Attachment: Attachment); dispid 61451;
    procedure AttachmentRead {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Attachment: Attachment); dispid 61452;
    procedure BeforeAttachmentSave {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const Attachment: Attachment; 
                                                                        {VT_11:1}var Cancel: WordBool); dispid 61453;
  end;

// *********************************************************************//
// Interface: Links
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006308A-0000-0000-C000-000000000046}
// *********************************************************************//
  Links = interface(IDispatch)
    ['{0006308A-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): Link; safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_9:0}const Item: IDispatch): Link; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  LinksDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006308A-0000-0000-C000-000000000046}
// *********************************************************************//
  LinksDisp = dispinterface
    ['{0006308A-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): Link; dispid 81;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_9:0}const Item: IDispatch): Link; dispid 95;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant); dispid 84;
  end;

// *********************************************************************//
// Interface: Link
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063089-0000-0000-C000-000000000046}
// *********************************************************************//
  Link = interface(IDispatch)
    ['{00063089-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Item {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Name: WideString read Get_Name;
    property Type_: OlObjectClass read Get_Type_;
    property Item: IDispatch read Get_Item;
  end;

// *********************************************************************//
// DispIntf:  LinkDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063089-0000-0000-C000-000000000046}
// *********************************************************************//
  LinkDisp = dispinterface
    ['{00063089-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 109;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 12289;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 8449;
    property Item {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 8450;
  end;

// *********************************************************************//
// Interface: RecurrencePattern
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063044-0000-0000-C000-000000000046}
// *********************************************************************//
  RecurrencePattern = interface(IDispatch)
    ['{00063044-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_DayOfMonth {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_DayOfMonth {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}DayOfMonth: Integer); safecall;
    function  Get_DayOfWeekMask {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlDaysOfWeek; safecall;
    procedure Set_DayOfWeekMask {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}DayOfWeekMask: OlDaysOfWeek); safecall;
    function  Get_Duration {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Duration {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Duration: Integer); safecall;
    function  Get_EndTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_EndTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}EndTime: TDateTime); safecall;
    function  Get_Exceptions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Exceptions; safecall;
    function  Get_Instance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Instance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Instance: Integer); safecall;
    function  Get_Interval {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Interval {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Interval: Integer); safecall;
    function  Get_MonthOfYear {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_MonthOfYear {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}MonthOfYear: Integer); safecall;
    function  Get_NoEndDate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoEndDate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoEndDate: WordBool); safecall;
    function  Get_Occurrences {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Occurrences {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Occurrences: Integer); safecall;
    function  Get_PatternEndDate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_PatternEndDate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}PatternEndDate: TDateTime); safecall;
    function  Get_PatternStartDate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_PatternStartDate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}PatternStartDate: TDateTime); safecall;
    function  Get_RecurrenceType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlRecurrenceType; safecall;
    procedure Set_RecurrenceType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}RecurrenceType: OlRecurrenceType); safecall;
    function  Get_Regenerate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Regenerate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}Regenerate: WordBool); safecall;
    function  Get_StartTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_StartTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}StartTime: TDateTime); safecall;
    function  GetOccurrence {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_7:0}StartDate: TDateTime): AppointmentItem; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property DayOfMonth: Integer read Get_DayOfMonth write Set_DayOfMonth;
    property DayOfWeekMask: OlDaysOfWeek read Get_DayOfWeekMask write Set_DayOfWeekMask;
    property Duration: Integer read Get_Duration write Set_Duration;
    property EndTime: TDateTime read Get_EndTime write Set_EndTime;
    property Exceptions: Exceptions read Get_Exceptions;
    property Instance: Integer read Get_Instance write Set_Instance;
    property Interval: Integer read Get_Interval write Set_Interval;
    property MonthOfYear: Integer read Get_MonthOfYear write Set_MonthOfYear;
    property NoEndDate: WordBool read Get_NoEndDate write Set_NoEndDate;
    property Occurrences: Integer read Get_Occurrences write Set_Occurrences;
    property PatternEndDate: TDateTime read Get_PatternEndDate write Set_PatternEndDate;
    property PatternStartDate: TDateTime read Get_PatternStartDate write Set_PatternStartDate;
    property RecurrenceType: OlRecurrenceType read Get_RecurrenceType write Set_RecurrenceType;
    property Regenerate: WordBool read Get_Regenerate write Set_Regenerate;
    property StartTime: TDateTime read Get_StartTime write Set_StartTime;
  end;

// *********************************************************************//
// DispIntf:  RecurrencePatternDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063044-0000-0000-C000-000000000046}
// *********************************************************************//
  RecurrencePatternDisp = dispinterface
    ['{00063044-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property DayOfMonth {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 4096;
    property DayOfWeekMask {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlDaysOfWeek dispid 4097;
    property Duration {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 4109;
    property EndTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 4108;
    property Exceptions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Exceptions readonly dispid 4110;
    property Instance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 4099;
    property Interval {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 4100;
    property MonthOfYear {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 4102;
    property NoEndDate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 4107;
    property Occurrences {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 4101;
    property PatternEndDate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 4098;
    property PatternStartDate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 4104;
    property RecurrenceType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlRecurrenceType dispid 4103;
    property Regenerate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 4106;
    property StartTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 4105;
    function  GetOccurrence {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_7:0}StartDate: TDateTime): AppointmentItem; dispid 4111;
  end;

// *********************************************************************//
// Interface: Exceptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006304C-0000-0000-C000-000000000046}
// *********************************************************************//
  Exceptions = interface(IDispatch)
    ['{0006304C-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): Exception; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ExceptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006304C-0000-0000-C000-000000000046}
// *********************************************************************//
  ExceptionsDisp = dispinterface
    ['{0006304C-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): Exception; dispid 81;
  end;

// *********************************************************************//
// Interface: Exception
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006304D-0000-0000-C000-000000000046}
// *********************************************************************//
  Exception = interface(IDispatch)
    ['{0006304D-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_AppointmentItem {Flags(1), (1/0) CC:0, INV:2, DBG:6}: AppointmentItem; safecall;
    function  Get_Deleted {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_OriginalDate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property AppointmentItem: AppointmentItem read Get_AppointmentItem;
    property Deleted: WordBool read Get_Deleted;
    property OriginalDate: TDateTime read Get_OriginalDate;
  end;

// *********************************************************************//
// DispIntf:  ExceptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006304D-0000-0000-C000-000000000046}
// *********************************************************************//
  ExceptionDisp = dispinterface
    ['{0006304D-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property AppointmentItem {Flags(2), (1/0) CC:0, INV:2, DBG:6}: AppointmentItem readonly dispid 8193;
    property Deleted {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 8194;
    property OriginalDate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 8192;
  end;

// *********************************************************************//
// Interface: _MeetingItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063062-0000-0000-C000-000000000046}
// *********************************************************************//
  _MeetingItem = interface(IDispatch)
    ['{00063062-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_AutoForwarded {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_AutoForwarded {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}AutoForwarded: WordBool); safecall;
    function  Get_DeferredDeliveryTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_DeferredDeliveryTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}DeferredDeliveryTime: TDateTime); safecall;
    function  Get_DeleteAfterSubmit {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_DeleteAfterSubmit {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}DeleteAfterSubmit: WordBool); safecall;
    function  Get_ExpiryTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_ExpiryTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}ExpiryTime: TDateTime); safecall;
    function  Get_FlagDueBy {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_FlagDueBy {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}FlagDueBy: TDateTime); safecall;
    function  Get_FlagRequest {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_FlagRequest {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const FlagRequest: WideString); safecall;
    function  Get_FlagStatus {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlFlagStatus; safecall;
    procedure Set_FlagStatus {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}FlagStatus: OlFlagStatus); safecall;
    function  Get_OriginatorDeliveryReportRequested {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_OriginatorDeliveryReportRequested {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}OriginatorDeliveryReportRequested: WordBool); safecall;
    function  Get_ReceivedTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_ReceivedTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}ReceivedTime: TDateTime); safecall;
    function  Get_Recipients {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Recipients; safecall;
    function  Get_ReminderSet {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReminderSet {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ReminderSet: WordBool); safecall;
    function  Get_ReminderTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_ReminderTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}ReminderTime: TDateTime); safecall;
    function  Get_ReplyRecipients {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Recipients; safecall;
    function  Get_SaveSentMessageFolder {Flags(1), (1/0) CC:0, INV:2, DBG:6}: MAPIFolder; safecall;
    procedure Set_SaveSentMessageFolder {Flags(1), (1/1) CC:0, INV:8, DBG:6}({VT_29:1}const SaveSentMessageFolder: MAPIFolder); safecall;
    function  Get_SenderName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Sent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_SentOn {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_Submitted {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Forward {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MeetingItem; safecall;
    function  GetAssociatedAppointment {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_11:0}AddToCalendar: WordBool): AppointmentItem; safecall;
    function  Reply {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    function  ReplyAll {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    procedure Send {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property AutoForwarded: WordBool read Get_AutoForwarded write Set_AutoForwarded;
    property DeferredDeliveryTime: TDateTime read Get_DeferredDeliveryTime write Set_DeferredDeliveryTime;
    property DeleteAfterSubmit: WordBool read Get_DeleteAfterSubmit write Set_DeleteAfterSubmit;
    property ExpiryTime: TDateTime read Get_ExpiryTime write Set_ExpiryTime;
    property FlagDueBy: TDateTime read Get_FlagDueBy write Set_FlagDueBy;
    property FlagRequest: WideString read Get_FlagRequest write Set_FlagRequest;
    property FlagStatus: OlFlagStatus read Get_FlagStatus write Set_FlagStatus;
    property OriginatorDeliveryReportRequested: WordBool read Get_OriginatorDeliveryReportRequested write Set_OriginatorDeliveryReportRequested;
    property ReceivedTime: TDateTime read Get_ReceivedTime write Set_ReceivedTime;
    property Recipients: Recipients read Get_Recipients;
    property ReminderSet: WordBool read Get_ReminderSet write Set_ReminderSet;
    property ReminderTime: TDateTime read Get_ReminderTime write Set_ReminderTime;
    property ReplyRecipients: Recipients read Get_ReplyRecipients;
    property SaveSentMessageFolder: MAPIFolder read Get_SaveSentMessageFolder write Set_SaveSentMessageFolder;
    property SenderName: WideString read Get_SenderName;
    property Sent: WordBool read Get_Sent;
    property SentOn: TDateTime read Get_SentOn;
    property Submitted: WordBool read Get_Submitted;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _MeetingItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063062-0000-0000-C000-000000000046}
// *********************************************************************//
  _MeetingItemDisp = dispinterface
    ['{00063062-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property AutoForwarded {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 5;
    property DeferredDeliveryTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 15;
    property DeleteAfterSubmit {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 3585;
    property ExpiryTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 21;
    property FlagDueBy {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 48;
    property FlagRequest {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34096;
    property FlagStatus {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlFlagStatus dispid 4240;
    property OriginatorDeliveryReportRequested {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 35;
    property ReceivedTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 3590;
    property Recipients {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Recipients readonly dispid 63508;
    property ReminderSet {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34051;
    property ReminderTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 34050;
    property ReplyRecipients {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Recipients readonly dispid 61459;
    property SaveSentMessageFolder {Flags(2), (1/0) CC:0, INV:2, DBG:6}: MAPIFolder dispid 62465;
    property SenderName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 3098;
    property Sent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 62466;
    property SentOn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 57;
    property Submitted {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 62467;
    function  Forward {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MeetingItem; dispid 63507;
    function  GetAssociatedAppointment {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_11:0}AddToCalendar: WordBool): AppointmentItem; dispid 63328;
    function  Reply {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 63504;
    function  ReplyAll {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 63505;
    procedure Send {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61557;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// Interface: _ContactItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063021-0000-0000-C000-000000000046}
// *********************************************************************//
  _ContactItem = interface(IDispatch)
    ['{00063021-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_Account {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Account {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Account: WideString); safecall;
    function  Get_Anniversary {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_Anniversary {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}Anniversary: TDateTime); safecall;
    function  Get_AssistantName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_AssistantName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const AssistantName: WideString); safecall;
    function  Get_AssistantTelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_AssistantTelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const AssistantTelephoneNumber: WideString); safecall;
    function  Get_Birthday {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_Birthday {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}Birthday: TDateTime); safecall;
    function  Get_Business2TelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Business2TelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Business2TelephoneNumber: WideString); safecall;
    function  Get_BusinessAddress {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BusinessAddress {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BusinessAddress: WideString); safecall;
    function  Get_BusinessAddressCity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BusinessAddressCity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BusinessAddressCity: WideString); safecall;
    function  Get_BusinessAddressCountry {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BusinessAddressCountry {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BusinessAddressCountry: WideString); safecall;
    function  Get_BusinessAddressPostalCode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BusinessAddressPostalCode {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BusinessAddressPostalCode: WideString); safecall;
    function  Get_BusinessAddressPostOfficeBox {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BusinessAddressPostOfficeBox {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BusinessAddressPostOfficeBox: WideString); safecall;
    function  Get_BusinessAddressState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BusinessAddressState {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BusinessAddressState: WideString); safecall;
    function  Get_BusinessAddressStreet {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BusinessAddressStreet {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BusinessAddressStreet: WideString); safecall;
    function  Get_BusinessFaxNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BusinessFaxNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BusinessFaxNumber: WideString); safecall;
    function  Get_BusinessHomePage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BusinessHomePage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BusinessHomePage: WideString); safecall;
    function  Get_BusinessTelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BusinessTelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BusinessTelephoneNumber: WideString); safecall;
    function  Get_CallbackTelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_CallbackTelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const CallbackTelephoneNumber: WideString); safecall;
    function  Get_CarTelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_CarTelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const CarTelephoneNumber: WideString); safecall;
    function  Get_Children {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Children {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Children: WideString); safecall;
    function  Get_CompanyAndFullName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CompanyLastFirstNoSpace {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CompanyLastFirstSpaceOnly {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CompanyMainTelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_CompanyMainTelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const CompanyMainTelephoneNumber: WideString); safecall;
    function  Get_CompanyName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_CompanyName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const CompanyName: WideString); safecall;
    function  Get_ComputerNetworkName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ComputerNetworkName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ComputerNetworkName: WideString); safecall;
    function  Get_CustomerID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_CustomerID {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const CustomerID: WideString); safecall;
    function  Get_Department {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Department {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Department: WideString); safecall;
    function  Get_Email1Address {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Email1Address {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Email1Address: WideString); safecall;
    function  Get_Email1AddressType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Email1AddressType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Email1AddressType: WideString); safecall;
    function  Get_Email1DisplayName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Email1EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Email2Address {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Email2Address {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Email2Address: WideString); safecall;
    function  Get_Email2AddressType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Email2AddressType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Email2AddressType: WideString); safecall;
    function  Get_Email2DisplayName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Email2EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Email3Address {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Email3Address {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Email3Address: WideString); safecall;
    function  Get_Email3AddressType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Email3AddressType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Email3AddressType: WideString); safecall;
    function  Get_Email3DisplayName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Email3EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FileAs {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_FileAs {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const FileAs: WideString); safecall;
    function  Get_FirstName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_FirstName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const FirstName: WideString); safecall;
    function  Get_FTPSite {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_FTPSite {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const FTPSite: WideString); safecall;
    function  Get_FullName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_FullName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const FullName: WideString); safecall;
    function  Get_FullNameAndCompany {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Gender {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlGender; safecall;
    procedure Set_Gender {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Gender: OlGender); safecall;
    function  Get_GovernmentIDNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_GovernmentIDNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const GovernmentIDNumber: WideString); safecall;
    function  Get_Hobby {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Hobby {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Hobby: WideString); safecall;
    function  Get_Home2TelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Home2TelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Home2TelephoneNumber: WideString); safecall;
    function  Get_HomeAddress {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HomeAddress {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const HomeAddress: WideString); safecall;
    function  Get_HomeAddressCity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HomeAddressCity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const HomeAddressCity: WideString); safecall;
    function  Get_HomeAddressCountry {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HomeAddressCountry {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const HomeAddressCountry: WideString); safecall;
    function  Get_HomeAddressPostalCode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HomeAddressPostalCode {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const HomeAddressPostalCode: WideString); safecall;
    function  Get_HomeAddressPostOfficeBox {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HomeAddressPostOfficeBox {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const HomeAddressPostOfficeBox: WideString); safecall;
    function  Get_HomeAddressState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HomeAddressState {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const HomeAddressState: WideString); safecall;
    function  Get_HomeAddressStreet {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HomeAddressStreet {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const HomeAddressStreet: WideString); safecall;
    function  Get_HomeFaxNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HomeFaxNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const HomeFaxNumber: WideString); safecall;
    function  Get_HomeTelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HomeTelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const HomeTelephoneNumber: WideString); safecall;
    function  Get_Initials {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Initials {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Initials: WideString); safecall;
    function  Get_InternetFreeBusyAddress {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_InternetFreeBusyAddress {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const InternetFreeBusyAddress: WideString); safecall;
    function  Get_ISDNNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ISDNNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ISDNNumber: WideString); safecall;
    function  Get_JobTitle {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_JobTitle {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const JobTitle: WideString); safecall;
    function  Get_Journal {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Journal {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}Journal: WordBool); safecall;
    function  Get_Language {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Language {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Language: WideString); safecall;
    function  Get_LastFirstAndSuffix {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_LastFirstNoSpace {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_LastFirstNoSpaceCompany {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_LastFirstSpaceOnly {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_LastFirstSpaceOnlyCompany {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_LastName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_LastName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const LastName: WideString); safecall;
    function  Get_LastNameAndFirstName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_MailingAddress {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MailingAddress {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MailingAddress: WideString); safecall;
    function  Get_MailingAddressCity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MailingAddressCity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MailingAddressCity: WideString); safecall;
    function  Get_MailingAddressCountry {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MailingAddressCountry {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MailingAddressCountry: WideString); safecall;
    function  Get_MailingAddressPostalCode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MailingAddressPostalCode {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MailingAddressPostalCode: WideString); safecall;
    function  Get_MailingAddressPostOfficeBox {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MailingAddressPostOfficeBox {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MailingAddressPostOfficeBox: WideString); safecall;
    function  Get_MailingAddressState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MailingAddressState {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MailingAddressState: WideString); safecall;
    function  Get_MailingAddressStreet {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MailingAddressStreet {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MailingAddressStreet: WideString); safecall;
    function  Get_ManagerName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ManagerName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ManagerName: WideString); safecall;
    function  Get_MiddleName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MiddleName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MiddleName: WideString); safecall;
    function  Get_MobileTelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MobileTelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MobileTelephoneNumber: WideString); safecall;
    function  Get_NetMeetingAlias {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NetMeetingAlias {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NetMeetingAlias: WideString); safecall;
    function  Get_NetMeetingServer {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NetMeetingServer {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NetMeetingServer: WideString); safecall;
    function  Get_NickName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_NickName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const NickName: WideString); safecall;
    function  Get_OfficeLocation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OfficeLocation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OfficeLocation: WideString); safecall;
    function  Get_OrganizationalIDNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OrganizationalIDNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OrganizationalIDNumber: WideString); safecall;
    function  Get_OtherAddress {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OtherAddress {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OtherAddress: WideString); safecall;
    function  Get_OtherAddressCity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OtherAddressCity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OtherAddressCity: WideString); safecall;
    function  Get_OtherAddressCountry {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OtherAddressCountry {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OtherAddressCountry: WideString); safecall;
    function  Get_OtherAddressPostalCode {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OtherAddressPostalCode {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OtherAddressPostalCode: WideString); safecall;
    function  Get_OtherAddressPostOfficeBox {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OtherAddressPostOfficeBox {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OtherAddressPostOfficeBox: WideString); safecall;
    function  Get_OtherAddressState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OtherAddressState {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OtherAddressState: WideString); safecall;
    function  Get_OtherAddressStreet {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OtherAddressStreet {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OtherAddressStreet: WideString); safecall;
    function  Get_OtherFaxNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OtherFaxNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OtherFaxNumber: WideString); safecall;
    function  Get_OtherTelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_OtherTelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const OtherTelephoneNumber: WideString); safecall;
    function  Get_PagerNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_PagerNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const PagerNumber: WideString); safecall;
    function  Get_PersonalHomePage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_PersonalHomePage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const PersonalHomePage: WideString); safecall;
    function  Get_PrimaryTelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_PrimaryTelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const PrimaryTelephoneNumber: WideString); safecall;
    function  Get_Profession {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Profession {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Profession: WideString); safecall;
    function  Get_RadioTelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_RadioTelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const RadioTelephoneNumber: WideString); safecall;
    function  Get_ReferredBy {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ReferredBy {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ReferredBy: WideString); safecall;
    function  Get_SelectedMailingAddress {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlMailingAddress; safecall;
    procedure Set_SelectedMailingAddress {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}SelectedMailingAddress: OlMailingAddress); safecall;
    function  Get_Spouse {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Spouse {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Spouse: WideString); safecall;
    function  Get_Suffix {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Suffix {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Suffix: WideString); safecall;
    function  Get_TelexNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_TelexNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const TelexNumber: WideString); safecall;
    function  Get_Title {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Title {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Title: WideString); safecall;
    function  Get_TTYTDDTelephoneNumber {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_TTYTDDTelephoneNumber {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const TTYTDDTelephoneNumber: WideString); safecall;
    function  Get_User1 {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_User1 {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const User1: WideString); safecall;
    function  Get_User2 {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_User2 {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const User2: WideString); safecall;
    function  Get_User3 {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_User3 {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const User3: WideString); safecall;
    function  Get_User4 {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_User4 {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const User4: WideString); safecall;
    function  Get_UserCertificate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_UserCertificate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const UserCertificate: WideString); safecall;
    function  Get_WebPage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_WebPage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const WebPage: WideString); safecall;
    function  Get_YomiCompanyName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_YomiCompanyName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const YomiCompanyName: WideString); safecall;
    function  Get_YomiFirstName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_YomiFirstName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const YomiFirstName: WideString); safecall;
    function  Get_YomiLastName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_YomiLastName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const YomiLastName: WideString); safecall;
    function  ForwardAsVcard {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property Account: WideString read Get_Account write Set_Account;
    property Anniversary: TDateTime read Get_Anniversary write Set_Anniversary;
    property AssistantName: WideString read Get_AssistantName write Set_AssistantName;
    property AssistantTelephoneNumber: WideString read Get_AssistantTelephoneNumber write Set_AssistantTelephoneNumber;
    property Birthday: TDateTime read Get_Birthday write Set_Birthday;
    property Business2TelephoneNumber: WideString read Get_Business2TelephoneNumber write Set_Business2TelephoneNumber;
    property BusinessAddress: WideString read Get_BusinessAddress write Set_BusinessAddress;
    property BusinessAddressCity: WideString read Get_BusinessAddressCity write Set_BusinessAddressCity;
    property BusinessAddressCountry: WideString read Get_BusinessAddressCountry write Set_BusinessAddressCountry;
    property BusinessAddressPostalCode: WideString read Get_BusinessAddressPostalCode write Set_BusinessAddressPostalCode;
    property BusinessAddressPostOfficeBox: WideString read Get_BusinessAddressPostOfficeBox write Set_BusinessAddressPostOfficeBox;
    property BusinessAddressState: WideString read Get_BusinessAddressState write Set_BusinessAddressState;
    property BusinessAddressStreet: WideString read Get_BusinessAddressStreet write Set_BusinessAddressStreet;
    property BusinessFaxNumber: WideString read Get_BusinessFaxNumber write Set_BusinessFaxNumber;
    property BusinessHomePage: WideString read Get_BusinessHomePage write Set_BusinessHomePage;
    property BusinessTelephoneNumber: WideString read Get_BusinessTelephoneNumber write Set_BusinessTelephoneNumber;
    property CallbackTelephoneNumber: WideString read Get_CallbackTelephoneNumber write Set_CallbackTelephoneNumber;
    property CarTelephoneNumber: WideString read Get_CarTelephoneNumber write Set_CarTelephoneNumber;
    property Children: WideString read Get_Children write Set_Children;
    property CompanyAndFullName: WideString read Get_CompanyAndFullName;
    property CompanyLastFirstNoSpace: WideString read Get_CompanyLastFirstNoSpace;
    property CompanyLastFirstSpaceOnly: WideString read Get_CompanyLastFirstSpaceOnly;
    property CompanyMainTelephoneNumber: WideString read Get_CompanyMainTelephoneNumber write Set_CompanyMainTelephoneNumber;
    property CompanyName: WideString read Get_CompanyName write Set_CompanyName;
    property ComputerNetworkName: WideString read Get_ComputerNetworkName write Set_ComputerNetworkName;
    property CustomerID: WideString read Get_CustomerID write Set_CustomerID;
    property Department: WideString read Get_Department write Set_Department;
    property Email1Address: WideString read Get_Email1Address write Set_Email1Address;
    property Email1AddressType: WideString read Get_Email1AddressType write Set_Email1AddressType;
    property Email1DisplayName: WideString read Get_Email1DisplayName;
    property Email1EntryID: WideString read Get_Email1EntryID;
    property Email2Address: WideString read Get_Email2Address write Set_Email2Address;
    property Email2AddressType: WideString read Get_Email2AddressType write Set_Email2AddressType;
    property Email2DisplayName: WideString read Get_Email2DisplayName;
    property Email2EntryID: WideString read Get_Email2EntryID;
    property Email3Address: WideString read Get_Email3Address write Set_Email3Address;
    property Email3AddressType: WideString read Get_Email3AddressType write Set_Email3AddressType;
    property Email3DisplayName: WideString read Get_Email3DisplayName;
    property Email3EntryID: WideString read Get_Email3EntryID;
    property FileAs: WideString read Get_FileAs write Set_FileAs;
    property FirstName: WideString read Get_FirstName write Set_FirstName;
    property FTPSite: WideString read Get_FTPSite write Set_FTPSite;
    property FullName: WideString read Get_FullName write Set_FullName;
    property FullNameAndCompany: WideString read Get_FullNameAndCompany;
    property Gender: OlGender read Get_Gender write Set_Gender;
    property GovernmentIDNumber: WideString read Get_GovernmentIDNumber write Set_GovernmentIDNumber;
    property Hobby: WideString read Get_Hobby write Set_Hobby;
    property Home2TelephoneNumber: WideString read Get_Home2TelephoneNumber write Set_Home2TelephoneNumber;
    property HomeAddress: WideString read Get_HomeAddress write Set_HomeAddress;
    property HomeAddressCity: WideString read Get_HomeAddressCity write Set_HomeAddressCity;
    property HomeAddressCountry: WideString read Get_HomeAddressCountry write Set_HomeAddressCountry;
    property HomeAddressPostalCode: WideString read Get_HomeAddressPostalCode write Set_HomeAddressPostalCode;
    property HomeAddressPostOfficeBox: WideString read Get_HomeAddressPostOfficeBox write Set_HomeAddressPostOfficeBox;
    property HomeAddressState: WideString read Get_HomeAddressState write Set_HomeAddressState;
    property HomeAddressStreet: WideString read Get_HomeAddressStreet write Set_HomeAddressStreet;
    property HomeFaxNumber: WideString read Get_HomeFaxNumber write Set_HomeFaxNumber;
    property HomeTelephoneNumber: WideString read Get_HomeTelephoneNumber write Set_HomeTelephoneNumber;
    property Initials: WideString read Get_Initials write Set_Initials;
    property InternetFreeBusyAddress: WideString read Get_InternetFreeBusyAddress write Set_InternetFreeBusyAddress;
    property ISDNNumber: WideString read Get_ISDNNumber write Set_ISDNNumber;
    property JobTitle: WideString read Get_JobTitle write Set_JobTitle;
    property Journal: WordBool read Get_Journal write Set_Journal;
    property Language: WideString read Get_Language write Set_Language;
    property LastFirstAndSuffix: WideString read Get_LastFirstAndSuffix;
    property LastFirstNoSpace: WideString read Get_LastFirstNoSpace;
    property LastFirstNoSpaceCompany: WideString read Get_LastFirstNoSpaceCompany;
    property LastFirstSpaceOnly: WideString read Get_LastFirstSpaceOnly;
    property LastFirstSpaceOnlyCompany: WideString read Get_LastFirstSpaceOnlyCompany;
    property LastName: WideString read Get_LastName write Set_LastName;
    property LastNameAndFirstName: WideString read Get_LastNameAndFirstName;
    property MailingAddress: WideString read Get_MailingAddress write Set_MailingAddress;
    property MailingAddressCity: WideString read Get_MailingAddressCity write Set_MailingAddressCity;
    property MailingAddressCountry: WideString read Get_MailingAddressCountry write Set_MailingAddressCountry;
    property MailingAddressPostalCode: WideString read Get_MailingAddressPostalCode write Set_MailingAddressPostalCode;
    property MailingAddressPostOfficeBox: WideString read Get_MailingAddressPostOfficeBox write Set_MailingAddressPostOfficeBox;
    property MailingAddressState: WideString read Get_MailingAddressState write Set_MailingAddressState;
    property MailingAddressStreet: WideString read Get_MailingAddressStreet write Set_MailingAddressStreet;
    property ManagerName: WideString read Get_ManagerName write Set_ManagerName;
    property MiddleName: WideString read Get_MiddleName write Set_MiddleName;
    property MobileTelephoneNumber: WideString read Get_MobileTelephoneNumber write Set_MobileTelephoneNumber;
    property NetMeetingAlias: WideString read Get_NetMeetingAlias write Set_NetMeetingAlias;
    property NetMeetingServer: WideString read Get_NetMeetingServer write Set_NetMeetingServer;
    property NickName: WideString read Get_NickName write Set_NickName;
    property OfficeLocation: WideString read Get_OfficeLocation write Set_OfficeLocation;
    property OrganizationalIDNumber: WideString read Get_OrganizationalIDNumber write Set_OrganizationalIDNumber;
    property OtherAddress: WideString read Get_OtherAddress write Set_OtherAddress;
    property OtherAddressCity: WideString read Get_OtherAddressCity write Set_OtherAddressCity;
    property OtherAddressCountry: WideString read Get_OtherAddressCountry write Set_OtherAddressCountry;
    property OtherAddressPostalCode: WideString read Get_OtherAddressPostalCode write Set_OtherAddressPostalCode;
    property OtherAddressPostOfficeBox: WideString read Get_OtherAddressPostOfficeBox write Set_OtherAddressPostOfficeBox;
    property OtherAddressState: WideString read Get_OtherAddressState write Set_OtherAddressState;
    property OtherAddressStreet: WideString read Get_OtherAddressStreet write Set_OtherAddressStreet;
    property OtherFaxNumber: WideString read Get_OtherFaxNumber write Set_OtherFaxNumber;
    property OtherTelephoneNumber: WideString read Get_OtherTelephoneNumber write Set_OtherTelephoneNumber;
    property PagerNumber: WideString read Get_PagerNumber write Set_PagerNumber;
    property PersonalHomePage: WideString read Get_PersonalHomePage write Set_PersonalHomePage;
    property PrimaryTelephoneNumber: WideString read Get_PrimaryTelephoneNumber write Set_PrimaryTelephoneNumber;
    property Profession: WideString read Get_Profession write Set_Profession;
    property RadioTelephoneNumber: WideString read Get_RadioTelephoneNumber write Set_RadioTelephoneNumber;
    property ReferredBy: WideString read Get_ReferredBy write Set_ReferredBy;
    property SelectedMailingAddress: OlMailingAddress read Get_SelectedMailingAddress write Set_SelectedMailingAddress;
    property Spouse: WideString read Get_Spouse write Set_Spouse;
    property Suffix: WideString read Get_Suffix write Set_Suffix;
    property TelexNumber: WideString read Get_TelexNumber write Set_TelexNumber;
    property Title: WideString read Get_Title write Set_Title;
    property TTYTDDTelephoneNumber: WideString read Get_TTYTDDTelephoneNumber write Set_TTYTDDTelephoneNumber;
    property User1: WideString read Get_User1 write Set_User1;
    property User2: WideString read Get_User2 write Set_User2;
    property User3: WideString read Get_User3 write Set_User3;
    property User4: WideString read Get_User4 write Set_User4;
    property UserCertificate: WideString read Get_UserCertificate write Set_UserCertificate;
    property WebPage: WideString read Get_WebPage write Set_WebPage;
    property YomiCompanyName: WideString read Get_YomiCompanyName write Set_YomiCompanyName;
    property YomiFirstName: WideString read Get_YomiFirstName write Set_YomiFirstName;
    property YomiLastName: WideString read Get_YomiLastName write Set_YomiLastName;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _ContactItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063021-0000-0000-C000-000000000046}
// *********************************************************************//
  _ContactItemDisp = dispinterface
    ['{00063021-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property Account {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14848;
    property Anniversary {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 14913;
    property AssistantName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14896;
    property AssistantTelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14894;
    property Birthday {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 14914;
    property Business2TelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14875;
    property BusinessAddress {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32795;
    property BusinessAddressCity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32838;
    property BusinessAddressCountry {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32841;
    property BusinessAddressPostalCode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32840;
    property BusinessAddressPostOfficeBox {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32842;
    property BusinessAddressState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32839;
    property BusinessAddressStreet {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32837;
    property BusinessFaxNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14884;
    property BusinessHomePage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14929;
    property BusinessTelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14856;
    property CallbackTelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14850;
    property CarTelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14878;
    property Children {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32780;
    property CompanyAndFullName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32792;
    property CompanyLastFirstNoSpace {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32818;
    property CompanyLastFirstSpaceOnly {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32819;
    property CompanyMainTelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14935;
    property CompanyName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14870;
    property ComputerNetworkName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14921;
    property CustomerID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14922;
    property Department {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14872;
    property Email1Address {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32899;
    property Email1AddressType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32898;
    property Email1DisplayName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32896;
    property Email1EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32901;
    property Email2Address {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32915;
    property Email2AddressType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32914;
    property Email2DisplayName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32912;
    property Email2EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32917;
    property Email3Address {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32931;
    property Email3AddressType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32930;
    property Email3DisplayName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32928;
    property Email3EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32933;
    property FileAs {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32773;
    property FirstName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14854;
    property FTPSite {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14924;
    property FullName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 12289;
    property FullNameAndCompany {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32793;
    property Gender {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlGender dispid 14925;
    property GovernmentIDNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14855;
    property Hobby {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14915;
    property Home2TelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14895;
    property HomeAddress {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32794;
    property HomeAddressCity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14937;
    property HomeAddressCountry {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14938;
    property HomeAddressPostalCode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14939;
    property HomeAddressPostOfficeBox {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14942;
    property HomeAddressState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14940;
    property HomeAddressStreet {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14941;
    property HomeFaxNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14885;
    property HomeTelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14857;
    property Initials {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14858;
    property InternetFreeBusyAddress {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32984;
    property ISDNNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14893;
    property JobTitle {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14871;
    property Journal {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 32805;
    property Language {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14860;
    property LastFirstAndSuffix {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32822;
    property LastFirstNoSpace {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32816;
    property LastFirstNoSpaceCompany {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32820;
    property LastFirstSpaceOnly {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32817;
    property LastFirstSpaceOnlyCompany {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32821;
    property LastName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14865;
    property LastNameAndFirstName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 32791;
    property MailingAddress {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14869;
    property MailingAddressCity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14887;
    property MailingAddressCountry {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14886;
    property MailingAddressPostalCode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14890;
    property MailingAddressPostOfficeBox {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14891;
    property MailingAddressState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14888;
    property MailingAddressStreet {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14889;
    property ManagerName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14926;
    property MiddleName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14916;
    property MobileTelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14876;
    property NetMeetingAlias {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32863;
    property NetMeetingServer {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32864;
    property NickName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14927;
    property OfficeLocation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14873;
    property OrganizationalIDNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14864;
    property OtherAddress {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32796;
    property OtherAddressCity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14943;
    property OtherAddressCountry {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14944;
    property OtherAddressPostalCode {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14945;
    property OtherAddressPostOfficeBox {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14948;
    property OtherAddressState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14946;
    property OtherAddressStreet {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14947;
    property OtherFaxNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14883;
    property OtherTelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14879;
    property PagerNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14881;
    property PersonalHomePage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14928;
    property PrimaryTelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14874;
    property Profession {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14918;
    property RadioTelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14877;
    property ReferredBy {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14919;
    property SelectedMailingAddress {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlMailingAddress dispid 32802;
    property Spouse {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14920;
    property Suffix {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14853;
    property TelexNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14892;
    property Title {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14917;
    property TTYTDDTelephoneNumber {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 14923;
    property User1 {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32847;
    property User2 {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32848;
    property User3 {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32849;
    property User4 {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32850;
    property UserCertificate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32790;
    property WebPage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32811;
    property YomiCompanyName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32814;
    property YomiFirstName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32812;
    property YomiLastName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32813;
    function  ForwardAsVcard {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 63649;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// Interface: _DistListItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063081-0000-0000-C000-000000000046}
// *********************************************************************//
  _DistListItem = interface(IDispatch)
    ['{00063081-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_DLName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_DLName {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const DLName: WideString); safecall;
    function  Get_MemberCount {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_CheckSum {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Members {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_Members {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}Members: OleVariant); safecall;
    function  Get_OneOffMembers {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    procedure Set_OneOffMembers {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_12:0}OneOffMembers: OleVariant); safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    procedure AddMembers {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const Recipients: Recipients); safecall;
    procedure RemoveMembers {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:1}const Recipients: Recipients); safecall;
    function  GetMember {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_3:0}Index: Integer): Recipient; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property DLName: WideString read Get_DLName write Set_DLName;
    property MemberCount: Integer read Get_MemberCount;
    property CheckSum: Integer read Get_CheckSum;
    property Members: OleVariant read Get_Members write Set_Members;
    property OneOffMembers: OleVariant read Get_OneOffMembers write Set_OneOffMembers;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _DistListItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063081-0000-0000-C000-000000000046}
// *********************************************************************//
  _DistListItemDisp = dispinterface
    ['{00063081-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property DLName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 32851;
    property MemberCount {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 32843;
    property CheckSum {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 32844;
    property Members {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant dispid 32853;
    property OneOffMembers {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant dispid 32852;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
    procedure AddMembers {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Recipients: Recipients); dispid 63744;
    procedure RemoveMembers {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Recipients: Recipients); dispid 63745;
    function  GetMember {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_3:0}Index: Integer): Recipient; dispid 63749;
  end;

// *********************************************************************//
// Interface: _DocumentItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063020-0000-0000-C000-000000000046}
// *********************************************************************//
  _DocumentItem = interface(IDispatch)
    ['{00063020-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _DocumentItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063020-0000-0000-C000-000000000046}
// *********************************************************************//
  _DocumentItemDisp = dispinterface
    ['{00063020-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// DispIntf:  ExplorersEvents
// Flags:     (4096) Dispatchable
// GUID:      {00063078-0000-0000-C000-000000000046}
// *********************************************************************//
  ExplorersEvents = dispinterface
    ['{00063078-0000-0000-C000-000000000046}']
    procedure NewExplorer {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Explorer: _Explorer); dispid 61441;
  end;

// *********************************************************************//
// DispIntf:  FoldersEvents
// Flags:     (4096) Dispatchable
// GUID:      {00063076-0000-0000-C000-000000000046}
// *********************************************************************//
  FoldersEvents = dispinterface
    ['{00063076-0000-0000-C000-000000000046}']
    procedure FolderAdd {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Folder: MAPIFolder); dispid 61441;
    procedure FolderChange {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Folder: MAPIFolder); dispid 61442;
    procedure FolderRemove {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61443;
  end;

// *********************************************************************//
// DispIntf:  InspectorsEvents
// Flags:     (4096) Dispatchable
// GUID:      {00063079-0000-0000-C000-000000000046}
// *********************************************************************//
  InspectorsEvents = dispinterface
    ['{00063079-0000-0000-C000-000000000046}']
    procedure NewInspector {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const Inspector: _Inspector); dispid 61441;
  end;

// *********************************************************************//
// DispIntf:  ItemsEvents
// Flags:     (4096) Dispatchable
// GUID:      {00063077-0000-0000-C000-000000000046}
// *********************************************************************//
  ItemsEvents = dispinterface
    ['{00063077-0000-0000-C000-000000000046}']
    procedure ItemAdd {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Item: IDispatch); dispid 61441;
    procedure ItemChange {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_9:0}const Item: IDispatch); dispid 61442;
    procedure ItemRemove {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61443;
  end;

// *********************************************************************//
// Interface: _JournalItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063022-0000-0000-C000-000000000046}
// *********************************************************************//
  _JournalItem = interface(IDispatch)
    ['{00063022-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_ContactNames {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ContactNames {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ContactNames: WideString); safecall;
    function  Get_DocPosted {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_DocPosted {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}DocPosted: WordBool); safecall;
    function  Get_DocPrinted {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_DocPrinted {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}DocPrinted: WordBool); safecall;
    function  Get_DocRouted {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_DocRouted {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}DocRouted: WordBool); safecall;
    function  Get_DocSaved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_DocSaved {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}DocSaved: WordBool); safecall;
    function  Get_Duration {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Duration {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Duration: Integer); safecall;
    function  Get_End_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_End_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}End_: TDateTime); safecall;
    function  Get_Type_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Type_ {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Type_: WideString); safecall;
    function  Get_Recipients {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Recipients; safecall;
    function  Get_Start {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_Start {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}Start: TDateTime); safecall;
    function  Forward {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    function  Reply {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    function  ReplyAll {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    procedure StartTimer {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure StopTimer {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property ContactNames: WideString read Get_ContactNames write Set_ContactNames;
    property DocPosted: WordBool read Get_DocPosted write Set_DocPosted;
    property DocPrinted: WordBool read Get_DocPrinted write Set_DocPrinted;
    property DocRouted: WordBool read Get_DocRouted write Set_DocRouted;
    property DocSaved: WordBool read Get_DocSaved write Set_DocSaved;
    property Duration: Integer read Get_Duration write Set_Duration;
    property End_: TDateTime read Get_End_ write Set_End_;
    property Type_: WideString read Get_Type_ write Set_Type_;
    property Recipients: Recipients read Get_Recipients;
    property Start: TDateTime read Get_Start write Set_Start;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _JournalItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063022-0000-0000-C000-000000000046}
// *********************************************************************//
  _JournalItemDisp = dispinterface
    ['{00063022-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property ContactNames {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 3588;
    property DocPosted {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34577;
    property DocPrinted {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34574;
    property DocRouted {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34576;
    property DocSaved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34575;
    property Duration {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 34567;
    property End_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 34568;
    property Type_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34560;
    property Recipients {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Recipients readonly dispid 63508;
    property Start {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 34566;
    function  Forward {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 63507;
    function  Reply {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 63504;
    function  ReplyAll {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 63505;
    procedure StartTimer {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 63269;
    procedure StopTimer {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 63270;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// DispIntf:  NameSpaceEvents
// Flags:     (4096) Dispatchable
// GUID:      {0006308C-0000-0000-C000-000000000046}
// *********************************************************************//
  NameSpaceEvents = dispinterface
    ['{0006308C-0000-0000-C000-000000000046}']
    procedure OptionsPagesAdd {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const Pages: PropertyPages; 
                                                                   {VT_29:1}const Folder: MAPIFolder); dispid 61445;
  end;

// *********************************************************************//
// Interface: _NoteItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063025-0000-0000-C000-000000000046}
// *********************************************************************//
  _NoteItem = interface(IDispatch)
    ['{00063025-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Color {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlNoteColor; safecall;
    procedure Set_Color {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Color: OlNoteColor); safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Height {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Height {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Height: Integer); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_Left {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Left {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Left: Integer); safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Top {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Top {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Top: Integer); safecall;
    function  Get_Width {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Width {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Width: Integer); safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Color: OlNoteColor read Get_Color write Set_Color;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property GetInspector: _Inspector read Get_GetInspector;
    property Height: Integer read Get_Height write Set_Height;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property Left: Integer read Get_Left write Set_Left;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject;
    property Top: Integer read Get_Top write Set_Top;
    property Width: Integer read Get_Width write Set_Width;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _NoteItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063025-0000-0000-C000-000000000046}
// *********************************************************************//
  _NoteItemDisp = dispinterface
    ['{00063025-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Color {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlNoteColor dispid 35584;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Height {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 35587;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property Left {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 35588;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 63392;
    property Top {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 35589;
    property Width {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 35586;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// Interface: OutlookBarGroup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063073-0000-0000-C000-000000000046}
// *********************************************************************//
  OutlookBarGroup = interface(IDispatch)
    ['{00063073-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_Shortcuts {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _OutlookBarShortcuts; safecall;
    function  Get_ViewType {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlOutlookBarViewType; safecall;
    procedure Set_ViewType {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}ViewType: OlOutlookBarViewType); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Name: WideString read Get_Name write Set_Name;
    property Shortcuts: _OutlookBarShortcuts read Get_Shortcuts;
    property ViewType: OlOutlookBarViewType read Get_ViewType write Set_ViewType;
  end;

// *********************************************************************//
// DispIntf:  OutlookBarGroupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063073-0000-0000-C000-000000000046}
// *********************************************************************//
  OutlookBarGroupDisp = dispinterface
    ['{00063073-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 0;
    property Shortcuts {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _OutlookBarShortcuts readonly dispid 8450;
    property ViewType {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlOutlookBarViewType dispid 8451;
  end;

// *********************************************************************//
// Interface: _OutlookBarShortcuts
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063074-0000-0000-C000-000000000046}
// *********************************************************************//
  _OutlookBarShortcuts = interface(IDispatch)
    ['{00063074-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): OutlookBarShortcut; safecall;
    function  Add {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_12:0}Target: OleVariant; 
                                                       {VT_8:0}const Name: WideString; 
                                                       {VT_12:0}Index: OleVariant): OutlookBarShortcut; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _OutlookBarShortcutsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063074-0000-0000-C000-000000000046}
// *********************************************************************//
  _OutlookBarShortcutsDisp = dispinterface
    ['{00063074-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): OutlookBarShortcut; dispid 81;
    function  Add {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_12:0}Target: OleVariant; 
                                                       {VT_8:0}const Name: WideString; 
                                                       {VT_12:0}Index: OleVariant): OutlookBarShortcut; dispid 95;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant); dispid 84;
  end;

// *********************************************************************//
// Interface: OutlookBarShortcut
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063075-0000-0000-C000-000000000046}
// *********************************************************************//
  OutlookBarShortcut = interface(IDispatch)
    ['{00063075-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Name {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Name: WideString); safecall;
    function  Get_Target {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OleVariant; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Name: WideString read Get_Name write Set_Name;
    property Target: OleVariant read Get_Target;
  end;

// *********************************************************************//
// DispIntf:  OutlookBarShortcutDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063075-0000-0000-C000-000000000046}
// *********************************************************************//
  OutlookBarShortcutDisp = dispinterface
    ['{00063075-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 0;
    property Target {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OleVariant readonly dispid 8448;
  end;

// *********************************************************************//
// Interface: _OutlookBarGroups
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063072-0000-0000-C000-000000000046}
// *********************************************************************//
  _OutlookBarGroups = interface(IDispatch)
    ['{00063072-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): OutlookBarGroup; safecall;
    function  Add {Flags(1), (3/2) CC:0, INV:1, DBG:6}({VT_8:0}const Name: WideString; 
                                                       {VT_12:0}Index: OleVariant): OutlookBarGroup; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  _OutlookBarGroupsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063072-0000-0000-C000-000000000046}
// *********************************************************************//
  _OutlookBarGroupsDisp = dispinterface
    ['{00063072-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): OutlookBarGroup; dispid 81;
    function  Add {Flags(2), (3/2) CC:0, INV:1, DBG:4}({VT_8:0}const Name: WideString; 
                                                       {VT_12:0}Index: OleVariant): OutlookBarGroup; dispid 95;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant); dispid 84;
  end;

// *********************************************************************//
// DispIntf:  OutlookBarGroupsEvents
// Flags:     (4096) Dispatchable
// GUID:      {0006307B-0000-0000-C000-000000000046}
// *********************************************************************//
  OutlookBarGroupsEvents = dispinterface
    ['{0006307B-0000-0000-C000-000000000046}']
    procedure GroupAdd {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const NewGroup: OutlookBarGroup); dispid 61441;
    procedure BeforeGroupAdd {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_11:1}var Cancel: WordBool); dispid 61442;
    procedure BeforeGroupRemove {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const Group: OutlookBarGroup; 
                                                                     {VT_11:1}var Cancel: WordBool); dispid 61443;
  end;

// *********************************************************************//
// Interface: _OutlookBarPane
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063070-0000-0000-C000-000000000046}
// *********************************************************************//
  _OutlookBarPane = interface(IDispatch)
    ['{00063070-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Contents {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OutlookBarStorage; safecall;
    function  Get_CurrentGroup {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OutlookBarGroup; safecall;
    procedure Set_CurrentGroup {Flags(1), (1/1) CC:0, INV:8, DBG:6}({VT_29:1}const CurrentGroup: OutlookBarGroup); safecall;
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Visible {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Visible {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}Visible: WordBool); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Contents: OutlookBarStorage read Get_Contents;
    property CurrentGroup: OutlookBarGroup read Get_CurrentGroup write Set_CurrentGroup;
    property Name: WideString read Get_Name;
    property Visible: WordBool read Get_Visible write Set_Visible;
  end;

// *********************************************************************//
// DispIntf:  _OutlookBarPaneDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063070-0000-0000-C000-000000000046}
// *********************************************************************//
  _OutlookBarPaneDisp = dispinterface
    ['{00063070-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Contents {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OutlookBarStorage readonly dispid 8448;
    property CurrentGroup {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OutlookBarGroup dispid 8449;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 0;
    property Visible {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 8451;
  end;

// *********************************************************************//
// Interface: OutlookBarStorage
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063071-0000-0000-C000-000000000046}
// *********************************************************************//
  OutlookBarStorage = interface(IDispatch)
    ['{00063071-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Groups {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _OutlookBarGroups; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Groups: _OutlookBarGroups read Get_Groups;
  end;

// *********************************************************************//
// DispIntf:  OutlookBarStorageDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063071-0000-0000-C000-000000000046}
// *********************************************************************//
  OutlookBarStorageDisp = dispinterface
    ['{00063071-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Groups {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _OutlookBarGroups readonly dispid 0;
  end;

// *********************************************************************//
// DispIntf:  OutlookBarPaneEvents
// Flags:     (4096) Dispatchable
// GUID:      {0006307A-0000-0000-C000-000000000046}
// *********************************************************************//
  OutlookBarPaneEvents = dispinterface
    ['{0006307A-0000-0000-C000-000000000046}']
    procedure BeforeNavigate {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const Shortcut: OutlookBarShortcut; 
                                                                  {VT_11:1}var Cancel: WordBool); dispid 61441;
    procedure BeforeGroupSwitch {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const ToGroup: OutlookBarGroup; 
                                                                     {VT_11:1}var Cancel: WordBool); dispid 61442;
  end;

// *********************************************************************//
// DispIntf:  OutlookBarShortcutsEvents
// Flags:     (4096) Dispatchable
// GUID:      {0006307C-0000-0000-C000-000000000046}
// *********************************************************************//
  OutlookBarShortcutsEvents = dispinterface
    ['{0006307C-0000-0000-C000-000000000046}']
    procedure ShortcutAdd {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:1}const NewShortcut: OutlookBarShortcut); dispid 61441;
    procedure BeforeShortcutAdd {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_11:1}var Cancel: WordBool); dispid 61442;
    procedure BeforeShortcutRemove {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_29:1}const Shortcut: OutlookBarShortcut; 
                                                                        {VT_11:1}var Cancel: WordBool); dispid 61443;
  end;

// *********************************************************************//
// Interface: PropertyPage
// Flags:     (4096) Dispatchable
// GUID:      {0006307E-0000-0000-C000-000000000046}
// *********************************************************************//
  PropertyPage = interface(IDispatch)
    ['{0006307E-0000-0000-C000-000000000046}']
    function  GetPageInfo {Flags(1), (2/2) CC:4, INV:1, DBG:6}({VT_8:1}var HelpFile: WideString; 
                                                               {VT_3:1}var HelpContext: Integer): HResult; stdcall;
    function  Get_Dirty {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_11:1}out Dirty: WordBool): HResult; stdcall;
    function  Apply {Flags(1), (0/0) CC:4, INV:1, DBG:6}: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: PropertyPageSite
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006307F-0000-0000-C000-000000000046}
// *********************************************************************//
  PropertyPageSite = interface(IDispatch)
    ['{0006307F-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    procedure OnStatusChange {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  PropertyPageSiteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006307F-0000-0000-C000-000000000046}
// *********************************************************************//
  PropertyPageSiteDisp = dispinterface
    ['{0006307F-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    procedure OnStatusChange {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 8448;
  end;

// *********************************************************************//
// Interface: Pages
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006303F-0000-0000-C000-000000000046}
// *********************************************************************//
  Pages = interface(IDispatch)
    ['{0006303F-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Count {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Item {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Index: OleVariant): IDispatch; safecall;
    function  Add {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_12:0}Name: OleVariant): IDispatch; safecall;
    procedure Remove {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_3:0}Index: Integer); safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  PagesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0006303F-0000-0000-C000-000000000046}
// *********************************************************************//
  PagesDisp = dispinterface
    ['{0006303F-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Count {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 80;
    function  Item {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Index: OleVariant): IDispatch; dispid 81;
    function  Add {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_12:0}Name: OleVariant): IDispatch; dispid 300;
    procedure Remove {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_3:0}Index: Integer); dispid 301;
  end;

// *********************************************************************//
// Interface: _PostItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063024-0000-0000-C000-000000000046}
// *********************************************************************//
  _PostItem = interface(IDispatch)
    ['{00063024-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_ExpiryTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_ExpiryTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}ExpiryTime: TDateTime); safecall;
    function  Get_HTMLBody {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_HTMLBody {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const HTMLBody: WideString); safecall;
    function  Get_ReceivedTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_SenderName {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_SentOn {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure ClearConversationIndex {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Forward {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    procedure Post {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Reply {Flags(1), (1/0) CC:0, INV:1, DBG:6}: MailItem; safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property ExpiryTime: TDateTime read Get_ExpiryTime write Set_ExpiryTime;
    property HTMLBody: WideString read Get_HTMLBody write Set_HTMLBody;
    property ReceivedTime: TDateTime read Get_ReceivedTime;
    property SenderName: WideString read Get_SenderName;
    property SentOn: TDateTime read Get_SentOn;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _PostItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063024-0000-0000-C000-000000000046}
// *********************************************************************//
  _PostItemDisp = dispinterface
    ['{00063024-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property ExpiryTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 21;
    property HTMLBody {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 62468;
    property ReceivedTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 3590;
    property SenderName {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 3098;
    property SentOn {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 57;
    procedure ClearConversationIndex {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 63522;
    function  Forward {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 63507;
    procedure Post {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61557;
    function  Reply {Flags(2), (1/0) CC:0, INV:1, DBG:4}: MailItem; dispid 63504;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// Interface: _RemoteItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063023-0000-0000-C000-000000000046}
// *********************************************************************//
  _RemoteItem = interface(IDispatch)
    ['{00063023-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_HasAttachment {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_RemoteMessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_TransferSize {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_TransferTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property HasAttachment: WordBool read Get_HasAttachment;
    property RemoteMessageClass: WideString read Get_RemoteMessageClass;
    property TransferSize: Integer read Get_TransferSize;
    property TransferTime: Integer read Get_TransferTime;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _RemoteItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063023-0000-0000-C000-000000000046}
// *********************************************************************//
  _RemoteItemDisp = dispinterface
    ['{00063023-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property HasAttachment {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 36615;
    property RemoteMessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 36610;
    property TransferSize {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 36613;
    property TransferTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 36612;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// Interface: _ReportItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063026-0000-0000-C000-000000000046}
// *********************************************************************//
  _ReportItem = interface(IDispatch)
    ['{00063026-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _ReportItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063026-0000-0000-C000-000000000046}
// *********************************************************************//
  _ReportItemDisp = dispinterface
    ['{00063026-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// Interface: _TaskItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063035-0000-0000-C000-000000000046}
// *********************************************************************//
  _TaskItem = interface(IDispatch)
    ['{00063035-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  Get_ActualWork {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_ActualWork {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}ActualWork: Integer); safecall;
    function  Get_CardData {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_CardData {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const CardData: WideString); safecall;
    function  Get_Complete {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_Complete {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}Complete: WordBool); safecall;
    function  Get_Contacts {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Contacts {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Contacts: WideString); safecall;
    function  Get_ContactNames {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ContactNames {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ContactNames: WideString); safecall;
    function  Get_DateCompleted {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_DateCompleted {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}DateCompleted: TDateTime); safecall;
    function  Get_DelegationState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlTaskDelegationState; safecall;
    function  Get_Delegator {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_DueDate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_DueDate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}DueDate: TDateTime); safecall;
    function  Get_IsRecurring {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Ordinal {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_Ordinal {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}Ordinal: Integer); safecall;
    function  Get_Owner {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Owner {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Owner: WideString); safecall;
    function  Get_Ownership {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlTaskOwnership; safecall;
    function  Get_PercentComplete {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_PercentComplete {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}PercentComplete: Integer); safecall;
    function  Get_Recipients {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Recipients; safecall;
    function  Get_ReminderTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_ReminderTime {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}ReminderTime: TDateTime); safecall;
    function  Get_ReminderOverrideDefault {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReminderOverrideDefault {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ReminderOverrideDefault: WordBool); safecall;
    function  Get_ReminderPlaySound {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReminderPlaySound {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ReminderPlaySound: WordBool); safecall;
    function  Get_ReminderSet {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_ReminderSet {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}ReminderSet: WordBool); safecall;
    function  Get_ReminderSoundFile {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_ReminderSoundFile {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const ReminderSoundFile: WideString); safecall;
    function  Get_ResponseState {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlTaskResponse; safecall;
    function  Get_Role {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Role {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Role: WideString); safecall;
    function  Get_SchedulePlusPriority {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_SchedulePlusPriority {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const SchedulePlusPriority: WideString); safecall;
    function  Get_StartDate {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    procedure Set_StartDate {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_7:0}StartDate: TDateTime); safecall;
    function  Get_Status {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlTaskStatus; safecall;
    procedure Set_Status {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Status: OlTaskStatus); safecall;
    function  Get_StatusOnCompletionRecipients {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_StatusOnCompletionRecipients {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const StatusOnCompletionRecipients: WideString); safecall;
    function  Get_StatusUpdateRecipients {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_StatusUpdateRecipients {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const StatusUpdateRecipients: WideString); safecall;
    function  Get_TeamTask {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_TeamTask {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}TeamTask: WordBool); safecall;
    function  Get_TotalWork {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    procedure Set_TotalWork {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_3:0}TotalWork: Integer); safecall;
    function  Assign_ {Flags(1), (1/0) CC:0, INV:1, DBG:6}: TaskItem; safecall;
    procedure CancelResponseState {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure ClearRecurrencePattern {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  GetRecurrencePattern {Flags(1), (1/0) CC:0, INV:1, DBG:6}: RecurrencePattern; safecall;
    procedure MarkComplete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  Respond {Flags(1), (4/3) CC:0, INV:1, DBG:6}({VT_29:0}Response: OlTaskResponse; 
                                                           {VT_12:0}fNoUI: OleVariant; 
                                                           {VT_12:0}fAdditionalTextDialog: OleVariant): TaskItem; safecall;
    procedure Send {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    function  SkipRecurrence {Flags(1), (1/0) CC:0, INV:1, DBG:6}: WordBool; safecall;
    function  StatusReport {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property ActualWork: Integer read Get_ActualWork write Set_ActualWork;
    property CardData: WideString read Get_CardData write Set_CardData;
    property Complete: WordBool read Get_Complete write Set_Complete;
    property Contacts: WideString read Get_Contacts write Set_Contacts;
    property ContactNames: WideString read Get_ContactNames write Set_ContactNames;
    property DateCompleted: TDateTime read Get_DateCompleted write Set_DateCompleted;
    property DelegationState: OlTaskDelegationState read Get_DelegationState;
    property Delegator: WideString read Get_Delegator;
    property DueDate: TDateTime read Get_DueDate write Set_DueDate;
    property IsRecurring: WordBool read Get_IsRecurring;
    property Ordinal: Integer read Get_Ordinal write Set_Ordinal;
    property Owner: WideString read Get_Owner write Set_Owner;
    property Ownership: OlTaskOwnership read Get_Ownership;
    property PercentComplete: Integer read Get_PercentComplete write Set_PercentComplete;
    property Recipients: Recipients read Get_Recipients;
    property ReminderTime: TDateTime read Get_ReminderTime write Set_ReminderTime;
    property ReminderOverrideDefault: WordBool read Get_ReminderOverrideDefault write Set_ReminderOverrideDefault;
    property ReminderPlaySound: WordBool read Get_ReminderPlaySound write Set_ReminderPlaySound;
    property ReminderSet: WordBool read Get_ReminderSet write Set_ReminderSet;
    property ReminderSoundFile: WideString read Get_ReminderSoundFile write Set_ReminderSoundFile;
    property ResponseState: OlTaskResponse read Get_ResponseState;
    property Role: WideString read Get_Role write Set_Role;
    property SchedulePlusPriority: WideString read Get_SchedulePlusPriority write Set_SchedulePlusPriority;
    property StartDate: TDateTime read Get_StartDate write Set_StartDate;
    property Status: OlTaskStatus read Get_Status write Set_Status;
    property StatusOnCompletionRecipients: WideString read Get_StatusOnCompletionRecipients write Set_StatusOnCompletionRecipients;
    property StatusUpdateRecipients: WideString read Get_StatusUpdateRecipients write Set_StatusUpdateRecipients;
    property TeamTask: WordBool read Get_TeamTask write Set_TeamTask;
    property TotalWork: Integer read Get_TotalWork write Set_TotalWork;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _TaskItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063035-0000-0000-C000-000000000046}
// *********************************************************************//
  _TaskItemDisp = dispinterface
    ['{00063035-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    property ActualWork {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 33040;
    property CardData {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 33067;
    property Complete {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 33052;
    property Contacts {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34106;
    property ContactNames {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34108;
    property DateCompleted {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 33039;
    property DelegationState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlTaskDelegationState readonly dispid 33066;
    property Delegator {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 33057;
    property DueDate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 33029;
    property IsRecurring {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 62999;
    property Ordinal {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 33059;
    property Owner {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 33055;
    property Ownership {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlTaskOwnership readonly dispid 33065;
    property PercentComplete {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 63007;
    property Recipients {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Recipients readonly dispid 63508;
    property ReminderTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 34050;
    property ReminderOverrideDefault {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34076;
    property ReminderPlaySound {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34078;
    property ReminderSet {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34051;
    property ReminderSoundFile {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34079;
    property ResponseState {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlTaskResponse readonly dispid 63011;
    property Role {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 33063;
    property SchedulePlusPriority {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 33071;
    property StartDate {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime dispid 33028;
    property Status {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlTaskStatus dispid 33025;
    property StatusOnCompletionRecipients {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 3586;
    property StatusUpdateRecipients {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 3587;
    property TeamTask {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 33027;
    property TotalWork {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer dispid 33041;
    function  Assign_ {Flags(2), (1/0) CC:0, INV:1, DBG:4}: TaskItem; dispid 63008;
    procedure CancelResponseState {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 63010;
    procedure ClearRecurrencePattern {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61605;
    function  GetRecurrencePattern {Flags(2), (1/0) CC:0, INV:1, DBG:4}: RecurrencePattern; dispid 61604;
    procedure MarkComplete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 62989;
    function  Respond {Flags(2), (4/3) CC:0, INV:1, DBG:4}({VT_29:0}Response: OlTaskResponse; 
                                                           {VT_12:0}fNoUI: OleVariant; 
                                                           {VT_12:0}fAdditionalTextDialog: OleVariant): TaskItem; dispid 63009;
    procedure Send {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61557;
    function  SkipRecurrence {Flags(2), (1/0) CC:0, INV:1, DBG:4}: WordBool; dispid 63012;
    function  StatusReport {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 62994;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// Interface: _TaskRequestAcceptItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063038-0000-0000-C000-000000000046}
// *********************************************************************//
  _TaskRequestAcceptItem = interface(IDispatch)
    ['{00063038-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  GetAssociatedTask {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_11:0}AddToTaskList: WordBool): TaskItem; safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _TaskRequestAcceptItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063038-0000-0000-C000-000000000046}
// *********************************************************************//
  _TaskRequestAcceptItemDisp = dispinterface
    ['{00063038-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    function  GetAssociatedTask {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_11:0}AddToTaskList: WordBool): TaskItem; dispid 61460;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// Interface: _TaskRequestDeclineItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063039-0000-0000-C000-000000000046}
// *********************************************************************//
  _TaskRequestDeclineItem = interface(IDispatch)
    ['{00063039-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  GetAssociatedTask {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_11:0}AddToTaskList: WordBool): TaskItem; safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _TaskRequestDeclineItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063039-0000-0000-C000-000000000046}
// *********************************************************************//
  _TaskRequestDeclineItemDisp = dispinterface
    ['{00063039-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    function  GetAssociatedTask {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_11:0}AddToTaskList: WordBool): TaskItem; dispid 61460;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// Interface: _TaskRequestItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063036-0000-0000-C000-000000000046}
// *********************************************************************//
  _TaskRequestItem = interface(IDispatch)
    ['{00063036-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  GetAssociatedTask {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_11:0}AddToTaskList: WordBool): TaskItem; safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _TaskRequestItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063036-0000-0000-C000-000000000046}
// *********************************************************************//
  _TaskRequestItemDisp = dispinterface
    ['{00063036-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    function  GetAssociatedTask {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_11:0}AddToTaskList: WordBool): TaskItem; dispid 61460;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// Interface: _TaskRequestUpdateItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063037-0000-0000-C000-000000000046}
// *********************************************************************//
  _TaskRequestUpdateItem = interface(IDispatch)
    ['{00063037-0000-0000-C000-000000000046}']
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Application; safecall;
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass; safecall;
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _NameSpace; safecall;
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IDispatch; safecall;
    function  Get_Actions {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Actions; safecall;
    function  Get_Attachments {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Attachments; safecall;
    function  Get_BillingInformation {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_BillingInformation {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const BillingInformation: WideString); safecall;
    function  Get_Body {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Body {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Body: WideString); safecall;
    function  Get_Categories {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Categories {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Categories: WideString); safecall;
    function  Get_Companies {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Companies {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Companies: WideString); safecall;
    function  Get_ConversationIndex {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_ConversationTopic {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_CreationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_EntryID {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_FormDescription {Flags(1), (1/0) CC:0, INV:2, DBG:6}: FormDescription; safecall;
    function  Get_GetInspector {Flags(1), (1/0) CC:0, INV:2, DBG:6}: _Inspector; safecall;
    function  Get_Importance {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlImportance; safecall;
    procedure Set_Importance {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Importance: OlImportance); safecall;
    function  Get_LastModificationTime {Flags(1), (1/0) CC:0, INV:2, DBG:6}: TDateTime; safecall;
    function  Get_MAPIOBJECT {Flags(1), (1/0) CC:0, INV:2, DBG:6}: IUnknown; safecall;
    function  Get_MessageClass {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_MessageClass {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const MessageClass: WideString); safecall;
    function  Get_Mileage {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Mileage {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Mileage: WideString); safecall;
    function  Get_NoAging {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_NoAging {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}NoAging: WordBool); safecall;
    function  Get_OutlookInternalVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_OutlookVersion {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    function  Get_Saved {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    function  Get_Sensitivity {Flags(1), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity; safecall;
    procedure Set_Sensitivity {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_29:0}Sensitivity: OlSensitivity); safecall;
    function  Get_Size {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Integer; safecall;
    function  Get_Subject {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WideString; safecall;
    procedure Set_Subject {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_8:0}const Subject: WideString); safecall;
    function  Get_UnRead {Flags(1), (1/0) CC:0, INV:2, DBG:6}: WordBool; safecall;
    procedure Set_UnRead {Flags(1), (1/1) CC:0, INV:4, DBG:6}({VT_11:0}UnRead: WordBool); safecall;
    function  Get_UserProperties {Flags(1), (1/0) CC:0, INV:2, DBG:6}: UserProperties; safecall;
    procedure Close {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_29:0}SaveMode: OlInspectorClose); safecall;
    function  Copy {Flags(1), (1/0) CC:0, INV:1, DBG:6}: IDispatch; safecall;
    procedure Delete {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Display {Flags(1), (1/1) CC:0, INV:1, DBG:6}({VT_12:0}Modal: OleVariant); safecall;
    function  Move {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; safecall;
    procedure PrintOut {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure Save {Flags(1), (0/0) CC:0, INV:1, DBG:6}; safecall;
    procedure SaveAs {Flags(1), (2/2) CC:0, INV:1, DBG:6}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); safecall;
    function  GetAssociatedTask {Flags(1), (2/1) CC:0, INV:1, DBG:6}({VT_11:0}AddToTaskList: WordBool): TaskItem; safecall;
    function  Get_Links {Flags(1), (1/0) CC:0, INV:2, DBG:6}: Links; safecall;
    property Application: _Application read Get_Application;
    property Class_: OlObjectClass read Get_Class_;
    property Session: _NameSpace read Get_Session;
    property Parent: IDispatch read Get_Parent;
    property Actions: Actions read Get_Actions;
    property Attachments: Attachments read Get_Attachments;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: _Inspector read Get_GetInspector;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property MAPIOBJECT: IUnknown read Get_MAPIOBJECT;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property OutlookInternalVersion: Integer read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Saved: WordBool read Get_Saved;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property UserProperties: UserProperties read Get_UserProperties;
    property Links: Links read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  _TaskRequestUpdateItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00063037-0000-0000-C000-000000000046}
// *********************************************************************//
  _TaskRequestUpdateItemDisp = dispinterface
    ['{00063037-0000-0000-C000-000000000046}']
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Application readonly dispid 61440;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlObjectClass readonly dispid 61450;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _NameSpace readonly dispid 61451;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IDispatch readonly dispid 61441;
    property Actions {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Actions readonly dispid 63511;
    property Attachments {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Attachments readonly dispid 63509;
    property BillingInformation {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34101;
    property Body {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 37120;
    property Categories {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 36865;
    property Companies {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34107;
    property ConversationIndex {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 113;
    property ConversationTopic {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 112;
    property CreationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12295;
    property EntryID {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 61470;
    property FormDescription {Flags(2), (1/0) CC:0, INV:2, DBG:6}: FormDescription readonly dispid 61589;
    property GetInspector {Flags(2), (1/0) CC:0, INV:2, DBG:6}: _Inspector readonly dispid 61502;
    property Importance {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlImportance dispid 23;
    property LastModificationTime {Flags(2), (1/0) CC:0, INV:2, DBG:6}: TDateTime readonly dispid 12296;
    property MAPIOBJECT {Flags(2), (1/0) CC:0, INV:2, DBG:6}: IUnknown readonly dispid 61696;
    property MessageClass {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 26;
    property Mileage {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 34100;
    property NoAging {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 34062;
    property OutlookInternalVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 34130;
    property OutlookVersion {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString readonly dispid 34132;
    property Saved {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool readonly dispid 61603;
    property Sensitivity {Flags(2), (1/0) CC:0, INV:2, DBG:6}: OlSensitivity dispid 54;
    property Size {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Integer readonly dispid 3592;
    property Subject {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WideString dispid 55;
    property UnRead {Flags(2), (1/0) CC:0, INV:2, DBG:6}: WordBool dispid 61468;
    property UserProperties {Flags(2), (1/0) CC:0, INV:2, DBG:6}: UserProperties readonly dispid 63510;
    procedure Close {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_29:0}SaveMode: OlInspectorClose); dispid 61475;
    function  Copy {Flags(2), (1/0) CC:0, INV:1, DBG:4}: IDispatch; dispid 61490;
    procedure Delete {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61514;
    procedure Display {Flags(2), (1/1) CC:0, INV:1, DBG:4}({VT_12:0}Modal: OleVariant); dispid 61606;
    function  Move {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_29:1}const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure PrintOut {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61491;
    procedure Save {Flags(2), (0/0) CC:0, INV:1, DBG:4}; dispid 61512;
    procedure SaveAs {Flags(2), (2/2) CC:0, INV:1, DBG:4}({VT_8:0}const Path: WideString; 
                                                          {VT_12:0}Type_: OleVariant); dispid 61521;
    function  GetAssociatedTask {Flags(2), (2/1) CC:0, INV:1, DBG:4}({VT_11:0}AddToTaskList: WordBool): TaskItem; dispid 61460;
    property Links {Flags(2), (1/0) CC:0, INV:2, DBG:6}: Links readonly dispid 62469;
  end;

// *********************************************************************//
// Interface: _IRecipientControl
// Flags:     (4112) Hidden Dispatchable
// GUID:      {D87E7E16-6897-11CE-A6C0-00AA00608FAA}
// *********************************************************************//
  _IRecipientControl = interface(IDispatch)
    ['{D87E7E16-6897-11CE-A6C0-00AA00608FAA}']
    function  Get_Enabled {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_11:1}out Enabled: WordBool): HResult; stdcall;
    function  Set_Enabled {Flags(1), (1/1) CC:4, INV:4, DBG:6}({VT_11:0}Enabled: WordBool): HResult; stdcall;
    function  Get_BackColor {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_3:1}out BackColor: Integer): HResult; stdcall;
    function  Set_BackColor {Flags(1), (1/1) CC:4, INV:4, DBG:6}({VT_3:0}BackColor: Integer): HResult; stdcall;
    function  Get_ForeColor {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_3:1}out ForeColor: Integer): HResult; stdcall;
    function  Set_ForeColor {Flags(1), (1/1) CC:4, INV:4, DBG:6}({VT_3:0}ForeColor: Integer): HResult; stdcall;
    function  Get_ReadOnly {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_11:1}out ReadOnly: WordBool): HResult; stdcall;
    function  Set_ReadOnly {Flags(1), (1/1) CC:4, INV:4, DBG:6}({VT_11:0}ReadOnly: WordBool): HResult; stdcall;
    function  Get_Font {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_9:1}out Font: IDispatch): HResult; stdcall;
    function  Set_Font {Flags(1), (1/1) CC:4, INV:4, DBG:6}({VT_9:0}const Font: IDispatch): HResult; stdcall;
    function  Get_SpecialEffect {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_3:1}out Effect: Integer): HResult; stdcall;
    function  Set_SpecialEffect {Flags(1), (1/1) CC:4, INV:4, DBG:6}({VT_3:0}Effect: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DRecipientControl
// Flags:     (4112) Hidden Dispatchable
// GUID:      {0006F025-0000-0000-C000-000000000046}
// *********************************************************************//
  _DRecipientControl = dispinterface
    ['{0006F025-0000-0000-C000-000000000046}']
    property Enabled {Flags(2), (0/0) CC:0, INV:2, DBG:6}: WordBool dispid -514;
    property BackColor {Flags(2), (0/0) CC:0, INV:2, DBG:6}: Integer dispid -501;
    property ForeColor {Flags(2), (0/0) CC:0, INV:2, DBG:6}: Integer dispid -513;
    property ReadOnly {Flags(2), (0/0) CC:0, INV:2, DBG:6}: WordBool dispid -2147356664;
    property Font {Flags(2), (0/0) CC:0, INV:2, DBG:6}: IDispatch dispid -512;
    property SpecialEffect {Flags(2), (0/0) CC:0, INV:2, DBG:6}: Integer dispid 12;
  end;

// *********************************************************************//
// DispIntf:  _DRecipientControlEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {D87E7E17-6897-11CE-A6C0-00AA00608FAA}
// *********************************************************************//
  _DRecipientControlEvents = dispinterface
    ['{D87E7E17-6897-11CE-A6C0-00AA00608FAA}']
  end;

// *********************************************************************//
// Interface: _IDocSiteControl
// Flags:     (4112) Hidden Dispatchable
// GUID:      {43507DD0-811D-11CE-B565-00AA00608FAA}
// *********************************************************************//
  _IDocSiteControl = interface(IDispatch)
    ['{43507DD0-811D-11CE-B565-00AA00608FAA}']
    function  Get_ReadOnly {Flags(1), (1/1) CC:4, INV:2, DBG:6}({VT_11:1}out ReadOnly: WordBool): HResult; stdcall;
    function  Set_ReadOnly {Flags(1), (1/1) CC:4, INV:4, DBG:6}({VT_11:0}ReadOnly: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DDocSiteControl
// Flags:     (4112) Hidden Dispatchable
// GUID:      {0006F026-0000-0000-C000-000000000046}
// *********************************************************************//
  _DDocSiteControl = dispinterface
    ['{0006F026-0000-0000-C000-000000000046}']
    property ReadOnly {Flags(2), (0/0) CC:0, INV:2, DBG:6}: WordBool dispid -2147356664;
  end;

// *********************************************************************//
// DispIntf:  _DDocSiteControlEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {50BB9B50-811D-11CE-B565-00AA00608FAA}
// *********************************************************************//
  _DDocSiteControlEvents = dispinterface
    ['{50BB9B50-811D-11CE-B565-00AA00608FAA}']
  end;

// *********************************************************************//
// The Class CoSyncObject provides a Create and CreateRemote method to          
// create instances of the default interface _SyncObject exposed by              
// the CoClass SyncObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSyncObject = class
    class function Create: _SyncObject;
    class function CreateRemote(const MachineName: string): _SyncObject;
  end;

// *********************************************************************//
// The Class CoExplorer provides a Create and CreateRemote method to          
// create instances of the default interface _Explorer exposed by              
// the CoClass Explorer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoExplorer = class
    class function Create: _Explorer;
    class function CreateRemote(const MachineName: string): _Explorer;
  end;

// *********************************************************************//
// The Class CoInspector provides a Create and CreateRemote method to          
// create instances of the default interface _Inspector exposed by              
// the CoClass Inspector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInspector = class
    class function Create: _Inspector;
    class function CreateRemote(const MachineName: string): _Inspector;
  end;

// *********************************************************************//
// The Class CoMailItem provides a Create and CreateRemote method to          
// create instances of the default interface _MailItem exposed by              
// the CoClass MailItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMailItem = class
    class function Create: _MailItem;
    class function CreateRemote(const MachineName: string): _MailItem;
  end;

// *********************************************************************//
// The Class CoAppointmentItem provides a Create and CreateRemote method to          
// create instances of the default interface _AppointmentItem exposed by              
// the CoClass AppointmentItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAppointmentItem = class
    class function Create: _AppointmentItem;
    class function CreateRemote(const MachineName: string): _AppointmentItem;
  end;

// *********************************************************************//
// The Class CoMeetingItem provides a Create and CreateRemote method to          
// create instances of the default interface _MeetingItem exposed by              
// the CoClass MeetingItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMeetingItem = class
    class function Create: _MeetingItem;
    class function CreateRemote(const MachineName: string): _MeetingItem;
  end;

// *********************************************************************//
// The Class CoTaskItem provides a Create and CreateRemote method to          
// create instances of the default interface _TaskItem exposed by              
// the CoClass TaskItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTaskItem = class
    class function Create: _TaskItem;
    class function CreateRemote(const MachineName: string): _TaskItem;
  end;

// *********************************************************************//
// The Class CoOutlookApplication provides a Create and CreateRemote method to          
// create instances of the default interface _Application exposed by              
// the CoClass OutlookApplication. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOutlookApplication = class
    class function Create: _Application;
    class function CreateRemote(const MachineName: string): _Application;
  end;

  TOutlookApplicationItemSend = procedure(Sender: TObject;  {Flags(3), (2/2) CC:4, INV:1, DBG:9}var {VT_9:0}Item: OleVariant;
                                                                                                var {VT_11:1}Cancel: OleVariant) of object;
  TOutlookApplicationReminder = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_9:0}Item: OleVariant) of object;
  TOutlookApplicationOptionsPagesAdd = procedure(Sender: TObject;  {Flags(3), (1/1) CC:4, INV:1, DBG:9}var {VT_29:1}Pages: OleVariant) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOutlookApplication
// Help String      : 
// Default Interface: _Application
// Def. Intf. DISP? : No
// Event   Interface: ApplicationEvents
// TypeFlags        : (11) AppObject CanCreate Predeclid
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TOutlookApplicationProperties= class;
{$ENDIF}
  TOutlookApplication = class(TOleServer)
  private
    FOnItemSend: TOutlookApplicationItemSend;
    FOnNewMail: TNotifyEvent;
    FOnReminder: TOutlookApplicationReminder;
    FOnOptionsPagesAdd: TOutlookApplicationOptionsPagesAdd;
    FOnStartup: TNotifyEvent;
    FOnQuit: TNotifyEvent;
    FAutoQuit:    Boolean;
    FIntf:        _Application;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TOutlookApplicationProperties;
    function      GetServerProperties: TOutlookApplicationProperties;
{$ENDIF}
    function      GetDefaultInterface: _Application;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
  {CoClassWriteArrayPropMethods}
// StdProp:
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Application;
// StdProp:TOleEnum
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:3}: OlObjectClass;
// StdProp:
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _NameSpace;
// StdProp:IDispatch
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:
    function  Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
// StdProp:WideString
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:
    function  Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: COMAddIns;
// StdProp:
    function  Get_Explorers {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Explorers;
// StdProp:
    function  Get_Inspectors {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Inspectors;
// StdProp:
    function  Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: LanguageSettings;
// StdProp:WideString
    function  Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:
    function  Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
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
    function  ActiveExplorer {Flags(1), (1/0) CC:0, INV:1, DBG:3}: _Explorer;
    function  ActiveInspector {Flags(1), (1/0) CC:0, INV:1, DBG:3}: _Inspector;
    function  CreateItem {Flags(1), (2/1) CC:0, INV:1, DBG:3}({VT_29:0}ItemType: OlItemType): IDispatch;
    function  CreateItemFromTemplate {Flags(1), (3/1) CC:0, INV:1, DBG:3}({VT_8:0}const TemplatePath: WideString): IDispatch; overload;
    function  CreateItemFromTemplate {Flags(1), (3/2) CC:0, INV:1, DBG:3}({VT_8:0}const TemplatePath: WideString; 
                                                                          {VT_12:0}InFolder: OleVariant): IDispatch; overload;
    function  CreateObject {Flags(1), (2/1) CC:0, INV:1, DBG:3}({VT_8:0}const ObjectName: WideString): IDispatch;
    function  GetNamespace {Flags(1), (2/1) CC:0, INV:1, DBG:3}({VT_8:0}const Type_: WideString): _NameSpace;
    procedure Quit {Flags(1), (0/0) CC:0, INV:1, DBG:3};
    function  ActiveWindow {Flags(1), (1/0) CC:0, INV:1, DBG:3}: IDispatch;
    property  DefaultInterface: _Application read GetDefaultInterface;
  {CoClassWriteProperties}
    property Application {Flags(2), (1/0) CC:0, INV:2, DBG:2}: _Application read Get_Application;
    property Class_ {Flags(2), (1/0) CC:0, INV:2, DBG:2}: OlObjectClass read Get_Class_;
    property Session {Flags(2), (1/0) CC:0, INV:2, DBG:2}: _NameSpace read Get_Session;
    property Parent {Flags(2), (1/0) CC:0, INV:2, DBG:2}: IDispatch read Get_Parent;
    property Assistant {Flags(2), (1/0) CC:0, INV:2, DBG:2}: Assistant read Get_Assistant;
    property Name {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Name;
    property Version {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_Version;
    property COMAddIns {Flags(2), (1/0) CC:0, INV:2, DBG:2}: COMAddIns read Get_COMAddIns;
    property Explorers {Flags(2), (1/0) CC:0, INV:2, DBG:2}: _Explorers read Get_Explorers;
    property Inspectors {Flags(2), (1/0) CC:0, INV:2, DBG:2}: _Inspectors read Get_Inspectors;
    property LanguageSettings {Flags(2), (1/0) CC:0, INV:2, DBG:2}: LanguageSettings read Get_LanguageSettings;
    property ProductCode {Flags(2), (1/0) CC:0, INV:2, DBG:2}: WideString read Get_ProductCode;
    property AnswerWizard {Flags(2), (1/0) CC:0, INV:2, DBG:2}: AnswerWizard read Get_AnswerWizard;
    property FeatureInstall {Flags(2), (1/0) CC:0, INV:2, DBG:2}: MsoFeatureInstall read Get_FeatureInstall write Set_FeatureInstall;
  {CoClassWriteProperties}
  published
    property AutoQuit: Boolean read FAutoQuit write FAutoQuit; 
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TOutlookApplicationProperties read GetServerProperties;
{$ENDIF}
  {CoClassWriteEventDecls}
    property OnItemSend: TOutlookApplicationItemSend read FOnItemSend write FOnItemSend;
    property OnNewMail: TNotifyEvent read FOnNewMail write FOnNewMail;
    property OnReminder: TOutlookApplicationReminder read FOnReminder write FOnReminder;
    property OnOptionsPagesAdd: TOutlookApplicationOptionsPagesAdd read FOnOptionsPagesAdd write FOnOptionsPagesAdd;
    property OnStartup: TNotifyEvent read FOnStartup write FOnStartup;
    property OnQuit: TNotifyEvent read FOnQuit write FOnQuit;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TOutlookApplication
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TOutlookApplicationProperties = class(TPersistent)
  private
    FServer:    TOutlookApplication;
    function    GetDefaultInterface: _Application;
    constructor Create(AServer: TOutlookApplication);
  protected
// StdProp:
    function  Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Application;
// StdProp:TOleEnum
    function  Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:3}: OlObjectClass;
// StdProp:
    function  Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _NameSpace;
// StdProp:IDispatch
    function  Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
// StdProp:
    function  Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
// StdProp:WideString
    function  Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:WideString
    function  Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:
    function  Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: COMAddIns;
// StdProp:
    function  Get_Explorers {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Explorers;
// StdProp:
    function  Get_Inspectors {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Inspectors;
// StdProp:
    function  Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: LanguageSettings;
// StdProp:WideString
    function  Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
// StdProp:
    function  Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
// StdProp:TOleEnum
    function  Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoFeatureInstall;
// StdProp:TOleEnum
    procedure Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FeatureInstall: MsoFeatureInstall);
  public
    property DefaultInterface: _Application read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoContactItem provides a Create and CreateRemote method to          
// create instances of the default interface _ContactItem exposed by              
// the CoClass ContactItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoContactItem = class
    class function Create: _ContactItem;
    class function CreateRemote(const MachineName: string): _ContactItem;
  end;

// *********************************************************************//
// The Class CoDistListItem provides a Create and CreateRemote method to          
// create instances of the default interface _DistListItem exposed by              
// the CoClass DistListItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDistListItem = class
    class function Create: _DistListItem;
    class function CreateRemote(const MachineName: string): _DistListItem;
  end;

// *********************************************************************//
// The Class CoDocumentItem provides a Create and CreateRemote method to          
// create instances of the default interface _DocumentItem exposed by              
// the CoClass DocumentItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDocumentItem = class
    class function Create: _DocumentItem;
    class function CreateRemote(const MachineName: string): _DocumentItem;
  end;

// *********************************************************************//
// The Class CoExplorers provides a Create and CreateRemote method to          
// create instances of the default interface _Explorers exposed by              
// the CoClass Explorers. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoExplorers = class
    class function Create: _Explorers;
    class function CreateRemote(const MachineName: string): _Explorers;
  end;

// *********************************************************************//
// The Class CoInspectors provides a Create and CreateRemote method to          
// create instances of the default interface _Inspectors exposed by              
// the CoClass Inspectors. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInspectors = class
    class function Create: _Inspectors;
    class function CreateRemote(const MachineName: string): _Inspectors;
  end;

// *********************************************************************//
// The Class CoFolders provides a Create and CreateRemote method to          
// create instances of the default interface _Folders exposed by              
// the CoClass Folders. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFolders = class
    class function Create: _Folders;
    class function CreateRemote(const MachineName: string): _Folders;
  end;

// *********************************************************************//
// The Class CoItems provides a Create and CreateRemote method to          
// create instances of the default interface _Items exposed by              
// the CoClass Items. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoItems = class
    class function Create: _Items;
    class function CreateRemote(const MachineName: string): _Items;
  end;

// *********************************************************************//
// The Class CoJournalItem provides a Create and CreateRemote method to          
// create instances of the default interface _JournalItem exposed by              
// the CoClass JournalItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoJournalItem = class
    class function Create: _JournalItem;
    class function CreateRemote(const MachineName: string): _JournalItem;
  end;

// *********************************************************************//
// The Class CoNameSpace provides a Create and CreateRemote method to          
// create instances of the default interface _NameSpace exposed by              
// the CoClass NameSpace. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNameSpace = class
    class function Create: _NameSpace;
    class function CreateRemote(const MachineName: string): _NameSpace;
  end;

// *********************************************************************//
// The Class CoNoteItem provides a Create and CreateRemote method to          
// create instances of the default interface _NoteItem exposed by              
// the CoClass NoteItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNoteItem = class
    class function Create: _NoteItem;
    class function CreateRemote(const MachineName: string): _NoteItem;
  end;

// *********************************************************************//
// The Class CoOutlookBarGroups provides a Create and CreateRemote method to          
// create instances of the default interface _OutlookBarGroups exposed by              
// the CoClass OutlookBarGroups. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOutlookBarGroups = class
    class function Create: _OutlookBarGroups;
    class function CreateRemote(const MachineName: string): _OutlookBarGroups;
  end;

// *********************************************************************//
// The Class CoOutlookBarPane provides a Create and CreateRemote method to          
// create instances of the default interface _OutlookBarPane exposed by              
// the CoClass OutlookBarPane. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOutlookBarPane = class
    class function Create: _OutlookBarPane;
    class function CreateRemote(const MachineName: string): _OutlookBarPane;
  end;

// *********************************************************************//
// The Class CoOutlookBarShortcuts provides a Create and CreateRemote method to          
// create instances of the default interface _OutlookBarShortcuts exposed by              
// the CoClass OutlookBarShortcuts. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOutlookBarShortcuts = class
    class function Create: _OutlookBarShortcuts;
    class function CreateRemote(const MachineName: string): _OutlookBarShortcuts;
  end;

// *********************************************************************//
// The Class CoPostItem provides a Create and CreateRemote method to          
// create instances of the default interface _PostItem exposed by              
// the CoClass PostItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPostItem = class
    class function Create: _PostItem;
    class function CreateRemote(const MachineName: string): _PostItem;
  end;

// *********************************************************************//
// The Class CoRemoteItem provides a Create and CreateRemote method to          
// create instances of the default interface _RemoteItem exposed by              
// the CoClass RemoteItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRemoteItem = class
    class function Create: _RemoteItem;
    class function CreateRemote(const MachineName: string): _RemoteItem;
  end;

// *********************************************************************//
// The Class CoReportItem provides a Create and CreateRemote method to          
// create instances of the default interface _ReportItem exposed by              
// the CoClass ReportItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReportItem = class
    class function Create: _ReportItem;
    class function CreateRemote(const MachineName: string): _ReportItem;
  end;

// *********************************************************************//
// The Class CoTaskRequestAcceptItem provides a Create and CreateRemote method to          
// create instances of the default interface _TaskRequestAcceptItem exposed by              
// the CoClass TaskRequestAcceptItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTaskRequestAcceptItem = class
    class function Create: _TaskRequestAcceptItem;
    class function CreateRemote(const MachineName: string): _TaskRequestAcceptItem;
  end;

// *********************************************************************//
// The Class CoTaskRequestDeclineItem provides a Create and CreateRemote method to          
// create instances of the default interface _TaskRequestDeclineItem exposed by              
// the CoClass TaskRequestDeclineItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTaskRequestDeclineItem = class
    class function Create: _TaskRequestDeclineItem;
    class function CreateRemote(const MachineName: string): _TaskRequestDeclineItem;
  end;

// *********************************************************************//
// The Class CoTaskRequestItem provides a Create and CreateRemote method to          
// create instances of the default interface _TaskRequestItem exposed by              
// the CoClass TaskRequestItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTaskRequestItem = class
    class function Create: _TaskRequestItem;
    class function CreateRemote(const MachineName: string): _TaskRequestItem;
  end;

// *********************************************************************//
// The Class CoTaskRequestUpdateItem provides a Create and CreateRemote method to          
// create instances of the default interface _TaskRequestUpdateItem exposed by              
// the CoClass TaskRequestUpdateItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTaskRequestUpdateItem = class
    class function Create: _TaskRequestUpdateItem;
    class function CreateRemote(const MachineName: string): _TaskRequestUpdateItem;
  end;

procedure Register;

implementation

uses ComObj;

class function CoSyncObject.Create: _SyncObject;
begin
  Result := CreateComObject(CLASS_SyncObject) as _SyncObject;
end;

class function CoSyncObject.CreateRemote(const MachineName: string): _SyncObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SyncObject) as _SyncObject;
end;

class function CoExplorer.Create: _Explorer;
begin
  Result := CreateComObject(CLASS_Explorer) as _Explorer;
end;

class function CoExplorer.CreateRemote(const MachineName: string): _Explorer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Explorer) as _Explorer;
end;

class function CoInspector.Create: _Inspector;
begin
  Result := CreateComObject(CLASS_Inspector) as _Inspector;
end;

class function CoInspector.CreateRemote(const MachineName: string): _Inspector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Inspector) as _Inspector;
end;

class function CoMailItem.Create: _MailItem;
begin
  Result := CreateComObject(CLASS_MailItem) as _MailItem;
end;

class function CoMailItem.CreateRemote(const MachineName: string): _MailItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MailItem) as _MailItem;
end;

class function CoAppointmentItem.Create: _AppointmentItem;
begin
  Result := CreateComObject(CLASS_AppointmentItem) as _AppointmentItem;
end;

class function CoAppointmentItem.CreateRemote(const MachineName: string): _AppointmentItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AppointmentItem) as _AppointmentItem;
end;

class function CoMeetingItem.Create: _MeetingItem;
begin
  Result := CreateComObject(CLASS_MeetingItem) as _MeetingItem;
end;

class function CoMeetingItem.CreateRemote(const MachineName: string): _MeetingItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MeetingItem) as _MeetingItem;
end;

class function CoTaskItem.Create: _TaskItem;
begin
  Result := CreateComObject(CLASS_TaskItem) as _TaskItem;
end;

class function CoTaskItem.CreateRemote(const MachineName: string): _TaskItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TaskItem) as _TaskItem;
end;

class function CoOutlookApplication.Create: _Application;
begin
  Result := CreateComObject(CLASS_OutlookApplication) as _Application;
end;

class function CoOutlookApplication.CreateRemote(const MachineName: string): _Application;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OutlookApplication) as _Application;
end;

procedure TOutlookApplication.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0006F03A-0000-0000-C000-000000000046}';
    IntfIID:   '{00063001-0000-0000-C000-000000000046}';
    EventIID:  '{0006304E-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOutlookApplication.Connect;
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

procedure TOutlookApplication.ConnectTo(svrIntf: _Application);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TOutlookApplication.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    if FAutoQuit then
      Quit();
    FIntf := nil;
  end;
end;

function TOutlookApplication.GetDefaultInterface: _Application;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TOutlookApplication.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TOutlookApplicationProperties.Create(Self);
{$ENDIF}
end;

destructor TOutlookApplication.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TOutlookApplication.GetServerProperties: TOutlookApplicationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TOutlookApplication.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
   61442: if Assigned(FOnItemSend) then
            FOnItemSend(Self, Params[0] {VT_9:0}{const IDispatch}, Params[1] {VT_11:1}{var WordBool});
   61443: if Assigned(FOnNewMail) then
            FOnNewMail(Self);
   61444: if Assigned(FOnReminder) then
            FOnReminder(Self, Params[0] {VT_9:0}{const IDispatch});
   61445: if Assigned(FOnOptionsPagesAdd) then
            FOnOptionsPagesAdd(Self, Params[0] {VT_29:1}{const PropertyPages});
   61446: if Assigned(FOnStartup) then
            FOnStartup(Self);
   61447: if Assigned(FOnQuit) then
            FOnQuit(Self);
  end; {case DispID}
end;

// StdProp:
function  TOutlookApplication.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Application;
begin
  Result := DefaultInterface.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TOutlookApplication.Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:3}: OlObjectClass;
begin
  Result := DefaultInterface.Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplication.Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _NameSpace;
begin
  Result := DefaultInterface.Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TOutlookApplication.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplication.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
begin
  Result := DefaultInterface.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TOutlookApplication.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TOutlookApplication.Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplication.Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: COMAddIns;
begin
  Result := DefaultInterface.Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplication.Get_Explorers {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Explorers;
begin
  Result := DefaultInterface.Get_Explorers {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplication.Get_Inspectors {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Inspectors;
begin
  Result := DefaultInterface.Get_Inspectors {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplication.Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: LanguageSettings;
begin
  Result := DefaultInterface.Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TOutlookApplication.Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplication.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
begin
  Result := DefaultInterface.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TOutlookApplication.Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoFeatureInstall;
begin
  Result := DefaultInterface.Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TOutlookApplication.Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FeatureInstall: MsoFeatureInstall);
begin
  DefaultInterface.Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}FeatureInstall);
end;

function  TOutlookApplication.ActiveExplorer {Flags(1), (1/0) CC:0, INV:1, DBG:3}: _Explorer;
begin
  Result := DefaultInterface.ActiveExplorer {Flags(1), (1/0) CC:0, INV:1, DBG:7};
end;

function  TOutlookApplication.ActiveInspector {Flags(1), (1/0) CC:0, INV:1, DBG:3}: _Inspector;
begin
  Result := DefaultInterface.ActiveInspector {Flags(1), (1/0) CC:0, INV:1, DBG:7};
end;

function  TOutlookApplication.CreateItem {Flags(1), (2/1) CC:0, INV:1, DBG:3}({VT_29:0}ItemType: OlItemType): IDispatch;
begin
  Result := DefaultInterface.CreateItem {Flags(1), (2/1) CC:0, INV:1, DBG:7}({VT_29:0}ItemType);
end;

function  TOutlookApplication.CreateItemFromTemplate {Flags(1), (3/1) CC:0, INV:1, DBG:3}({VT_8:0}const TemplatePath: WideString): IDispatch;
begin
  Result := DefaultInterface.CreateItemFromTemplate {Flags(1), (3/2) CC:0, INV:1, DBG:7}({VT_8:0}TemplatePath, 
                                                                                         EmptyParam);
end;

function  TOutlookApplication.CreateItemFromTemplate {Flags(1), (3/2) CC:0, INV:1, DBG:3}({VT_8:0}const TemplatePath: WideString; 
                                                                                          {VT_12:0}InFolder: OleVariant): IDispatch;
begin
  Result := DefaultInterface.CreateItemFromTemplate {Flags(1), (3/2) CC:0, INV:1, DBG:7}({VT_8:0}TemplatePath, 
                                                                                         {VT_12:0}InFolder);
end;

function  TOutlookApplication.CreateObject {Flags(1), (2/1) CC:0, INV:1, DBG:3}({VT_8:0}const ObjectName: WideString): IDispatch;
begin
  Result := DefaultInterface.CreateObject {Flags(1), (2/1) CC:0, INV:1, DBG:7}({VT_8:0}ObjectName);
end;

function  TOutlookApplication.GetNamespace {Flags(1), (2/1) CC:0, INV:1, DBG:3}({VT_8:0}const Type_: WideString): _NameSpace;
begin
  Result := DefaultInterface.GetNamespace {Flags(1), (2/1) CC:0, INV:1, DBG:7}({VT_8:0}Type_);
end;

procedure TOutlookApplication.Quit {Flags(1), (0/0) CC:0, INV:1, DBG:3};
begin
  DefaultInterface.Quit {Flags(1), (0/0) CC:0, INV:1, DBG:7};
end;

function  TOutlookApplication.ActiveWindow {Flags(1), (1/0) CC:0, INV:1, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.ActiveWindow {Flags(1), (1/0) CC:0, INV:1, DBG:7};
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TOutlookApplicationProperties.Create(AServer: TOutlookApplication);
begin
  inherited Create;
  FServer := AServer;
end;

function TOutlookApplicationProperties.GetDefaultInterface: _Application;
begin
  Result := FServer.DefaultInterface;
end;

// StdProp:
function  TOutlookApplicationProperties.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Application;
begin
  Result := DefaultInterface.Get_Application {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TOutlookApplicationProperties.Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:3}: OlObjectClass;
begin
  Result := DefaultInterface.Get_Class_ {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplicationProperties.Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _NameSpace;
begin
  Result := DefaultInterface.Get_Session {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:IDispatch
function  TOutlookApplicationProperties.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:3}: IDispatch;
begin
  Result := DefaultInterface.Get_Parent {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplicationProperties.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:3}: Assistant;
begin
  Result := DefaultInterface.Get_Assistant {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TOutlookApplicationProperties.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Name {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TOutlookApplicationProperties.Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_Version {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplicationProperties.Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:3}: COMAddIns;
begin
  Result := DefaultInterface.Get_COMAddIns {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplicationProperties.Get_Explorers {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Explorers;
begin
  Result := DefaultInterface.Get_Explorers {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplicationProperties.Get_Inspectors {Flags(1), (1/0) CC:0, INV:2, DBG:3}: _Inspectors;
begin
  Result := DefaultInterface.Get_Inspectors {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplicationProperties.Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:3}: LanguageSettings;
begin
  Result := DefaultInterface.Get_LanguageSettings {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:WideString
function  TOutlookApplicationProperties.Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:3}: WideString;
begin
  Result := DefaultInterface.Get_ProductCode {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:
function  TOutlookApplicationProperties.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:3}: AnswerWizard;
begin
  Result := DefaultInterface.Get_AnswerWizard {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
function  TOutlookApplicationProperties.Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:3}: MsoFeatureInstall;
begin
  Result := DefaultInterface.Get_FeatureInstall {Flags(1), (1/0) CC:0, INV:2, DBG:7};
end;

// StdProp:TOleEnum
procedure TOutlookApplicationProperties.Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:3}({VT_29:0}FeatureInstall: MsoFeatureInstall);
begin
  DefaultInterface.Set_FeatureInstall {Flags(1), (1/1) CC:0, INV:4, DBG:7}({VT_29:0}FeatureInstall);
end;

{$ENDIF}

class function CoContactItem.Create: _ContactItem;
begin
  Result := CreateComObject(CLASS_ContactItem) as _ContactItem;
end;

class function CoContactItem.CreateRemote(const MachineName: string): _ContactItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ContactItem) as _ContactItem;
end;

class function CoDistListItem.Create: _DistListItem;
begin
  Result := CreateComObject(CLASS_DistListItem) as _DistListItem;
end;

class function CoDistListItem.CreateRemote(const MachineName: string): _DistListItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DistListItem) as _DistListItem;
end;

class function CoDocumentItem.Create: _DocumentItem;
begin
  Result := CreateComObject(CLASS_DocumentItem) as _DocumentItem;
end;

class function CoDocumentItem.CreateRemote(const MachineName: string): _DocumentItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DocumentItem) as _DocumentItem;
end;

class function CoExplorers.Create: _Explorers;
begin
  Result := CreateComObject(CLASS_Explorers) as _Explorers;
end;

class function CoExplorers.CreateRemote(const MachineName: string): _Explorers;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Explorers) as _Explorers;
end;

class function CoInspectors.Create: _Inspectors;
begin
  Result := CreateComObject(CLASS_Inspectors) as _Inspectors;
end;

class function CoInspectors.CreateRemote(const MachineName: string): _Inspectors;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Inspectors) as _Inspectors;
end;

class function CoFolders.Create: _Folders;
begin
  Result := CreateComObject(CLASS_Folders) as _Folders;
end;

class function CoFolders.CreateRemote(const MachineName: string): _Folders;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Folders) as _Folders;
end;

class function CoItems.Create: _Items;
begin
  Result := CreateComObject(CLASS_Items) as _Items;
end;

class function CoItems.CreateRemote(const MachineName: string): _Items;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Items) as _Items;
end;

class function CoJournalItem.Create: _JournalItem;
begin
  Result := CreateComObject(CLASS_JournalItem) as _JournalItem;
end;

class function CoJournalItem.CreateRemote(const MachineName: string): _JournalItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_JournalItem) as _JournalItem;
end;

class function CoNameSpace.Create: _NameSpace;
begin
  Result := CreateComObject(CLASS_NameSpace) as _NameSpace;
end;

class function CoNameSpace.CreateRemote(const MachineName: string): _NameSpace;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NameSpace) as _NameSpace;
end;

class function CoNoteItem.Create: _NoteItem;
begin
  Result := CreateComObject(CLASS_NoteItem) as _NoteItem;
end;

class function CoNoteItem.CreateRemote(const MachineName: string): _NoteItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NoteItem) as _NoteItem;
end;

class function CoOutlookBarGroups.Create: _OutlookBarGroups;
begin
  Result := CreateComObject(CLASS_OutlookBarGroups) as _OutlookBarGroups;
end;

class function CoOutlookBarGroups.CreateRemote(const MachineName: string): _OutlookBarGroups;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OutlookBarGroups) as _OutlookBarGroups;
end;

class function CoOutlookBarPane.Create: _OutlookBarPane;
begin
  Result := CreateComObject(CLASS_OutlookBarPane) as _OutlookBarPane;
end;

class function CoOutlookBarPane.CreateRemote(const MachineName: string): _OutlookBarPane;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OutlookBarPane) as _OutlookBarPane;
end;

class function CoOutlookBarShortcuts.Create: _OutlookBarShortcuts;
begin
  Result := CreateComObject(CLASS_OutlookBarShortcuts) as _OutlookBarShortcuts;
end;

class function CoOutlookBarShortcuts.CreateRemote(const MachineName: string): _OutlookBarShortcuts;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OutlookBarShortcuts) as _OutlookBarShortcuts;
end;

class function CoPostItem.Create: _PostItem;
begin
  Result := CreateComObject(CLASS_PostItem) as _PostItem;
end;

class function CoPostItem.CreateRemote(const MachineName: string): _PostItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PostItem) as _PostItem;
end;

class function CoRemoteItem.Create: _RemoteItem;
begin
  Result := CreateComObject(CLASS_RemoteItem) as _RemoteItem;
end;

class function CoRemoteItem.CreateRemote(const MachineName: string): _RemoteItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RemoteItem) as _RemoteItem;
end;

class function CoReportItem.Create: _ReportItem;
begin
  Result := CreateComObject(CLASS_ReportItem) as _ReportItem;
end;

class function CoReportItem.CreateRemote(const MachineName: string): _ReportItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReportItem) as _ReportItem;
end;

class function CoTaskRequestAcceptItem.Create: _TaskRequestAcceptItem;
begin
  Result := CreateComObject(CLASS_TaskRequestAcceptItem) as _TaskRequestAcceptItem;
end;

class function CoTaskRequestAcceptItem.CreateRemote(const MachineName: string): _TaskRequestAcceptItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TaskRequestAcceptItem) as _TaskRequestAcceptItem;
end;

class function CoTaskRequestDeclineItem.Create: _TaskRequestDeclineItem;
begin
  Result := CreateComObject(CLASS_TaskRequestDeclineItem) as _TaskRequestDeclineItem;
end;

class function CoTaskRequestDeclineItem.CreateRemote(const MachineName: string): _TaskRequestDeclineItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TaskRequestDeclineItem) as _TaskRequestDeclineItem;
end;

class function CoTaskRequestItem.Create: _TaskRequestItem;
begin
  Result := CreateComObject(CLASS_TaskRequestItem) as _TaskRequestItem;
end;

class function CoTaskRequestItem.CreateRemote(const MachineName: string): _TaskRequestItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TaskRequestItem) as _TaskRequestItem;
end;

class function CoTaskRequestUpdateItem.Create: _TaskRequestUpdateItem;
begin
  Result := CreateComObject(CLASS_TaskRequestUpdateItem) as _TaskRequestUpdateItem;
end;

class function CoTaskRequestUpdateItem.CreateRemote(const MachineName: string): _TaskRequestUpdateItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TaskRequestUpdateItem) as _TaskRequestUpdateItem;
end;

procedure Register;
begin
  RegisterComponents('Servers',[TOutlookApplication]);
end;

end.
