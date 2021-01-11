// Direct Oracle Access - Main unit
// Copyright 1997 - 2001 Allround Automations
// support@allroundautomations.nl
// http://www.allroundautomations.nl

{$I Oracle.inc}

unit Oracle;         

// Version 1.00 April '97
//   First release
//
// Version 1.01 April '97
//   TOracleQuery.WarningFlags added
//   TOracleQuery.SetVariable date input conversion from string improved
//   FindOCIDLL function improved (Registry, OCIDLL)
//   Parse overhead for large query texts removed (Stripping #13)
//   Oracle Logon-dialog at screen center
//   TOracleQuery.Cursor added
//   Delete variable in property editor now calls DeleteVariable instead of ClearVariables
//
// Version 1.02 May '97
//   Username, Password and Database contain correct values after Logon
//   Using parameter to override OCIDLL
//   UserId parameter check in OracleLogon.Execute
//   Cursor restored after exception in Parse, Describe & Bind
//   OracleLogon.Execute and LogonDialog return True if something changed
//   Function TOracleQuery.FieldIndex added
//   MLSLabel internal datatype corrected from 105 to 106
//   Object ProcedureDescription added
//   Maximum length for errormessage increased to 2000
//   Adjusted for Delphi 3.0
//   {$D-} Directive added
//
// Version 1.03 July '97
//   TProcedureParameter.TypeString returned wrong scale for numbers
//   TOracleQuery.FieldOptional added
//
// Version 2.00 August '97
//   TOracleDataset created
//   TCDA record type corrected for RowId structure
//   TOracleQuery.RowId added
//   TOracleQuery.Describe added
//   TOracleSession.Savepoint & RollbackToSavepoint added
//   TOracleSession.SQLTrace, OptimizerGoal & IsolationLevel added
//   TOracleSession.SetTransaction added
//   Value added to Variables property editor
//
// Version 2.01 August '97
//   TOracleQuery.FieldIsNull & FieldData added
//   TOracleDataSet.QueryRecords optimized
//   TOracleDataSet.LockingMode added
//   Locking bug in TOracleDataSet fixed
//    (string set to null, post, edit again leads to 'Changed by other user')
//
// Version 2.10 September '97
//   TOracleDataSet.QueryAllRecords added
//   TOracleDataSet.RowId added
//   TOracleSession.ErrorMessage added
//   Automatic Master/Detail configuration added
//   TOracleDataSet.EnforceConstraints added
//   Support for Long and Long Raw datatypes as BLOB
//   TOracleSession.Destroy now sets Queries session to nil
//   32K Bug when selecting Longs and Long Raws solved
//   64K Bug with Long and Long Raw INPUT variables solved
//   Floating Point inaccuracy bug in RecordChanged solved
//   Bug solved: when dataset is opened, closed & opened it is always empty
//   Bug solved: Optimize has to be False for DDL statemens (need parse)
//
// Version 2.12 October '97
//   Bug solved: RestoreCursor after parse removed
//   Bug solved: CDA.rpc saved and restored in FetchLong
//   BeforeQuery & AfterQuery events for TOracleDataSet & TOracleQuery
//   TOracleDataSet.Locate implemented for TDBLookupComboBox
//   Thread safety added for multiple sessions
//   Compatibility with Oracle8 RowId's
//   TOracleQuery.GetLongField added
//   TOracleQuery.SetLongVariable added
//   TOracleSession.LogOn now uses olog if available instead of orlon
//
// Version 2.13 October '97
//   TOracleQuery.InternalExecute calls DLLInit for use in DLL's
//   TOracleSession.ThreadSafe property (using Acquire and Release)
//   TOracleSession.ExternalLDA
//
// Version 2.14 October '97
//   Bug fixed in variables property editor with long raw values
//   TOracleDataSet.RefreshMode property
//   TOraclePackage
//
// Version 2.20 October '97
//   Released
//
// Version 2.21 November '97
//   ShowMessage removed from TOracleDataSet.Lookup
//   TOracleQuery.FieldScale & FieldPrecision added
//   Cursor variable introduced for TOracleQuery and TOracleDataSet
//   Array variables introduced to support Array DML
//   Fixed bug for TOracleDataSet.RefreshMode when inserting first record
//
// Version 2.22 November '97
//   TOracleSession.BreakExecution added
//   Detect orant oci dll for SQL*Net 1.x
//   DLLInit gives result codes
//   Fixed bug with MultiSelect DBGrids caused by TOracleDataSet.CompareBookmarks
//
// Version 2.30 December '97
//   TOracleDataSet.CommitOnPost added
//   ErrorLine, ErrorPosition added to TOracleQuery & TOracleDataSet
//
// Version 2.31 December '97
//   Fixed 256 character limit bug in TOracleDataSet StringField (StrPCopy bug!)
//   Time-limited evaluation added
//
// Version 2.32 December '97
//   TOracleQuery.FieldAs... added to be able to avoid variant fields
//
// Version 3.00 B1  Dec '97
//   OracleCI (OCI) Unit added and used for Oracle8 OCI calls
//   procedure InitOCI allows manual OCI initialization
//   ErrorLine, ErrorPosition improved
//   Support for BLOB, CLOB and BFILE field & variable types
//   Support for varchars upto 4000 characters
//   Password expiration
//
// Version 3.00 B2  Jan '98
//   Included 2.32 changes
//   TOracleDataSet now uses TOracleQuery.FieldAs... instead of FieldData
//   TOracleQuery.FieldData made private!
//   POLite detection with database name (sets Session.POLite boolean)
//   POLitesuport (RowId, Savepoints, EnforceConstraint, TranslateMessage)
//   do automatic OCI search if OCIDLL not found
//
// Version 3.00 B3  Jan '98
//   TOracleSession.OnChange event added
//   Close Datasets when Session closes
//   Component editors (Explorer, SQL Editor) added
//   TOracleObject & TOracleReference added
//   TOraclePackage.PackageName can be empty to access functions/procedures
//
// Version 3.00 Feb '98
//   TOracleDataSet.RefreshRecord added (also released as 2.33)
//   Collection objects added
//   Object methods added
//   TOracleLogon component editor added (Logon and Change password)
//   TDateTime truncation for Date fields
//   Records collection initialized to prevent nil object access
//   Solved problem with dates < 1900 with time fraction
//   Quoted identifiers
//   Set password dialog added (TOracleLogon.SetPassword)
//   TOracleSession.BeforeLogOn and AfterLogOn event added
//   Session.FlushObjects added
//   Multiple Longs per dataset
//   TOracleDataSet.Locate improved
//   TOracleQuery.RowId function improved
//
// Version 3.01 March '98
//   Fixed 'List index out of bounds' after insert in empty dataset <> rmNever
//
// Version 3.02 March '98
//   Added Info under a Session
//   Fixed undefined session bug in TOracleQuery.Execute
//   Fixed TOracleSession.ErrorMessage bug for OCI8 causing subsequent access violations
//   Added C++Builder 3 compatibility
//   Fixed "POL-5125, invalid descriptor index" problem for POLITE 3.0 production
//   Fixed TOracleDataSet.Locate bug when QueryAllRecords = False
//
// Version 3.03 April '98
//   Added TOracleDataSet component editor
//   Fixed 'Session undefined' problem with Local datasets on forms with DataModule
//   Always Use OCI7 on non-Oracle8 database to work around OCI8 -> Oracle7 bugs
//   TOracleDataSet.Lookup improved
//   Fixed problem with Master->Detail->Detail
//   Fixed problem with select-list expressions > 30 characters in Net8
//
// Version 3.04 April '98
//   Changed DLLInit procedure: don't test for dll file
//   Fixed Net8 cursor variable bug (access violation)
//
// Version 3.05 May '98
//   Fixed bug with Detail Cursor dataset (showed records from previous master)
//   Changed Locate to disregard trailing spaces (for TOracleProvider)
//   Fixed database link bug for updateable TOracleDataSet (ORA-00942)
//   Fixed Caclulated fields problems with Lookup and Locate
//   Cache TOracleDataSet Constraints at session level
//
//   Removed size_t type which caused a name conflict in C++Builder
//   TOracleEvent component added
//   Added ModifyingMethods boolean constant to allow methods that modify
//     instance attributes. Default value is False
//
//   Added string constants for all text in TOracleLogon
//   Removed glyphs in TOracleLogon dialog
//   TOracleSession.ServerVersion added
//   OCIVersion added to OracleCI unit
//   Improved handling of TOracleLogon.Session property using notification
//
//   TOracleSession.Cursor added
//   TOracleSession.InTransaction added
//   Set CurrentDir to ORACLE_HOME\bin on DLLInit if necessary
//   Fixed 'ORA-01001 invalid cursor' problem with cursor variables in a dataset
//
// Version 3.10 June '98 (Pre-release)
//   OracleDesign unit added to keep designtime stuff out of executable
//   Oracle.inc file added with options and defines
//   Improved 'running-IDE' detection for evaluation version
//   TOracleDataSet.SequenceField added
//   TOracleSession.LogonDatabase property editor added (list with aliases)
//   TOracleLogon.Options extended with ldDatabaseList (enables list with aliases)
//   Display variables in object inspector
//   TOracleDataSet.CachedUpdates property added
//   TOracleDataSet.OnApplyRecord event added
//   TOracleDataSet.DataEvent(deDataChanged) problem fixed regarding detail sync.
//   TOracleSession.BytesPerCharacter function added
//   TOracleSession.MaxVarchar added, allows basic use of multi-byte characters
//   Handle Field access beyond TOracleQuery.Eof
//   Handle variant conversion errors in SetVariable
//   VariableCount, VariableName, VariableType added for TOracleQuery and TOracleDataSet
//   PL/SQL Table support
//   TOracleDataSet.GetUpdatingTable added
//   TOracleQuery.Execute now also triggers OnArrayError event
//   TOracleDataSet can now handle duplicate field names (postfixed with _1, _2, etc)
//   TOracleLogon string constants added, alowing translation of the dialog
//   TOracleProvider component added, enabling Multi-tier support
//
// Version 3.10 June '98 (Final)
//    More robust LogOff for better "server down" and "killed session" handling
//    Fixed problem with zero length string fields in TOracleDataSet
//    Fixed problem with Null values for master fields (access violation)
//    Free internal session on TOracleEvent.Stop
//    Fixed problem with Net8 database list
//    TOraclePackage.CallProcedure now accepts variant array as parameters
//    TOracleDataSet.SetFieldData now sees empty strings as null
//    Solved problem with dates < 1900 with time fraction for Oracle8 Objects
//    Disregard overflow for multi-line strings when checking for changed record
//
// Version 3.11 July '98
//    Treat strings with spaces and nulls the same in TOracleDataSet.RecordChanged
//
// Version 3.12 July '98
//    Optimized record buffer memory allocation for large datasets
//    Fixed 'Index out of bounds' with cached updates and invisible detail records
//    Made some TOracleDataSet methods public for Delphi 4 compatibility
//
// Version 3.13 July '98
//    Delphi 4 compatible
//
// Version 3.15 July '98
//    QBE added
//      - TOracleDataSet.QBEMode property
//      - TOracleNavigator component added to support QBE
//    LogonDialog Form is now AlwaysOnTop
//    Fixed 'record has been changed by another user' after insert in POLITE
//    Fixed Net8 logon problem for externally identified users
//    Handled TNSNAMES.ORA exceptions
//    Fixed Master/Detail problem with detail char foreign key columns
//    Fixed DBEdit Master read-only problem
//    Fixed Detail/Master creation order problem
//    Fixed problem with TLOBLocator.Read and Write with Count = 0
//    Position of LOBFields is now always 0 after TOracleQuery.Execute and Next
//    Raise exception for Array DML when not all arrays are of equal size
//    Fixed problem with POLITE logon and ldDatabaseList option
//    Fixed problem with duplicate datasets in TOracleSession.ApplyUpdates
//    TOracleSession.InTransaction no longer needs access to v$transaction
//    TOracleEvent.Synchronized added
//    Solved TOracleSession.BreakExecution blocking problem on SQL*Net 2.3
//    TOracleEvent now also returns raw and rowid items in a message
//    Check for missing rowid's for OnApplyRecord event
//
//  Version 3.20 August '98
//    Added support for standard Oracle packages in TOracleSession
//    Session destroy notification for TOracleEvent and TOraclePackage
//    Master destroy notification for TOracleDataSet
//    Circular master/detail dependencies detected
//    Added the ability to locate a rowid in TOracleDataSet.Locate
//    Fixed problem with more than 2 duplicate fieldnames in a TOracleDataSet
//    Added InternalDebug() to override standard debug messages
//    TOracleSession.BeforeLogon, AfterLogon and OnChange now get called when streamed
//    Fixed problem with untranslateable SetPassword dialog buttons
//    OracleExplorer and SQLEditor Logon button behaviour changed
//
//  Version 3.21 September '98
//    Fixed 'stack overflow' problem with LookupCombobox in Delphi 4
//    Prevented AfterLogon and OnChange event before all components are read
//
//  Version 3.22 September '98
//    Properly fixed the 'stack overflow' problem
//    Fixed List index out of bounds for Master/Detail/Detail with creation order DDM
//    Fixed ReadOnly problem with DBMemo's in master dataset
//
//  Version 3.23 October '98
//  a:
//    Adjusted TOracleSession.ServerVersion
//    TOracleSession.BytesPerCharacter (and CharacterSize) implemented properly
//    Global TrimStringFields boolean added (default = True) to prevent trimming
//    TOracleSession.LogOff no longer reuses Net8 handles to avoid memory leaks
//  b:
//    TOracleQuery.rowidhp deallocated properly (memory leak when closing query)
//  c:
//    TOracleQuery.FieldAsString now works correctly for all dates
//    TOracleDataSet.RecNo could not be set to the last record
//    QBE Error (Access Violation) when only some fields are persistent
//    TOraclePackage.GetParameter now also accepts a name if ParameterMode = pmNamed
//    National characters in identifiers are handled correctly now
//    Fixed QBE error with FOR UPDATE without ORDER BY
//    Improved evaluation check: Now works correctly for DLLs
//    Fixed problem with strings > 255 characters in TOracleProvider (Invalid field type)
//    TOracleQuery.Execute is now virtual
//    Fixed ocidll=<filename> parameter which did not work
//    Fixed occasional "Invalid pointer" in TOracleProvider for Delphi 3
//    EOracleError messages limited to 1023 characters to prevent Delphi IDE crashes
//    Fixed Net8 cache memory leak when fetching Oracle8 REF's
//
//  Version 3.24 December 98
//    When describe goes wrong, force reparse for Net8 OCI7 mode bug (no statement parsed)
//    Notification from private to public
//    Unlock record when an Exception (not EOracleError) occurs in OnApplyRecord
//    Fixed access violation bug for OracleDataSet.RowId when dataset is empty
//
//  Version 3.25 January 99
//    Disable detail synchronization when ControlsDisabled
//    Recognize Open Client Adapter 6.0 for Oracle Lite 3.5
//    Global OracleHome variable added to OracleCI unit
//    TOracleDataSet.CloseAll added to close all cursors associated with a dataset
//    Use savepoints for Oracle Lite 3.5 in a TOracleDataSet
//
//  Version 3.26
//    Componenteditor dialogs now respond to Enter & Esc
//    TOracleQuery.Cancel added
//
//  Version 3.3.0 B1 May '99
//    TOracleDataSet Filtering
//    Fixed problem with POLite and 32 bits integers
//    Fixed problem with embedded objects starting at non-4-byte offset
//    Fixed problem with inherited modules with Variables and QBEDefinition properties
//    TOracleSession.DesignConnection property added
//    TOracleDataSet.DesignActivation property added
//    RefreshOptions added:
//    - roBeforeEdit: Refreshes fields when a user starts to edit a record
//    - roAfterInsert: Refreshes fields after a record is inserted
//    - roAfterUpdate: Refreshes fields after a record is inserted
//    - roAllFields: Refreshes all fields, not just the fkData fields
//    RefreshMode obsolete: replaced by RefreshOptions
//    Substitution variables added
//    TOracleQuery.VariableIndex and TOracleDataSet.VariableIndex added
//    TOracleSession.MessageTable added
//    TOracleDataSet.OracleDictionary added:
//    - EnforceConstraints: Enforce constraints as defined on the server
//    - DisabledConstraints: List of constraints that will not be enforced
//    - UseMessageTable: Translate constraint-messages through Session.MessageTable
//    - FieldKinds: Check which fields are fkData and which are fkInternalCalc
//    - DefaultValues: Apply defaults defined for the table to new records
//    - DynamicDefaults: Determine default values for each new record
//    - DisplayFormats: Determine the DisplayFormat for TFloatFields
//    - RangeValues: Determine the MinValue and MaxValue for TNumericFields
//    TOracleDataSet.CountQueryHits added
//    TOracleQuery.Field... functions now use overloading for Delphi 4 and C++Builder 4
//    TOraclePackage.GetParameter overloaded for Delphi 4 and C++Builder 4
//    OracleData.dm... string constants to allow message translation
//    OracleDataSet.OnApplyRecord support functions added:
//    - DeclareQueryVariables: Declare variables of a query according field types
//    - SetQueryVariables: Set variables of a query according to field values
//    - GetQueryVariabes: Get variables of a query and update field values
//    - CompareQueryVariables: Compare variables with field values
//    SetVariable for a long raw field now also accepts a string
//    Fixed bug: close/open master dataset could cause master fields to be readonly
//    Fixed bug: leaving a record with validation errors twice would cancel it the second time
//    TOracleDataSet.UniqueFields added to support updateable views with "instead of" triggers
//    Oracle8i connection corrections and additions
//    - Handle multiple Oracle homes
//    - Use oci.dll if available
//    - OCI81 and OCI81Detected added
//    - New ORACLEHOME= parameter to force a certain Oracle home (by name)
//    - BuildOracleHomeList added to fill OracleHomeList
//    Alias list now works correctly on Net8 with ForceOCI7
//    Fixed "list index out of bounds" for OracleProvider without UniqueFields
//    TLobLocator.LoadFromFile & SaveToFile added
//    ErrorLine and ErrorPosition now works on Net8.1
//    Only call OnFilterRecord if Filtered = True
//    GetLongField could not retrieve pieces > 64K on SQL*Net 2.x
//    Reset all relevant variables in DLLExit
//    Fixed POLite problem with TOracleLogon when logging on to connected session
//    Fixed problem with TOracleDataSet.RowId while ControlsDisabled
//    TOracleSession preferences added:
//    - FloatPrecision: Maximum precision to be represented a TFloatField
//    - IntegerPrecision: Maximum precision to be represented a TIntegerField
//    - SmallIntPrecision: : Maximum precision to be represented a TSmallIntField
//    - UseOCI7: Use OCI7 on Net8 for this session
//    - ConvertCRLF: Convert between CRLF pairs (Client) and LF (Server)
//    - TrimStringFields: Remove trailing spaces from dataset fields
//    TOracleQuery.StringFieldsOnly and TOracleDataSet.StringFieldsOnly added
//    New variable type otPLSQLString (PL/SQL String) added for 32KB strings
//    New variable type otChar (Fixed Length) added for blank-padded compares
//    TOracleSession.CheckConnection added
//    TOracleDataSet would use TOracleSession.Cursor for savepoint functions
//    More OCI initialization diagnostics
//    Corrected OracleNavigator hints problem
//    TOracleSession.RollbackOnDisconnect added
//    Fixed bug: TOracleSession.CancelUpdates would go wrong for inactive datasets
//    TOracleSession.AutoCommit is now obsolete
//
//  Version 3.3.0 B2  May '99
//    Added print and font buttons to SQL Editor and Explorer
//    TOracleDataSet.AfterFetchRecord event added
//    Fixed problem with CountQueryHits for select statement without where-clause
//    Fixed problem with CountQueryHits in QBE mode
//    Fixed problem with table alias and RefreshOption roAllFields
//    Fixed problem with quoted identifiers in enforced check constraints
//    Fixed access violation when using Net8 8.1 on an Oracle7 database
//    TOracleQuery can now run in Threaded mode:
//    - Threaded property added
//    - OnThread... Events added
//    - BreakThread added
//    - ThreadIsRunning added
//    - State added
//    SQL Editor now runs in Threaded mode and has a Break button
//    TOracleDataSet.SearchRecord added
//    TOracleDataSet.Lookup and Locate speed improvements
//
//  Version 3.3.0 June '99
//    Added TOracleDataSet.ExecSQL and SetLongVariable for Rubicon 2
//    Added TOracleDataSet.SetComplexVariable & GetComplexVariable for ASTA
//    TOracleQuery.ThreadSynchronized added
//    Bugfix: TOracleQuery.RowId did not work on Net8 8.1
//    OracleAliasList now recognizes include files in tnsnames.ora
//    TOracleLogon.AliasDropDownCount added
//    Added a warning when canceling SQL Editor with changes
//    Fixed minor problem with TOracleDataSet SQL Editor title
//    CheckConnection checks for "maximum open cursors exceeded" error
//    TOracleQuery.RowCount added (counts accurate, unlike RowsProcessed)
//    New evaluation check
//    TOracleDataSet.CountAllRecords added (gives a more 'natural' scrollbar)
//    TOracleQuery and TOracleDataSet.DeleteVariable added
//    Link to (and from) PL/SQL Developer from SQL Editor
//    Fixed problem with master/detail setup across data modules
//    You can now access Field.NewValues in the TOracleDataSet.AfterFetchRecord event
//    Fixed problem with truncated detail dataset after master refresh
//    Reactivate dataset when OracleDictionary.DisplayFormats changes
//    Double-click used in DisabledConstraints property editor
//    Info with license information
//    TNS_ADMIN environment variable supported for alias list
//    TField.DisplayWidth changed if TOracleDataSet.Preferences.DisplayFormats is set
//
//  Version 3.3.1 July '99
//    OracleHome would not be detected if the Home directory is not in the PATH
//    SQL*Net in inclomplete Mulitple Oracle Home could not be initialized
//    TOraclePackage.SetVariable didn't work
//    TBlobField.IsNull would not return correct value
//    Multiple BlobFields and CachedUpdates could lead to unexpected NULLs
//    Move statements to empty strings would fail for users who compile with range checking
//    CountAllRecords did not work when reopening a dataset, only when refreshing
//    TOracleDataSet.Close did not clear the change log for CachedUpdates
//    Rowid's with an alias would not be used as a rowid by TOracleDataSet
//    New TOracleSession.Preference: MaxStringFieldSize (larger strings => TMemoField)
//    OnApplyRecord events for Lock and Check have been combined when fired simultaneously
//    TOracleDataSet.Locate, Lookup and SearchRecord could not search on Lookup-fields
//    Long and Long Raw variables could lead to ORA-03113 (Net8.1) or corrupted data (Net8.0)
//      on Oracle8 when SetLongVariable is used with the same address several times
//    Array DML and PL/SQL Tables could lead to access violations on Net8 and Oracle8
//      when array size varied between calls to TOracleQuery.Execute
//    RefreshOption roAllFields did not work for Inline subqueries
//    Lock did not work if LockingMode = lmLockImmediate and roAllFields in RefreshOptions
//      if the query uses an alias for the updating table
//    TOracleDataSet.SearchRecord, Locate and Lookup would give an AV on a closed dataset
//    TOracleQuery.Rowid would give an AV on Net8 8.1 if statement did not return a rowid
//    TOracleDataSet would give an AV with Net8 8.1 on Oracle8 8.0 for inserts
//    Automatic Master/Detail configuration did not work if Master is an inherited component
//    TOracleDataSet.ForceMasterSynchronization added, to force synchronization of a
//      detail dataset when Master.ControlsDisabled = True
//    TOracleDataSet.Locate could not perform a partial key match on numeric fields
//    Modified evaluation check
//
//  Version 3.3.2 March 2000
//    Modified records would not be posted and empty records would not be cancelled
//      when the thumb position was moved in a DBGrid
//    AfterScroll would not be called when the thumb position was moved in a DBGrid
//    Could not pass array parameters to TOraclePackage.Call...
//    Using updateable views with instead of triggers would lead to error
//    BuildOracleHomeList can now handle a HomeCount of 0
//    LogonDialog with LogonHistory
//    Fixed small memory leak in ReadRegString by adding RegCloseKey(Handle);
//    MLSLabel conversion error fixed
//    CheckNet8 error message improved
//    TOracleEvent.OnStart, OnStop and OnError added
//    Fixed error in SetTransaction(tmSerializable);
//    Fixed problem with QBE when a group by query has a having clause
//    TNS_ADMIN detection improved for multiple oracle_home's
//    TOracleDataSet.RecordCount now checks if dataset is Active
//    Delphi 5 Provider Support improvements:
//    - Fixed problem if Primary Key fields were not included in the dataset
//    - Fixed problem with CLOB and BLOB updates when ResolveToDataSet = False
//    - Supported IndexDefs default_order, primary_key and unique_key
//    - Added support for nested datasets (designed by Jim Poe)
//    Fixed problem with wrong detail records for new master record when
//      navigating through empty detail dataset if Detail.QueryAllRecords = False,
//    TOracleSession.Preferences.ZeroDateIsNull added: is TDateTime 0.0 treated as null?
//    Fixed problem with TLOBLocator.FlushBuffer when no updates are buffered
//    Fixed problem with Filter expressions with integer literals >= 2^32
//    Fixed detail synchronization problem after refreshing a master dataset with disabled controls
//    Float data type correctly recognized
//    FloatPrecision and IntegerPrecision used in TOracleObject.GetAttr
//    Fixed problem with PL/SQL Developer interface
//    Made some modifications to the evaluation check
//
//  Version 3.3.3 March 2000
//    TOracleSession.ExternalSVC and Share would not work when OCI is not yet initialized
//    Fixed problem with detail cursor DataSets with initial empty master
//    FloatPrecision and IntegerPrecision used in TOracleObject.SetAttr
//    Fixed problem with Float columns for IntegerPrecision = 38
//    TOracleLogon.HistoryWithPassword would not restore password
//    ErrorLine and ErrorPosition now works correctly for Net8 8.0.5
//    Copying TOracleSession.Preferences would result in access violation
//    Copying TOracleDataSet.OracleDictionary would result in access violation
//    TOracleDataSet.RecordCount could not be used in AfterFetchRecord during Open
//
//  Version 3.4.0 B1 July 2000
//    Support for Oracle Services for MTS added
//    - TOracleSession.MTSOptions
//    - TOracleSession.Pooling
//    Oracle Monitor added
//    - OracleMonitor unit
//    - OracleMonitorIntf unit
//    - TOracleSession.MonitorMessage
//    Working on Kylix compatibility...
//    Delphi 6 compatibility
//    Package Wizard added
//    - OracleTools unit
//    Oracle menu added in IDE (wizard, apps, preferences, docs & info)
//    - OraclePreferences unit
//    Defined Assign, AssignTo and SetProperty procedures for all TPersistent properties
//    - TSessionPreferences
//    - TOracleDictionary
//    - TSequenceField
//    - TQBEDefinition
//    - TVariables
//    Component Editor improvements
//    - Logon dialog(s) with logon history
//    - Settings stored in registry under Software\Allround Automations\DOA
//    - Shortcut keys for OK & Exit buttons in SQL Editor
//    - Variable editor didn't save value when Enter was pressed
//    - Variable editor can now remove variables when Scan SQL button is pressed
//    Field datatype ftOraClob and ftOraBlob supported for Delphi/C++Builder 5
//    - Use TOracleDataSet.UniqueFields to update and delete records to work around
//      Oracle bug regarding view with instead of trigger
//    Fixed problem with float numbers and StringFieldsOnly
//    Fixed extra parse when opening a TOracleDataSet for the first time on Net8
//    Fixed multi-threading problem when first 2 sessions connect simultaneously
//    Fixed problem calling Halt in MainFOrm.OnCreate with a connected session
//    Fixed problem with FieldDefs.Update for active TOracleDataSet
//    TOracleDataSet QBE enhancements
//    - QBEModified property
//    - ClearQBE method
//    - AutoContains option
//    - Runtime QBEDefinition access
//    Fixed AV when setting a Date variable to 0 when Session property is nil
//    Fixed BookmarkValid bug: always returned True
//    TLOBLocator.AsString property added
//
//  Version 3.4.0 B2 July 2000
//    New TOracleScript component added
//    New TOracleDirectPathLoader component added
//    Fixed master/detail synchronization bug
//    Fixed memory leak for MTS pooled sessions
//
//  Version 3.4.0 B3 July 2000
//    Fixed problem with inconstent username/password in OracleExplorer
//    Fixed 'List index out of bounds' for Master-Detail datasets
//    Fixed 'Stack Overflow' that could occur when OracleMonitor was not used
//
//  Version 3.4.0 B4 August 2000
//    Added overloaded Set & GetVariable functions with Index
//    Made MultiSelect in VariablesEditor specific for Delphi 4
//    Fixed 'Field not found' error in TOracleDataSet in inherited forms/frames
//    TOracleEvent.KeepConnection and LogOff added
//    TOracleDataSet.OracleDictionary.RequiredFields added
//    TOracleDataSet.GetUpdatingTable is now virtual
//    TOracleEvent.InternalSession property added
//    Delphi/C++Builder 5 Provider Support improvements:
//    - Params from TClientDataSet copied to TOracleDataSet
//    - Fixed 'UpdatingTable required' error message for cursor datasets
//    Improved handling of null values in TOracleDataSet.Filter
//    Added External Procedure support (ExtProcShare, OCIDate..., OCINumber...)
//    Added QBEMode Font & Background colors
//    Fixed AV bug in QBE component editor
//    Fixed 'List index out of bounds' in ScriptEditor
//    Fixed bad trailing characters in default column values in the Explorer
//    Fixed missing @ in username@database on the status bar in the Explorer
//    Now using RichEdit in ScriptEditor for results (faster)
//    Added Break button to ScriptEditor
//    OracleLogon additions:
//    - Caption property
//    - HistoryIniFile property
//    Fixed 'Duplicate Client ID' problem in OracleMonitor interface
//    Added the following documented functions in Oracle & OracleCI
//    - function TNSNames: string;
//    - function OracleAliasList: TStringList;
//    - function OracleHomeList: TStringList;
//    Added an EOracleWarning design time preference
//    TOracleSession.DoBeforeLogon and DoAfterLogon protected procedures added
//      (for derived classes that need to notify logon changes)
//    Fixed problem with QBE for group by query with having and order by clause
//    TOracleEvent.InternalSession copies SQLTrace property from Session
//    Changing TOracleDataSet.ReadOnly did not notify datasources
//    TOracleSession.DBMS_Output.Get_Line could lead to variant conversion error
//    DetailFields no longer required for master/detail relation
//    Fixed size problem with float columns and StringFieldsOnly
//
//  Version 3.4.0 B5 August 2000
//    Component editors dynamically created sessions now use BytesPerCharacter = bcAuto
//    Improved clNone color behaviour in QBE mode
//    Improved SQLEditor: Smoother display & Hide BLOB and Long Raw
//    Property TOracleSession.Preferences.NullLOBIsEmpty added
//    Fixed QBE problem with subst.variables for where and order by clause
//    Fixed bugr with boolean parameters for object methods
//    Fixed bug when calling static object methods
//    Property TOracleSession.ConnectAs added
//    TOracleLogon.Option ldConnectAs added, and ltConnectAs string constant
//    Oracle Monitor improvements:
//    - Maximum Applications preference added
//    - Clear menu item added for activity list
//    - ClassName displayed instead of '?' for unnamed components
//    - Find function implemented for all panes
//    - Object and Activity context saved when switching between applications
//    Fixed bug causing TOracleDataSet.BeforeQuery event to fire too late
//    Fixed AV bug using OracleMonitor and TOracleEvent components
//
//  Version 3.4.0 Final, August 2000
//    Describe button disabled in Script editor on Script tab page
//    TOracleCommand.Execute would sometimes not return result set
//    OracleHomeName will contain the selected Oracle Home after connecting
//    TOracleDataSet.RecordCount did not include inserted / deleted records if CountAllRecords = True
//
//  Version 3.4.1 August 2000
//    Shared sessions would lead to AV during logoff on SQL*Net 2
//    Package Wizard ignored 'Always use Variants' option
//    Package Wizard did not work correctly on multi-byte character sets (ORA-01026)
//    Removed SyncObjs unit conflict with INETxx package
//    Removed Delphi 3, 4 and C++Builder 3 Professional requirement
//    OracleMonitor unit would hang on termination when used in DLL or OCX
//    Oracle Monitor caused errors when started after TOracleEvent was started
//
//  Version 3.4.2 September 2000
//    Net8 8.0.3 and 8.0.4 would be forced to OCI7 mode
//    Added ExtProcDetected boolean to OracleCI, indicating External Procedure Support
//    Appropriate exception raised when TOracleSessin.ExtProcShare is called on
//      Net8 8.0.3 or 8.0.5 (not supported)
//    On SQL*Net a Logon error would result in a hang-up after a second attempt
//    TOracleScript would not correctly handle PL/SQL Blocks that start with DECLARE
//    TOracleScript would not recognize ANALYZE statements
//    TOracleScript.CommandByName now returns a TOracleCommand (instead of an index)
//    Primary Oracle Home detection could fail for homes with partially matching directories
//    For CachedUpdates, inserting Master + Details required Detail refresh (missing records)
//    Creating collection objects with TOracleObject.Create would lead to OCI-21560
//    When using OracleMonitor in DLL and Main application, it would hang on exit
//    Calling OracleDataSet.ExecSQL would not be displayed correctly in Oracle Monitor
//
//  Version 3.4.3 October 2000
//    Foreign key checks with more than 1 column could sometimes fail
//    OracleCI.OracleHomeName always returned last oracle home name
//    TOracleDataSet provider support: PSExecuteStatement did not support result set
//    TOracleDataSet provider support: default order did not work for prefixed
//      columns in order by clause
//    Package Wizard would always declare PL/SQL Tables of type otString
//    TPLSQLTable with table size 0 would lead to exception
//    TDirectPathLoader columns editor included unsupported packed decimal datatype
//    TDirectPathLoader.GetDefaultColumns now places LONG, LONG RAW, CLOB and
//      BLOB at the end
//    Calling TOracleDataSet.Free for an active dataset could lead to errors
//    TOracleObject.Assign would not copy elements for collection objects
//    TOracleObject.LOBElements added
//    TOracleObject.AddElement added
//    TOracleQuery.DescribeFull added
//    TOracleLogon.HistoryRegSection would not work if first character was a \
//    Fixed memory leak for TOracleDataSet connected to a TDataSetProvider
//    RefreshAllFields and QBE did not work if SQL contained comment in quotes (e.g. '--')
//    In Delphi 5 / C++Builder 5, when simultaneously inserting a master & detail record,
//      the detail record would be posted before the master record
//    TOracleObject did not support mixed case attribute and method names
//    TOracleScript could not handle non-SQL commands terminated with a semicolon
//    TOracleDataSet would not restore TField.ReadOnly & TField.Required properties
//      after QBE mode, if these property values were set at run-time
//    Compound foreign key constraints were incorrectly checked if one or more
//      columns were null when TOracleDataSet.Dictionary.EnforceConstraints = True
//    Package Wizard did not deal with (* or *) in Package Specification
//    Package Wizard would generate incorrect type names for %RowType paremeters
//
//  Version 3.4.4 June 2001
//    DirectPathLoader.Destroy could cause an AV when called after session was logged of
//    TOracleScript fixes:
//    - a command would still be executed if it was handled in OnCommand event
//    - a */ (end comment) would sometimes be interpreted as / (end command)
//    - an AV could occur if in an empty script an empty command was added
//    - if multiple variables were declared with the same name, only the first would get used
//    PackageWizard did not like non-existing directories
//    TLOBLocator.Assign would lead to AV's when source is NULL
//    Assigning NULL LOB to TOracleObject.LOBElements[Index] would lead to AV's
//    Check constraints with partially matching column names would sometimes not
//      be evaluated correctly (ORA-01036) for a TOracleDataSet with CachedUpdates
//    Oracle Date/Time values that cannot be represented in Delphi's TDateTime
//      converted to -693594 (invalid date, displayed as 00-00-0000)
//    TOracleObject.CallMethod did not work on Net8 8.1.7 due to Net8 bug
//    Holding down Ctrl key during logon dialog prevents logon history
//    ParamTypes set in TClientDataSet would always be reset to ptInput
//    Descending items in order by clause did not work in ClientDataSet
//    Upper(column) items in order by clause did not work in ClientDataSet
//    Query Builder added
//    Tab key could not be used in SQL Property Editor
//    Nested Table and Varray parameters would not be handled correctly by Package Wizard
//    Views owned by the current user could not be used in a ClientDataSet
//    Posting an unchanged record with LockingMode = lmLockImmediate would leave the record locked
//    TOracleSession.Share now copies the LogonUsername, LogonPassword and
//      LogonDatabase properties from the source session
//    TOracleDataSet.ExecuteQBE would cause an access violation for an inactive dataset
//    TOracleSession.CheckConnection now also reconnects if Connected = False
//    TOracleDataSet.CommitProviderTransactions run-time property added for Delphi 5 and later
//    SQL Property Editor displayed floating point numbers without precision as integer
//
//  Version 3.4.5 July 2001
//    OracleCI.ExcludedOCIDLLs added: list of excluded OCI DLL's
//    Explore item was missing from TOracleDataSet popup menu
//    Setting TOracleDataSet.Master at design time could cause Access Violation
//    Design time confirmation dialogs could display incorrect button titles
//    Decreasing the array size to 1 for subsequent Array DML statements could cause errors on Net8
//    Delphi6 compatible
//
//
//
//  todo:
//   - TOracleDataSet allows field modifications in browse mode
//   - BUG: PL/SQL Developer hangs after repeatidly executing Test Script with OracleMonitor
//   - Ability to disable monitoring from within application
//   - Lookup combobox & autocalcfields false
//   - Check Quest enhancements
//   - ftBCD support through TOracleSession.Preferences.BCDFieldsOnly
//   - Does StringFieldsOnly fail on MultiByte character sets? (eg. dates)
//   - Fix TOracleQuery.RowId on Net8 8.1 on Oracle8 8.0 ???
//   - Add day check to TOracleSession.DateFormatLength?
//   - Fix LOB Locator cannot span transactions?
//   - Don't raise exceptions when loading TOracleSession.Connected and TOracleDataSet.Active?
//   - BDE compatibility issues (Parameters, TOracleTable, TOracleStoredProc)
//   - XML
//   - Net8 8.1 enhancements (events, AQ)
//   - "Filter" Dialog
//   - TOracleDataSet support for objects
//   - Logon when dataset.active
//   - TOracleLogOn.OnError event
//   - Logo in OracleLogon

interface

{$IFNDEF LINUX}
uses
  WinTypes, Forms, Dialogs, SysUtils, Classes, Controls, DB,
  {$IFDEF CompilerVersion6} Variants, {$ENDIF}
  OracleTypes, OracleCI;
{$ELSE}
uses
  QForms, QDialogs, SysUtils, Classes, QControls, Libc, Qt,
  OracleTypes, OracleCI, Variants, DB, INIFiles;
{$ENDIF}

const // External Oracle Datatypes
  otInteger     = 3;
  otFloat       = 4;
  otString      = 5;
  otLong        = 8;
  otDate        = 12;
  otLongRaw     = 24;
  otBoolean     = 252;  // Does not work as bind variable!
  otCLOB        = 112;
  otBLOB        = 113;
  otBFile       = 114;
  otCursor      = 116;
  otObject      = 108;
  otReference   = 110;
  otDBChar      = 96;
  otChar        = 97;
  otPLSQLString = 10;
  otSubst       = 1;    // Substitution variable, will be replaced in the SQL text

const // Internal Oracle Datatypes
  otVarchar2    = 1;
  otNumber      = 2;
  otVarchar     = 9;
  otRowId       = 11;
  otRaw         = 23;
  otMLSLabel    = 106;
  // Oracle8
  otRowidDesc   = 104;

const
  AbsMaxVarchar = 4000;       // Maximum size of a varchar
  MaxPLSQLStringSize = 32512; // Maximum size of a PL/SQL string

const
  // This integer defines the maximum size of an error message. If this value is
  // greater than 1023 you may get crashes in Delphi's IDE
  MaxOracleMessageSize: Integer = 1023;

const
  // This boolean can be set to True for Net8/Oracle8 versions that allow
  // an object instance to be modified by a method. On version 8.0.3 this
  // can lead to "ORA-03113, End-of-file on communications channel"
  ModifyingMethods: Boolean = False;

{$IFDEF LINUX}
var
  GetTickCount: LongInt = 0;
{$ENDIF}

var // Parameter types must be otXXXX constant cast to varByte in initialization
  parNone: Variant;
  parString: Variant;
  parInteger: Variant;
  parFloat: Variant;
  parDate: Variant;
  parBoolean: Variant;

const // Constants for DBMS Packages
  wsAlert        = 0;  // Wait status: Alert ocurred
  wsTimeOut      = 1;  // Wait status: TimeOut ocurred
  glSuccess      = 0;  // Get line status: Success
  glNoMoreLines  = 1;  // Get line status: No more lines
  cpSuccess      = 0;  // Create pipe: Success
  rpSuccess      = 0;  // Remove pipe: Success
  smSuccess      = 0;  // Send message: Success
  smTimedOut     = 1;  // Send message: Timed out
  smInterrupted  = 3;  // Send message: Interrupted
  rmSuccess      = 0;  // Receive message: Success
  rmTimedOut     = 1;  // Receive message: Timed out
  rmRecordTooBig = 2;  // Receive message: Record too big
  rmInterrupted  = 3;  // Receive message: Interrupted
  niNoMoreItems  = 0;  // Next item: No more items
  niVarchar2     = 9;  // Next item: Varchar2
  niNumber       = 6;  // Next item: Number
  niRowid        = 11; // Next item: Rowid
  niDate         = 12; // Next item: Date
  niRaw          = 23; // Next item: Raw

type
  // Forward declarations
  TOracleQuery = class;
  TOracleSession = class;
  TOracleSessionPool = class;
  TLOBLocator = class;
  TOracleObject = class;
  TOracleReference = class;
  TOracleEvent = class;
  TOraclePackage = class;
  TOracleCommand = class;
  TOracleScript = class;
  TOracleDirectPathLoader = class;
  TDirectPathColumns = class;

  // Low level OCI8 types
  TOCIDate = Pointer;
  TOCINumber = Pointer;

  // EOracleError exception
  EOracleError = class(Exception)
  private
    FErrorCode: Integer;
  public
    constructor Create(ASession: TOracleSession; Error: Integer);
    property ErrorCode:Integer read FErrorCode;
  end;

  EOracleMTSError = class(Exception)
  private
    FErrorCode: Integer;
  public
    constructor Create(const FunctionName: string; Error: Integer; ACPPDummy: Boolean);
    property ErrorCode:Integer read FErrorCode;
  end;

  // Property types
  TNullValueOption = (nvUnAssigned, nvNull);
  TOptimizerGoalOption = (ogUnchanged, ogChoose, ogFirstRows, ogAllRows, ogRule);
  TSQLTraceOption = (stUnchanged, stTrue, stFalse);
  TBytesPerCharacterOption = (bcAutoDetect, bc1Byte, bc2Bytes, bc3Bytes, bc4Bytes);
  TIsolationLevelOption = (ilUnchanged, ilReadCommitted, ilSerializable);
  TTransactionMode = (tmReadOnly, tmReadWrite, tmReadCommitted, tmSerializable);
  TConnectAsOption = (caNormal, caSYSDBA, caSYSOPER);
  TLogonOption  = (ldAuto, ldDatabase, ldDatabaseList, ldLogonHistory, ldConnectAs);
  TLogonOptions = set of TLogonOption;
  TCheckConnectionResult = (ccOK, ccError, ccReconnected);
  TParameterModeOption = (pmNamed, pmPositional);
  TPinOption = (poAny, poLatest, poRecent);
  TPinLockOption = (plNone, plExclusive);
  TQueryState = (qsIdle, qsExecuting, qsFetching);
  TSessionPoolingOption = (spNone, spInternal, spMTS);
  TMTSOption  = (moImplicit, moUniqueServer);
  TMTSOptions = set of TMTSOption;
  TCommandType   = (ctSQL, ctPLSQL, ctNonSQL);
  TScriptOutputOption  = (ooSQL, ooNonSQL, ooData, ooFeedback, ooError);
  TScriptOutputOptions = set of TScriptOutputOption;
  // Some basic Direct Path types
  TDirectPathColumnType = (dpString, dpInteger, dpFloat, dpBinary);
  TDirectPathLogMode = (lmDefault, lmNoLogging);

  // Event types
  TOracleQueryEvent   = procedure(Sender: TOracleQuery) of Object;
  TOracleSessionEvent = procedure(Sender: TOracleSession) of Object;
  TArrayErrorEvent    = procedure(Sender: TOracleQuery; Index: Integer;
    ErrorCode: Integer; const ErrorMessage: string; var Continue: Boolean) of Object;
  TThreadErrorEvent   = procedure(Sender: TOracleQuery;
    ErrorCode: Integer; const ErrorMessage: string) of Object;
  TOracleScriptEvent  = procedure(Sender: TOracleScript) of Object;
  TOracleScriptCommandEvent = procedure(Sender: TOracleScript; var Handled: Boolean) of Object;
  TOracleScriptOutputEvent  = procedure(Sender: TOracleScript; const Msg: string) of Object;

  // DBMS Package types
  TDBMSPackage = class(TObject)
  private
    FName: string;
    Session: TOracleSession;
    Pkg: TOraclePackage;
    function NullString(const v: Variant): Variant;
    function PkgQuery: TOracleQuery;
    function GetDebug: Boolean;
    procedure SetDebug(Value: Boolean);
  public
    constructor Create(ASession: TOracleSession; const AName: string);
    destructor Destroy; override;
    property Name: string read FName;
    property Debug: Boolean read GetDebug write SetDebug;
  end;
  // dbms_alert package
  TDBMS_Alert = class(TDBMSPackage)
  public
    procedure Set_Defaults(const Sensitivity: Integer);
    procedure Register(const Name: string);
    procedure Remove(const Name: string);
    procedure RemoveAll;
    procedure WaitAny(out Name: string; out Message: string; out Status: Integer;
                      const TimeOut: Integer {$IFDEF CompilerVersion4} = 86400000 {$ENDIF});
    procedure WaitOne(const Name: string; out Message: string; out Status: Integer;
                      const TimeOut: Integer {$IFDEF CompilerVersion4} = 86400000 {$ENDIF});
    procedure Signal(const Name: string; const Message: string);
  end;
  // dbms_application_info package
  TDBMS_Application_Info = class(TDBMSPackage)
  public
    procedure Set_Module(const Module_Name: string; const Action_Name: string);
    procedure Set_Action(const Action_Name: string);
    procedure Read_Module(out Module_Name: string; out Action_Name: string);
    procedure Set_Client_Info(const Client_Info: string);
    procedure Read_Client_Info(out Client_Info: string);
  end;
  // dbms_job package
  TDBMS_Job = class(TDBMSPackage)
  public
    procedure Submit(out Job: Integer;
                     const what: string;
                     const Next_Date: TDateTime;
                     const Interval: string {$IFDEF CompilerVersion4} = 'null' {$ENDIF};
                     const No_Parse: Boolean {$IFDEF CompilerVersion4} = False {$ENDIF});
    procedure Remove(const Job: Integer);
    procedure Change(const Job: Integer;
                     const What: string;
                     const Next_Date: TDateTime;
                     const Interval: string);
    procedure What(const Job: Integer; const What: String);
    procedure Next_Date(const Job: Integer; const Next_Date: TDateTime);
    procedure Interval(const Job: Integer; const Interval: string);
    procedure Broken(const Job: Integer;
                     const Broken: Boolean;
                     const Next_Date: TDateTime);
    procedure Run(const Job: Integer);
  end;
  // dbms_output package
  TDBMS_Output = class(TDBMSPackage)
  public
    procedure Enable(const Buffer_Size: Integer {$IFDEF CompilerVersion4} = 20000 {$ENDIF});
    procedure Disable;
    procedure Put(const a: Variant);
    procedure Put_Line(const a: Variant);
    procedure New_Line;
    procedure Get_Line(out Line: string; out Status: integer);
    procedure Get_Lines(out Lines: string; var NumLines: Integer);
  end;
  // dbms_pipe package
  TDBMS_Pipe = class(TDBMSPackage)
  public
    procedure Pack_Message(const Item: Variant);
    procedure Pack_Message_Raw(const Item: string);
    procedure Pack_Message_Rowid(const Item: string);
    procedure Unpack_Message(out Item: Variant);
    procedure Unpack_Message_Raw(out Item: string);
    procedure Unpack_Message_Rowid(out Item: string);
    function  Next_Item_Type: Integer;
    function  Create_Pipe(const PipeName: string;
                          const MaxPipeSize: Integer {$IFDEF CompilerVersion4} = 8192 {$ENDIF};
                          const Private: Boolean {$IFDEF CompilerVersion4} =  True {$ENDIF}): Integer;
    function  Remove_Pipe(const PipeName: string): Integer;
    function  Send_Message(const PipeName: string;
                           const TimeOut: Integer {$IFDEF CompilerVersion4} = 86400000 {$ENDIF};
                           const MaxPipeSize: Integer {$IFDEF CompilerVersion4} = 8192 {$ENDIF}): Integer;
    function  Receive_Message(const PipeName: string;
                           const TimeOut: Integer {$IFDEF CompilerVersion4} = 86400000 {$ENDIF}): Integer;
    procedure Reset_Buffer;
    procedure Purge(const PipeName: string);
    function  Unique_Session_Name: string;
  end;
  // UTL_File package
  TUTL_File_Type = Variant;
  TUTL_File_Error =
    (ufInvalidPath,       // File location or filename was invalid.
     ufInvalidMode,       // The open_mode parameter in FOPEN was invalid.
     ufInvalidFilehandle, // The file handle was invalid.
     ufInvalidOperation,  // The file could not be opened or operated on as requested.
     ufReadError,         // An OS error occurred during the read operation.
     ufWriteError,        // An OS error occurred during the write operation.
     ufInternalError);    // An unspecified error in PL/SQL.
  EUTL_File_Error = class(Exception)
  private
    FError: TUTL_File_Error;
  public
    constructor Create(ErrorCode: Integer; ACPPDummy: Boolean);
    property Error: TUTL_File_Error read FError;
  end;
  TUTL_File = class(TDBMSPackage)
  private
    UQ: TOracleQuery;
    procedure SetupQuery(const Call: string; AFile: TUTL_File_Type);
    procedure CheckError;
  public
    function  FOpen(const Location: string;
                    const Filename: string;
                    const Open_Mode: string): TUTL_File_Type;
    function  Is_Open(const AFile: TUTL_File_Type): Boolean;
    procedure FClose(var AFile: TUTL_File_Type);
    procedure FClose_All;
    procedure Get_Line(const AFile: TUTL_File_Type; out Buffer: string);
    procedure Put(const AFile: TUTL_File_Type; const Buffer: string);
    procedure New_Line(const AFile: TUTL_File_Type;
                       const Lines: Cardinal {$IFDEF CompilerVersion4} = 1 {$ENDIF});
    procedure Put_Line(const AFile: TUTL_File_Type; const Buffer: string);
    procedure Putf(const AFile: TUTL_File_Type;
                   const Format: string;
                   const Args: array of string);
    procedure FFlush(const AFile: TUTL_File_Type);
  end;

  // Session preferences
  TSessionPreferences = class(TPersistent)
  private
    FFloatPrecision: Integer;
    FIntegerPrecision: Integer;
    FSmallIntPrecision: Integer;
    FUseOCI7: Boolean;
    FConvertCRLF: Boolean;
    FSession: TOracleSession;
    FTrimStringFields: Boolean;
    FMaxStringFieldSize: Integer;
    FZeroDateIsNull: Boolean;
    FNullLOBIsEmpty: Boolean;
    procedure SetUseOCI7(Value: Boolean);
    procedure SetFloatPrecision(Value: Integer);
    procedure SetIntegerPrecision(Value: Integer);
    procedure SetSmallIntPrecision(Value: Integer);
    procedure SetConvertCRLF(Value: Boolean);
    procedure SetMaxStringFieldSize(Value: Integer);
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(ASession: TOracleSession);
  published
    property FloatPrecision: Integer read FFloatPrecision write SetFloatPrecision;
    property IntegerPrecision: Integer read FIntegerPrecision write SetIntegerPrecision;
    property SmallIntPrecision: Integer read FSmallIntPrecision write SetSmallIntPrecision;
    property UseOCI7: Boolean read FUseOCI7 write SetUseOCI7;
    property ConvertCRLF: Boolean read FConvertCRLF write SetConvertCRLF;
    property TrimStringFields: Boolean read FTrimStringFields write FTrimStringFields;
    property MaxStringFieldSize: Integer read FMaxStringFieldSize write SetMaxStringFieldSize;
    property ZeroDateIsNull: Boolean read FZeroDateIsNull write FZeroDateIsNull;
    property NullLOBIsEmpty: Boolean read FNullLOBIsEmpty write FNullLOBIsEmpty;
  end;

  // Component types
  TOracleSession = class(TComponent)
  private
    LastOCIError: Integer;
    FExpirationMessage: string;
    ServerAttached: Boolean;
    FLDA: TLDA;
    FExternalLDA: Pointer;
    FExternalSVC: Pointer;
    CurrentBytesPerCharacter: Integer;
    FBytesPerCharacter: TBytesPerCharacterOption;
    HDA: THDA;
    Query: TOracleQuery;                  // Query for DoSQL
    OldCursor: TCursor;
    FConnected: Boolean;
    FRollbackOnDisconnect: Boolean;
    FDesignConnection: Boolean;
    FUsername: string;
    FPassword: string;
    FDatabase: string;
    FConnectAs: TConnectAsOption;
    FAutoCommit: Boolean;
    FNullValue: TNullValueOption;
    FSQLTrace: TSQLTraceOption;
    FOptimizerGoal: TOptimizerGoalOption;
    FIsolationLevel: TIsolationLevelOption;
    FThreadSafe: Boolean;
    FCursor: TCursor;
    FMessageTable: string;
    FOnChange: TOracleSessionEvent;
    FBeforeLogOn: TOracleSessionEvent;
    FAfterLogOn: TOracleSessionEvent;
    CriticalSection: TOracleCriticalSection;
    CtxToLda: Boolean;
    FDBMS_Alert: TDBMS_Alert;
    FDBMS_Application_Info: TDBMS_Application_Info;
    FDBMS_Job: TDBMS_Job;
    FDBMS_Output: TDBMS_Output;
    FDBMS_Pipe: TDBMS_Pipe;
    FUTL_File: TUTL_File;
    FPreferences: TSessionPreferences;
    FDateFormatLength: Integer;
    FPooling: TSessionPoolingOption;
    FMTSOptions: TMTSOptions;
    FMTSEnlisted: Boolean;
    FMTSTransaction: Pointer;
    MonActivityStartTime: LongInt;
    FMonitorParameters: TStrings;
    FAUDSID: string;
    FMonID: Integer;
    SentToMonitor: Boolean;
    ExtProcContext: OCIExtProcContext;
    procedure SetPooling(const Value: TSessionPoolingOption);
    procedure SetMTSOptions(const Value: TMTSOptions);
    procedure SetConnected(const Value: Boolean);
    procedure SetLogonUsername(const Value: string);
    procedure SetLogonPassword(const Value: string);
    procedure SetLogonDatabase(const Value: string);
    procedure SetAutoCommit(const Value: Boolean);
    procedure SetThreadSafe(const Value: Boolean);
    procedure CloseChildren;
    procedure ReactivateDataSets;
    function  GetQuery: TOracleQuery;
    procedure DoSQL(ASQL: string; ModifyCursor: Boolean);
    function  LDA: PLDA;
    procedure SetSQLTrace(const Value: TSQLTraceOption);
    procedure SetOptimizerGoal(const Value: TOptimizerGoalOption);
    procedure SetIsolationLevel(const Value: TIsolationLevelOption);
    procedure SetPreferences(const Value: TSessionPreferences);
    procedure SetBytesPerCharacter(const Value: TBytesPerCharacterOption);
    function  GetBytesPerCharacter: Integer;
    procedure SetExternalLDA(const Value: Pointer);
    function  GetExternalLDA: Pointer;
    procedure SetExternalSVC(const Value: Pointer);
    function  GetExternalSVC: Pointer;
    function  GetExternalENV: Pointer;
    function  GetExternalSRV: Pointer;
    function  GetExternalAUT: Pointer;
    function  OCICall(err: Integer): Boolean;
    function  ErrorHandle: Integer;
    procedure ServerAttach;
    function  DecodeUsername: string;
    procedure DetectPOLite;
    procedure SetCursor;
    procedure RestoreCursor;
    function  GetDBMS_Alert: TDBMS_Alert;
    function  GetDBMS_Application_Info: TDBMS_Application_Info;
    function  GetDBMS_Job: TDBMS_Job;
    function  GetDBMS_Output: TDBMS_Output;
    function  GetDBMS_Pipe: TDBMS_Pipe;
    function  GetUTL_File: TUTL_File;
    function  DesignConnectionProperty: Boolean;
    function  OrderedDataSetList(const DataSets: array of TDataSet): TList;
    procedure GetNumberDataType(APrecision, AScale: Integer; AStringFieldsOnly: Boolean; out ADataType: sb2; out ABufSize: sb4);
    function  GetShared: Boolean;
    procedure ExtProcCheck;
    procedure MTSCall(Error: Integer; const FunctionName: string);
    procedure MTSInitialize;
    function  MTSSvcGet: OCISvcCtx;
    procedure MTSSvcRel(OCISvc: OCISvcCtx);
    function  GetMonID: Integer;
    procedure SendStartActivity(const ADescription: string; Parameters: TStrings);
    procedure SendEndActivity(const ADescription, AResultMessage: string; Parameters: TStrings);
    function  GetAUDSID: string;
    function  TDOToTypeCode(ATDO: OCIType): OCITypeCode;
  protected
    envhp: OCIEnv;
    errhp, secerrhp: OCIError;
    svchp: OCISvcCtx;
    authp: OCISession;
    srvhp: OCIServer;
    procedure Loaded; override;
    procedure DoBeforeLogon; virtual;
    procedure DoAfterLogon; virtual;
  public
    Queries: TThreadList;           // List of connected Queries
    DataSets: TThreadList;          // List of connected DataSets
    Packages: TThreadList;          // List of connected Packages
    Scripts: TThreadList;           // List of connected Scripts
    Loaders: TThreadList;           // List of connected Loaders
    CustomPackages: TThreadList;    // List of connected CustomPackages
    Events: TThreadList;            // List of connected Events
    LOBLocators: TThreadList;       // List of connected LOBLocators
    Objects: TThreadList;           // List of connected Objects
    References: TThreadList;        // List of connected References
    POLite: Boolean;   // True if POLite detected
    POLite35: Boolean; // True if POLite 3.5 detected
    OracleTableInfoList: TCollection;
    UseOCI80: Boolean;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure LogOn;
    procedure LogOff;
    function  CheckConnection(Reconnect: Boolean): TCheckConnectionResult;
    function  ServerVersion: string;
    function  MaxVarchar: Integer;
    procedure SetPassword(const NewPassword: string);
    procedure BreakExecution;
    procedure SetTransaction(const ATransactionMode: TTransactionMode);
    procedure InternalCommit;
    procedure Commit;
    procedure InternalRollback;
    procedure Rollback;
    function  InTransaction: Boolean;
    procedure FlushObjects;
    procedure Savepoint(const ASavepoint: string);
    procedure RollbackToSavepoint(const ASavepoint: string);
    function  ReturnCode: Integer;
    function  ErrorMessage(ErrorCode: Integer): string;
    procedure Acquire(OCI7Only: Boolean);
    procedure Release(OCI7Only: Boolean);
    function  DateFormatLength: Integer;
    procedure ApplyUpdates(const DataSets: array of TDataSet; Commit: Boolean);
    procedure CommitUpdates(const DataSets: array of TDataSet);
    procedure CancelUpdates(const DataSets: array of TDataSet);
    procedure Share(ToSession: TOracleSession);
    procedure SendToMonitor(Creation, Signal: Boolean);
    function  MonitorParameters: TStrings;
    procedure MonitorMessage(const Msg: string);

    function  OCIDateCreate: TOCIDate;
    procedure OCIDateFree(OCIDate: TOCIDate);
    function  OCIDateToDateTime(OCIDate: TOCIDate): TDateTime;
    procedure OCIDateFromDateTime(OCIDate: TOCIDate; DateValue: TDateTime);
    function  OCINumberCreate: TOCINumber;
    procedure OCINumberFree(OCINumber: TOCINumber);
    function  OCINumberToFloat(OCINumber: TOCINumber): Double;
    procedure OCINumberFromFloat(OCINumber: TOCINumber; FloatValue: Double);
    function  OCINumberToInt(OCINumber: TOCINumber): Integer;
    procedure OCINumberFromInt(OCINumber: TOCINumber; IntValue: Integer);
    procedure ExtProcShare(Context: Pointer);
    procedure ExtProcRaise(ErrorNumber: Integer; const ErrorMessage: string);

    procedure MTSEnlist(ATransaction: Pointer);
    procedure MTSDetach(ATransaction: Pointer);
    procedure MTSResume(ATransaction: Pointer);
    procedure MTSDeEnlist;
    property  MTSEnlisted: Boolean read FMTSEnlisted;

    property  ExternalLDA: Pointer read GetExternalLDA write SetExternalLDA;
    property  ExternalSVC: Pointer read GetExternalSVC write SetExternalSVC;
    property  ExternalENV: Pointer read GetExternalENV;
    property  ExternalSRV: Pointer read GetExternalSRV;
    property  ExternalAUT: Pointer read GetExternalAUT;
    property  ExpirationMessage: string read FExpirationMessage;
    property  DBMS_Alert: TDBMS_Alert read GetDBMS_Alert;
    property  DBMS_Application_Info: TDBMS_Application_Info read GetDBMS_Application_Info;
    property  DBMS_Job: TDBMS_Job read GetDBMS_Job;
    property  DBMS_Output: TDBMS_Output read GetDBMS_Output;
    property  DBMS_Pipe: TDBMS_Pipe read GetDBMS_Pipe;
    property  UTL_File: TUTL_File read GetUTL_File;
    property  CharacterSize: Integer read GetBytesPerCharacter write CurrentBytesPerCharacter;
    property  AUDSID: string read GetAUDSID;
    property  MonID: Integer read GetMonID;
  published
    property OnChange: TOracleSessionEvent read FOnChange write FOnChange;
    property BeforeLogOn: TOracleSessionEvent read FBeforeLogOn write FBeforeLogOn;
    property AfterLogOn: TOracleSessionEvent read FAfterLogOn write FAfterLogOn;
    property Cursor: TCursor read FCursor write FCursor;
    property DesignConnection: Boolean read FDesignConnection write FDesignConnection;
    property LogonUsername: string read FUsername write SetLogonUsername;
    property LogonPassword: string read FPassword write SetLogonPassword;
    property LogonDatabase: string read FDatabase write SetLogonDatabase;
    property ConnectAs: TCOnnectAsOption read FConnectAs write FConnectAs;
    property ThreadSafe: Boolean read FThreadSafe write SetThreadSafe;
    property Preferences: TSessionPreferences read FPreferences write SetPreferences;
    property Pooling: TSessionPoolingOption read FPooling write SetPooling;
    property MTSOptions: TMTSOptions read FMTSOptions write SetMTSOptions;
    property Connected: Boolean read FConnected write SetConnected;
    property RollbackOnDisconnect: Boolean read FRollbackOnDisconnect write FRollbackOnDisconnect;
    property AutoCommit: Boolean read FAutoCommit write SetAutoCommit Stored False;
    property NullValue: TNullValueOption read FNullValue write FNullValue;
    property SQLTrace: TSQLTraceOption read FSQLTrace write SetSQLTrace;
    property OptimizerGoal: TOptimizerGoalOption read FOptimizerGoal write SetOptimizerGoal;
    property IsolationLevel: TIsolationLevelOption read FIsolationLevel write SetIsolationLevel;
    property BytesPerCharacter: TBytesPerCharacterOption read FBytesPerCharacter write SetBytesPerCharacter;
    property MessageTable: string read FMessageTable write FMessageTable;
    property Shared: Boolean read GetShared;
  end;

  TOracleLogon = class(TComponent)
  private
    FSession: TOracleSession;
    FRetries: Word;
    FOptions: TLogonOptions;
    FAliasDropDownCount: Integer;
    FHistoryRegSection: string;
    FHistoryIniFile: string;
    FHistorySize: Integer;
    FHistoryWithPassword: Boolean;
    FCaption: string;
    procedure SetSession(Value: TOracleSession);
  public
    constructor Create(AOwner: TComponent); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    function Execute: Boolean;
    function SetPassword: Boolean;
  published
    property Session: TOracleSession read FSession write SetSession;
    property Retries: Word read FRetries write FRetries;
    property Options: TLogonOptions read FOptions write FOptions;
    property AliasDropDownCount: Integer read FAliasDropDownCount write FAliasDropDownCount;
    property HistoryRegSection: string read FHistoryRegSection write FHistoryRegSection;
    property HistoryIniFile: string read FHistoryIniFile write FHistoryIniFile;
    property HistorySize: Integer read FHistorySize write FHistorySize;
    property HistoryWithPassword: Boolean read FHistoryWithPassword write FHistoryWithPassword;
    property Caption: string read FCaption write FCaption;
  end;

  TOracleQuery = class(TComponent)
  private
    errhp, secerrhp: OCIError;
    rowidhp: OCIRowId;
    stmthp: OCIStmt;
    defhp: OCIDefine;
    LastOCIError: Integer;
    CDA: TCDA;
    FFunctionType: Integer;
    OldCursor: TCursor;
    FVariables: TVariables;
    FieldList: TCollection;               // fields in a record
    FSession: TOracleSession;
    FSQL: TStrings;
    FCache: Integer;
    FOptimize: Boolean;
    FDebug: Boolean;
    FCursor: TCursor;
    FThreaded: Boolean;
    FThreadSynchronized: Boolean;
    QueryThread: TThread;
    UsedCache: Integer;                   // size of cache in records
    CacheIndex: Integer;                  //
    Cached: Integer;                      // number of records in cache
    Opened: Boolean;                      // oopen() executed
    Described: Boolean;                   // odescr() executed
    ParsedSQL: string;                    // last parsed SQL statement
    FBeforeQuery: TOracleQueryEvent;      // Gets called on an Execute
    FAfterQuery: TOracleQueryEvent;       // Gets called when Eof turnes true
    FOnArrayError: TArrayErrorEvent;      // Gets called after an array execute error
    FOnThreadExecuted: TOracleQueryEvent;
    FOnThreadRecord: TOracleQueryEvent;
    FOnThreadFinished: TOracleQueryEvent;
    FOnThreadError: TThreadErrorEvent;
    CallAfterQuery: Boolean;              // Indicates if AfterQuery should be called
    FStringFieldsOnly: Boolean;           // Define all fields as strings
    FErrorPosition: Integer;
    FErrorLine: Integer;
    ResultSet: Boolean;
    ArrayBindSize: Integer;
    FState: TQueryState;
    MonActivityStartTime: LongInt;
    FMonID: Integer;
    SentToMonitor: Boolean;
    FParentMonID: Integer;
    FEof: Boolean;
    procedure SetCursor;
    procedure RestoreCursor;
    procedure SetSession(ASession: TOracleSession);
    procedure SetCache(Value: Integer);
    procedure SetSQL(Value: TStrings);
    procedure SetVariables(Value: TVariables);
    procedure SetStringFieldsOnly(Value: Boolean);
    procedure Open;
    procedure AllocStmthp;
    procedure ReplaceSubstVariables(var s: string);
    procedure Parse(Deferred: Boolean);
    procedure BindVariables;
    procedure PostProcessVariables;
    procedure InitPieces;
    procedure InternalDefine;
    procedure InternalExecute(DescribeOnly, DescribeDeferred: Boolean; Iters, RowOff: Integer);
    procedure GetErrorLocation;
    procedure InternalDescribe;
    procedure DoDescribe(Deferred: Boolean);
    function  FetchStringLong(FieldId: Integer): Variant;
    function  FetchBinaryLong(FieldId: Integer): Variant;
    function  FetchLOB(FieldId: Integer): Variant;
    procedure CheckEof;
    function  FieldByIndex(Index:Integer):Variant;
    function  FieldData(FieldId: Integer): Pointer;
    {$IFDEF Overloading}
    function  StringFieldIndex(const FieldId: string): Integer;
    {$ELSE}
    function  VariantFieldIndex(const FieldId: Variant): Integer;
    {$ENDIF}
    procedure SetVariableByIndex(Index: Integer; const AValue: Variant);
    function  GetVariableByIndex(Index: Integer): Variant;
    procedure AddToList;
    procedure RemoveFromList;
    function  FindVariable(var AName: string): Integer;
    procedure RaiseException;
    function  OCICall(err: Integer): Boolean;
    function  ErrorHandle: Integer;
    procedure SetComplexFields;
    procedure FreeFetchedObjects;
    procedure ResetLOBs;
    function  GetCursorByIndex(FieldId: Integer): TOracleQuery;
    function  LOBFieldByIndex(FieldId: Integer): TLOBLocator;
    function  ObjFieldByIndex(FieldId: Integer): TOracleObject;
    function  RefFieldByIndex(FieldId: Integer): TOracleReference;
    function  GetMonID: Integer;
    procedure SendStartActivity(const ADescription, ASQL: string; Variables: TVariables);
    procedure SendEndActivity(AnInfo: Integer; const ADescription, AResultMessage: string; Variables: TVariables);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Execute; virtual;
    function  ExecuteArray(Index, Count: Integer): Integer;
    procedure Describe;
    procedure DescribeFull;
    procedure Next;
    procedure BreakThread;
    function  State: TQueryState;
    function  ThreadIsRunning: Boolean;
    function  RowCount: Integer;
    {$IFNDEF Overloading}
    function  Field(const FieldId: Variant): Variant;
    function  GetCursor(const FieldId: Variant): TOracleQuery;
    function  LOBField(const FieldId: Variant): TLOBLocator;
    function  ObjField(const FieldId: Variant): TOracleObject;
    function  RefField(const FieldId: Variant): TOracleReference;
    {$ELSE}
    function  Field(const FieldId: string): Variant; overload;
    function  Field(FieldId: Integer): Variant; overload;
    function  GetCursor(FieldId: Integer): TOracleQuery; overload;
    function  GetCursor(const FieldId: string): TOracleQuery; overload;
    function  LOBField(FieldId: Integer): TLOBLocator; overload;
    function  LOBField(const FieldId: string): TLOBLocator; overload;
    function  ObjField(FieldId: Integer): TOracleObject; overload;
    function  ObjField(const FieldId: string): TOracleObject; overload;
    function  RefField(FieldId: Integer): TOracleReference; overload;
    function  RefField(const FieldId: string): TOracleReference; overload;
    {$ENDIF}
    function  FieldName(FieldId: Integer): String;
    function  FieldIndex(const FieldId: string): Integer;
    function  FieldSize(FieldId: Integer): Integer; {$IFDEF Overloading} overload; {$ENDIF}
    function  FieldType(FieldId: Integer): Integer; {$IFDEF Overloading} overload; {$ENDIF}
    function  FieldDBType(FieldId: Integer): Integer; {$IFDEF Overloading} overload; {$ENDIF}
    function  FieldTypeName(FieldId: Integer): string; {$IFDEF Overloading} overload; {$ENDIF}
    function  FieldPrecision(FieldId: Integer): Integer; {$IFDEF Overloading} overload; {$ENDIF}
    function  FieldScale(FieldId: Integer): Integer; {$IFDEF Overloading} overload; {$ENDIF}
    function  FieldOptional(FieldId: Integer): Boolean; {$IFDEF Overloading} overload; {$ENDIF}
    function  FieldIsNull(FieldId: Integer): Boolean; {$IFDEF Overloading} overload; {$ENDIF}
    function  FieldAsString(FieldId: Integer): string; {$IFDEF Overloading} overload; {$ENDIF}
    function  FieldAsInteger(FieldId: Integer): Integer; {$IFDEF Overloading} overload; {$ENDIF}
    function  FieldAsFloat(FieldId: Integer): Double; {$IFDEF Overloading} overload; {$ENDIF}
    function  FieldAsDate(FieldId: Integer): TDateTime; {$IFDEF Overloading} overload; {$ENDIF}
    function  GetLongField(FieldId: Integer; Buffer: Pointer; Offset, Length: Integer): Integer; {$IFDEF Overloading} overload; {$ENDIF}
    {$IFDEF Overloading}
    function  FieldSize(const FieldId: string): Integer; overload;
    function  FieldType(const FieldId: string): Integer; overload;
    function  FieldDBType(const FieldId: string): Integer; overload;
    function  FieldTypeName(const FieldId: string): string; overload;
    function  FieldPrecision(const FieldId: string): Integer; overload;
    function  FieldScale(const FieldId: string): Integer; overload;
    function  FieldOptional(const FieldId: string): Boolean; overload;
    function  FieldIsNull(const FieldId: string): Boolean; overload;
    function  FieldAsString(const FieldId: string): string; overload;
    function  FieldAsInteger(const FieldId: string): Integer; overload;
    function  FieldAsFloat(const FieldId: string): Double; overload;
    function  FieldAsDate(const FieldId: string): TDateTime; overload;
    function  GetLongField(const FieldId: string; Buffer: Pointer; Offset, Length: Integer): Integer; overload;
    {$ENDIF}
    function  FieldCount: Integer;
    procedure Clear;
    procedure Close;
    procedure Cancel;
    function  RowsProcessed: Integer;
    function  ReturnCode: Integer;
    function  FunctionType: Integer;
    function  WarningFlags: Byte;
    function  RowId: string;
    function  ErrorLine: Integer;
    function  ErrorPosition: Integer;
    procedure ClearVariables;
    procedure DeleteVariable(AName: string);
    procedure DeleteVariables;
    procedure DeclareVariable(AName: string; AType: Integer);
    procedure DimPLSQLTable(AName: string; TableSize, StringSize: Integer);
    {$IFDEF Overloading}
    procedure SetVariable(Index: Integer; const AValue: Variant); overload;
    function  GetVariable(Index: Integer): Variant; overload;
    {$ENDIF}
    procedure SetVariable(AName: string; const AValue: Variant); {$IFDEF Overloading} overload; {$ENDIF}
    function  GetVariable(AName: string): Variant; {$IFDEF Overloading} overload; {$ENDIF}
    procedure SetLongVariable(AName: string; Buffer: Pointer; Length: Integer);
    procedure SetComplexVariable(AName: string; const AValue: TObject);
    function  GetComplexVariable(AName: string): TObject;
    function  VariableCount: Integer;
    function  VariableName(Index: Integer): string;
    function  VariableType(Index: Integer): Integer;
    function  VariableIndex(AName: string): Integer;
    function  SubstitutedSQL: string;
    procedure SendToMonitor(Creation, Signal: Boolean);
    property  Eof: Boolean read FEof;
    property  MonID: Integer read GetMonID;
    property  ParentMonID: Integer read FParentMonID write FParentMonID;
  published
    property SQL: TStrings read FSQL write SetSQL;
    property Session: TOracleSession read FSession write SetSession;
    property ReadBuffer: Integer read FCache write SetCache;
    property Optimize: Boolean read FOptimize write FOptimize;
    property Debug: Boolean read FDebug write FDebug;
    property Variables: TVariables read FVariables write SetVariables;
    property Cursor: TCursor read FCursor write FCursor;
    property StringFieldsOnly: Boolean read FStringFieldsOnly write SetStringFieldsOnly;
    property Threaded: Boolean read FThreaded write FThreaded;
    property ThreadSynchronized: Boolean read FThreadSynchronized write FThreadSynchronized;
    property BeforeQuery: TOracleQueryEvent read FBeforeQuery write FBeforeQuery;
    property AfterQuery: TOracleQueryEvent read FAfterQuery write FAfterQuery;
    property OnArrayError: TArrayErrorEvent read FOnArrayError write FOnArrayError;
    property OnThreadExecuted: TOracleQueryEvent read FOnThreadExecuted write FOnThreadExecuted;
    property OnThreadRecord: TOracleQueryEvent read FOnThreadRecord write FOnThreadRecord;
    property OnThreadFinished: TOracleQueryEvent read FOnThreadFinished write FOnThreadFinished;
    property OnThreadError: TThreadErrorEvent read FOnThreadError write FOnThreadError;
  end;

  TOraclePackage = class(TComponent)
  private
    FSession: TOracleSession;
    FDebug: Boolean;
    FPackageName: String;
    FParameterMode: TParameterModeOption;
    FCursor: TCursor;
    FOptimize: Boolean;
    Query: TOracleQuery;
    ParameterList: TCollection;
    ReDeclareVariables: Boolean;
    LastObjectType: Integer;
    FMonID: Integer;
    SentToMonitor: Boolean;
    function  BoolToInt(const ABoolean: Variant): Variant;
    function  IntToBool(const AnInteger: Variant): Variant;
    procedure SetParameters(const Parameters: array of Variant);
    procedure SetQuery(const ObjectName: string; ObjectType: Integer);
    procedure SetSession(const Value: TOracleSession);
    function  CallFunction(const FunctionName: string; ReturnType: Integer;
      const Parameters: array of Variant): Variant;
    function  GetParameterByIndex(ParameterId: Integer): Variant;
    function  GetParameterByName(const ParameterId: string): Variant;
    procedure AddToList;
    procedure RemoveFromList;
    function  GetMonID: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure CallProcedure(const ProcedureName: string; const Parameters: array of Variant);
    function  CallStringFunction(const FunctionName: string; const Parameters: array of Variant): Variant;
    function  CallIntegerFunction(const FunctionName: string; const Parameters: array of Variant): Variant;
    function  CallFloatFunction(const FunctionName: string; const Parameters: array of Variant): Variant;
    function  CallDateFunction(const FunctionName: string; const Parameters: array of Variant): Variant;
    function  CallBooleanFunction(const FunctionName: string; const Parameters: array of Variant): Variant;
    {$IFNDEF Overloading}
    function  GetParameter(const ParameterId: Variant): Variant;
    {$ELSE}
    function  GetParameter(ParameterId: Integer): Variant; overload;
    function  GetParameter(const ParameterId: string): Variant; overload;
    {$ENDIF}
    function  GetStringVariable(const VariableName: string): Variant;
    function  GetIntegerVariable(const VariableName: string): Variant;
    function  GetFloatVariable(const VariableName: string): Variant;
    function  GetDateVariable(const VariableName: string): Variant;
    function  GetBooleanVariable(const VariableName: string): Variant;
    procedure SetVariable(const VariableName: string; const Value: Variant);
    property  MonID: Integer read GetMonID;
    procedure SendToMonitor(Creation, Signal: Boolean);
  published
    property Session: TOracleSession read FSession write SetSession;
    property Debug: Boolean read FDebug write FDebug;
    property PackageName: String read FPackageName write FPackageName;
    property ParameterMode: TParameterModeOption read FParameterMode write FParameterMode;
    property Cursor: TCursor read FCursor write FCursor;
    property Optimize: Boolean read FOptimize write FOptimize;
  end;

  TOracleCommands = class(TPersistent)
  private
    Owner: TOracleScript;
    FItems: TCollection;
    function GetCount: Integer;
    function GetItem(Index: Integer): TOracleCommand;
  protected
  public
    constructor Create(AOwner: TOracleScript);
    destructor  Destroy; override;
    function  Add: TOracleCommand;
    procedure Delete(Index: Integer);
    procedure Clear;
    property  Count: Integer read GetCount;
    property  Items[Index: Integer]: TOracleCommand read GetItem; default;
  end;
  TOracleCommand = class(TCollectionItem)
  private
    OracleScript: TOracleScript;
    FText: string;
    FCommandType: TCommandType;
    FName: string;
    FScriptLine: Integer;
    FErrorMessage: string;
    FErrorCode: Integer;
    FFunctionType: Integer;
    FRowsProcessed: Integer;
    FWords: TStrings;
    function  GetCommandType(S: string): TCommandType;
    procedure SetText(const Value: string);
    function  GetSubstitutedText: string;
    function  GetWords: TStrings;
    function  FindVariables(var SQL: string): TStringList;
    function  ReplaceVariables(S: string): string;
    function  WidthCorrection(S: string; Index: Integer): string;
    procedure DisplayResult;
  protected
    procedure SetIndex(Value: Integer); override;
  public
    destructor Destroy; override;
    function CommentProperty(Name: string): string;
    function Execute: Boolean;
    property Text: string read FText write SetText;
    property SubstitutedText: string read GetSubstitutedText;
    property CommandType: TCommandType read FCommandType;
    property Name: string read FName write FName;
    property ScriptLine: Integer read FScriptLine;
    property Words: TStrings read GetWords;
    property ErrorMessage: string read FErrorMessage write FErrorMessage;
    property ErrorCode: Integer read FErrorCode write FErrorCode;
    property FunctionType: Integer read FFunctionType write FFunctionType;
    property RowsProcessed: Integer read FRowsProcessed write FRowsProcessed;
  end;
  TOracleScript = class(TComponent)
  private
    LinesChanged: Boolean;
    CommandsChanged: Boolean;
    FSession: TOracleSession;
    FQuery: TOracleQuery;
    FDebug: Boolean;
    FCursor: TCursor;
    FLines: TStringList;
    FOutput: TStrings;
    FVariables: TStrings;
    FAutoCommit: Boolean;
    FExitOnError: Boolean;
    FCommandIndex: Integer;
    FCurrentCommand: TOracleCommand;
    FCommands: TOracleCommands;
    FOutputOptions: TScriptOutputOptions;
    FOnCommand: TOracleScriptCommandEvent;
    FAfterCommand: TOracleScriptCommandEvent;
    FOnError: TOracleScriptEvent;
    FOnData: TOracleScriptEvent;
    FOnOutput: TOracleScriptOutputEvent;
    FMonID: Integer;
    SentToMonitor: Boolean;
    procedure SetSession(const Value: TOracleSession);
    function  GetWords(S: string): TStringList;
    function  SQLCommand(const S1, S2: string): Boolean;
    function  PLSQLBlock(const FirstWord, S: string): Boolean;
    procedure BuildCommands;
    procedure BuildLines;
    function  FindVariable(var Name: string): Integer;
    procedure AddToList;
    procedure RemoveFromList;
    function  GetMonID: Integer;
    procedure LinesChange(Sender: TObject);
    function  GetLines: TStrings;
    procedure SetLines(Value: TStrings);
    function  GetFinished: Boolean;
    procedure SetFinished(Value: Boolean);
    function  KeywordCompare(const S, Keyword: string): Boolean;
    function  DoNonSQLCommand(Command: TOracleCommand): Boolean;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure SendToMonitor(Creation, Signal: Boolean);
    procedure AddOutput(const S: string);
    procedure Execute;
    function  CommandByName(const Name: string): TOracleCommand;
    function  GetVariable(Name: string): string;
    procedure SetVariable(Name, Value: string);
    property MonID: Integer read GetMonID;
    property Query: TOracleQuery read FQuery;
    property Commands: TOracleCommands read FCommands;
    property CommandIndex: Integer read FCommandIndex write FCommandIndex;
    property CurrentCommand: TOracleCommand read FCurrentCommand;
    property Output: TStrings read FOutput write FOutput;
    property Finished: Boolean read GetFinished write SetFinished;
  published
    property Session: TOracleSession read FSession write SetSession;
    property Debug: Boolean read FDebug write FDebug;
    property Cursor: TCursor read FCursor write FCursor;
    property Lines: TStrings read GetLines write SetLines;
    property AutoCommit: Boolean read FAutoCommit write FAutoCommit;
    property ExitOnError: Boolean read FExitOnError write FExitOnError;
    property OutputOptions: TScriptOutputOptions read FOutputOptions write FOutputOptions;
    property OnCommand: TOracleScriptCommandEvent read FOnCommand write FOnCommand;
    property AfterCommand: TOracleScriptCommandEvent read FAfterCommand write FAfterCommand;
    property OnError: TOracleScriptEvent  read FOnError write FOnError;
    property OnData: TOracleScriptEvent read FOnData write FOnData;
    property OnOutput: TOracleScriptOutputEvent read FOnOutput write FOnOutput;
  end;

  // A Direct Path Column
  TDirectPathColumn = class(TCollectionItem)
  private
    FName: string;
    FDataSize: Integer;
    FDataType: TDirectPathColumnType;
    FDateFormat: string;
    FLoader: TOracleDirectPathLoader;
    function  InternalDataType: Integer;
    procedure SetDataType(Value: TDirectPathColumnType);
    procedure SetDataSize(Value: Integer);
    procedure SetDateFormat(const Value: string);
  public
    procedure SetData(Row: Integer; Data: Pointer; Size: Integer);
    property  Loader: TOracleDirectPathLoader read FLoader;
    property  Name: string read FName write FName;
    property  DataType: TDirectPathColumnType read FDataType write SetDataType;
    property  DataSize: Integer read FDataSize write SetDataSize;
    property  DateFormat: string read FDateFormat write SetDateFormat;
  end;
  // A Collection of Direct Path Columns
  TDirectPathColumns = class(TPersistent)
  private
    FItems: TCollection;
    FLoader: TOracleDirectPathLoader;
    function GetCount: Integer;
    function GetItem(Index: Integer): TDirectPathColumn;
    procedure ReadBinaryData(Stream: TStream);
    procedure WriteBinaryData(Stream: TStream);
    function  GetVersion: Integer;
  protected
    procedure AssignTo(Dest: TPersistent); override;
    procedure DefineProperties(Filer: TFiler); override;
  public
    constructor Create(ALoader: TOracleDirectPathLoader);
    destructor  Destroy; override;
    function  Add(Name: string): TDirectPathColumn;
    procedure Clear;
    property  Count: Integer read GetCount;
    property  Items[Index: Integer]: TDirectPathColumn read GetItem; default;
    property  Loader: TOracleDirectPathLoader read FLoader;
  end;
  // The Direct Path Loader
  TOracleDirectPathLoader = class(TComponent)
  private
    FSession: TOracleSession;
    FTableName: string;
    FPartitionName: string;
    FColumns: TDirectPathColumns;
    FBufferSize: Integer;
    FDateFormat: string;
    FLogMode: TDirectPathLogMode;
    FParallel: Boolean;
    FMaxRows: Integer;
    errhp: OCIError;
    dpctx: OCIDirPathCtx;
    dpparlist: OCIParam;
    dpca: OCIDirPathColArray;
    dpstr: OCIDirPathStream;
    FMonID: Integer;
    SentToMonitor: Boolean;
    MonActivityStartTime: Integer;
    procedure AddToList;
    procedure RemoveFromList;
    procedure SetSession(Value: TOracleSession);
    procedure OCICall(Err: Integer);
    procedure AllocateHandles;
    procedure FreeHandles;
    function  GetPrepared: Boolean;
    function  GetLastColumn: Integer;
    function  GetLastRow: Integer;
    procedure CheckPrepared;
    procedure SetArrayEntry(Col, Row: Integer; Data: Pointer; Size: Integer);
    function  ArrayToStream(RowCount, RowOffset: Integer): Integer;
    procedure LoadStream;
    procedure StreamReset;
    function  GetMonID: Integer;
    procedure SendStartActivity(const ADescription: string);
    procedure SendEndActivity(const ADescription, AResultMessage: string);
    procedure SetColumns(Value: TDirectPathColumns);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Prepare;
    procedure Load(Rows: Integer);
    procedure Finish;
    procedure Abort;
    procedure GetDefaultColumns(StringsOnly: Boolean);
    function  ColumnByName(const ColumnName: string): TDirectPathColumn;
    procedure SendToMonitor(Creation, Signal: Boolean);
    property  MaxRows: Integer read FMaxRows;
    property  Prepared: Boolean read GetPrepared;
    property  LastColumn: Integer read GetLastColumn;
    property  LastRow: Integer read GetLastRow;
    property  MonID: Integer read GetMonID;
  published
    property Session: TOracleSession read FSession write SetSession;
    property TableName: string read FTableName write FTableName;
    property PartitionName: string read FPartitionName write FPartitionName;
    property BufferSize: Integer read FBufferSize write FBufferSize;
    property DateFormat: string read FDateFormat write FDateFormat;
    property LogMode: TDirectPathLogMode read FLogMode write FLogMode;
    property Parallel: Boolean read FParallel write FParallel;
    property Columns: TDirectPathColumns read FColumns write SetColumns;
  end;

  // OnTimeOut event
  TOnTimeOutEvent = procedure(Sender: TOracleEvent; var Continue: Boolean) of Object;

  // OnEvent event
  TOnEventEvent = procedure(Sender: TOracleEvent; const ObjectName: string;
    const Info: Variant) of Object;

  // Event event
  TEventEvent = procedure(Sender: TOracleEvent) of Object;

  // OnError event
  TOnEventErrorEvent = procedure(Sender: TOracleEvent; const Error: Exception) of Object;

  // OracleEvent types
  TEventObjectType = (otPipe, otAlert);

  // TOracleEvent
  TOracleEvent = class(TComponent)
  private
    FSession: TOracleSession;
    FObjectType: TEventObjectType;
    FObjectNames: string;
    FTimeOut: Integer;
    FOnTimeOut: TOnTimeOutEvent;
    FOnEvent: TOnEventEvent;
    FOnStart: TEventEvent;
    FOnStop: TEventEvent;
    FOnError: TOnEventErrorEvent;
    FStarted: Boolean;
    FSynchronized: Boolean;
    FKeepConnection: Boolean;
    FInternalSession: TOracleSession;
    StopSession: TOracleSession;
    Query: TOracleQuery;
    StopQuery: TOracleQuery;
    Thread: TThread;
    CriticalSection: TOracleCriticalSection;
    FMonID: Integer;
    SentToMonitor: Boolean;
    procedure CheckStarted;
    procedure SetSession(Value: TOracleSession);
    procedure SetObjectType(Value: TEventObjectType);
    procedure SetObjectNames(Value: string);
    function  ObjectCount: Integer;
    function  ObjectByIndex(Index: Integer): string;
    procedure AddToList;
    procedure RemoveFromList;
    function  GetMonID: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure Start;
    procedure Stop;
    property  Started: Boolean read FStarted;
    property  InternalSession: TOracleSession read FInternalSession;
    property  MonID: Integer read GetMonID;
    procedure SendToMonitor(Creation, Signal: Boolean);
    procedure LogOff;
  published
    property Session: TOracleSession read FSession write SetSession;
    property ObjectType: TEventObjectType read FObjectType write SetObjectType;
    property ObjectNames: string read FObjectNames write SetObjectNames;
    property TimeOut: Integer read FTimeOut write FTimeOut;
    property Synchronized: Boolean read FSynchronized write FSynchronized;
    property KeepConnection: Boolean read FKeepConnection write FKeepConnection;
    property OnTimeOut: TOnTimeOutEvent read FOnTimeOut write FOnTimeOut;
    property OnEvent: TOnEventEvent read FOnEvent write FOnEvent;
    property OnStart: TEventEvent  read FOnStart write FOnStart;
    property OnStop: TEventEvent   read FOnStop write FOnStop;
    property OnError: TOnEventErrorEvent read FOnError write FOnError;
  end;

  // Session pool entry object
  TOracleSessionPoolEntry = class(TObject)
  protected
    PooledSession: TOracleSession;
    ReservingSession: TOracleSession;
    function  Reserved: Boolean;
    procedure Reserve(ASession: TOracleSession);
    procedure Release;
  public
    destructor Destroy; override;
  end;

  // Session pool object
  TOracleSessionPool = class(TObject)
  private
    FList: TThreadList;
    FLockedList: TList;
    function GetEntry(Index: Integer): TOracleSessionPoolEntry;
    function GetCount: Integer;
    procedure Lock;
    procedure Unlock;
    property  Entries[Index: Integer]: TOracleSessionPoolEntry read GetEntry; default;
  public
    constructor Create;
    destructor  Destroy; override;
    procedure Reserve(ASession: TOracleSession);
    function  Release(ASession: TOracleSession): Boolean;
    procedure Compress;
    property  Count: Integer read GetCount;
  end;

  // TProcedureDescription is an undocumented feature, needed for
  // PL/SQL Developer. It allows you to get stored procedure information
  TParameterMode = (pmIn, pmOut, pmInOut);

  TProcedureParameter = class(TCollectionItem)
  protected
    OverloadIndex: Integer;
    Position: Integer;
    TypeName: string;
    TypeSchema: string;
    SubName: string;
  public
    Name: string;
    DataType: Integer;
    DataSize: Integer;
    DataPrec: Integer;
    DataScale: Integer;
    Mode: TParameterMode;
    HasDefault: Boolean;
    IsTable: Boolean;
    function TypeString: string;
  end;

  TProcedureDescription = class(TObject)
  private
    Parameters: TCollection;
    Session: TOracleSession;
    Desc: OCIDescribe;
    procedure DescribeProcOCI8(ProcParam: OCIParam; IsFunction: Boolean; OverloadIndex: Integer);
    procedure OCICall(Err: Integer);
  public
    Overloadings: Integer;
    constructor Create(ASession: TOracleSession; const ObjectOwner, ObjectName, SubName : string);
    destructor  Destroy; override;
    function ParameterCount(OverloadIndex: Integer): Integer;
    function ReturnType(OverloadIndex: Integer): TProcedureParameter;
    function Parameter(OverloadIndex, ParameterIndex: Integer): TProcedureParameter;
  end;

  // TPackageDescription is an undocumented feature, needed for
  // PL/SQL Developer. It allows you to get stored package information

  TSubprogramType = (stFunction, stProcedure);

  TPackageSubprogram = class(TCollectionItem)
  public
    SubprogramName: string;
    SubprogramType: TSubprogramType;
  end;

  TPackageDescription = class(TObject)
  private
    Subprograms: TCollection;
    Session: TOracleSession;
    Desc: OCIDescribe;
    procedure OCICall(Err: Integer);
  public
    constructor Create(ASession: TOracleSession; const ObjectOwner, ObjectName: string);
    destructor  Destroy; override;
    function SubprogramCount: Integer;
    function Subprogram(Index: Integer): TPackageSubprogram;
    function FindSubprogram(const AName: string): Integer;
  end;

  TLOBLocator = class(TStream)
  private
    FLOB: OCILOBLocator;
    PLOB: ^OCILOBLocator;
    Session: TOracleSession;
    errhp: OCIError;
    FPosition: Integer;
    LOBDType: Integer;
    FBuffering: Boolean;
    Owner: TOracleObject;
    OwnerAttrName: string;
    NullStruct: Psb2Array;
    Modified: Boolean;
    FMonID: Integer;
    SentToMonitor: Boolean;
    FParentMonID: Integer;
    MonActivityStartTime: LongInt;
    FTag: Integer;
    FLOBType: Integer;
    FName: string;
    procedure OCICall(Err: Integer);
    procedure SendStartActivity(const ADescription: string);
    procedure SendEndActivity(const ADescription, AResultMessage: string);
    procedure LOBModified;
    procedure CheckType(DataType: Integer; const Msg: string);
    function  GetLength: Integer;
    function  FileIsOpen: Boolean;
    procedure OpenFile;
    procedure CloseFile;
    function  GetFilename: string;
    procedure SetFilename(const Value: string);
    function  GetDirectory: string;
    procedure SetDirectory(const Value: string);
    procedure SetBuffering(const Value: Boolean);
    function  IsInit: Boolean;
    procedure CheckNilLOB;
    function  GetMonID: Integer;
    function  GetString(ASize: Integer): string;
    function  GetAsString: string;
    procedure SetAsString(const Value: string);
  protected
    procedure SetSize(NewSize: Longint); override;
    procedure InternalFlushBuffer;
  public
    constructor Create(ASession: TOracleSession; ALOBType: Integer);
    destructor  Destroy; override;
    function  Read(var Buffer; Count: Longint): Longint; override;
    function  Write(const Buffer; Count: Longint): Longint; override;
    function  Seek(Offset: Longint; Origin: Word): Longint; override;
    function  IsNull: Boolean;
    procedure Clear;
    procedure SetEmpty;
    procedure Assign(Source: TLOBLocator);
    procedure Copy(Source: TLOBLocator; Length: Integer);
    procedure Append(Source: TLOBLocator);
    function  Erase(Length: Integer): Integer;
    procedure Trim;
    function  FileExists: Boolean;
    procedure FlushBuffer;
    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);
    procedure SendToMonitor(Creation, Signal: Boolean);
    property  Filename: string read GetFilename write SetFilename;
    property  Directory: string read GetDirectory write SetDirectory;
    property  Buffering: Boolean read FBuffering write SetBuffering;
    property  MonID: Integer read GetMonID;
    property  ParentMonID: Integer read FParentMonID write FParentMonID;
    property  Tag: Integer read FTag write FTag;
    property  LOBType: Integer read FLOBType;
    property  Name: string read FName write FName;
    property  AsString: string read GetAsString write SetAsString;
  end;

  TObjectAttribute = class(TCollectionItem)
  private
    FName: string;
    FDataType: Integer;
    FTypeName: string;
    FSize: ub2;
    FScale: sb1;
    FPrecision: ub1;
    FIsCollection: Boolean;
    TypeCode: OCITypeCode;
    RefTDO: OCIRef;
    ObjectType: OCITypeCode;
    Owner: TOracleObject;
    ValueOffset: Integer;
    NullOffset: Integer;
    procedure SetAttrInfo(Param: OCIParam; Obj: TOracleObject; IsElement: Boolean);
    function  ValuePtr: Pointer;
    function  NullPtr: Psb2Array;
    function  IsNull: Boolean;
    function  GetValue: Variant;
    function  GetAsString: string;
  public
    destructor Destroy; override;
    property Name: string read FName;
    property DataType: Integer read FDataType;
    property TypeName: string read FTypeName;
    property Size: Word read FSize;
    property Scale: ShortInt  read FScale;
    property Precision: Byte read FPrecision;
    property Value: Variant read GetValue;
    property AsString: string read GetAsString;
    property IsCollection: Boolean read FIsCollection;
  end;

  TMethodParameter = class(TCollectionItem)
  private
    FName: string;
    FDataType: Integer;
    FDBDataType: Integer;
    FMode: TParameterMode;
    FTypeName: string;
    FScale: sb1;
    FPrecision: ub1;
    FIsCollection: Boolean;
    function GetTypeString: string;
  public
    property Name: string read FName;
    property DataType: Integer read FDataType;
    property Mode: TParameterMode read FMode;
    property TypeName: string read FTypeName;
    property Scale: ShortInt  read FScale;
    property Precision: Byte read FPrecision;
    property IsCollection: Boolean read FIsCollection;
    property TypeString: string read GetTypeString;
  end;

  TObjectMethod = class(TCollectionItem)
  private
    Owner: TOracleObject;
    FName: string;
    ParameterList: TCollection;
    FResultParameter: TMethodParameter;
    FIsStatic: Boolean;
    procedure SetMethodInfo(Param: OCIParam; Obj: TOracleObject);
    function  GetParameter(Index: Integer): TMethodParameter;
    function  GetParameterCount: Integer;
  public
    destructor Destroy; override;
    property Name: string read FName;
    property IsStatic: Boolean read FIsStatic;
    property Parameters[Index: Integer]: TMethodParameter read GetParameter;
    property ParameterCount: Integer read GetParameterCount;
    property ResultParameter: TMethodParameter read FResultParameter;
    function ParameterByName(const ParameterName: string): TMethodParameter;
  end;

  TOracleObject = class(TObject)
  private
    Session: TOracleSession;
    errhp: OCIError;
    dschp: OCIDescribe;
    Instance: Pointer;
    NullStruct: Psb2Array;
    NullStructSize: Integer;
    RefTDO: OCIRef;
    TDO: OCIType;
    FTypeName: string;
    InstanceOwner: Boolean;
    Pinned: Boolean;
    Table: Pointer;
    ObjList: TStringList;
    RefList: TStringList;
    LOBList: TStringList;
    FReference: TOracleReference;
    Owner: TOracleObject;
    OwnerAttrName: string;
    AttrList: TCollection;
    MethodList: TCollection;
    ObjectType: OCITypeCode;
    CollType: OCITypeCode;
    ElemObj: TOracleObject;
    ElemLOB: TLOBLocator;
    ElemRef: TOracleReference;
    ElemAttr: TObjectAttribute;
    Query: TOracleQuery;
    LastMethod: TObjectMethod;
    FMonID: Integer;
    SentToMonitor: Boolean;
    FParentMonID: Integer;
    FName: string;
    MonActivityStartTime: LongInt;
    constructor New(ASession: TOracleSession; AParentMonID: Integer; const AName: string);
    procedure OCICall(Err: Integer);
    procedure ClearLists(FreeLists: Boolean);
    procedure Describe;
    procedure DescribeRecursive(const AttrName: string; ARefTDO: OCIRef;
                                var ValueOffset, NullOffset: Integer);
    function  FindAttr(const AttrName: string; RaiseException: Boolean): TObjectAttribute;
    function  FindMeth(const AMethodName: string): TObjectMethod;
    procedure DescribeMethods;
    procedure AttrModified(const AName: string);
    procedure SetInstance(AnInstance: Pointer; ANullStruct: Psb2Array;
                          ARefTDO: OCIRef; const ATypeName: string);
    function  GetModified: Boolean;
    procedure SetModified(Value: Boolean);
    function  BaseObject: TOracleObject;
    procedure CheckPersistent(const Action: string);
    procedure CheckCollection(ATypeCode: OCITypeCode; const Action: string);
    function  InternalGetAttr(AAttr: TObjectAttribute; ValuePtr: Pointer;
                              NullPtr: Psb2Array): Variant;
    procedure InternalSetAttr(AAttr: TObjectAttribute; ValuePtr: Pointer;
                              NullPtr: Psb2Array; const Value: Variant);
    function  GetObjElement(Index: Integer): TOracleObject;
    procedure SetObjElement(Index: Integer; Value: TOracleObject);
    function  GetRefElement(Index: Integer): TOracleReference;
    procedure SetRefElement(Index: Integer; Value: TOracleReference);
    function  GetElement(Index: Integer): Variant;
    procedure SetElement(Index: Integer; const Value: Variant);
    function  GetLOBElement(Index: Integer): TLOBLocator;
    procedure SetLOBElement(Index: Integer; Value: TLOBLocator);
    procedure NewElement(Index: Integer);
    function  BoolToInt(const ABoolean: Variant): Variant;
    function  IntToBool(const AnInteger: Variant): Variant;
    function  InternalCallMethod(M: TObjectMethod; const Parameters: array of Variant;
                                 ComplexResult: TObject): Variant;
    function  GetMonID: Integer;
    procedure SendStartActivity(const ADescription: string);
    procedure SendEndActivity(const ADescription, AResultMessage: string);
    function  GetAttrCount: Integer;
    function  GetAttrDef(Index: Integer): TObjectAttribute;
    function  GetMethodCount: Integer;
    function  GetMethod(Index: Integer): TObjectMethod;
  public
    constructor Create(ASession: TOracleSession; const ATypeName: string;
                       const ATable: string);
    destructor  Destroy; override;
    procedure Clear;
    function  IsNull: Boolean;
    function  AttrIsNull(const AName: string): Boolean;
    function  GetAttr(const AName: string): Variant;
(*
    function  GetStringAttr(const AName: string): string;
    function  GetIntegerAttr(const AName: string): Integer;
    function  GetFloatAttr(const AName: string): Double;
    function  GetDateAttr(const AName: string): TDateTime;
*)
    function  ObjAttr(const AName: string): TOracleObject;
    function  RefAttr(const AName: string): TOracleReference;
    function  LOBAttr(const AName: string): TLOBLocator;
    procedure ClearAttr(const AName: string);
    procedure SetAttr(const AName: string; const Value: Variant);
(*
    procedure SetStringAttr(const AName: string; const NewValue: string);
    procedure SetIntegerAttr(const AName: string; const NewValue: Integer);
    procedure SetFloatAttr(const AName: string; const NewValue: Double);
    procedure SetDateAttr(const AName: string; const NewValue: TDateTime);
*)
    function  Reference: TOracleReference;
    procedure Flush;
    procedure Refresh;
    procedure Assign(Source: TOracleObject);
    procedure Delete;
    function  Exists: Boolean;
    function  IsLocked: Boolean;
    procedure Lock;
    function  IsCollection: Boolean;
    function  IsTable: Boolean;
    function  IsArray: Boolean;
    function  IsElement: Boolean;
    function  ElementCount: Integer;
    function  ElementExists(Index: Integer): Boolean;
    function  MaxElements: Integer;
    procedure TrimElements(Count: Integer);
    procedure DeleteElement(Index: Integer);
    function  CallMethod(const AMethodName: string; const Parameters: array of Variant): Variant;
    procedure CallComplexMethod(const AMethodName: string;
                                const Parameters: array of Variant; Result: TObject);
    function  GetParameter(const ParameterId: Variant): Variant;
    procedure SendToMonitor(Creation, Signal: Boolean);
    procedure AddElement;
    property  Modified: Boolean read GetModified write SetModified;
    property  ObjElements[Index: Integer]: TOracleObject read GetObjElement write SetObjElement; default;
    property  RefElements[Index: Integer]: TOracleReference read GetRefElement write SetRefElement;
    property  LOBElements[Index: Integer]: TLOBLocator read GetLOBElement write SetLOBElement;
    property  Elements[Index: Integer]: Variant read GetElement write SetElement;
    property  MonID: Integer read GetMonID;
    property  ParentMonID: Integer read FParentMonID write FParentMonID;
    property  Name: string read FName write FName;
    property  AttrCount: Integer read GetAttrCount;
    property  Attrs[Index: Integer]: TObjectAttribute read GetAttrDef;
    function  AttrByName(const AttrName: string): TObjectAttribute;
    property  MethodCount: Integer read GetMethodCount;
    property  Methods[Index: Integer]: TObjectMethod read GetMethod;
    function  MethodByName(const MethodName: string; OverloadIndex: Integer): TObjectMethod;
    property  TypeName: string read FTypeName;
  end;

  TOracleReference = class(TObject)
  private
    FRef: OCIRef;
    PRef: ^OCIRef;
    TDO: OCIType;
    RefTDO: OCIRef;
    TypeName: string;
    errhp: OCIError;
    Session: TOracleSession;
    Owner: TOracleObject;
    OwnerAttrName: string;
    NullStruct: Psb2Array;
    FMonID: Integer;
    SentToMonitor: Boolean;
    FParentMonID: Integer;
    MonActivityStartTime: LongInt;
    FName: string;
    constructor New(ASession: TOracleSession; ARefTDO: OCIRef;
      const ATypeName: string; AParentMonID: Integer; const AName: string);
    procedure OCICall(Err: Integer);
    procedure RefModified;
    function  GetHex: string;
    procedure SetHex(const Value: string);
    function  RefIsNull: Boolean;
    function  GetMonID: Integer;
    procedure SendStartActivity(const ADescription: string);
    procedure SendEndActivity(const ADescription, AResultMessage: string);
  public
    constructor Create(ASession: TOracleSession; const ATypeName: string);
    destructor  Destroy; override;
    function  Pin(PinOption: TPinOption; PinLockOption: TPinLockOption): TOracleObject;
    procedure Clear;
    function  IsNull: Boolean;
    procedure Assign(Source: TOracleReference);
    procedure SendToMonitor(Creation, Signal: Boolean);
    property  Hex: string read GetHex write SetHex;
    property  MonID: Integer read GetMonID;
    property  ParentMonID: Integer read FParentMonID write FParentMonID;
    property  Name: string read FName write FName;
  end;

  TPLSQLTable = class(TObject)
  private
    FValues: Variant;
    FTableSize: Integer;
    FStringSize: Integer;
    function  GetValue(Index: Integer): Variant;
    procedure SetValue(Index: Integer; const Value: Variant);
    function  GetCount: Integer;
    procedure SetCount(Value: Integer);
    procedure SetTableSize(Value: Integer);
    function  GetAsString: string;
    procedure SetAsString(const Value: string);
  public
    constructor Create(ATableSize, AStringSize: Integer);
    procedure Assign(Source: TPLSQLTable);
    property  Values[Index: Integer]: Variant read GetValue write SetValue; default;
    property  TableSize: Integer read FTableSize write SetTableSize;
    property  StringSize: Integer read FStringSize write FStringSize;
    property  Count: Integer read GetCount write SetCount;
    property  AsString: string read GetAsString write SetAsString;
    property  ValueArray: Variant read FValues write FValues;
  end;

  TPLSQLRecord = class(TObject)
  public
    constructor Create(ASession: TOracleSession); virtual;
    constructor CreateEmpty;
    procedure Assign(Source: TPLSQLRecord); virtual;
  end;

  TOracleCustomPackage = class(TComponent)
  private
    FMonID: Integer;
    FSession: TOracleSession;
    FPackageSpecification: TStrings;
    FCriticalSection: TOracleCriticalSection;
    SentToMonitor: Boolean;
    procedure SetSession(const Value: TOracleSession);
    procedure SetCursor(Value: TCursor);
    function  GetCursor: TCursor;
    function  GetMonID: Integer;
  protected
    OCPQuery: TOracleQuery;
    function  GetPackageSpecification: TStrings; virtual;
    procedure GetQuery;
    function  BoolToInt(const ABoolean: Variant): Variant;
    function  IntToBool(const AnInteger: Variant): Variant;
    function  ConvertVariant(const Value: Variant): Variant;
    procedure ThreadAcquire;
    procedure ThreadRelease;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SendToMonitor(Creation, Signal: Boolean);
    property  MonID: Integer read GetMonID;
    property  Session: TOracleSession read FSession write SetSession;
    property  Cursor: TCursor read GetCursor write SetCursor;
    property  PackageSpecification: TStrings read GetPackageSpecification;
  end;

// OracleMonitor stuff

const // ComponentKind constants
  ckNone            = 0;
  ckSession         = 1;
  ckQuery           = 2;
  ckDataSet         = 3;
  ckPackage         = 4;
  ckEvent           = 5;
  ckLOBLocator      = 6;
  ckObject          = 7;
  ckReference       = 8;
  ckScript          = 9;
  ckLoader          = 10;

const // Activity flags
  afStart  = 0;
  afEnd    = 1;
  afSingle = 2;

function GetNewMonID: Integer;
var AllSessions: TThreadList = nil;
var InternalAddMonObject: procedure(ComponentType, SessionID, ID, ParentID: Integer; AObject: TObject; Parameters: TStrings; Signal: Boolean) = nil;
var InternalAddMonActivity: procedure(ComponentType, SessionID, ID, ParentID: Integer; AObject: TObject;
      Flag, Info: Integer; const Description, SQL, ResultMessage: string; Variables: TVariables; Parameters: TStrings; StartTime: LongInt) = nil;
var InternalMonitorPresent: function: Boolean = nil;
var InternalMonitorListening: function: Boolean = nil;
var InternalMonitorFinalize: procedure = nil;
procedure AddMonObject(Creation: Boolean; ComponentType, ID, ParentID: Integer; AObject: TObject; ASession: TOracleSession; Parameters: TStrings; Signal: Boolean);
procedure AddMonActivity(ComponentType, SessionID, ID, ParentID: Integer; AObject: TObject;
            Flag, Info: Integer; const Description, SQL, ResultMessage: string; Variables: TVariables; Parameters: TStrings; StartTime: LongInt);
function MonitorPresent: Boolean;
function MonitorListening: Boolean;

// Internal debug hook
var InternalDebug: procedure(DebugQuery: TOracleQuery) = nil;

// Miscellaneous functions
procedure Help(Form: TForm; Topic: string);
procedure HelpbyIndex(Form: TForm; Topic: Integer);
function  Confirm(Text, Caption, Style: string): Integer;
function  RunningFromIDE: Boolean;
procedure InitForm(Form: TForm);
function  EnterKey(Key: Integer): Boolean;
function  GetCompilerName: string;
function  GetCompilerVersion: Integer;
function  DOAHelpFile: string;
function  CompilerHelpFile: string;
function  DOAVersion: string;
procedure ShowDOAInfo(Session: TOracleSession);
procedure OracleToDelphiDate(var OD:Tub1Array; var DD:TDateTime);
procedure DelphiToOracleDate(DD:TDateTime; var OD:Tub1Array);
function  FindVariables(const SQL: string; IncludeDuplicates: Boolean): TStringList;
function  RemoveSQLComment(const ASQL: string): string;
function  FunctionFeedback(FunctionType, Rows: Integer): string;
function  QuoteTrim(const S: string): string;
procedure LoadOracleWarnings;

// OracleCI functions
function TNSNames: string;
function OracleAliasList: TStringList;
function OracleHomeList: TStringList;

// Session pool
var SessionPool: TOracleSessionPool = nil;

// EOracleError to EOracleWarning conversion list
var OracleWarningList: TList = nil;

// Logging variable and procedure
var DOALogEnabled: Boolean = False;
procedure DOALog(const Msg: string);

// Kylix compatibility functions and Types

{$IFDEF LINUX}

type
  DWord = Integer;

const
  idYes     = Integer(smbYes);
  idNo      = Integer(smbNo);
  idCancel  = Integer(smbCancel);

const
  vk_F1     = Key_F1;
  vk_F2     = Key_F2;
  vk_F8     = Key_F8;
  vk_Escape = Key_Escape;
  vk_Left   = Key_Left;
  vk_Right  = Key_Right;
  vk_Space  = Key_Space;

procedure LockWindowUpdate(Handle: Integer);
function  FullINIPath(Path: string): string;

{$ENDIF}

implementation

uses OracleLogon, OracleData;

type
  TEventThread = class(TThread)
  private
    Event: TOracleEvent;
    UniqueSessionId: string;
    p_ObjectName: string;
    p_Info: Variant;
    p_Continue: Boolean;
    p_Error: Exception;
    procedure SyncOnEvent;
    procedure DoOnEvent;
    procedure SyncOnError;
    procedure DoOnError(AnError: Exception);
    procedure SyncOnTimeOut;
    function  DoOnTimeOut: Boolean;
    procedure PipeDoOnEvent;
    procedure PipeLoop;
    procedure AlertDoOnEvent;
    procedure AlertLoop;
  protected
    procedure Execute; override;
  public
    constructor Create(AnOracleEvent: TOracleEvent);
  end;

  TQueryThread = class(TThread)
  private
    procedure Error;
    procedure Executed;
    procedure RecordFetched;
    procedure Finished;
  protected
    Stopped: Boolean;
    ErrorCode: Integer;
    ErrorMessage: string;
    Query: TOracleQuery;
    procedure Execute; override;
  public
    constructor Create(AnOracleQuery: TOracleQuery);
  end;

  TPackageParameter = class(TCollectionItem)
  public
    ParamName: string;
    BooleanName: string;
    DataType: Integer;
    ParamValue: Variant;
  end;

  EOracleWarning = class(EOracleError);

const // TOracleEvent constants
  // Pipe status
  psSuccess        = 0;
  psTimeOut        = 1;
  psRecordTooLarge = 2;
  psInterrupt      = 3;
  // Alert status
  asSuccess        = 0;
  asTimeOut        = 1;

const
  ftSelect    = 4;     // Function Type after a SELECT statement
  InitialLong = 2000;  // Initial portion fetched for a long field
  MaxLong     = 32000; // Maximimum portion fetched for a long field

const // Version & license information
  DOAVersionString     = '3.4.5';
  SerialNumber: string = '02.5127   ';
  Licenses: string     = '1         ';
  DOAType: string      = 'OBJ       ';

var // Monitor variables
  LastMonID:  Integer = 0;
  MonIDCS: TOracleCriticalSection = nil;

{$IFDEF EVALUATION}
{$I OracleEvaluation.inc}
{$ENDIF}

// Kylix compatibility functions and types

{$IFDEF LINUX}

procedure LockWindowUpdate(Handle: Integer);
begin
end;

function FullINIPath(Path: string): string;
begin
  if Pos('/', path) > 0 then
    Result := Path
  else begin
    // No path entered, lets store it at home
    Result := GetEnv('HOME');
    Result := Result + '/' + Path;
  end;
end;

{$ENDIF}

// General functions

function EnterKey(Key: Integer): Boolean;
begin
{$IFDEF LINUX}
  Result := (Key = Key_Return) or (Key = Key_Enter);
{$ELSE}
  Result := Key = vk_Return;
{$ENDIF}
end;

function Confirm(Text, Caption, Style: string): Integer;
{$IFDEF LINUX}
var K: TMessageButtons;
{$ELSE}
var K: TMsgDlgButtons;
{$ENDIF}
begin
  K := [];
{$IFDEF LINUX}
  if Pos('Y', Style) > 0 then K := K + [smbYes];
  if Pos('N', Style) > 0 then K := K + [smbNo];
  if Pos('C', Style) > 0 then K := K + [smbCancel];
  if Pos('O', Style) > 0 then K := K + [smbOK];
  Result := Integer(Application.MessageBox(PChar(Text), PChar(Caption), K, smsInformation));
{$ELSE}
  if Pos('Y', Style) > 0 then K := K + [mbYes];
  if Pos('N', Style) > 0 then K := K + [mbNo];
  if Pos('C', Style) > 0 then K := K + [mbCancel];
  if Pos('O', Style) > 0 then K := K + [mbOK];
  if Pos('I', Style) > 0 then K := K + [mbIgnore];
  if Pos('A', Style) > 0 then K := K + [mbAll];
  Result := MessageDlg(Text, mtConfirmation, K, 0);
{$ENDIF}
end;

function RunningFromIDE: Boolean;
begin
  {$IFDEF LINUX}
  Result := False;
  {$ELSE}
  Result := not (DebugHook <> 0);
  {$ENDIF}
end;

procedure InitForm(Form: TForm);
begin
  {$IFDEF LINUX}
  if Form.BorderStyle = fbsDialog then with Form.Constraints do
  begin
    if MaxHeight = 0 then MaxHeight := Form.Height;
    if MinHeight = 0 then MinHeight := Form.Height;
    if MaxWidth = 0  then MaxWidth  := Form.Width;
    if MinWidth = 0  then MinWidth  := Form.Width;
  end;
  {$ENDIF}
end;

procedure Help(Form: TForm; Topic: string);
begin
  {$IFDEF LINUX}
  {$ELSE}
  WinHelp(Form.Handle, PChar(DOAHelpFile), Help_Key, LongInt(PChar(Topic)));
  {$ENDIF}
end;

procedure HelpbyIndex(Form: TForm; Topic: Integer);
begin
  {$IFDEF LINUX}
  {$ELSE}
  WinHelp(Form.Handle, PChar(DOAHelpFile), Help_Key, Topic);
  {$ENDIF}
end;

function GetCompilerName: string;
begin
  {$IFDEF Delphi}
  Result := 'Delphi';
  {$ELSE}
  Result := 'C++Builder';
  {$ENDIF}
end;

function GetCompilerVersion: Integer;
begin
  Result := 3;
  {$IFDEF CompilerVersion4} inc(Result); {$ENDIF}
  {$IFDEF CompilerVersion5} inc(Result); {$ENDIF}
  {$IFDEF CompilerVersion6} inc(Result); {$ENDIF}
  {$IFDEF CompilerVersion7} inc(Result); {$ENDIF}
  {$IFDEF CompilerVersion8} inc(Result); {$ENDIF}
  {$IFDEF CompilerVersion9} inc(Result); {$ENDIF}
end;

function CompilerHelpFile: string;
begin
{$IFDEF CBuilder}
  Result := 'bcb';
{$ELSE}
  Result := 'delphi';
{$ENDIF}
  Result := Result + IntToStr(GetCompilerVersion) + '.hlp';
end;

function DOAHelpFile: string;
{$IFNDEF LINUX}
var S: string;
{$ENDIF}
begin
{$IFDEF LINUX}
  Result := '';
{$ELSE}
  // First check for the installed path
  S := GetCompilerName + IntToStr(GetCompilerVersion);
  Result := ReadRegString(HKEY_CURRENT_USER, 'SOFTWARE\Allround Automations\DOA\Install\' + S, 'InstalledHelpPath');
  if Result <> '' then
    Result := Result + '\'
  else begin
    // if empty, use the standard Help path
    S := GetCompilerName + '\' + IntToStr(GetCompilerVersion) + '.0';
    Result := ReadRegString(HKEY_LOCAL_MACHINE, 'SOFTWARE\Borland\' + S, 'RootDir');
    if Result <> '' then Result := Result + '\Help\';
  end;
{$ENDIF}
  Result := Result + 'doa.hlp';
end;

// Return a count with description. If the count is not 1, an s will be added
function CountStr(Value: Integer; const Description: string): string;
begin
  Result := IntToStr(Value) + ' ' + Description;
  if Value <> 1 then Result := Result + 's';
end;

// Log text in a file
var LogSection: TOracleCriticalSection = nil;
procedure DOALog(const Msg: string);
var LogFile: Text;
    Opened: Boolean;
begin
  if not DOALogEnabled then Exit;
  Opened := False;
  if LogSection <> nil then LogSection.Enter else Exit;
  try
    AssignFile(LogFile, 'doalog.txt');
    if FileExists('doalog.txt') then Append(LogFile) else ReWrite(LogFile);
    Opened := True;
    WriteLn(LogFile, GetTickCount:9, ' ', Msg);
  except
  end;
  try
    if Opened then CloseFile(LogFile);
  except;
  end;
  LogSection.Leave;
end;

// Get a new Monitor ID
function GetNewMonID: Integer;
begin
  if not Assigned(InternalMonitorListening) then
    Result := 0
  else begin
    MonIDCS.Enter;
    Inc(LastMonID);
    Result := LastMonID;
    MonIDCS.Leave;
  end;
end;

// Add a monitor object
procedure AddMonObject(Creation: Boolean; ComponentType, ID, ParentID: Integer; AObject: TObject; ASession: TOracleSession; Parameters: TStrings; Signal: Boolean);
var MonID, SID: Integer;
begin
  if Creation then
  begin
    if (ASession = nil) then
    begin
      if ComponentType <> ckSession then Exit;
      SID := 0;
    end else begin
      ASession.SendToMonitor(True, True);
      SID := ASession.MonID;
    end;
    MonID := ID;
  end else begin
    SID := 0;
    MonID := -ID;
  end;
  if Assigned(InternalAddMonObject) then
    InternalAddMonObject(ComponentType, SID, MonID, ParentID, AObject, Parameters, Signal);
end;

procedure AddMonActivity(ComponentType, SessionID, ID, ParentID: Integer; AObject: TObject;
            Flag, Info: Integer; const Description, SQL, ResultMessage: string; Variables: TVariables; Parameters: TStrings; StartTime: LongInt);
begin
  if Assigned(InternalAddMonActivity) and MonitorListening then
    InternalAddMonActivity(ComponentType, SessionID, ID, ParentID, AObject,
      Flag, Info, Description, SQL, ResultMessage, Variables, Parameters, StartTime);
end;

function MonitorPresent: Boolean;
begin
  Result := Assigned(InternalMonitorPresent) and InternalMonitorPresent;
end;

function MonitorListening: Boolean;
begin
  Result := Assigned(InternalMonitorListening) and InternalMonitorListening;
end;

function ObjectVersion: Boolean;
begin
  Result := DOAType[1] = 'O';
end;

// Displays general information about DOA & OCI
procedure ShowDOAInfo(Session: TOracleSession);
var S: string;
begin
  S := 'Direct Oracle Access ' + DOAVersion + #13#10;
  if ObjectVersion then S := S + 'Object version ' else S := S + 'Standard version ';
  {$IFDEF EVALUATION}
    S := S + '(Evaluation';
    if TimeLimit <> 0 then
      S := S + ', ' + IntToStr(DaysLeft) + ' days left';
    S := S + ')' + #13#10;
  {$ELSE}
     S := S + '(Registered)' + #13#10;
     S := S + 'Serialnumber ' + Trim(SerialNumber);
     S := S + '  (' + Trim(Licenses) + ' User license)' + #13#10;
  {$ENDIF}
  S := S + #13#10 + InitOCILog;
  S := S + #13#10 + 'OCI: ' + OCIVersion;
  if (Session <> nil) and Session.Connected then
    S := S + #13#10 + Session.ServerVersion;
  S := S + #13#10 + #13#10;
  S := S + 'support@allroundautomations.nl' + #13#10;
  S := S + 'http://www.allroundautomations.nl';
  MessageDlg(S, mtInformation, [mbOK], 0);
end;

function DOAVersion: string;
begin
  Result := DOAVersionString;
end;

function FindVariables(const SQL: string; IncludeDuplicates: Boolean): TStringList;
var s: string;
    i: Integer;
    Mode: char;
    VarName, EndC: string;
    VarPos: Integer;
begin
  Result := TStringList.Create;
  s := SQL + #13#10;
  Mode := 'S';
  EndC := '';
  VarPos := 0;
  for i := 1 to Length(s) do
  begin
    case Mode of
      'S' : begin
             if s[i] = ':' then
              begin
                Mode    := 'V';
                VarName := '';
                VarPos  := i;
              end;
              if (S[i] = '''') then
              begin
                Mode := 'Q';
                EndC := '''';
              end;
              if (S[i] = '/') and (S[i + 1] = '*') then
              begin
                Mode := 'C';
                EndC := '*/';
              end;
              if (S[i] = '-') and (S[i + 1] ='-') then
              begin
                Mode := 'C';
                EndC := #13#10;
              end;
            end;
      'V' : begin
              if not (s[i] in ['a'..'z', 'A'..'Z', '0'..'9', '_', '#', '$', #128..#255]) then
              begin
                VarName := AnsiUpperCase(VarName);
                if (VarName <> '') and (IncludeDuplicates or (Result.IndexOf(VarName) < 0)) then
                  Result.AddObject(VarName, TObject(VarPos));
                Mode := 'S';
              end else
                VarName := VarName + s[i];
            end;
      'C' : if (S[i] = EndC[1]) and (S[i + 1] = EndC[2]) then mode := 'S';
      'Q' : if (S[i] = EndC[1]) then mode := 'S';
    end;
  end;
end;

// Remove SQL Comment from a string
function RemoveSQLComment(const ASQL: string): string;
var i, l: Integer;
    c1, c2, Mode: char;
begin
  Result := '';
  l := Length(ASQL);
  i := 1;
  Mode := 'N';
  while i <= l do
  begin
    c1 := ASQL[i];
    if c1 = '''' then
    begin
      if Mode = 'Q' then
        Mode := 'N'
      else if Mode = 'N' then
        Mode := 'Q';
    end;
    if Mode = 'Q' then Result := Result + c1;
    if i < l then c2 := ASQL[i + 1] else c2 := #0;
    if Mode = 'N' then
    begin
      if (c1 = '/') and (c2 = '*') then Mode := '*';
      if (c1 = '-') and (c2 = '-') then Mode := '-';
      if Mode = 'N' then Result := Result + c1;
    end;
    if ((Mode = '*') and (c1 = '*') and (c2 = '/')) or
       ((Mode = '-') and (c1 = #13) and (c2 = #10)) then
    begin
      Mode := 'N';
      Inc(i);
    end;
    Inc(i);
  end;
  Result := Trim(Result);
end;

// Returns a description for the TOracleQuery.FunctionType
function FunctionFeedback(FunctionType, Rows: Integer): string;
var s: string;
begin
  case FunctionType of
     1: s := 'Table created';
     2: s := 'Role set';
     3: s := '%d row%s inserted';
     4: s := '%d row%s selected';
     5: s := '%d row%s updated';
     6: s := 'Role dropped';
     7: s := 'View dropped';
     8: s := 'Table dropped';
     9: s := '%d row%s deleted';
    10: s := 'View created';
    11: s := 'User dropped';
    12: s := 'Role created';
    13: s := 'Sequence created';
    14: s := 'Sequence altered';
    16: s := 'Sequence dropped';
    17: s := 'Schema created';
    18: s := 'Cluster created';
    19: s := 'User created';
    20: s := 'Index created';
    21: s := 'Index dropped';
    22: s := 'Cluster dropped';
    23: s := 'Index validated';
    24: s := 'Procedure created';
    25: s := 'Procedure altered';
    26: s := 'Table altered';
    27: s := 'Explained';
    28: s := 'Grant succeeded';
    29: s := 'Revoke succeeded';
    30: s := 'Synonym created';
    31: s := 'Synonym dropped';
    32: s := 'System altered';
    33: s := 'Transaction set';
    34: s := 'PL/SQL procedure successfully completed';
    35: s := 'Table(s) locked';
    37: s := 'Table renamed';
    38: s := 'Comment added';
    39: s := 'Audit succeeded';
    40: s := 'Noaudit succeeded';
    41: s := 'Index altered';
    42: s := 'External database created';
    43: s := 'External database dropped';
    44: s := 'Database created';
    45: s := 'Database altered';
    46: s := 'Rollback segment created';
    47: s := 'Rollback segment altered';
    48: s := 'Rollback segment dropped';
    49: s := 'Tablespace created';
    50: s := 'Tablespace altered';
    51: s := 'Tablespace dropped';
    52: s := 'Session altered';
    53: s := 'User altered';
    54: s := 'Commit complete';
    55: s := 'Rollback complete';
    56: s := 'Savepoint created';
    57: s := 'Control file created';
    58: s := 'Tracing altered';
    59: s := 'Trigger created';
    60: s := 'Trigger altered';
    61: s := 'Trigger dropped';
    62: s := 'Table analyzed';
    63: s := 'Index analyzed';
    64: s := 'Cluster analyzed';
    65: s := 'Profile created';
    66: s := 'Profile dropped';
    67: s := 'Profile altered';
    68: s := 'Procedure dropped';
    70: s := 'Resource cost altered';
    71: s := 'Snapshot log created';
    72: s := 'Snapshot log altered';
    73: s := 'Snapshot log dropped';
    74: s := 'Snapshot created';
    75: s := 'Snapshot altered';
    76: s := 'Snapshot dropped';
    77: s := 'Type created';
    78: s := 'Type dropped';
    79: s := 'Role altered';
    80: s := 'Type altered';
    81: s := 'Type body created';
    82: s := 'Type body altered';
    83: s := 'Type body dropped';
    84: s := 'Library dropped';
    85: s := 'Table truncated';
    86: s := 'Cluster truncated';
    87: s := 'Bitmapfile created';
    88: s := 'View altered';
    89: s := 'Bitmapfile dropped';
    90: s := 'Constraints set';
    91: s := 'Function created';
    92: s := 'Function altered';
    93: s := 'Function dropped';
    94: s := 'Package created';
    95: s := 'Package altered';
    96: s := 'Package dropped';
    97: s := 'Package body created';
    98: s := 'Package body altered';
    99: s := 'Package body dropped';
   157: s := 'Directory created';
   158: s := 'Directory dropped';
   159: s := 'Library created';
  else
    s := 'Done';
  end;
  if Rows = 1 then
    Result := Format(s, [Rows, ''])
  else
    Result := Format(s, [Rows, 's']);
end;

// Trims and 'unquotes' a string
function QuoteTrim(const S: string): string;
begin
  Result := Trim(S);
  if Length(S) > 2 then
  begin
    if ((Result[1] = '"') and (Result[Length(Result)] = '"')) or
       ((Result[1] = '''') and (Result[Length(Result)] = '''')) then
    begin
      Result := Copy(Result, 2, Length(Result) - 2);
    end;
  end;
end;

// Load OracleWarning values
procedure LoadOracleWarnings;
{$IFNDEF LINUX}
var S: string;
    i, v: Integer;
{$ENDIF}
begin
{$IFNDEF LINUX}
  if OracleWarningList = nil then OracleWarningList := TList.Create;
  OracleWarningList.Clear;
  i := 1;
  repeat
    S := ReadRegString(HKEY_CURRENT_USER, 'SOFTWARE\Allround Automations\DOA\Warnings', IntToStr(i));
    if (S <> '') and (S[1] <> '*') then
    begin
      try
        v := StrToInt(S);
        OracleWarningList.Add(Pointer(v));
      except
      end;
    end;
    inc(i)
  until S = '';
{$ENDIF}
end;

// Returns a full path to the tnsnames.ora file
function TNSNames: string;
begin
  Result := OracleCI.TNSNames;
end;

// Returns a list of Oracla database aliases
function OracleAliasList: TStringList;
begin
  Result := OracleCI.OracleAliasList;
end;

// Returns a list of all OracleHomes
function OracleHomeList: TStringList;
begin
  Result := OracleCI.OracleHomeList;
end;

// Check if Net8 is used and raise an exception if not
procedure CheckNet8(ASession: TOracleSession; const Action: string; CheckObjects: Boolean);
begin
  if ASession = nil then
    raise Exception.Create(Action + ' requires a session');
  if not ASession.Connected then
    raise Exception.Create(Action + ' requires a connected session');
  if not ASession.UseOCI80 then
  begin
    if not OCI80Detected then
      raise Exception.Create(Action + ' requires Net8, which is not detected on this PC')
    else
      raise Exception.Create(Action + ' requires OCI8 mode, but OCI7 mode is used.')
  end;
  if CheckObjects then
  begin
    if not ObjectVersion then
      raise Exception.Create(Action + ' requires the Direct Oracle Access Object version');
  end;
end;

procedure CheckAssign(Source: TObject; const ClassName: string);
begin
  if Source = nil then
    raise Exception.Create(ClassName + ': Cannot assign nil source');
end;

// General Oracle Functions

// Conversion from Delphi's TDateTime to Oracle date format
procedure DelphiToOracleDate(DD:TDateTime; var OD:Tub1Array);
var Year, Month, Day, Hour, Min, Sec, mSec: Word;
begin
  DecodeDate(DD, Year, Month, Day);
  DecodeTime(DD, Hour, Min, Sec, mSec);
  OD[0] := 100 + Year div 100;
  OD[1] := 100 + Year mod 100;
  OD[2] := Month;
  OD[3] := Day;
  OD[4] := Hour + 1;
  OD[5] := Min + 1;
  OD[6] := Sec + 1;
end;

// Conversion from Oracle date to Delphi
procedure OracleToDelphiDate(var OD:Tub1Array; var DD:TDateTime);
var TT: TDateTime;
    y: Integer;
begin
  try
    y  := (OD[0] - 100) * 100 + (OD[1] - 100);
    if y <= 0 then DD := -693594 else DD := EncodeDate(y, OD[2], OD[3]);
  except
    DD := -693594;
  end;
  try
    TT := EncodeTime(OD[4] - 1, OD[5] - 1, OD[6] - 1, 0);
  except
    TT := 0;
  end;
  if DD < 0 then DD := DD - TT else DD := DD + TT;
end;

// Conversion from Delphi's TDateTime to Oracle8 OCI date format
procedure DelphiToOCIDate(DD:TDateTime; OD:OCIDate);
var Year, Month, Day, Hour, Min, Sec, mSec: Word;
begin
  DecodeDate(DD, Year, Month, Day);
  DecodeTime(DD, Hour, Min, Sec, mSec);
  OD.Year  := Year;
  OD.Month := Month;
  OD.Day   := Day;
  OD.Hour  := Hour;
  OD.Min   := Min;
  OD.Sec   := Sec;
end;

// Conversion from Oracle8 OCI date to Delphi
procedure OCIToDelphiDate(OD:OCIDate; var DD:TDateTime);
var TT: TDateTime;
begin
  DD := EncodeDate(OD.Year, OD.Month, OD.Day);
  TT := EncodeTime(OD.Hour, OD.Min, OD.Sec, 0);
  if DD < 0 then DD := DD - TT else DD := DD + TT;
end;

// Convert Oracle datatypes to Delphi
function OracleToDelphiData(buf: Pub1Array; buftype: Integer; len: Integer; ASession: TOracleSession): Variant;
type PLongInt = ^LongInt;
     PDouble  = ^Double;
var L: LongInt;
    F: Double;
    D: TDateTime;
    S: string;
    R: Pub1Array;
begin
  case buftype of
     otString,
      otSubst,
       otChar,
otPLSQLString : begin
                  Result := AddCR(PChar(buf), ASession);
                end;
    otInteger,
     otCursor,
       otCLOB,
       otBLOB,
      otBFile,
  otReference,
     otObject : begin
                  L := PLongInt(buf)^;
                  Result := L;
                end;
      otFloat : begin
                  F := PDouble(buf)^;
                  Result := F;
                end;
       otDate : begin
                  OracleToDelphiDate(buf^, D);
                  Result := D;
                end;
       otLong : begin
                  SetLength(s, len);
                  if len > 0 then System.Move(buf^, s[1], len);
                  Result := s;
                end;
    otLongRaw : begin
                  Result := VarArrayCreate([0, len - 1], varByte);
                  R := VarArrayLock(Result);
                  if len > 0 then System.Move(buf^, R^, len);
                  VarArrayUnlock(Result);
                end;
  end;
end;

// EOracleError Exception

constructor EOracleError.Create(ASession: TOracleSession; Error: Integer);
var Msg: array[0..AbsMaxVarchar] of char;
begin
  Msg := '';
  if ASession.UseOCI80 then
  begin
    OCIErrorGet(OCIError(Error), 1, nil, ub4(Error), Msg, SizeOf(Msg), OCI_HTYPE_ERROR);
  end else begin
    oerhms(ASession.LDA, Error, Msg, SizeOf(Msg));
  end;
  ASession.Release(True);
  if Length(Msg) > MaxOracleMessageSize then Msg[MaxOracleMessageSize] := #0;
  inherited Create(Msg);
  FErrorCode := Error;
end;

procedure RaiseOracleError(ASession: TOracleSession; Error: Integer);
var Msg: array[0..AbsMaxVarchar] of char;
    OraError: Integer;
begin
  if (OracleWarningList <> nil) and (OracleWarningList.Count > 0) then
  begin
    Msg := '';
    if ASession.UseOCI80 then
      OCIErrorGet(OCIError(Error), 1, nil, ub4(OraError), Msg, SizeOf(Msg), OCI_HTYPE_ERROR)
    else
      OraError := Error;

    if OracleWarningList.IndexOf(Pointer(OraError)) >= 0 then
      raise EOracleWarning.Create(ASession, Error);
  end;
  raise EOracleError.Create(ASession, Error);
end;

// EOracleMTSError Exception

constructor EOracleMTSError.Create(const FunctionName: string; Error: Integer; ACPPDummy: Boolean);
var Msg: string;
    ErrText: string;
begin
  case Error of
    ORAMTSERR_NOMTXDISPEN : ErrText := 'no MTXDM.DLL available';
    ORAMTSERR_DSPCREAFAIL : ErrText := 'failure to create dispen';
    ORAMTSERR_DSPMAXSESSN : ErrText := 'exceeded max sessions';
    ORAMTSERR_DSPINVLSVCC : ErrText := 'invalid OCI Svc ctx';
    ORAMTSERR_DSPNODBIDEN : ErrText := 'can''t create new dbiden';
    ORAMTSERR_NOSERVEROBJ : ErrText := 'unable to alloc a server';
    ORAMTSERR_INVALIDSRVR : ErrText := 'invalid server object';
    ORAMTSERR_FAILEDATTCH : ErrText := 'failed attach to Oracle';
    ORAMTSERR_FAILEDDETCH : ErrText := 'failed detach from db';
    ORAMTSERR_FAILEDTRANS : ErrText := 'failed to start trans.';
    ORAMTSERR_SETATTRIBUT : ErrText := 'OCI set attrib failed';
    ORAMTSERR_CONNXBROKEN : ErrText := 'conn to Oracle broken';
    ORAMTSERR_NOTATTACHED : ErrText := 'not attached to Oracle';
    ORAMTSERR_ALDYATTACHD : ErrText := 'alrdy attached to Oracle';
    ORAMTSERR_INVALIDSESS : ErrText := 'invalid session object';
    ORAMTSERR_FAILEDLOGON : ErrText := 'failed logon to Oracle';
    ORAMTSERR_FAILEDLOGOF : ErrText := 'failed logoff from db';
    ORAMTSERR_TRANSEXISTS : ErrText := 'no transaction beneath';
    ORAMTSERR_LOGONEXISTS : ErrText := 'already logged on to db';
    ORAMTSERR_NOTLOGGEDON : ErrText := 'not logged on to Oracle';
    ORAMTSERR_RPCINVLCTXT : ErrText := 'RPC context is invalid';
    ORAMTSERR_RPCCOMMUERR : ErrText := 'generic communic. error';
    ORAMTSERR_RPCALRDYCON : ErrText := 'endpoint already connect';
    ORAMTSERR_RPCNOTCONNE : ErrText := 'endpoint not connected';
    ORAMTSERR_RPCPROTVIOL : ErrText := 'protocol violation';
    ORAMTSERR_RPCACCPTIMO : ErrText := 'timeout accepting conn.';
    ORAMTSERR_RPCILLEGOPC : ErrText := 'invalid RPC opcode';
    ORAMTSERR_RPCBADINCNO : ErrText := 'mismatched incarnation#';
    ORAMTSERR_RPCCONNTIMO : ErrText := 'client connect timeout';
    ORAMTSERR_RPCSENDTIMO : ErrText := 'synch. send timeout';
    ORAMTSERR_RPCRECVTIMO : ErrText := 'synch. receive timedout';
    ORAMTSERR_RPCCONRESET : ErrText := 'connection reset by peer';
    ORAMTSERR_INVALIDARGU : ErrText := 'invalid args to function';
    ORAMTSERR_INVALIDOBJE : ErrText := 'an object was invalid';
    ORAMTSERR_ILLEGALOPER : ErrText := 'illegal operation';
    ORAMTSERR_ALLOCMEMORY : ErrText := 'memory allocation error';
    ORAMTSERR_ERRORSYNCHR : ErrText := 'synchr. object error';
    ORAMTSERR_NOORAPROXY  : ErrText := 'no Oracle Proxy server';
    ORAMTSERR_ALRDYENLIST : ErrText := 'session already enlisted';
    ORAMTSERR_NOTENLISTED : ErrText := 'session is not enlisted';
    ORAMTSERR_TYPMANENLIS : ErrText := 'illeg on manuenlst sess';
    ORAMTSERR_TYPAUTENLIS : ErrText := 'illeg on autoenlst sess';
    ORAMTSERR_TRANSDETACH : ErrText := 'error detaching trans.';
    ORAMTSERR_OCIHNDLALLC : ErrText := 'OCI handle alloc error';
    ORAMTSERR_OCIHNDLRELS : ErrText := 'OCI handle dealloc error';
    ORAMTSERR_TRANSEXPORT : ErrText := 'error exporting trans.';
  else
    ErrText := '';
  end;
  if Error = 0 then
    Msg := FunctionName
  else
    Msg := 'MTS error ' + IntToStr(Error) + ': ' + ErrText + #13#10 +
           'in function ' + FunctionName;
  inherited Create(Msg);
  FErrorCode := Error;
end;

// TDBMSPackage object

constructor TDBMSPackage.Create(ASession: TOracleSession; const AName: string);
begin
  inherited Create;
  FName := AName;
  Session := ASession;
  Pkg := TOraclePackage.Create(nil);
  Pkg.Name := AName;
  Pkg.Session := Session;
  Pkg.ParameterMode := pmNamed;
  Pkg.PackageName := 'sys.' + FName;
end;

destructor TDBMSPackage.Destroy;
begin
  Pkg.Free;
  inherited;
end;

function TDBMSPackage.NullString(const v: Variant): Variant;
begin
  if VarIsNull(v) or VarIsEmpty(v) then Result := '' else Result := v;
end;

function TDBMSPackage.PkgQuery: TOracleQuery;
begin
  Pkg.SendToMonitor(True, True);
  Pkg.LastObjectType := -1;
  Result := Pkg.Query;
  Result.Session := Pkg.Session;
  Result.ParentMonID := Pkg.MonID;
  Result.Clear;
end;

function TDBMSPackage.GetDebug: Boolean;
begin
  Result := Pkg.Debug;
end;

procedure TDBMSPackage.SetDebug(Value: Boolean);
begin
  Pkg.Debug := Value;
end;

// DBMS_Alert package

procedure TDBMS_Alert.Set_Defaults(const Sensitivity: Integer);
begin
  Pkg.CallProcedure('set_defaults', ['sensitivity', Sensitivity]);
end;

procedure TDBMS_Alert.Register(const Name: string);
begin
  Pkg.CallProcedure('register', ['name', Name]);
end;

procedure TDBMS_Alert.Remove(const Name: string);
begin
  Pkg.CallProcedure('remove', ['name', Name]);
end;

procedure TDBMS_Alert.RemoveAll;
begin
  Pkg.CallProcedure('removeall', parNone);
end;

procedure TDBMS_Alert.WaitAny(out Name: string; out Message: string;
                              out Status: Integer; const TimeOut: Integer);
begin
  Pkg.CallProcedure('waitany', ['name', parString, 'message', parString,
                    'status', parInteger, 'timeout', TimeOut]);
  Name := NullString(Pkg.GetParameter(0));
  Message := NullString(Pkg.GetParameter(1));
  Status := Pkg.GetParameter(2);
end;

procedure TDBMS_Alert.WaitOne(const Name: string; out Message: string;
                              out Status: Integer; const TimeOut: Integer);
begin
  Pkg.CallProcedure('waitone', ['name', Name, 'message', parString,
                                'status', parInteger, 'timeout', TimeOut]);
  Message := NullString(Pkg.GetParameter(1));
  Status := Pkg.GetParameter(2);
end;

procedure TDBMS_Alert.Signal(const Name: string; const Message: string);
begin
  Pkg.CallProcedure('signal', ['name', Name, 'message', Message]);
end;

// DBMS_Application_Info package

procedure TDBMS_Application_Info.Set_Module(const Module_Name: string; const Action_Name: string);
begin
  Pkg.CallProcedure('set_module', ['module_name', Module_Name, 'action_name', Action_Name]);
end;

procedure TDBMS_Application_Info.Set_Action(const Action_Name: string);
begin
  Pkg.CallProcedure('set_action', ['action_name', Action_Name]);
end;

procedure TDBMS_Application_Info.Read_Module(out Module_Name: string; out Action_Name: string);
begin
  Pkg.CallProcedure('read_module', ['module_name', parString, 'action_name', parString]);
  Module_Name := NullString(Pkg.GetParameter(0));
  Action_Name := NullString(Pkg.GetParameter(1));
end;

procedure TDBMS_Application_Info.Set_Client_Info(const Client_Info: string);
begin
  Pkg.CallProcedure('set_client_info', ['client_info', Client_Info]);
end;

procedure TDBMS_Application_Info.Read_Client_Info(out Client_Info: string);
begin
  Pkg.CallProcedure('read_client_info', ['client_info', parString]);
  Client_Info := NullString(Pkg.GetParameter(0));
end;

// DBMS_Application_Info package

procedure TDBMS_Job.Submit(out Job: Integer; const what: string;
  const Next_Date: TDateTime; const Interval: string; const No_Parse: Boolean);
begin
  Pkg.CallProcedure('submit', ['job', parInteger, 'what', What, 'next_date', Next_Date,
                               'interval', Interval, 'no_parse', No_Parse]);
  Job := Pkg.GetParameter(0);
end;

procedure TDBMS_Job.Remove(const Job: Integer);
begin
  Pkg.CallProcedure('remove', ['job', Job]);
end;

procedure TDBMS_Job.Change(const Job: Integer; const What: string;
  const Next_Date: TDateTime; const Interval: string);
begin
  Pkg.CallProcedure('change', ['job', Job, 'what', What, 'next_date', Next_Date,
                               'interval', Interval]);
end;

procedure TDBMS_Job.What(const Job: Integer; const What: String);
begin
  Pkg.CallProcedure('what', ['job', Job, 'what', What]);
end;

procedure TDBMS_Job.Next_Date(const Job: Integer; const Next_Date: TDateTime);
begin
  Pkg.CallProcedure('next_date', ['job', Job, 'next_date', Next_Date]);
end;

procedure TDBMS_Job.Interval(const Job: Integer; const Interval: string);
begin
  Pkg.CallProcedure('interval', ['job', Job, 'interval', Interval]);
end;

procedure TDBMS_Job.Broken(const Job: Integer; const Broken: Boolean;
  const Next_Date: TDateTime);
begin
  Pkg.CallProcedure('broken', ['job', Job, 'broken', Broken, 'next_date', Next_Date]);
end;

procedure TDBMS_Job.Run(const Job: Integer);
begin
  Pkg.CallProcedure('run', ['job', Job]);
end;

// DBMS_Output package

procedure TDBMS_Output.Enable(const Buffer_Size: Integer);
begin
  Pkg.CallProcedure('enable', ['buffer_size', Buffer_Size]);
end;

procedure TDBMS_Output.Disable;
begin
  Pkg.CallProcedure('disable', parNone);
end;

procedure TDBMS_Output.Put(const a: Variant);
begin
  Pkg.CallProcedure('put', ['a', NullString(a)]);
end;

procedure TDBMS_Output.Put_Line(const a: Variant);
begin
  Pkg.CallProcedure('put_line', ['a', NullString(a)]);
end;

procedure TDBMS_Output.New_Line;
begin
  Pkg.CallProcedure('new_line', parNone);
end;

procedure TDBMS_Output.Get_Line(out Line: string; out Status: integer);
begin
  Pkg.CallProcedure('get_line', ['line', parString, 'status', parInteger]);
  Line := NullString(Pkg.GetParameter(0));
  Status := Pkg.GetParameter(1);
end;

procedure TDBMS_Output.Get_Lines(out Lines: string; var NumLines: Integer);
var i: Integer;
    LineArray: Variant;
begin
  with PkgQuery do
  begin
    SQL.Add('begin');
    SQL.Add('  sys.dbms_output.get_lines(lines => :lines, numlines => :numlines);');
    SQL.Add('end;');
    DeclareVariable('lines', otString);
    DimPLSQLTable('lines', NumLines, 255);
    DeclareVariable('numlines', otInteger);
    SetVariable('numlines', NumLines);
    Execute;
    LineArray := GetVariable('lines');
    NumLines := GetVariable('numlines');
    Lines := '';
    for i := 0 to NumLines - 1 do
      if Lines = '' then
        Lines := NullString(LineArray[i])
      else
        Lines := Lines + #13#10 + NullString(LineArray[i]);
  end;
end;

// DBMS_Pipe package

procedure TDBMS_Pipe.Pack_Message(const Item: Variant);
begin
  Pkg.CallProcedure('pack_message', ['item', NullString(Item)]);
end;

procedure TDBMS_Pipe.Pack_Message_Raw(const Item: string);
begin
  Pkg.CallProcedure('pack_message_raw', ['item', Item]);
end;

procedure TDBMS_Pipe.Pack_Message_Rowid(const Item: string);
begin
  Pkg.CallProcedure('pack_message_rowid', ['item', Item]);
end;

procedure TDBMS_Pipe.Unpack_Message(out Item: Variant);
begin
  case Next_Item_Type of
   niNumber: Pkg.CallProcedure('unpack_message', ['item', parFloat]);
     niDate: Pkg.CallProcedure('unpack_message', ['item', parDate]);
    niRowid: Pkg.CallProcedure('unpack_message_rowid', ['item', parString]);
      niRaw: Pkg.CallProcedure('unpack_message_raw', ['item', parString]);
  else
    Pkg.CallProcedure('unpack_message', ['item', parString]);
  end;
  Item := Pkg.GetParameter(0);
end;

procedure TDBMS_Pipe.Unpack_Message_Raw(out Item: string);
begin
  Pkg.CallProcedure('unpack_message_raw', ['item', parString]);
  Item := NullString(Pkg.GetParameter(0));
end;

procedure TDBMS_Pipe.Unpack_Message_Rowid(out Item: string);
begin
  Pkg.CallProcedure('unpack_message_rowid', ['item', parString]);
  Item := NullString(Pkg.GetParameter(0));
end;

function TDBMS_Pipe.Next_Item_Type: Integer;
begin
  Result := Pkg.CallIntegerFunction('next_item_type', parNone);
end;

function TDBMS_Pipe.Create_Pipe(const PipeName: string; const MaxPipeSize: Integer;
  const Private: Boolean): Integer;
begin
  Result := Pkg.CallIntegerFunction('create_pipe',
    ['pipename', PipeName, 'maxpipesize', MaxPipeSize, 'private', Private]);
end;

function TDBMS_Pipe.Remove_Pipe(const PipeName: string): Integer;
begin
  Result := Pkg.CallIntegerFunction('remove_pipe', ['pipename', PipeName]);
end;

function TDBMS_Pipe.Send_Message(const PipeName: string; const TimeOut: Integer;
  const MaxPipeSize: Integer): Integer;
begin
  Result := Pkg.CallIntegerFunction('send_message',
    ['pipename', PipeName, 'timeout', TimeOut, 'maxpipesize', MaxPipeSize]);
end;

function TDBMS_Pipe.Receive_Message(const PipeName: string; const TimeOut: Integer): Integer;
begin
  Result := Pkg.CallIntegerFunction('receive_message',
    ['pipename', PipeName, 'timeout', TimeOut]);
end;

procedure TDBMS_Pipe.Reset_Buffer;
begin
  Pkg.CallProcedure('reset_buffer', parNone);
end;

procedure TDBMS_Pipe.Purge(const PipeName: string);
begin
  Pkg.CallProcedure('purge', ['pipename', PipeName]);
end;

function  TDBMS_Pipe.Unique_Session_Name: string;
begin
  Result := Pkg.CallStringFunction('unique_session_name', parNone);
end;

// UTL_File package

constructor EUTL_File_Error.Create(ErrorCode: Integer; ACPPDummy: Boolean);
var Msg: string;
begin
  FError := TUTL_File_Error(ErrorCode - 1);
  case FError of
          ufInvalidPath: Msg := 'File location or filename is invalid';
          ufInvalidMode: Msg := 'Open_Mode parameter in FOpen is invalid';
    ufInvalidFilehandle: Msg := 'File handle is invalid';
     ufInvalidOperation: Msg := 'File cannot be opened or operated on as requested';
            ufReadError: Msg := 'OS error occurred during read operation';
           ufWriteError: Msg := 'OS error occurred during write operation';
        ufInternalError: Msg := 'Unspecified error in PL/SQL';
  else
    Msg := 'Unexpected error';
  end;
  inherited Create(Msg);
end;

procedure TUTL_File.SetupQuery(const Call: string; AFile: TUTL_File_Type);
begin
  UQ := PkgQuery;
  with UQ do
  begin
    DeclareVariable('afile', otInteger);
    SetVariable('afile', AFile);
    DeclareVariable('error', otInteger);
    SQL.Add('declare');
    SQL.Add('  fh sys.utl_file.file_type;');
    SQL.Add('begin');
    SQL.Add('  fh.id := :afile;');
    SQL.Add('  ' + Call);
    SQL.Add('  :afile := fh.id;');
    SQL.Add('  :error := 0;');
    SQL.Add('exception');
    SQL.Add('  when sys.utl_file.invalid_path then :error := 1;');
    SQL.Add('  when sys.utl_file.invalid_mode then :error := 2;');
    SQL.Add('  when sys.utl_file.invalid_filehandle then :error := 3;');
    SQL.Add('  when sys.utl_file.invalid_operation then :error := 4;');
    SQL.Add('  when sys.utl_file.read_error then :error := 5;');
    SQL.Add('  when sys.utl_file.write_error then :error := 6;');
    SQL.Add('  when sys.utl_file.internal_error then :error := 7;');
    SQL.Add('end;');
  end;
end;

procedure TUTL_File.CheckError;
var ErrorCode: Integer;
begin
  ErrorCode := UQ.GetVariable('error');
  if ErrorCode <> 0 then raise EUTL_File_Error.Create(ErrorCode, False);
end;

function TUTL_File.FOpen(const Location: string; const Filename: string;
  const Open_Mode: string): TUTL_File_Type;
begin
  SetupQuery('fh := sys.utl_file.fopen(location => :location, filename => :filename,' +
             ' open_mode => :open_mode);', 0);
  with UQ do
  begin
    DeclareVariable('location', otString);
    SetVariable('location', Location);
    DeclareVariable('filename', otString);
    SetVariable('filename', Filename);
    DeclareVariable('open_mode', otString);
    SetVariable('open_mode', Open_Mode);
    Execute;
    CheckError;
    Result := GetVariable('afile');
  end;
end;

function TUTL_File.Is_Open(const AFile: TUTL_File_Type): Boolean;
begin
  SetupQuery('if sys.utl_file.is_open(file => fh) then :r := 1; else :r := 0; end if;', AFile);
  with UQ do
  begin
    DeclareVariable('r', otInteger);
    Execute;
    CheckError;
    Result := (GetVariable('r') = 1);
  end;
end;

procedure TUTL_File.FClose(var AFile: TUTL_File_Type);
begin
  SetupQuery('sys.utl_file.fclose(file => fh);', AFile);
  with UQ do
  begin
    Execute;
    CheckError;
    AFile := GetVariable('afile');
  end;
end;

procedure TUTL_File.FClose_All;
begin
  SetupQuery('sys.utl_file.fclose_all;', Null);
  with UQ do
  begin
    Execute;
    CheckError;
  end;
end;

procedure TUTL_File.Get_Line(const AFile: TUTL_File_Type; out Buffer: string);
begin
  SetupQuery('sys.utl_file.get_line(file => fh, buffer => :buffer);', AFile);
  with UQ do
  begin
    DeclareVariable('buffer', otString);
    Execute;
    CheckError;
    Buffer := NullString(GetVariable('buffer'));
  end;
end;

procedure TUTL_File.Put(const AFile: TUTL_File_Type; const Buffer: string);
begin
  SetupQuery('sys.utl_file.put(file => fh, buffer => :buffer);', AFile);
  with UQ do
  begin
    DeclareVariable('buffer', otString);
    SetVariable('buffer', Buffer);
    Execute;
    CheckError;
  end;
end;

procedure TUTL_File.New_Line(const AFile: TUTL_File_Type; const Lines: Cardinal);
begin
  SetupQuery('sys.utl_file.new_line(file => fh, lines => :lines);', AFile);
  with UQ do
  begin
    DeclareVariable('lines', otInteger);
    SetVariable('lines', Integer(Lines));
    Execute;
    CheckError;
  end;
end;

procedure TUTL_File.Put_Line(const AFile: TUTL_File_Type; const Buffer: string);
begin
  SetupQuery('sys.utl_file.put_line(file => fh, buffer => :buffer);', AFile);
  with UQ do
  begin
    DeclareVariable('buffer', otString);
    SetVariable('buffer', Buffer);
    Execute;
    CheckError;
  end;
end;

procedure TUTL_File.Putf(const AFile: TUTL_File_Type; const Format: string;
  const Args: array of string);
var i: Integer;
    s: string;
function vn(nr: Integer): string;
begin
  result := 'arg' + IntToStr(nr + 1);
end;
begin
  if High(Args) > 4 then
    raise Exception.Create('Up to 5 arguments allowed in UTL_File.Putf');
  for i := 0 to High(Args) do s := s + ', ' + vn(i) + ' => :' + vn(i);
  SetupQuery('sys.utl_file.putf(file => fh, format => :format' + s + ');', AFile);
  with UQ do
  begin
    DeclareVariable('format', otString);
    SetVariable('format', Format);
    for i := 0 to High(Args) do
    begin
      DeclareVariable(vn(i), otString);
      SetVariable(vn(i), Args[i]);
    end;
    Execute;
    CheckError;
  end;
end;

procedure TUTL_File.FFlush(const AFile: TUTL_File_Type);
begin
  SetupQuery('sys.utl_file.fflush(file => fh);', AFile);
  UQ.Execute;
  CheckError;
end;

// TSessionPreferences

constructor TSessionPreferences.Create(ASession: TOracleSession);
begin
  FSession := ASession;
  FFloatPrecision := 0;
  FIntegerPrecision := 0;
  FSmallIntPrecision := -1;
  FUseOCI7 := False;
  {$IFDEF LINUX}
  FConvertCRLF := False;
  {$ELSE}
  FConvertCRLF := True;
  {$ENDIF}
  FTrimStringFields := True;
  FMaxStringFieldSize := 0;
  FZeroDateIsNull := True;
  FNullLOBIsEmpty := False;
  if (ASession.Owner <> nil) and
     (ASession.Owner.ClassParent <> nil) and
     (Pos('REMOTEDATAMODULE', UpperCase(ASession.Owner.ClassParent.ClassName)) > 0) then
     FMaxStringFieldSize := 255;
end;

procedure TSessionPreferences.AssignTo(Dest: TPersistent);
begin
  if Dest is TSessionPreferences then
  begin
    TSessionPreferences(Dest).ConvertCRLF        := ConvertCRLF;
    TSessionPreferences(Dest).FloatPrecision     := FloatPrecision;
    TSessionPreferences(Dest).IntegerPrecision   := IntegerPrecision;
    TSessionPreferences(Dest).MaxStringFieldSize := MaxStringFieldSize;
    TSessionPreferences(Dest).SmallIntPrecision  := SmallIntPrecision;
    TSessionPreferences(Dest).TrimStringFields   := TrimStringFields;
    TSessionPreferences(Dest).UseOCI7            := UseOCI7;
    TSessionPreferences(Dest).ZeroDateIsNull     := ZeroDateIsNull;
    TSessionPreferences(Dest).NullLOBIsEMpty     := NullLOBIsEmpty;
    Exit;
  end;
  inherited AssignTo(Dest);
end;

procedure TSessionPreferences.SetUseOCI7(Value: Boolean);
begin
  if Value = FUseOCI7 then Exit;
  if (FSession <> nil) and FSession.Connected then
    raise Exception.Create('Cannot change UseOCI7 property when session is connected');
  FUseOCI7 := Value;
end;

procedure TSessionPreferences.SetConvertCRLF(Value: Boolean);
begin
  if Value = FConvertCRLF then Exit;
//  Unnecessary restrictive
//  if (FSession <> nil) and FSession.Connected then
//    raise Exception.Create('Cannot change ConvertCRLF property when session is connected');
  FConvertCRLF := Value;
end;

procedure TSessionPreferences.SetMaxStringFieldSize(Value: Integer);
begin
  if Value = FMaxStringFieldSize then Exit;
  FMaxStringFieldSize := Value;
  if (csDesigning in FSession.ComponentState) and
      not (csReading in FSession.ComponentState) then
    FSession.ReactivateDataSets;
end;

procedure TSessionPreferences.SetFloatPrecision(Value: Integer);
begin
  if Value = FFloatPrecision then Exit;
  FFloatPrecision := Value;
  if (csDesigning in FSession.ComponentState) and
      not (csReading in FSession.ComponentState) then
    FSession.ReactivateDataSets;
end;

procedure TSessionPreferences.SetIntegerPrecision(Value: Integer);
begin
  if Value = FIntegerPrecision then Exit;
  FIntegerPrecision := Value;
  if (csDesigning in FSession.ComponentState) and
      not (csReading in FSession.ComponentState) then
    FSession.ReactivateDataSets;
end;

procedure TSessionPreferences.SetSmallIntPrecision(Value: Integer);
begin
  if Value = FSmallIntPrecision then Exit;
  FSmallIntPrecision := Value;
  if (csDesigning in FSession.ComponentState) and
      not (csReading in FSession.ComponentState) then
    FSession.ReactivateDataSets;
end;

// Session component

function TOracleSession.GetDBMS_Alert: TDBMS_Alert;
begin
  if FDBMS_Alert = nil then
    FDBMS_Alert := TDBMS_Alert.Create(Self, 'dbms_alert');
  Result := FDBMS_Alert;
end;

function TOracleSession.GetDBMS_Application_Info: TDBMS_Application_Info;
begin
  if FDBMS_Application_Info = nil then
    FDBMS_Application_Info := TDBMS_Application_Info.Create(Self, 'dbms_application_info');
  Result := FDBMS_Application_Info;
end;

function TOracleSession.GetDBMS_Job: TDBMS_Job;
begin
  if FDBMS_Job = nil then
    FDBMS_Job := TDBMS_Job.Create(Self, 'dbms_job');
  Result := FDBMS_Job;
end;

function TOracleSession.GetDBMS_Output: TDBMS_Output;
begin
  if FDBMS_Output = nil then
    FDBMS_Output := TDBMS_Output.Create(Self, 'dbms_output');
  Result := FDBMS_Output;
end;

function TOracleSession.GetDBMS_Pipe: TDBMS_Pipe;
begin
  if FDBMS_Pipe = nil then
    FDBMS_Pipe := TDBMS_Pipe.Create(Self, 'dbms_pipe');
  Result := FDBMS_Pipe;
end;

function TOracleSession.GetUTL_File: TUTL_File;
begin
  if FUTL_File = nil then
    FUTL_File := TUTL_File.Create(Self, 'utl_file');
  Result := FUTL_File;
end;

constructor TOracleSession.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  {$IFDEF EVALUATION}
  if (SStart = 0) and not (csDesigning in ComponentState) then SStart := GetTickCount;
  STT;
  {$ENDIF}
  FPreferences := TSessionPreferences.Create(Self);
  FCursor     := crHourglass;
  FUsername   := '';
  FPassword   := '';
  FDatabase   := '';
  FConnectAs  := caNormal;
  FConnected  := False;
  FRollbackOnDisconnect := False;
  FDesignConnection := False;
  FAutoCommit := False;
  FNullValue  := Unassigned;
  Queries           := TThreadList.Create;
  DataSets          := TThreadList.Create;
  Packages          := TThreadList.Create;
  Scripts           := TThreadList.Create;
  Loaders           := TThreadList.Create;
  CustomPackages    := TThreadList.Create;
  Events            := TThreadList.Create;
  LOBLocators       := TThreadList.Create;
  Objects           := TThreadList.Create;
  References        := TThreadList.Create;
  Query := nil;
  FSQLTrace       := stUnchanged;
  FOptimizerGoal  := ogUnchanged;
  FIsolationLevel := ilUnchanged;
  FThreadSafe     := False;
  CriticalSection := TOracleCriticalSection.Create;
  FExternalLDA := nil;
  FExternalSVC := nil;
  FBytesPerCharacter := bc1Byte;
  CurrentBytesPerCharacter := 0;
  envhp := nil;
  errhp := nil;
  secerrhp := nil;
  svchp := nil;
  authp := nil;
  srvhp := nil;
  LastOCIError := 0;
  FExpirationMessage := '';
  ServerAttached := False;
  POLite := False;
  POLite35 := False;
  UseOCI80 := False;
  OracleTableInfoList := nil;
  FDBMS_Alert := nil;
  FDBMS_Application_Info := nil;
  FDBMS_Job := nil;
  FDBMS_Output := nil;
  FDBMS_Pipe := nil;
  FUTL_File := nil;
  FMessageTable := '';
  FDateFormatLength := -1;
  FPooling := spNone;
  FMTSOptions := [moImplicit, moUniqueServer];
  FAUDSID := '';
  if AllSessions <> nil then AllSessions.Add(Self);
end;

destructor TOracleSession.Destroy;
var i: Integer;
begin
  LogOff;
  FDBMS_Alert.Free;
  FDBMS_Application_Info.Free;
  FDBMS_Job.Free;
  FDBMS_Output.Free;
  FDBMS_Pipe.Free;
  FUTL_File.Free;
  with Queries.LockList do
  try
    for i := Count - 1 downto 0 do TOracleQuery(Items[i]).Session := nil;
  finally
    Queries.UnlockList;
  end;
  with Packages.LockList do
  try
    for i := Count - 1 downto 0 do TOraclePackage(Items[i]).Session := nil;
  finally
    Packages.UnlockList;
  end;
  with Scripts.LockList do
  try
    for i := Count - 1 downto 0 do TOracleScript(Items[i]).Session := nil;
  finally
    Scripts.UnlockList;
  end;
  with Loaders.LockList do
  try
    for i := Count - 1 downto 0 do TOracleDirectPathLoader(Items[i]).Session := nil;
  finally
    Loaders.UnlockList;
  end;
  with CustomPackages.LockList do
  try
    for i := Count - 1 downto 0 do TOracleCustomPackage(Items[i]).Session := nil;
  finally
    CustomPackages.UnlockList;
  end;
  if Query <> nil then Query.Free;
  Queries.Free;
  DataSets.Free;
  Packages.Free;
  Scripts.Free;
  Loaders.Free;
  CustomPackages.Free;
  Events.Free;
  LOBLocators.Free;
  Objects.Free;
  References.Free;
  CriticalSection.Free;
  if UseOCI80 and (envhp <> nil) then
  begin
    OCICall(OCIHandleFree(srvhp, OCI_HTYPE_SERVER));
    OCICall(OCIHandleFree(svchp, OCI_HTYPE_SVCCTX));
    OCICall(OCIHandleFree(errhp, OCI_HTYPE_ERROR));
    OCICall(OCIHandleFree(secerrhp, OCI_HTYPE_ERROR));
    OCICall(OCIHandleFree(authp, OCI_HTYPE_SESSION));
    OCICall(OCIHandleFree(envhp, OCI_HTYPE_ENV));
  end;
  OracleTableInfoList.Free;
  FPreferences.Free;
  SendToMonitor(False, True);
  if AllSessions <> nil then AllSessions.Remove(Self);
  if FMonitorParameters <> nil then FMonitorParameters.Free;
  inherited Destroy;
end;

function TOracleSession.OCICall(err:Integer ): Boolean;
begin
  LastOCIError := err;
  Result := (err = OCI_SUCCESS);
end;

procedure TOracleSession.SetCursor;
begin
  if Cursor <> crDefault then
  begin
    OldCursor := Screen.Cursor;
    Screen.Cursor := Cursor;
  end;
end;

procedure TOracleSession.RestoreCursor;
begin
  if Cursor <> crDefault then Screen.Cursor := OldCursor;
end;

// If a Session is destroyed all linked Queries and DataSets must be closed
procedure TOracleSession.CloseChildren;
var i: Integer;
begin
  with Queries.LockList do
  try
    for i := Count - 1 downto 0 do
    try
      TOracleQuery(Items[i]).Close;
    except
    end;
  finally
    Queries.UnlockList;
  end;
  with DataSets.LockList do
  try
    for i := Count - 1 downto 0 do
    try
      TOracleDataSet(Items[i]).Close;
    except
    end;
  finally
    DataSets.UnlockList;
  end;
  with Loaders.LockList do
  try
    for i := Count - 1 downto 0 do
      TOracleDirectPathLoader(Items[i]).FreeHandles;
  finally
    Loaders.UnlockList;
  end;
end;

// Sometimes all datasets must be closed and opened
procedure TOracleSession.ReactivateDataSets;
var i: Integer;
    D: TOracleDataSet;
    WasActive: Boolean;
begin
  with DataSets.LockList do
  try
    for i := 0 to Count - 1 do
    begin
      D := TOracleDataSet(Items[i]);
      WasActive := D.Active;
      D.CloseAll;
      if WasActive then
      try
        D.Active := True;
      except
        on E:Exception do ShowMessage('Error reactivating dataset ' + D.Name + ':'#13#10 + E.Message);
      end;
    end;
  finally
    DataSets.UnlockList;
  end;
end;

// Attach to the server in LogonDatabase property
procedure TOracleSession.ServerAttach;
var EnvMode: ub4;
begin
  if envhp = nil then
  begin
    EnvMode := OCI_DEFAULT;
    if not OCI81 then
    begin
      if not ThreadSafe then EnvMode := EnvMode or OCI_ENV_NO_MUTEX;
      OCICall(OCIEnvInit(envhp, EnvMode, 0, nil))
    end else begin
      // Net8 8.1 cannot switch ctx to lda in no_mutex mode
      EnvMode := EnvMode or OCI_OBJECT;
      if ThreadSafe then EnvMode := EnvMode or OCI_THREADED;
      OCICall(OCIEnvCreate(envhp, EnvMode, nil, nil, nil, nil, 0, nil));
    end;
    OCICall(OCIHandleAlloc(envhp, svchp, OCI_HTYPE_SVCCTX, 0, nil));
    OCICall(OCIHandleAlloc(envhp, errhp, OCI_HTYPE_ERROR, 0, nil));
    OCICall(OCIHandleAlloc(envhp, secerrhp, OCI_HTYPE_ERROR, 0, nil));
    OCICall(OCIHandleAlloc(envhp, srvhp, OCI_HTYPE_SERVER, 0, nil));
    OCICall(OCIHandleAlloc(envhp, authp, OCI_HTYPE_SESSION, 0, nil));
  end;
  if ServerAttached then OCIServerDetach(srvhp, secerrhp, OCI_DEFAULT);
  ServerAttached := False;
  OCICall(OCIServerAttach(srvhp, errhp, PChar(FDatabase), Length(FDatabase), OCI_DEFAULT));
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
  ServerAttached := True;
  OCIAttrSet(svchp, OCI_HTYPE_SVCCTX, srvhp, 0, OCI_ATTR_SERVER, secerrhp);
  OCIAttrSet(svchp, OCI_HTYPE_SVCCTX, authp, 0, OCI_ATTR_SESSION, secerrhp);
end;

// Decode Username, Password and Database
function TOracleSession.DecodeUsername: string;
var ap, sp: Integer;
begin
  Result := FUserName;
  if FPassword <> '' then Result := Result + '/' + FPassword;
  if FDatabase <> '' then Result := Result + '@' + FDatabase;
  // Result contains the full username/password@database string
  // FUsername, FPassword and FDatabase are then extracted so they always
  // contain correct data
  sp := Pos('/', Result);
  ap := Pos('@', Result);
  if ap = 0 then ap := Length(Result) + 1;
  if sp > 0 then
  begin
    FUserName := Copy(Result, 1, sp - 1);
    FPassword := Copy(Result, sp + 1, ap - sp - 1);
  end;
  if ap < Length(Result) then
    FDatabase := Copy(Result, ap + 1, Length(Result) - ap)
  else
    FDatabase := '';
end;

// Logon to the Database
procedure TOracleSession.LogOn;
var s: string;
    MonErr: string;
    NewSQLTrace: TSQLTraceOption;
    NewOptimizerGoal: TOptimizerGoalOption;
    NewIsolationLevel: TIsolationLevelOption;
    Err: EOracleError;
    Version: array[0..500] of char;
    LogonMode: Integer;
    tmpenv: OCIEnv;
    tmperr: OCIError;
begin
  if (FConnected or (not Shared)) and (FPooling <> spNone) then
  begin
    LogOff;
    if FPooling = spInternal then
    begin
      SessionPool.Reserve(Self);
      Exit;
    end;
    if FPooling = spMTS then
    begin
      ExternalSVC := MTSSvcGet;
      Exit;
    end;
  end;
  DoBeforeLogon;
  if MonitorPresent then
  begin
    s := Logonusername;
    if Logondatabase <> '' then s := s + '@' + LogonDatabase;
    SendStartActivity('Session.LogOn as ' + s, MonitorParameters);
  end;
  MonErr := '';
  try
    try
      if POLite and (not POLite35) and (OCIDLL = '') then OCIDLL := 'ora73.dll';
      try
        SetCursor;
        InitOCI;
      finally
        RestoreCursor;
      end;
      {$IFDEF EVALUATION}
      if not CFD then raise Exception.Create(EvaluationMessage);
      {$ENDIF}
      Logoff;
      UseOCI80 := (not FPreferences.UseOCI7) and OCI80Detected and (not ForceOCI7) and (not POLite) and (FExternalLDA = nil);
      CtxToLda := False;
      if not Shared then
      begin
        s := DecodeUsername;
        FillChar(HDA, SizeOf(HDA), #0);
        FillChar(LDA^, SizeOf(LDA), #0);
        try
          SetCursor;
          // Log on with the appropriate OCI function
          if UseOCI80 then
          begin
            LogonMode := OCI_DEFAULT;
            case ConnectAs of
              caSYSOPER: LogonMode := OCI_SYSOPER;
               caSYSDBA: LogonMode := OCI_SYSDBA;
            end;
            ServerAttach;
            if (FUsername = '') and (FPassword = '') then
              OCICall(OCISessionBegin(svchp, errhp, authp, OCI_CRED_EXT, LogonMode))
            else begin
              OCICall(OCIAttrSet(authp, OCI_HTYPE_SESSION, PChar(FUsername), Length(FUsername), OCI_ATTR_USERNAME, errhp));
              OCICall(OCIAttrSet(authp, OCI_HTYPE_SESSION, PChar(FPassword), Length(FPassword), OCI_ATTR_PASSWORD, errhp));
              OCICall(OCISessionBegin(svchp, errhp, authp, OCI_CRED_RDBMS, LogonMode));
            end;
            if ReturnCode = 0 then
            begin
              // Logged on, determine the server version
              OCICall(OCIServerVersion(srvhp, errhp, Version, SizeOf(Version), OCI_HTYPE_SERVER));
              UseOCI80 := (Pos('ORACLE8', UpperCase(Version)) > 0) or
                          (Pos('ORACLE9', UpperCase(Version)) > 0);
              // Never use OCI80 on Oracle7 databases!!!
              if not UseOCI80 then
              begin
                OCICall(OCISvcCtxToLda(svchp, errhp, LDA^));
                CtxToLda := True;
              end;
            end;
          end else begin
            if @olog = nil then
              orlon(LDA, HDA, PChar(s), -1, nil, -1, 0)
            else
              olog(LDA, HDA, PChar(s), -1, nil, -1, nil, -1, 0);
          end;
        finally
          RestoreCursor;
        end;
        if ReturnCode = 28002 then
        begin
          // ORA-28002, the account will expire within .. days
          // The session is logged on now, but we need to save this message
          Err := EOracleError.Create(Self, ErrorHandle);
          FExpirationMessage := Err.Message;
          Err.Free;
          LastOCIError := OCI_SUCCESS;
        end else begin
          FExpirationMessage := '';
          if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
        end;
      end;
      if FExternalSVC <> nil then
      begin
        UseOCI80 := True;
        svchp := FExternalSVC;
        // Create a new temporary environment and error handle to determine
        // the environment handle of the service context handle
        OCICall(OCIEnvInit(tmpenv, 0, 0, nil));
        OCICall(OCIHandleAlloc(tmpenv, tmperr, OCI_HTYPE_ERROR, 0, nil));
        OCICall(OCIAttrGet(svchp, OCI_HTYPE_SVCCTX, envhp, nil, OCI_ATTR_ENV, tmperr));
        OCICall(OCIHandleFree(tmperr, OCI_HTYPE_ERROR));
        OCICall(OCIHandleFree(tmpenv, OCI_HTYPE_ENV));
        // Allocate this session's error handles
        OCICall(OCIHandleAlloc(envhp, errhp, OCI_HTYPE_ERROR, 0, nil));
        OCICall(OCIHandleAlloc(envhp, secerrhp, OCI_HTYPE_ERROR, 0, nil));
        // Determine the server handle and session handle
        OCICall(OCIAttrGet(svchp, OCI_HTYPE_SVCCTX, srvhp, nil, OCI_ATTR_SERVER, errhp));
        OCICall(OCIAttrGet(svchp, OCI_HTYPE_SVCCTX, authp, nil, OCI_ATTR_SESSION, errhp));
      end;
      FConnected := True;
      // Set session properties where different from default
      if not Shared then
      begin
        if AutoCommit then
        begin
          FAutoCommit := False;
          AutoCommit := True;
        end;
        if SQLTrace <> stUnchanged then
        begin
          NewSQLTrace := SQLTrace;
          FSQLTrace   := stUnchanged;
          SQLTrace    := NewSQLTrace;
        end;
        if OptimizerGoal <> ogUnchanged then
        begin
          NewOptimizerGoal := OptimizerGoal;
          FOptimizerGoal   := ogUnchanged;
          OptimizerGoal    := NewOptimizerGoal;
        end;
        if IsolationLevel <> ilUnchanged then
        begin
          NewIsolationLevel := IsolationLevel;
          FIsolationLevel   := ilUnchanged;
          IsolationLevel    := NewIsolationLevel;
        end;
        if Assigned(InternalMonitorListening) then GetAUDSID;
      end;
    except
      on E: Exception do
      begin
        MonErr := E.Message;
        raise;
      end;
    end;
  finally
    if MonitorPresent then
    begin
      GetAUDSID;
      SendEndActivity('', MonErr, MonitorParameters);
    end;
    ResetOCIPath;
    if not (csReading in ComponentState) then
    begin
      DoAfterLogon;
      if Assigned(FOnChange) then FOnChange(Self);
    end;
  end;
end;

procedure TOracleSession.LogOff;
var tmpsvc: OCISvcCtx;
    MonErr: string;
begin
  if Connected then
  begin
    if FRollbackOnDisconnect and (not Shared) then
    try
      Rollback;
    except;
    end;
    CloseChildren;
    if OracleTableInfoList <> nil then OracleTableInfoList.Clear;
    FConnected := False;
    FAUDSID := '';
    FDateFormatLength := -1;
    CurrentBytesPerCharacter := 0;
    if MonitorPresent then SendStartActivity('Session.LogOff', nil);
    MonErr := '';
    SetCursor;
    try
      try
        if Shared then
        begin
          ExtProcContext := nil;
          tmpsvc := FExternalSVC;
          FExternalLDA := nil;
          FExternalSVC := nil;
          envhp := nil;
          if UseOCI80 then
          begin
            OCICall(OCIHandleFree(errhp, OCI_HTYPE_ERROR));
            OCICall(OCIHandleFree(secerrhp, OCI_HTYPE_ERROR));
          end;
          if FPooling = spInternal then SessionPool.Release(Self);
          if FPooling = spMTS then MTSSvcRel(tmpsvc);
        end else begin
          if (not UseOCI80) and CtxToLda then
          begin
            OCICall(OCILdaToSvcCtx(svchp, errhp, LDA^));
            UseOCI80 := True;
            CtxToLda := False;
          end;
          if UseOCI80 then
            OCICall(OCISessionEnd(svchp, errhp, authp, 0))
          else
            ologof(LDA);
          if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
        end;
      except
        on E: Exception do
        begin
          MonErr := E.Message;
          raise;
        end;
      end;
    finally
      RestoreCursor;
      if MonitorPresent then SendEndActivity('', MonErr, nil);
    end;
    if (not (csDestroying in ComponentState)) and Assigned(FOnChange) then FOnChange(Self);
  end;
  if ServerAttached then
  begin
    OCICall(OCIServerDetach(srvhp, errhp, OCI_DEFAULT));
    ServerAttached := False;
    if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
  end;
  if UseOCI80 and (envhp <> nil) then
  begin
    OCICall(OCIHandleFree(srvhp, OCI_HTYPE_SERVER));
    OCICall(OCIHandleFree(svchp, OCI_HTYPE_SVCCTX));
    OCICall(OCIHandleFree(errhp, OCI_HTYPE_ERROR));
    OCICall(OCIHandleFree(secerrhp, OCI_HTYPE_ERROR));
    OCICall(OCIHandleFree(authp, OCI_HTYPE_SESSION));
    OCICall(OCIHandleFree(envhp, OCI_HTYPE_ENV));
    envhp := nil;
  end;
end;

// Check and possibly reconnect the database connection
function TOracleSession.CheckConnection(Reconnect: Boolean): TCheckConnectionResult;
var Q: TOracleQuery;
begin
  Result := ccOK;
  // If the session is not connected, simply log on
  if not Connected then
  begin
    try
      Result := ccError;
      if Reconnect then
      begin
        LogOn;
        Result := ccReconnected
      end;
    except
    end;
  end else begin
   // If connected, execute a simple statement to test the connection
   Q := TOracleQuery.Create(nil);
   try
     Q.Session := Self;
     Q.SQL.Text := 'select ''x'' from dual';
     Q.Execute;
   except
     on E: EOracleError do
     begin
       if (E.ErrorCode <> 1000) and // ORA-00942: table or view does not exist
          (E.ErrorCode <> 942) then // ORA-01000: maximum open cursors exceeded
       begin                        // which means that connection is still OK
         Result := ccError;
         try
           // if it failed, LogOff first and ignore any error
           LogOff;
         except
         end;
         if Reconnect then
         try
           // try to LogOn again
           LogOn;
           Result := ccReconnected;
         except
         end;
       end;
     end;
   end;
   Q.Free;
  end;
end;

// Set the password of the user in the logon properties
// For OCI 8, you do not need to be logged on
procedure TOracleSession.SetPassword(const NewPassword: string);
begin
  if POLite and (not POLite35) and (OCIDLL = '') then OCIDLL := 'ora73.dll';
  SetCursor;
  try
    InitOCI;
  finally
    RestoreCursor;
  end;
  if UseOCI80 then
  begin
    if not ServerAttached then
    begin
      DecodeUsername;
      ServerAttach;
    end;
    OCICall(OCIPasswordChange(svchp, errhp, PChar(FUsername), Length(FUsername),
                              PChar(FPassword), Length(FPassword),
                              PChar(NewPassword), Length(NewPassword), OCI_DEFAULT));
  end else begin
    DoSQL('alter user ' + FUsername + ' identified by ' + NewPassword, True);
  end;
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
  FPassword := NewPassword;
end;

procedure TOracleSession.BreakExecution;
begin
  if UseOCI80 then
  begin
    OCICall(OCIBreak(svchp, errhp));
    if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
  end else begin
    obreak(LDA);
  end;
end;

procedure TOracleSession.SetTransaction(const ATransactionMode: TTransactionMode);
var s: string;
begin
  case ATransactionMode of
         tmReadOnly: s := 'read only';
        tmReadWrite: s := 'read write';
    tmReadCommitted: s := 'isolation level read committed';
     tmSerializable: s := 'isolation level serializable';
  end;
  DoSQL('set transaction ' + s, True);
end;

function TOracleSession.OCIDateCreate: TOCIDate;
begin
  CheckNet8(Self, 'OCIDateCreate', False);
  OCICall(OCIObjectNew(envhp, errhp, svchp, OCI_TYPECODE_DATE, nil, nil,
                       OCI_DURATION_SESSION, True, Result));
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
end;

procedure TOracleSession.OCIDateFree(OCIDate: TOCIDate);
begin
  CheckNet8(Self, 'OCIDateFree', False);
  OCICall(OCIObjectFree(envhp, errhp, OCIDate, OCI_DEFAULT));
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
end;

function TOracleSession.OCIDateToDateTime(OCIDate: TOCIDate): TDateTime;
begin
  OCIToDelphiDate(OCIDate, Result);
end;

procedure TOracleSession.OCIDateFromDateTime(OCIDate: TOCIDate; DateValue: TDateTime);
begin
  DelphiToOCIDate(DateValue, OCIDate);
end;

function TOracleSession.OCINumberCreate: TOCINumber;
begin
  CheckNet8(Self, 'OCINumberCreate', False);
  OCICall(OCIObjectNew(envhp, errhp, svchp, OCI_TYPECODE_NUMBER, nil, nil,
                       OCI_DURATION_SESSION, True, Result));
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
end;

procedure TOracleSession.OCINumberFree(OCINumber: TOCINumber);
begin
  CheckNet8(Self, 'OCINumberFree', False);
  OCICall(OCIObjectFree(envhp, errhp, OCINumber, OCI_DEFAULT));
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
end;

function TOracleSession.OCINumberToFloat(OCINumber: TOCINumber): Double;
begin
  CheckNet8(Self, 'OCINumberToFloat', False);
  OCICall(OCINumberToReal(errhp, OCINumber, SizeOf(Result), Result));
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
end;

procedure TOracleSession.OCINumberFromFloat(OCINumber: TOCINumber; FloatValue: Double);
begin
  CheckNet8(Self, 'OCINumberFromFloat', False);
  OCICall(OCINumberFromReal(errhp, @FloatValue, SizeOf(FloatValue), OCINumber));
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
end;

function TOracleSession.OCINumberToInt(OCINumber: TOCINumber): Integer;
begin
  CheckNet8(Self, 'OCINumberToInt', False);
  OCICall(OracleCI.OCINumberToInt(errhp, OCINumber, SizeOf(Result), OCI_NUMBER_SIGNED, Result));
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
end;

procedure TOracleSession.OCINumberFromInt(OCINumber: TOCINumber; IntValue: Integer);
begin
  CheckNet8(Self, 'OCINumberFromInt', False);
  OCICall(OracleCI.OCINumberFromInt(errhp, @IntValue, SizeOf(IntValue), OCI_NUMBER_SIGNED, OCINumber));
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
end;

procedure TOracleSession.ExtProcCheck;
begin
  if ExtProcContext = nil then
    raise Exception.Create('Operation only allowed in external procedure context');
end;

procedure TOracleSession.ExtProcShare(Context: Pointer);
var l_envhp: OCIEnv;
    l_svchp: OCISvcCtx;
    l_errhp: OCIError;
    Error: Integer;
begin
  InitOCI;
  if not ExtProcDetected then
    raise Exception.Create('ExtProcShare requires Net8 8.0.5 or later');
  Error := OCIExtProcGetEnv(Context, l_envhp, l_svchp, l_errhp);
  if Error <> OCI_SUCCESS then
    raise Exception.Create('Error sharing external procedure context (' + IntToStr(Error) + ')');
  ExternalSVC := l_svchp;
  ExtProcContext := Context;
end;

procedure TOracleSession.ExtProcRaise(ErrorNumber: Integer; const ErrorMessage: string);
begin
  ExtProcCheck;
  OCIExtProcRaiseExcpWithMsg(ExtProcContext, ErrorNumber, PChar(ErrorMessage), Length(ErrorMessage));
end;

procedure TOracleSession.InternalCommit;
begin
  if MTSEnlisted then
    raise Exception.Create('Cannot commit an MTS Controlled Transaction');
  Acquire(True);
  if UseOCI80 then
  begin
    OCICall(OCITransCommit(svchp, errhp, OCI_DEFAULT));
  end else begin
    ocom(LDA);
  end;
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
  Release(True);
end;

procedure TOracleSession.Commit;
begin
  if Connected then
  begin
    if MonitorPresent then SendStartActivity('Session.Commit', nil);
    try
      InternalCommit;
    except
      on E: Exception do
      begin
        if MonitorPresent then SendEndActivity('', E.Message, nil);
        raise;
      end;
    end;
    if MonitorPresent then SendEndActivity('', '', nil);
  end;
end;

procedure TOracleSession.InternalRollback;
begin
  if Connected then
  begin
    if MTSEnlisted then
      raise Exception.Create('Cannot rollback an MTS Controlled Transaction');
    Acquire(True);
    if UseOCI80 then
    begin
      OCICall(OCITransRollback(svchp, errhp, OCI_DEFAULT));
    end else begin
      orol(LDA);
    end;
    if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
    Release(True);
  end;
end;

procedure TOracleSession.Rollback;
begin
  if Connected then
  begin
    if MonitorPresent then SendStartActivity('Session.Rollback', nil);
    try
      InternalRollback;
    except
      on E: Exception do
      begin
        if MonitorPresent then SendEndActivity('', E.Message, nil);
        raise;
      end;
    end;
    if MonitorPresent then SendEndActivity('', '', nil);
  end;
end;

function TOracleSession.InTransaction: Boolean;
var id: Variant;
begin
  if not Connected then
    Result := False
  else begin
    Result := True;
    with GetQuery do
    begin
      DeclareVariable('id', otString);
      SQL.Text := 'begin :id := sys.dbms_transaction.local_transaction_id; end;';
      Execute;
      id := GetVariable('id');
      if VarIsEmpty(id) or VarIsNull(id) then Result := False;
    end;
  end;
end;

procedure TOracleSession.FlushObjects;
begin
  if Connected and UseOCI80 then
  begin
    OCICall(OCICacheFlush(envhp, errhp, svchp, nil, nil, nil));
    if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
  end;
end;

procedure TOracleSession.Savepoint(const ASavepoint: string);
begin
  DoSQL('savepoint ' + ASavepoint, False);
end;

procedure TOracleSession.RollbackToSavepoint(const ASavepoint: string);
begin
  DoSQL('rollback to savepoint ' + ASavepoint, False);
end;

procedure TOracleSession.Loaded;
begin
  if FConnected then
  begin
    DoAfterLogon;
    if Assigned(FOnChange) then FOnChange(Self);
  end;
end;

procedure TOracleSession.DoBeforeLogon;
begin
  if Assigned(FBeforeLogOn) then FBeforeLogOn(Self);
end;

procedure TOracleSession.DoAfterLogon;
begin
  if Assigned(FAfterLogOn) then FAfterLogOn(Self);
end;

function TOracleSession.DesignConnectionProperty: Boolean;
begin
  Result := FDesignConnection and (not (csDesigning in ComponentState)) and
            ((csReading in ComponentState));
end;

procedure TOracleSession.GetNumberDataType(APrecision, AScale: Integer; AStringFieldsOnly: Boolean; out ADataType: sb2; out ABufSize: sb4);
var IntPrec, FltPrec: Integer;
    IsFloat: Boolean;
begin
  IntPrec := Preferences.IntegerPrecision;
  FltPrec := Preferences.FloatPrecision;
  // For POLite, 32 bit integers are reported as number(10)
  if IntPrec = 0 then
    if POLite then IntPrec := 10 else IntPrec := 9;
  // If no float precision is given, anything will do
  if FltPrec = 0 then FltPrec := MaxInt;
  // Check for floating point numbers
  IsFloat := (AScale = -127);
  if IsFloat then
  begin
    APrecision := 38;
    AScale := 1;
  end;
  // Determine actual precision
  if (AScale = 0) and (APrecision = 0) then APrecision := 38;
  // Determine field type
  if (AScale <= 0) and (APrecision <= IntPrec) and not AStringFieldsOnly then
  begin
    ADataType := otInteger;
    ABufSize  := SizeOf(LongInt);
  end else begin
    if (APrecision <= FltPrec) and not AStringFieldsOnly then
    begin
      ADataType := otFloat;
      ABufSize  := SizeOf(Double);
    end else begin
      ADataType := otString;
      if AScale > 0 then
        ABufSize := APrecision + 3  // precision + sign + . + trailing 0
      else
        ABufSize := APrecision + 2; // precision + sign + trailing 0
      if IsFloat then Inc(ABufSize, 132);
    end;
  end;
end;

procedure TOracleSession.SetPooling(const Value: TSessionPoolingOption);
begin
  if Value = FPooling then Exit;
  if Connected then
    raise Exception.Create('Cannot change Pooling property when connected');
  FPooling := Value;
end;

procedure TOracleSession.SetMTSOptions(const Value: TMTSOptions);
begin
  if Value = FMTSOptions then Exit;
  if Connected then
    raise Exception.Create('Cannot change MTSOptions property when connected');
  FMTSOptions := Value;
end;

procedure TOracleSession.SetConnected(const Value: Boolean);
begin
  if Value = FConnected then Exit;
  if DesignConnectionProperty then Exit;
  if Value then Logon else Logoff;
end;

procedure TOracleSession.DetectPOLite;
begin
  {$IFDEF LINUX}
  POLite   := False;
  POLite35 := False;
  {$ELSE}
  POLite := (Pos('ODBC:',UpperCase(FDatabase)) > 0) or
            (Pos('ODBC:',UpperCase(FUsername)) > 0);
  POLite35 := POLite and
              (ReadRegString(HKEY_LOCAL_MACHINE, 'SOFTWARE\ORACLE', 'OCA60') <> '');
  {$ENDIF}
end;

procedure TOracleSession.SetLogonUsername(const Value: string);
begin
  if Value = FUsername then Exit;
  if DesignConnectionProperty then Exit;
  FUsername := Value;
  DetectPOLite;
end;

procedure TOracleSession.SetLogonPassword(const Value: string);
begin
  if Value = FPassword then Exit;
  if DesignConnectionProperty then Exit;
  FPassword := Value;
  DetectPOLite;
end;

procedure TOracleSession.SetLogonDatabase(const Value: string);
begin
  if Value = FDatabase then Exit;
  if DesignConnectionProperty then Exit;
  FDatabase := Value;
  DetectPOLite;
end;

procedure TOracleSession.SetAutoCommit(const Value: Boolean);
begin
  if Value = FAutoCommit then Exit;
  if Value and (csDesigning in ComponentState) then
  begin
    ShowMessage('Warning: the TOracleSession.AutoCommit property is obsolete.' + #13#10 +
                'It still can be set at run-time for backward compatibility,' + #13#10 +
                'but in the next release this property will be removed.');
    Exit;
  end;
  FAutoCommit := Value;
  if Connected then
  begin
    if not UseOCI80 then
    begin
      Acquire(True);
      if AutoCommit then ocon(LDA) else ocof(LDA);
      if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
      Release(True);
    end;
  end;
end;

procedure TOracleSession.SetThreadSafe(const Value: Boolean);
begin
  if Value = FThreadSafe then Exit;
  if Connected then
    raise Exception.Create('Cannot change ThreadSafe property when connected');
  FThreadSafe := Value;
end;

function TOracleSession.ReturnCode: Integer;
begin
  if UseOCI80 then
  begin
    if (LastOCIError = OCI_ERROR) or (LastOCIError = OCI_SUCCESS_WITH_INFO) then
      OCIErrorGet(errhp, 1, nil, ub4(Result), nil, 0, OCI_HTYPE_ERROR)
    else
      Result := LastOCIError;
  end else begin
    Result := LDA.rc;
  end;
end;

function TOracleSession.ErrorHandle: Integer;
begin
  if UseOCI80 then
  begin
    Result := Integer(errhp);
  end else begin
    Result := LDA.rc;
  end;
end;

function TOracleSession.GetQuery: TOracleQuery;
begin
  if Query <> nil then
    Query.Clear
  else begin
    Query := TOracleQuery.Create(nil);
    Query.Name := 'Query';
    Query.Session := Self;
  end;
  Result := Query;
end;

// Execute a SQL statement in a session
procedure TOracleSession.DoSQL(ASQL: string; ModifyCursor: Boolean);
begin
  try
    if ModifyCursor then SetCursor;
    with GetQuery do
    begin
      SQL.Text := ASQL;
      Execute;
    end;
  finally
    if ModifyCursor then RestoreCursor;
  end;
end;

function TOracleSession.ServerVersion: string;
var i: Integer;
    pc: Char;
begin
  try
    DoSQL('select * from v$version', True);
    Result := Query.Field(0);
  except
    Result := '';
  end;
  if (Result = '') and POLite then
  begin
    if POLite35 then
      Result := 'Oracle Lite'
    else
      Result := 'Personal Oracle Lite';
  end;
  // Strip CR/LF
  pc := ' ';
  for i:= 1 to Length(Result) do
  begin
    if (Result[i] = #13) or (Result[i] = #10) or
      ((Result[i] = '-') and (pc = ' ')) then
    begin
      SetLength(Result, i - 1);
      Break;
    end;
    pc := Result[i];
  end;
end;

function TOracleSession.GetBytesPerCharacter: integer;
var Q: TOracleQuery;
begin
  if CurrentBytesPerCharacter <> 0 then
  begin
    Result := CurrentBytesPerCharacter;
    Exit;
  end;
  if (FBytesPerCharacter = bcAutoDetect) and Connected then
  begin
    Q := TOracleQuery.Create(nil);
    try
      Q.Name := 'BytesPerCharacterQuery';
      Q.Session := Self;
      Q.SQL.Text := 'select length(chr(2000000000)) from dual';
      Q.Execute;
      CurrentBytesPerCharacter := Q.Field(0);
    except
      CurrentBytesPerCharacter := 1;
    end;
    Q.Free;
  end else case FBytesPerCharacter of
         bc1Byte : CurrentBytesPerCharacter := 1;
        bc2Bytes : CurrentBytesPerCharacter := 2;
        bc3Bytes : CurrentBytesPerCharacter := 3;
        bc4Bytes : CurrentBytesPerCharacter := 4;
    bcAutoDetect : CurrentBytesPerCharacter := 1;
  end;
  if CurrentBytesPerCharacter = 0 then CurrentBytesPerCharacter := 1;
  Result := CurrentBytesPerCharacter;
end;

function TOracleSession.MaxVarchar: Integer;
begin
  if UseOCI80 then Result := 4000 else Result := 2000;
  Result := Result div CharacterSize;
end;

procedure TOracleSession.SetSQLTrace(const Value: TSQLTraceOption);
var s: string;
begin
  if Value = FSQLTrace then Exit;
  case Value of
     stTrue: s := 'true';
    stFalse: s := 'false';
  else
    s := '';
  end;
  if Connected and (s <> '') then DoSQL('alter session set sql_trace = ' + s, True);
  FSQLTrace := Value;
end;

procedure TOracleSession.SetOptimizerGoal(const Value: TOptimizerGoalOption);
var s: string;
begin
  if Value = FOptimizerGoal then Exit;
  case Value of
       ogChoose: s := 'choose';
    ogFirstRows: s := 'first_rows';
      ogAllRows: s := 'all_rows';
         ogRule: s := 'rule';
  else
    s := '';
  end;
  if Connected and (s <> '') then DoSQL('alter session set optimizer_goal = ' + s, True);
  FOptimizerGoal := Value;
end;

procedure TOracleSession.SetIsolationLevel(const Value: TIsolationLevelOption);
var s: string;
begin
  if Value = FIsolationLevel then Exit;
  case Value of
    ilReadCommitted: s := 'read committed';
     ilSerializable: s := 'serializable';
  else
    s := '';
  end;
  if Connected and (s <> '') then DoSQL('alter session set isolation_level = ' + s, True);
  FIsolationLevel := Value;
end;

procedure TOracleSession.SetPreferences(const Value: TSessionPreferences);
begin
  FPreferences.Assign(Value);
end;

procedure TOracleSession.SetBytesPerCharacter(const Value: TBytesPerCharacterOption);
begin
  if Value = FBytesPerCharacter then Exit;
  CurrentBytesPerCharacter := 0;
  FBytesPerCharacter := Value;
end;

function TOracleSession.ErrorMessage(ErrorCode: Integer): string;
var Msg: array[0..2000] of char;
    EmptyLDA: PLDA;
begin
  Acquire(True);
  if UseOCI80 then
  begin
    // It's not possible to convert an ErrorCode to a Message in OCI8, so we
    // use an empty LDA structure to get the error message in OCI7
    GetMem(EmptyLDA, SizeOf(TLDA));
    FillChar(EmptyLDA^, SizeOf(TLDA), #0);
    oerhms(EmptyLDA, ErrorCode, Msg, SizeOf(Msg));
    FreeMem(EmptyLDA, SizeOf(TLDA));
  end else begin
    oerhms(LDA, ErrorCode, Msg, SizeOf(Msg));
  end;
  Release(True);
  Result := Msg;
end;

// Acquire/Release exclusive access to a session for thread safety
procedure TOracleSession.Acquire(OCI7Only: Boolean);
begin
  if FThreadSafe and not (UseOCI80 and OCI7Only) then CriticalSection.Enter;
end;

procedure TOracleSession.Release(OCI7Only: Boolean);
begin
  if FThreadSafe and not (UseOCI80 and OCI7Only) then CriticalSection.Leave;
end;

// Determine the length of a date, implicitly converted to a string
function TOracleSession.DateFormatLength: Integer;
var Q: TOracleQuery;
    Month, l: Integer;
const ds = 'select to_char(to_date(''10-%d-1999 10:10:10'', ''dd-mm-yyyy hh24:mi:ss'')) from dual';
begin
  Result := 0;
  if (FDateFormatLength >= 0) or not Connected then
    Result := FDateFormatLength
  else begin
    Q := TOracleQuery.Create(nil);
    try
      Q.Name := 'DateFormatLengthQuery';
      Q.Session := Self;
      for Month := 1 to 12 do
      begin
        if Month > 1 then Q.SQL.Add('union all');
        Q.SQL.Add(Format(ds, [Month]));
      end;
      Q.Execute;
      Result := 0;
      while not Q.Eof do
      begin
        l := Length(Q.FieldAsString(0));
        if l > Result then Result := l;
        Q.Next;
      end;
      Q.Free;
    except
      Q.Free;
    end;
  end;
  if Result <= 0 then Result := 40;
  FDateFormatLength := Result;
end;

// Build an ordered list of master/detail datasets
function TOracleSession.OrderedDataSetList(const DataSets: array of TDataSet): TList;
var i, j: Integer;
    DataSet: TOracleDataSet;
    Okay: Boolean;
begin
  Result := TList.Create;
  try
    for i := Low(DataSets) to High(DataSets) do
    begin
      DataSet := nil;
      Okay := False;
      if DataSets[i] is TOracleDataSet then
      begin
        DataSet := DataSets[i] as TOracleDataSet;
        Okay := (DataSet.Session = Self);
      end;
      if not Okay then
        raise Exception.Create(Name + '.ApplyUpdates: DataSets must belong to this Session');
      j := Result.IndexOf(DataSet);
      if j < 0 then
      begin
        Result.Add(DataSet);
        DataSet.GetDetailList(Result);
      end;
    end;
  except
    Result.Free;
    raise;
  end;
end;

// Apply the updates of the given datasets and commit the transaction
procedure TOracleSession.ApplyUpdates(const DataSets: array of TDataSet; Commit: Boolean);
var i: Integer;
    DataSet: TOracleDataSet;
    DataSetList: TList;
const ActionArray: array[0..2] of TApplyAction = (aaDelete, aaUpdate, aaInsert);
begin
  if AutoCommit then
    raise Exception.Create('ApplyUpdates not possible when AutoCommit = True');
  DataSetList := nil;
  if not POLite then Savepoint('DOA_APPLYPOINT');
  try
    DataSetList := OrderedDataSetList(DataSets);
    // Apply the updates in each dataset.
    // 1. Deletes in reverse order (Detail -> Master)
    for i := DataSetList.Count - 1 downto 0 do
    begin
      DataSet := TOracleDataSet(DataSetList.Items[i]);
      DataSet.ApplyUpdates([aaDelete]);
    end;
    // 2. Updates in normal order (Master -> Detail)
    for i := 0 to DataSetList.Count - 1 do
    begin
      DataSet := TOracleDataSet(DataSetList.Items[i]);
      DataSet.ApplyUpdates([aaUpdate]);
    end;
    // 3. Inserts in normal order (Master -> Detail)
    for i := 0 to DataSetList.Count - 1 do
    begin
      DataSet := TOracleDataSet(DataSetList.Items[i]);
      DataSet.ApplyUpdates([aaInsert]);
    end;
    // 4. Commit the updates
    if Commit then CommitUpdates(DataSets);
    DataSetList.Free;
  except
    DataSetList.Free;
    if not POLite then RollbackToSavepoint('DOA_APPLYPOINT') else Rollback;
    raise;
  end;
end;

// Commit the updates of the given datasets
procedure TOracleSession.CommitUpdates(const DataSets: array of TDataSet);
var i: Integer;
    DataSetList: TList;
begin
  DataSetList := OrderedDataSetList(DataSets);
  try
    // Commit the updates in each dataset (Detail -> Master)
    for i := DataSetList.Count - 1 downto 0 do
      TOracleDataSet(DataSetList.Items[i]).CommitUpdates;
    // Commit the database transaction
    if not MTSEnlisted then Commit;
  finally
    DataSetList.Free;
  end;
end;

// Cancel the updates of the given datasets
procedure TOracleSession.CancelUpdates(const DataSets: array of TDataSet);
var i: Integer;
    DataSetList: TList;
begin
  DataSetList := OrderedDataSetList(DataSets);
  try
    // Cancel the updates in each dataset (Detail -> Master)
    for i := DataSetList.Count - 1 downto 0 do
      TOracleDataSet(DataSetList.Items[i]).CancelUpdates;
    // Rollback the database transaction
    if not MTSEnlisted then Rollback;
  finally
    DataSetList.Free;
  end;
end;

function TOracleSession.LDA: PLDA;
begin
  if FExternalLDA <> nil then Result := FExternalLDA else Result := @FLDA;
end;

procedure TOracleSession.SetExternalLDA(const Value: Pointer);
begin
  LogOff;
  if Value <> nil then
  begin
    FExternalLDA := Value;
    LogOn;
  end;
end;

function TOracleSession.GetExternalLDA: Pointer;
begin
  if (not Connected) or (UseOCI80) then
    raise Exception.Create('ExternalLDA only valid when connected through OCI7');
  Result := LDA;
end;

procedure TOracleSession.SetExternalSVC(const Value: Pointer);
begin
  InitOCI;
  if (not OCI80Detected) or (Preferences.UseOCI7) or (ForceOCI7) then
    raise Exception.Create('ExternalSVC only valid with OCI8');
  LogOff;
  if Value <> nil then
  begin
    FExternalSVC := Value;
    LogOn;
  end;
end;

function TOracleSession.GetExternalSVC: Pointer;
begin
  if (not Connected) or (not UseOCI80) then
    raise Exception.Create('ExternalSVC only valid when connected through OCI8');
  Result := svchp;
end;

function TOracleSession.GetExternalENV: Pointer;
begin
  if (not Connected) or (not UseOCI80) then
    raise Exception.Create('ExternalENV only valid when connected through OCI8');
  Result := envhp;
end;

function TOracleSession.GetExternalSRV: Pointer;
begin
  if (not Connected) or (not UseOCI80) then
    raise Exception.Create('ExternalSRV only valid when connected through OCI8');
  Result := srvhp;
end;

function TOracleSession.GetExternalAUT: Pointer;
begin
  if (not Connected) or (not UseOCI80) then
    raise Exception.Create('ExternalAUT only valid when connected through OCI8');
  Result := authp;
end;

procedure TOracleSession.Share(ToSession: TOracleSession);
begin
  ToSession.LogonUsername := LogonUsername;
  ToSession.LogonPassword := LogonPassword;
  ToSession.LogonDatabase := LogonDatabase;
  if UseOCI80 then
    ToSession.ExternalSVC := ExternalSVC
  else
    ToSession.ExternalLDA := ExternalLDA;
end;

function TOracleSession.GetMonID: Integer;
begin
  if FMonID = 0 then FMonID := GetNewMonID;
  Result := FMonID;
end;

procedure TOracleSession.SendToMonitor(Creation, Signal: Boolean);
var P: TStrings;
begin
  if ((Creation xor SentToMonitor) or not Signal) and MonitorListening then
  begin
    SentToMonitor := Creation;
    if Creation then P := MonitorParameters else P := nil;
    AddMonObject(Creation, ckSession, MonID, 0, Self, nil, P, Signal);
  end;
end;

function TOracleSession.MonitorParameters: TStrings;
begin
  if FMonitorParameters = nil then FMonitorParameters := TStringList.Create;

  with FMonitorParameters do
  begin
    Clear;
    Add('Username');
    Add(LogonUsername);
    Add('Password');
    Add(LogonPassword);
    Add('Database');
    Add(LogonDatabase);
    Add('AUDSID');
    Add(AUDSID);
    Add('OCIDLL');
    Add(OCIDLL);
  end;

  Result := FMonitorParameters;
end;

procedure TOracleSession.MonitorMessage(const Msg: string);
begin
  SendToMonitor(True, True);
  AddMonActivity(ckSession, MonID, MonID, 0, Self, afSingle, 0, Msg, ' ', '', nil, nil, 0);
end;

procedure TOracleSession.MTSCall(Error: Integer; const FunctionName: string);
begin
  if Error <> ORAMTSERR_NOERROR then
  begin
    raise EOracleMTSError.Create(FunctionName, Error, False);
  end;
end;

procedure TOracleSession.MTSInitialize;
begin
  try
    InitMTS;
  except
    on E: Exception do raise EOracleMTSError.Create(E.Message, 0, False);
  end;
end;

function TOracleSession.MTSSvcGet: OCISvcCtx;
var MTSEnv: OCIEnv;
    ConFlgs: ub4;
begin
  MTSInitialize;
  ConFlgs := ORAMTS_CFLG_ALLDEFAULT;
  if not (moImplicit in MTSOptions) then ConFlgs := ConFlgs or ORAMTS_CFLG_NOIMPLICIT;
  if moUniqueServer in MTSOptions   then ConFlgs := ConFlgs or ORAMTS_CFLG_UNIQUESRVR;
  MTSCall(OraMTSSvcGet(PChar(FUsername), PChar(FPassword), PChar(FDatabase),
          Result, MTSEnv, ConFlgs), 'OraMTSSvcGet');
  FMTSEnlisted := (moImplicit in MTSOptions);
  FMTSTransaction := nil;
end;

procedure TOracleSession.MTSSvcRel(OCISvc: OCISvcCtx);
begin
  MTSInitialize;
  FMTSEnlisted := False;
  FMTSTransaction := nil;
  MTSCall(OraMTSSvcRel(OCISvc), 'OraMTSSvcRel');
end;

procedure TOracleSession.MTSEnlist(ATransaction: Pointer);
begin
  MTSInitialize;
  MTSCall(OraMTSSvcEnlistEx(svchp, errhp, ATransaction, ORAMTS_ENFLG_DEFAULT, PChar(FDatabase)),
          'OraMTSSvcEnlistEx');
  FMTSEnlisted := True;
  FMTSTransaction := ATransaction;
end;

procedure TOracleSession.MTSDetach(ATransaction: Pointer);
begin
  MTSInitialize;
  MTSCall(OraMTSSvcEnlistEx(svchp, errhp, ATransaction, ORAMTS_ENFLG_DETCHTX, PChar(FDatabase)),
          'OraMTSSvcEnlistEx');
  FMTSEnlisted := False;
end;

procedure TOracleSession.MTSResume(ATransaction: Pointer);
begin
  MTSInitialize;
  MTSCall(OraMTSSvcEnlistEx(svchp, errhp, ATransaction, ORAMTS_ENFLG_RESUMTX, PChar(FDatabase)),
          'OraMTSSvcEnlistEx');
  FMTSEnlisted := True;
  FMTSTransaction := ATransaction;
end;

procedure TOracleSession.MTSDeEnlist;
begin
  MTSInitialize;
  MTSCall(OraMTSSvcEnlistEx(svchp, errhp, nil, ORAMTS_ENFLG_DEFAULT, PChar(FDatabase)),
          'OraMTSSvcEnlistEx');
  FMTSEnlisted := False;
  FMTSTransaction := nil;
end;

function TOracleSession.GetShared: Boolean;
begin
  Result := (FExternalLDA <> nil) or (FExternalSVC <> nil);
end;

procedure TOracleSession.SendStartActivity(const ADescription: string; Parameters: TStrings);
begin
  SendToMonitor(True, True);
  AddMonActivity(ckSession, MonID, MonID, 0, Self, afStart, 0, ADescription,
                 '', '', nil, Parameters, 0);
  MonActivityStartTime := GetTickCount;
end;

procedure TOracleSession.SendEndActivity(const ADescription, AResultMessage: string; Parameters: TStrings);
var t: LongInt;
begin
  if MonActivityStartTime <> 0 then
  begin
    t := MonActivityStartTime;
    MonActivityStartTime := 0;
    SendToMonitor(True, True);
    AddMonActivity(ckSession, MonID, MonID, 0, Self, afEnd, 0, ADescription,
                   '', AResultMessage, nil, Parameters, t);
  end;
end;

function TOracleSession.GetAUDSID: string;
begin
  if (FAUDSID = '') and Connected then
  begin
    DoSQL('select to_char(userenv(''SESSIONID'')) from dual', False);
    if Query.Eof then FAUDSID := '' else FAUDSID := Query.FieldAsString(0);
  end;
  Result := FAUDSID;
end;

// Get the type code from a TDO
function TOracleSession.TDOToTypeCode(ATDO: OCIType): OCITypeCode;
var Desc: OCIDescribe;
    TypeParam: OCIParam;
begin
  // Allocate the describe handle
  OCIHandleAlloc(envhp, Desc, OCI_HTYPE_DESCRIBE, 0, nil);
  // Get the describe handle for the type
  OCICall(OCIDescribeAny(svchp, errhp, ATDO, 0, OCI_OTYPE_PTR, OCI_DEFAULT, OCI_PTYPE_TYPE, Desc));
  if ReturnCode = 0 then
    // Get the parameter handle for the type
   OCICall(OCIAttrGet(Desc, OCI_HTYPE_DESCRIBE, TypeParam, nil, OCI_ATTR_PARAM, errhp));
  if ReturnCode = 0 then
    // Get the typecode
    OCICall(OCIAttrGet(TypeParam, OCI_DTYPE_PARAM, Result, nil, OCI_ATTR_TYPECODE, errhp));
  // Free the describe handle
  OCIHandleFree(Desc, OCI_HTYPE_DESCRIBE);
  if ReturnCode <> 0 then RaiseOracleError(Self, ErrorHandle);
end;

// Logon Component

constructor TOracleLogon.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FSession := nil;
  FRetries := 2;
  FOptions := [ldAuto, ldDatabase];
  FAliasDropDownCount := 8;
  FHistoryRegSection := '';
  FHistoryIniFile := '';
  FHistorySize := 6;
  FHistoryWithPassword := False;
  FCaption := '';
end;

procedure TOracleLogon.SetSession(Value: TOracleSession);
begin
  FSession := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

procedure TOracleLogOn.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  if (Operation = opRemove) and (AComponent = FSession) then
  begin
    FSession := nil;
  end;
end;

// Executes the Logon dialog in the OracleLogon unit
function TOracleLogon.Execute: Boolean;
begin
  Result := False;
  if Session <> nil then
  begin
    if ldLogonHistory in Foptions then
    begin
      LogonHistory.WithPassword := HistoryWithPassword;
      LogonHistory.Size := HistorySize;
      if HistoryRegSection <> '' then
      begin
        LogonHistory.Clear;
        LogonHistory.Load(HistoryRegSection);
      end else begin
        if HistoryIniFile <> '' then
        begin
          LogonHistory.Clear;
          LogonHistory.LoadIni(HistoryIniFile);
        end;
      end;
    end;
    if Caption <> '' then ltLogonTitle := Caption;
    Result := LogonDialog(Session, Retries, FAliasDropDownCount, FOptions);
    if ldLogonHistory in Foptions then
    begin
      LogonHistory.Save(HistoryRegSection);
      if HistoryRegSection = '' then LogonHistory.SaveIni(HistoryIniFile);
    end;
  end;
end;

// Allow a user to set his/her password
function TOracleLogon.SetPassword: Boolean;
begin
  Result := False;
  if Session <> nil then Result := PasswordDialog(Session, ltPasswordTitle);
end;

// Query component

constructor TOracleQuery.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  {$IFDEF EVALUATION}
  STT;
  {$ENDIF}
  ParentMonID := 0;
  FSession := nil;
  FSQL := TStringList.Create;
  FOptimize := True;
  FDebug := False;
  ParsedSQL := '';
  FCache := 25;
  FCursor := crDefault;
  QueryThread := nil;
  FState := qsIdle;
  FThreaded := False;
  FThreadSynchronized := True;
  Opened := False;
  Described := False;
  CallAfterQuery := False;
  ResultSet := False;
  FieldList := TCollection.Create(TFieldData);
  FVariables := TVariables.Create(Self);
  errhp := nil;
  secerrhp := nil;
  stmthp := nil;
  rowidhp := nil;
  defhp := nil;
  LastOCIError := 0;
end;

destructor TOracleQuery.Destroy;
begin
  QueryThread.Free;
  RemoveFromList;
  Close;
  FieldList.Free;
  FVariables.Free;
  FSQL.Free;
  SendToMonitor(False, True);
  inherited Destroy;
end;

function TOracleQuery.OCICall(err:Integer ): Boolean;
begin
  LastOCIError := err;
  Result := (err = OCI_SUCCESS);
end;

// Allocate statement handle
procedure TOracleQuery.AllocStmthp;
var i, PreFetch: Integer;
begin
  // Deallocate old statement handle
  if stmthp <> nil then OCIHandleFree(stmthp, OCI_HTYPE_STMT);
  // Allocate a new one
  OCIHandleAlloc(Session.envhp, stmthp, OCI_HTYPE_STMT, 0, nil);
  // No Oracle8 caching
  PreFetch := 0;
  OCICall(OCIAttrSet(stmthp, OCI_HTYPE_STMT, @PreFetch, 4, OCI_ATTR_PREFETCH_ROWS, errhp));
  OCICall(OCIAttrSet(stmthp, OCI_HTYPE_STMT, @PreFetch, 4, OCI_ATTR_PREFETCH_MEMORY, errhp));
  // Remove bind information from the variables
  for i := 0 to Variables.Count - 1 do with Variables.Data(i) do
  begin
    bindhp  := nil;
    bindbuf := nil;
  end;
end;

// Replace substitution variables by the actual values
procedure TOracleQuery.ReplaceSubstVariables(var s: string);
var vi, sv, vp: Integer;
    vv: Variant;
    ss: string;
    Ready: Boolean;
    VarList: TStringList;
    VarName: string;
begin
  // First check if there are any substitution variables
  Ready := True;
  for vi := 0 to Variables.Count - 1 do
    if Variables.Data(vi).BufType = otSubst then Ready := False;
  // If so, replace them with the values
  if not Ready then
  begin
    VarList := FindVariables(s, True);
    for sv := VarList.Count - 1 downto 0 do
    begin
      VarName := VarList[sv];
      vi := VariableIndex(VarName);
      if (vi >= 0) and (VariableType(vi) = otSubst) then
      begin
        vv := GetVariable(VarName);
        if VarIsNull(vv) or VarIsEmpty(vv) then ss := '' else ss := vv;
        vp := Integer(VarList.Objects[sv]);
        Delete(s, vp, Length(VarName) + 1);
        Insert(ss, s, vp);
      end;
    end;
    VarList.Free;
  end;
end;

// Return the SQL with substitution variables substituted
function TOracleQuery.SubstitutedSQL: string;
begin
  Result := SQL.Text;
  ReplaceSubstVariables(Result);
end;

function TOracleQuery.GetMonID: Integer;
begin
  if FMonID = 0 then FMonID := GetNewMonID;
  Result := FMonID;
end;

procedure TOracleQuery.SendToMonitor(Creation, Signal: Boolean);
begin
  if ((Creation xor SentToMonitor) or not Signal) and MonitorListening then
  begin
    SentToMonitor := Creation;
    AddMonObject(Creation, ckQuery, MonId, ParentMonID, Self, Session, nil, Signal);
  end;
end;

procedure TOracleQuery.SendStartActivity(const ADescription, ASQL: string; Variables: TVariables);
begin
  SendToMonitor(True, True);
  AddMonActivity(ckQuery, Session.MonID, MonID, ParentMonID, Self,
    afStart, 0, ADescription, ASQL, '', Variables, nil, 0);
  MonActivityStartTime := GetTickCount;
end;

procedure TOracleQuery.SendEndActivity(AnInfo: Integer; const ADescription, AResultMessage: string; Variables: TVariables);
var t: LongInt;
begin
  if MonActivityStartTime <> 0 then
  begin
    t := MonActivityStartTime;
    MonActivityStartTime := 0;
    SendToMonitor(True, True);
    AddMonActivity(ckQuery, Session.MonID, MonID, ParentMonID, Self,
      afEnd, AnInfo, ADescription, '', AResultMessage, Variables, nil, t);
  end;
end;

// Parse the SQL text of a Query
procedure TOracleQuery.Parse(Deferred: Boolean);
var s, sc: string;
    i, j: Integer;
    ft: ub2;
    defflg: sword;
    VarData: TVariableData;
begin
  FErrorPosition := 0;
  FErrorLine := 0;
  Open;
  if ResultSet then
  begin
    FFunctionType := ftSelect;
    Described := False;
    Exit;
  end;
  sc := FSQL.Text;
  // Replace substitution variables by the actual values
  ReplaceSubstVariables(sc);
  // Strip cr's from the SQL text
  SetLength(s, Length(sc));
  j := 0;
  for i := 1 to Length(sc) do
  begin
    if sc[i] <> #13 then
    begin
      Inc(j);
      s[j] := sc[i];
    end;
  end;
  SetLength(s, j);
  if s = '' then s := ' ';
  // Because of a bug in Net8, we need to reparse when a long, long raw or array variable is used
  if Session.UseOCI80 then
  begin
    for i := 0 to Variables.Count - 1 do
    begin
      VarData := Variables.Data(i);
      if (VarData.BufType in [otLong, otLongRaw]) or
         (VarData.IsPLSQLTable) or
         (VarData.ArraySize > 1) or
         (ArrayBindSize > 1) then ParsedSQL := '';
    end;
  end;
  // Parse only if SQL text has changed since the last parse
  // and function does not need to be parsed
  if (not Optimize) or (ParsedSQL = '') or (ParsedSQL <> s) or not
     (FFunctionType in [3, 4, 5, 9, 33, 34, 35, 54, 55, 56]) then
  begin
    FieldList.Clear;
    ParsedSQL := s;
    Session.Acquire(True);
    FFunctionType := 0;
    if Session.UseOCI80 then
    begin
      AllocStmthp;
      OCICall(OCIStmtPrepare(stmthp, errhp, PChar(ParsedSQL), length(ParsedSQL), OCI_NTV_SYNTAX, OCI_DEFAULT));
      if ReturnCode = 0 then
      begin
        OCICall(OCIAttrGet(stmthp, OCI_HTYPE_STMT, ft, nil, OCI_ATTR_STMT_TYPE, errhp));
        case ft of
          OCI_STMT_SELECT: FFunctionType := 4;
          OCI_STMT_UPDATE: FFunctionType := 5;
          OCI_STMT_DELETE: FFunctionType := 9;
          OCI_STMT_INSERT: FFunctionType := 3;
           OCI_STMT_BEGIN: FFunctionType := 34;
         OCI_STMT_DECLARE: FFunctionType := 34;
        else
          FFunctionType := -1;
        end;
      end;
    end else begin
      if Deferred then defflg := 1 else defflg := 0;
      oparse(CDA, PChar(ParsedSQL), -1, defflg, 2);
      // Parsed successfully, set functiontype
      FFunctionType := CDA.ft;
    end;
    if ReturnCode <> 0 then
    begin
      ParsedSQL := '';
      RaiseException;
    end;
    Session.Release(True);
    // If parsed then the Query must be described as well
    Described := False;
  end;
end;

// Bind all variables of the Query
procedure TOracleQuery.BindVariables;
var i: Integer;
    lBufType: ub2;
    lp, lbuf: Pointer;
    lBufSize: Integer;
    Q: TOracleQuery;
    L: TLOBLocator;
    maxsiz: ub4;
    cursiz: Pointer;
    R: TOracleReference;
    O: TOracleObject;
begin
  ArrayBindSize := 0;
  if ResultSet then Exit;
  for i := 0 to Variables.Count - 1 do
    with Variables.Data(i) do if BufType <> otSubst then
    begin
      lBufType := buftype;
      lp := nil;
      // In case of a long variable, the length needs to be returned
      // The maximum size = 64K, however
      if ((buftype = otLong) or (buftype = otLongRaw)) and (bufsize <= $FFFF) then
        lp := @len;
      R := nil; // Hint suppression
      O := nil; //  "        "
      case buftype of
        otPLSQLString:
        begin
          lBufType := otString;
          lbuf := buf;
        end; {PLSQLString}
        otCursor:
        begin
          // For cursor variables, bind the CDA/statement handle of the TOracleQuery
          Q := TOracleQuery(buf);
          if Q = nil then
            raise Exception.Create('Cursor variable ' + Name + ' cannot be nil');
          Q.Close;
          Q.Clear;
          Q.ResultSet := True;
          if Session.UseOCI80 then
          begin
            Q.Open;
            Q.AllocStmthp;
            lbuf := @Q.stmthp;
          end else begin
            lbuf := @Q.CDA;
            lBufType := SQLT_CUR;
          end;
        end; {otCursor}
        otCLOB, otBLOB, otBFile:
        begin
          CheckNet8(FSession, 'A LOB Locator variable', False);
          // For LOB variables, bind the LOBHandle of the LOBLocator
          L := TLOBLocator(buf);
          if L = nil then
            raise Exception.Create('LOB variable ' + Name + ' cannot be nil');
          lbuf := @L.PLOB^;
          if L.IsNull then indp[0] := OCI_IND_NULL else indp[0] := OCI_IND_NOTNULL;
        end; {LOB}
        otReference:
        begin
          CheckNet8(FSession, 'A reference variable', True);
          // For Reference variables, bind the Ref
          R := TOracleReference(buf);
          if R = nil then
            raise Exception.Create('Reference variable ' + Name + ' cannot be nil');
          lbuf := R.PRef;
          if R.IsNull then indp[0] := OCI_IND_NULL else indp[0] := OCI_IND_NOTNULL;
        end; {Reference}
        otObject:
        begin
          CheckNet8(FSession, 'An object variable', True);
          // For Object variables, bind the Instance
          O := TOracleObject(buf);
          if O = nil then
            raise Exception.Create('Object variable ' + Name + ' cannot be nil');
          lbuf := @O.Instance;
        end; {Object}
      else
        lbuf := buf;
      end; {case}
      // Determine the array bind size
      if IsPLSQLTable then
        ArrayBindSize := 1
      else begin
        if ArrayBindSize = 0 then
          ArrayBindSize := ArraySize
        else begin
          if ArraySize <> ArrayBindSize then
            raise Exception.Create('All arrays must be of equal size for Array DML');
        end;
      end;
      // In case of a PL/SQL Table, determine the current and maximum size
      if IsPLSQLTable then
      begin
        maxsiz := ArraySize;
        cursiz := @PLSQLTableElemCount;
      end else begin
        maxsiz := 0;
        cursiz := nil;
      end;
      // Determine the maximum number of characters for a string or char variable
      lBufSize := bufsize;
      if (lBufType in [otString, otChar]) and (BufType <> otPLSQLString) and
         (lBufSize > Session.MaxVarchar + 1) then
        lBufSize := Session.MaxVarchar + 1;
      // Bind it
      Session.Acquire(True);
      if Session.UseOCI80 then
      begin
        if (bindhp <> nil) and (bindbuf = lbuf) then
          OCICall(OCI_SUCCESS)
        else begin
          bindbuf := lbuf;
          OCICall(OCIBindByName(stmthp, bindhp, errhp, PChar(Name), -1, lbuf,
                  lBufSize, lBufType, indp, lp, nil, maxsiz, cursiz, OCI_DEFAULT));
          // For objects, bind the instance
          if (ReturnCode = 0) and (BufType = otObject) then
            OCICall(OCIBindObject(bindhp, errhp, O.TDO, lbuf, nil, @O.NullStruct, nil));
          // For references, bind the object
          if (ReturnCode = 0) and (BufType = otReference) then
            OCICall(OCIBindObject(bindhp, errhp, R.TDO, lbuf, nil, nil, nil));
        end;
      end else begin
        obndra(CDA, PChar(Name), -1, lbuf^, lBufSize, lBufType, -1, indp,
               lp, nil, maxsiz, cursiz, nil, -1 , -1);
      end;
      if ReturnCode <> 0 then RaiseException;
      Session.Release(True);
    end;
end;

// Perform post-processing for complex variables
procedure TOracleQuery.PostProcessVariables;
var i: Integer;
    Ref: TOracleReference;
    LOB: TLOBLocator;
begin
  // Only Oracle8 complex variables need post-processing
  if not Session.UseOCI80 then Exit;
  for i := 0 to Variables.Count - 1 do with Variables.Data(i) do
  begin
    // If null-property of reference has changed, this must be processed
    if BufType = otReference then
    begin
      Ref := TOracleReference(buf);
      if (indp[0] = OCI_IND_NOTNULL) then
      begin
        if Ref.IsNull then Ref.NullStruct[0] := OCI_IND_NOTNULL;
      end else begin
        if not Ref.IsNull then Ref.Clear;
        indp[0] := OCI_IND_NOTNULL;
      end;
    end;
    // If null-property of LOB Locator has changed, this must be processed
    if BufType in [otCLOB, otBLOB, otBFile] then
    begin
      LOB := TLOBLocator(buf);
      if (indp[0] = OCI_IND_NOTNULL) then
      begin
        if LOB.NullStruct <> nil then LOB.NullStruct[0] := OCI_IND_NOTNULL;
      end else begin
        if not LOB.IsNull then LOB.Clear;
        indp[0] := OCI_IND_NOTNULL;
      end;
    end;
  end;
end;

// Find error line and position;
procedure TOracleQuery.GetErrorLocation;
var i, peo: Integer;
begin
  if Session.UseOCI80 then
  begin
    peo := 0;
    // Use $80 for OCI 8.0.5 and $81 for 8.1.5 (and higher?)
    if OCI81Detected then
      OCIAttrGet(stmthp, OCI_HTYPE_STMT, peo, nil, OCI_ATTR_PARSE_ERROR_OFFSET, secerrhp)
    else
      OCIAttrGet(stmthp, OCI_HTYPE_STMT, peo, nil, $80, secerrhp);
  end else begin
    peo := CDA.peo;
  end;
  for i := 1 to peo do
  begin
    if ParsedSQL[i] <> #10 then
      inc(FErrorPosition)
    else begin
      FErrorPosition := 0;
      inc(FErrorLine);
    end;
  end;
  inc(FErrorLine);
  inc(FErrorPosition);
end;

// Describe SQL text
procedure TOracleQuery.InternalDescribe;
var cbufl, dsize: sb4;
    cbuf: array[0..30] of char;
    pos: sword;
    FieldData: TFieldData;
    i, c, numcols: Integer;
    paramhp: OCIParam;
    cbufp: PChar;
    LOBType: Integer;
    shp: ^OCIstmt;
    Ref: OCIRef;
    u1: ub1;
    s1: sb1;
    u2: ub2;
begin
//  if Described then Exit;
  UsedCache := FCache;
  // UsedCache will be set to 1 if there is a long in the FieldList
  FieldList.Clear;
  pos := 1;
  // In case of OCI80, get the number of columns
  if Session.UseOCI80 then
  begin
    OCICall(OCIAttrGet(stmthp, OCI_HTYPE_STMT, numcols, nil, OCI_ATTR_PARAM_COUNT, errhp));
    if ReturnCode <> 0 then RaiseException;
  end;
  repeat // Build the FieldList
    FieldData := TFieldData.Create(FieldList);
    with FieldData do
    begin
      buf := nil;
      Session.Acquire(True);
      if Session.UseOCI80 then
      begin
        if Pos > numcols then
          LastOCIError := 1007
        else begin
          OCICall(OCIParamGet(stmthp, OCI_HTYPE_STMT, errhp, paramhp, Pos));
          if ReturnCode = 0 then
          begin
            OCIAttrGet(paramhp, OCI_DTYPE_PARAM, u2, nil, OCI_ATTR_DATA_SIZE, secerrhp);
            dbsize := u2;
            OCIAttrGet(paramhp, OCI_DTYPE_PARAM, u2, nil, OCI_ATTR_DATA_TYPE, secerrhp);
            dbtype := u2;
            // For objects, get the object type information
            if dbtype = otObject then
            begin
              // Get the ref_tdo for this object. We use this REF object to pin
              // the actual TDO instance, which will remain valid until the field
              // is freed and the TDO instance is unpinned
              OCICall(OCIAttrGet(paramhp, OCI_DTYPE_PARAM, Ref, nil,
                                 OCI_ATTR_REF_TDO, errhp));
              // Allocate a reference to the TDO
              if ReturnCode = 0 then
                OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, OCI_TYPECODE_REF,
                                     nil, nil, OCI_DURATION_SESSION, True, RefTDO));
              if ReturnCode = 0 then
                OCICall(OCIRefAssign(Session.envhp, errhp, Ref, RefTDO));
              // Get the tdo for this object
              if ReturnCode = 0 then
                OCICall(OCIObjectPin(Session.envhp, errhp, RefTDO, nil, OCI_PIN_ANY,
                                     OCI_DURATION_SESSION, OCI_LOCK_NONE, TDO));
              // Assign the TDO to the field
              if ReturnCode = 0 then
                SetTDO(TDO, RefTDO, Session.envhp, Session.errhp);
              // Determine if it is a named collection
              ObjectTypeCode := Session.TDOToTypeCode(TDO);
            end;
            if dbtype = otReference then
              SetTDO(nil, nil, Session.envhp, Session.errhp);
            // For objects and references, get the type owner and name
            if dbtype in [otObject, otReference] then
            begin
              // Type name
              cbufl := 30;
              OCIAttrGet(paramhp, OCI_DTYPE_PARAM, cbufp, @cbufl, OCI_ATTR_TYPE_NAME, secerrhp);
              Move(cbufp^, cbuf, cbufl);
              cbuf[cbufl] := #0;
              TypeName := cbuf;
              // Type owner
              cbufl := 30;
              OCIAttrGet(paramhp, OCI_DTYPE_PARAM, cbufp, @cbufl, OCI_ATTR_SCHEMA_NAME, secerrhp);
              Move(cbufp^, cbuf, cbufl);
              cbuf[cbufl] := #0;
              TypeName := cbuf + '.' + TypeName;
            end;
            cbufl := 30;
            OCIAttrGet(paramhp, OCI_DTYPE_PARAM, cbufp, @cbufl, OCI_ATTR_NAME, secerrhp);
            if cbufl > 30 then cbufl := 30;
            Move(cbufp^, cbuf, cbufl);
            OCIAttrGet(paramhp, OCI_DTYPE_PARAM, u1, nil, OCI_ATTR_PRECISION, secerrhp);
            prec := u1;
            OCIAttrGet(paramhp, OCI_DTYPE_PARAM, s1, nil, OCI_ATTR_SCALE, secerrhp);
            scale := s1;
            OCIAttrGet(paramhp, OCI_DTYPE_PARAM, u1, nil, OCI_ATTR_IS_NULL, secerrhp);
            nullok := u1;
          end;
        end;
      end else begin
        cbufl := sizeof(cbuf) - 1;
        odescr(CDA, pos, dbsize, dbtype, cbuf, cbufl, dsize, prec, scale, nullok);
      end;
      if (ReturnCode <> 0) and (ReturnCode <> 1007) then
      begin
        FieldList.Clear;
        GetErrorLocation;
        ParsedSQL := '';
        RaiseException;
      end;
      Session.Release(True);
      if ReturnCode = 0 then
      begin
        cbuf[cbufl] := #0;
        name := cbuf;
        case dbtype of
           otDate: begin
                     if FStringFieldsOnly then
                     begin
                       buftype := otString;
                       bufsize := Session.DateFormatLength + 1;
                     end else begin
                       buftype := otDate;
                       bufsize := 7;
                     end;
                   end;
         otNumber: begin
                     Session.GetNumberDataType(prec, scale, FStringFieldsOnly, buftype, bufsize);
                   end;
            otRaw: begin
                     buftype := otString;
                     bufsize := (dbsize * 2) + 1;
                   end;
      otRowIdDesc,
          otRowId: begin
                     buftype := otString;
                     bufsize := 19;
                   end;
           otLong: begin
                     // Cache 1 record
                     buftype := otLong;
                     if Session.UseOCI80 then bufsize := 0 else bufsize := InitialLong;
                     UsedCache := 1;
                   end;
        otLongRaw: begin
                     // Cache 1 record
                     buftype   := otLongRaw;
                     if Session.UseOCI80 then bufsize := 0 else bufsize := InitialLong;
                     UsedCache := 1;
                   end;
          otBFile,
           otBLOB,
           otCLOB: begin
                     CheckNet8(FSession, 'A query with LOB''s', False);
                     buftype := dbType;
                     bufsize := SizeOf(Pointer);
                   end;
         otCursor: begin
                     CheckNet8(FSession, 'A query with sub-queries', False);
                     buftype := otCursor;
                     bufsize := SizeOf(Pointer);
                   end;
       otMLSLabel: begin
                     buftype := otString;
                     bufsize := 255;
                   end;
         otObject: begin
                     CheckNet8(FSession, 'A query with objects', True);
                     buftype := otObject;
                     bufsize := SizeOf(Pointer);
                   end;
      otReference: begin
                     CheckNet8(FSession, 'A query with references', True);
                     buftype := otReference;
                     bufsize := SizeOf(Pointer);
                   end;
          else begin
            buftype := otString;
            bufsize := dbsize + 1;
          end;
        end;
      end;
    end;
    Inc(pos);
  until ReturnCode <> 0;
  FieldData.Free;
  // Allocate memory for each field
  for i := 0 to FieldList.Count - 1 do with FieldList.Items[i] as TFieldData do
  begin
    Cache := UsedCache;
    if bufsize > 0 then GetMem(buf, bufsize * UsedCache) else buf := nil;
    // LOBs must be defined as LOB Locators
    if bufType in [otCLOB, otBLOB, otBFile] then
    begin
      if bufType = otBFile then LOBType := OCI_DTYPE_FILE else LOBType := OCI_DTYPE_LOB;
      for c := 0 to UsedCache - 1 do
        OCIDescriptorAlloc(Session.envhp, @buf[c * bufsize], LOBType, 0, nil);
      Obj := TLOBLocator.Create(Session, bufType);
      TLOBLocator(Obj).ParentMonID := Self.MonID;
      TLOBLocator(Obj).Name := Name;
    end;
    // Result sets must be defined as statement handles
    if bufType = otCursor then
    begin
      for c := 0 to UsedCache - 1 do
      begin
        shp := @buf[c * bufsize];
        OCIHandleAlloc(Session.envhp, shp^, OCI_HTYPE_STMT, 0, nil);
      end;
    end;
    // Objects & References must be fetched in an array of nil pointers, so that
    // they will implicitly be allocated
    if bufType in [otObject, otReference] then
    begin
      FillChar(buf^, bufsize * UsedCache, 0);
      // Objects also get pointers to null structures, Obj = TOracleObject
      if BufType = otObject then
      begin
        // Create a new instance for each cache position
        GetMem(NullStructs, SizeOf(Pointer) * UsedCache);
        FillChar(NullStructs^, SizeOf(Pointer) * UsedCache, 0);
        Obj := TOracleObject.New(Session, Self.MonID, Name);
        TOracleObject(Obj).InstanceOwner := False;
      end;
      // Reference, Obj = TOracleReference
      if BufType = otReference then
      begin
        // Create a new instance for each cache position
        Obj := TOracleReference.New(Session, RefTDO, TypeName, Self.MonID, Name);
      end;
    end;
    GetMem(ind, SizeOf(sb2) * UsedCache);
    GetMem(rlen, SizeOf(ub2) * UsedCache);
  end;
  Described := True;
end;

procedure TOracleQuery.SetCursor;
begin
  if Cursor <> crDefault then
  begin
    OldCursor := Screen.Cursor;
    Screen.Cursor := Cursor;
  end;
end;

procedure TOracleQuery.RestoreCursor;
begin
  if Cursor <> crDefault then Screen.Cursor := OldCursor;
end;

procedure TOracleQuery.RaiseException;
begin
  RestoreCursor;
  if CallAfterQuery and Assigned(FAfterQuery) then FAfterQuery(Self);
  CallAfterQuery := False;
  RaiseOracleError(Session, ErrorHandle);
end;

// Callback function to fetch a piece of a long or long raw
function CallbackDefine(octxp: Pointer; defnp: OCIDefine; iter: ub4;
              var bufp: Pointer; var alenp: Pointer; var piece: ub1;
              var indp: Pointer; var rcodep: Pointer): sword; cdecl;
var LongPiece: TLongPiece;
    PieceSize: Integer;
begin
  // Result must be okay
  Result := OCI_CONTINUE;
  // The field is passed as context
  with TFieldData(octxp) do
  begin
    // The first piece is of InitialLong size, next 2x, 4x, 8x upto MaxLong
    if LongPieces.Count = 0 then
    begin
      PieceSize := InitialLong;
    end else begin
      LongPiece := LongPieces.Items[LongPieces.Count - 1] as TLongPiece;
      PieceSize := LongPiece.AllocatedSize;
      if PieceSize < MaxLong then PieceSize := 2 * PieceSize;
    end;
    // Add this piece to the collection
    LongPiece := TLongPiece.Create(LongPieces);
    LongPiece.AllocatedSize := PieceSize;
    // Actual size is in/out: in = allocated, out = actual
    LongPiece.ActualSize := LongPiece.AllocatedSize;
    GetMem(LongPiece.PieceBuf, LongPiece.AllocatedSize);
    // Set the callback pointers
    bufp := @LongPiece.PieceBuf^;
    alenp := @LongPiece.ActualSize;
    indp := @ind^;
    rcodep := nil;
  end;
end;

// Set the piece information for the first and last fetch
procedure TOracleQuery.InitPieces;
var f: Integer;
begin
  for f := 0 to FieldList.Count - 1 do with FieldList.Items[f] as TFieldData do
  begin
    if buftype in [otLong, otLongRaw] then
    begin
      if LongPieces = nil then
        LongPieces := TCollection.Create(TLongPiece)
      else
        LongPieces.Clear;
    end;
  end;
end;

procedure TOracleQuery.InternalDefine;
var i: Integer;
    Mode: ub4;
    lbufsize: sb4;
    lbuftype: sb2;
begin
  defhp := nil;
  for i := 0 to FieldList.Count - 1 do with FieldList.Items[i] as TFieldData do
  begin
    Session.Acquire(True);
    if dbtype = otMLSLabel then lbuftype := otMLSLabel else lbuftype := buftype;
    if Session.UseOCI80 then
    begin
      // All long columns are fetched dynamically
      if lbuftype in [otLong, otLongRaw] then
      begin
        Mode := OCI_DYNAMIC_FETCH;
        lbufsize := $7FFFFFFF;
      end else begin
        Mode := OCI_DEFAULT;
        lbufsize := bufsize;
      end;
      OCICall(OCIDefineByPos(stmthp, defhp, errhp, i + 1, buf, lbufsize, lbuftype,
                   ind, rlen, nil, Mode));
      if (ReturnCode = 0) and (Mode = OCI_DYNAMIC_FETCH) then
        OCICall(OCIDefineDynamic(defhp, errhp, FieldList.Items[i], CallbackDefine));
      // If the field is an object, define it with its TDO
      if (ReturnCode = 0) and (lbuftype = otObject) then
        OCICall(OCIDefineObject(defhp, errhp, TDO, buf, nil, NullStructs, nil));
      // If the field is a reference, define it without a TDO
      if (ReturnCode = 0) and (lbuftype = otReference) then
        OCICall(OCIDefineObject(defhp, errhp, nil, buf, nil, nil, nil));
    end else begin
      odefin(CDA, i + 1, buf^, bufsize, lbuftype, -1, ind^, nil, -1, -1, rlen^, nil);
    end;
    if ReturnCode <> 0 then RaiseException;
    Session.Release(True);
  end;
end;

// Execute a Query, it wil be parsed, described and fetched
procedure TOracleQuery.InternalExecute(DescribeOnly, DescribeDeferred: Boolean; Iters, RowOff: Integer);
var i: integer;
    S: String;
    ft: ub2;
    ExecMode: ub4;
    ExecIters: Integer;
begin
  if Session = nil then raise Exception.Create('Session undefined');
  if MonitorPresent then
  begin
    if DescribeOnly then
      SendStartActivity('Query.Describe', SubstitutedSQL, Variables)
    else
      SendStartActivity('Query.Execute', SubstitutedSQL, Variables);
  end;
  try
    ExecIters := 0;
    if DescribeOnly then
      ExecMode := OCI_DESCRIBE_ONLY
    else begin
      if Session.AutoCommit then
        ExecMode := OCI_COMMIT_ON_SUCCESS
      else
        ExecMode := OCI_DEFAULT;
    end;
    FEof := True;
    if not DLLLoaded then
    begin
      if Session.POLite and (not Session.POLite35) and (OCIDLL = '') then OCIDLL := 'ora73.dll';
      SetCursor;
      try
        InitOCI;
      finally
        RestoreCursor;
      end;
    end;
    if not Session.Connected then raise Exception.Create('Not logged on');
    if Debug and (not DescribeOnly) and (not ResultSet) then
    begin
      if Assigned(InternalDebug) then
        InternalDebug(Self)
      else begin
        S := '';
        if Variables.Count > 0 then
        begin
          for i := 0 to Variables.Count - 1 do with Variables.Data(i) do
            S := S + #13 + Name + ' = ' + DisplayString(Self);
        end;
        ShowMessage(SQL.Text + S);
      end;
    end;
    SetCursor;
    Parse(DescribeDeferred);
    // In case of a SELECT statement we need to bind, describe and fetch
    // In all other cases we only need to bind and execute
    {$IFDEF EVALUATION}
    if IsSelect(FFunctionType) then
    {$ELSE}
    if FFunctionType = ftSelect then
    {$ENDIF}
    begin
      BindVariables;
      // For OCI80 we need to execute the statement before describing it
      if Session.UseOCI80 and not ResultSet then
      begin
        // Only describe when necessary
        if not (Described and DescribeOnly) then
        begin
          // If the statement is already described, use execute to fetch!
          if Described and not DescribeOnly then
          begin
            ExecIters := UsedCache;
            InitPieces;
            FreeFetchedObjects;
            ResetLOBs;
          end;
          if ExecMode = OCI_COMMIT_ON_SUCCESS then ExecMode := OCI_DEFAULT;
          OCICall(OCIStmtExecute(Session.svchp, stmthp, errhp, ExecIters, 0, nil, nil, ExecMode));
          if (ReturnCode <> 0) and (ReturnCode <> 1403) then
          begin
            GetErrorLocation;
            ParsedSQL := '';
            RaiseException;
          end;
        end;
      end;
      if not Described then
      begin
        InternalDescribe;
        InternalDefine;
      end;
      // If we only need to describe the fields, don't execute the statement
      if DescribeOnly then
      begin
        RestoreCursor;
        CacheIndex := 0;
        Cached := 0;
        FEof := True
      end else begin
        Session.Acquire(True);
        if Session.UseOCI80 then
        begin
          if ExecIters = 0 then
          begin
            InitPieces;
            FreeFetchedObjects;
            ResetLOBs;
            OCICall(OCIStmtFetch(stmthp, errhp, UsedCache, OCI_FETCH_NEXT, OCI_DEFAULT));
          end;
        end else begin
          // If query is a cursor variable, we only need to fetch
          if not ResultSet then
            oexfet(CDA, UsedCache, 0, 0)
          else begin
            ofen(CDA, UsedCache);
          end;
        end;
        ResultSet := False;
        if (ReturnCode <> 0) and (ReturnCode <> 1403) then RaiseException;
        Session.Release(True);
        RestoreCursor;
        CacheIndex := 0;
        Cached := RowsProcessed;
        FEof := (Cached = 0);
        if not Eof then SetComplexFields;
      end;
    end else begin
      BindVariables;
      Session.Acquire(True);
      if (ArrayBindSize <= 1) then
      begin
        Iters  := 1;
        RowOff := 0;
      end else begin
        if Iters <= 0 then
        begin
          Iters := ArrayBindSize;
          RowOff := 0;
        end;
      end;
      if not DescribeOnly then
      begin
        if Session.UseOCI80 then
        begin
          OCICall(OCIStmtExecute(Session.svchp, stmthp, errhp, Iters, RowOff, nil, nil, ExecMode));
          OCIAttrGet(stmthp, OCI_HTYPE_STMT, ft, nil, OCI_ATTR_SQLFNCODE, secerrhp);
          FFunctionType := ft;
        end else begin
          oexn(CDA, Iters, RowOff);
          FFunctionType := CDA.ft;
        end;
        if (ReturnCode <> 0) then
        begin
          GetErrorLocation;
          ParsedSQL := '';
          RaiseException;
        end;
      end;
      Session.Release(True);
      RestoreCursor;
    end;
    PostProcessVariables;
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity(0, '', E.Message, Variables);
      raise;
    end;
  end;
  if MonitorPresent then
  begin
    if DescribeOnly or not (FunctionType in [3, 4, 5, 9]) then
      s := ''
    else
      s := ' (' + CountStr(RowsProcessed, 'record') + ' processed)';
    SendEndActivity((Ord(Session.OptimizerGoal) shl 8) + FunctionType, s , '', Variables);
  end;
end;

// TQueryThread

constructor TQueryThread.Create(AnOracleQuery: TOracleQuery);
begin
  Query := AnOracleQuery;
  inherited Create(True);
end;

procedure TQueryThread.Execute;
begin
  while not Terminated do
  begin
    Stopped := False;
    try
      Query.ExecuteArray(-1, -1);
      if Query.ThreadSynchronized then Synchronize(Executed) else Executed;
      while not Query.Eof do
      begin
        if Terminated or Stopped then Break;
        if Query.ThreadSynchronized then Synchronize(RecordFetched) else RecordFetched;
        if not Stopped then Query.Next;
      end;
    except
      on E: EOracleError do
      begin
        ErrorCode := E.ErrorCode;
        ErrorMessage := E.Message;
        if Query.ThreadSynchronized then Synchronize(Error) else Error;
      end;
      on E: Exception do
      begin
        ErrorCode := 0;
        ErrorMessage := E.Message;
        if Query.ThreadSynchronized then Synchronize(Error) else Error;
      end;
    end;
    if not Terminated then
    begin
      if Query.ThreadSynchronized then Synchronize(Finished) else Finished;
      Suspend;
    end;
  end;
end;

procedure TQueryThread.Error;
begin
  if Assigned(Query.OnThreadError) then Query.OnThreadError(Query, ErrorCode, ErrorMessage);
end;

procedure TQueryThread.Executed;
begin
  if Assigned(Query.OnThreadExecuted) then Query.OnThreadExecuted(Query);
end;

procedure TQueryThread.RecordFetched;
begin
  if Assigned(Query.OnThreadRecord) then Query.OnThreadRecord(Query);
end;

procedure TQueryThread.Finished;
begin
  if Assigned(Query.OnThreadFinished) then Query.OnThreadFinished(Query);
end;

procedure TOracleQuery.Execute;
begin
  if Threaded then
  begin
    if QueryThread = nil then QueryThread := TQueryThread.Create(Self);
    if ThreadIsRunning then
      raise Exception.Create('Query thread is still in progress')
    else
      QueryThread.Resume;
  end else
    ExecuteArray(-1, -1);
end;

function TOracleQuery.State: TQueryState;
begin
  Result := FState;
end;

function TOracleQuery.ThreadIsRunning: Boolean;
begin
  Result := (QueryThread <> nil) and (not QueryThread.Suspended);
end;

procedure TOracleQuery.BreakThread;
begin
  if QueryThread <> nil then
  begin
    TQueryThread(QueryThread).Stopped := True;
    if State = qsExecuting then Session.BreakExecution;
    repeat
      Application.ProcessMessages;
    until QueryThread.Suspended;
  end;
end;

function TOracleQuery.ExecuteArray(Index, Count: Integer): Integer;
var Continue: Boolean;
    Offset, ArraySize: Integer;
begin
  Result := 0;
  if Count = 0 then Exit;
  FState := qsExecuting;
  try
    if Assigned(FBeforeQuery) then FBeforeQuery(Self);
    CallAfterQuery := True;
    if (Count = -1) and (Index = -1) then
    begin
      ArraySize := 0;
      Offset    := 0;
    end else begin
      ArraySize := Index + Count;
      Offset    := Index;
    end;
    Continue := True;
    repeat
      try
        InternalExecute(False, True, ArraySize, Offset);
        Inc(Result, RowsProcessed);
        Continue := False;
        except on E:EOracleError do
        begin
          if ArraySize = 0 then ArraySize := ArrayBindSize;
          Inc(Offset, RowsProcessed + 1);
          Inc(Result, RowsProcessed);
          if Assigned(FOnArrayError) then
            FOnArrayError(Self, Offset - 1, E.ErrorCode, E.Message, Continue)
          else begin
            if (Count = -1) and (Index = -1) then raise;
            Continue := False;
          end;
          if Offset >= ArraySize then Continue := False;
        end;
      end;
    until not Continue;
    if Eof then
    begin
      if CallAfterQuery and Assigned(FAfterQuery) then FAfterQuery(Self);
      CallAfterQuery := False;
    end;
  finally
    FState := qsIdle;
  end;
end;

procedure TOracleQuery.DoDescribe(Deferred: Boolean);
begin
  if ThreadIsRunning then
    raise Exception.Create('Query thread is still in progress')
  else
    InternalExecute(True, Deferred, 0, 0);
end;

procedure TOracleQuery.Describe;
begin
  DoDescribe(True);
end;

procedure TOracleQuery.DescribeFull;
begin
  DoDescribe(False);
end;

// Retrieve the next row from the cache
// Fetch new rows into the cache if necessary
procedure TOracleQuery.Next;
var oldrpc: sb4;
begin
  if Eof then Exit;
  if Session=nil then raise Exception.Create('Session undefined');
  if not Session.Connected then raise Exception.Create('Not logged on');
  FState := qsFetching;
  try
    Inc(CacheIndex);
    ResetLOBs;
    if CacheIndex >= Cached then
    begin
      if Cached < UsedCache then
        FEof := true
      else begin
        oldrpc := RowsProcessed;
        SetCursor;
        Session.Acquire(True);
        if MonitorPresent then
          SendStartActivity('Query.Next for up to ' + CountStr(UsedCache, 'record'), '', nil);
        try
          if Session.UseOCI80 then
          begin
            InitPieces;
            FreeFetchedObjects;
            OCICall(OCIStmtFetch(stmthp, errhp, UsedCache, OCI_FETCH_NEXT, OCI_DEFAULT));
          end else begin
            ofen(CDA, UsedCache);
          end;
          // 1403 means "no data found" which is not an error
          if (ReturnCode <> 0) and (ReturnCode <> 1403) then RaiseException;
          Session.Release(True);
          RestoreCursor;
          CacheIndex := 0;
          Cached := RowsProcessed - oldrpc;
          FEof := (Cached = 0);
        except
          on E:Exception do
          begin
            FState := qsIdle;
            if MonitorPresent then SendEndActivity(0, '', E.Message, nil);
            raise;
          end;
        end;
        if MonitorPresent then
          SendEndActivity(0, ' (' + CountStr(Cached, 'record') + ' processed)', '', nil);
      end;
    end;
    if not Eof then SetComplexFields;
    if Eof then
    begin
      if CallAfterQuery and Assigned(FAfterQuery) then FAfterQuery(Self);
      CallAfterQuery := False;
    end;
  finally
    FState := qsIdle;
  end;
end;

// Returns the exact number of fetched rows
function TOracleQuery.RowCount: Integer;
begin
  if Eof then
    Result := RowsProcessed
  else
    Result := (RowsProcessed - Cached) + (CacheIndex + 1);
end;

// Fetch long column as string
function TOracleQuery.FetchStringLong(FieldId: Integer): Variant;
var s: string;
    Bytes, Size, PieceSize: Integer;
    FieldData: TFieldData;
begin
  s := '';
  if Session.UseOCI80 then
  begin
    // In case of OCI80 we already fetched all the pieces
    FieldData := FieldList.Items[FieldId] as TFieldData;
    SetLength(s, FieldData.LongSize);
    GetLongField(FieldId, @s[1], 0, FieldData.LongSize);
  end else begin
    // In case of OCI70 all pieces must be fetched now
    Size := 0;
    // The first piece is of InitialLong size, next 2x, 4x, 8x upto MaxLong
    PieceSize := InitialLong div 2;
    repeat
      if PieceSize < MaxLong then PieceSize := 2 * PieceSize;
      SetLength(s, Size + PieceSize);
      Bytes := GetLongField(FieldId, @s[Size + 1], Size, PieceSize);
      Inc(Size, Bytes);
    until Bytes < PieceSize;
    if Length(s) > Size then SetLength(s, Size);
  end;
  Result := AddCR(s, Session);
end;

// Fetch long column as binary data
function TOracleQuery.FetchBinaryLong(FieldId: Integer): Variant;
var Bytes, Size, PieceSize: Integer;
    P: Pub1Array;
    FieldData: TFieldData;
begin
  if Session.UseOCI80 then
  begin
    // In case of OCI80 we already fetched all the pieces
    FieldData := FieldList.Items[FieldId] as TFieldData;
    Result := VarArrayCreate([0, FieldData.LongSize - 1], varByte);
    P := VarArrayLock(Result);
    GetLongField(FieldId, @P[0], 0, FieldData.LongSize);
    VarArrayUnLock(Result);
  end else begin
    // In case of OCI70 all pieces must be fetched now
    Size := 0;
    // The first piece is of InitialLong size, next 2x, 4x, 8x upto MaxLong
    PieceSize := InitialLong div 2;
    repeat
      if PieceSize < MaxLong then PieceSize := 2 * PieceSize;
      if Size = 0 then
        Result := VarArrayCreate([0, PieceSize - 1], varByte)
      else
        VarArrayRedim(Result, Size + PieceSize - 1);
      P := VarArrayLock(Result);
      Bytes := GetLongField(FieldId, @P[Size], Size, PieceSize);
      VarArrayUnLock(Result);
      Inc(Size, Bytes);
    until Bytes < PieceSize;
    if VarArrayHighBound(Result, 1) > Size - 1 then
      VarArrayRedim(Result, Size - 1);
  end;
end;

// Fetch a LOB value
function TOracleQuery.FetchLOB(FieldId: Integer): Variant;
var FieldData: TFieldData;
    P: Pub1Array;
    LOB: TLOBLocator;
    LOBSize: Integer;
begin
  FieldData := FieldList.Items[FieldId] as TFieldData;
  LOB := LOBField(FieldId);
  LOBSize := LOB.Size;
  if LOBSize = 0 then
  begin
    if Session.NullValue = nvNull then Result := Null else Result := Unassigned;
  end else begin
    if FieldData.buftype = otCLOB then
    begin
      Result := LOB.GetString(LOBSize);
    end else begin
      Result := VarArrayCreate([0, LOBSize - 1], varByte);
      P := VarArrayLock(Result);
      LOB.Read(P[0], LOBSize);
      VarArrayUnLock(Result);
    end;
  end;
end;

function VariantIsString(const V: Variant): Boolean;
var vt: Integer;
begin
  vt := VarType(V);
  Result := (vt = varString) or (vt = varOleStr);
end;

{$IFNDEF Overloading}
// Check FieldId variant and return index or raise exception
function TOracleQuery.VariantFieldIndex(const FieldId: Variant): Integer;
begin
  if not VariantIsString(FieldId) then
  begin
    Result := FieldId;
    if (Result < 0) or (Result > FieldList.Count - 1) then
      raise Exception.Create('Field ' + IntToStr(Result) + ' does not exist');
  end else begin
    Result := FieldIndex(FieldId);
    if Result < 0 then
      raise Exception.Create('Field "' + FieldId + '" not found');
  end;
end;
{$ENDIF}

// Check if we're beyond Eof when accessing field data
procedure TOracleQuery.CheckEof;
begin
  if Eof then
    raise Exception.Create('You cannot access field data beyond Eof');
end;

// Return the value of a field by index
function TOracleQuery.FieldByIndex(Index: Integer): Variant;
var lbuf: Pub1Array;
begin
  with FieldList.Items[Index] as TFieldData do
  begin
    // Check if we're beyond Eof
    CheckEof;
    // Test for null-value or fieldtype without a value
    if (ind^[CacheIndex] = -1) or (buftype in [otCursor, otReference, otObject]) then
    begin
      if Session.NullValue = nvUnAssigned then Result := UnAssigned;
      if Session.NullValue = nvNull then Result := Null;
    end else begin
      // Longs are fetched when accessed, others are converted from buffer
      case buftype of
          otLong: Result := FetchStringLong(Index);
       otLongRaw: Result := FetchBinaryLong(Index);
          otBLOB,
          otCLOB,
         otBFile: Result := FetchLOB(Index);
      else
        begin
          lbuf := @buf^[CacheIndex * bufsize]; // Get data from the cache
          Result := OracleToDelphiData(lbuf, buftype, rlen^[CacheIndex], Session);
        end;
      end;
    end;
  end;
end;

{$IFNDEF Overloading}
// Return the value of a field by name or index
function TOracleQuery.Field(const FieldId: Variant): Variant;
begin
  Result := FieldByIndex(VariantFieldIndex(FieldId));
end;
{$ELSE}
function TOracleQuery.Field(const FieldId: string): Variant;
begin
  Result := FieldByIndex(StringFieldIndex(FieldId));
end;
function TOracleQuery.Field(FieldId: Integer): Variant;
begin
  Result := FieldByIndex(FieldId);
end;
{$ENDIF}

// Return the name of a field by index
function TOracleQuery.FieldName(FieldId: Integer): String;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  Result := (FieldList.Items[FieldId] as TFieldData).Name;
end;

// Return the index of a field by name
function TOracleQuery.FieldIndex(const FieldId: string): Integer;
var i: Integer;
begin
  for i := 0 to FieldList.Count - 1 do with FieldList.Items[i] as TFieldData do
  begin
    if AnsiStrIComp(PChar(FieldId), PChar(Name)) = 0 then
    begin
      Result := i;
      Exit;
    end;
  end;
  Result := -1;
end;

{$IFDEF Overloading}
// Return the index of a field by name, raise exception if not found
function TOracleQuery.StringFieldIndex(const FieldId: string): Integer;
begin
  Result := FieldIndex(FieldId);
  if Result < 0 then raise Exception.Create('Field ' + FieldId + ' does not exist');
end;
{$ENDIF}

// Return the type (ot...) of a field by index
function TOracleQuery.FieldType(FieldId:Integer):Integer;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  Result := (FieldList.Items[FieldId] as TFieldData).buftype;
end;

// Return the dbtype (ot...) of a field by index
function TOracleQuery.FieldDBType(FieldId:Integer):Integer;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  Result := (FieldList.Items[FieldId] as TFieldData).dbtype;
end;

// Return the type name a field by index
function TOracleQuery.FieldTypeName(FieldId:Integer):string;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  Result := (FieldList.Items[FieldId] as TFieldData).TypeName;
end;

function TOracleQuery.FieldPrecision(FieldId: Integer): Integer;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  Result := (FieldList.Items[FieldId] as TFieldData).prec;
end;

function TOracleQuery.FieldScale(FieldId: Integer): Integer;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  Result := (FieldList.Items[FieldId] as TFieldData).scale;
end;

// Return the size of a field by index
function TOracleQuery.FieldSize(FieldId:Integer):Integer;
begin
  if (FieldId < 0) or (FieldId>FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId)+  ' does not exist');
  with FieldList.Items[FieldId] as TFieldData do
  if buftype = otString then // only meaningful for strings
    Result := bufsize - 1
  else
    Result := 0;
end;

// Return if the field is optional or required by index
function TOracleQuery.FieldOptional(FieldId: Integer): Boolean;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  Result := (FieldList.Items[FieldId] as TFieldData).nullok <> 0;
end;

// Return if the field is null
function TOracleQuery.FieldIsNull(FieldId: Integer): Boolean;
var fd: TFieldData;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  // Check if we're beyond Eof
  CheckEof;
  // For non-objects, check the indicator, for objects, check the instance ptr
  fd := FieldList.Items[FieldId] as TFieldData;
  if fd.buftype <> otObject then
    Result := (fd.ind^[CacheIndex] = -1)
  else begin
    Result := (Psb2Array(fd.NullStructs[CacheIndex])[0] <> OCI_IND_NOTNULL);
  end;
end;

// Return a pointer to the binary field data
function TOracleQuery.FieldData(FieldId: Integer): Pointer;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  CheckEof;
  with FieldList.Items[FieldId] as TFieldData do
    Result := @buf^[CacheIndex * bufsize];
end;

// Return a field as string
function TOracleQuery.FieldAsString(FieldId: Integer): string;
var Buffer: Pointer;
    bd: TDateTime;
begin
  if FieldIsNull(FieldId) then
    Result := ''
  else begin
    Buffer := FieldData(FieldId);
    case FieldType(FieldId) of
       otString: Result := AddCR(PChar(Buffer), Session);
      otInteger: Result := IntToStr(PInteger(Buffer)^);
        otFloat: Result := FloatToStr(PDouble(Buffer)^);
         otDate: begin
                   OracleToDelphiDate(Tub1Array(Buffer^), bd);
                   if Frac(bd) = 0 then
                     Result := FormatDateTime('ddddd', bd)
                   else
                     Result := FormatDateTime('ddddd tt', bd);
                 end;
    else
      raise Exception.Create('Cannot convert field ' + FieldName(FieldId) + ' to a String');
    end;
  end;
end;

// Return a field as integer
function TOracleQuery.FieldAsInteger(FieldId: Integer): Integer;
var Buffer: Pointer;
    bd: TDateTime;
begin
  if FieldIsNull(FieldId) then
    Result := 0
  else begin
    Buffer := FieldData(FieldId);
    case FieldType(FieldId) of
       otString: Result := StrToInt(PChar(Buffer));
      otInteger: Result := PInteger(Buffer)^;
        otFloat: Result := Trunc(PDouble(Buffer)^);
         otDate: begin
                   OracleToDelphiDate(Tub1Array(Buffer^), bd);
                   Result := Trunc(bd);
                 end;
    else
      raise Exception.Create('Cannot convert field ' + FieldName(FieldId) + ' to an Integer');
    end;
  end;
end;

// Return a field as float
function TOracleQuery.FieldAsFloat(FieldId: Integer): Double;
var Buffer: Pointer;
    bd: TDateTime;
begin
  if FieldIsNull(FieldId) then
    Result := 0.0
  else begin
    Buffer := FieldData(FieldId);
    case FieldType(FieldId) of
       otString: Result := StrToFloat(PChar(Buffer));
      otInteger: Result := PInteger(Buffer)^;
        otFloat: Result := PDouble(Buffer)^;
         otDate: begin
                   OracleToDelphiDate(Tub1Array(Buffer^), bd);
                   Result := bd;
                 end;
    else
      raise Exception.Create('Cannot convert field ' + FieldName(FieldId) + ' to a Float');
    end;
  end;
end;

// Return a field as date
function TOracleQuery.FieldAsDate(FieldId: Integer): TDateTime;
var Buffer: Pointer;
begin
  if FieldIsNull(FieldId) then
    Result := 0
  else begin
    Buffer := FieldData(FieldId);
    case FieldType(FieldId) of
       otString: Result := StrToDate(PChar(Buffer));
      otInteger: Result := PInteger(Buffer)^;
        otFloat: Result := PDouble(Buffer)^;
         otDate: OracleToDelphiDate(Tub1Array(Buffer^), Result);
    else
      raise Exception.Create('Cannot convert field ' + FieldName(FieldId) + ' to a Date');
    end;
  end;
end;

// Return a piece of a long or long raw field
function TOracleQuery.GetLongField(FieldId: Integer; Buffer: Pointer;
                                   Offset, Length: Integer): Integer;
var OldRpc, flen: ub4;
    lbuf: Pub1Array;
    llen, MoveLen, MoveStart, ToMove: Integer;
    p, pc: Integer;
    LongPiece: TLongPiece;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  with FieldList.Items[FieldId] as TFieldData do
  begin
    if (BufType <> otLong) and (BufType <> otLongRaw) then
      raise Exception.Create('Field ' + IntToStr(FieldId) + ' is not a Long');
    if Session.UseOCI80 then
    begin
      // For OCI80 we have to put the pieces back together
      Result := 0;
      pc := 0;
      ToMove := Length;
      for p := 0 to LongPieces.Count - 1 do
      begin
        LongPiece := LongPieces.Items[p] as TLongPiece;
        MoveStart := Offset - pc;
        if MoveStart < 0 then MoveStart := 0;
        MoveLen := ToMove;
        if MoveLen > LongPiece.ActualSize - MoveStart then
          MoveLen := LongPiece.ActualSize - MoveStart;
        if MoveLen > 0 then
        begin
          Move(LongPiece.PieceBuf[MoveStart], Pub1Array(Buffer)[Result], MoveLen);
          Inc(Result, MoveLen);
          Dec(ToMove, MoveLen);
        end;
        Inc(pc, LongPiece.ActualSize);
      end;
    end else begin
      // Pieces > 64K cannot be fetched at once, call GetLongField recursively
      if Length > 64000 then
      begin
        Result := 0;
        lbuf := Buffer;
        repeat
          MoveLen := GetLongField(FieldId, @lbuf[Result], Offset + Result, 64000);
          Result := Result + MoveLen;
          Dec(Length, MoveLen);
        until (Length <= 0) or (MoveLen < 64000);
      end else begin
        // Check if piece falls within Initially fetched piece of Long
        llen := rlen^[CacheIndex];
        if Offset < llen then
        begin
          // Determine how much can be moved, and move it
          if Length > llen - Offset then MoveLen := llen - Offset else MoveLen := Length;
          lbuf := @buf^[CacheIndex * bufsize];
          Move(lbuf[Offset], Buffer^, MoveLen);
          // Determine where the rest is to be fetced to
          lbuf := @Pub1Array(Buffer)[MoveLen];
        end else begin
          MoveLen := 0;
          lbuf := Buffer;
        end;
        flen := 0;
        // If not all has been moved and there is more to fetch, fetch it
        if (MoveLen < Length) and (llen = InitialLong) then
        begin
          // Save CDA.rpc because it might be reset to 0 by this function
          OldRpc := CDA.rpc;
          Session.Acquire(True);
          oflng(CDA, FieldId + 1, lbuf^, Length - MoveLen, BufType, flen, Offset + MoveLen);
          CDA.rpc := OldRpc;
          if (ReturnCode <> 0) then RaiseOracleError(Session, ErrorHandle);
          Session.Release(True);
        end;
        Result := flen + MoveLen;
      end;
    end;
  end;
end;

{$IFDEF Overloading}
function TOracleQuery.FieldSize(const FieldId: string): Integer;
begin
 Result := FieldSize(StringFieldIndex(FieldId));
end;

function TOracleQuery.FieldType(const FieldId: string): Integer;
begin
 Result := FieldType(StringFieldIndex(FieldId));
end;

function TOracleQuery.FieldDBType(const FieldId: string): Integer;
begin
 Result := FieldDBType(StringFieldIndex(FieldId));
end;

function TOracleQuery.FieldTypeName(const FieldId: string): string;
begin
 Result := FieldTypeName(StringFieldIndex(FieldId));
end;

function TOracleQuery.FieldPrecision(const FieldId: string): Integer;
begin
 Result := FieldPrecision(StringFieldIndex(FieldId));
end;

function TOracleQuery.FieldScale(const FieldId: string): Integer;
begin
 Result := FieldScale(StringFieldIndex(FieldId));
end;

function TOracleQuery.FieldOptional(const FieldId: string): Boolean;
begin
 Result := FieldOptional(StringFieldIndex(FieldId));
end;

function TOracleQuery.FieldIsNull(const FieldId: string): Boolean;
begin
 Result := FieldIsNull(StringFieldIndex(FieldId));
end;

function TOracleQuery.FieldAsString(const FieldId: string): string;
begin
 Result := FieldAsString(StringFieldIndex(FieldId));
end;

function TOracleQuery.FieldAsInteger(const FieldId: string): Integer;
begin
 Result := FieldAsInteger(StringFieldIndex(FieldId));
end;

function TOracleQuery.FieldAsFloat(const FieldId: string): Double;
begin
 Result := FieldAsFloat(StringFieldIndex(FieldId));
end;

function TOracleQuery.FieldAsDate(const FieldId: string): TDateTime;
begin
 Result := FieldAsDate(StringFieldIndex(FieldId));
end;

function TOracleQuery.GetLongField(const FieldId: string; Buffer: Pointer; Offset, Length: Integer): Integer;
begin
 Result := GetLongField(StringFieldIndex(FieldId), Buffer, Offset, Length);
end;

{$ENDIF}

// Return a field as a TLOBLocator instance
function TOracleQuery.LOBFieldByIndex(FieldId: Integer): TLOBLocator;
var LOBType: Integer;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  LOBType := FieldType(FieldId);
  if not (LOBType in [otCLOB, otBLOB, otBFile]) then
    raise Exception.Create('Field ' + FieldName(FieldId) + ' is not a LOB');
  Result := (FieldList.Items[FieldId] as TFieldData).Obj as TLOBLocator;
end;

{$IFNDEF Overloading}
function TOracleQuery.LOBField(const FieldId: Variant): TLOBLocator;
begin
  Result := LOBFieldByIndex(VariantFieldIndex(FieldId));
end;
{$ELSE}
function TOracleQuery.LOBField(FieldId: Integer): TLOBLocator;
begin
  Result := LOBFieldByIndex(FieldId);
end;
function TOracleQuery.LOBField(const FieldId: string): TLOBLocator;
begin
  Result := LOBFieldByIndex(StringFieldIndex(FieldId));
end;
{$ENDIF}

// Return a field as a TOracleQuery instance
function TOracleQuery.GetCursorByIndex(FieldId: Integer): TOracleQuery;
var p: ^Pointer;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  if FieldType(FieldId) <> otCursor then
    raise Exception.Create('Field ' + FieldName(FieldId) + ' is not a cursor');
  if FieldIsNull(FieldId) then
    raise Exception.Create('Field ' + FieldName(FieldId) + ' is NULL, LOBLocator does not exist');
  // Create a new query and copy the statement handle to it
  p := FieldData(FieldId);
  Result := TOracleQuery.Create(nil);
  Result.Name := 'NestedCursorQuery';
  Result.Session := Self.Session;
  Result.ResultSet := True;
  Result.Stmthp := p^;
  // Query must be opened now to allocate other handles (besides stmthp)
  Result.Open;
  // Allocate a new handle for the Field, the query now owns the old one
  OCIHandleAlloc(Session.envhp, p^, OCI_HTYPE_STMT, 0, nil);
end;

{$IFNDEF Overloading}
function TOracleQuery.GetCursor(const FieldId: Variant): TOracleQuery;
begin
  Result := GetCursorByIndex(VariantFieldIndex(FieldId));
end;
{$ELSE}
function TOracleQuery.GetCursor(FieldId: Integer): TOracleQuery;
begin
  Result := GetCursorByIndex(FieldId);
end;
function TOracleQuery.GetCursor(const FieldId: string): TOracleQuery;
begin
  Result := GetCursorByIndex(StringFieldIndex(FieldId));
end;
{$ENDIF}

procedure TOracleQuery.SetComplexFields;
var F: TFieldData;
    i: Integer;
    P: PPointer;
    N: Psb2Array;
begin
  for i := 0 to FieldList.Count - 1 do
  begin
    F := FieldList.Items[i] as TFieldData;
    if F.BufType = otObject then
    begin
      P := @F.buf[CacheIndex * F.bufsize];
      if P^ <> nil then
        N := F.NullStructs[CacheIndex]
      else begin
        OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, F.ObjectTypeCode,
                             F.TDO, nil, OCI_DURATION_SESSION, False, P^));
        if ReturnCode = 0 then
          OCICall(OCIObjectGetInd(Session.envhp, errhp, P^, N));
        if ReturnCode <> 0 then RaiseException;
        F.NullStructs[CacheIndex] := N;
        N[0] := OCI_IND_NULL;
      end;
      TOracleObject(F.Obj).SetInstance(P^, N, F.RefTDO, F.TypeName);
    end;
    if F.BufType = otReference then
    begin
      P := @F.buf[CacheIndex * F.bufsize];
      if P^ = nil then
      begin
        OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, OCI_TYPECODE_REF,
                             nil, nil, OCI_DURATION_SESSION, True, P^));
        if ReturnCode <> 0 then RaiseException;
      end;
      TOracleReference(F.Obj).PRef := Pointer(P);
      if FieldIsNull(i) then TOracleReference(F.Obj).Clear;
    end;
    if F.BufType in [otCLOB, otBLOB, otBFile] then
    begin
      P := FieldData(i);
      with TLOBLocator(F.Obj) do
      begin
        if FBuffering then
        begin
          FlushBuffer;
          FBuffering := False;
        end;
        FPosition := 0;
        CloseFile;
        PLOB := Pointer(P);
      end;
    end;
  end;
end;

// Free fetched objects
procedure TOracleQuery.FreeFetchedObjects;
var f: Integer;
begin
  for f := 0 to FieldList.Count - 1 do
    TFieldData(FieldList.Items[f]).FreeObjects;
end;

// Reset the LOB objects
procedure TOracleQuery.ResetLOBs;
var f: Integer;
    FD: TFieldData;
begin
  if not Session.UseOCI80 then Exit;
  for f := 0 to FieldList.Count - 1 do
  begin
    FD := TFieldData(FieldList.Items[f]);
    if FD.BufType in [otBLOB, otCLOB, otBFile] then
    begin
      if FD.Obj <> nil then TLOBLocator(FD.Obj).Seek(0, soFromBeginning);
    end;
  end;
end;

// Return a field as a TOracleObject instance
function TOracleQuery.ObjFieldByIndex(FieldId: Integer): TOracleObject;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  if FieldType(FieldId) <> otObject then
    raise Exception.Create('Field ' + FieldName(FieldId) + ' is not an Object');
  Result := (FieldList.Items[FieldId] as TFieldData).Obj as TOracleObject;
end;

{$IFNDEF Overloading}
function TOracleQuery.ObjField(const FieldId: Variant): TOracleObject;
begin
  Result := ObjFieldByIndex(VariantFieldIndex(FieldId));
end;
{$ELSE}
function TOracleQuery.ObjField(FieldId: Integer): TOracleObject;
begin
  Result := ObjFieldByIndex(FieldId);
end;
function TOracleQuery.ObjField(const FieldId: string): TOracleObject;
begin
  Result := ObjFieldByIndex(StringFieldIndex(FieldId));
end;
{$ENDIF}

// Return a field as a TOracleReference instance
function TOracleQuery.RefFieldByIndex(FieldId: Integer): TOracleReference;
begin
  if (FieldId < 0) or (FieldId > FieldList.Count - 1) then
    raise Exception.Create('Field ' + IntToStr(FieldId) + ' does not exist');
  if FieldType(FieldId) <> otReference then
    raise Exception.Create('Field ' + FieldName(FieldId) + ' is not a Reference');
  Result := (FieldList.Items[FieldId] as TFieldData).Obj as TOracleReference;
end;

{$IFNDEF Overloading}
function TOracleQuery.RefField(const FieldId: Variant): TOracleReference;
begin
  Result := RefFieldByIndex(VariantFieldIndex(FieldId));
end;
{$ELSE}
function TOracleQuery.RefField(FieldId: Integer): TOracleReference;
begin
  Result := RefFieldByIndex(FieldId);
end;
function TOracleQuery.RefField(const FieldId: string): TOracleReference;
begin
  Result := RefFieldByIndex(StringFieldIndex(FieldId));
end;
{$ENDIF}

function TOracleQuery.FieldCount:Integer;
begin
  Result := FieldList.Count;
end;

procedure TOracleQuery.Clear;
begin
  DeleteVariables;
  SQL.Clear;
  ParsedSQL := '';
  Described := False;
  ResultSet := False;
end;

// Open the query
procedure TOracleQuery.Open;
begin
  if not Opened then
  begin
    // If it's not opened then open the Query (this is only done once)
    Session.Acquire(True);
    if Session.UseOCI80 then
    begin
      OCIHandleAlloc(Session.envhp, errhp, OCI_HTYPE_ERROR, 0, nil);
      OCIHandleAlloc(Session.envhp, secerrhp, OCI_HTYPE_ERROR, 0, nil);
      OCIDescriptorAlloc(Session.envhp, @rowidhp, OCI_DTYPE_ROWID, 0, nil);
    end else begin
      if not ResultSet then oopen(CDA, Session.LDA, nil, -1, -1, nil, -1);
    end;
    if ReturnCode <> 0 then RaiseException;
    Session.Release(True);
    Opened := True;
  end;
end;

procedure TOracleQuery.Close;
begin
  if Session = nil then Exit;
  if Session.Connected and Opened then
  begin
    Opened := False;
    ParsedSQL := '';
    Described := False;
    FieldList.Clear;
    Session.Acquire(True);
    if Session.UseOCI80 then
    begin
      OCIHandleFree(errhp, OCI_HTYPE_ERROR);
      OCIHandleFree(secerrhp, OCI_HTYPE_ERROR);
      OCIDescriptorFree(rowidhp, OCI_DTYPE_ROWID);
      OCICall(OCIHandleFree(stmthp, OCI_HTYPE_STMT));
      stmthp := nil;
    end else begin
      oclose(CDA);
      FillChar(CDA, SizeOf(CDA), #0);
    end;
    if (ReturnCode <> 0) {and (ReturnCode <> 1041)} then RaiseException;
    Session.Release(True);
  end;
end;

procedure TOracleQuery.Cancel;
begin
  FEof := True;
end;

function TOracleQuery.RowsProcessed: Integer;
begin
  if not Session.Connected then
    Result := 0
  else begin
    if Session.UseOCI80 then
    begin
      OCIAttrGet(stmthp, OCI_HTYPE_STMT, Result, nil, OCI_ATTR_ROW_COUNT, secerrhp);
    end else begin
      Result := CDA.rpc;
    end;
  end;
end;

function TOracleQuery.ReturnCode: Integer;
begin
  if Session.UseOCI80 then
  begin
    case LastOCIError of
    OCI_ERROR,
    OCI_INVALID_HANDLE:
      OCIErrorGet(errhp, 1, nil, ub4(Result), nil, 0, OCI_HTYPE_ERROR);
    OCI_NO_DATA:
      Result := 1403;
    OCI_SUCCESS_WITH_INFO,
    OCI_NEED_DATA:
      Result := 0;
    else
      Result := LastOCIError;
    end;
  end else begin
    Result := CDA.rc;
  end;
end;

function TOracleQuery.ErrorHandle: Integer;
begin
  if Session.UseOCI80 then
  begin
    Result := Integer(errhp);
  end else begin
    Result := CDA.rc;
  end;
end;

function TOracleQuery.FunctionType: Integer;
begin
  Result := FFunctionType;
end;

function TOracleQuery.WarningFlags: Byte;
begin
  if Session.UseOCI80 then
  begin
    if LastOCIError = OCI_SUCCESS_WITH_INFO then Result := $21 else Result := 0;
  end else begin
    Result := CDA.wrn;
  end;
end;

// Converts a number to a 64 based string (used for RowId)
function sfString(L, Digits: Integer): string;
const table='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
var i: Integer;
begin
  Result:='';
  for i := 1 to Digits do
  begin
    Result := table[1 + (L and 63)] + Result;
    L := L div 64;
  end;
end;

function TOracleQuery.ErrorLine: Integer;
begin
  Result := FErrorLine;
end;

function TOracleQuery.ErrorPosition: Integer;
begin
  Result := FErrorPosition;
end;

function TOracleQuery.RowId: string;
var riObject, riFile, riBlock, riRecord: Integer;
    p: Pub1Array;
begin
  if Session.UseOCI80 then
  begin
    OCIAttrGet(stmthp, OCI_HTYPE_STMT, rowidhp^, nil, OCI_ATTR_ROWID, errhp);
    if OCI81Detected then
    begin
      if rowidhp <> nil then p := Pub1Array(Tub4Array(rowidhp^)[2]) else p := nil;
      if p = nil then
      begin
        riObject := 0;
        riFile   := 0;
        riBlock  := 0;
        riRecord := 0;
      end else begin
        riObject := (p[1] shl 24) + (p[2] shl 16) + (p[3] shl 8) + p[4];
        riFile   := (p[5] shl 8)  + p[6];
        riBlock  := (p[7] shl 24) + (p[8] shl 16) + (p[9] shl 8) + p[10];
        riRecord := (p[11] shl 8) + p[12];
      end;
    end else begin
      riObject := Tub4Array(rowidhp^)[2];
      riFile := Tub4Array(rowidhp^)[3];
      riBlock := Tub4Array(rowidhp^)[4];
      riRecord := Tub4Array(rowidhp^)[5];
    end;
  end else begin
    riObject := CDA.RowIdObject;
    riFile := CDA.RowIdFile;
    riBlock := CDA.RowIdBlock;
    riRecord := CDA.RowIdRecord;
  end;
  // If RowIdObject = 0 then return the restricted RowId format, else extended
  if riObject = 0 then
    Result := Format('%8.8x.%4.4x.%4.4x',[riBlock, riRecord, riFile])
  else
    Result := sfString(riObject, 6) + sfString(riFile, 3) +
              sfString(riBlock, 6) + sfString(riRecord, 3);
end;

procedure TOracleQuery.ClearVariables;
var i: Integer;
begin
  for i := 0 to Variables.Count - 1 do
    SetVariable(Variables.Data(i).Name, Null);
end;

procedure TOracleQuery.DeleteVariables;
begin
  Variables.List.Clear;
  ParsedSQL := '';
  // For POLite 3.0 production, a query must be closed when variables change
  if (Session <> nil) and (Session.POLite) then Close;
end;

// Delete a variable
procedure TOracleQuery.DeleteVariable(AName: string);
var VariableData: TVariableData;
    VariableIndex: Integer;
begin
  VariableIndex := FindVariable(AName);
  if VariableIndex < 0 then
    raise Exception.Create('Variable ' + AName + ' not declared');
  VariableData := Variables.Data(VariableIndex);
  VariableData.Free;
  ParsedSQL := '';
  // For POLite 3.0 production, a query must be closed when variables change
  if (Session <> nil) and (Session.POLite) then Close;
end;

// Find the index of a variable by name
function TOracleQuery.FindVariable(var AName: string): Integer;
var i: Integer;
begin
  if (AName <> '') and (AName[1] <> ':') then
    AName := ':' + AnsiUpperCase(AName)
  else
    AName := AnsiUpperCase(AName);
  for i := 0 to Variables.Count - 1 do with Variables.Data(i) do
  begin
    if AName = Name then
    begin
      Result := i;
      Exit;
    end;
  end;
  Result := -1;
end;

// Declare a new variable
procedure TOracleQuery.DeclareVariable(AName: string; AType: Integer);
var VariableData: TVariableData;
    VariableIndex: Integer;
begin
  if AName = '' then
    raise Exception.Create('You cannot declare a variable with an empty name');
  VariableIndex := FindVariable(AName);
  if VariableIndex >= 0 then
  begin
    VariableData := Variables.Data(VariableIndex);
    VariableData.Free;
  end;
  // For POLite 3.0 production, a query must be closed when variables change
  if (Session <> nil) and (Session.POLite) then Close;
  ParsedSQL := '';
  VariableData := TVariableData.Create(Variables.List);
  if VariableIndex >= 0 then VariableData.Index := VariableIndex;
  with VariableData do
  begin
    buftype  := AType;
    Name     := AName;
    GetMem(indp, SizeOf(sb2));
    ArraySize := 1;
    ArrayLowBound := 0;
    indp[0]  := -1;
    case buftype of
       otString: bufsize := AbsMaxVarchar + 1;
      otInteger: bufsize := SizeOf(LongInt);
        otFloat: bufsize := SizeOf(Double);
         otDate: bufsize := 7;
         otLong: bufsize := 0;
      otLongRaw: bufsize := 0;
       otCursor: bufsize := 0;
         otCLOB,
         otBLOB,
        otBFile: bufsize := 0;
    otReference: bufsize := 0;
       otObject: bufsize := 0;
        otSubst: bufsize := 0;
  otPLSQLString: bufsize := MaxPLSQLStringSize + 1;
         otChar: bufsize := AbsMaxVarchar + 1;
      else begin
        VariableData.Free;
        raise Exception.Create('Unsupported variable type');
      end;
    end;
    if bufsize > 0 then GetMem(buf, bufsize) else buf := nil;
    Complex := BufType in [otCursor, otCLOB, otBLOB, otBFile, otReference, otObject];
    bufowner := not Complex;
  end;
end;

// Set the Dimensions of a PL/SQL Table
procedure TOracleQuery.DimPLSQLTable(AName: string; TableSize, StringSize: Integer);
var VariableIndex: Integer;
begin
  // Find the variable in the collection
  VariableIndex := FindVariable(AName);
  if VariableIndex < 0 then
    raise Exception.Create('Variable ' + AName + ' not declared');
  with FVariables.Data(VariableIndex) do
  begin
    if not (buftype in [otString, otInteger, otFloat, otDate]) then
      raise Exception.Create('Only PL/SQL Tables of strings, integers, floats and dates supported');
    if (buftype = otString) and (StringSize <= 0) then
      raise Exception.Create('You must specify a string size for a PL/SQL Table of strings');
    if (buftype <> otString) and (StringSize <> 0) then
      raise Exception.Create('You can only specify a string size for a PL/SQL Table of strings');
    if TableSize <= 0 then
      raise Exception.Create('You must specify the size of the PL/SQL Table');
    IsPLSQLTable := True;
    PLSQLTableElemCount := 0;
    ReDim(TableSize, StringSize, Session);
  end;
end;

// Set the value of a variable
procedure TOracleQuery.SetVariableByIndex(Index: Integer; const AValue: Variant);
var i, HighBound, LowBound: Integer;
begin
  with FVariables.Data(Index) do
  begin
    // Check if the variable value is an array
    if VarIsArray(AValue) and (BufType <> otLongRaw) then
    begin
      if Complex then
        raise Exception.Create(Name + ' is a complex variable and cannot be an array');
      if BufType = otSubst then
        raise Exception.Create(Name + ' is a substitution variable and cannot be an array');
      LowBound := VarArrayLowBound(AValue, 1);
      HighBound := VarArrayHighBound(AValue, 1);
      if not IsPLSQLTable then
        ReDim(HighBound - LowBound + 1, -1, Session)
      else begin
        PLSQLTableElemCount := HighBound - LowBound + 1;
        if PLSQLTableElemCount > ArraySize then
          raise Exception.Create('Array is larger than PL/SQL Table (' +
                IntToStr(PLSQLTableElemCount) + ' > ' + IntToStr(ArraySize) + ')');
      end;
      ArrayLowBound := LowBound;
      for i := LowBound to HighBound do SetValue(i - LowBound, AValue[i], Session);
    end else begin
      if IsPLSQLTable then
      begin
        if VarIsEmpty(AValue) or VarIsNull(AValue) then
          PLSQLTableElemCount := 0
        else
          raise Exception.Create(Name + ' is a PL/SQL Table, assign a variant array to it');
      end else begin
        ReDim(1, -1, Session);
        ArraySize := 1;
        ArrayLowBound := 0;
        SetValue(0, AValue, Session);
      end;
    end;
  end;
end;

// Get the value of a variable by name
function TOracleQuery.GetVariableByIndex(Index: Integer): Variant;
var i, Elements: Integer;
begin
  with Variables.Data(Index) do
  begin
    if (ArraySize = 1) and not IsPLSQLTable then
    begin
      if Complex then
        Result := LongInt(buf)
      else begin
        if indp[0] = -1 then
        begin
          Result := UnAssigned;
          if (Session <> nil) and (Session.NullValue = nvNull) then Result := Null;
        end else begin
          Result := OracleToDelphiData(buf, buftype, len, Session);
          if buftype = otLong then Result := AddCR(Result, Session);
        end;
      end;
    end else begin
      if IsPLSQLTable then
        Elements := PLSQLTableElemCount
      else
        Elements := ArraySize;
      if Elements > 0 then
        Result := VarArrayCreate([ArrayLowBound, ArrayLowBound + Elements - 1], varVariant)
      else begin
        Result := UnAssigned;
        if (Session <> nil) and (Session.NullValue = nvNull) then Result := Null;
      end;
      for i := 0 to Elements - 1 do
      begin
        if indp[i] = -1 then
        begin
          Result[i + ArrayLowBound] := UnAssigned;
          if (Session <> nil) and (Session.NullValue = nvNull) then
            Result[i + ArrayLowBound] := Null;
        end else begin
          Result[i + ArrayLowBound] := OracleToDelphiData(@buf[i * bufsize], buftype, len, Session);
        end;
      end;
    end;
  end;
end;

{$IFDEF Overloading}
procedure TOracleQuery.SetVariable(Index: Integer; const AValue: Variant);
begin
  if (Index < 0) or (Index >= VariableCount) then
    raise Exception.Create('Variable ' + IntToStr(Index) + ' not declared');
  SetVariableByIndex(Index, AValue);
end;

function TOracleQuery.GetVariable(Index: Integer): Variant;
begin
  if (Index < 0) or (Index >= VariableCount) then
    raise Exception.Create('Variable ' + IntToStr(Index) + ' does not exist');
  Result := GetVariableByIndex(Index);
end;
{$ENDIF}

procedure TOracleQuery.SetVariable(AName: string; const AValue: Variant);
var VariableIndex: Integer;
begin
  // Find the variable in the collection
  VariableIndex := FindVariable(AName);
  if VariableIndex < 0 then
    raise Exception.Create('Variable ' + AName + ' not declared');
  SetVariableByIndex(VariableIndex, AValue);
end;

function TOracleQuery.GetVariable(AName: string): Variant;
var VariableIndex: Integer;
begin
  VariableIndex := FindVariable(AName);
  if VariableIndex < 0 then raise Exception.Create('Unknown variable: ' + AName);
  Result := GetVariableByIndex(VariableIndex);
end;

procedure TOracleQuery.SetLongVariable(AName: string; Buffer: Pointer; Length: Integer);
var VariableIndex: Integer;
    Variable: TVariableData;
begin
  VariableIndex := FindVariable(AName);
  if VariableIndex < 0 then
    raise Exception.Create('Variable ' + AName + ' not declared');
  Variable := FVariables.Data(VariableIndex);
  with Variable do
  begin
    if (BufType <> otLong) and (BufType <> otLongRaw) then
      raise Exception.Create('Variable ' + AName + ' is not a Long');
    FreeBuffer;
    if (Buffer = nil) or (Length = 0) then
      indp[0] := -1
    else begin
      indp[0] := 0;
      buf := Buffer;
      len := Length;
      bufsize := Length;
      bufOwner := False;
    end;
  end;
end;

// Get a complex variable
function TOracleQuery.GetComplexVariable(AName: string): TObject;
var VariableIndex: Integer;
begin
  VariableIndex := FindVariable(AName);
  if VariableIndex < 0 then raise Exception.Create('Unknown variable: ' + AName);
  with Variables.Data(VariableIndex) do
  begin
    if Complex then
      Result := TObject(buf)
    else
      raise Exception.Create(AName + ' is not a complex variable');
  end;
end;

// Return the number of variables
function TOracleQuery.VariableCount: Integer;
begin
  Result := FVariables.Count;
end;

// Return the name of the specified variable
function TOracleQuery.VariableName(Index: Integer): string;
begin
  if (Index < 0) or (Index >= VariableCount) then
    raise Exception.Create('Variable ' + IntToStr(Index) + ' does not exist');
  Result := Variables.Data(Index).Name;
end;

// Return the type of the specified variable
function TOracleQuery.VariableType(Index: Integer): Integer;
begin
  if (Index < 0) or (Index >= VariableCount) then
    raise Exception.Create('Variable ' + IntToStr(Index) + ' does not exist');
  Result := Variables.Data(Index).BufType;
end;

// Return the index of the specified variable
function TOracleQuery.VariableIndex(AName: string): Integer;
begin
  Result := FindVariable(AName);
end;

// Set a complex variable
procedure TOracleQuery.SetComplexVariable(AName: string; const AValue: TObject);
var VariableIndex: Integer;
begin
  VariableIndex := FindVariable(AName);
  if VariableIndex < 0 then raise Exception.Create('Unknown variable: ' + AName);
  with Variables.Data(VariableIndex) do
  begin
    if not Complex then
      raise Exception.Create(AName + ' is not a complex variable');
    if AValue <> nil then case BufType of
      otCursor:
        if not (AValue is TOracleQuery) then
          raise Exception.Create('Assign TOracleQuery instance to variable ' + AName);
      otCLOB, otBLOB, otBFile:
        if not (AValue is TLOBLocator) then
          raise Exception.Create('Assign TLOBLocator instance to variable ' + AName);
      otObject:
        if not (AValue is TOracleObject) then
          raise Exception.Create('Assign TOracleObject instance to variable ' + AName);
      otReference:
        if not (AValue is TOracleReference) then
          raise Exception.Create('Assign TOracleReference instance to variable ' + AName);
    end;
    buf := Pub1Array(AValue);
    if buf = nil then indp[0] := -1 else indp[0] := 0;
  end;
end;

// Add a Query to the Querylist of the session
procedure TOracleQuery.AddToList;
begin
  if Session <> nil then Session.Queries.Add(Self);
end;

// Remove a Query from the Querylist of the session
procedure TOracleQuery.RemoveFromList;
begin
  if Session <> nil then Session.Queries.Remove(Self);
end;

procedure TOracleQuery.SetSession(ASession: TOracleSession);
begin
  if ASession = FSession then Exit;
  RemoveFromList;
  Close;
  SendToMonitor(False, True);
  if FSession <> nil then FMonID := 0;
  FSession := ASession;
  AddToList;
end;

procedure TOracleQuery.SetCache(Value: Integer);
begin
  if Value < 1 then FCache := 1 else FCache := Value;
end;

procedure TOracleQuery.SetSQL(Value: TStrings);
begin
  FSQL.BeginUpdate;
  try
    FSQL.Assign(Value);
  finally
    FSQL.EndUpdate;
  end;
end;

procedure TOracleQuery.SetVariables(Value: TVariables);
begin
  FVariables.Assign(Value);
end;

procedure TOracleQuery.SetStringFieldsOnly(Value: Boolean);
begin
  if Value = FStringFieldsOnly then Exit;
  ParsedSQL := '';
  FStringFieldsOnly := Value;
end;

// TOraclePackage

constructor TOraclePackage.Create(AOwner: TComponent);
begin
  inherited;
  Query := TOracleQuery.Create(nil);
  Query.Name := 'Query';
  Query.ParentMonID := MonID;
  ParameterList := TCollection.Create(TPackageParameter);
  ReDeclareVariables := True;
  LastObjectType := -1;
  FDebug := False;
  FPackageName := '';
  FSession := nil;
  FCursor := crDefault;
  FParameterMode := pmPositional;
  FOptimize := True;
end;

destructor TOraclePackage.Destroy;
begin
  Query.Free;
  ParameterList.Free;
  RemoveFromList;
  SendToMonitor(False, True);
  inherited;
end;

// Add a Package to the Package list of the session
procedure TOraclePackage.AddToList;
begin
  if Session <> nil then Session.Packages.Add(Self);
end;

// Remove a Package from the Package list of the session
procedure TOraclePackage.RemoveFromList;
begin
  if Session <> nil then Session.Packages.Remove(Self);
end;

procedure TOraclePackage.SetSession(const Value: TOracleSession);
begin
  RemoveFromList;
  SendToMonitor(False, True);
  if FSession <> nil then FMonID := 0;
  FSession := Value;
  Query.Session := Value;
  AddToList;
end;

// Convert a boolean to an integer
function TOraclePackage.BoolToInt(const ABoolean: Variant): Variant;
begin
  if VarIsNull(ABoolean) or VarIsEmpty(ABoolean) then
  begin
    if (Session = nil) or (Session.NullValue = nvUnassigned) then
      Result := Unassigned
    else
      Result := Null;
  end else
    if Boolean(ABoolean) then Result := 1 else Result := 0;
end;

// Convert an integer to a boolean
function TOraclePackage.IntToBool(const AnInteger: Variant): Variant;
begin
  if VarIsNull(AnInteger) or VarIsEmpty(AnInteger) then
  begin
    if (Session = nil) or (Session.NullValue = nvUnassigned) then
      Result := Unassigned
    else
      Result := Null;
  end else
    Result := (Integer(AnInteger) <> 0);
end;

// Set the ParameterList according to the variant array
procedure TOraclePackage.SetParameters(const Parameters: array of Variant);
var i, LowBound, HighBound, Booleans: Integer;
    Parameter, p1, p2: TPackageParameter;
    NewParameterList: TCollection;
    VariantArray: Boolean;
    v: Variant;
begin
  Booleans := 0;
  LowBound  := Low(Parameters);
  HighBound := High(Parameters);
  // If only parNone is passed, this means no parameters
  if (LowBound = 0) and (HighBound = 0) and
     (VarType(Parameters[0]) = varByte) and (Parameters[0] = 0) then
  begin
    HighBound := -1;
  end;
  // If there is one element it might be a variant array
  VariantArray := (LowBound = 0) and (HighBound = 0) and VarIsArray(Parameters[0]);
  if VariantArray then
  begin
    LowBound  := VarArrayLowBound(Parameters[0], 1);
    HighBound := VarArrayHighBound(Parameters[0], 1);
  end;
  // Check if number of parameters is correct
  if (ParameterMode = pmNamed) and Odd(HighBound - LowBound + 1) then
    raise Exception.Create('Even number of parameters required when ParameterMode = pmNamed');
  // Loop through Parameters to fill ParameterList collection
  NewParameterList := TCollection.Create(TPackageParameter);
  i := LowBound;
  while (i <= HighBound) do
  begin
    Parameter := TPackageParameter.Create(NewParameterList);
    if VariantArray then v := Parameters[0][i] else v := Parameters[i];
    // Determine the name of the parameter
    if (FParameterMode = pmNamed) and (not Odd(i - LowBound)) then
    begin
      // Parameter name must be string
      if not VariantIsString(v) then
        raise Exception.Create('Parameter names must be strings');
      Parameter.ParamName := v;
      Inc(i);
      if VariantArray then v := Parameters[0][i] else v := Parameters[i];
    end;
    if FParameterMode = pmPositional then
      Parameter.ParamName := 'p' + IntToStr(i - LowBound + 1);
    // 'Determine' the value
    Parameter.ParamValue := v;
    // Determine the datatype
    case VarType(v) and VarTypeMask of
      varByte: begin // Bytes are used to set output parameter types
                 Parameter.DataType := v;
                 if not (Parameter.DataType in [otInteger, otString, otFloat, otDate, otBoolean]) then
                   raise Exception.Create('Byte parameters can only be used for output parameter types');
                 Parameter.ParamValue := Null;
               end;
      varEmpty, varNull: Parameter.DataType := 0;
      varSmallInt, varInteger: Parameter.DataType := otInteger;
      varSingle, varDouble, varCurrency: Parameter.DataType := otFloat;
      varDate: Parameter.DataType := otDate;
      varString, varOleStr: Parameter.DataType := otString;
      varBoolean: Parameter.DataType := otBoolean;
    else
      raise Exception.Create('Type of parameter ' + Parameter.ParamName + ' not supported');
    end;
    // Determine the boolean sequence
    if Parameter.DataType = otBoolean then
    begin
      Inc(Booleans);
      Parameter.BooleanName := 'doa__boolean' + IntToStr(Booleans);
    end;
    // Next one
    Inc(i);
  end;
  // Check if new parameterlist is the same as the current parameterlist
  if (not FOptimize) or (NewParameterList.Count <> ParameterList.Count) then
    ReDeclareVariables := True
  else begin
    for i := 0 to ParameterList.Count - 1 do
    begin
      p1 := TPackageParameter(ParameterList.Items[i]);
      p2 := TPackageParameter(NewParameterList.Items[i]);
      if (p1.DataType <> p2.DataType) or (p1.ParamName <> p2.ParamName) then
      begin
        ReDeclareVariables := True;
        Break;
      end;
    end;
  end;
  // Assign the new parameterlist to the current one
  ParameterList.Free;
  ParameterList := NewParameterList;
end;

// Get the value of the specified parameter by index
function TOraclePackage.GetParameterByIndex(ParameterId: Integer): Variant;
var P: TPackageParameter;
begin
  if (ParameterId < 0) or (ParameterId > ParameterList.Count - 1) then
    raise Exception.Create('Parameter ' + IntToStr(ParameterId) + ' does not exist');
  P := TPackageParameter(ParameterList.Items[ParameterId]);
  if P.DataType <> otBoolean then
    Result := Query.GetVariable(P.ParamName)
  else
    Result := IntToBool(Query.GetVariable(P.ParamName));
end;

// Get the value of the specified parameter by name
function TOraclePackage.GetParameterByName(const ParameterId: string): Variant;
var i: Integer;
begin
  if ParameterMode <> pmNamed then
    raise Exception.Create('Parameters can only be retrieved by name if' + #13#10 +
                           'named parameter mode is used.');
  for i := 0 to ParameterList.Count - 1 do
  begin
    if AnsiStrIComp(PChar(ParameterId), PChar(TPackageParameter(ParameterList.Items[i]).ParamName)) = 0 then
    begin
      Result := GetParameterByIndex(i);
      Exit;
    end;
  end;
  raise Exception.Create('Parameter ' + ParameterId + ' does not exist');
end;

{$IFNDEF Overloading}
// Get the value of the specified parameter
function TOraclePackage.GetParameter(const ParameterId: Variant): Variant;
begin
  case VarType(ParameterId) of
    varInteger: Result := GetParameterByIndex(ParameterId);
     varString,
     varOleStr: Result := GetParameterByName(ParameterId);
  else
    raise Exception.Create('ParameterId must be integer or string');
  end;
end;
{$ELSE}
function TOraclePackage.GetParameter(ParameterId: Integer): Variant;
begin
  Result := GetParameterByIndex(ParameterId);
end;
function TOraclePackage.GetParameter(const ParameterId: string): Variant;
begin
  Result := GetParameterByName(ParameterId);
end;
{$ENDIF}

// Get the value of a packaged string variable
function TOraclePackage.GetStringVariable(const VariableName: string): Variant;
begin
  Result := CallFunction(VariableName, otString, parNone);
end;

// Get the value of a packaged integer variable
function TOraclePackage.GetIntegerVariable(const VariableName: string): Variant;
begin
  Result := CallFunction(VariableName, otInteger, parNone);
end;

// Get the value of a packaged float variable
function TOraclePackage.GetFloatVariable(const VariableName: string): Variant;
begin
  Result := CallFunction(VariableName, otFloat, parNone);
end;

// Get the value of a packaged date variable
function TOraclePackage.GetDateVariable(const VariableName: string): Variant;
begin
  Result := CallFunction(VariableName, otDate, parNone);
end;

// Get the value of a packaged boolean variable
function TOraclePackage.GetBooleanVariable(const VariableName: string): Variant;
begin
  Result := CallFunction(VariableName, otBoolean, parNone);
end;

// Assign a value to a packaged variable
procedure TOraclePackage.SetVariable(const VariableName: string; const Value: Variant);
var DataType: Integer;
    s: string;
begin
  // Copy the derived query properties
  Query.Session  := FSession;
  Query.Debug    := FDebug;
  Query.Cursor   := FCursor;
  Query.Optimize := FOptimize;
  SendToMonitor(True, True);
  // SetVariable has no parameters
  ParameterList.Clear;
  // Build the query text and variables
  Query.Clear;
  // Create a PL/SQL block to assign the value to the variable
  // Convert a boolean if necessary
  Query.SQL.Add('begin');
  s := '  ' + PackageName + '.' + VariableName + ' := ';
  with Query do
  begin
    if VarIsNull(Value) or VarIsEmpty(Value) then
    begin
      s := s + 'Null;';
      LastObjectType := 0;
    end else begin
      if VarType(Value) = varBoolean then
      begin
        s := s + 'sys.diutil.int_to_bool(:doa__value);';
        DeclareVariable('doa__value', otInteger);
        Query.SetVariable('doa__value', BoolToInt(Value));
        LastObjectType := otBoolean;
      end else begin
        s := s + ':doa__value;';
        case VarType(Value) of
          varByte, varSmallInt, varInteger: DataType := otInteger;
          varSingle, varDouble, varCurrency: DataType := otFloat;
          varDate: DataType := otDate;
          varString,
          varOleStr: DataType := otString;
        else
          raise Exception.Create('Type of value not supported');
        end;
        DeclareVariable('doa__value', DataType);
        Query.SetVariable('doa__value', Value);
        LastObjectType := DataType;
      end;
    end;
    SQL.Add(s);
    SQL.Add('end;');
    Execute;
  end;
end;

// Create the PL/SQL block to access a packaged object and declare all required
// variables
procedure TOraclePackage.SetQuery(const ObjectName: string; ObjectType: Integer);
var s, sep, BoolBlock1, BoolBlock2: string;
    p: Integer;

function ConvertType(DataType: Integer): Integer;
begin
  if DataType = otBoolean then Result := otInteger else Result := DataType;
end;

begin
  BoolBlock1 := '';
  BoolBlock2 := '';
  // Copy the derived query properties
  Query.Session  := FSession;
  Query.Debug    := FDebug;
  Query.Cursor   := FCursor;
  Query.Optimize := FOptimize;
  SendToMonitor(True, True);
  // Build the query text and variables
  with Query do
  begin
    // Clear the SQL text and delete variables if necessary
    SQL.Clear;
    if ReDeclareVariables then DeleteVariables;
    // Create a PL/SQL block to access the appropriate object
    // Declare the variables in the meantime
    SQL.Add('begin');
    s := '  ';
    // Declare the variable to retrieve the result, if necessary
    if ObjectType > 0 then
    begin
      s := s + ':doa__value := ';
      if ObjectType = otBoolean then s := s + 'sys.diutil.bool_to_int(';
      if ReDeclareVariables then
        DeclareVariable('doa__value', ConvertType(ObjectType))
      else
        SetVariable('doa__value', Null);
    end;
    if FPackageName <> '' then s := s + FPackageName + '.';
    s := s + ObjectName;
    // Bind parameters
    if ParameterList.Count > 0 then
    begin
      sep := '(';
      for p := 0 to ParameterList.Count - 1 do
      with ParameterList.Items[p] as TPackageParameter do
      begin
        s := s + sep;
        if ParameterMode = pmNamed then s := s + ParamName + ' => ';
        // If the datatype is known use a bind variable, else use 'Null'
        if DataType = 0 then
          s := s + 'Null'
        else begin
          // For every boolean we need to declare a local boolean variable
          if DataType <> otBoolean then
          begin
            s := s + ':' + ParamName;
            if ReDeclareVariables then DeclareVariable(ParamName, DataType);
            Query.SetVariable(ParamName, ParamValue);
          end else begin
            s := s + BooleanName;
            if ReDeclareVariables then DeclareVariable(ParamName, otInteger);
            Query.SetVariable(ParamName, BoolToInt(ParamValue));
            if BoolBlock1 <> '' then BoolBlock1 := BoolBlock1 + #13#10;
            BoolBlock1 := BoolBlock1 + '  ' + BooleanName +
              ' boolean := sys.diutil.int_to_bool(:' + ParamName + ');';
            if BoolBlock2 <> '' then BoolBlock2 := BoolBlock2 + #13#10;
            BoolBlock2 := BoolBlock2 + '  :' + ParamName +
              ' := sys.diutil.bool_to_int(' + BooleanName + ');';
          end;
        end;
        sep := ', '
      end;
      // Close parenthesis
      s := s + ')';
    end;
    // Close statement, add parenthesis if sys.bool_to_int() was used
    if ObjectType = otBoolean then s := s + ');' else s := s + ';';
    SQL.Add(s);
    // Add BoolBlock2
    if BoolBlock2 <> '' then SQL.Add(BoolBlock2);
    // End the PL/SQL block
    SQL.Add('end;');
    // Put BoolBlock1 before the begin..end
    if BoolBlock1 <> '' then SQL.Insert(0, 'declare' + #13#10 + BoolBlock1);
  end;
end;

// Call a function with a given return type
function TOraclePackage.CallFunction(const FunctionName: string;
   ReturnType: Integer; const Parameters: array of Variant): Variant;
begin
  ReDeclareVariables := (ReturnType <> LastObjectType);
  LastObjectType := ReturnType;
  // Determine the parameters
  SetParameters(Parameters);
  // Build the query
  SetQuery(FunctionName, ReturnType);
  // Execute it
  Query.Execute;
  // Retrieve the result value
  if ReturnType = otBoolean then
    Result := IntToBool(Query.GetVariable('doa__value'))
  else
    Result := Query.GetVariable('doa__value');
end;

// Call a procedure
procedure TOraclePackage.CallProcedure(const ProcedureName: string;
  const Parameters: array of Variant);
begin
  ReDeclareVariables := (0 <> LastObjectType);
  LastObjectType := 0;
  // Determine the parameters
  SetParameters(Parameters);
  // Build the query
  SetQuery(ProcedureName, 0);
  // Execute it
  Query.Execute;
end;

// Call a string function
function TOraclePackage.CallStringFunction(const FunctionName: string;
  const Parameters: array of Variant): Variant;
begin
  Result := CallFunction(FunctionName, otString, Parameters);
end;

// Call an integer function
function TOraclePackage.CallIntegerFunction(const FunctionName: string;
  const Parameters: array of Variant): Variant;
begin
  Result := CallFunction(FunctionName, otInteger, Parameters);
end;

// Call a float function
function TOraclePackage.CallFloatFunction(const FunctionName: string;
  const Parameters: array of Variant): Variant;
begin
  Result := CallFunction(FunctionName, otFloat, Parameters);
end;

// Call a boolean function
function TOraclePackage.CallBooleanFunction(const FunctionName: string;
  const Parameters: array of Variant): Variant;
begin
  Result := CallFunction(FunctionName, otBoolean, Parameters);
end;

// Call a date function
function TOraclePackage.CallDateFunction(const FunctionName: string;
  const Parameters: array of Variant): Variant;
begin
  Result := CallFunction(FunctionName, otDate, Parameters);
end;

// Monitor functions

function TOraclePackage.GetMonID: Integer;
begin
  if FMonID = 0 then FMonID := GetNewMonID;
  Result := FMonID;
end;

procedure TOraclePackage.SendToMonitor(Creation, Signal: Boolean);
begin
  if ((Creation xor SentToMonitor) or not Signal) and MonitorListening then
  begin
    SentToMonitor := Creation;
    AddMonObject(Creation, ckPackage, MonID, 0, Self, Session, nil, Signal);
  end;
end;

// TOracleScript Commands collection

constructor TOracleCommands.Create(AOwner: TOracleScript);
begin
  inherited Create;
  Owner  := AOwner;
  FItems := TCollection.Create(TOracleCommand);
end;

destructor TOracleCommands.Destroy;
begin
  FItems.Free;
  inherited Destroy;
end;

function TOracleCommands.GetCount: Integer;
begin
  if (Owner <> nil) and Owner.LinesChanged then Owner.BuildCommands;
  Result := FItems.Count;
end;

function TOracleCommands.GetItem(Index: Integer): TOracleCommand;
begin
  Result := TOracleCommand(FItems.Items[Index]);
end;

function TOracleCommands.Add: TOracleCommand;
begin
  Result := TOracleCommand.Create(FItems);
  Result.OracleScript := Owner;
  if (Owner <> nil) then Owner.CommandsChanged := True;
end;

procedure TOracleCommands.Delete(Index: Integer);
begin
  FItems.Items[Index].Free;
  if (Owner <> nil) then Owner.CommandsChanged := True;
end;

procedure TOracleCommands.Clear;
begin
  FItems.Clear;
  if (Owner <> nil) then Owner.CommandsChanged := True;
end;

// -------

destructor TOracleCommand.Destroy;
begin
  if FWords <> nil then FWords.Free;
  inherited;
end;

// What kind of command is this?
function TOracleCommand.GetCommandType(S: string): TCommandType;
var WordList: TStringList;
    S1, S2: string;
begin
  Result := ctNonSQL;
  S := RemoveSQLComment(S);
  WordList := OracleScript.GetWords(S);
  if WordList.Count > 0 then S1 := WordList[0] else S1 := '';
  if WordList.Count > 1 then S2 := WordList[1] else S2 := '';
  if OracleScript.SQLCommand(S1, S2) then
  begin
    Result := ctSQL;
    if OracleScript.PLSQLBlock(S1, S) then Result := ctPLSQL;
  end;
  WordList.Free;
end;

procedure TOracleCommand.SetText(const Value: string);
begin
  if Value <> FText then
  begin
    FText := Value;
    FCommandType := GetCommandType(Value);
    OracleScript.CommandsChanged := True;
    if FWords <> nil then FWords.Clear;
  end;
end;

function TOracleCommand.GetSubstitutedText: string;
begin
  Result := ReplaceVariables(Text);
end;

procedure TOracleCommand.SetIndex(Value: Integer);
begin
  inherited SetIndex(Value);
  OracleScript.CommandsChanged := True;
end;

function TOracleCommand.GetWords: TStrings;
var S: string;
    i: Integer;
    W: string;
begin
  if FWords = nil then FWords := TStringList.Create;
  if FWords.Count = 0 then
  begin
    S := RemoveSQLComment(Text);
    S := ReplaceVariables(S) + ' ';
    // Split a string into a list of words
    W := '';
    for i := 1 to Length(S) do
    begin
      if not (S[i] in [#13, #10, #9, ' ']) then
      begin
        W := W + S[i];
      end else begin
        if W <> '' then
        begin
          FWords.Add(W);
          W := '';
        end;
      end;
    end;
  end;
  Result := FWords;
end;

// Locate substitution variables in SQL text
function TOracleCommand.FindVariables(var SQL: string): TStringList;
var s: string;
    i: Integer;
    Mode: char;
    VarName, EndC: string;
    VarPos: Integer;
begin
  Result := TStringList.Create;
  s := SQL + #13#10;
  Mode := 'S';
  EndC := '';
  VarPos := 0;
  for i := 1 to Length(s) do
  begin
    case Mode of
      'S' : begin
              if (s[i] = '&') then
              begin
                if ((i = 1) or (s[i - 1] <> '\')) then
                begin
                  Mode    := 'V';
                  VarName := '';
                  VarPos  := i;
                end else begin
                  Delete(s, i - 1, 1);
                end;
              end;
              if (S[i] = '/') and (S[i + 1] = '*') then
              begin
                Mode := 'C';
                EndC := '*/';
              end;
              if (S[i] = '-') and (S[i + 1] ='-') then
              begin
                Mode := 'C';
                EndC := #13#10;
              end;
            end;
      'V' : begin
              if not ((s[i] = '&') or (s[i] in ['a'..'z', 'A'..'Z', '0'..'9', '_', '#', '$', #128..#255])) then
              begin
                if (VarName <> '') {and (Result.IndexOf(VarName) < 0)} then
                  Result.AddObject(VarName, TObject(VarPos));
                Mode := 'S';
              end else
                VarName := VarName + s[i];
            end;
      'C' : if (S[i] = EndC[1]) and (S[i + 1] = EndC[2]) then mode := 'S';
    end;
  end;
  SQL := Copy(S, 1, Length(S) - 2);
end;

// Replace substitution variables
function TOracleCommand.ReplaceVariables(S: string): string;
var Vars: TStringList;
    i, p: Integer;
    Value: string;
begin
  Vars := FindVariables(S);
  for i := Vars.Count - 1 downto 0 do
  begin
    Value := OracleScript.GetVariable(Vars[i]);
    p := Integer(Vars.Objects[i]);
    Delete(S, p, Length(Vars[i]) + 1);
    if (Length(S) > p) and (S[p] = '.') then Delete(S, p, 1);
    Insert(Value, S, p);
  end;
  Result := S;
  Vars.Free;
end;

// Align a result field
function TOracleCommand.WidthCorrection(S: string; Index: Integer): string;
var W: Integer;
begin
  with OracleScript do
  begin
    case Query.FieldType(Index) of
        otCLOB,
        otLong: W := 40;
     otLongRaw,
      otObject,
   otReference,
        otBLOB,
       otBFile: W := 11;
      otString: W := Query.FieldSize(Index);
     otInteger,
       otFloat: begin
                  W := Query.FieldPrecision(Index) + 1;
                  if Query.FieldScale(Index) <> 0 then Inc(W);
                  if W <= 1 then W := 10;
                end;
        otDate: W := 11;
    else
      W := 0;
    end;
    if W < Length(Query.FieldName(Index)) then W := Length(Query.FieldName(Index));
    if W > 40 then W := 40;
    Result := Copy(S, 1, W);
    if Query.FieldType(Index) in [otInteger, otFloat] then
      while Length(Result) < w do Result := ' ' + Result
    else
      while Length(Result) < w do Result := Result + ' ';
  end;
end;

// Display one line of data
procedure TOracleCommand.DisplayResult;
var Column: Integer;
    S, V: string;
begin
  with OracleScript do
  begin
    S := '';
    for Column := 1 to Query.FieldCount do
    begin
      try
        case Query.FieldType(Column - 1) of
          otLongRaw: V := '<Long Raw>';
             otCLOB,
             otLong: V := Copy(string(Query.Field(Column - 1)), 1, 40);
           otObject: V := '<Object>';
        otReference: V := '<Reference>';
             otBLOB: V := '<BLOB>';
            otBFile: V := '<BFILE>';
        else
          begin
            if Query.FieldScale(Column - 1) > 0 then
            begin
              if Query.FieldIsNull(Column - 1) then
                V := ''
              else
                V := FloatToStrF(Query.Field(Column - 1), ffFixed, Query.FieldPrecision(Column - 1), Query.FieldScale(Column - 1));
            end else
              V := Query.FieldAsString(Column - 1);
          end;
        end;
      except
        V := '<Value Error>';
      end;
      if S <> '' then S := S + ' ';
      S := S + WidthCorrection(V, Column - 1);
    end;
    AddOutput(S);
  end;
end;

// Execute a single command
function TOracleCommand.Execute: Boolean;
var Handled: Boolean;
    i: Integer;
    S: string;
begin
  OracleScript.FCurrentCommand := Self;
  OracleScript.SendToMonitor(True, True);
  Handled       := False;
  ErrorMessage  := '';
  ErrorCode     := 0;
  FunctionType  := 0;
  RowsProcessed := 0;
  if CommandType = ctNonSQL then
  begin
    S := SubstitutedText;
    if OracleScript.Debug then ShowMessage(S);
    if ooNonSQL in OracleScript.OutputOptions then
    begin
      OracleScript.AddOutput(S);
      OracleScript.AddOutput('');
    end;
    Handled := OracleScript.DoNonSQLCommand(Self);
  end else begin
    with OracleScript do
    begin
      S := SubstitutedText;
      Query.Session  := Session;
      Query.Debug    := Debug;
      Query.Cursor   := Cursor;
      Query.SQL.Text := S;
      if ooSQL in OutputOptions then
      begin
        AddOutput(S);
        AddOutput('');
      end;
      try
        Query.Execute;
        if AutoCommit and (Query.FunctionType in [3, 5, 9, 34]) then Session.Commit;
        if (Query.FunctionType = 4) then
        begin
          if ooData in OutputOptions then
          begin
            S := '';
            for i := 0 to Query.FieldCount - 1 do
            begin
              if S <> '' then S := S + ' ';
              S := S + WidthCorrection(Query.FieldName(i), i);
            end;
            AddOutput(S);
            S := '';
            for i := 0 to Query.FieldCount - 1 do
            begin
              if S <> '' then S := S + ' ';
              S := S + WidthCorrection('----------------------------------------', i);
            end;
            AddOutput(S);
          end;
          if (Assigned(FOnData)) or (ooData in OutputOptions) then
          while (not Query.Eof) do
          begin
            if Assigned(FOnData) then FOnData(OracleScript);
            if ooData in OutputOptions then DisplayResult;
            Query.Next;
          end;
          if ooData in OutputOptions then AddOutput('');
        end;
      except
        on E:EOracleError do
        begin
          FErrorMessage := E.Message;
          FErrorCode := E.ErrorCode;
          if ooError in OutputOptions then
          begin
            AddOutput(E.Message);
            AddOutput('');
          end;
          Finished := ExitOnError;
        end;
      end;
      FFunctionType  := Query.FunctionType;
      FRowsProcessed := Query.RowsProcessed;
      if (ErrorCode <> 0) and Assigned(FOnError) then FOnError(OracleScript);
      if (ErrorCode = 0) and (ooFeedback in OutputOptions) then
      begin
        S := FunctionFeedback(FunctionType, RowsProcessed);
        if (Query.WarningFlags and 32) <> 0 then
          S := 'Warning: ' + S + ' with compilation errors';
        AddOutput(S);
        AddOutput('');
      end;
    end;
  end;
  Result := Handled;
end;

// Get a 'comment' variable  (-- name = value)
function TOracleCommand.CommentProperty(Name: string): string;
var L: TStringList;
    i, p: Integer;
begin
  Name := UpperCase(Name);
  Result := '';
  L := TStringList.Create;
  L.Text := FText;
  for i := 0 to L.Count - 1 do
  begin
    if Copy(L[i], 1, 2) = '--' then
    begin
      p := Pos('=', L[i]);
      if p > 0 then
      begin
        if UpperCase(Trim(Copy(L[i], 3, p - 3))) = Name then
        begin;
          Result := QuoteTrim(Copy(L[i], p + 1, Length(L[i])));
          Break;
        end;
      end;
    end;
  end;
  L.Free;
end;

// TOracleScript

constructor TOracleScript.Create(AOwner: TComponent);
begin
  inherited;
  LinesChanged    := False;
  CommandsChanged := False;
  FQuery := TOracleQuery.Create(nil);
  FQuery.Name := 'Query';
  FQuery.ParentMonID := MonID;
  FCommands := TOracleCommands.Create(Self);
  FDebug := False;
  FSession := nil;
  FCursor := crDefault;
  FLines := TStringList.Create;
  FLines.OnChange := LinesChange;
  FOutput := TStringList.Create;
  FVariables := TStringList.Create;
  FOutputOptions := [ooSQL, ooNonSQL, ooData, ooFeedback, ooError];
  FAutoCommit := False;
  FExitOnError := False;
  FCommandIndex := 0;
end;

destructor TOracleScript.Destroy;
begin
  FQuery.Free;
  FCommands.Free;
  FVariables.Free;
  FLines.Free;
  FOutput.Free;
  RemoveFromList;
  SendToMonitor(False, True);
  inherited;
end;

procedure TOracleScript.LinesChange(Sender: TObject);
begin
  LinesChanged := True;
end;

// Find a substitution variable
function TOracleScript.FindVariable(var Name: string): Integer;
var i: Integer;
begin
  Result := -1;
  Name := Trim(UpperCase(Name));
  for i := 0 to FVariables.Count - 1 do
  begin
    if Pos(Name + '=', Uppercase(FVariables[i])) = 1 then
    begin
      Result := i;
      Exit;
    end;
  end;
end;

// Get a substitution variable
function TOracleScript.GetVariable(Name: string): string;
var i: Integer;
begin
  Result := '';
  i := FindVariable(Name);
  if i >= 0 then Result := Copy(FVariables[i], Length(Name) + 2, Length(FVariables[i]));
end;

// Set a substitution variable
procedure TOracleScript.SetVariable(Name, Value: string);
var i: Integer;
begin
  i := FindVariable(Name);
  if i >= 0 then
    FVariables[i] := Name + '=' + Value
  else
    FVariables.Add(Name + '=' + Value);
end;

// Combine all commands to a script
procedure TOracleScript.BuildLines;
var i: Integer;
    Space, Spaced: Boolean;
    S: string;
begin
  S := '';
  Spaced := False;
  for i := 0 to Commands.Count - 1 do
  begin
    Space := Pos(#13, Commands[i].Text) > 0;
    if S <> '' then
    begin
      S := S + #13#10;
      if (Space and not Spaced) then S := S + #13#10;
    end;
    S := S + Commands[i].Text;
    if (Commands[i].CommandType = ctSQL) and (S <> '') and (S[Length(S)] <> ';') then S := S + ';';
    if Commands[i].CommandType = ctPLSQL then S := S + #13#10 + '/';
    if Space then S := S + #13#10;
    Spaced := Space;
  end;
  FLines.Text := S;
  LinesChanged := False;
  CommandsChanged := False;
end;

// Split a string into a list of words
function TOracleScript.GetWords(S: string): TStringList;
var i: Integer;
    W: string;
const
  Identifiers = ['a'..'z', 'A'..'Z', '0'..'9', '_', '#', '$', '.', '"', '@', #128..#255];
begin
  Result := TStringList.Create;
  W := '';
  S := UpperCase(Trim(S)) + ' ';
  for i := 1 to Length(S) do
  begin
    if S[i] in Identifiers then
    begin
      W := W + UpperCase(S[i]);
    end else begin
      if W <> '' then
      begin
        Result.Add(W);
        W := '';
      end;
    end;
  end;
end;

// Is it a SQL Command?
function TOracleScript.SQLCommand(const S1, S2: string): Boolean;
begin
  Result := (S1 = 'ALTER') or (S1 = 'ANALYZE') or (S1 = 'AUDIT') or
            (S1 = 'COMMIT') or (S1 = 'COMMENT') or (S1 = 'CREATE') or
            (S1 = 'DELETE') or (S1 = 'DROP') or (S1 = 'GRANT') or
            (S1 = 'INSERT') or (S1 = 'LOCK') or (S1 = 'RENAME') or
            (S1 = 'SAVEPOINT') or (S1 = 'SELECT') or (S1 = 'ROLLBACK') or
            (S1 = 'TRUNCATE') or (S1 = 'NOAUDIT') or (S1 = 'REVOKE') or
            (S1 = 'UPDATE') or (S1 = 'BEGIN') or (S1 = 'DECLARE') or
            (S1 = 'EXPLAIN') or (S1 = 'ASSOCIATE') or (S1 = 'DISASSOCIATE') or
            (S1 = 'CALL');
  if (not Result) and (S1 = 'SET') then
  begin
    Result :=
     (S2 = 'ROLE') or
     (S2 = 'TRANSACTION') or
     (S2 = 'CONSTRAINT') or
     (S2 = 'CONSTRAINTS');
  end;
end;

// Is it a PL/SQL Block?
function TOracleScript.PLSQLBlock(const FirstWord, S: string): Boolean;
var L: TStringList;
    ObjectIndex, BodyIndex: Integer;
 function Word(Index: Integer): string;
 begin
   Result := '';
   if Index < L.Count then Result := L[Index];
 end;
begin
  Result := (FirstWord = 'BEGIN') or (FirstWord = 'DECLARE');
  if (not Result) and (FirstWord = 'CREATE') then
  begin
    L := GetWords(S);
    ObjectIndex := 1;
    BodyIndex   := 2;
    if (Word(1) = 'OR') and (Word(2) = 'REPLACE') then
    begin
      inc(ObjectIndex, 2);
      inc(BodyIndex, 2);
    end;
    Result := Word(ObjectIndex) = 'FUNCTION';
    if (not Result) then Result := Word(ObjectIndex) = 'PROCEDURE';
    if (not Result) then Result := Word(ObjectIndex) = 'PACKAGE';
    if (not Result) then Result := Word(ObjectIndex) = 'TRIGGER';

    if (not Result) and (Word(ObjectIndex) = 'TYPE') then
      Result := Word(BodyIndex) = 'BODY';
    L.Free;
  end;
end;

// Build the commands
procedure TOracleScript.BuildCommands;
var i, StartIndex: Integer;
    EndChar: Char;
    S, Command, XCommand: string;
    ValidSQL: Boolean;
    WordList: TStringList;
 // Return the first word of the command
 function FirstWord: string;
 begin
   Result := '';
   if (WordList <> nil) and (WordList.Count > 0) then Result := WordList[0];
 end;
 // Return the second word of the command
 function SecondWord: string;
 begin
   Result := '';
   if (WordList <> nil) and (WordList.Count > 1) then Result := WordList[1];
 end;
 function CommandEnd(S, Line: string; C: Char): Boolean;
 begin
   Result := (Line = '/');
   if (not Result) and (C = ';') then Result := (S[Length(S)] = ';');
 end;
 // Add a command to the collection
 procedure AddCommand;
 var C: TOracleCommand;
     CType: TCommandType;
 begin
   // Determine Command Type (SQL, PL/SQL or ...)
   if not ValidSQL then
     CType := ctNonSQL
   else
     if EndChar = '/' then CType := ctPLSQL else CType := ctSQL;
   // Strip terminating character
   if ValidSQL and (Length(Command) > 1) and
     (Command[Length(Command) - 1] = #10) and 
     (Command[Length(Command)] = '/') then
   begin
     SetLength(Command, Length(Command) - 1);
     Command := TrimRight(Command);
   end else begin
     if (CType = ctSQL) and (Command <> '') and (Command[Length(Command)] = ';') then
     begin
       SetLength(Command, Length(Command) - 1);
       Command := TrimRight(Command);
     end;
   end;
   // If there is a command, add it to the list
   if Command = '' then Exit;
   C := Commands.Add;
   C.FText        := Command;
   C.FName        := C.CommentProperty('NAME');
   C.FScriptLine  := StartIndex;
   C.FWords       := nil;
   C.FCommandType := CType;
 end;
begin
  Commands.Clear;
  FCurrentCommand := nil;
  EndChar  := ';';
  WordList := nil;
  Command  := '';
  for i := 0 to FLines.Count - 1 do
  begin
    S := TrimRight(FLines[i]);
    // Remove Comment after /
    if (S <> '') and (S[1] = '/') and (RemoveSQLComment(S) = '/') then S := '/';
    // Add a line to the 'command'
    if Command = '' then StartIndex := i else Command := Command + #13#10;
    Command := Command + S;
    // Separate the first couple of words of the command
    if (WordList = nil) or (WordList.Count < 4) then
    begin
      if WordList <> nil then WordList.Free;
      // XCommand will contain the command without comment
      XCommand := RemoveSQLComment(Command);
      WordList := GetWords(XCommand);
      ValidSQL := SQLCommand(FirstWord, SecondWord);
    end;
    // Is it a valid SQL command or PL/SQL Block?
    if ValidSQL and (EndChar <> '/') and PLSQLBlock(FirstWord, XCommand) then EndChar := '/';
    if (Trim(XCommand) <> '') and (CommandEnd(Command, S, EndChar) or (not ValidSQL)) then
    begin
      // Found a complete command, add it to the list
      Command := Trim(Command);
      AddCommand;
      EndChar  := ';';
      Command  := '';
      WordList.Clear;
    end;
  end;
  Command := Trim(Command);
  if Command <> '' then AddCommand;
  if WordList <> nil then WordList.Free;
  LinesChanged := False;
end;

// Add a Script to the Script list of the session
procedure TOracleScript.AddToList;
begin
  if Session <> nil then Session.Scripts.Add(Self);
end;

// Remove a Script from the Script list of the session
procedure TOracleScript.RemoveFromList;
begin
  if Session <> nil then Session.Scripts.Remove(Self);
end;

procedure TOracleScript.SetSession(const Value: TOracleSession);
begin
  RemoveFromList;
  SendToMonitor(False, True);
  if FSession <> nil then FMonID := 0;
  FSession := Value;
  Query.Session := Value;
  AddToList;
end;

function TOracleScript.GetLines: TStrings;
begin
  if CommandsChanged then BuildLines;
  Result := FLines;
end;

procedure TOracleScript.SetLines(Value: TStrings);
begin
  FLines.BeginUpdate;
  try
    FLines.Assign(Value);
    LinesChanged := True;
    BuildCommands;
  finally
    FLines.EndUpdate;
  end;
end;

function TOracleScript.GetFinished: Boolean;
begin
  Result := FCommandIndex >= Commands.Count;
end;

procedure TOracleScript.SetFinished(Value: Boolean);
begin
  if Value then FCommandIndex := Commands.Count;
end;

// Add a line to the output
procedure TOracleScript.AddOutput(const S: string);
var L: TStringList;
    i: Integer;
begin
  if S = '' then
  begin
    if Assigned(FOnOutput) then FOnOutput(Self, S);
    FOutput.Add('');
  end else begin
    L := TStringList.Create;
    L.Text := S;
    for i := 0 to L.Count - 1 do
    begin
      if Assigned(FOnOutput) then FOnOutput(Self, L[i]);
      FOutput.Add(L[i]);
    end;
    L.Free;
  end;
end;

function TOracleScript.KeywordCompare(const S, Keyword: string): Boolean;
var p, star: Integer;
begin
  Result := False;
  star := 0;
  for p := 1 to Length(S) do
  begin
    if S[p] <> Keyword[p + star] then Break;
    if Keyword[p + 1 + star] = '*' then inc(star);
    if (p = Length(S)) and ((Length(S) = Length(Keyword)) or (Star > 0)) then
    begin
      Result := True;
      Exit;
    end;
  end;
end;

// Execute supported 'SQL*Plus' commands
function TOracleScript.DoNonSQLCommand(Command: TOracleCommand): Boolean;
var S: string;
    p, sp, ap: Integer;
    OracleLogon: TOracleLogon;
 function RemoveSemiColon(const S: string): string;
 begin
   Result := S;
   if (Result <> '') and (Result[Length(Result)] = ';') then
     Delete(Result, Length(Result), 1);
 end;
 function Parameters: string;
 begin
   Result := Trim(RemoveSQLComment(Command.SubstitutedText));
   Result := RemoveSemiColon(Result);
   if Pos(' ', Result) = 0 then
     Result := ''
   else begin
     Result := Copy(Result, Pos(' ', Result), Length(Result));
     Result := Trim(Result);
   end;
 end;
 function FirstWord: string;
 begin
   Result := '';
   if Command.Words.Count > 0 then Result := UpperCase(Command.Words[0]);
   Result := RemoveSemiColon(Result);
 end;
begin
  Result := False;
  if KeywordCompare(FirstWord, 'REM*ARK') then
  begin
    Result := True;
  end;
  if KeywordCompare(FirstWord, 'QUIT') then
  begin
    Result := True;
    Finished := True;
  end;
  if KeywordCompare(FirstWord, 'EXIT') then
  begin
    Result := True;
    Finished := True;
  end;
  if KeywordCompare(FirstWord, 'PAUSE') then
  begin
    Result := True;
    ShowMessage(QuoteTrim(Parameters));
  end;
  if KeywordCompare(FirstWord, 'DEF*INE') then
  begin
    Result := True;
    S := Parameters;
    p := Pos('=', S);
    if p > 0 then SetVariable(Copy(S, 1, p - 1), QuoteTrim(Copy(S, p + 1, Length(S))));
  end;
  if KeywordCompare(FirstWord, 'UNDEF*INE') then
  begin
    Result := True;
    S := Parameters;
    SetVariable(S, '');
  end;
  if KeywordCompare(FirstWord, 'PRO*MPT') then
  begin
    Result := True;
    S := QuoteTrim(Parameters);
    AddOutput(S);
//  AddOutput('');
  end;
  if KeywordCompare(FirstWord, 'CON*NECT') then
  begin
    Result := True;
    S := Parameters;
    FQuery.Session.Connected := False;
    FQuery.Session.LogonPassword := '';
    if S = '' then AddOutput('Connecting') else AddOutput('Connecting as ' + S);
    OracleLogon := TOracleLogon.Create(nil);
    OracleLogon.Options := OracleLogon.Options + [ldDatabaseList];
    OracleLogon.Session := FQuery.Session;
    Try
      // Extract username/password@database
      sp := Pos('/', S);
      ap := Pos('@', S);
      if ap = 0 then ap := Length(S) + 1;
      if sp > 0 then
      begin
        FQuery.Session.LogonUserName := Copy(S, 1, sp - 1);
        FQuery.Session.LogonPassword := Copy(S, sp + 1, ap - sp - 1);
      end;
      if ap < Length(S) then
        FQuery.Session.LogonDatabase := Copy(S, ap + 1, Length(S) - ap)
      else
        FQuery.Session.LogonDatabase := '';
      OracleLogon.Execute;
      if not FQuery.Session.Connected then
      begin
        AddOutput('Connection failed, not logged on');
        AddOutput('');
      end;
    except
      on E:Exception do AddOutput(E.Message);
    end;
    OracleLogon.Free;
    AddOutput('');
  end;
  if KeywordCompare(FirstWord, 'DISC*ONNECT') then
  begin
    Result := True;
    FQuery.Session.Connected := False;
    AddOutput('Disonnected');
    AddOutput('');
  end;
end;

// Execute the script
procedure TOracleScript.Execute;
var i: Integer;
    OldCursor: TCursor;
    Handled: Boolean;
begin
  if LinesChanged then BuildCommands;
  FCommandIndex := 0;
  OldCursor := Screen.Cursor;
  if Cursor <> crDefault then Screen.Cursor := FCursor;
  try
    repeat
      i := CommandIndex;
      FCurrentCommand := Commands[i];
      Handled := False;
      FQuery.Clear;
      if Assigned(FOnCommand) then FOnCommand(Self, Handled);
      if i = CommandIndex then
      begin
        if not Handled then Handled := Commands[i].Execute;
        if i = CommandIndex then
        begin
          if Assigned(FAfterCommand) then FAfterCommand(Self, Handled);
          if i = CommandIndex then inc(FCommandIndex);
        end;
      end;
    until Finished;
  finally
    if Cursor <> crDefault then Screen.Cursor := OldCursor;
  end;
end;

// Find a specific command by name
function TOracleScript.CommandByName(const Name: string): TOracleCommand;
var i: Integer;
begin
  if LinesChanged then BuildCommands;
  Result := nil;
  for i := 0 to Commands.Count - 1 do
  begin
    if UpperCase(Commands[i].Name) = UpperCase(Name) then
    begin
      Result := Commands[i];
      Exit;
    end;
  end;
end;

// Monitor functions

function TOracleScript.GetMonID: Integer;
begin
  if FMonID = 0 then FMonID := GetNewMonID;
  Result := FMonID;
end;

procedure TOracleScript.SendToMonitor(Creation, Signal: Boolean);
begin
  if ((Creation xor SentToMonitor) or not Signal) and MonitorListening then
  begin
    SentToMonitor := Creation;
    AddMonObject(Creation, ckScript, MonID, 0, Self, Session, nil, Signal);
  end;
end;

// TDirectPathColumn object

procedure TDirectPathColumn.SetDataType(Value: TDirectPathColumnType);
begin
  if Value = FDataType then Exit;
  FDataType := Value;
  if FDataType = dpInteger then DataSize := SizeOf(Integer);
  if FDataType = dpFloat then DataSize := SizeOf(Double);
  if FDataType <> dpString then DateFormat := '';
end;

procedure TDirectPathColumn.SetDataSize(Value: Integer);
begin
  if Value = FDataSize then Exit;
  if FDataType = dpInteger then Value := SizeOf(Integer);
  if FDataType = dpFloat then Value := SizeOf(Double);
  FDataSize := Value;
end;

procedure TDirectPathColumn.SetDateFormat(const Value: string);
begin
  if DataType = dpString then
    FDateFormat := Value
  else
    FDateFormat := '';
end;

function TDirectPathColumn.InternalDataType: Integer;
begin
  case DataType of
         dpString: Result := SQLT_CHR;
        dpInteger: Result := SQLT_INT;
          dpFloat: Result := SQLT_FLT;
         dpBinary: Result := SQLT_BIN;
  else
    raise Exception.Create('Unexpected DirectPathColumn.DataType');
  end;
end;

procedure TDirectPathColumn.SetData(Row: Integer; Data: Pointer; Size: Integer);
begin
  if (Size = 0) then
  begin
    if DataType = dpInteger then Size := SizeOf(Integer);
    if DataType = dpFloat then Size := SizeOf(Double);
  end;
  Loader.SetArrayEntry(Index, Row, Data, Size);
end;

// TDirectPathColumns object

constructor TDirectPathColumns.Create(ALoader: TOracleDirectPathLoader);
begin
  inherited Create;
  Fitems := TCollection.Create(TDirectPathColumn);
  FLoader := ALoader;
end;

destructor TDirectPathColumns.Destroy;
begin
  FItems.Free;
  inherited;
end;

function TDirectPathColumns.GetCount: Integer;
begin
  Result := FItems.Count;
end;

function TDirectPathColumns.GetItem(Index: Integer): TDirectPathColumn;
begin
  Result := FItems.Items[Index] as TDirectPathColumn;
end;

procedure TDirectPathColumns.AssignTo(Dest: TPersistent);
var i: Integer;
begin
  if Dest is TDirectPathColumns then
  begin
    TDirectPathColumns(Dest).Clear;
    for i := 0 to Count - 1 do
    begin
      with TDirectPathColumns(Dest).Add(Items[i].Name) do
      begin
        DataType   := Items[i].DataType;
        DataSize   := Items[i].DataSize;
        DateFormat := Items[i].DateFormat;
      end;
    end;
    Exit;
  end;
  inherited AssignTo(Dest);
end;

function TDirectPathColumns.Add(Name: string): TDirectPathColumn;
begin
  Result := TDirectPathColumn.Create(FItems);
  Result.Name := Name;
  Result.FLoader := Loader;
end;

procedure TDirectPathColumns.Clear;
begin
  FItems.Clear;
end;

function TDirectPathColumns.GetVersion: Integer;
begin
  Result := 1;
end;

procedure TDirectPathColumns.ReadBinaryData(Stream: TStream);
var i, Temp, NumItems, Ver: Integer;
    s: string;
begin
  Clear;
  with Stream do
  begin
    ReadBuffer(Ver, SizeOf(Temp));
    if Ver > GetVersion then
      raise Exception.Create('Invalid version of DirectPathColumns');
    ReadBuffer(NumItems, SizeOf(NumItems));
    for i := 0 to NumItems - 1 do
    begin
      // Length of name
      ReadBuffer(Temp, SizeOf(Temp));
      // Name
      SetLength(s, Temp);
      ReadBuffer(PChar(s)^, Temp);
      with Add(s) do
      begin
        // properties
        ReadBuffer(Temp, SizeOf(Temp));
        DataType := TDirectPathColumnType(Temp);
        ReadBuffer(Temp, SizeOf(Temp));
        DataSize := Temp;
        // Length of DateFormat
        ReadBuffer(Temp, SizeOf(Temp));
        // Name
        SetLength(s, Temp);
        ReadBuffer(PChar(s)^, Temp);
        DateFormat := s;
      end;
    end;
  end;
end;

procedure TDirectPathColumns.WriteBinaryData(Stream: TStream);
var i, Temp: Integer;
begin
  // Write Version, Count, {Length of name, name, data type, ...}
  with Stream do
  begin
    Temp := GetVersion;
    WriteBuffer(Temp, SizeOf(Temp));
    Temp := Count;
    WriteBuffer(Temp, SizeOf(Temp));
    for i := 0 to Count - 1 do with Items[i] do
    begin
      Temp := Length(Name);
      WriteBuffer(Temp, SizeOf(Temp));
      WriteBuffer(PChar(Name)^, Temp);
      Temp := Ord(DataType);
      WriteBuffer(Temp, SizeOf(Temp));
      WriteBuffer(DataSize, SizeOf(DataSize));
      Temp := Length(DateFormat);
      WriteBuffer(Temp, SizeOf(Temp));
      WriteBuffer(PChar(DateFormat)^, Temp);
    end;
  end;
end;

procedure TDirectPathColumns.DefineProperties(Filer: TFiler);
var AC: TDirectPathColumns;
    c: Integer;
    TheSame, DoWrite: Boolean;
    C1, C2: TDirectPathColumn;
begin
  inherited DefineProperties(Filer);
  // Is there an ancestor? If so, we must compare the properties
  AC := Filer.Ancestor as TDirectPathColumns;
  if AC = nil then
    DoWrite := (Count > 0)
  else begin
    // Compare everything: Number of columns, all column properties
    TheSame := (AC.Count = Count);
    if TheSame then for c := 0 to Count - 1 do
    begin
      C1 := Items[c];
      C2 := AC.Items[c];
      if (C1.Name       <> C2.Name) or
         (C1.DataType   <> C2.DataType) or
         (C1.DataSize   <> C2.DataSize) or
         (C1.DateFormat <> C2.DateFormat) then TheSame := False;
    end;
    DoWrite := not TheSame;
  end;
  Filer.DefineBinaryProperty('Columns', ReadBinaryData, WriteBinaryData, DoWrite);
end;

// TOracleDirectPathLoader component

constructor TOracleDirectPathLoader.Create(AOwner: TComponent);
begin
  inherited;
  errhp := nil;
  dpctx := nil;
  dpparlist := nil;
  dpca := nil;
  dpstr := nil;
  FSession := nil;
  FTableName := '';
  FPartitionName := '';
  FBufferSize := $10000;
  FDateFormat := '';
  FLogMode := lmDefault;
  FParallel := False;
  FMaxRows := 0;
  FColumns := TDirectPathColumns.Create(Self);
end;

destructor TOracleDirectPathLoader.Destroy;
begin
  FColumns.Free;
  FreeHandles;
  RemoveFromList;
  SendToMonitor(False, True);
  inherited;
end;

// Send the Loader to the OracleMonitor
procedure TOracleDirectPathLoader.SendToMonitor(Creation, Signal: Boolean);
begin
  if ((Creation xor SentToMonitor) or not Signal) and MonitorListening then
  begin
    SentToMonitor := Creation;
    AddMonObject(Creation, ckLoader, MonId, 0, Self, Session, nil, Signal);
  end;
end;

// Determine the Monitor ID of the Loader
function TOracleDirectPathLoader.GetMonID: Integer;
begin
  if FMonID = 0 then FMonID := GetNewMonID;
  Result := FMonID;
end;

// Send the start of an activity to the OracleMonitor
procedure TOracleDirectPathLoader.SendStartActivity(const ADescription: string);
begin
  SendToMonitor(True, True);
  AddMonActivity(ckQuery, Session.MonID, MonID, 0, Self,
    afStart, 0, ADescription, '', '', nil, nil, 0);
  MonActivityStartTime := GetTickCount;
end;

// Send the end of an activity to the OracleMonitor
procedure TOracleDirectPathLoader.SendEndActivity(const ADescription, AResultMessage: string);
var t: LongInt;
begin
  if MonActivityStartTime <> 0 then
  begin
    t := MonActivityStartTime;
    MonActivityStartTime := 0;
    SendToMonitor(True, True);
    AddMonActivity(ckLoader, Session.MonID, MonID, 0, Self,
      afEnd, 0, ADescription, '', AResultMessage, nil, nil, t);
  end;
end;

// Perform an OCI call for the Loader
procedure TOracleDirectPathLoader.OCICall(Err: Integer);
begin
  case Err of
    OCI_ERROR: RaiseOracleError(Session, integer(errhp));
    OCI_INVALID_HANDLE: raise Exception.Create('TOracleDirectPathLoader: Invalid handle');
  end;
end;

// Set the columns property
procedure TOracleDirectPathLoader.SetColumns(Value: TDirectPathColumns);
begin
  Value.AssignTo(FColumns)
end;

// Add a Loader to the Loader list of the session
procedure TOracleDirectPathLoader.AddToList;
begin
  if Session <> nil then Session.Loaders.Add(Self);
end;

// Remove a Loader from the Loader list of the session
procedure TOracleDirectPathLoader.RemoveFromList;
begin
  if Session <> nil then Session.Loaders.Remove(Self);
end;

// Set the session property
procedure TOracleDirectPathLoader.SetSession(Value: TOracleSession);
begin
  if Value = FSession then Exit;
  FreeHandles;
  RemoveFromList;
  SendToMonitor(False, True);
  if FSession <> nil then FMonID := 0;
  FSession := Value;
  AddToList;
end;

// Allocate the basic OCI handles for the Loader
procedure TOracleDirectPathLoader.AllocateHandles;
var lub1: ub1;
    lub2: ub2;
    lub4: ub4;
    i: Integer;
    paramhp: OCIParam;
    Col: TDirectPathColumn;
    NamePart, SchemaPart: string;
begin
  FreeHandles;
  OCICall(OCIHandleAlloc(Session.ExternalENV, errhp, OCI_HTYPE_ERROR, 0, nil));
  OCICall(OCIHandleAlloc(Session.ExternalENV, dpctx, OCI_HTYPE_DIRPATH_CTX, 0, nil));
  // OCI_ATTR_NAME and OCI_ATTR_SCHEMA_NAME
  i := Pos('.', TableName);
  if i > 0 then
  begin
    NamePart   := Copy(TableName, i + 1, Length(TableName));
    SchemaPart := Copy(TableName, 1, i - 1);
  end else begin
    NamePart   := TableName;
    SchemaPart := '';
  end;
  OCICall(OCIAttrSet(dpctx, OCI_HTYPE_DIRPATH_CTX, PChar(NamePart), Length(NamePart), OCI_ATTR_NAME, errhp));
  if SchemaPart <> '' then
    OCICall(OCIAttrSet(dpctx, OCI_HTYPE_DIRPATH_CTX, PChar(SchemaPart), Length(SchemaPart), OCI_ATTR_SCHEMA_NAME, errhp));
  // OCI_ATTR_SUB_NAME
  if PartitionName <> '' then
    OCICall(OCIAttrSet(dpctx, OCI_HTYPE_DIRPATH_CTX, PChar(PartitionName), Length(PartitionName), OCI_ATTR_SUB_NAME, errhp));
  // OCI_ATTR_NUM_COLS
  lub2 := Columns.Count;
  OCICall(OCIAttrSet(dpctx, OCI_HTYPE_DIRPATH_CTX, @lub2, SizeOf(lub2), OCI_ATTR_NUM_COLS, errhp));
  // OCI_ATTR_BUF_SIZE
  OCICall(OCIAttrSet(dpctx, OCI_HTYPE_DIRPATH_CTX, @FBufferSize, SizeOf(FBufferSize), OCI_ATTR_BUF_SIZE, errhp));
  // OCI_ATTR_DATEFORMAT
  if DateFormat <> '' then
    OCICall(OCIAttrSet(dpctx, OCI_HTYPE_DIRPATH_CTX, PChar(DateFormat), Length(DateFormat), OCI_ATTR_DATEFORMAT, errhp));
  // OCI_ATTR_DIRPATH_MODE
  lub1 := OCI_DIRPATH_LOAD;
  OCICall(OCIAttrSet(dpctx, OCI_HTYPE_DIRPATH_CTX, @lub1, SizeOf(lub1), OCI_ATTR_DIRPATH_MODE, errhp));
  // OCI_ATTR_DIRPATH_NOLOG
  lub1 := ord(LogMode);
  OCICall(OCIAttrSet(dpctx, OCI_HTYPE_DIRPATH_CTX, @lub1, SizeOf(lub1), OCI_ATTR_DIRPATH_NOLOG, errhp));
  // OCI_ATTR_DIRPATH_PARALLEL
  if Parallel then lub1 := 1 else lub1 := 0;
  OCICall(OCIAttrSet(dpctx, OCI_HTYPE_DIRPATH_CTX, @lub1, SizeOf(lub1), OCI_ATTR_DIRPATH_PARALLEL, errhp));
  // Columns
  OCICall(OCIAttrGet(dpctx, OCI_HTYPE_DIRPATH_CTX, dpparlist, nil, OCI_ATTR_LIST_COLUMNS, errhp));
  for i := 0 to Columns.Count - 1 do
  begin
    OCICall(OCIParamGet(dpparlist, OCI_DTYPE_PARAM, errhp, paramhp, i + 1));
    Col := Columns[i];
    // OCI_ATTR_NAME
    OCICall(OCIAttrSet(paramhp, OCI_DTYPE_PARAM, PChar(Col.Name), Length(Col.Name), OCI_ATTR_NAME, errhp));
    // OCI_ATTR_DATA_SIZE
    lub4 := Col.DataSize;
    OCICall(OCIAttrSet(paramhp, OCI_DTYPE_PARAM, @lub4, SizeOf(lub4), OCI_ATTR_DATA_SIZE, errhp));
    // OCI_ATTR_DATA_TYPE
    lub2 := Col.InternalDataType;
    OCICall(OCIAttrSet(paramhp, OCI_DTYPE_PARAM, @lub2, SizeOf(lub2), OCI_ATTR_DATA_TYPE, errhp));
    // OCI_ATTR_DATEFORMAT
    if Col.DateFormat <> '' then
      OCICall(OCIAttrSet(paramhp, OCI_DTYPE_PARAM, PChar(Col.DateFormat), Length(Col.DateFormat), OCI_ATTR_DATEFORMAT, errhp));
    OCICall(OCIDescriptorFree(paramhp, OCI_DTYPE_PARAM));
  end;
end;

// Free all allocated OCI handles for the Loader
procedure TOracleDirectPathLoader.FreeHandles;
begin
  if dpca <> nil then
  begin
    OCIHandleFree(dpca, OCI_HTYPE_DIRPATH_COLUMN_ARRAY);
    dpca := nil;
  end;
  if dpstr <> nil then
  begin
    OCIHandleFree(dpstr, OCI_HTYPE_DIRPATH_STREAM);
    dpstr := nil;
  end;
  if dpctx <> nil then
  begin
    OCIHandleFree(dpctx, OCI_HTYPE_DIRPATH_CTX);
    dpctx := nil;
  end;
  if errhp <> nil then
  begin
    OCIHandleFree(errhp, OCI_HTYPE_ERROR);
    errhp := nil;
  end;
end;

// Prepare the Loader for a load operation
procedure TOracleDirectPathLoader.Prepare;
begin
  CheckNet8(Session, 'A TOracleDirectPathLoader', False);
  if not OCI81 then
    raise Exception.Create('A TOracleDirectPathLoader requires Net8 8.1 or later');
  if MonitorPresent then SendStartActivity('Loader.Prepare');
  try
    // Allocate basic handles and set their properties
    AllocateHandles;
    // Prepare direct path loading
    OCICall(OCIDirPathPrepare(dpctx, Session.ExternalSVC, errhp));
    // Allocate column array handle
    OCICall(OCIHandleAlloc(dpctx, dpca, OCI_HTYPE_DIRPATH_COLUMN_ARRAY, 0, nil));
    // Determine the number of rows
    OCICall(OCIAttrGet(dpca, OCI_HTYPE_DIRPATH_COLUMN_ARRAY, FMaxRows, nil, OCI_ATTR_NUM_ROWS, errhp));
    // Allocate stream handle
    OCICall(OCIHandleAlloc(dpctx, dpstr, OCI_HTYPE_DIRPATH_STREAM, 0, nil));
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

// Is the Loader prepared
function TOracleDirectPathLoader.GetPrepared: Boolean;
begin
  Result := (dpstr <> nil);
end;

// Raise an exception if the Loader is not prepared
procedure TOracleDirectPathLoader.CheckPrepared;
begin
  if not Prepared then
    raise Exception.Create('Operation only allowed for prepared TOracleDirectPathLoader');
end;

// Return the last affected column
function TOracleDirectPathLoader.GetLastColumn: Integer;
var lub2: ub2;
begin
  if not Prepared then
    Result := -1
  else begin
    OCICall(OCIAttrGet(dpca, OCI_HTYPE_DIRPATH_COLUMN_ARRAY, lub2, nil, OCI_ATTR_COL_COUNT, errhp));
    Result := lub2;
  end;
end;

// Return the last affected row
function TOracleDirectPathLoader.GetLastRow: Integer;
begin
  if not Prepared then
    Result := -1
  else
    OCICall(OCIAttrGet(dpca, OCI_HTYPE_DIRPATH_COLUMN_ARRAY, Result, nil, OCI_ATTR_ROW_COUNT, errhp));
end;

// Set the data pointer and size for a certain array entry
procedure TOracleDirectPathLoader.SetArrayEntry(Col, Row: Integer; Data: Pointer; Size: Integer);
var cflg: ub1;
begin
  CheckPrepared;
  if Col >= Columns.Count then
    raise Exception.Create('Column index out of bounds: ' + IntToStr(Col));
  if Row >= MaxRows then
    raise Exception.Create('Row index out of bounds: ' + IntToStr(Row));
  if (Data = nil) then
    cflg := OCI_DIRPATH_COL_NULL
  else
    cflg := OCI_DIRPATH_COL_COMPLETE;
  OCICall(OCIDirPathColArrayEntrySet(dpca, errhp, Row, Col, Data, Size, cflg));
end;

// Convert the array to a Direct Path stream
function TOracleDirectPathLoader.ArrayToStream(RowCount, RowOffset: Integer): Integer;
begin
  CheckPrepared;
  Result := OCIDirPathColArrayToStream(dpca, dpctx, dpstr, errhp, RowCount, RowOffset);
  OCICall(Result);
end;

// Load the Direct Path stream
procedure TOracleDirectPathLoader.LoadStream;
begin
  CheckPrepared;
  OCICall(OCIDirPathLoadStream(dpctx, dpstr, errhp));
end;

// Reset the Direct Path stream
procedure TOracleDirectPathLoader.StreamReset;
begin
  CheckPrepared;
  OCICall(OCIDirPathStreamReset(dpstr, errhp));
end;

// Load the array
procedure TOracleDirectPathLoader.Load(Rows: Integer);
var Done: Integer;
    Continue: Boolean;
begin
  if MonitorPresent then SendStartActivity('Loader.Load');
  try
    Done := 0;
    repeat
      Continue := (ArrayToStream(Rows, Done) = OCI_CONTINUE);
      if Continue then Done := LastRow;
      LoadStream;
      StreamReset;
    until not Continue;
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

// Finish the Direct Path Load operation
procedure TOracleDirectPathLoader.Finish;
begin
  CheckPrepared;
  if MonitorPresent then SendStartActivity('Loader.Finish');
  try
    OCICall(OCIDirPathFinish(dpctx, errhp));
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

// Abort the Direct Path Load operation
procedure TOracleDirectPathLoader.Abort;
begin
  CheckPrepared;
  if MonitorPresent then SendStartActivity('Loader.Abort');
  try
    OCICall(OCIDirPathAbort(dpctx, errhp));
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

// Determine the default Direct Path Columns and their properties
procedure TOracleDirectPathLoader.GetDefaultColumns(StringsOnly: Boolean);
var Query: TOracleQuery;
    f, c: Integer;
    Col: TDirectPathColumn;
    Longs: TList;
begin
  SendToMonitor(True, True);
  Query := TOracleQuery.Create(nil);
  Longs := TList.Create;
  try
    // Describe the query
    Query.StringFieldsOnly := StringsOnly;
    Query.Name := 'DefaultColumnQuery';
    Query.ParentMonID := MonID;
    Query.Session := Self.Session;
    Query.SQL.Text := 'select * from ' + TableName;
    Query.Describe;
    // Create a column definition for each column
    FColumns.Clear;
    for f := 0 to Query.FieldCount - 1 do
    begin
      Col := Columns.Add(Query.FieldName(f));
      Col.DataType := dpString;
      case Query.FieldType(f) of
        otLongRaw,
           otBLOB: Col.DataType := dpBinary;
        otInteger: Col.DataType := dpInteger;
          otFloat: Col.DataType := dpFloat;
      end;
      if Query.FieldType(f) in [otLong, otLongRaw, otCLOB, otBLOB] then Longs.Add(Col);
      if Col.DataType = dpString then
        if Query.FieldType(f) = otDate then
          Col.DataSize := Session.DateFormatLength
        else
          Col.DataSize := Query.FieldSize(f);
    end;
    // Move all longs to the end
    for c := 0 to Longs.Count - 1 do
      TDirectPathColumn(Longs[c]).Index := Columns.Count - 1;
  finally
    Query.Free;
    Longs.Free;
  end;
end;

// Find a Direct Path Column by name
function TOracleDirectPathLoader.ColumnByName(const ColumnName: string): TDirectPathColumn;
var i: Integer;
begin
  Result := nil;
  for i := 0 to Columns.Count - 1 do
  begin
    if AnsiStrIComp(PChar(Columns[i].Name), PChar(ColumnName)) = 0 then
    begin
      Result := Columns[i];
      Break;
    end;
  end;
end;

// TEventThread object

constructor TEventThread.Create(AnOracleEvent: TOracleEvent);
begin
  Event := AnOracleEvent;
  UniqueSessionId := '';
  inherited Create(False);
end;

procedure TEventThread.Execute;
begin
  Event.CriticalSection.Enter;
  FreeOnTerminate := True;
  if Event.ObjectType = otPipe then PipeLoop else AlertLoop;
end;

procedure TEventThread.SyncOnEvent;
begin
  if Assigned(Event.FOnEvent) then
    Event.OnEvent(Event, p_ObjectName, p_Info);
end;

procedure TEventThread.DoOnEvent;
begin
  if Event.Synchronized then Synchronize(SyncOnEvent) else SyncOnEvent;
end;

procedure TEventThread.SyncOnError;
begin
  if Assigned(Event.OnError) then Event.OnError(Event, p_Error);
end;

procedure TEventThread.DoOnError(AnError: Exception);
begin
  p_Error := AnError;
  if Event.Synchronized then Synchronize(SyncOnError) else SyncOnError;
end;

procedure TEventThread.SyncOnTimeOut;
begin
  p_Continue := True;
  if Assigned(Event.FOnTimeOut) then
    Event.OnTimeOut(Event, p_Continue);
end;

function TEventThread.DoOnTimeOut: Boolean;
begin
  if Application.Terminated or Terminated then
    Result := True
  else begin
    if Event.Synchronized then Synchronize(SyncOnTimeOut) else SyncOnTimeOut;
    Result := p_Continue;
  end;
end;

procedure TEventThread.PipeDoOnEvent;
var Item, Items: Variant;
    Ready: Boolean;
    ItemType, ItemIndex: Integer;
begin
  // Create an Items array that is initially Null
  if Event.InternalSession.NullValue = nvNull then
    Items := Null
  else
    Items := nvUnassigned;
  // Determine all the items of the message
  with Event.Query do
  begin
    Clear;
    SQL.Add('begin');
    SQL.Add('  :item_type := sys.dbms_pipe.next_item_type;');
    SQL.Add('  if :item_type = 6 then');
    SQL.Add('    sys.dbms_pipe.unpack_message(:number_item);');
    SQL.Add('  end if;');
    SQL.Add('  if :item_type = 9 then');
    SQL.Add('    sys.dbms_pipe.unpack_message(:varchar2_item);');
    SQL.Add('  end if;');
    SQL.Add('  if :item_type = 11 then');
    SQL.Add('    sys.dbms_pipe.unpack_message_rowid(:varchar2_item);');
    SQL.Add('  end if;');
    SQL.Add('  if :item_type = 23 then');
    SQL.Add('    sys.dbms_pipe.unpack_message_raw(:varchar2_item);');
    SQL.Add('  end if;');
    SQL.Add('  if :item_type = 12 then');
    SQL.Add('    sys.dbms_pipe.unpack_message(:date_item);');
    SQL.Add('  end if;');
    SQL.Add('end;');
    DeclareVariable('item_type', otInteger);
    DeclareVariable('number_item', otFloat);
    DeclareVariable('varchar2_item', otString);
    DeclareVariable('date_item', otDate);
    ItemIndex := 0;
    repeat
      Ready := False;
      try
        Execute;
        ItemType := GetVariable('item_type');
        case ItemType of
           niNumber: Item  := GetVariable('number_item');
         niVarchar2,
              niRaw,
            niRowid: Item  := GetVariable('varchar2_item');
             niDate: Item  := GetVariable('date_item');
        else
          Ready := True;
        end;
      except
        on E: Exception do
        begin
          DoOnError(E);
          Ready := True;
        end;
      end;
      if not Ready then
      begin
        if ItemIndex = 0 then
          Items := VarArrayCreate([0, 0], varVariant)
        else
          VarArrayRedim(Items, ItemIndex);
        Items[ItemIndex] := Item;
        Inc(ItemIndex);
      end;
    until Ready;
  end;
  // Pass this info to the thread, which will trigger a synchronized event
  p_ObjectName := Event.ObjectByIndex(0);
  p_Info := Items;
  DoOnEvent;
end;

procedure TEventThread.PipeLoop;
var Status: Integer;
    Ready: Boolean;
begin
  try
    repeat
      Ready := False;
      with Event.Query do
      begin
        Clear;
        DeclareVariable('status', otInteger);
        DeclareVariable('pipename', otString);
        SetVariable('pipename', Event.ObjectNames);
        SQL.Add('begin');
        if Event.TimeOut <= 0 then
          SQL.Add('  :status := sys.dbms_pipe.receive_message(:pipename);')
        else begin
          SQL.Add('  :status := sys.dbms_pipe.receive_message(:pipename, :timeout);');
          DeclareVariable('timeout', otString);
          SetVariable('timeout', Event.TimeOut);
        end;
        SQL.Add('end;');
        Execute;
        if Terminated then Ready := True;
        if not Ready then
        try
          Status := GetVariable('status');
          case Status of
            psInterrupt: Ready := True;
              psSuccess: PipeDoOnEvent;
              psTimeOut: Ready := not DoOnTimeOut;
          end;
        except
          on E: Exception do DoOnError(E);
        end;
      end;
    until Ready;
  except
    on E: Exception do DoOnError(E);
  end;
  // Signal to the main thread that we're done
  Event.CriticalSection.Leave;
  Event.FStarted := False;
end;

procedure TEventThread.AlertDoOnEvent;
var Items: Variant;
    AlertName: string;
begin
  // Create an Items array of one element
  Items := VarArrayCreate([0, 0], VarVariant);
  Items[0] := Event.Query.GetVariable('message');
  // Determine the alert name
  AlertName := Event.Query.GetVariable('name');
  // Pass this info to the thread, which will trigger a synchronized event
  p_ObjectName := AlertName;
  p_Info       := Items;
  DoOnEvent;
end;

procedure TEventThread.AlertLoop;
var i, Status: Integer;
    Ready: Boolean;
    s: string;
begin
  try
    // Determine a unique alert name that signals this thread to stop
    if UniqueSessionId = '' then with Event.Query do
    begin
      Clear;
      SQL.Add('begin');
      SQL.Add('  :unique_session_id := sys.dbms_session.unique_session_id;');
      SQL.Add('end;');
      DeclareVariable('unique_session_id', otString);
      Execute;
      UniqueSessionId := UpperCase(GetVariable('unique_session_id'));
    end;
    // Register the interst in the alert(s)
    with Event.Query do
    begin
      Clear;
      SQL.Add('begin');
      for i := 0 to Event.ObjectCount - 1 do
        SQL.Add('  sys.dbms_alert.register(''' + Event.ObjectByIndex(i) + ''');');
      SQL.Add('  sys.dbms_alert.register(''' + UniqueSessionId + ''');');
      SQL.Add('end;');
      Execute;
    end;
    repeat
      Ready := False;
      with Event.Query do
      begin
        Clear;
        DeclareVariable('status', otInteger);
        DeclareVariable('name', otString);
        DeclareVariable('message', otString);
        SQL.Add('begin');
        s := '  sys.dbms_alert.waitany(:name, :message, :status';
        // Choose between timout or no timeout parameter
        if Event.TimeOut <= 0 then
          s := s + ');'
        else begin
          s := s + ', :timeout);';
          DeclareVariable('timeout', otString);
          SetVariable('timeout', Event.TimeOut);
        end;
        SQL.Add(s);
        SQL.Add('end;');
        Execute;
        if Terminated then Ready := True;
        if not Ready then
        try
          Status := GetVariable('status');
          case Status of
            asSuccess: AlertDoOnEvent;
            asTimeOut: Ready := not DoOnTimeOut;
          end;
        except
          on E: Exception do DoOnError(E);
        end;
      end;
    until Ready;
    // Unregister the interst in the alert(s)
    with Event.Query do
    begin
      Clear;
      SQL.Add('begin');
      for i := 0 to Event.ObjectCount - 1 do
        SQL.Add('  sys.dbms_alert.remove(''' + Event.ObjectByIndex(i) + ''');');
      SQL.Add('  sys.dbms_alert.remove(''' + UniqueSessionId + ''');');
      SQL.Add('end;');
      Execute;
    end;
  except
    on E: Exception do DoOnError(E);
  end;
  // Signal to the main thread that we're done
  Event.CriticalSection.Leave;
  Event.FStarted := False;
end;

// TOracleEvent component

constructor TOracleEvent.Create(AOwner: TComponent);
begin
  inherited;
  Query := TOracleQuery.Create(nil);
  Query.Name := 'EventQuery';
  Query.ParentMonID := MonID;
  FObjectNames := '';
  FSession := nil;
  FObjectType := otPipe;
  FTimeOut := 0;
  FStarted := False;
  FSynchronized := True;
  FKeepConnection := False;
  CriticalSection := TOracleCriticalSection.Create;
end;

destructor TOracleEvent.Destroy;
begin
  Stop;
  Query.Free;
  RemoveFromList;
  if FInternalSession <> nil then FInternalSession.Free;
  if StopSession <> nil then StopSession.Free;
  if StopQuery <> nil then StopQuery.Free;
  CriticalSection.Free;
  SendToMonitor(False, True);
  inherited;
end;

// Add an Event to the Event list of the session
procedure TOracleEvent.AddToList;
begin
  if InternalSession <> nil then InternalSession.Events.Add(Self);
end;

// Remove an Event from the Event list of the session
procedure TOracleEvent.RemoveFromList;
begin
  if InternalSession <> nil then InternalSession.Events.Remove(Self);
end;

procedure TOracleEvent.Start;
var i: Integer;
begin
  // Some basic checks
  CheckStarted;
  if Session = nil then
    raise Exception.Create('TOracleEvent: Session undefined');
  if Trim(ObjectNames) = '' then
    raise Exception.Create('TOracleEvent: ObjectNames undefined');
  if (ObjectType = otPipe) and (ObjectCount > 1) then
    raise Exception.Create('TOracleEvent: Only one ObjectName allowed for a Pipe');
  for i := 0 to ObjectCount - 1 do if ObjectByIndex(i) = '' then
    raise Exception.Create('TOracleEvent: ObjectName cannot be empty');
  // Duplicate the session
  if InternalSession = nil then
  begin
    FInternalSession := TOracleSession.Create(nil);
    InternalSession.Name := Name + '_DuplicateSession';
    AddToList;
  end;
  if not InternalSession.Connected then
  begin
    InternalSession.LogonUsername     := Session.LogonUsername;
    InternalSession.LogonPassword     := Session.LogonPassword;
    InternalSession.LogonDatabase     := Session.LogonDatabase;
    InternalSession.SQLTrace          := Session.SQLTrace;
    InternalSession.NullValue         := Session.NullValue;
    InternalSession.BytesPerCharacter := Session.BytesPerCharacter;
    InternalSession.Preferences       := Session.Preferences;
  end;
  // Fire the OnStart event
  if Assigned(FOnStart) then FOnStart(Self);
  // Logon
  InternalSession.Connected := True;
  SendToMonitor(True, True);
  // Setup the query that is going to do the work
  Query.Session := InternalSession;
  // Start the event
  FStarted := True;
  Thread := TEventThread.Create(Self);
end;

procedure TOracleEvent.CheckStarted;
begin
  if Started then
    raise Exception.Create('Operation not allowed on a started OracleEvent');
end;

procedure TOracleEvent.SetSession(Value: TOracleSession);
begin
  CheckStarted;
  FSession := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

procedure TOracleEvent.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  if (Operation = opRemove) and (AComponent = FSession) then
  begin
    FSession := nil;
  end;
end;

procedure TOracleEvent.SetObjectType(Value: TEventObjectType);
begin
  CheckStarted;
  FObjectType := Value;
end;

procedure TOracleEvent.SetObjectNames(Value: string);
begin
  CheckStarted;
  FObjectNames := Value;
end;

function TOracleEvent.ObjectCount: Integer;
var i: Integer;
begin
  if Trim(ObjectNames) = '' then Result := 0 else Result := 1;
  for i := 1 to Length(ObjectNames) do if ObjectNames[i] = ';' then Inc(Result);
end;

function TOracleEvent.ObjectByIndex(Index: Integer): string;
var p, i1, i2: Integer;
begin
  p := 0;
  i1 := 0;
  while p < Index do
  begin
    Inc(i1);
    while (i1 <= Length(ObjectNames)) and (ObjectNames[i1] <> ';') do Inc(i1);
    Inc(p);
  end;
  Inc(i1);
  i2 := i1;
  while (i2 <= Length(ObjectNames)) and (ObjectNames[i2] <> ';') do Inc(i2);
  Result := Trim(Copy(ObjectNames, i1, i2 - i1));
end;

procedure TOracleEvent.Stop;
begin
  // If we're not started, we can't stop
  if not Started then Exit;
  Thread.Terminate;
  // Create another session and signal the thread to stop
  if StopSession = nil then
  begin
    StopSession := TOracleSession.Create(nil);
    StopSession.Name := Name + '_StopSession';
    StopSession.LogonUsername := InternalSession.LogonUsername;
    StopSession.LogonPassword := InternalSession.LogonPassword;
    StopSession.LogonDatabase := InternalSession.LogonDatabase;
  end;
  StopSession.Connected := True;
  if StopQuery = nil then
  begin
    StopQuery := TOracleQuery.Create(nil);
    StopQuery.Name := 'StopQuery';
    StopQuery.Session := StopSession;
  end;
  with StopQuery do
  begin
    Clear;
    SQL.Add('begin');
    if ObjectType = otPipe then
    begin
      DeclareVariable('status', otInteger);
      SQL.Add('  :status := sys.dbms_pipe.send_message(''' + ObjectNames + ''');')
    end else begin
      SQL.Add('  sys.dbms_alert.signal(''' + TEventThread(Thread).UniqueSessionId + ''', Null);');
      SQL.Add('  commit;');
    end;
    SQL.Add('end;');
    Execute;
  end;
  // Wait until the thread is done
  // WaitForSingleObject(Mutex, 10000);
  // ReleaseMutex(Mutex);
  CriticalSection.Enter;
  CriticalSection.Leave;
  // Fire the OnStop event
  if Assigned(OnStop) then OnStop(Self);
  // LogOff the duplicate sessions
  if not KeepConnection then
  begin
    StopSession.LogOff;
    InternalSession.LogOff;
  end;
end;

procedure TOracleEvent.LogOff;
begin
  CheckStarted;
  if InternalSession <> nil then InternalSession.LogOff;
  if StopSession <> nil then StopSession.LogOff;
end;

// Monitor functions

function TOracleEvent.GetMonID: Integer;
begin
  if FMonID = 0 then FMonID := GetNewMonID;
  Result := FMonID;
end;

procedure TOracleEvent.SendToMonitor(Creation, Signal: Boolean);
begin
  if ((Creation xor SentToMonitor) or not Signal) and MonitorListening then
  begin
    SentToMonitor := Creation;
    AddMonObject(Creation, ckEvent, MonID, 0, Self, InternalSession, nil, Signal);
  end;
end;

// Session pool entry object

destructor TOracleSessionPoolEntry.Destroy;
begin
  try
    Release;
  except
  end;
  if PooledSession <> nil then
  begin
    try
      PooledSession.LogOff;
    except
    end;
    PooledSession.Free;
  end;
  inherited;
end;

function TOracleSessionPoolEntry.Reserved: Boolean;
begin
  Result := ReservingSession <> nil;
end;

procedure TOracleSessionPoolEntry.Reserve(ASession: TOracleSession);
begin
  if ReservingSession <> nil then
    raise Exception.Create('Pool entry already reserved')
  else begin
    if PooledSession = nil then
    begin
      PooledSession := TOracleSession.Create(nil);
      PooledSession.LogonUsername     := ASession.LogonUsername;
      PooledSession.LogonPassword     := ASession.LogonPassword;
      PooledSession.LogonDatabase     := ASession.LogonDatabase;
      PooledSession.Cursor            := ASession.Cursor;
      PooledSession.BytesPerCharacter := ASession.BytesPerCharacter;
      PooledSession.IsolationLevel    := ASession.IsolationLevel;
      PooledSession.OptimizerGoal     := ASession.OptimizerGoal;
      PooledSession.Preferences       := ASession.Preferences;
      PooledSession.SQLTrace          := ASession.SQLTrace;
      PooledSession.ThreadSafe        := ASession.ThreadSafe;
      try
        PooledSession.LogOn;
      except
        try
          PooledSession.Free;
        except
        end;
        PooledSession := nil;
        raise;
      end;
    end;
    PooledSession.Share(ASession);
    ReservingSession := ASession;
  end;
end;

procedure TOracleSessionPoolEntry.Release;
begin
  if ReservingSession <> nil then
  begin
    try
      ReservingSession.LogOff;
    finally
      ReservingSession := nil;
    end;
  end;
end;

// Session pool object
constructor TOracleSessionPool.Create;
begin
  inherited;
  FList := TThreadList.Create;
  FLockedList := nil;
end;

destructor TOracleSessionPool.Destroy;
var i: Integer;
begin
  Lock;
  try
    for i := 0 to Count - 1 do
    try
      Entries[i].Free;
    except
    end;
  finally
    Unlock;
  end;
  FList.Free;
  inherited;
end;

function TOracleSessionPool.GetCount: Integer;
begin
  if FLockedList <> nil then
    Result := FLockedList.Count
  else begin
    Lock;
    Result := FLockedList.Count;
    Unlock;
  end;
end;

function TOracleSessionPool.GetEntry(Index: Integer): TOracleSessionPoolEntry;
begin
  if FLockedList <> nil then
    Result := FLockedList[Index]
  else begin
    Lock;
    Result := FLockedList[Index];
    Unlock;
  end;
end;

procedure TOracleSessionPool.Lock;
begin
  FLockedList := FList.LockList;
end;

procedure TOracleSessionPool.Unlock;
begin
  FLockedList := nil;
  FList.UnLockList;
end;

procedure TOracleSessionPool.Reserve(ASession: TOracleSession);
var i, ei: Integer;
    Entry, NewEntry: TOracleSessionPoolEntry;
begin
  Lock;
  try
    NewEntry := nil;
    ei := -1;
    for i := 0 to Count - 1 do
    begin
      Entry := Entries[i];
      if (not Entry.Reserved) and (Entry.PooledSession <> nil) and
         (AnsiStrIComp(PChar(Entry.PooledSession.LogonUsername), PChar(ASession.LogonUsername)) = 0) and
         (AnsiStrIComp(PChar(Entry.PooledSession.LogonDatabase), PChar(ASession.LogonDatabase)) = 0) then
      begin
        NewEntry := Entry;
        ei := i;
        Break;
      end;
    end;
    if NewEntry = nil then
    begin
      NewEntry := TOracleSessionPoolEntry.Create;
      ei := FLockedList.Add(NewEntry);
    end;
    try
      NewEntry.Reserve(ASession);
    except
      FLockedList.Delete(ei);
      NewEntry.Free;
      raise;
    end;
  finally
    Unlock;
  end;
end;

function TOracleSessionPool.Release(ASession: TOracleSession): Boolean;
var i: Integer;
begin
  Result := False;
  if ASession = nil then Exit;
  Lock;
  try
    for i := 0 to Count - 1 do
    begin
      if Entries[i].ReservingSession = ASession then
      begin
        Entries[i].Release;
        Result := True;
      end;
    end;
  finally
    Unlock;
  end;
end;

procedure TOracleSessionPool.Compress;
var i: Integer;
begin
  Lock;
  try
    for i := Count - 1 downto 0 do if not Entries[i].Reserved then
    begin
      Entries[i].Free;
      FLockedList.Delete(i);
    end;
  finally
    Unlock;
  end;
end;


// TProcedureDescription Object

function TProcedureParameter.TypeString: string;
var s, s2: string;
begin
  case DataType of
      1 : s := 'VARCHAR2';
      2 : s := 'NUMBER';
      3 : s := 'BINARY_INTEGER';
      8 : s := 'LONG';
     11 : s := 'ROWID';
     12 : s := 'DATE';
     23 : s := 'RAW';
     24 : s := 'LONG RAW';
     96 : s := 'CHAR';
    102,
    116 : s := 'REF CURSOR';
    106 : s := 'MLSLABEL';
    250 : s := 'RECORD';
    251 : s := 'TABLE';
    252 : s := 'BOOLEAN';
    121 : s := 'OBJECT';
    123 : s := 'OBJECT';
    108,
    110 : begin
            if TypeName = '' then
              s := 'OBJECT'
            else begin
              s := TypeName;
              if Trim(TypeSchema) <> '' then s := TypeSchema + '.' + s;
              if Trim(SubName) <> '' then s := s + '.' + SubName;
            end;
            if DataType = 110 then s := 'REF ' + s;
          end;
    112 : s := 'CLOB';
    113 : s := 'BLOB';
    114 : s := 'BFILE';
  else
    s := 'UNKNOWN TYPE ' + IntToStr(DataType);
  end;
  if IsTable then s := 'TABLE OF ' + s;
  s2 := '';
  if (DataType in [1, 23, 96]) and (DataSize <> 0) then s2 := IntToStr(DataSize);
  if DataType = 2 then
  begin
    if (DataPrec  <> 0) and (DataPrec <> 38) then s2 := IntToStr(DataPrec);
    if DataScale <> 0 then s2 := s2 + ',' + IntToStr(DataScale);
  end;
  if s2 <> '' then s := s + '(' + s2 + ')';
  Result := s;
end;

procedure TProcedureDescription.DescribeProcOCI8(ProcParam: OCIParam;
  IsFunction: Boolean; OverloadIndex: Integer);
var Par:TProcedureParameter;
    rc: Integer;
    cbufl: sb4;
    cbufp: PChar;
    cbuf: array[0..30] of Char;
    ParamParam: OCIParam;
    ListParam, TableListParam: PPtrArray;
    ParamCount: ub4;
    ParamPos: Integer;
    lDataType: OCITypeCode;
    lPrecision: ub4;
    lScale: sb4;
    lDataSize: ub4;
    lHasDefault: ub4;
    lMode: ub4;
begin
  // Get the parameter list
  OCICall(OCIAttrGet(ProcParam, OCI_DTYPE_PARAM, ListParam, nil,
                     OCI_ATTR_LIST_ARGUMENTS, Session.errhp));
  // Get the number of parameters in the list
  ParamCount := 0;
  OCICall(OCIAttrGet(ListParam, OCI_DTYPE_PARAM, ParamCount, nil,
                     OCI_ATTR_NUM_PARAMS, Session.errhp));
  ParamPos := 1;
  if IsFunction then
  begin
    ParamPos := 0;
    Dec(ParamCount);
  end;
  while ParamPos <= ParamCount do
  begin
    Par := TProcedureParameter.Create(Parameters);
    // Get the parameter for for this parameter
    OCICall(OCIParamGet(ListParam, OCI_DTYPE_PARAM, Session.errhp,
                        ParamParam, ParamPos));
    // Data type
    lDataType := 0;
    OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lDataType, nil,
                       OCI_ATTR_DATA_TYPE, Session.errhp));
    Par.IsTable := (lDataType = 251);
    // The next section is only valid for non-result arguments
    if (not IsFunction) or (ParamPos > 0) then
    begin
      // Name
      cbufl := 30;
      OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, cbufp, @cbufl,
                         OCI_ATTR_NAME, Session.errhp));
      Move(cbufp^, cbuf[0], cbufl);
      cbuf[cbufl] := #0;
      Par.Name := cbuf;
      // Mode
      lMode := 0;
      OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lMode, nil,
              OCI_ATTR_IOMODE, Session.errhp));
      case lMode of
         OCI_TYPEPARAM_IN: Par.Mode := pmIn;
        OCI_TYPEPARAM_OUT: Par.Mode := pmOut;
      else
        Par.Mode := pmInOut;
      end;
      // Does this parameter have a default?
      lHasDefault := 0;
      OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lHasDefault,
                         nil, OCI_ATTR_HAS_DEFAULT, Session.errhp));
      Par.HasDefault := (lHasDefault <> 0);
    end else begin
      Par.Mode := pmOut;
      Par.Name := 'RESULT';
      Par.HasDefault := False;
    end;
    // For tables, we need to describe the next level
    if Par.IsTable then
    begin
      // Get the parameter list for for this table
      OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, TableListParam,
                         nil, OCI_ATTR_LIST_ARGUMENTS, Session.errhp));
      // get the first parameter
      OCICall(OCIParamGet(TableListParam, OCI_DTYPE_PARAM,
                          Session.errhp, ParamParam, 1));
      // Redo the datatype
      lDataType := 0;
      OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lDataType, nil,
                         OCI_ATTR_DATA_TYPE, Session.errhp));
      // We will continue the description with this parameter
    end;
    // For datatypes with a size, determine the Data size
    lDataSize := 0;
    if lDataType in [otDBChar, otRaw, otVarchar, otVarchar2] then
      OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lDataSize, nil,
                         OCI_ATTR_DATA_SIZE, Session.errhp));
    // For numbers, determine scale and precision + float/integer
    if lDataType = otNumber then
    begin
      // Precision
      lPrecision := 0;
      rc := OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lPrecision, nil,
                       OCI_ATTR_PRECISION, Session.secerrhp);
      if rc <> OCI_SUCCESS then lPrecision := 0;
      // Scale
      lScale := 0;
      rc := OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lScale, nil,
                       OCI_ATTR_SCALE, Session.secerrhp);
      if rc <> OCI_SUCCESS then lScale := 0;
    end;
    // For objects and references, determine the object name
    if lDataType in [otObject, otReference] then
    begin
      // Schema Name
      cbufl := 30;
      OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, cbufp, @cbufl,
                         OCI_ATTR_SCHEMA_NAME, Session.errhp));
      Move(cbufp^, cbuf[0], cbufl);
      cbuf[cbufl] := #0;
      Par.TypeSchema := cbuf;
      if AnsiUpperCase(Session.LogonUserName) = AnsiUpperCase(Par.TypeSchema) then
        Par.TypeSchema := '';
      // Type Name
      cbufl := 30;
      OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, cbufp, @cbufl,
                         OCI_ATTR_TYPE_NAME, Session.errhp));
      Move(cbufp^, cbuf[0], cbufl);
      cbuf[cbufl] := #0;
      Par.TypeName := cbuf;
      // Sub Name
      cbufl := 30;
      OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, cbufp, @cbufl,
                         OCI_ATTR_SUB_NAME, Session.errhp));
      Move(cbufp^, cbuf[0], cbufl);
      cbuf[cbufl] := #0;
      Par.SubName := cbuf;
    end;
    Par.Position      := ParamPos;
    Par.OverloadIndex := OverloadIndex;
    Par.DataType      := lDataType;
    Par.DataSize      := lDataSize;
    Par.DataPrec      := lPrecision;
    Par.DataScale     := lScale;
    Inc(ParamPos);
  end;
end;

procedure TProcedureDescription.OCICall(Err: Integer);
begin
  case Err of
    OCI_ERROR: RaiseOracleError(Session, integer(Session.errhp));
  end;
end;

constructor TProcedureDescription.Create(ASession: TOracleSession;
  const ObjectOwner, ObjectName, SubName : string);
type Targnm = array[0..10000, 0..29] of Char;
var Par:TProcedureParameter;
    i: Integer;
    ProcName, PkgName: string;
    // OCI7
    ovrld, pos, level: ^Tub2Array;
    argnm: ^Targnm;
    arnlen, dtype: ^Tub2Array;
    defsup, mode: ^Tub1Array;
    dtsiz: ^Tub4Array;
    prec, scale: ^Tsb2Array;
    radix: ^Tub1Array;
    spare: ^Tub4Array;
    arrsiz: ub4;
    UsedSize: Integer;
    // OCI8
    cbufl: sb4;
    cbufp: PChar;
    cbuf: array[0..30] of Char;
    PkgParam, ProcParam: OCIParam;
    ProcListParam: PPtrArray;
    ProcCount: ub4;
    ProcPos: Integer;
    PType: ub4;
    IsFunction: Boolean;
begin
  Parameters := TCollection.Create(TProcedureParameter);
  Overloadings := 0;
  Session := ASession;
  if ASession.UseOCI80 then
  begin
    // Allocate the describe handle
    OCIHandleAlloc(ASession.envhp, Desc, OCI_HTYPE_DESCRIBE, 0, nil);
    // Determine the procedure name. If it's a packaged procedure, we need to
    // iterate the package subprograms
    ProcName := ObjectOwner + '.' + ObjectName;
    PkgName := '';
    if SubName <> '' then
    begin
      PkgName := ProcName;
      ProcName := SubName;
      // Describe package to get list of sub programs
      OCICall(OCIDescribeAny(Session.svchp, Session.errhp,
                             PChar(PkgName), Length(PkgName),
                             OCI_OTYPE_NAME, 0, OCI_PTYPE_PKG, Desc));
      // Get the parameter handle for the package
      OCICall(OCIAttrGet(Desc, OCI_HTYPE_DESCRIBE, PkgParam, nil,
                         OCI_ATTR_PARAM, Session.errhp));
      // Get the subprogram list
      OCICall(OCIAttrGet(PkgParam, OCI_DTYPE_PARAM, ProcListParam, nil,
                         OCI_ATTR_LIST_SUBPROGRAMS, Session.errhp));
      // Get the number of subprograms in the list
      ProcCount := 0;
      OCICall(OCIAttrGet(ProcListParam, OCI_DTYPE_PARAM, ProcCount, nil,
                         OCI_ATTR_NUM_PARAMS, Session.errhp));
      // Iterate the subprograms
      for ProcPos := 0 to ProcCount - 1 do
      begin
        // Get the parameter for for this subprogram
        OCICall(OCIParamGet(ProcListParam, OCI_DTYPE_PARAM, Session.errhp,
                            ProcParam, ProcPos));
        // Get the name of this subprogram
        cbufl := 30;
        OCICall(OCIAttrGet(ProcParam, OCI_DTYPE_PARAM, cbufp, @cbufl,
                           OCI_ATTR_NAME, Session.errhp));
        Move(cbufp^, cbuf[0], cbufl);
        cbuf[cbufl] := #0;
        // If this is the procedure we're describing, do it
        if AnsiUpperCase(cbuf) = AnsiUpperCase(ProcName) then
        begin
          // Is it a function?
          PType := 0;
          OCICall(OCIAttrGet(ProcParam, OCI_DTYPE_PARAM, PType, nil,
                             OCI_ATTR_PTYPE, Session.errhp));
          IsFunction := (PType = OCI_PTYPE_FUNC);
          // Describe it
          Inc(Overloadings);
          DescribeProcOCI8(ProcParam, IsFunction, Overloadings);
        end;
      end;
      if Overloadings = 0 then
        raise Exception.Create('Procedure ' + ProcName + ' within package ' + ObjectName + ' does not exist');
      if Overloadings = 1 then
      begin
        Overloadings := 0;
        for i := 0 to Parameters.Count - 1 do
          TProcedureParameter(Parameters.Items[i]).OverloadIndex := 0;
      end;
    end else begin
      // Describe the program unit to find out if it's a function or procedure
      OCICall(OCIDescribeAny(Session.svchp, Session.errhp,
                             PChar(ProcName), Length(ProcName),
                             OCI_OTYPE_NAME, 0, OCI_PTYPE_UNK, Desc));
      // Get the parameter handle for the program unit
      OCICall(OCIAttrGet(Desc, OCI_HTYPE_DESCRIBE, ProcParam, nil,
                         OCI_ATTR_PARAM, Session.errhp));
      // Determine the type
      PType := 0;
      OCICall(OCIAttrGet(ProcParam, OCI_DTYPE_PARAM, PType, nil,
                         OCI_ATTR_PTYPE, Session.errhp));
      IsFunction := (PType = OCI_PTYPE_FUNC);
      // Describe the procedure or function
      if not IsFunction then
        OCICall(OCIDescribeAny(Session.svchp, Session.errhp,
                               PChar(ProcName), Length(ProcName),
                               OCI_OTYPE_NAME, 0, OCI_PTYPE_PROC, Desc))
      else
        OCICall(OCIDescribeAny(Session.svchp, Session.errhp,
                               PChar(ProcName), Length(ProcName),
                               OCI_OTYPE_NAME, 0, OCI_PTYPE_FUNC, Desc));
      // Get the parameter handle for the procedure
      OCICall(OCIAttrGet(Desc, OCI_HTYPE_DESCRIBE, ProcParam, nil,
                         OCI_ATTR_PARAM, Session.errhp));
      // Describe it
      DescribeProcOCI8(ProcParam, IsFunction, 0);
    end;
  end else begin
    ProcName := ObjectOwner + '.' + ObjectName;
    if SubName <> '' then ProcName := ProcName + '.' + SubName;
    UsedSize := 1000;
    arrsiz := UsedSize;
    GetMem(ovrld, UsedSize * SizeOf(ub2));
    GetMem(pos,   UsedSize * SizeOf(ub2));
    GetMem(level, UsedSize * SizeOf(ub2));
    GetMem(argnm, UsedSize * 30);
    GetMem(arnlen, UsedSize * SizeOf(ub2));
    GetMem(dtype, UsedSize * SizeOf(ub2));
    GetMem(defsup, UsedSize * SizeOf(ub1));
    GetMem(mode, UsedSize * SizeOf(ub1));
    GetMem(dtsiz, UsedSize * SizeOf(ub4));
    GetMem(prec, UsedSize * SizeOf(sb2));
    GetMem(scale, UsedSize * SizeOf(sb2));
    GetMem(radix, UsedSize * SizeOf(ub1));
    GetMem(spare, UsedSize * SizeOf(ub4));
    ASession.Acquire(True);
    odessp(ASession.LDA, PChar(ProcName), -1, nil, 0, nil, 0, ovrld^, pos^, level^,
      argnm^, arnlen^, dtype^, defsup^, mode^, dtsiz^, prec^, scale^, radix^,
      spare^, arrsiz);
    if ASession.ReturnCode = 0 then
    begin
      i := 0;
      while i < arrsiz do
      begin
        if ovrld^[i] > Overloadings then Overloadings := ovrld^[i];
        if (level^[i] = 0) and (dtype^[i] <> 0) then
        begin
          Par := TProcedureParameter.Create(Parameters);
          SetLength(Par.Name, arnlen^[i]);
          if arnlen^[i] > 0 then Move(argnm^[i, 0], Par.Name[1], arnlen^[i]);
          Par.OverloadIndex := ovrld^[i];
          Par.Position      := pos^[i];
          Par.IsTable       := (dtype^[i] = 251);
          Par.HasDefault    := (defsup^[i] <> 0);
          case mode^[i] of
            0: Par.Mode := pmIn;
            1: Par.Mode := pmOut;
          else
            Par.Mode := pmInOut;
          end;
          if Par.IsTable then Inc(i);
          Par.DataType      := dtype^[i];
          Par.DataSize      := dtsiz^[i];
          Par.DataPrec      := prec^[i];
          Par.DataScale     := scale^[i];
        end;
        Inc(i);
      end;
    end;
    FreeMem(ovrld, UsedSize * SizeOf(ub2));
    FreeMem(pos,   UsedSize * SizeOf(ub2));
    FreeMem(level, UsedSize * SizeOf(ub2));
    FreeMem(argnm, UsedSize * 30);
    FreeMem(arnlen, UsedSize * SizeOf(ub2));
    FreeMem(dtype, UsedSize * SizeOf(ub2));
    FreeMem(defsup, UsedSize * SizeOf(ub1));
    FreeMem(mode, UsedSize * SizeOf(ub1));
    FreeMem(dtsiz, UsedSize * SizeOf(ub4));
    FreeMem(prec, UsedSize * SizeOf(sb2));
    FreeMem(scale, UsedSize * SizeOf(sb2));
    FreeMem(radix, UsedSize * SizeOf(ub1));
    FreeMem(spare, UsedSize * SizeOf(ub4));
    if (ASession.ReturnCode <> 0) then RaiseOracleError(ASession, ASession.ErrorHandle);
    ASession.Release(True);
  end;
end;

destructor TProcedureDescription.Destroy;
begin
  Parameters.Free;
  if Desc <> nil then OCIHandleFree(Desc, OCI_HTYPE_DESCRIBE);
end;

function TProcedureDescription.ParameterCount(OverloadIndex: Integer): Integer;
var i: Integer;
    Par: TProcedureParameter;
begin
  Result := 0;
  for i := 0 to Parameters.Count - 1 do
  begin
    Par := Parameters.Items[i] as TProcedureParameter;
    if (Par.OverloadIndex = OverloadIndex) and (Par.Position > 0) then Inc(Result);
  end;
end;

function TProcedureDescription.ReturnType(OverloadIndex: Integer): TProcedureParameter;
begin
  Result := Parameter(OverloadIndex, 0);
end;

function TProcedureDescription.Parameter(OverloadIndex,
  ParameterIndex: Integer): TProcedureParameter;
var i: Integer;
    Par: TProcedureParameter;
begin
  for i := 0 to Parameters.Count - 1 do
  begin
    Par := Parameters.Items[i] as TProcedureParameter;
    if (Par.OverloadIndex = OverloadIndex) and (Par.Position = ParameterIndex) then
    begin
      Result := Par;
      Exit;
    end;
  end;
  Result := nil;
end;

// TPackageDescription object

constructor TPackageDescription.Create(ASession: TOracleSession;
  const ObjectOwner, ObjectName: string);
var PkgName: string;
    cbufl: sb4;
    cbufp: PChar;
    cbuf: array[0..30] of Char;
    PkgParam, ProcParam: OCIParam;
    ProcListParam: PPtrArray;
    ProcCount: ub4;
    ProcPos: Integer;
    PType: ub4;
    SubProg: TPackageSubprogram;
begin
  Subprograms := TCollection.Create(TPackageSubprogram);
  Session := ASession;
  if Session.UseOCI80 then
  begin
    OCIHandleAlloc(ASession.envhp, Desc, OCI_HTYPE_DESCRIBE, 0, nil);
    // Describe package to get list of sub programs
    PkgName := ObjectName;
    if ObjectOwner <> '' then PkgName := ObjectOwner + '.' + PkgName;
    OCICall(OCIDescribeAny(Session.svchp, Session.errhp,
                           PChar(PkgName), Length(PkgName),
                           OCI_OTYPE_NAME, 0, OCI_PTYPE_PKG, Desc));
    // Get the parameter handle for the package
    OCICall(OCIAttrGet(Desc, OCI_HTYPE_DESCRIBE, PkgParam, nil,
                       OCI_ATTR_PARAM, Session.errhp));
    // Get the subprogram list
    OCICall(OCIAttrGet(PkgParam, OCI_DTYPE_PARAM, ProcListParam, nil,
                       OCI_ATTR_LIST_SUBPROGRAMS, Session.errhp));
    // Get the number of subprograms in the list
    ProcCount := 0;
    OCICall(OCIAttrGet(ProcListParam, OCI_DTYPE_PARAM, ProcCount, nil,
                       OCI_ATTR_NUM_PARAMS, Session.errhp));
    // Iterate the subprograms
    for ProcPos := 0 to ProcCount - 1 do
    begin
      // Get the parameter for for this subprogram
      OCICall(OCIParamGet(ProcListParam, OCI_DTYPE_PARAM, Session.errhp,
                          ProcParam, ProcPos));
      // Get the name of this subprogram
      cbufl := 30;
      OCICall(OCIAttrGet(ProcParam, OCI_DTYPE_PARAM, cbufp, @cbufl,
                         OCI_ATTR_NAME, Session.errhp));
      Move(cbufp^, cbuf[0], cbufl);
      cbuf[cbufl] := #0;
      // Have we already got it?
      if FindSubprogram(cbuf) < 0 then
      begin
        SubProg := TPackageSubprogram.Create(Subprograms);
        SubProg.SubprogramName := cbuf;
        // Is it a function?
        PType := 0;
        OCICall(OCIAttrGet(ProcParam, OCI_DTYPE_PARAM, PType, nil,
                           OCI_ATTR_PTYPE, Session.errhp));
        if PType = OCI_PTYPE_FUNC then
          SubProg.SubprogramType := stFunction
        else
          SubProg.SubprogramType := stProcedure
      end;
    end;
  end;
end;

destructor TPackageDescription.Destroy;
begin
  Subprograms.Free;
  if Desc <> nil then OCIHandleFree(Desc, OCI_HTYPE_DESCRIBE);
end;

procedure TPackageDescription.OCICall(Err: Integer);
begin
  case Err of
    OCI_ERROR: RaiseOracleError(Session, integer(Session.errhp));
  end;
end;

function TPackageDescription.SubprogramCount: Integer;
begin
  Result := Subprograms.Count;
end;

function TPackageDescription.Subprogram(Index: Integer): TPackageSubprogram;
begin
  Result := Subprograms.Items[Index] as TPackageSubprogram;
end;

function TPackageDescription.FindSubprogram(const AName: string): Integer;
var i: Integer;
begin
  Result := -1;
  for i := 0 to SubprogramCount - 1 do
  begin
    if AnsiUpperCase(AName) = AnsiUpperCase(Subprogram(i).SubprogramName) then
    begin
      Result := i;
      Break;
    end;
  end;
end;

// TLOBLocator object

constructor TLOBLocator.Create(ASession: TOracleSession; ALOBType: Integer);
begin
  inherited Create;
  CheckNet8(ASession, 'A TLOBLocator instance', False);
  ASession.LOBLocators.Add(Self);
  ParentMonID := 0;
  FPosition := 0;
  FBuffering := False;
  FLOB := nil;
  PLOB := @FLOB;
  NullStruct := nil;
  errhp := nil;
  Session := ASession;
  FLOBType := ALOBType;
  Tag := 0;
  Owner := nil;
  OwnerAttrName := '';
  if not ASession.Connected then raise Exception.Create('Not logged on');
  if not (LOBType in [otCLOB, otBLOB, otBFile]) then
    raise Exception.Create('Type must be otCLOB, otBLOB or otBFile');
  if LOBType = otBFile then LOBDType := OCI_DTYPE_FILE else LOBDType := OCI_DTYPE_LOB;
  OCICall(OCIDescriptorAlloc(Session.envhp, @FLOB, LOBDType, 0, nil));
  OCICall(OCIHandleAlloc(Session.envhp, errhp, OCI_HTYPE_ERROR, 0, nil));
end;

destructor TLOBLocator.Destroy;
begin
  FlushBuffer;
  CloseFile;
  if (FLOB <> nil) then OCIDescriptorFree(FLOB, LOBDType);
  if errhp <> nil then OCIHandleFree(errhp, OCI_HTYPE_ERROR);
  Session.LOBLocators.Remove(Self);
  SendToMonitor(False, True);
  inherited;
end;

procedure TLOBLocator.OCICall(Err: Integer);
begin
  case Err of
    OCI_ERROR: RaiseOracleError(Session, integer(errhp));
    OCI_INVALID_HANDLE: raise Exception.Create('TLOBLocator: Invalid handle');
  end;
end;

procedure TLOBLocator.SendStartActivity(const ADescription: string);
begin
  SendToMonitor(True, True);
  AddMonActivity(ckLOBLocator, Session.MonID, MonID, ParentMonID, Self,
    afStart, 0, ADescription, '', '', nil, nil, 0);
  MonActivityStartTime := GetTickCount;
end;

procedure TLOBLocator.SendEndActivity(const ADescription, AResultMessage: string);
var t: LongInt;
begin
  if MonActivityStartTime <> 0 then
  begin
    t := MonActivityStartTime;
    MonActivityStartTime := 0;
    SendToMonitor(True, True);
    AddMonActivity(ckLOBLocator, Session.MonID, MonID, ParentMonID, Self,
      afEnd, 0, ADescription, '', AResultMessage, nil, nil, t);
  end;
end;

procedure TLOBLocator.LOBModified;
begin
  if NullStruct <> nil then
  begin
    if IsInit then NullStruct[0] := OCI_IND_NOTNULL else NullStruct[0] := OCI_IND_NULL;
  end;
  if Owner <> nil then
  begin
    Owner.AttrModified(OwnerAttrName);
  end;
end;

procedure TLOBLocator.CheckType(DataType: Integer; const Msg: string);
var s: string;
begin
  if LOBDType <> DataType then
  begin
    case LOBType of
       otCLOB: s := 'CLOB';
       otBLOB: s := 'BLOB';
      otBFile: s := 'BFile';
    else
      s := '<Unknown LOB>';
    end;
    raise Exception.Create(Msg + ' not allowed for ' + s);
  end;
end;

procedure TLOBLocator.SetSize(NewSize: Longint);
begin
  if NewSize < Size then
  begin
    if MonitorPresent then SendStartActivity('LOB.Trim');
    try
      OCICall(OCILobTrim(Session.svchp, errhp, PLOB^, NewSize))
    except
      on E:Exception do
      begin
        if MonitorPresent then SendEndActivity('', E.Message);
        raise;
      end;
    end;
    if MonitorPresent then SendEndActivity('', '');
  end else if NewSize > Size then
  begin
    Seek(NewSize - 1, soFromBeginning);
    if LOBType = otCLOB then Self.Write('  ', 1) else Write(#0#0, 1);
  end;
end;

function TLOBLocator.Seek(Offset: Longint; Origin: Word): Longint;
begin
  case Origin of
    soFromBeginning: FPosition := Offset;
    soFromCurrent: Inc(FPosition, Offset);
    soFromEnd: FPosition := GetLength + Offset;
  end;
  Result := FPosition;
end;

function TLOBLocator.Read(var Buffer; Count: Longint): Longint;
begin
  Result := 0;
  if (Count > 0) and not IsNull then
  begin
    OpenFile;
    if MonitorPresent then SendStartActivity('LOB.Read(' + IntToStr(Count) + ')');
    try
      OCICall(OCILobRead(Session.svchp, errhp, PLOB^, Count, FPosition + 1,
                         @Buffer, Count, nil, nil, 0, SQLCS_IMPLICIT));
    except
      on E:Exception do
      begin
        if MonitorPresent then SendEndActivity('', E.Message);
        raise;
      end;
    end;
    if MonitorPresent then SendEndActivity('', '');
    Inc(FPosition, Count);
    Result := Count;
  end;
end;

function TLOBLocator.Write(const Buffer; Count: Longint): Longint;
begin
  if Count > 0 then
  begin
    if MonitorPresent then SendStartActivity('LOB.Write(' + IntToStr(Count) + ')');
    try
      OCICall(OCILobWrite(Session.svchp, errhp, PLOB^, Count, FPosition + 1,
                          @Buffer, Count, OCI_ONE_PIECE, nil, nil, 0, SQLCS_IMPLICIT));
    except
      on E:Exception do
      begin
        if MonitorPresent then SendEndActivity('', E.Message);
        raise;
      end;
    end;
    if MonitorPresent then SendEndActivity('', '');
    Inc(FPosition, Count);
    if FBuffering then Modified := True;
  end;
  Result := Count;
end;

function TLOBLocator.GetLength: Integer;
begin
  Result := 0;
  if not IsNull then
  begin
    if MonitorPresent then SendStartActivity('LOB.Length');
    try
      OCICall(OCILobGetLength(Session.svchp, errhp, PLOB^, ub4(Result)));
    except
      on E:Exception do
      begin
        if MonitorPresent then SendEndActivity('', E.Message);
        raise;
      end;
    end;
    if MonitorPresent then SendEndActivity('', '');
  end;
end;

function TLOBLocator.IsInit: Boolean;
var B: LongBool;
begin
  CheckNilLOB;
  OCICall(OCILobLocatorIsInit(Session.envhp, errhp, PLOB^, B));
  Result := B;
end;

procedure TLOBLocator.CheckNilLOB;
begin
  if PLOB^ = nil then
  begin
    OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, LOBType, nil,
                         nil, OCI_DURATION_SESSION, True, PLOB^));
  end;
end;

function TLOBLocator.IsNull: Boolean;
begin
  if NullStruct <> nil then
    Result := (NullStruct[0] <> OCI_IND_NOTNULL) or (not IsInit)
  else
    Result := not IsInit;
end;

// Set a LOB Locator to Null
procedure TLOBLocator.Clear;
begin
  if Owner <> nil then
  begin
    if PLOB^ <> nil then
      OCICall(OCIObjectFree(Session.envhp, errhp, PLOB^, OCI_DEFAULT));
    OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, LOBType, nil,
                         nil, OCI_DURATION_SESSION, True, PLOB^));
  end else begin
    if PLOB^ <> nil then OCIDescriptorFree(PLOB^, LOBDType);
    OCICall(OCIDescriptorAlloc(Session.envhp, PLOB^, LOBDType, 0, nil));
  end;
  LOBModified;
  if NullStruct <> nil then NullStruct[0] := OCI_IND_NULL;
end;

// Set a LOB Locator to Empty
procedure TLOBLocator.SetEmpty;
var LOBEmpty: ub4;
begin
  if Owner <> nil then
  begin
    if PLOB^ <> nil then
      OCICall(OCIObjectFree(Session.envhp, errhp, PLOB^, OCI_DEFAULT));
    OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, LOBType, nil,
                         nil, OCI_DURATION_SESSION, True, PLOB^));
  end else begin
    if PLOB^ <> nil then OCIDescriptorFree(PLOB^, LOBDType);
    OCICall(OCIDescriptorAlloc(Session.envhp, PLOB^, LOBDType, 0, nil));
    LOBEmpty := 0;
    OCICall(OCIAttrSet(PLOB^, OCI_DTYPE_LOB, @LOBEmpty, SizeOf(LOBEmpty),
                       OCI_ATTR_LOBEMPTY, errhp));
  end;
  LOBModified;
end;

// Assign a LOB Locator
procedure TLOBLocator.Assign(Source: TLOBLocator);
begin
  CheckAssign(Source, 'TLOBLocator');
  // Due to an OCI bug (?) we cannot assign a NULL LOB
  if Source.IsNull then
    // Set the destination LOB to NULL
    CLear
  else
    OCICall(OCILobAssign(Session.envhp, errhp, Source.PLOB^, PLOB^));
  FLOBType  := Source.LOBType;
  LOBDType  := Source.LOBDType;
  FPosition := 0;
  LOBModified;
end;

// Copy the data of a LOB Locator
procedure TLOBLocator.Copy(Source: TLOBLocator; Length: Integer);
begin
  if MonitorPresent then SendStartActivity('LOB.Copy');
  try
    if Source.LOBDType = OCI_DTYPE_FILE then
      OCICall(OCILOBLoadFromFile(Session.svchp, errhp, PLOB^, Source.PLOB^,
                                 Length, Position + 1, Source.Position + 1))
    else
      OCICall(OCILOBCopy(Session.svchp, errhp, PLOB^, Source.PLOB^, Length,
                         Position + 1, Source.Position + 1));
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

// Append the data of one LOB Locator to the other
procedure TLOBLocator.Append(Source: TLOBLocator);
begin
  if MonitorPresent then SendStartActivity('LOB.Append');
  try
    if Source.LOBDType = OCI_DTYPE_FILE then
      OCICall(OCILOBLoadFromFile(Session.svchp, errhp, PLOB^, Source.PLOB^,
                                 Source.Size, Size + 1, 1))
    else
      OCICall(OCILOBAppend(Session.svchp, errhp, PLOB^, Source.PLOB^));
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

// Erase a LOB Locator
function TLOBLocator.Erase(Length: Integer): Integer;
begin
  Result := Length;
  if MonitorPresent then SendStartActivity('LOB.Erase');
  try
    OCICall(OCILOBErase(Session.svchp, errhp, PLOB^, ub4(Result), FPosition + 1));
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

// Trim the LOB Locator at the current position
procedure TLOBLocator.Trim;
begin
  SetSize(FPosition);
end;

function TLOBLocator.GetFilename: string;
var dn: array[0..30] of char;
    fn: array[0..255] of char;
    dnl, fnl: ub2;
begin
  CheckType(OCI_DTYPE_FILE, 'Filename');
  dnl := SizeOf(dn);
  fnl := SizeOf(fn);
  OCICall(OCILOBFileGetName(Session.envhp, errhp, PLOB^, dn, dnl, fn, fnl));
  SetLength(Result, fnl);
  if fnl > 0 then Move(fn[0], Result[1], fnl);
end;

procedure TLOBLocator.SetFilename(const Value: string);
var dn, fn: string;
    Slash: Integer;
begin
  CheckNilLOB;
  CheckType(OCI_DTYPE_FILE, 'Filename');
  Slash := Pos('\', Value);
  if Slash <= 0 then
  begin
    if IsNull then dn := ' ' else dn := Directory;
    fn := Value;
  end else begin
    fn := System.Copy(Value, Slash + 1, 255);
    dn := System.Copy(Value, 1, Slash - 1);
  end;
  OCICall(OCILOBFileSetName(Session.envhp, errhp, PLOB^, PChar(dn), Length(dn),
                            PChar(fn), Length(fn)));
  LOBModified;
end;

function TLOBLocator.GetDirectory: string;
var dn: array[0..30] of char;
    fn: array[0..255] of char;
    dnl, fnl: ub2;
begin
  CheckType(OCI_DTYPE_FILE, 'Directory');
  dnl := SizeOf(dn);
  fnl := SizeOf(fn);
  OCICall(OCILOBFileGetName(Session.envhp, errhp, PLOB^, dn, dnl, fn, fnl));
  SetLength(Result, dnl);
  if dnl > 0 then Move(dn[0], Result[1], dnl);
end;

procedure TLOBLocator.SetDirectory(const Value: string);
var fn: string;
begin
  CheckNilLOB;
  CheckType(OCI_DTYPE_FILE, 'Directory');
  if IsNull then fn := ' ' else fn := Filename;
  OCICall(OCILOBFileSetName(Session.envhp, errhp, PLOB^, PChar(Value),
                            Length(Value), PChar(fn), Length(fn)));
  LOBModified;
end;

function TLOBLocator.FileExists: Boolean;
var Flag: LongBool;
begin
  CheckType(OCI_DTYPE_FILE, 'FileExists');
  if MonitorPresent then SendStartActivity('LOB.FileExists');
  try
    OCICall(OCILOBFileExists(Session.svchp, errhp, PLOB^, Flag));
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
  Result := Flag;
end;

procedure TLOBLocator.InternalFlushBuffer;
begin
  if FBuffering and Modified then
  begin
    OCICall(OCILobFlushBuffer(Session.svchp, errhp, PLOB^, OCI_LOB_BUFFER_NOFREE));
    Modified := False;
  end;
end;

procedure TLOBLocator.FlushBuffer;
begin
  if FBuffering and Modified then
  begin
    if MonitorPresent then SendStartActivity('LOB.FlushBuffer');
    try
      InternalFlushBuffer;
    except
      on E:Exception do
      begin
        if MonitorPresent then SendEndActivity('', E.Message);
        raise;
      end;
    end;
    if MonitorPresent then SendEndActivity('', '');
  end;
end;

procedure TLOBLocator.LoadFromFile(const FileName: string);
var F: TFileStream;
begin
  Seek(0, soFromBeginning);
  F := TFileStream.Create(FileName, fmOpenRead or fmShareDenyNone);
  try
    CopyFrom(F, F.Size);
    Trim;
  finally
    F.Free;
  end;
end;

procedure TLOBLocator.SaveToFile(const FileName: string);
var F: TFileStream;
begin
  Seek(0, soFromBeginning);
  F := TFileStream.Create(FileName, fmCreate);
  try
    F.CopyFrom(Self, Size);
  finally
    F.Free;
  end;
end;

function TLOBLocator.GetMonID: Integer;
begin
  if FMonID = 0 then
  begin
    FMonID := GetNewMonID;
    if Name = '' then Name := 'LOBLocator' + IntToStr(FMonID);
  end;
  Result := FMonID;
end;

procedure TLOBLocator.SendToMonitor(Creation, Signal: Boolean);
begin
  if ((Creation xor SentToMonitor) or not Signal) and MonitorListening then
  begin
    SentToMonitor := Creation;
    AddMonObject(Creation, ckLOBLocator, MonID, ParentMonID, Self, Session, nil, Signal);
  end;
end;

function TLOBLocator.GetString(ASize: Integer): string;
var cs, rs: Integer;
begin
  if LOBType = otCLOB then cs := Session.CharacterSize else cs := 1;
  SetLength(Result, ASize * cs);
  Seek(soFromBeginning, 0);
  rs := Read(Result[1], ASize * cs);
  SetLength(Result, rs);
  if LOBType = otCLOB then Result := AddCR(Result, Session);
end;

function TLOBLocator.GetAsString: string;
begin
  Result := GetString(Size);
end;

procedure TLOBLocator.SetAsString(const Value: string);
var s: string;
begin
  Seek(soFromBeginning, 0);
  if LOBType = otCLOB then
    s := RemoveCR(Value, Session)
  else
    s := Value;
  Write(s[1], Length(s));
  Trim;
end;

function TLOBLocator.FileIsOpen: Boolean;
var b: LongBool;
begin
  Result := False;
  if (LOBType = otBFile) and IsInit then
  begin
    if MonitorPresent then SendStartActivity('LOB.FileIsOpen');
    try
      OCICall(OCILobFileIsOpen(Session.svchp, errhp, PLOB^, b));
      Result := b;
    except
      on E:Exception do
      begin
        if MonitorPresent then SendEndActivity('', E.Message);
        raise;
      end;
    end;
    if MonitorPresent then SendEndActivity('', '');
  end;
end;

procedure TLOBLocator.OpenFile;
begin
  if (LOBType = otBFile) and (not FileIsOpen) then
  begin
    if MonitorPresent then SendStartActivity('LOB.OpenFile');
    try
      OCICall(OCILobFileOpen(Session.svchp, errhp, PLOB^, OCI_FILE_READONLY));
    except
      on E:Exception do
      begin
        if MonitorPresent then SendEndActivity('', E.Message);
        raise;
      end;
    end;
    if MonitorPresent then SendEndActivity('', '');
  end;
end;

procedure TLOBLocator.CloseFile;
begin
  if (LOBType = otBFile) and FileIsOpen then
  begin
    if MonitorPresent then SendStartActivity('LOB.CloseFile');
    try
      OCICall(OCILobFileClose(Session.svchp, errhp, PLOB^));
    except
      on E:Exception do
      begin
        if MonitorPresent then SendEndActivity('', E.Message);
        raise;
      end;
    end;
    if MonitorPresent then SendEndActivity('', '');
  end;
end;

procedure TLOBLocator.SetBuffering(const Value: Boolean);
begin
  if Value <> FBuffering then
  begin
    if Value then
      OCICall(OCILobEnableBuffering(Session.svchp, errhp, PLOB^))
    else begin
      FlushBuffer;
      OCICall(OCILobDisableBuffering(Session.svchp, errhp, PLOB^));
    end;
    FBuffering := Value;
  end;
end;

function TDOByName(Session: TOracleSession; errhp: OCIError;
                   const ATypeName: string; var TDO: OCIType; var RefTDO: OCIRef): Integer;
var TypeName: string;
    paramhp: OCIParam;
    Desc: OCIDescribe;
    lRefTDO: OCIRef;
begin
  OCIHandleAlloc(Session.envhp, Desc, OCI_HTYPE_DESCRIBE, 0, nil);
  TypeName := AnsiUpperCase(ATypeName);
  // Describe the type to get a Reference to the TDO
  Result := OCIDescribeAny(Session.svchp, errhp, PChar(TypeName), Length(TypeName),
                           OCI_OTYPE_NAME, OCI_DEFAULT, OCI_PTYPE_TYPE, Desc);
  if Result = OCI_SUCCESS then
    Result := OCIAttrGet(Desc, OCI_HTYPE_DESCRIBE, paramhp, nil, OCI_ATTR_PARAM, errhp);
  if Result = OCI_SUCCESS then
    Result := OCIAttrGet(paramhp, OCI_DTYPE_PARAM, lRefTDO, nil, OCI_ATTR_REF_TDO, errhp);
  // Allocate a reference to the TDO
  if Result = OCI_SUCCESS then
    Result := OCIObjectNew(Session.envhp, errhp, Session.svchp, OCI_TYPECODE_REF,
                           nil, nil, OCI_DURATION_SESSION, True, RefTDO);
  // Copy it
  if Result = OCI_SUCCESS then
    Result := OCIRefAssign(Session.envhp, errhp, lRefTDO, RefTDO);
  // Pin the Reference to get the TDO
  if Result = OCI_SUCCESS then
    Result := OCIObjectPin(Session.envhp, errhp, RefTDO, nil, OCI_PIN_ANY,
                           OCI_DURATION_SESSION, OCI_LOCK_NONE, TDO);
  OCIHandleFree(Desc, OCI_HTYPE_DESCRIBE);
end;

// TObjectAttribute object

destructor TObjectAttribute.Destroy;
begin
  if RefTDO <> nil then
    Owner.OCICall(OCIObjectFree(Owner.Session.envhp, Owner.errhp, RefTDO, OCI_DEFAULT));
  inherited;
end;

function TObjectAttribute.ValuePtr: Pointer;
begin
  Result := Pointer(LongInt(Owner.Instance) + ValueOffset);
  if IsCollection then Result := PPointer(Result)^;
end;

function TObjectAttribute.NullPtr: Psb2Array;
begin
  Result := Psb2Array(LongInt(Owner.NullStruct) + NullOffset);
end;

function TObjectAttribute.IsNull: Boolean;
begin
  Result := (NullPtr[0] <> OCI_IND_NOTNULL);
end;

procedure TObjectAttribute.SetAttrInfo(Param: OCIParam; Obj: TOracleObject; IsElement: Boolean);
var cbufl: sb4;
    cbufp: PChar;
    cbuf: array[0..30] of Char;
    lRefTDO: OCIRef;
begin
  Owner := Obj;
  // Name
  if IsElement then
    FName := ''
  else begin
    cbufl := 30;
    Owner.OCICall(OCIAttrGet(Param, OCI_DTYPE_PARAM, cbufp, @cbufl, OCI_ATTR_NAME, Owner.errhp));
    Move(cbufp^, cbuf[0], cbufl);
    cbuf[cbufl] := #0;
    FName := cbuf;
  end;
  // Data type
  Owner.OCICall(OCIAttrGet(Param, OCI_DTYPE_PARAM, TypeCode, nil, OCI_ATTR_DATA_TYPE, Owner.errhp));
  FDataType := TypeCode;
  // Handle all character datatypes as otString
  if DataType in [otDBChar, otVarchar, otVarchar2] then
    FDataType := otString;
  // For references and objects, determine type name and RefTDO
  if DataType in [otObject, otReference] then
  begin
    // Type name
    cbufl := 30;
    Owner.OCICall(OCIAttrGet(Param, OCI_DTYPE_PARAM, cbufp, @cbufl, OCI_ATTR_TYPE_NAME, Owner.errhp));
    Move(cbufp^, cbuf[0], cbufl);
    cbuf[cbufl] := #0;
    FTypeName := cbuf;
    // Type owner
    cbufl := 30;
    Owner.OCICall(OCIAttrGet(Param, OCI_DTYPE_PARAM, cbufp, @cbufl, OCI_ATTR_SCHEMA_NAME, Owner.errhp));
    Move(cbufp^, cbuf[0], cbufl);
    cbuf[cbufl] := #0;
    FTypeName := cbuf + '.' + TypeName;
    // Copy the RefTDO
    Owner.OCICall(OCIAttrGet(Param, OCI_DTYPE_PARAM, lRefTDO, nil, OCI_ATTR_REF_TDO, Owner.errhp));
    Owner.OCICall(OCIObjectNew(Owner.Session.envhp, Owner.errhp, Owner.Session.svchp,
                               OCI_TYPECODE_REF, nil, nil, OCI_DURATION_SESSION, True, RefTDO));
    Owner.OCICall(OCIRefAssign(Owner.Session.envhp, Owner.errhp, lRefTDO, RefTDO));
  end;
  // For objects, determine the object type (object or collection)
  if DataType <> otObject then
    FIsCollection := False
  else begin
    Owner.OCICall(OCIAttrGet(Param, OCI_DTYPE_PARAM, ObjectType, nil, OCI_ATTR_TYPECODE, Owner.errhp));
    FIsCollection := (ObjectType = OCI_TYPECODE_NAMEDCOLLECTION);
  end;
  // Size
  Owner.OCICall(OCIAttrGet(Param, OCI_DTYPE_PARAM, FSize, nil, OCI_ATTR_DATA_SIZE, Owner.errhp));
  // For numbers, determine scale and precision + float/integer
  if DataType = otNumber then
  begin
    // Precision
    Owner.OCICall(OCIAttrGet(Param, OCI_DTYPE_PARAM, FPrecision, nil, OCI_ATTR_PRECISION, Owner.errhp));
    // Scale
    Owner.OCICall(OCIAttrGet(Param, OCI_DTYPE_PARAM, FScale, nil, OCI_ATTR_SCALE, Owner.errhp));
    // Choose otFloat or otInteger
    if (Scale > 0) or (Precision > 9) or
       ((Scale = 0) and (Precision = 0)) then
      FDataType := otFloat
    else
      FDataType := otInteger;
  end;
end;

function TObjectAttribute.GetValue: Variant;
begin
  Result := Owner.InternalGetAttr(Self, ValuePtr, NullPtr)
end;

function TObjectAttribute.GetAsString: string;
var d: TDateTime;
begin
  if IsNull then
    Result := ''
  else begin
    case DataType of
       otString: Result := string(Value);
      otInteger: Result := IntToStr(Integer(Value));
        otFloat: Result := FloatToStr(Double(Value));
         otDate: begin
                   d := TDateTime(Value);
                   if Frac(d) = 0 then
                     Result := FormatDateTime('ddddd', d)
                   else
                     Result := FormatDateTime('ddddd tt', d);
                 end;
    else
      raise Exception.Create('Cannot convert attribute ' + Name + ' to a String');
    end;
  end;
end;

// TMethodParameter object

function TMethodParameter.GetTypeString: string;
var s, s2: string;
begin
  case FDBDataType of
      1 : s := 'VARCHAR2';
      2 : s := 'NUMBER';
      3 : s := 'BINARY_INTEGER';
      8 : s := 'LONG';
     11 : s := 'ROWID';
     12 : s := 'DATE';
     23 : s := 'RAW';
     24 : s := 'LONG RAW';
     96 : s := 'CHAR';
    102,
    116 : s := 'REF CURSOR';
    106 : s := 'MLSLABEL';
    250 : s := 'RECORD';
    251 : s := 'TABLE';
    252 : s := 'BOOLEAN';
    121 : s := 'OBJECT';
    123 : s := 'OBJECT';
    108,
    110 : begin
            if TypeName = '' then
              s := 'OBJECT'
            else begin
              s := TypeName;
            end;
            if DataType = 110 then s := 'REF ' + s;
          end;
    112 : s := 'CLOB';
    113 : s := 'BLOB';
    114 : s := 'BFILE';
  else
    s := 'UNKNOWN TYPE ' + IntToStr(FDBDataType);
  end;
  s2 := '';
  if FDBDataType = 2 then
  begin
    if (Precision <> 0) and (Precision <> 38) then s2 := IntToStr(Precision);
    if (Scale <> 0) then s2 := s2 + ',' + IntToStr(Scale);
  end;
  if s2 <> '' then s := s + '(' + s2 + ')';
  Result := s;
end;

// TObjectMethod object

destructor TObjectMethod.Destroy;
begin
  if ParameterList <> nil then ParameterList.Free;
  if ResultParameter <> nil then ResultParameter.Free;
  inherited;
end;

procedure TObjectMethod.SetMethodInfo(Param: OCIParam; Obj: TOracleObject);
var cbufl: sb4;
    cbufp: PChar;
    cbuf: array[0..30] of Char;
    ListParam, ParamParam: OCIParam;
    Pos, Err: Integer;
    P: TMethodParameter;
    lDataType: OCITypeCode;
    lTypeCode: OCITypeCode;
    lPrecision: ub1;
    lScale: sb1;
    lMode: OCITypeParamMode;
    lDBDataType: Integer;
    rc: Integer;
    ObjectType: OCITypeCode;
begin
  Owner := Obj;
  FIsStatic := True;
  // Name
  cbufl := 30;
  Owner.OCICall(OCIAttrGet(Param, OCI_DTYPE_PARAM, cbufp, @cbufl, OCI_ATTR_NAME, Owner.errhp));
  Move(cbufp^, cbuf[0], cbufl);
  cbuf[cbufl] := #0;
  FName := cbuf;
  // Parameters
  ParameterList := TCollection.Create(TMethodParameter);
  // Get the parameter list
  Owner.OCICall(OCIAttrGet(Param, OCI_DTYPE_PARAM, ListParam, nil, OCI_ATTR_LIST_ARGUMENTS, Owner.errhp));
  Pos := 0;
  Err := 0;
  while (Err = 0) or (Pos <= 1) do
  begin
    // Get the parameter for for this parameter
    Err := OCIParamGet(ListParam, OCI_DTYPE_PARAM, Owner.errhp, ParamParam, Pos);
    if Err = 0 then
    begin
      // Data type
      Owner.OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lTypeCode, nil, OCI_ATTR_TYPECODE, Owner.errhp));
      if lTypeCode = otBoolean then
        lDataType := otBoolean
      else
        Owner.OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lDataType, nil, OCI_ATTR_DATA_TYPE, Owner.errhp));
      lDBDataType := lDataType;
      // Handle all character datatypes as otString
      if lDataType in [otDBChar, otVarchar, otVarchar2, otRaw] then
        lDataType := otString;
      // For numbers, determine scale and precision + float/integer
      if lDataType = otNumber then
      begin
        // Precision
        rc := OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lPrecision, nil, OCI_ATTR_PRECISION, Owner.errhp);
        // Scale
        if rc = OCI_SUCCESS then
          OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lScale, nil, OCI_ATTR_SCALE, Owner.errhp);
        if rc <> OCI_SUCCESS then
          lDataType := otFloat
        else begin
          // Choose otFloat or otInteger
          if (lScale > 0) or (lPrecision > 9) or
             ((lScale = 0) and (lPrecision = 0)) then
            lDataType := otFloat
          else
            lDataType := otInteger;
        end;
      end else begin
        lPrecision := 0;
        lScale := 0;
      end;
      P := nil;
      if Pos = 0 then
      begin
        P := TMethodParameter.Create(nil);
        FResultParameter := P;
      end else begin
        // Name
        cbufl := 30;
        Owner.OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, cbufp, @cbufl, OCI_ATTR_NAME, Owner.errhp));
        Move(cbufp^, cbuf[0], cbufl);
        cbuf[cbufl] := #0;
        if cbuf = 'SELF' then
          FIsStatic := False
        else begin
          P := TMethodParameter.Create(ParameterList);
          P.FName := cbuf;
        end;
      end;
      if P <> nil then
      begin
        P.FDataType := lDataType;
        P.FDBDataType := lDBDataType;
        P.FScale := lScale;
        P.FPrecision := lPrecision;
        // Mode
        Owner.OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, lMode, nil, OCI_ATTR_IOMODE, Owner.errhp));
        case lMode of
           OCI_TYPEPARAM_IN: P.FMode := pmIn;
          OCI_TYPEPARAM_OUT: P.FMode := pmOut;
        else
          P.FMode := pmInOut;
        end;
        // Type name
        if P.DataType in [otObject, otReference] then
        begin
          cbufl := 30;
          Owner.OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, cbufp, @cbufl, OCI_ATTR_TYPE_NAME, Owner.errhp));
          Move(cbufp^, cbuf[0], cbufl);
          cbuf[cbufl] := #0;
          P.FTypeName := cbuf;
          // Type owner
          cbufl := 30;
          Owner.OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, cbufp, @cbufl, OCI_ATTR_SCHEMA_NAME, Owner.errhp));
          Move(cbufp^, cbuf[0], cbufl);
          cbuf[cbufl] := #0;
          P.FTypeName := cbuf + '.' + P.FTypeName;
        end;
        // For objects, determine the object type (object or collection)
        if P.FDataType <> otObject then
          P.FIsCollection := False
        else begin
          Owner.OCICall(OCIAttrGet(ParamParam, OCI_DTYPE_PARAM, ObjectType, nil, OCI_ATTR_TYPECODE, Owner.errhp));
          P.FIsCollection := (ObjectType = OCI_TYPECODE_NAMEDCOLLECTION);
        end;
      end;
    end;
    Inc(Pos);
  end;
end;

function TObjectMethod.ParameterByName(const ParameterName: string): TMethodParameter;
var i: Integer;
    UName: string;
begin
  UName := AnsiUpperCase(ParameterName);
  for i := 0 to ParameterList.Count - 1 do
  begin
    if UName = TMethodParameter(ParameterList.Items[i]).Name then
    begin
      Result := ParameterList.Items[i] as TMethodParameter;
      Exit;
    end;
  end;
  Result := nil;
end;

function TObjectMethod.GetParameter(Index: Integer): TMethodParameter;
begin
  Result := ParameterList.Items[Index] as TMethodParameter;
end;

function TObjectMethod.GetParameterCount: Integer;
begin
  Result := ParameterList.Count;
end;

// TOracleReference object

// Constructor and Destructor

constructor TOracleReference.New(ASession: TOracleSession; ARefTDO: OCIRef;
  const ATypeName: string; AParentMonID: Integer; const AName: string);
var s: string;
begin
  inherited Create;
  ASession.References.Add(Self);
  FRef          := nil;
  PRef          := @FRef;
  NullStruct    := nil;
  errhp         := nil;
  Session       := ASession;
  TDO           := nil;
  RefTDO        := nil;
  TypeName      := '';
  Owner         := nil;
  OwnerAttrName := '';
  ParentMonID   := AParentMonID;
  Name          := AName;
  if MonitorPresent then
  begin
    s := 'Reference.Create';
    if ATypeName <> '' then s := s + '(''' + ATypeName + ''')';
    SendStartActivity(s);
  end;
  try
    if not ASession.Connected then raise Exception.Create('Not logged on');
    // Allocate an error handle
    OCIHandleAlloc(Session.envhp, errhp, OCI_HTYPE_ERROR, 0, nil);
    // Allocate a REF object instance
    OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, OCI_TYPECODE_REF,
                         nil, nil, OCI_DURATION_SESSION, True, FRef));
    // Determine the RefTDO and TDO
    if ARefTDO = nil then
      OCICall(TDOByName(Session, errhp, ATypeName, TDO, RefTDO))
    else begin
      // Allocate a RefTDO , copy it, and pin it
      OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, OCI_TYPECODE_REF,
                           nil, nil, OCI_DURATION_SESSION, True, RefTDO));
      OCICall(OCIRefAssign(Session.envhp, errhp, ARefTDO, RefTDO));
      OCICall(OCIObjectPin(Session.envhp, errhp, RefTDO, nil, OCI_PIN_ANY,
                           OCI_DURATION_SESSION, OCI_LOCK_NONE, TDO));
    end;
    TypeName := ATypeName;
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

constructor TOracleReference.Create(ASession: TOracleSession; const ATypeName: string);
begin
  inherited Create;
  CheckNet8(ASession, 'A TOracleReference instance', True);
  if ATypeName = '' then raise Exception.Create('You must supply an object type');
  New(ASession, nil, ATypeName, ParentMonID, Name);
end;

destructor TOracleReference.Destroy;
begin
  // Free the REF instance
  if (FRef <> nil) then OCICall(OCIObjectFree(Session.envhp, errhp, FRef, OCI_DEFAULT));
  // Unpin the TDO
  if TDO <> nil then OCICall(OCIObjectUnpin(Session.envhp, errhp, TDO));
  // Free the RefTDO instance
  if (RefTDO <> nil) then OCICall(OCIObjectFree(Session.envhp, errhp, RefTDO, OCI_DEFAULT));
  // Free the error handle
  if errhp <> nil then OCIHandleFree(errhp, OCI_HTYPE_ERROR);
  Session.References.Remove(Self);
  SendToMonitor(False, True);
  inherited;
end;

// Private methods

procedure TOracleReference.OCICall(Err: Integer);
begin
  case Err of
    OCI_ERROR: RaiseOracleError(Session, integer(errhp));
    OCI_INVALID_HANDLE: raise Exception.Create('TOracleObject: Invalid handle');
  end;
end;

// Signal that the reference is modified
procedure TOracleReference.RefModified;
begin
  if NullStruct <> nil then
  begin
    if RefIsNull then NullStruct[0] := OCI_IND_NULL else NullStruct[0] := OCI_IND_NOTNULL;
  end;
  if Owner <> nil then
  begin
    Owner.AttrModified(OwnerAttrName);
  end;
end;

// Get the hexadecimal representation of a reference
function TOracleReference.GetHex: string;
var l: Integer;
begin
  l := OCIRefHexSize(Session.envhp, PRef^);
  SetLength(Result, l);
  OCICall(OCIRefToHex(Session.envhp, errhp, PRef^, PChar(Result), ub4(l)));
  SetLength(Result, l);
end;

// Set the hexadecimal representation of a reference
procedure TOracleReference.SetHex(const Value: string);
begin
  OCICall(OCIRefFromHex(Session.envhp, errhp, Session.svchp, PChar(Value),
                        Length(Value), PRef^));
  RefModified;
end;

// Is the refence null
function TOracleReference.RefIsNull: Boolean;
begin
  Result := OCIRefIsNull(Session.envhp, PRef^);
end;

// Public methods

// Pin a referenced object instance
function TOracleReference.Pin(PinOption: TPinOption;
                              PinLockOption: TPinLockOption): TOracleObject;
var po: Integer;
    pl: Integer;
    Instance: Pointer;
begin
  // Check if the reference is null, if so, return nil
  if IsNull then
  begin
    Result := nil;
    Exit;
  end;
  // Convert options to OCI equivalents
  case PinOption of
       poAny: po := OCI_PIN_ANY;
    poLatest: po := OCI_PIN_LATEST;
    poRecent: po := OCI_PIN_RECENT;
  else
    raise Exception.Create('Unexpected PinOption');
  end;
  case PinLockOption of
         plNone: pl := OCI_LOCK_NONE;
    plExclusive: pl := OCI_LOCK_X;
  else
    raise Exception.Create('Unexpected PinLockOption');
  end;
  // Pin the object
  Result := nil;
  if MonitorPresent then SendStartActivity('Reference.Pin');
  try
    Instance := nil;
    OCICall(OCIObjectPin(Session.envhp, errhp, PRef^, nil, po, OCI_DURATION_SESSION,
                         pl, Instance));
  {  OCICall(OCIObjectUnpin(Session.envhp, errhp, Instance));
    Result := nil;
    exit;}
    // Create a TOraceObject and assign the instance to it
    Result := TOracleObject.New(Session, Self.MonID, 'PinnedObject');
    Result.SetInstance(Instance, nil, RefTDO, TypeName);
    Result.Pinned := True;
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      Result.Free;
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

// Check if a reference is null
function TOracleReference.IsNull: Boolean;
begin
  if NullStruct = nil then
    Result := RefIsNull
  else
    Result := (NullStruct[0] <> OCI_IND_NOTNULL) or RefIsNull;
end;

// Set a reference to null
procedure TOracleReference.Clear;
begin
  OCIRefClear(Session.envhp, PRef^);
  RefModified;
end;

// Assign a reference
procedure TOracleReference.Assign(Source: TOracleReference);
begin
  CheckAssign(Source, 'TOracleReference');
  if Source.IsNull then
    Clear
  else
    OCICall(OCIRefAssign(Session.envhp, errhp, Source.PRef^, PRef^));
  RefModified;
end;

function TOracleReference.GetMonID: Integer;
begin
  if FMonID = 0 then
  begin
    FMonID := GetNewMonID;
    if Name = '' then Name := 'OracleReference' + IntToStr(FMonID);
  end;
  Result := FMonID;
end;

procedure TOracleReference.SendToMonitor(Creation, Signal: Boolean);
begin
  if ((Creation xor SentToMonitor) or not Signal) and MonitorListening then
  begin
    SentToMonitor := Creation;
    AddMonObject(Creation, ckReference, MonID, ParentMonID, Self, Session, nil, Signal);
  end;
end;

procedure TOracleReference.SendStartActivity(const ADescription: string);
begin
  SendToMonitor(True, True);
  AddMonActivity(ckObject, Session.MonID, MonID, ParentMonID, Self,
    afStart, 0, ADescription, '', '', nil, nil, 0);
  MonActivityStartTime := GetTickCount;
end;

procedure TOracleReference.SendEndActivity(const ADescription, AResultMessage: string);
var t: LongInt;
begin
  if MonActivityStartTime <> 0 then
  begin
    t := MonActivityStartTime;
    MonActivityStartTime := 0;
    SendToMonitor(True, True);
    AddMonActivity(ckObject, Session.MonID, MonID, ParentMonID, Self,
      afEnd, 0, ADescription, '', AResultMessage, nil, nil, t);
  end;
end;

// TOracleObject object

// Constructor and Destructor

constructor TOracleObject.Create(ASession: TOracleSession; const ATypeName: string;
                                 const ATable: string);
var TableOwner, TableName: string;
    Dot: Integer;
    ObjectTypeCode: OCITypeCode;
begin
  if MonitorPresent then
  begin
    Session := ASession;
    SendStartActivity('Object.Create(''' + ATypeName + ''', ''' + ATable + ''')');
  end;
  try
    CheckNet8(ASession, 'A TOracleObject instance', True);
    Self.New(ASession, ParentMonID, Name);
    if ATypeName = '' then
      raise Exception.Create('You must supply an object type');
    FTypeName := ATypeName;
    // Pin the table
    if ATable <> '' then
    begin
      TableName := AnsiUpperCase(ATable);
      Dot := Pos('.', TableName);
      if Dot <= 0 then
        TableOwner := ''
      else begin
        TableOwner := System.Copy(TableName, 1, Dot - 1);
        TableName  := System.Copy(TableName, Dot + 1, 255);
      end;
      OCICall(OCIObjectPinTable(Session.envhp, errhp, Session.svchp, PChar(TableOwner),
                                Length(TableOwner), PChar(TableName), Length(TableName),
                                nil, OCI_DURATION_SESSION, Table));
    end;
    // Get the TDO by name
    OCICall(TDOByName(Session, errhp, ATypeName, TDO, RefTDO));
    // Get the typecode of the object
    ObjectTypeCode := Session.TDOToTypeCode(TDO);
    // Create a new instance
    OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, ObjectTypeCode,
                         TDO, Table, OCI_DURATION_SESSION, Table = nil, Instance));
    // Determine null structure
    OCICall(OCIObjectGetInd(Session.envhp, errhp, Instance, NullStruct));
    // Set the instance to null
    NullStruct[0] := OCI_IND_NULL;
    // Get the attribute definitions
    Describe;
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

destructor TOracleObject.Destroy;
begin
  // Free the reference
  if FReference <> nil then FReference.Free;
  // Free lists with sub-objects
  ClearLists(True);
  // Free the instance
  if (Instance <> nil) and InstanceOwner then
  begin
    if Pinned or (Table <> nil) then
      OCICall(OCIObjectUnpin(Session.envhp, errhp, Instance))
    else
      OCICall(OCIObjectFree(Session.envhp, errhp, Instance, OCI_DEFAULT));
  end;
  // Unpin the table
  if Table <> nil then OCICall(OCIObjectUnpin(Session.envhp, errhp, Table));
  // Deallocate the reference to the TDO
  if RefTDO <> nil then
    OCICall(OCIObjectFree(Session.envhp, errhp, RefTDO, OCI_DEFAULT));
  // Unpin the TDO
  if TDO <> nil then
    OCICall(OCIObjectUnpin(Session.envhp, errhp, TDO));
  // Free some handles
  if errhp <> nil then OCIHandleFree(errhp, OCI_HTYPE_ERROR);
  if dschp <> nil then OCIHandleFree(dschp, OCI_HTYPE_DESCRIBE);
  // Free the attribute/method collection
  if AttrList <> nil then AttrList.Free;
  if MethodList <> nil then MethodList.Free;
  // Free the collection element object
  if ElemObj <> nil then ElemObj.Free;
  if ElemLOB <> nil then ElemLOB.Free;
  if ElemRef <> nil then ELemRef.Free;
  // Free the query used for method-calls
  if Query <> nil then Query.Free;
  Session.Objects.Remove(Self);
  SendToMonitor(False, True);
  inherited;
end;

// Private methods

constructor TOracleObject.New(ASession: TOracleSession; AParentMonID: Integer; const AName: string);
begin
  inherited Create;
  ASession.Objects.Add(Self);
  errhp         := nil;
  RefTDO        := nil;
  TDO           := nil;
  FTypeName     := '';
  NullStruct    := nil;
  InstanceOwner := True;
  Pinned        := False;
  Table         := nil;
  Session       := ASession;
  ObjList       := nil;
  RefList       := nil;
  LOBList       := nil;
  FReference    := nil;
  Owner         := nil;
  OwnerAttrName := '';
  AttrList      := nil;
  MethodList    := nil;
  ElemObj       := nil;
  ElemLOB       := nil;
  ElemRef       := nil;
  ElemAttr      := nil;
  Query         := nil;
  LastMethod    := nil;
  ParentMonID   := AParentMonID;
  FName         := AName;
  SendToMonitor(True, True);
  if not ASession.Connected then raise Exception.Create('Not logged on');
  OCIHandleAlloc(Session.envhp, errhp, OCI_HTYPE_ERROR, 0, nil);
  OCIHandleAlloc(Session.envhp, dschp, OCI_HTYPE_DESCRIBE, 0, nil);
end;

procedure TOracleObject.OCICall(Err: Integer);
begin
  case Err of
    OCI_ERROR: RaiseOracleError(Session, integer(errhp));
    OCI_INVALID_HANDLE: raise Exception.Create('TOracleObject: Invalid handle');
  end;
end;

procedure TOracleObject.SetInstance(AnInstance: Pointer; ANullStruct: Psb2Array;
                                    ARefTDO: OCIRef; const ATypeName: string);
begin
  // For a new instance, the sub-object lists must be cleared
  ClearLists(False);
  // Set the instance
  Instance := AnInstance;
  // Determine null structure if necessary
  if ANullStruct = nil then
    OCICall(OCIObjectGetInd(Session.envhp, errhp, Instance, NullStruct))
  else
    NullStruct := ANullStruct;
  // Allocate a reference to the TDO and pin it if necessary
  if RefTDO = nil then
  begin
    // Allocate it
    OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, OCI_TYPECODE_REF,
                         nil, nil, OCI_DURATION_SESSION, True, RefTDO));
    // Copy the RefTDO
    OCICall(OCIRefAssign(Session.envhp, errhp, ARefTDO, RefTDO));
    // Pin the TDO
    OCICall(OCIObjectPin(Session.envhp, errhp, RefTDO, nil, OCI_PIN_ANY,
                         OCI_DURATION_SESSION, OCI_LOCK_NONE, TDO));
    // Save the type name
    FTypeName := ATypeName;
  end;
  // Get the attribute definitions
  Describe;
end;

// Recursively describe an object, creating the AttrList
procedure TOracleObject.DescribeRecursive(const AttrName: string; ARefTDO: OCIType;
                                          var ValueOffset, NullOffset: Integer);
var TypeParam, AttrParam, ElemParam: OCIParam;
    ListParam: PPtrArray;
    Desc: OCIDescribe;
    Pos, Size, m, WrongValueOffset, i: Integer;
    AttrCount: ub4;
    A, AP: TObjectAttribute;
    lRefTDO: OCIRef;
begin
  // Allocate the describe handle, we need this due to the recursive nature of this method
  OCIHandleAlloc(Session.envhp, Desc, OCI_HTYPE_DESCRIBE, 0, nil);
  // Get the describe handle for the type
  OCICall(OCIDescribeAny(Session.svchp, errhp, ARefTDO, 0, OCI_OTYPE_REF, OCI_DEFAULT, OCI_PTYPE_TYPE, Desc));
  // Get the parameter handle for the type
  OCICall(OCIAttrGet(Desc, OCI_HTYPE_DESCRIBE, TypeParam, nil, OCI_ATTR_PARAM, errhp));
  // If it is the top-level object, Get some extra info
  if AttrName = '' then
  begin
    // Get the object type (object or collection)
    OCICall(OCIAttrGet(TypeParam, OCI_DTYPE_PARAM, ObjectType, nil, OCI_ATTR_TYPECODE, errhp));
    // If it is a collection, get the element information
    if ObjectType = OCI_TYPECODE_NAMEDCOLLECTION then
    begin
      // Get the collection type (varray or table)
      OCICall(OCIAttrGet(TypeParam, OCI_DTYPE_PARAM, CollType, nil, OCI_ATTR_COLLECTION_TYPECODE, errhp));
      // Get the parameter handle for the element
      OCICall(OCIAttrGet(TypeParam, OCI_DTYPE_PARAM, ElemParam, nil, OCI_ATTR_COLLECTION_ELEMENT, errhp));
      // Set up an attribute
      ElemAttr := TObjectAttribute.Create(AttrList);
      // Get the data type
      ElemAttr.SetAttrInfo(ElemParam, Self, True);
    end;
  end;
  // Get the number of attributes for the type
  AttrCount := 0;  // Documented as ub4, but doesn't seem to be
  OCICall(OCIAttrGet(TypeParam, OCI_DTYPE_PARAM, AttrCount, nil, OCI_ATTR_NUM_TYPE_ATTRS, errhp));
  if AttrCount > 0 then
  begin
    // Get the parameter handle for the attribute list
    OCICall(OCIAttrGet(TypeParam, OCI_DTYPE_PARAM, ListParam, nil, OCI_ATTR_LIST_TYPE_ATTRS, errhp));
    for Pos := 1 to AttrCount do
    begin
      // Get the parameter for for this attribute
      OCICall(OCIParamGet(ListParam, OCI_DTYPE_PARAM, errhp, AttrParam, Pos));
      // Create a new ObjectAttribute
      A := TObjectAttribute.Create(AttrList);
      A.SetAttrInfo(AttrParam, Self, False);
      // Prefix the name with the embedded object(s)
      A.FName := AttrName + A.Name;
      // Set the Null offset
      A.NullOffset  := NullOffset;
      Inc(NullOffset, SizeOf(OCIInd));
      // Determine the Size of this attribute
      Size := 0;
      case A.DataType of
       otInteger,
         otFloat: Size := 22;
          otDate: Size := 8;
        otObject: if A.ObjectType = OCI_TYPECODE_NAMEDCOLLECTION then
                      Size := SizeOf(Pointer);
      else
        Size := SizeOf(Pointer);
      end;
      // A Pointer attribute must start at 4 byte offset, and so must
      // the embedding object(s)
      if (Size = SizeOf(Pointer)) then
      begin
        m := ValueOffset mod 4;
        if m <> 0 then
        begin
          WrongValueOffset := ValueOffset;
          Inc(ValueOffset, 4 - m);
          // Correct all embedding objects that start at this (wrong) offset
          i := AttrList.Count - 2;
          while (i >= 0) do
          begin
            AP := TObjectAttribute(AttrList.Items[i]);
            if AP.ValueOffset = WrongValueOffset then
              AP.ValueOffset := ValueOffset
            else
              i := 0;
            Dec(i);
          end;
        end;
      end;
      A.ValueOffset := ValueOffset;
      Inc(ValueOffset, Size);
      // For objects, recursively describe object
      if A.DataType = otObject then
      begin
        // Get the RefTDO
        OCICall(OCIAttrGet(AttrParam, OCI_DTYPE_PARAM, lRefTDO, nil, OCI_ATTR_REF_TDO, errhp));
        // Describe it
        DescribeRecursive(A.Name + '.', lRefTDO, ValueOffset, NullOffset);
      end;
    end;
  end;
  OCICall(OCIHandleFree(Desc, OCI_HTYPE_DESCRIBE));
end;

// Describe the object
procedure TOracleObject.Describe;
var ValueOffset: Integer;
begin
  if AttrList = nil then
  begin
    AttrList    := TCollection.Create(TObjectAttribute);
    ValueOffset := 0;
    NullStructSize := SizeOf(OCIInd);
    DescribeRecursive('', RefTDO, ValueOffset, NullStructSize);
  end;
end;

// Describe the methods of an object
procedure TOracleObject.DescribeMethods;
var TypeParam, MethodParam: OCIParam;
    ListParam: PPtrArray;
    Pos: Integer;
    MethodCount: ub4;
    M: TObjectMethod;
begin
  // Check if methods already described
  if MethodList <> nil then Exit;
  // No, create the list
  MethodList  := TCollection.Create(TObjectMethod);
  // Get the describe handle for the type
  OCICall(OCIDescribeAny(Session.svchp, errhp, RefTDO, 0, OCI_OTYPE_REF, OCI_DEFAULT, OCI_PTYPE_TYPE, dschp));
  // Get the parameter handle for the type
  OCICall(OCIAttrGet(dschp, OCI_HTYPE_DESCRIBE, TypeParam, nil, OCI_ATTR_PARAM, errhp));
  // Get the methods
  MethodCount := 0;  // Documented as ub4, but doesn't seem to be
  OCICall(OCIAttrGet(TypeParam, OCI_DTYPE_PARAM, MethodCount, nil, OCI_ATTR_NUM_TYPE_METHODS, errhp));
  // Get the parameter handle for the method list
  OCICall(OCIAttrGet(TypeParam, OCI_DTYPE_PARAM, ListParam, nil, OCI_ATTR_LIST_TYPE_METHODS, errhp));
  for Pos := 1 to MethodCount do
  begin
    // Get the parameter for for this method
    OCICall(OCIParamGet(ListParam, OCI_DTYPE_PARAM, errhp, MethodParam, Pos));
    // Create a new ObjectMethod
    M := TObjectMethod.Create(MethodList);
    M.SetMethodInfo(MethodParam, Self);
  end;
end;

// Get modified property
function TOracleObject.GetModified: Boolean;
var b: LongBool;
begin
  OCICall(OCIObjectIsDirty(Session.envhp, errhp, Instance, b));
  Result := b;
end;

// Set modified property
procedure TOracleObject.SetModified(Value: Boolean);
begin
  if Pinned or (Table <> nil) then
  begin
    if Value then
      OCICall(OCIObjectMarkUpdate(Session.envhp, errhp, Instance))
    else
      OCICall(OCIObjectUnmark(Session.envhp, errhp, Instance));
  end;
  if Owner <> nil then Owner.Modified := Value;
end;

// Return the base object of an object
function TOracleObject.BaseObject: TOracleObject;
begin
  Result := Self;
  while Result.Owner <> nil do Result := Result.Owner;
end;

// Determine if the object is null
function TOracleObject.IsNull: Boolean;
begin
  Result := (NullStruct[0] <> OCI_IND_NOTNULL)
end;

// Set the object to null
procedure TOracleObject.Clear;
var i: Integer;
begin
  if IsCollection then TrimElements(0);
  for i := 0 to (NullStructSize div SizeOf(OCIInd)) - 1 do
    NullStruct[i] := OCI_IND_NULL;
  if Owner <> nil then Owner.AttrModified(OwnerAttrName) else Modified := True;
end;

// Determine if an attribute is null
function TOracleObject.AttrIsNull(const AName: string): Boolean;
begin
  Result := FindAttr(AName, True).IsNull;
end;

function TOracleObject.FindAttr(const AttrName: string; RaiseException: Boolean): TObjectAttribute;
var i: Integer;
begin
  for i := 0 to AttrList.Count - 1 do
  begin
    if AnsiCompareText(AttrName, TObjectAttribute(AttrList.Items[i]).Name) = 0 then
    begin
      Result := AttrList.Items[i] as TObjectAttribute;
      Exit;
    end;
  end;
  if RaiseException then
    raise Exception.Create('Unknown attribute: ' + AttrName)
  else
    Result := nil;
end;

function TOracleObject.AttrByName(const AttrName: string): TObjectAttribute;
begin
  Result := FindAttr(AttrName, False);
end;

function TOracleObject.InternalGetAttr(AAttr: TObjectAttribute; ValuePtr: Pointer;
                                       NullPtr: Psb2Array): Variant;
var iValue: Integer;
    fValue: Double;
    dValue: TDateTime;
    LOB: TLOBLocator;
    i, l, Fmt1Length: Integer;
    s, Fmt1, Fmt2: string;
    p: Pointer;
    RawPtr: Pub1Array;
    RawSize: Integer;
    ABufType: sb2;
    ABufSize: sb4;
const HexDigits: PChar = '0123456789ABCDEF';
begin
  // Is it null?
  if NullPtr[0] <> OCI_IND_NOTNULL then
  begin
    if Session.NullValue = nvNull then Result := Null else Result := Unassigned;
    Exit;
  end;
  // Convert this data type to a variant
  case AAttr.DataType of
    otString:
    begin
      Result := AddCR(string(OCIStringPtr(Session.envhp, PPointer(ValuePtr)^)), Session)
    end;
    otInteger, otFloat:
    begin
      // Determine the required datatype
      Session.GetNumberDataType(AAttr.Precision, AAttr.Scale, False, ABufType, ABufSize);
      // Convert to this type
      case ABufType of
        otInteger:
        begin
          OCICall(OCINumberToInt(errhp, ValuePtr, SizeOf(Integer), OCI_NUMBER_SIGNED, iValue));
          Result := iValue;
        end;
        otFloat:
        begin
          OCICall(OCINumberToReal(errhp, ValuePtr, SizeOf(fValue), fValue));
          Result := fValue;
        end;
        else begin
          // Conversion to string, up to 38 digits precision
          // First determine the number of digits before the decimal separator
          SetLength(Fmt1, 38);
          FillChar(Fmt1[1], Length(Fmt1), '9');
          Fmt1 := 'FM' + Fmt1;
          SetLength(s, 2000);
          ABufSize := Length(s);
          OCICall(OCINumberToText(errhp, ValuePtr, PChar(Fmt1), Length(Fmt1), nil, 0, ABufSize, PChar(s)));
          SetLength(s, ABufSize);
          Fmt1Length := Length(s);
          if (Fmt1Length > 0) and (s[1] = '-') then Dec(Fmt1Length);
          // Next modify the format to allow up to 38 digits with decimals
          if Fmt1Length < 38 then
          begin
            // Reduce the number of digits before the decimal (allow for 'FM')
            SetLength(Fmt1, 2 + Fmt1Length);
            // Add the maximum number of digits behind the decimal
            SetLength(Fmt2, 38 - Fmt1Length);
            FillChar(Fmt2[1], Length(Fmt2), '9');
            Fmt1 := Fmt1 + 'D' + Fmt2;
            // Format it again
            SetLength(s, 2000);
            ABufSize := Length(s);
            OCICall(OCINumberToText(errhp, ValuePtr, PChar(Fmt1), Length(Fmt1), nil, 0, ABufSize, PChar(s)));
            SetLength(s, ABufSize);
          end;
          // Remove trailing decimal separator (whatever it might be)
          while (Length(s) > 0) and not (s[Length(s)] in ['0'..'9']) do
            System.Delete(s, Length(s), 1);
          Result := s;
        end;
      end;
    end;
    otDate:
    begin
      OCIToDelphiDate(OCIDate(ValuePtr), dValue);
      Result := dValue;
    end;
    otRaw:
    begin
      RawPtr  := OCIRawPtr(Session.envhp, PPointer(ValuePtr)^);
      RawSize := OCIRawSize(Session.envhp, PPointer(ValuePtr)^);
      SetLength(s, RawSize * 2);
      for i := 0 to RawSize - 1 do
      begin
        s[i * 2 + 1] := HexDigits[RawPtr[i] shr 4];
        s[i * 2 + 2] := HexDigits[RawPtr[i] and $0F];
      end;
      Result := s;
    end;
    otCLOB, otBLOB, otBFile:
    begin
      LOB := TLOBLocator.Create(Session, AAttr.DataType);
      try
        LOB.ParentMonID := Self.MonID;
        LOB.Name := AAttr.Name;
        LOB.PLOB := ValuePtr;
        l := LOB.Size;
        if l = 0 then
        begin
          if Session.NullValue = nvNull then Result := Null else Result := Unassigned;
        end else begin
          LOB.Seek(0, soFromBeginning);
          if AAttr.DataType = otCLOB then
          begin
            Result := LOB.GetString(l);
          end else begin
            Result := VarArrayCreate([0, l - 1], varByte);
            p := VarArrayLock(Result);
            LOB.Read(p^, l);
            VarArrayUnlock(Result);
          end;
        end;
      finally
        LOB.Free;
      end;
    end;
    otReference, otObject:
    begin
      if Session.NullValue = nvNull then Result := Null else Result := Unassigned;
    end;
  else
    raise Exception.Create('Attribute type not supported (' + IntToStr(AAttr.DataType) + ').');
  end;
end;

// Get the variant value of an attribute
function TOracleObject.GetAttr(const AName: string): Variant;
var A: TObjectAttribute;
    M: TObjectMethod;
begin
  A := FindAttr(AName, False);
  if A <> nil then
    Result := InternalGetAttr(A, A.ValuePtr, A.NullPtr)
  else begin
    M := FindMeth(AName);
    if M = nil then
      raise Exception.Create('Unknown Attribute/Method: ' + AName)
    else
      Result := CallMethod(AName, parNone);
  end;
end;

(*
// Get the value of a string attribute
function TOracleObject.GetStringAttr(const AName: string): string;
var A: TObjectAttribute;
begin
  A := FindAttr(AName);
  if A.IsNull(Self) then
    Result := ''
  else
    Result := OCIStringPtr(Session.envhp, PPointer(A.ValuePtr(Self))^);
end;

// Get the value of an integer attribute
function TOracleObject.GetIntegerAttr(const AName: string): Integer;
var A: TObjectAttribute;
begin
  A := FindAttr(AName);
  if A.IsNull(Self) then
    Result := 0
  else
    OCICall(OCINumberToInt(errhp, A.ValuePtr(Self), SizeOf(Integer), OCI_NUMBER_SIGNED, Result));
end;

// Get the value of a float attribute
function TOracleObject.GetFloatAttr(const AName: string): Double;
var A: TObjectAttribute;
begin
  A := FindAttr(AName);
  if A.IsNull(Self) then
    Result := 0
  else
    OCICall(OCINumberToReal(errhp, A.ValuePtr(Self), SizeOf(Double), Result));
end;

// Get the value of a date attribute
function TOracleObject.GetDateAttr(const AName: string): TDateTime;
var A: TObjectAttribute;
begin
  A := FindAttr(AName);
  if A.IsNull(Self) then
    Result := 0
  else
    OCIToDelphiDate(A.ValuePtr(Self), Result);
end;
*)

// Get a Reference instance to the object itself
function TOracleObject.Reference: TOracleReference;
begin
  if FReference = nil then
  begin
    FReference := TOracleReference.New(Session, RefTDO, TypeName, Self.MonID, 'Reference');
    OCICall(OCIObjectGetObjectRef(Session.envhp, errhp, Instance, FReference.PRef^));
    OCICall(OCIObjectPin(Session.envhp, errhp, RefTDO, nil, OCI_PIN_ANY,
                         OCI_DURATION_SESSION, OCI_LOCK_NONE, FReference.TDO));
  end;
  Result := FReference;
end;

// Clear lists of sub-objects
procedure TOracleObject.ClearLists(FreeLists: Boolean);
var i: Integer;
begin
  if InstanceOwner then ;
  // Free the embedded object list
  if ObjList <> nil then
  begin
    for i := 0 to ObjList.Count - 1 do TOracleObject(ObjList.Objects[i]).Free;
    if FreeLists then ObjList.Free else ObjList.Clear;
  end;
  // Free the reference list
  if RefList <> nil then
  begin
    for i := 0 to RefList.Count - 1 do TOracleReference(RefList.Objects[i]).Free;
    if FreeLists then RefList.Free else RefList.Clear;
  end;
  // Free the LOB list
  if LOBList <> nil then
  begin
    for i := 0 to LOBList.Count - 1 do TLOBLocator(LOBList.Objects[i]).Free;
    if FreeLists then LOBList.Free else LOBList.Clear;
  end;
end;

// Get a TOracleObject instance of an embedded object attribute
function TOracleObject.ObjAttr(const AName: string): TOracleObject;
var s: string;
    Index: Integer;
    A: TObjectAttribute;
begin
  // Always handle attribute names as uppercase
  s := AnsiUpperCase(AName);
  // Create the object list if necessary
  if ObjList = nil then ObjList := TStringList.Create;
  // Check if the object is already on the list
  Index := ObjList.IndexOf(s);
  if Index >= 0 then
    Result := ObjList.Objects[Index] as TOracleObject
  else begin
    // It's not on the list, create and add it
    A := FindAttr(s, True);
    if A.DataType <> otObject then
      raise Exception.Create('Attribute ' + AName + ' is not an object');
    Result := TOracleObject.New(Session, Self.MonID, AName);
    try
      Result.SetInstance(A.ValuePtr, A.NullPtr, A.RefTDO, A.TypeName);
      // This TOracleObject does not 'own' the instance, it is embedded!
      Result.InstanceOwner := False;
      if Owner <> nil then Result.Owner := Owner else Result.Owner := Self;
      ObjList.AddObject(s, Result);
    except
      begin
        Result.Free;
        raise;
      end;
    end;
  end;
end;

// Get a TOracleReference instance of a Reference attribute
function TOracleObject.RefAttr(const AName: string): TOracleReference;
var s: string;
    Index: Integer;
    A: TObjectAttribute;
begin
  // Always handle attribute names as uppercase
  s := AnsiUpperCase(AName);
  // Create the reference list if necessary
  if RefList = nil then RefList := TStringList.Create;
  // Check if the reference is already on the list
  Index := RefList.IndexOf(s);
  if Index >= 0 then
    Result := RefList.Objects[Index] as TOracleReference
  else begin
    // It's not on the list, create and add it
    A := FindAttr(s, True);
    if A.DataType <> otReference then
      raise Exception.Create('Attribute ' + AName + ' is not a reference');
    Result := TOracleReference.New(Session, A.RefTDO, A.TypeName, Self.MonID, AName);
    try
      // This TOracleReference does not 'own' the reference
      Result.PRef := A.ValuePtr;
      Result.NullStruct := A.NullPtr;
      Result.Owner := Self;
      Result.OwnerAttrName := AName;
      RefList.AddObject(s, Result);
    except
      begin
        Result.Free;
        raise;
      end;
    end;
  end;
end;

// Get a TLOBLocator instance of a LOB attribute
function TOracleObject.LOBAttr(const AName: string): TLOBLocator;
var s: string;
    Index: Integer;
    A: TObjectAttribute;
begin
  // Always handle attribute names as uppercase
  s := AnsiUpperCase(AName);
  // Create the LOB list if necessary
  if LOBList = nil then LOBList := TStringList.Create;
  // Check if the LOB is already on the list
  Index := LOBList.IndexOf(s);
  if Index >= 0 then
    Result := LOBList.Objects[Index] as TLOBLocator
  else begin
    // It's not on the list, create and add it
    A := FindAttr(s, True);
    if not (A.DataType in [otCLOB, otBLOB, otBFile]) then
      raise Exception.Create('Attribute ' + AName + ' is not a LOB');
    Result := TLOBLocator.Create(Session, A.DataType);
    try
      Result.ParentMonID := Self.MonID;
      Result.Name := AName;
      // This TLOBLocator does not 'own' the LOB
      Result.Owner := Self;
      Result.NullStruct := A.NullPtr;
      Result.OwnerAttrName := AName;
      Result.PLOB := A.ValuePtr;
      Result.CheckNilLOB;
      LOBList.AddObject(s, Result);
    except
      begin
        Result.Free;
        raise;
      end;
    end;
  end;
end;

// Clear an attribute: set it to null
procedure TOracleObject.ClearAttr(const AName: string);
begin
  FindAttr(AName, True).NullPtr[0] := OCI_IND_NULL;
  AttrModified(AName);
end;

// Signal attribute modified
procedure TOracleObject.AttrModified(const AName: string);
var s: string;
    i: Integer;
begin
  // Mark the this instance updated
  Modified := True;
  // Set all embedding objects to not null
  s := AName;
  for i := Length(AName) downto 1 do
  begin
    if s[i] = '.' then
    begin
      SetLength(s, i - 1);
      FindAttr(s, True).NullPtr[0] := OCI_IND_NOTNULL;
    end;
  end;
  // Set this instance to not null
  NullStruct[0] := OCI_IND_NOTNULL;
end;

// Set the variant value of an attribute
procedure TOracleObject.InternalSetAttr(AAttr: TObjectAttribute; ValuePtr: Pointer;
                                        NullPtr: Psb2Array; const Value: Variant);
var s: string;
    fValue: Double;
    dValue: TDateTime;
    LOB: TLOBLocator;
    LOBSize: Integer;
    P: Pointer;
    RawSize: Integer;
    RawPtr: Pub1Array;
    i: Integer;
    ABufType: sb2;
    ABufSize: sb4;
    NumberAsString, Decimals: Boolean;
    Digits1, Digits2: Integer;
    Fmt: string;

    function HexValue(c: Char): Integer;
    begin
      Result := Ord(c) - Ord('0');
      if Result > 9 then Result := Ord(UpCase(c)) - Ord('A') + 10;
      if (Result < 0) or (Result > 15) then
        raise Exception.Create('Error converting hexadecimal string');
    end;

begin
  // If the value is null, just clear it
  if VarIsEmpty(Value) or VarIsNull(Value) then
    NullPtr[0] := OCI_IND_NULL
  else begin
    // Convert the variant value to this data type and set the attribute
    case AAttr.DataType of
      otString:
      begin
        s := RemoveCR(string(Value), Session);
        if s = '' then
          NullPtr[0] := OCI_IND_NULL
        else begin
          OCICall(OCIStringAssignText(Session.envhp, errhp, PChar(s), Length(s),
                  Pointer(ValuePtr^)));
          NullPtr[0] := OCI_IND_NOTNULL;
        end;
      end;
      otFloat, otInteger:
      begin
        NumberAsString := False;
        // Is this number passed as a string?
        if ((VarType(Value) = varString) or (VarType(Value) = varOleStr)) then
        begin
          // Check if it should be converted as an oracle number string, keeping its precision
          Session.GetNumberDataType(AAttr.Precision, AAttr.Scale, False, ABufType, ABufSize);
          if ABufType = otString then
          begin
            NumberAsString := True;
            s := Value;
            // Empty strings are treated as null
            if s = '' then
              NullPtr[0] := OCI_IND_NULL
            else begin
              // Determine the format mask
              Digits1 := 0;
              Digits2 := 0;
              Decimals := False;
              for i := 1 to Length(s) do
              begin
                if s[i] in [',', '.'] then Decimals := True;
                if s[i] in ['0' .. '9'] then
                  if Decimals then Inc(Digits2) else Inc(Digits1);
              end;
              if Decimals then
              begin
                SetLength(Fmt, Digits1 + Digits2 + 1);
                FillChar(Fmt[1], Length(Fmt), '9');
                Fmt[Digits1 + 1] := 'D';
              end else begin
                SetLength(Fmt, Digits1);
                FillChar(Fmt[1], Length(Fmt), '9');
              end;
              // Convert the string
              OCICall(OCINumberFromText(errhp, PChar(s), Length(s), PChar(Fmt), Length(Fmt), '', 0, ValuePtr));
              NullPtr[0] := OCI_IND_NOTNULL;
            end;
          end;
        end;
        if not NumberAsString then
        begin
          // Normal conversion of variant to double
          fValue := Value;
          OCICall(OCINumberFromReal(errhp, @fValue, SizeOf(fValue), ValuePtr));
          NullPtr[0] := OCI_IND_NOTNULL;
        end;
      end;
      otDate:
      begin
        if VariantIsString(Value) then
          dValue := StrToDateTime(Value)
        else
          dValue := Value;
        if (dValue = 0) and (Session.Preferences.ZeroDateIsNull) then
          NullPtr[0] := OCI_IND_NULL
        else begin
          DelphiToOCIDate(dValue, ValuePtr);
          NullPtr[0] := OCI_IND_NOTNULL;
        end;
      end;
      otRaw:
      begin
        s := Value;
        if s = '' then
          NullPtr[0] := OCI_IND_NULL
        else begin
          NullPtr[0] := OCI_IND_NOTNULL;
          RawSize := Length(s) div 2;
          GetMem(RawPtr, RawSize);
          try
            for i := 0 to RawSize - 1 do
              RawPtr[i] := HexValue(s[i * 2 + 1]) * 16 + HexValue(s[i * 2 + 2]);
            OCICall(OCIRawAssignBytes(Session.envhp, errhp, RawPtr, RawSize, PPointer(ValuePtr)^));
          finally
            FreeMem(RawPtr, RawSize);
          end;
        end;
      end;
      otBLOB:
      begin
        if ((VarType(Value) and VarTypeMask) <> varByte) or
           (not VarIsArray(Value)) or (VarArrayDimCount(Value) <> 1) then
          raise Exception.Create('Only one-dimensional array of bytes allowed for BLOB');
        // If the LOB Locator is Null, create an empty LOB, Flush + Refresh the object
        LOB := TLOBLocator.Create(Session, AAttr.DataType);
        try
          LOB.ParentMonID := Self.MonID;
          LOB.Name := AAttr.Name;
          LOB.Owner := Self;
          LOB.PLOB := ValuePtr;
          LOB.NullStruct := NullPtr;
          if not LOB.IsNull then
            BaseObject.Lock
          else begin
            if IsElement then
              raise Exception.Create('Cannot assign value to null-LOB in a collection element');
            LOB.SetEmpty;
            BaseObject.Flush;
            BaseObject.Refresh;
          end;
          LOBSize := VarArrayHighBound(Value, 1) - VarArrayLowBound(Value, 1) + 1;
          P := VarArrayLock(Value);
          try
            LOB.Seek(0, soFromBeginning);
            if LOBSize > 0 then LOB.Write(P^, LOBSize);
            LOB.Trim;
          finally
            VarArrayUnlock(Value);
          end;
        finally
          LOB.Free;
        end;
      end;
      otCLOB:
      begin
        // If the LOB Locator is Null, create an empty LOB, Flush + Refresh the object
        LOB := TLOBLocator.Create(Session, AAttr.DataType);
        try
          LOB.ParentMonID := Self.MonID;
          LOB.Name := AAttr.Name;
          LOB.Owner := Self;
          LOB.PLOB := ValuePtr;
          LOB.NullStruct := NullPtr;
          if not LOB.IsNull then
            BaseObject.Lock
          else begin
            if IsElement then
              raise Exception.Create('Cannot assign value to null-LOB in a collection element');
            LOB.SetEmpty;
            BaseObject.Flush;
            BaseObject.Refresh;
          end;
          s := RemoveCR(string(Value), Session);
          LOB.Seek(0, soFromBeginning);
          LOB.Write(s[1], Length(s));
          LOB.Trim;
        finally
          LOB.Free;
        end;
      end;
    else
      raise Exception.Create('Attribute cannot be set');
    end;
  end;
end;

// Set the variant value of an attribute
procedure TOracleObject.SetAttr(const AName: string; const Value: Variant);
var A: TObjectAttribute;
begin
  A := FindAttr(AName, True);
  InternalSetAttr(A, A.ValuePtr, A.NullPtr, Value);
  AttrModified(AName);
end;

(*
// Set the value of a string attribute
procedure TOracleObject.SetStringAttr(const AName: string; const NewValue: string);
var A: TObjectAttribute;
begin
  A := FindAttr(AName);
  if NewValue = '' then
    A.NullPtr(Self)[0] := OCI_IND_NULL
  else begin
    OCICall(OCIStringAssignText(Session.envhp, errhp, PChar(NewValue),
                                Length(NewValue), A.ValuePPtr(Self)^));
    A.NullPtr(Self)[0] := OCI_IND_NOTNULL;
  end;
end;

// Set the value of an integer attribute
procedure TOracleObject.SetIntegerAttr(const AName: string; const NewValue: Integer);
var A: TObjectAttribute;
begin
  A := FindAttr(AName);
  OCICall(OCINumberFromInt(errhp, @NewValue, SizeOf(NewValue),
                           OCI_NUMBER_SIGNED, A.ValuePtr(Self)));
  A.NullPtr(Self)[0] := OCI_IND_NOTNULL;
end;

// Set the value of a float attribute
procedure TOracleObject.SetFloatAttr(const AName: string; const NewValue: Double);
var A: TObjectAttribute;
begin
  A := FindAttr(AName);
  OCICall(OCINumberFromReal(errhp, @NewValue, SizeOf(NewValue), A.ValuePtr(Self)));
  A.NullPtr(Self)[0] := OCI_IND_NOTNULL;
end;

// Set the value of a date attribute
procedure TOracleObject.SetDateAttr(const AName: string; const NewValue: TDateTime);
var A: TObjectAttribute;
begin
  A := FindAttr(AName);
  if NewValue = 0 then
    A.NullPtr(Self)[0] := OCI_IND_NULL
  else begin
    DelphiToOCIDate(NewValue, A.ValuePtr(Self));
    A.NullPtr(Self)[0] := OCI_IND_NOTNULL;
  end;
end;
*)

// Flush a modified instance to the database server
procedure TOracleObject.Flush;
begin
  CheckPersistent('Flush');
  if MonitorPresent then SendStartActivity('Object.Flush');
  try
    OCICall(OCIObjectFlush(Session.envhp, errhp, Instance));
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

// Refresh an instance from the database server
procedure TOracleObject.Refresh;
begin
  CheckPersistent('Refresh');
  Modified := False;
  if MonitorPresent then SendStartActivity('Object.Refresh');
  try
    OCICall(OCIObjectRefresh(Session.envhp, errhp, Instance));
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

// Assign one object instance to the other
procedure TOracleObject.Assign(Source: TOracleObject);
var i, SourceCount: Integer;
begin
  CheckAssign(Source, 'TOracleObject');
  if IsCollection then TrimElements(ElementCount);
  OCICall(OCIObjectCopy(Session.envhp, errhp, Session.svchp,
                        Source.Instance, Source.NullStruct, Instance, NullStruct,
                        TDO, OCI_DURATION_SESSION, OCI_DEFAULT));
  if IsCollection then
  begin
    SourceCount := Source.ElementCount;
    if ElementCount <> SourceCount then
    begin
      for i := 0 to SourceCount - 1 do
      begin
        if ElemAttr.DataType = otObject then
          ObjElements[i] := Source.ObjElements[i]
        else if ElemAttr.DataType = otReference then
          RefElements[i] := Source.RefElements[i]
        else if ElemAttr.DataType in [otCLOB, otBLOB, otBFile] then
          LOBElements[i] := Source.LOBElements[i]
        else
          Elements[i] := Source.Elements[i];
      end;
    end;
  end;
  if Owner <> nil then Owner.AttrModified(OwnerAttrName) else Modified := True;
end;

// Delete a persistent standalone object
procedure TOracleObject.Delete;
begin
  CheckPersistent('Delete');
  OCICall(OCIObjectMarkDelete(Session.envhp, errhp, Instance));
end;

// Determine if an object exists on the server
function TOracleObject.Exists: Boolean;
var b: LongBool;
begin
  OCICall(OCIObjectExists(Session.envhp, errhp, Instance, b));
  Result := b;
end;

// Determine if an object is locked
function TOracleObject.IsLocked: Boolean;
var b: LongBool;
begin
  OCICall(OCIObjectIsLocked(Session.envhp, errhp, Instance, b));
  Result := b;
end;

// Lock an object
procedure TOracleObject.Lock;
begin
  CheckPersistent('Lock');
  if MonitorPresent then SendStartActivity('Object.Lock');
  try
    OCICall(OCIObjectLock(Session.envhp, errhp, Instance));
  except
    on E:Exception do
    begin
      if MonitorPresent then SendEndActivity('', E.Message);
      raise;
    end;
  end;
  if MonitorPresent then SendEndActivity('', '');
end;

// Check if an object is standalone & persistent
procedure TOracleObject.CheckPersistent(const Action: string);
begin
  if (Owner <> nil) or ((not Pinned) and (Table = nil)) then
    raise Exception.Create(Action + ' is only valid for persistent standalone objects');
end;

// Check collection
procedure TOracleObject.CheckCollection(ATypeCode: OCITypeCode; const Action: string);
var s: string;
begin
  case ATypeCode of
     OCI_TYPECODE_TABLE: s := 'nested table';
    OCI_TYPECODE_VARRAY: s := 'varray';
  else
    s := 'collection';
  end;
  if (not IsCollection) or ((ATypeCode <> 0) and (CollType <> ATypeCode)) then
    raise Exception.Create(Action + ' only valid for a ' + s);
end;

// Determine if an object is a named collection
function TOracleObject.IsCollection: Boolean;
begin
  // Object must be described
  Describe;
  // Check the Type code
  IsCollection := (ObjectType = OCI_TYPECODE_NAMEDCOLLECTION);
end;

// Determine if an object is an element of a collection
function TOracleObject.IsElement: Boolean;
begin
  Result := (Owner <> nil) and Owner.IsCollection;
end;

// Determine if an object is a table
function TOracleObject.IsTable: Boolean;
begin
  // Object must be described
  Describe;
  // Check the Type code
  IsTable := (CollType = OCI_TYPECODE_TABLE);
end;

// Determine if an object is a varray
function TOracleObject.IsArray: Boolean;
begin
  // Object must be described
  Describe;
  // Check the Type code
  IsArray := (CollType = OCI_TYPECODE_VARRAY);
end;

// Return the number of elements in a collection
function TOracleObject.ElementCount: Integer;
begin
  // Only valid for collections
  CheckCollection(0, 'ElementCount');
  OCICall(OCICollSize(Session.envhp, errhp, Instance, ub4(Result)));
end;

// Determine if an element exists at a given index
function TOracleObject.ElementExists(Index: Integer): Boolean;
var Exists: LongBool;
    Elem: Pointer;
    ElemInd: Psb2Array;
begin
  // Only valid for collections
  CheckCollection(0, 'ElementExists');
  // Get the element
  OCICall(OCICollGetElem(Session.envhp, errhp, Instance, Index, Exists, Elem, ElemInd));
  // If it exists, return a the value, else return null
  Result := Exists;
end;

// Return the number of elements in a collection
function TOracleObject.MaxElements: Integer;
begin
  // Only valid for collections
  CheckCollection(0, 'MaxElements');
  Result := OCICollMax(Session.envhp, Instance);
end;

// Trim the collection to the given count
procedure TOracleObject.TrimElements(Count: Integer);
var TrimNum: Integer;
begin
  // Only valid for collections
  CheckCollection(0, 'TrimElements');
  // Calculate the number of elements that need to be removed
  if Count = 0 then NullStruct[0] := OCI_IND_NULL;
  TrimNum := ElementCount - Count;
  if TrimNum > 0 then OCICall(OCICollTrim(Session.envhp, errhp, TrimNum, Instance));
  Modified := True;
end;

// Delete the element at the given index
procedure TOracleObject.DeleteElement(Index: Integer);
begin
  // Only valid for table collections
  CheckCollection(OCI_TYPECODE_TABLE, 'DeleteElement');
  // Delete the element
  OCICall(OCITableDelete(Session.envhp, errhp, Index, Instance));
  Modified := True;
end;

// Return the value of an element at the given index
function TOracleObject.GetElement(Index: Integer): Variant;
var Exists: LongBool;
    Elem: Pointer;
    ElemInd: Psb2Array;
begin
  // Only valid for collections
  CheckCollection(0, 'GetElement');
  // Get the element
  OCICall(OCICollGetElem(Session.envhp, errhp, Instance, Index, Exists, Elem, ElemInd));
  // If it exists, return a the value, else return null
  if not Exists then
  begin
    if Session.NullValue = nvNull then Result := Null else Result := Unassigned;
  end else begin
    Result := InternalGetAttr(ElemAttr, Elem, ElemInd);
  end;
end;

// Set the value of an element at the given index
procedure TOracleObject.SetElement(Index: Integer; const Value: Variant);
var Exists: LongBool;
    Elem: Pointer;
    ElemInd: Psb2Array;
begin
  // Only valid for collections
  CheckCollection(0, 'SetElement');
  // Get the element
  OCICall(OCICollGetElem(Session.envhp, errhp, Instance, Index, Exists, Elem, ElemInd));
  // If it does not exist, create it and retry
  if not Exists then
  begin
    NewElement(Index);
    OCICall(OCICollGetElem(Session.envhp, errhp, Instance, Index, Exists, Elem, ElemInd));
    if not Exists then
      raise Exception.Create('BUG: Element does not exist after creation');
  end;
//    raise Exception.Create('Element at position ' + IntToStr(Index) + ' does not exist');
  // Set the value
  InternalSetAttr(ElemAttr, Elem, ElemInd, Value);
  Modified := True;
end;

// Create a new element at the given index
procedure TOracleObject.NewElement(Index: Integer);
var NewElem: Pointer;
    NewElemInd: Psb2Array;
    NullInd: sb2;
    ElemTDO: OCIType;
begin
  if ElemAttr.DataType = otObject then
  begin
    OCICall(OCIObjectPin(Session.envhp, errhp, ElemAttr.RefTDO, nil, OCI_PIN_ANY,
                         OCI_DURATION_SESSION, OCI_LOCK_NONE, ElemTDO));
    OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, OCI_TYPECODE_OBJECT,
                         ElemTDO, nil, OCI_DURATION_SESSION, True, NewElem));
    OCICall(OCIObjectUnpin(Session.envhp, errhp, ElemTDO));
    OCICall(OCIObjectGetInd(Session.envhp, errhp, NewElem, NewElemInd));
    NewElemInd[0] := OCI_IND_NULL;
  end else begin
    NullInd := OCI_IND_NULL;
    NewElemInd := @NullInd;
    OCICall(OCIObjectNew(Session.envhp, errhp, Session.svchp, ElemAttr.TypeCode,
                         nil, nil, OCI_DURATION_SESSION, True, NewElem));
  end;
  if Index = ElementCount then
    OCICall(OCICollAppend(Session.envhp, errhp, NewElem, NewElemInd, Instance))
  else
    OCICall(OCICollAssignElem(Session.envhp, errhp, Index, NewElem, NewElemInd, Instance));
  OCICall(OCIObjectFree(Session.envhp, errhp, NewElem, OCI_DEFAULT));
  NullStruct[0] := OCI_IND_NOTNULL;
  Modified := True;
end;

// Return the object element at the given index
function TOracleObject.GetObjElement(Index: Integer): TOracleObject;
var Exists: LongBool;
    Elem: Pointer;
    ElemInd: Psb2Array;
begin
  // Only valid for collections
  CheckCollection(0, 'ObjElement');
  // Only valid for an object collection
  if ElemAttr.DataType <> otObject then
    raise Exception.Create('ObjElement only valid for an object collection');
  // Get the element
  OCICall(OCICollGetElem(Session.envhp, errhp, Instance, Index, Exists, Elem, ElemInd));
  // If it exists, return a TOracleObject instance, else create it and retry
  if not Exists then
  begin
    Result := nil;
    Exit;
  (*
    NewElement(Index);
    OCICall(OCICollGetElem(Session.envhp, errhp, Instance, Index, Exists, Elem, ElemInd));
    if not Exists then
      raise Exception.Create('BUG: Element does not exist after creation');
   *)
  end;
  if ElemObj = nil then
  begin
    ElemObj := TOracleObject.New(Session, Self.MonID, 'ObjElement');
    ElemObj.InstanceOwner := False;
    ElemObj.Owner := Self;
  end;
  ElemObj.SetInstance(Elem, ElemInd, ElemAttr.RefTDO, ElemAttr.TypeName);
  Result := ElemObj;
end;

// Set the object element at the given index
procedure TOracleObject.SetObjElement(Index: Integer; Value: TOracleObject);
begin
  if Index = ElementCount then
    OCICall(OCICollAppend(Session.envhp, errhp, Value.Instance, Value.NullStruct, Instance))
  else
    OCICall(OCICollAssignElem(Session.envhp, errhp, Index, Value.Instance, Value.NullStruct, Instance));
  NullStruct[0] := OCI_IND_NOTNULL;
  Modified := True;
end;

// Return the Reference element at the given index
function TOracleObject.GetRefElement(Index: Integer): TOracleReference;
var Exists: LongBool;
    Elem: Pointer;
    ElemInd: Psb2Array;
begin
  // Only valid for collections
  CheckCollection(0, 'RefElement');
  // Only valid for a reference collection
  if ElemAttr.DataType <> otReference then
    raise Exception.Create('RefElement only valid for a reference collection');
  // Get the element
  OCICall(OCICollGetElem(Session.envhp, errhp, Instance, Index, Exists, Elem, ElemInd));
  // If it exists, return a TOracleReference instance, else return nil
  if not Exists then
    Result := nil
  else begin
    if ElemRef = nil then
    begin
      ElemRef := TOracleReference.New(Session, ElemAttr.RefTDO, ElemAttr.TypeName, Self.MonID, 'RefElement');
      ElemRef.Owner := Self;
    end;
    ElemRef.PRef := Elem;
    ElemRef.NullStruct := ElemInd;
    Result := ElemRef;
  end;
end;

// Set the reference element at the given index
procedure TOracleObject.SetRefElement(Index: Integer; Value: TOracleReference);
begin
  if Index = ElementCount then
    OCICall(OCICollAppend(Session.envhp, errhp, Value.PRef^, Value.NullStruct, Instance))
  else
    OCICall(OCICollAssignElem(Session.envhp, errhp, Index, Value.PRef^, Value.NullStruct, Instance));
  NullStruct[0] := OCI_IND_NOTNULL;
  Modified := True;
end;

// Return the LOB element at the given index
function TOracleObject.GetLOBElement(Index: Integer): TLOBLocator;
var Exists: LongBool;
    Elem: Pointer;
    ElemInd: Psb2Array;
begin
  // Only valid for collections
  CheckCollection(0, 'LOBElement');
  // Only valid for a LOB collection
  if not (ElemAttr.DataType in [otCLOB, otBLOB, otBFile]) then
    raise Exception.Create('LOBElement only valid for a LOB collection');
  // Get the element
  OCICall(OCICollGetElem(Session.envhp, errhp, Instance, Index, Exists, Elem, ElemInd));
  // If it exists, return a TLOBLocator instance, else return nil
  if not Exists then
    Result := nil
  else begin
    if ElemLOB = nil then
    begin
      ElemLOB := TLOBLocator.Create(Session, ElemAttr.DataType);
      ElemLOB.ParentMonID := Self.MonID;
      ElemLOB.Name := 'LOBElement';
      ElemLOB.Owner := Self;
    end;
    ElemLOB.PLOB := Elem;
    ElemLOB.NullStruct := ElemInd;
    ElemLOB.CheckNilLOB;
    Result := ElemLOB;
  end;
end;

// Set the LOB element at the given index
procedure TOracleObject.SetLOBElement(Index: Integer; Value: TLOBLocator);
var LOB: TLOBLocator;
begin
  if Index = ElementCount then
  begin
    if not Value.IsNull then
      OCICall(OCICollAppend(Session.envhp, errhp, Value.PLOB^, Value.NullStruct, Instance))
    else begin
      // Due to an OCI bug (?) we cannot assign a NULL LOB
      // Create a new, empty LOB, assign it, and set the result to NULL
      LOB := TLOBLocator.Create(Session, Value.LOBType);
      try
        LOB.SetEmpty;
        OCICall(OCICollAppend(Session.envhp, errhp, LOB.PLOB^, LOB.NullStruct, Instance));
        LOBElements[Index].NullStruct[0] := OCI_IND_NULL;
      finally
        LOB.Free;
      end;
    end;
  end else begin
    if not Value.IsNull then
      OCICall(OCICollAssignElem(Session.envhp, errhp, Index, Value.PLOB^, Value.NullStruct, Instance))
    else begin
      // Due to an OCI bug (?) we cannot assign a NULL LOB
      // Create a new, empty LOB, assign it, and set the result to NULL
      LOB := TLOBLocator.Create(Session, Value.LOBType);
      try
        LOB.SetEmpty;
        OCICall(OCICollAssignElem(Session.envhp, errhp, Index, LOB.PLOB^, LOB.NullStruct, Instance));
        LOBElements[Index].NullStruct[0] := OCI_IND_NULL;
      finally
        LOB.Free;
      end;
    end;
  end;
  NullStruct[0] := OCI_IND_NOTNULL;
  Modified := True;
end;

// Add an element
procedure TOracleObject.AddElement;
begin
  CheckCollection(0, 'AddElement');
  NewElement(ElementCount);
end;

// Find a method
function TOracleObject.FindMeth(const AMethodName: string): TObjectMethod;
var i: Integer;
begin
  Result := nil;
  DescribeMethods;
  for i := 0 to MethodList.Count - 1 do
  begin
    if AnsiCompareText(AMethodName, TObjectMethod(MethodList.Items[i]).Name) = 0 then
    begin
      if Result = nil then
        Result := MethodList.Items[i] as TObjectMethod
      else
        raise Exception.Create('Overloaded methods not supported: ' + AMethodName +
                               #10'Use a PL/SQL block instead.');
    end;
  end;
  if Result = nil then
    raise Exception.Create('Unknown method: ' + AMethodName);
end;

// Convert a boolean to an integer
function TOracleObject.BoolToInt(const ABoolean: Variant): Variant;
begin
  if VarIsNull(ABoolean) or VarIsEmpty(ABoolean) then
  begin
    if (Session = nil) or (Session.NullValue = nvUnassigned) then
      Result := Unassigned
    else
      Result := Null;
  end else
    if Boolean(ABoolean) then Result := 1 else Result := 0;
end;

// Convert an integer to a boolean
function TOracleObject.IntToBool(const AnInteger: Variant): Variant;
begin
  if VarIsNull(AnInteger) or VarIsEmpty(AnInteger) then
  begin
    if (Session = nil) or (Session.NullValue = nvUnassigned) then
      Result := Unassigned
    else
      Result := Null;
  end else
    Result := (Integer(AnInteger) <> 0);
end;

// Call a method
function TOracleObject.InternalCallMethod(M: TObjectMethod;
                                          const Parameters: array of Variant;
                                          ComplexResult: TObject): Variant;
var P: TMethodParameter;
    ParSep, ParName, CallBlock, BoolBlock1, BoolBlock2, BoolName: string;
    i, LowBound, HighBound, BoolSeq: Integer;
    Named: Boolean;

    procedure LocalAddParam(const ParValue: Variant);
    begin
      if P.DataType <> otBoolean then
      begin
        CallBlock := CallBlock + ParSep + P.Name + ' => :' + P.Name;
        Query.DeclareVariable(P.Name, P.DataType);
        if P.DataType in [otCLOB, otBLOB, otBFile, otObject, otReference] then
          Query.SetComplexVariable(P.Name, TObject(LongInt(ParValue)))
        else
          Query.SetVariable(P.Name, ParValue);
      end else begin
        Inc(BoolSeq);
        BoolName := 'doa_boolean' + IntToStr(BoolSeq);
        CallBlock := CallBlock + ParSep + P.Name + ' => ' + BoolName;
        Query.DeclareVariable(P.Name, otInteger);
        Query.SetVariable(P.Name, BoolToInt(ParValue));
        if BoolBlock1 <> '' then BoolBlock1 := BoolBlock1 + #13#10;
        BoolBlock1 := BoolBlock1 + '  ' + BoolName +
          ' boolean := sys.diutil.int_to_bool(:' + P.Name + ');';
        if P.Mode <> pmIn then
        begin
          if BoolBlock2 <> '' then BoolBlock2 := BoolBlock2 + #13#10;
          BoolBlock2 := BoolBlock2 + '  :' + P.Name +
            ' := sys.diutil.bool_to_int(' + BoolName + ');';
        end;
      end;
      ParSep := ', ';
    end;

begin
  // Create query if necessary
  if Query = nil then
  begin
    Query := TOracleQuery.Create(nil);
    Query.Name := 'Query';
    Query.ParentMonID := MonID;
    Query.Session := Session;
  end;
  // Create a PL/SQL block to call the method
  Query.Clear;
  // For instance methods, set the instance
  if not M.IsStatic then
  begin
    Query.DeclareVariable('doa_object', otObject);
    Query.SetComplexVariable('doa_object', Self);
  end;
  with Query.SQL do
  begin
    BoolBlock1 := '';
    BoolBlock2 := '';
    BoolSeq := 0;
    if M.ResultParameter = nil then
      CallBlock := '  '
    else begin
      if M.ResultParameter.DataType = otBoolean then
      begin
        CallBlock := '  :doa_value := sys.diutil.bool_to_int(';
        Query.DeclareVariable('doa_value', otInteger);
      end else begin
        CallBlock := '  :doa_value := ';
        Query.DeclareVariable('doa_value', M.ResultParameter.DataType);
      end;
      if ComplexResult <> nil then
        Query.SetComplexVariable('doa_value', ComplexResult);
    end;
    if M.IsStatic then
      CallBlock := CallBlock + TypeName
    else
      CallBlock := CallBlock + 'doa_object';
     CallBlock := CallBlock + '."' + M.Name + '"(';
    // Create the parameters
    LowBound  := Low(Parameters);
    HighBound := High(Parameters);
    // If only parNone is passed, this means no parameters
    if (LowBound = 0) and (HighBound = 0) and
       (VarType(Parameters[0]) = varByte) and (Parameters[0] = 0) then
    begin
      HighBound := -1;
    end;
    // Determine if named or positional parameter mode is used
    Named := not Odd(HighBound - LowBound + 1);
    i := LowBound;
    while Named and (i <= HighBound) do
    begin
      Named := VariantIsString(Parameters[i]);
      if Named then Named := (M.ParameterByName(Parameters[i]) <> nil);
      Inc(i, 2);
    end;
    i := LowBound;
    ParSep := '';
    while i <= HighBound do
    begin
      // Find the parameter of this method
      if not Named then
      begin
        if i > M.ParameterList.Count - 1 then
          raise Exception.Create('Too many parameters for method ' + M.Name);
        P := M.ParameterList.Items[i] as TMethodParameter;
      end else begin
        ParName := Parameters[i];
        P := M.ParameterByName(ParName);
        if P = nil then
          raise Exception.Create('Parameter ' + ParName + ' does not exist for method ' + M.Name);
        Inc(i);
      end;
      // Add a variable for the parameter, convert booleans to integers
      LocalAddParam(Parameters[i]);
      Inc(i);
    end;
    // Add all missing out and in/out parameters
    for i := 0 to M.ParameterList.Count - 1 do
    begin
      P := M.ParameterList.Items[i] as TMethodParameter;
      ParName := P.Name;
      if (P.Mode <> pmIn) and (Query.FindVariable(ParName) < 0) then
      begin
        // Complex output parameters must be included
        if P.DataType in [otCLOB, otBLOB, otBFile, otObject, otReference] then
          raise Exception.Create('You must include complex output parameter ' + P.Name);
        LocalAddParam(Null);
      end;
    end;
    if (M.ResultParameter <> nil) and (M.ResultParameter.DataType = otBoolean) then
      CallBlock := CallBlock + '));'
    else
      CallBlock := CallBlock + ');';
    if (not M.IsStatic) or (BoolBlock1 <> '') then
      Add('declare');
    if not M.IsStatic then
      Add('  doa_object ' + TypeName + ';');
    if BoolBlock1 <> '' then
      Add(BoolBlock1);
    Add('begin');
    if not M.IsStatic then
      Add('  doa_object := :doa_object;');
    Add(CallBlock);
//  The following PL/SQL statement causes
//  "ORA-03113, End-of-file on communications channel"
    if ModifyingMethods and not M.IsStatic then Add('  :doa_object := doa_object;');
//  Therefore, methods that modify an object instance are not supported unless
//  the ModifyingMethods boolean is set to True
    if BoolBlock2 <> '' then Add(BoolBlock2);
    Add('end;');
  end;
  Query.Execute;
  if M.ResultParameter = nil then
  begin
    if Session.NullValue = nvNull then Result := Null else Result := nvUnassigned;
  end else begin
    if M.ResultParameter.DataType = otBoolean then
      Result := IntToBool(Query.GetVariable('doa_value'))
    else
      Result := Query.GetVariable('doa_value');
  end;
  LastMethod := M;
end;

// Call a method with a simple (non-complex) result
function TOracleObject.CallMethod(const AMethodName: string;
                                  const Parameters: array of Variant): Variant;
var M: TObjectMethod;
begin
  // Find the method
  M := FindMeth(AMethodName);
  // Check if has a complex result
  if (M.ResultParameter <> nil) and
     (M.ResultParameter.DataType in [otObject, otReference, otCLOB, otBLOB, otBFile]) then
    raise Exception.Create('Method ' + M.Name + ' has a complex result.' +
                           'Use CallComplexMethod instead');
  Result := InternalCallMethod(M, Parameters, nil);
end;

// Call a method with a complex result
procedure TOracleObject.CallComplexMethod(const AMethodName: string;
                                          const Parameters: array of Variant;
                                          Result: TObject);
var M: TObjectMethod;
begin
  // Find the method
  M := FindMeth(AMethodName);
  // Check if has a complex result
  if (M.ResultParameter = nil) or
     (not (M.ResultParameter.DataType in [otObject, otReference, otCLOB, otBLOB, otBFile])) then
    raise Exception.Create('Method ' + M.Name + ' does not have a complex result.' +
                           'Use CallMethod instead');
  InternalCallMethod(M, Parameters, Result);
end;

// Get the value of a parameter after calling a method
function TOracleObject.GetParameter(const ParameterId: Variant): Variant;
var P: TMethodParameter;
    Index: Integer;
begin
  if LastMethod = nil then
    raise Exception.Create('You must call a method before getting a parameter');
  if VariantIsString(ParameterId) then
  begin
    P := LastMethod.ParameterByName(ParameterId);
    if P = nil then
      raise Exception.Create('Parameter ' + ParameterId + ' does not exist for method ' + LastMethod.Name);
  end else begin
    Index := ParameterId;
    if (Index < 0) or (Index > LastMethod.ParameterList.Count - 1) then
      raise Exception.Create('Parameter ' + IntToStr(Index) + ' does not exist for method ' + LastMethod.Name);
    P := TMethodParameter(LastMethod.ParameterList.Items[Index]);
  end;
  if P.DataType in [otObject, otReference, otBLOB, otCLOB, otBFile] then
    raise Exception.Create('Complex parameter ' + P.Name + ' is passed by reference.' + #10 +
                           'Access the object of the complex parameter instead.');
  if P.DataType <> otBoolean then
    Result := Query.GetVariable(P.Name)
  else
    Result := IntToBool(Query.GetVariable(P.Name));
end;

function TOracleObject.GetAttrCount: Integer;
begin
  Result := AttrList.Count;
end;

function TOracleObject.GetAttrDef(Index: Integer): TObjectAttribute;
begin
  Result := AttrList.Items[Index] as TObjectAttribute;
end;

function TOracleObject.GetMethodCount: Integer;
begin
  DescribeMethods;
  Result := MethodList.Count;
end;

function TOracleObject.GetMethod(Index: Integer): TObjectMethod;
begin
  DescribeMethods;
  Result := MethodList.Items[Index] as TObjectMethod;
end;

function TOracleObject.MethodByName(const MethodName: string; OverloadIndex: Integer): TObjectMethod;
var i, oi: Integer;
begin
  DescribeMethods;
  oi := 0;
  for i := 0 to MethodList.Count - 1 do
  begin
    if AnsiCompareText(MethodName, Methods[i].Name) = 0 then
    begin
      Inc(oi);
      if oi >= OverloadIndex then
      begin
        Result := MethodList.Items[i] as TObjectMethod;
        Exit;
      end;
    end;
  end;
  Result := nil;
end;

function TOracleObject.GetMonID: Integer;
begin
  if FMonID = 0 then
  begin
    FMonID := GetNewMonID;
    if Name = '' then Name := 'OracleObject' + IntToStr(FMonID);
  end;
  Result := FMonID;
end;

procedure TOracleObject.SendToMonitor(Creation, Signal: Boolean);
begin
  if ((Creation xor SentToMonitor) or not Signal) and MonitorListening then
  begin
    SentToMonitor := Creation;
    AddMonObject(Creation, ckObject, MonID, ParentMonID, Self, Session, nil, Signal);
  end;
end;

procedure TOracleObject.SendStartActivity(const ADescription: string);
begin
  SendToMonitor(True, True);
  AddMonActivity(ckObject, Session.MonID, MonID, ParentMonID, Self,
    afStart, 0, ADescription, '', '', nil, nil, 0);
  MonActivityStartTime := GetTickCount;
end;

procedure TOracleObject.SendEndActivity(const ADescription, AResultMessage: string);
var t: LongInt;
begin
  if MonActivityStartTime <> 0 then
  begin
    t := MonActivityStartTime;
    MonActivityStartTime := 0;
    SendToMonitor(True, True);
    AddMonActivity(ckObject, Session.MonID, MonID, ParentMonID, Self,
      afEnd, 0, ADescription, '', AResultMessage, nil, nil, t);
  end;
end;

// TPLSQLTable object

constructor TPLSQLTable.Create(ATableSize, AStringSize: Integer);
begin
  FValues     := Unassigned;
  FTableSize  := ATableSize;
  if FTableSize <= 0 then FTableSize := 1;
  FStringSize := AStringSize;
end;

function TPLSQLTable.GetValue(Index: Integer): Variant;
begin
  Result := FValues[Index];
end;

procedure TPLSQLTable.SetValue(Index: Integer; const Value: Variant);
begin
  if Index > Count - 1 then Count := Index + 1; 
  FValues[Index] := Value;
end;

function TPLSQLTable.GetCount: Integer;
begin
  if VarIsArray(FValues) then
    Result := VarArrayHighBound(FValues, 1) + 1
  else
    Result := 0;
end;

procedure TPLSQLTable.SetCount(Value: Integer);
begin
  if Value = Count then Exit;
  if Value < 0 then Value := 0;
  if Value = 0 then
    FValues := Unassigned
  else begin
    if VarIsArray(FValues) then
      VarArrayRedim(FValues, Value - 1)
    else
      FValues := VarArrayCreate([0, Value - 1], varVariant)
  end;
  if Count > TableSize then TableSize := Count;
end;

procedure TPLSQLTable.SetTableSize(Value: Integer);
begin
  if Value = FTableSize then Exit;
  if Value <= 0 then Value := 1;
  FTableSize := Value;
  if Value < Count then Count := Value;
end;

procedure TPLSQLTable.Assign(Source: TPLSQLTable);
begin
  CheckAssign(Source, 'TPLSQLTable');
  FValues     := Source.FValues;
  FTableSize  := Source.FTableSize;
  FStringSize := Source.FStringSize;
end;

function TPLSQLTable.GetAsString: string;
var i: Integer;
begin
  Result := '';
  for i := 0 to Count - 1 do
  begin
    if i > 0 then Result := Result + #13#10;
    if not VarIsNull(Values[i]) then Result := Result + string(Values[i]);
  end;
end;

procedure TPLSQLTable.SetAsString(const Value: string);
var i: Integer;
    S: TStringList;
begin
  S := TStringList.Create;
  try
    S.Text := Value;
    Count := S.Count;
    for i := 0 to S.Count - 1 do Values[i] := S[i];
  finally
    S.Free;
  end;
end;

// TPLSQLRecord type

constructor TPLSQLRecord.Create(ASession: TOracleSession);
begin
  inherited Create;
end;

constructor TPLSQLRecord.CreateEmpty;
begin
  inherited Create;
end;

procedure TPLSQLRecord.Assign(Source: TPLSQLRecord);
begin
  if Source = nil then
    raise Exception.Create(ClassName + ': Cannot assign nil source');
end;


// TOracleCustomPackage object

constructor TOracleCustomPackage.Create(AOwner: TComponent);
begin
  inherited;
  OCPQuery := TOracleQuery.Create(nil);
  OCPQuery.Name := 'Query';
  OCPQuery.ParentMonID := MonID;
  FCriticalSection := TOracleCriticalSection.Create;
end;

destructor TOracleCustomPackage.Destroy;
begin
  SendToMonitor(False, True);
  if FSession <> nil then FSession.CustomPackages.Remove(Self);
  OCPQuery.Free;
  FCriticalSection.Free;
  if FPackageSpecification <> nil then FPackageSpecification.Free;
  inherited;
end;

procedure TOracleCustomPackage.SetSession(const Value: TOracleSession);
begin
  if FSession <> nil then FSession.CustomPackages.Remove(Self);
  SendToMonitor(False, True);
  if FSession <> nil then FMonID := 0;
  FSession := Value;
  OCPQuery.Session := Value;
  if FSession <> nil then FSession.CustomPackages.Add(Self);
end;

function TOracleCustomPackage.GetPackageSpecification: TStrings;
begin
  if FPackageSpecification = nil then
    FPackageSpecification := TStringList.Create
  else
    FPackageSpecification.Clear;
  Result := FPackageSpecification;
end;

procedure TOracleCustomPackage.SetCursor(Value: TCursor);
begin
  OCPQuery.Cursor := Value;
end;

function TOracleCustomPackage.GetCursor: TCursor;
begin
  Result := OCPQuery.Cursor;
end;

function TOracleCustomPackage.GetMonID: Integer;
begin
  if FMonID = 0 then FMonID := GetNewMonID;
  Result := FMonID;
end;

function TOracleCustomPackage.BoolToInt(const ABoolean: Variant): Variant;
begin
  if VarIsNull(ABoolean) or VarIsEmpty(ABoolean) then
  begin
    if (Session = nil) or (Session.NullValue = nvUnassigned) then
      Result := Unassigned
    else
      Result := Null;
  end else
    if Boolean(ABoolean) then Result := 1 else Result := 0;
end;

function TOracleCustomPackage.IntToBool(const AnInteger: Variant): Variant;
begin
  if VarIsNull(AnInteger) or VarIsEmpty(AnInteger) then
  begin
    if (Session = nil) or (Session.NullValue = nvUnassigned) then
      Result := Unassigned
    else
      Result := Null;
  end else
    Result := (Integer(AnInteger) <> 0);
end;

function TOracleCustomPackage.ConvertVariant(const Value: Variant): Variant;
var P: PByteArray;
    s: string;
    l: Integer;
begin
  if VarIsNull(Value) then
    Result := Unassigned
  else begin
    if not (VarIsArray(Value) and (VarType(Value) and VarTypeMask = varByte)) then
      Result := Value
    else begin
      P := VarArrayLock(Value);
      try
        l := VarArrayHighBound(Value, 1) + 1;
        SetLength(s, l);
        Move(p^, s[1], l);
        Result := s;
      finally
        VarArrayUnlock(Value);
      end;
    end;
  end;
end;

procedure TOracleCustomPackage.SendToMonitor(Creation, Signal: Boolean);
begin
  if ((Creation xor SentToMonitor) or not Signal) and MonitorListening then
  begin
    SentToMonitor := Creation;
    AddMonObject(Creation, ckPackage, MonID, 0, Self, Session, nil, Signal);
  end;
end;

procedure TOracleCustomPackage.GetQuery;
begin
  SendToMonitor(True, True);
  OCPQuery.Clear;
end;

procedure TOracleCustomPackage.ThreadAcquire;
begin
  FCriticalSection.Enter;
end;

procedure TOracleCustomPackage.ThreadRelease;
begin
  FCriticalSection.Leave;
end;

// Unit initialization & finalization

procedure FreeAllSessions;
var i: Integer;
begin
  with AllSessions.LockList do
  try
    for i := 0 to Count - 1 do
    try
      TOracleSession(Items[i]).LogOff;
    except
    end;
  finally
    AllSessions.UnlockList;
  end;
  AllSessions.Free;
  AllSessions := nil;
end;

initialization
begin
  // Create the Critical Section for logging
  LogSection := TOracleCriticalSection.Create;
  // Only if started from within IDE
  if not RunningFromIDE then LoadOracleWarnings;
  AllSessions := TThreadList.Create;
  MonIDCS     := TOracleCriticalSection.Create;
  // Initialize Variant constants for output parameter types
  parNone     := VarAsType(0, varByte);
  parString   := VarAsType(otString, varByte);
  parInteger  := VarAsType(otInteger, varByte);
  parFloat    := VarAsType(otFloat, varByte);
  parDate     := VarAsType(otDate, varByte);
  parBoolean  := VarAsType(otBoolean, varByte);
  // Create the internal session pool
  SessionPool := TOracleSessionPool.Create;
end;

finalization
begin
  FreeAllSessions;
  SessionPool.Free;
  DLLExit;
  MonIDCS.Free;
  OracleWarningList.Free;
  if Assigned(InternalMonitorFinalize) then InternalMonitorFinalize;
  LogSection.Free;
end;

end.



