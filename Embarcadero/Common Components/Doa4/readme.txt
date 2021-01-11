Direct Oracle Access 4.0.7.1
============================

Installation
============
To install the software, simply run the included executable. It will ask you
for the product code that you have received from us. After this, all files 
will be copied to a "Direct Oracle Access 407" subdirectory of the Delphi or
C++Builder root directory, for example:

  C:\Program Files\Borland\Delphi7\Direct Oracle Access 407

This directory contains a setup program, which can be automatically started.
The setup program will install the components and help file into the Delphi 
or C++Builder environment.

If you are currently using a previous version of Direct Oracle Access, you do
not need to uninstall it. The setup program will replace all existing files.

Documentation and examples can be found in the Doc and Demos subdirectories
of the Direct Oracle Access directory.


Restrictions in the Delphi 2005 version
=======================================
The following restrictions currently exist in the Delphi 2005 version:

- Win32 only, no support yet for .NET and C#.
- There is no integrated help. The help file is provided in the old format.

Upgrading from 3.4.x
====================
If you are upgrading from version 3.4.x, you can follow the same procedure
as mentioned above. 

If for some reason you wish to revert back to your original version after
installing 4.0, you first need to uninstall the current version via 
'Add/Remove Programs' in the Control Panel.

Compatibility issues
====================
The following behavior has changed:
- TOracleDataSet.QBEMode no longer uses variables for QBE values, but only 
  uses literal values
- TOracleQuery.Optimize now implicitly closes queries when done
- Timestamp fields are no longer queried as strings 
  (TOracleSession.Preferences.TimestampAsString)
- CLOB's and BLOB's are now passed as temporary LOB during 
  TOracleDataSet.Post (TOracleSession.Preferences.TemporaryLOB)

The package names have changed from doa34xx.* to doa40xx.*, where xx
indicates the name and version of your compiler (e.g. d5 for Delphi 5,
or c4 for C++Builder 4).


Enhancements in 4.0.7.1
=======================
* TOracleObject.Free could cause invalid handle exception


Enhancements in 4.0.7
=====================
* Support for Oracle10g binary_float and binary_double added
* Global LogActivity hook added to allow logging and timing of all database
  activities (see LogActivity.doc)
* Calling an Instant Client application from an Instant Client application 
  would fail
* Property editors, Oracle menu, and Query Buider now work in Delphi 2005
  (requires new Query Builder 1.2)
* Null CLOB's would always be inserted as empty_clob() for Delphi 5 and later
* TOracleScript now supports create or replace Java
* Fixed QBE issue with complex conditions
* Fixed TOracleQuery.Describe performance issue on 8.x clients
* TOracleQueue instances could not be reused after reconnecting a session


Enhancements in 4.0.6.2
=======================
* TOracleClientDataSet.FetchParams could cause "Parameter <name> not found"
  exception for Delphi / C++Builder 5 and later


Enhancements in 4.0.6.1
=======================
* Connecting through SQL*Net 2 could fail


Enhancements in 4.0.6
=====================
* Property TOracleDataSet.OracleDictionary.CharacterSize added
* Support for Oracle10g Instant Client added
* Support for Oracle10g EZCONNECT added
* TOracleDataSet.Locate could not search for fields with only spaces if
  TOracleSession.Preferences.TrimStringFields = False
* TOracleSession.InTransaction optimized. Oracle.OptimizeInTransaction can be set
  to False to fall back to previous unoptimized mode.
* TOracleDataSet Detail variables are now declared as CHAR when master field is a
  CHAR to prevent trailing space issues 
* Dataset and Navigator components were disable in Property Defaults Editor
* Provider Support function PSGetParams could raise "Parameter <name> not found"
  exception in IDE
* UseSingleEnvironment optimization removed due to stability issues
* Could not connect with usernames with special characters such as '-' and '.'
* Fetching temporary LOB's in a query or dataset would result in resource leaks
* Hints are preserved for TOracleDataSet.CountQueryHits
* Accessing a timestamp field or variable as TDateTime could cause a conversion
  error for milliseconds > 999.5
* TOracleSessionPool.AfterConnect event added


Enhancements in 4.0.5
=====================
* Oracle Home detection did not work correctly for Oracle10g client
* Setting TOracleSession.OptimizerGoal to anything but ogUnchanged would cause 
  ORA-01986 on Oracle10g
* QBE would not handle IN(...) properly for string fields
* QBE mode did not set size for TDBEdit's
* Improved PL/SQL Developer (version 5.1.6) interface 


Enhancements in 4.0.4
=====================
- After entering/leaving QBE mode in a master dataset, the primary
  key fields could be read-only
- StripDefaultDomain global variable added. When enabled, the default domain
  from sqlnet.ora (names.default_domain) will be stripped from aliases
- OracleCI.OCIVersion now returns correct value for OCI 9.0 and 9.2
- TOracleSession would incorrectly fall back to OCI7 mode on Oracle10g
- Updating/Inserting object fields could cause ORA-00900 error
- TOracleQueue.Dequeue would cause ORA-01036 if DequeueOptions.ConsumerName
  is specified
- TOracleQueue.MessageProperties.RecipientList added
- Support added for temporary LOB's for transient object instances
- Connection failures for a pooled session would cause an access violation
- QBE now supports Soundex function and 'sounds like' operator
- Fixed a QBE bug that would not allow operators and would not display string fields
  when a Dataset has QBEMode set at design time
- Added FailedLogonCount to OracleLogon unit to keep count of failed logon attempts
- Number columns without scale and precision would be reported with a scale of -127
  on 9.2.0.4 and later

