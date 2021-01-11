program Framework;

uses
  Controls,
  Forms,
  fm000_Parent in '..\Source\fm000_Parent.pas' {fmParent: TFrame},
  fm002_EditFrame in '..\Source\fm002_EditFrame.pas' {fmEdit},
  fm003_FilterFrame in '..\Source\fm003_FilterFrame.pas' {fmFilterFrame: TFrame},
  frm000_ParentForm in '..\Source\frm000_ParentForm.pas' {frm000_Parent},
  frm003_DialogForm in '..\Source\frm003_DialogForm.pas' {frm003_Dialog},
  untGrid in '..\..\Общие модули\Source\untGrid.pas',
  untMessages in '..\..\Общие модули\Source\untMessages.pas',
  frm004_ListForm in '..\Source\frm004_ListForm.pas' {frm004_List},
  untClasses in '..\..\Общие модули\Source\untClasses.pas',
  fm004_ListFrame in '..\Source\fm004_ListFrame.pas' {fmList: TFrame},
  fm005_GridFrame in '..\Source\fm005_GridFrame.pas' {fmGrid: TFrame},
  fm006_TreeFrame in '..\Source\fm006_TreeFrame.pas' {fmTree: TFrame},
  dm004_ParentData in '..\Source\dm004_ParentData.pas' {dmParent: TDataModule},
  frm001_LoginForm in '..\Source\frm001_LoginForm.pas' {frm001_Login},
  Matrix in '..\..\Общие модули\Source\Matrix.pas',
  fm007_MasterListFrame in '..\Source\fm007_MasterListFrame.pas' {fm007_MasterList: TFrame},
  dm000_ObjectsFactory in '..\Source\dm000_ObjectsFactory.pas' {ObjectsFactory: TDataModule},
  unt000_Desc in '..\Source\unt000_Desc.pas',
  fm021_CheckBoxFrame in '..\Source\fm021_CheckBoxFrame.pas' {fmCheckBox: TFrame},
  unt002_FramesList in '..\Source\unt002_FramesList.pas',
  fm001_Composite in '..\Source\fm001_Composite.pas' {fmComposite: TFrame},
  dm005_MainData in '..\Source\dm005_MainData.pas' {dmMain: TDataModule},
  dm006_PictersData in '..\Source\dm006_PictersData.pas' {dmPicters: TDataModule},
  fm022_EditLookUp in '..\Source\fm022_EditLookUp.pas' {fmEditLookUp: TFrame},
  fm007_PageFrame in '..\Source\fm007_PageFrame.pas' {fm007_Page: TFrame},
  unt005_FramesList in '..\Source\unt005_FramesList.pas',
  fm025_MemoEdit in '..\Source\fm025_MemoEdit.pas' {fmMemoEdit: TFrame},
  fm023_TextEdit in '..\Source\fm023_TextEdit.pas' {fmTextEdit: TFrame},
  fm024_DateEdit in '..\Source\fm024_DateEdit.pas' {fmDateEdit: TFrame},
  unt006_MatrixConst in '..\Source\unt006_MatrixConst.pas',
  L02_FilterF in '..\Source\L02_FilterF.pas' {fmFilter: TFrame},
  L02_FilterA in '..\Source\L02_FilterA.pas' {dmFilter: TDataModule},
  L01_SearchM in '..\Source\L01_SearchM.pas' {frmSearch},
  L01_SearchA in '..\Source\L01_SearchA.pas' {dmSearch: TDataModule},
  L01_SearchF in '..\Source\L01_SearchF.pas' {fmSearch: TFrame},
  unt007_LinksList in '..\Source\unt007_LinksList.pas',
  fm026_Selector in '..\Source\fm026_Selector.pas' {fmSelector: TFrame},
  fm008_DBObjectFrame in '..\Source\fm008_DBObjectFrame.pas' {fmDBObject: TFrame},
  fm009_ProgressFrame in '..\Source\fm009_ProgressFrame.pas' {fmProgress: TFrame},
  fm027_DoubleListF in '..\Source\fm027_DoubleListF.pas' {fmDoubleList: TFrame},
  M02_fMasterItem in '..\Source\M02_fMasterItem.pas' {fmMMasterItem: TFrame},
  M01_fMaster in '..\Source\M01_fMaster.pas' {fmMMaster: TFrame},
  frm10_RepOutputPathForm in '..\Source\frm10_RepOutputPathForm.pas' {frm10_RepOutputPath},
  fm020_LookUp in '..\Source\fm020_LookUp.pas' {fmLook_Up: TFrame},
  fm033_PeriodFilterFrame in '..\Source\fm033_PeriodFilterFrame.pas' {fmPeriodFilter: TFrame},
  fm020_LookUpFrame in '..\Source\fm020_LookUpFrame.pas' {fmLookUp: TFrame},
  fm020_RadioLookUpFrame in '..\Source\fm020_RadioLookUpFrame.pas' {fmRadioLookUp: TFrame},
  fm035_CheckListFrame in '..\Source\fm035_CheckListFrame.pas' {fmCheckList: TFrame},
  fm020_RadioLookUpExtFrame in '..\Source\fm020_RadioLookUpExtFrame.pas' {fmRadioLookUpExt: TFrame},
  unt008_Events in '..\Source\unt008_Events.pas',
  fm023_TextEditFrame in '..\Source\fm023_TextEditFrame.pas' {fmTextFilter: TFrame},
  fm037_SelectListsFrame in '..\Source\fm037_SelectListsFrame.pas' {fm037_SelectLists: TFrame},
  frm11_SelectionListsForm in '..\Source\frm11_SelectionListsForm.pas' {frm11_SelectionLists},
  fm006_TreeListFrame in '..\Source\fm006_TreeListFrame.pas' {fm006_TreeList: TFrame},
  fm031_WizardPageFrame in '..\Source\fm031_WizardPageFrame.pas' {fmWizardPage: TFrame},
  fm030_WizardFrame in '..\Source\fm030_WizardFrame.pas' {fmWizard: TFrame},
  A000_ProgessForm in '..\Source\A000_ProgessForm.pas' {A000_Progess},
  A000_File2DbDM in '..\Source\A000_File2DbDM.pas' {A000_File2Db: TDataModule},
  A000_FileDescUnt in '..\Source\A000_FileDescUnt.pas',
  A000_ParserCsvDM in '..\Source\A000_ParserCsvDM.pas' {A000_ParserCsv: TDataModule},
  A000_ParserDbfDM in '..\Source\A000_ParserDbfDM.pas' {A000_ParserDbf: TDataModule},
  A000_ParserDM in '..\Source\A000_ParserDM.pas' {A000_Parser: TDataModule},
  A000_ParserExcelDM in '..\Source\A000_ParserExcelDM.pas' {A000_ParserExcel: TDataModule},
  A000_ProcInfoForm in '..\Source\A000_ProcInfoForm.pas' {A000_ProcInfo},
  A000_ProgessDBForm in '..\Source\A000_ProgessDBForm.pas' {A000_ProgessDB},
  A000_ProgessFileForm in '..\Source\A000_ProgessFileForm.pas' {A000_ProgessFile},
  fm010_FilteredGridFrame in '..\Source\fm010_FilteredGridFrame.pas' {fmFilteredGrid: TFrame},
  fm028_HDoubleListFrame in '..\Source\fm028_HDoubleListFrame.pas' {fmHDoubleList: TFrame},
  fm031_FilterFrame in '..\Source\fm031_FilterFrame.pas' {fm031_Filter: TFrame},
  fm040_LoaderFrame in '..\Source\fm040_LoaderFrame.pas' {fmLoader: TFrame};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm000_Parent, frm000_Parent);
  Application.CreateForm(Tfrm003_Dialog, frm003_Dialog);
  Application.CreateForm(Tfrm004_List, frm004_List);
  Application.CreateForm(TfmEdit, fmEdit);
  Application.CreateForm(TfmList, fmList);
  Application.CreateForm(TfmGrid, fmGrid);
  Application.CreateForm(TfmTree, fmTree);
  Application.CreateForm(TdmParent, dmParent);
  Application.CreateForm(Tfrm001_Login, frm001_Login);
  Application.CreateForm(Tfm007_MasterList, fm007_MasterList);
  Application.CreateForm(TObjectsFactory, ObjectsFactory);
  Application.CreateForm(TfmFilterFrame, fmFilterFrame);
  Application.CreateForm(TfmCheckBox, fmCheckBox);
  Application.CreateForm(TfmComposite, fmComposite);
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TdmPicters, dmPicters);
  Application.CreateForm(TfmEditLookUp, fmEditLookUp);
  Application.CreateForm(Tfm007_Page, fm007_Page);
  Application.CreateForm(TfmMemoEdit, fmMemoEdit);
  Application.CreateForm(TfmTextEdit, fmTextEdit);
  Application.CreateForm(TfmDateEdit, fmDateEdit);
  Application.CreateForm(TfmFilter, fmFilter);
  Application.CreateForm(TdmFilter, dmFilter);
  Application.CreateForm(TfrmSearch, frmSearch);
  Application.CreateForm(TdmSearch, dmSearch);
  Application.CreateForm(TfmSearch, fmSearch);
  Application.CreateForm(TfmSelector, fmSelector);
  Application.CreateForm(TfmDBObject, fmDBObject);
  Application.CreateForm(TfmProgress, fmProgress);
  Application.CreateForm(TfmDoubleList, fmDoubleList);
  Application.CreateForm(TfmMMasterItem, fmMMasterItem);
  Application.CreateForm(TfmMMaster, fmMMaster);
  Application.CreateForm(Tfrm10_RepOutputPath, frm10_RepOutputPath);
  Application.CreateForm(Tfrm11_SelectionLists, frm11_SelectionLists);
  Application.CreateForm(TA000_Progess, A000_Progess);
  Application.CreateForm(TA000_File2Db, A000_File2Db);
  Application.CreateForm(TA000_ParserCsv, A000_ParserCsv);
  Application.CreateForm(TA000_ParserDbf, A000_ParserDbf);
  Application.CreateForm(TA000_Parser, A000_Parser);
  Application.CreateForm(TA000_ParserExcel, A000_ParserExcel);
  Application.CreateForm(TA000_ProcInfo, A000_ProcInfo);
  Application.CreateForm(TA000_ProgessDB, A000_ProgessDB);
  Application.CreateForm(TA000_ProgessFile, A000_ProgessFile);
  Application.Run;
end.
