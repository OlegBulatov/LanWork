
                        Ek RTF Report for Delphi
                      Version 1.70 beta (D4, D5, D6)
                               

CONTENTS

  1. Component description
  2. History
  3. License
  4. Installation
  5. Troubleshooting.
  6. Contact information

1. COMPONENT DESCRIPTION

  TEkRtf report is non visual component that allows you to use all 
power of MS Word or other rtf-compatible editor to create, preview, 
edit and print your reports. 

  How to use it:
 - create report template in MS Word
 - save it in RTF format
 - place TEkRTF component on form, fill required properties 

 - prepare data in your application
 - run report using one of Execute methods
 - run MS Word (or other editor) if you want to view, 
   edit or print your document
 
  For more information see help and demo application.

2. HISTORY

   Version 1.70
   ------------
   - created new component TEkUDFList for user defined functions 
   - new property UDFList in TEkRTF component
   - extended syntax of report template in according with UDF support

   Version 1.62
   ------------
   - more than 26 datasets support
   - fixed bug with FormatIndex=0 in event OnImageFormat
   - fixed bug with incorrect exception in method SetTemplateBuffer
   - created version for Delphi 6

   Version 1.6
   ------------
   - new methods for manipulating with report variables: 
     VarByName, ClearVars, CreateVar, FreeVar
   - extended format of scan block
   - new keyword \ScanFooter\
   - total and count functions sum(), ctn(), cts() for scan block commands
   - new format functions fdtm, ffixr, fnumr
   - properties DecimalRSeparator, DecimalRTerminator for using
     with "ffixr" and "fnumr" formats
   - new option eoDotAsColon
   - cached structure of dataset files

   IMPORTANT: In this version option eoDotAsColon is True by default.
              It means that all field names like \DataSet.Field\ will be
              considered as \DataSet:Field\
   
   If you use implicit cycles on MS Word table with field inside that has
   syntax \DataSet.Field\, you should replace it with \DataSet:Field\ and 
   use keywords \Scan(DataSet)\ and \endscan\

   If you still wish to use old (not reliable) method to make cycles, you 
   must set option eoDotAsColon to False in corresponded EKRTF components.



   Version 1.50
   ------------
   - "noeof" option in "Scan" keyword \Scan(DataSet)[,page][,noeof]\
     scan block will be missed on eof of scanned dataset
   - new keyword \ScanEntry\ 
   - extended syntax for fields with spaces in names 
   - optimized core of report engine
   - #11 will appear as "line break" control in output file,
     #12 will appear as "new page" control in output file

   Version 1.48a
   ------------
   - fixed bug in method ExecuteOpen when DB controls were not turned back
     to "enabled" status

   Version 1.48
   ------------
   - property ExecuteSuccessful (true if no errors)
   - property LastErrMsg (contains last error message if Execute report fails)
   - fixed bug with omitted exceptions
   - added additional checking to ExecuteOpen method

   Version 1.47
   ------------
   - "page" option in "Scan" keyword \Scan(DataSet)[,page]\
   - Extended syntax in field naming \DataSet:(FieldNumber)\

   Version 1.45
   ------------
   - ExecuteStream method
   - Flnk() hyperlink format function
   - ExecuteOpen works from console application

   Version 1.42
   ------------
   - SetTemplateBuffer, FreeTemplate  methods

   Version 1.40
   ------------
   - Nested Scan-endscan
   - events: OnScanBefore, OnScanRecord, OnScanEof
   - eoClearMissedFields option
   - Optimized tables processing used inside scan-endscan
   - Bug fixed with templates created in editors other than MS Word
     In some cases first word of paragraph was absent in output document

   Version 1.22
   ------------
   - Don't need DsgnIntf.dcu anymore
   - JPG support
   - graphics compatible options for using with most free and shareware RTF 
     editors
   - SizeXmm and SizeYmm properties - size in millimeters in ImageFormat


   Version 1.20
   ------------
   Added support for graphic, blob fields
   Added possibility of insertion of graphic files in report through the 
   report variables. Added event OnImageFormat. Added property ColorTable
   Bug fixed with "Scan" keyword on very first line of RTF document

   Version 1.14
   ------------
   Improved tables processing. Bugs with little memory leak fixed

   Version 1.12
   ------------
   Some bugs corrected

   Version 1.1
   ------------
   Added properties TrueValue, FalseValue;
   Added format functions: fexp, ffix, fnum, fcur;

   If variable in VarList will be changed during processing Execute or 
   ExecuteOpen methods, it will take effect in report when this variable
   be requested;

3. LICENSE 

  TEkRTF COMPONENT IS DISTRIBUTED "AS IS".  NO WARRANTY OF ANY
  KIND IS EXPRESSED OR IMPLIED. THE AUTHOR WILL NOT BE LIABLE 
  FOR DATA LOSS, DAMAGES OR ANY OTHER KIND OF LOSS WHILE USING 
  THIS SOFTWARE.

  THIS PRODUCT IS FREE FOR NON-COMMERCIAL USING AND EVALUATING. YOU MUST 
  REGISTER YOUR COPY OF EK RTF IF YOU USE IT IN COMMERCIAL PROJECTS.

  Registered users will receive source code and updates applicable for 
  current version.
  To register this product goto http://gpb.skiftel.ru/ec/ then press 
  "Register" button, or you may go to directly to registration page using 
  link http://www.regsoft.net/purchase.php3?productid=32619
 

4. INSTALLATION

  1. Uninstall previous version of EkRTF:
      Select "Component/Install Packages" from the Delphi IDE.
      Select the package file EComp.bpl, click "Remove" button, click "OK".
      Select the package file Edsn.bpl, click "Remove" button, click "OK".

  2.  Select "Component/Install Packages" from the Delphi IDE.

  3.  Click on the "Add" button and select the package file EComp.bpl 
      in the directory were it unzipped.
      Click "Open" to install the package.

  4.  Install package Edsn.bpl the same way as Ecomp.bpl

  5.  Select "Tools/Environment Options" from the Delphi IDE.

  6.  Select the "Library" tab.

  7.  Check the path to EComp pakage in "Library Path" edit box.
      It must reference to location where is the new version 
      of EkRTF component.


      Installed component will appear in "Data Access" panel.

     HELP INSTALLATION:

     The following steps describe how to manually install TEkRTF report 
  Help file.

  1.  Copy the files EkRtf.hlp and EkRtf.cnt into the HELP 
      directory in Delphi main directory. Delete files EkRTF.gid from old
      versions of help.
  2.  Add the line (if it does not exists)
      :Index TEkRTF report component=EkRtf.hlp
      to the "Index" section at the top of the DELPHI6.CNT (DELPHI5.CNT, DELPHI4.CNT) file
      located in the Delphi HELP directory.

5. TROUBLESHOUTING

   Before running demo projects, check that you have application associated
   with doc and rtf files. Otherwise output files will be saved on disk, but
   will not open automatically.

   Delete all pathes from menu Tools\Enviroment options\Library\Directories\ 
   which references to old versions of component.

   If compiled programm cannot find input rtf file and generates exception 
   place your compiled exe file into project source directory (directory 
   with source rtf files) or type full path and file name in property 
   "InputFile".

6. CONTACT INFORMATION
  
   if you have any questions, comments or suggestions email to 
 ec@gpb.skiftel.ru
    See the latest version of Ek RTF Report on author's page at 
 http://gpb.skiftel.ru/ec/
   