Enhancements in 4.0.3
=====================
- Editing a dataset with a BLOB could cause could cause erroneous
  "Record changed by another user" message
- Fixed possible access violation when closing a TOracleQuery

Enhancements in 4.0.2
=====================
- QBE improvement: support null value and other values 
  (e.g. smith or null)
- Substitution variables were not multi-byte compliant for all 
  character sets
- Memo fields in a 3 tier application with  TDataSetProvider.ResolveToDataSet = True
  could cause erroneous "Record changed by another user" message
- Refreshing a BLOB or LONG RAW would cause a "stream read error"
- Password expiration did not handle ORA-28011
  (The account will expire soon; change your password now)
- Direct Path Loader could cause ORA-03113 on Oracle Net 8.1
- SetPassword Dialog would not clear password edit controls
- Primary key fields could be omitted from insert through 
  TDataSetProvider for detail datasets

Enhancements in 4.0.1
=====================
- QBE Fixes:
  > Could not query on number fields without an operator (ORA-00936)
  > "is not null" expression is now supported
  > Ignore Time option could cause ORA-01858
  > QBE Definition Editor could raise "Field <name> not found" if not
    all fields are persistent
- TOracleSessionPool with Max > 0 could cause hang-up
- Substitution variables were not multi-byte compliant
- TOracleScript had a problem with subsequent PL/SQL blocks

New features in Direct Oracle Access 4.0.0
==========================================
- New components and objects
  > TOracleQueue component added for dbms_aq support 
  > TOracleSessionPool component added for session pooling 
  > TOracleTimestamp object added for timestamp support 
  > TXMLType object added for XMLTYPE support 

- TOracleDataSet enhancements
  > Supports Object fields 
  > Supports Collections (nested table and varray) as detail datasets 
  > Supports Timestamp fields as TDateTimeField 
  > Supports XMLType fields as TMemoField 
  > QBE now supports operators: >, <, =, !=, not, like, between, in 
  > UniDirectional property added 
  > Support for Index Organized Tables (IOT) added 
  > CompressBLOBs property added for BLOB compression 
  > CompressionFactor runtime property added 
  > OnCompressBLOB and OnDecompressBLOB events added for custom
    compression 
  > Detachable property added to retain result set when session
    disconnects 
  > RefreshRecord now also refreshes CLOB, BLOB, BFILE, Long and
    Long Raw fields 
  > DeclareAndSet procedure added to declare and set a variable in
    one call 
  > If Optimize = False or Session.StatementCache = True, cursors
    are implicitly closed whenever possible 

- TOracleQuery enhancements
  > Supports Timestamp fields and variables as TOracleTimeStamp 
  > Supports XMLType fields and variables as TXMLType 
  > Scrollable query support added
    (requires Oracle9 + oracle bug fixes) 
  > FieldAsString now supports CLOB, BLOB, BFILE, Long and Long Raw
    and Reference data types 
  > DeclareAndSet procedure added to declare and set a variable in
    one call 
  > If Optimize = False or Session.StatementCache = True, cursors
    are implicitly closed whenever possible 

- Provider Support improvements
  > TOracleDataSet.ProviderOptions added 
  > Records applied through a TDataSetPrivider with
    ResolveToDataSet = False now also use the MessageTable 

- TOracleSession enhancements
  > StatementCache and StatementCacheSize added for 9.2 statement
    caching 
  > Pool property added to assign the session to a specific pool 
  > Preferences.NullObjectIsEmpty added 
  > Preferences.TemporaryLOB added 
  > Preferences.TimestampAsString added 

- TOracleSessionPool enhancements
  > Is now a component 
  > Min, Max and TimeOut properties added for tuning purposes 
  > CompressOld procedure added to remove idle sessions 
  > Homogeneous and Logon properties added 
  > StatementCache added 
  > PoolType property added for generic OCI 9.2 Pooling support 
  > Sessions[] property added 
  > Now checks connection when reserving an existing session from the
    pool 

- Temporary LOB support added
  > TLOBLocator.CreateTemporary constructor added 
  > TLOBLocator.Temporary property added 

- TOracleObject enhancements
  > TimestampAttr added for Timestamp support 
  > XMLAttr added for XMLTYPE support 

- TOracleLogon enhancemens
  > Picture property added 
  > Selecting an item with username/password from the history will
    immediately logon 

- TOracleScript enhacements
  > Editor can now handle more than 64K text 
  > ScanVariables property added to enable/disable variable
    substitution 
  > ColWidth property added to control the maximum length of
    displayed columns 
  > Added SET SCAN, FEEDBACK, ECHO, TERMOUT, EXITONERROR, COLWIDTH
    commands 

- Error handling enhancements
  > EOracleError.Instance property added 
  > EOracleError.Session property added 
  > Global OnOracleError event handler added 

- Designtime enhancements
  > Designtime Property Defaults tool added 
  > SQL property Editor "Print with Variables" button added 
  > Variables property Editor "Copy SetVariable call(s)" button added 

- Oracle Monitor enhancements
  > Support for all Query Plan columns with corresponding preference 
  > Step through Query Plan in order of execution 
  > DisableMonitor and EnableMonitor function added to disable/enable
    the Oracle Monitor from within an application 

- New compiler directives (requires source option)
  > NONVISUAL: removes all references to visual units for character
    based Linux servers 
  > NODATASET: removes the dataset from the package to support Delphi
    and C++Builder Personal Edition 

