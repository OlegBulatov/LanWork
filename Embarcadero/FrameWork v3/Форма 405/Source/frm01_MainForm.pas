unit frm01_MainForm;

interface

uses
  Classes, Forms, ActnList, Menus, Controls, ComCtrls, ExtCtrls, untDBTree,
  frm31_EmisInfListForm, frm05_SumListForm, C001_OpersByDateForm, frm63_711ListForm,
  frm64_711ListForm, frm32_IssuerListForm, untParams,
  F003_NDFrame, F005_OpersFrame, B000_OpersFrame, B004_WizardFrame, F005_LinksWizardFrame,
  J002_OpersFrame, M002_IsuListFrame, System.Actions;

type
  Tfrm01_Main = class(TForm)
    MainMenu1: TMainMenu;
    N4: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    N9: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ActionList: TActionList;
    actProgramInfo: TAction;
    actQuit: TAction;
    actUdateData: TAction;
    actGetLastData: TAction;
    actShowSettings: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    TreeView: TTreeView;
    paFrameParent: TPanel;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    actChangePass: TAction;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    actStartReplication: TAction;
    actSetRepPath: TAction;
    N10: TMenuItem;
    procedure actProgramInfoExecute(Sender: TObject);
    procedure actQuitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure FormShow(Sender: TObject);
    procedure actChangePassExecute(Sender: TObject);
    procedure actChangePassUpdate(Sender: TObject);
    procedure actShowSettingsExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actStartReplicationExecute(Sender: TObject);
    procedure actSetRepPathExecute(Sender: TObject);
  private
    FActiveContr: TWinControl;
    FDBTree: TDBTree;

    procedure SelectForm405;
    procedure SelectForm405Link;
    procedure SelectEmissInf;
    function  GetTreeIndexByName(const AName: String):Integer;
    procedure SelectForm711_Data;
    procedure SelectForm711_12;
    procedure SelectForm711_31;
    procedure SelectForm711_32;
    procedure SelectForm711_Link;
    procedure SelectForm415_Data;
    procedure SelectForm415_12;
    procedure SelectForm415_Link;
    procedure SelectForm417_Data;
    procedure SelectIssuersListForm;
    procedure SelectEmissionsListForm;
    procedure SelectInnKoData;
    procedure SelectIsuData;
    //
    function GetFormIndex(AFormClass: string): integer;
    //
    procedure DoStartReplicationExecute(Sender: TObject);
    function ExecAndWait(prg: PChar; cmdShw: integer): integer;
  public
    function GetEmissInfForm: Tfrm31_EmisInfList;
    function GetF405Form: Tfrm05_SumList;
    function GetF405LinkForm: TC001_OpersByDate;
    function GetF711_31Form: Tfrm63_711List;
    function GetF711_32Form: Tfrm64_711List;
    function GetF711_12Frame: TB000_Opers;
    function GetIssuersListForm: Tfrm32_IssuerList;
    function GetEmissionsListForm: Tfrm31_EmisInfList;
    function GetF711_DataFrame: TB000_Opers;
    function GetF711_LinksFrame: TB004_Wizard;
    function GetF415_DataFrame: TF005_Opers;
    function GetF415_LinksFrame: TF005_LinksWizard;
    function GetF417_DataFrame: TJ002_Opers;

    // ���� � ��������� 405 ����� - �������� - ���������
    procedure Find_405_Link_01(const AT055_ID1, AT055_ID2, AT027_ID, AT028_ID: Double);

    // ���� � ��������� 405 ����� - �������� - ���������
    procedure FindOper(const AID: Double);
    procedure FindOperFiltered(const AT055_ID1, AT055_ID2, AT027_ID, AT028_ID, AT006_ID, AT033_ID, AT012_ID, AT013_ID: Double; AT001_PART_IDs: array of Double);
    procedure FindAllRezid(const AID: Double);
    procedure FindAllNRezid(const AID: Double);
    procedure FindAllIssuer(const AID: Double);
    procedure FindAllEmission(const AID: Double);
    procedure FindAllEmissInQuartal(const AT055_ID1, AT055_ID2, AT030_ID: Double);
    procedure FindAllOperStep3(const AT055_ID: Double; const AT002_BANK_CODE: String);
    procedure FindAllOperStep5(const AT055_ID: Double; const AT002_BANK_CODE: String; const AT027_ID: Double; const AT012_ID: Double);
    procedure FindEmissInPer(const AT055_ID, AT030_ID: Double);
    procedure FindIssuerInPer(const AT055_ID, AT028_ID: Double; AT027_IDs: array of Double);
    procedure FindRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    procedure FindNRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    procedure FindMainEmissInPer(const AT055_ID, AT030_ID: Double);
    procedure FindMainEmissInQuartal(const AT055_ID1, AT055_ID2, AT030_ID: Double);
    procedure FindMainIssuerInPer(const AT055_ID, AT028_ID: Double; AT027_IDs: array of Double);
    procedure FindMainRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    procedure FindMainNRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
    procedure FindMainEmissionsInPeriod(const AT055_ID_S, AT055_ID_E: Double; AT030_IDs: TFloatArray);

    // ���� � ��������� 711 ����� ������ 3.1 (������)
    procedure FindAllIssuer_711_31(const AID: Double);
    procedure FindAllEmission_711_31(const AID: Double);
    procedure FindIssuer_711_31_InPer(const AT028_ID, AT055_ID: Double; AFloatArray: TFloatArray);
    procedure FindEmission_711_31_InPer(const AT030_ID, AT055_ID: Double);
    procedure FindMainIssuer_711_31_InPer(const AT028_ID, AT055_ID: Double; AFloatArray: TFloatArray);
    procedure FindMainEmission_711_31_InPer(const AT030_ID, AT055_ID: Double);

    // ���� � ��������� 711 ����� ������ 3.2 (������)
    procedure FindAllIssuer_711_32(const AID: Double);
    procedure FindAllEmission_711_32(const AID: Double);
    procedure FindIssuer_711_32_InPer(const AT028_ID, AT055_ID: Double; AFloatArray: TFloatArray);
    procedure FindEmission_711_32_InPer(const AT030_ID, AT055_ID: Double);
    procedure FindMainIssuer_711_32_InPer(const AT028_ID, AT055_ID: Double; AFloatArray: TFloatArray);
    procedure FindMainEmission_711_32_InPer(const AT030_ID, AT055_ID: Double);

    // ���� � ��������� 711 ����� ������ 1.2 (�����)
    procedure FindMainEmissions_711_12_InPer(const AT055_ID_S, AT055_ID_E: Double; AT030_IDs: TFloatArray);
    // ���� �  ���������� �711
    procedure Find_711_Link_01(const AT055_ID, AT027_ID, APART_ID, AT028_ID: Double);

    // ���� � ��������� ��� ������� ������
    procedure FindAllMainRezid(const AID: Double);
    procedure FindAllOnlyMainRezid(const AID: Double);
    procedure FindAllMainRezidInn(const AInn: String);
    procedure FindAllMainNRezid(const AID: Double);
    procedure FindAllOnlyMainNRezid(const AID: Double);
    procedure FindAllMainIssuer(const AID: Double);
    procedure FindAllMainIssuerInn(const AInn: String);

   // �������� IIP 711 ����� ������ 1.2
    procedure FindIssuer_711_12_InPer(const AT028_ID, AT055_ID_S, AT055_ID_E: Double; AT027_IDs: array of Double);

    // �������� ��������� � ������� �������� �� ������
    procedure FindOpersByMainIssueAndRezInPer(const AT055_ID, AT027_MAIN_ID, AT012_ID: Double);
    // �������� ����������� � ������� �������� �� ������
    procedure FindOpersByMainIssueAndNrezInPer(const AT055_ID, AT027_MAIN_ID, AT013_ID: Double);

    // ��������� � ������� �������
    procedure FindAllIssEmiss(const AT028_ID: Double; const AT027_IDs: array of Double);

    // ��������� �  ������� ������������
    procedure FindIssuer(const AT028_ID: Double);

    // ��������� �  ������� �������
    procedure FindEmisByIssuer(const AT027_ID, AT028_ID: Double; AISIN, AINN: string; ASource: integer);

    // ��������� � ������������ ������������
    function GetNDForm: TF003_ND;
    procedure ND_Find_01(const AT055_ID, AT027_ID, AT028_ID: Double);
    procedure ND_FindEmissionsInPer(const AT055_ID_S, AT055_ID_E: Double; AT030_IDs: TFloatArray);

    // ��������� � ������ �711
    procedure Find_711_Data(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray; APART_ID: Integer; APRIZ, ASECTOR, AACCOUNT: TStrings; AT028_ID: Double);

    // ��������� � ������ �415
    procedure Find_415_Data(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray; APART_ID: Integer; APRIZ, ASECTOR, AACCOUNT: TStrings; AT028_ID: Double);

    // ��������� � � 415 ������ 1.2
    function  GetF415_12Form: TF005_Opers;
    procedure F415_12_FindEmissionsInPer(const AT055_ID_S, AT055_ID_E: Double; AT030_IDs: TFloatArray);
    procedure FindIssuer_415_12_InPer(const AT028_ID, AT055_S_ID, AT055_E_ID, AT027_ID: Double);

    // ���� �  ���������� �415
    procedure Find_415_Link_01(const AT055_ID, AT027_ID, APART_ID, AT028_ID: Double);

    // ������� � ������ �417
    procedure Find_417 (const ASecType: String; ADateOp: TDateTime; ARegn, AOpType: String; AT030_ID: Double; APayDir, AOpCurr: String; AOpCount, AOpSum: Double);
    procedure FindIssuer_417_InPer(AT028_ID: Double; ADateStart, ADateEnd: TDateTime; ASecType, AIsin: string);

    // Log BlPipe
    procedure Log(Sender: TObject; LogLevel: integer; Msg: string; ToFile: boolean);

    // ������� � ������� KO
    procedure FindInnKoData;

    // ������� � ������� ���
    function  GetIsuDataFrame: TM002_IsuList;
    procedure FindIsuData;
  end;

var
  frm01_Main: Tfrm01_Main;

implementation

uses
  Windows, SysUtils, dm01_MainData, dm005_MainData, dm000_ObjectsFactory,
  untMessages, untTask, Matrix, A00_MatrixConst, fm000_Parent, Dialogs,
  A001_0_LoadEmitForm,
  A003_0_FSFRForm,
  A004_0_RSNForm,
  A005_0_MCForm,
  A006_0_PTForm,
  A007_0_CbondsLoad1Form,
  A008_0_CbondsLoad2Form,
  A009_0_CbondsLoad3Form,
  B000_LoadWizardFrame,
  C002_CheckRatesFrame,
  D000_LinkResidForm,
  D001_LinkNresidForm,
  E001_WizardFrame,
  E002_DrListForm,
  F001_WizardFrame,
  F005_LoadWizardFrame,
  F005_LoadWizard_aFrame,
  frm00_ParentForm,
  frm02_AboutFrom,
  frm06_BondListForm,
  frm07_OperListForm,
  frm08_PayListForm,
  frm10_ReportsListForm,
  frm10_RepOutputPathForm,
  frm12_ReplLogForm,
  frm17_664ListForm,
  frm20_EmitListForm,
  frm21_EmitTypeListForm,
  frm22_CBListForm,
  frm23_BankListForm,
  frm26_ParamsEditForm,
  frm29_SecTypeListForm,
  frm33_IssuerTypeListForm,
  frm35_SecRegnListForm,
  frm36_SostVypListForm,
  frm37_SposobRazmListForm,
  frm38_NewReportsForm,
  frm42_ClassificationForm,
  frm47_IssuerGroupListForm,
  frm50_IssuerLinkerForm,
  frm51_EmisLinkerForm,
  frm53_CountryListForm,
  frm54_MMVBRatesForm,
  frm56_664BankListForm,
  frm57_664OperListForm,
  frm58_101ListForm,
  frm59_DayListForm,
  frm69_CurrencyListForm,
  frm76_CalcQuotListForm,
  frm79_711CodeListForm,
  frm80_CalcRemainsForm,
  frm84_BICListForm,
  frm88_IndustryListForm,
  frm89_WaitForm,
  frm90_SumReports711Form,
  frm90_SumReportsForm,
  frm91_405LinksForm,
  frm96_711LinksForm,
  frm100_InvTypesListForm,
  frm100_InvTypesP2ListForm,
  frm102_BON1ListForm,
  frm881_SectorsListForm,
  G001_EmissionsFrame,
  G003_RequestsFrame,
  H001_CbondsStocksListForm,
  H002_CBondsEmissionsListForm,
  I001_LoadWizardForm,
  J002_LoadWizardFrame,
  K001_IssuersLinksFrame,
  K002_EmissionsLinksFrame,
  K001_ReestersGridFrame,
  L001_SumListFrame,
  M001_LoadWizardFrame,
  M001_InnKoListFrame,
  M002_IsuLoadWizardFrame,
  z001_tabs,
  z002_fm_hist_grd_frame;
  {
  A002_0_ScrinEmitForm,
  frm13_QuotationListForm,
  frm15_401ListForm,
  frm16_711ListForm,
  frm18_SMIListForm,
  frm19_711ListForm,
  frm24_RezidListForm,
  frm25_NRezidListForm,
  frm28_RezidLinkerForm,
  frm30_EmissionListForm,
  frm44_RezidGroupListForm,
  frm46_NRezidGroupListForm,
  frm48_EmisGroupListForm,
  frm49_NRezidLinkerForm,
  frm51_EmisBottomForm,
  frm55_NKOListForm,
  frm58_101EditForm,
  frm60_DividentsListForm,
  frm61_PortfelListForm,
  frm62_661ListForm,
  frm71_NKOSumListForm,
  frm74_MMVBListForm,
  frm75_RTSListForm,
  frm103_NkdListForm,
  frm104_InvAnalyzeListForm,
  frm200_GKORatesListForm,
}

{$R *.DFM}

procedure Tfrm01_Main.actProgramInfoExecute(Sender: TObject);
begin
  // � ���������
  Tfrm02_About.InitForm;
  frm02_About.ShowModal;
end;

procedure Tfrm01_Main.actQuitExecute(Sender: TObject);
begin
  // �����
  Close;
end;

procedure Tfrm01_Main.FormCreate(Sender: TObject);
begin
  ObjectsFactory := TObjectsFactory.Create(Self);

  dmMain.ViewHistory := dmMain.GetSetting('USER_DATE_TYPE') = '0';

  // ������ ������
  Panel2.Width := Panel1.Width - 4;
  TreeView.Width := StrToIntDef(dmMain.ParamList.Values['TreeSize'], 114);

  // ������ ������
  FDBTree := dm01_Main.FillTree(TreeView);
end;

procedure Tfrm01_Main.TreeViewChange(Sender: TObject; Node: TTreeNode);
const
  CAPTION_TEXT = '  %s';
var
  VIsForm: Boolean;
  VClass: TWinControlClass;
  VForm: Tfrm00_Parent;
  VFrame: TfmParent;
  VNodeData: TDBTreeNodeData;
  VClassName: string;
begin
  // ��������� ����������, ���� �� ���� ��������
  LockWindowUpdate(paFrameParent.Handle);
  try
    if not Assigned(Node) then Exit;

    //showmessage(inttostr(Node.AbsoluteIndex));

    // ���������� ����� �����
    Panel2.Caption := Node.Text;
    VNodeData := FDBTree.TreeNodeData[Node.AbsoluteIndex];
    VIsForm := False;
    if VNodeData.Code <> '' then
      begin
      try
        VClass := TWinControlClass(FindClass(VNodeData.Code));
      except
        on E: EClassNotFound do
          begin
          E.Message := '� ����������.';
          raise;
          end;
      end;
      VIsForm :=  VClass.InheritsFrom(Tfrm00_Parent);
      VClassName := VClass.ClassName;
      end
    else
      begin
      VClass := nil;
      VClassName := '';
      end;

    // �� �� ����� ��� ���
    if Assigned(FActiveContr) then
      if FActiveContr.ClassName = VClassName then Exit;

    // �������� ������������ �����
    if Assigned(FActiveContr) then
    begin
      {
      if VIsForm then
      begin
        VForm := Tfrm00_Parent(FActiveContr);
        if Assigned(VForm.OnLeave) then
        begin
          VForm.OnLeave(FActiveContr);
        end;
      end;
      }
      FActiveContr.Visible := False;
      FActiveContr.Parent := nil;
      FActiveContr := nil;
    end;

    // ��������� ���� �� ��������� �����
    if not Assigned(VClass) then Exit;


    // ������� ������� � ������ � �� paFrameParent
    if Assigned(VNodeData.Form) then
      begin
       FActiveContr := VNodeData.Form;
      end
    else
      begin
      if VIsForm then
        begin
        VForm := Tfrm00_Parents(VClass).Instance;
        VForm.BorderStyle := bsNone;
        FActiveContr := VForm;
        end
      else
        begin
        VFrame := TfmParentClass(VClass).Create(nil);
        VFrame.InitFrame(nil);
        FActiveContr := VFrame;
        end;
      VNodeData.Form := FActiveContr;
      end;
    FActiveContr.Parent := paFrameParent;
    FActiveContr.Align := alClient;
    FActiveContr.BoundsRect := paFrameParent.BoundsRect;
    if dmMain.UseMatrix and (VNodeData.Operation <> '') then
      begin
      FActiveContr.Visible := Matrix.MA.IsOperationPermitted(VNodeData.Operation, FALSE);
      Matrix.MA.WriteToLog2(VNodeData.Operation, true, '');
      if FActiveContr.Visible and FActiveContr.CanFocus then
        FActiveContr.SetFocus;
      end
    else
      begin
      FActiveContr.Visible := True;
      if FActiveContr.CanFocus then
        FActiveContr.SetFocus;
      end;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure Tfrm01_Main.FormShow(Sender: TObject);
var
  I : Integer;
  //VNewReports: Tfrm38_NewReports;
  //VMessage: string;
begin
  // ��������� �������� ������� ������
  for I := 0 to TreeView.Items.Count - 1 do
  begin
    if TreeView.Items[I].Level = 0 then
    begin
      TreeView.Items[I].Expand(False);
    end;
  end;

  // �������� ������ �������
  TreeView.FullExpand;
  if TreeView.Items.Count > 1 then
  begin
    TreeView.Items[0].Selected := True;  
    TreeView.Items[1].Selected := True;
    TreeView.Items[2].Selected := True;    
  end;

  // �������� ����� �����
  if Assigned(FActiveContr) and FActiveContr.CanFocus then
  begin
    FActiveContr.SetFocus;
  end;


  // ���������� ��������� � ��������� ����� ������� ��
  (*
  VNewReports := Tfrm38_NewReports(Tfrm38_NewReports.Instance);
  Self.Caption := Concat(Self.Caption, ' - ' , VNewReports.StateText);
  *)
  //StatusBar1.SimpleText := VNewReports.StateText;
end;

procedure Tfrm01_Main.actChangePassExecute(Sender: TObject);
begin
  if dmMain.UseMatrix then
  begin
    Matrix.MA.ChangePassword;
  end;
end;

procedure Tfrm01_Main.actChangePassUpdate(Sender: TObject);
begin
  actChangePass.Visible:= dmMain.UseMatrix;
end;

procedure Tfrm01_Main.actShowSettingsExecute(Sender: TObject);
begin
  if frm26_ParamsEdit = nil then frm26_ParamsEdit:= Tfrm26_ParamsEdit.Create(frm01_Main);
  frm26_ParamsEdit.ShowModal;
end;

procedure Tfrm01_Main.FindAllRezid(const AID: Double);
begin
  SelectForm405Link;

  Application.ProcessMessages;

  GetF405LinkForm.FindAllRezid(AID);
end;

procedure Tfrm01_Main.SelectForm405;
begin
  if TreeView.Items.Count > 1 then
  begin
    TreeView.Items[2].Selected := True;
  end;
end;

procedure Tfrm01_Main.FindAllNRezid(const AID: Double);
begin
  SelectForm405Link;

  Application.ProcessMessages;

  GetF405LinkForm.FindAllNRezid(AID);
end;

procedure Tfrm01_Main.FindAllIssuer(const AID: Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindAllIssuer(AID);
end;

procedure Tfrm01_Main.FindAllEmission(const AID: Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindAllEmission(AID);
end;

procedure Tfrm01_Main.FindAllOperStep3(const AT055_ID: Double; const AT002_BANK_CODE: String);
begin
  SelectForm405Link;

  Application.ProcessMessages;

  GetF405LinkForm.FindAllOperStep3(AT055_ID, AT002_BANK_CODE);
end;

procedure Tfrm01_Main.FindAllOperStep5(const AT055_ID: Double; const AT002_BANK_CODE: String; const AT027_ID: Double;  const AT012_ID: Double);
begin
  SelectForm405Link;

  Application.ProcessMessages;

  GetF405LinkForm.FindAllOperStep5(AT055_ID, AT002_BANK_CODE, AT027_ID, AT012_ID);
end;

function Tfrm01_Main.GetEmissInfForm: Tfrm31_EmisInfList;
begin
  Result := Tfrm31_EmisInfList(FDBTree.TreeNodeData[GetTreeIndexByName('Tfrm31_EmisInfList')].Form);
end;

function Tfrm01_Main.GetF405Form: Tfrm05_SumList;
begin
  Result := Tfrm05_SumList(FDBTree.TreeNodeData[TreeView.Items[2].AbsoluteIndex].Form);
end;

procedure Tfrm01_Main.FindOper(const AID: Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindOper(AID);
end;

procedure Tfrm01_Main.SelectEmissInf;
begin
  if TreeView.Items.Count > 1 then
  begin
    TreeView.Items[GetTreeIndexByName('Tfrm31_EmisInfList')].Selected := True;
  end;
end;

procedure Tfrm01_Main.SelectForm711_31;
begin
  if TreeView.Items.Count > 1 then
  begin
    TreeView.Items[GetFormIndex('Tfrm63_711List')].Selected := True;
  end;
end;

procedure Tfrm01_Main.SelectForm711_32;
begin
  if TreeView.Items.Count > 1 then
  begin
    TreeView.Items[GetFormIndex('Tfrm64_711List')].Selected := True;
  end;
end;

function Tfrm01_Main.GetF711_31Form: Tfrm63_711List;
begin
  Result := Tfrm63_711List(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('Tfrm63_711List')].AbsoluteIndex].Form);
end;

function Tfrm01_Main.GetF711_32Form: Tfrm64_711List;
begin
  Result := Tfrm64_711List(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('Tfrm64_711List')].AbsoluteIndex].Form);
end;

procedure Tfrm01_Main.FindAllEmission_711_31(const AID: Double);
begin
  SelectForm711_31;

  Application.ProcessMessages;

  GetF711_31Form.FindAllEmission(AID);
end;

procedure Tfrm01_Main.FindAllEmission_711_32(const AID: Double);
begin
  SelectForm711_32;

  Application.ProcessMessages;

  GetF711_32Form.FindAllEmission(AID);
end;

procedure Tfrm01_Main.FindAllIssuer_711_31(const AID: Double);
begin
  SelectForm711_31;

  Application.ProcessMessages;

  GetF711_31Form.FindAllIssuer(AID);
end;

procedure Tfrm01_Main.FindAllIssuer_711_32(const AID: Double);
begin
  SelectForm711_32;

  Application.ProcessMessages;

  GetF711_32Form.FindAllIssuer(AID);
end;

procedure Tfrm01_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmMain.ParamList.Values['TreeSize'] := IntToStr(TreeView.Width);
end;

procedure Tfrm01_Main.actStartReplicationExecute(Sender: TObject);
const
  TEXT = '������� ������� �������� ������� �� ���?';
var
  VDelay: Integer;
begin
//  TAppMessages.ShowError('��������� �������� ��������� � ������ ���������.');
//  Exit;

  if not TAppMessages.ShowConfirmation(TEXT) then Exit;

  if dmMain.UseMatrix then
    Matrix.MA.WriteToLog2(LOAD_REPORT, true, '');

  VDelay := StrToInt(dmMain.GetSetting('ttLoadFromGCI'));
  Tfrm89_Wait.ExecProc(ttLoadFromGCI, DoStartReplicationExecute, False, VDelay);
  dmMain.SetSetting('ttLoadFromGCI', IntToStr(VDelay));
end;

procedure Tfrm01_Main.DoStartReplicationExecute(Sender: TObject);
begin
  dm01_Main.oqStartReplication.Execute;
end;

function Tfrm01_Main.ExecAndWait(prg: PChar; cmdShw: integer): integer;
var
  SI: TStartupInfo;
  Proc: TProcessInformation;
  b: boolean;
  sig, i : Cardinal;
begin
  si.cb:= sizeof(TSTARTUPINFO);
  FillChar(si, SizeOf(si), #0);
  if cmdShw<>0 then
  begin
    si.wShowWindow:= cmdShw;
    si.dwFlags:= STARTF_USESHOWWINDOW;
  end;

  b:= CreateProcess(
	  nil,   // address of module name
 	  PChar(prg), // address of command line
	  nil,	// address of process security attributes
	  nil,	// address of thread security attributes
	  FALSE,	// new process inherits handles
	  0,	// creation flags
	  nil,	// address of new environment block
	  nil,	// address of current directory name
          si,	// address of STARTUPINFO
	  proc 	// address of PROCESS_INFORMATION
	  );

  if (not b) then
  begin //fail
    ExecAndWait:= -1;
    exit;
  end;

  while true do
  begin
    sig:= WaitForSingleObject(proc.hProcess,// handle to process
	    100 	// time-out interval in milliseconds
	    );
    if (sig<>WAIT_TIMEOUT) then break;
    Application.ProcessMessages;
  end;

  GetExitCodeProcess(proc.hProcess, i);
  ExecAndWait:= 0;
// ExecAndWait:= i;
  CloseHandle(proc.hProcess);
  CloseHandle(proc.hThread);
end;

function Tfrm01_Main.GetTreeIndexByName(const AName: String):Integer;
var
  I: Integer;
begin
  Result := -1;
  for I := 0 to TreeView.Items.Count - 1 do
  begin
    if FDBTree.TreeNodeData[TreeView.Items[I].AbsoluteIndex].Code = AName then
    begin
      Result := I;
    end;
  end;
end;

procedure Tfrm01_Main.FindEmissInPer(const AT055_ID, AT030_ID: Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindEmissInPer(AT055_ID, AT030_ID);
end;

procedure Tfrm01_Main.FindIssuerInPer(const AT055_ID, AT028_ID: Double; AT027_IDs: array of Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindIssuerInPer(AT055_ID, AT028_ID, AT027_IDs);
end;

procedure Tfrm01_Main.FindRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
begin
  SelectForm405;
  Application.ProcessMessages;
  GetF405Form.FindRezidInPer(AT055_ID, AT028_ID, AFloatArray);
end;

procedure Tfrm01_Main.FindNRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
begin
  SelectForm405;
  Application.ProcessMessages;
  GetF405Form.FindNRezidInPer(AT055_ID, AT028_ID, AFloatArray);
end;

procedure Tfrm01_Main.FindMainEmissInPer(const AT055_ID, AT030_ID: Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindMainEmissInPer(AT055_ID, AT030_ID);
end;

procedure Tfrm01_Main.FindMainIssuerInPer(const AT055_ID, AT028_ID: Double; AT027_IDs: array of Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindMainIssuerInPer(AT055_ID, AT028_ID, AT027_IDs);
end;

procedure Tfrm01_Main.FindMainRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
begin
  SelectForm405;
  Application.ProcessMessages;
  GetF405Form.FindMainRezidInPer(AT055_ID, AT028_ID, AFloatArray);
end;

procedure Tfrm01_Main.FindMainNRezidInPer(const AT055_ID, AT028_ID: Double; AFloatArray: TFloatArray);
begin
  SelectForm405;
  Application.ProcessMessages;
  GetF405Form.FindMainNRezidInPer(AT055_ID, AT028_ID, AFloatArray);
end;

procedure Tfrm01_Main.FindMainEmissionsInPeriod(const AT055_ID_S,
  AT055_ID_E: Double; AT030_IDs: TFloatArray);
begin
  SelectForm405;
  Application.ProcessMessages;
  GetF405Form.FindMainEmissionsInPeriod(AT055_ID_S, AT055_ID_E, AT030_IDs);
end;

procedure Tfrm01_Main.FindMainEmissInQuartal(const AT055_ID1, AT055_ID2,
  AT030_ID: Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindMainEmissInQuartal(AT055_ID1, AT055_ID2, AT030_ID);
end;

//������� ��� 32 �� ������

procedure Tfrm01_Main.FindEmission_711_31_InPer(const AT030_ID,
  AT055_ID: Double);
begin
  SelectForm711_31;
  Application.ProcessMessages;
  GetF711_31Form.FindEmiss_InPer(AT030_ID, AT055_ID);
end;

//������� ��� 32 �� ������

procedure Tfrm01_Main.FindEmission_711_32_InPer(const AT030_ID,
  AT055_ID: Double);
begin
  SelectForm711_32;
  Application.ProcessMessages;
  GetF711_32Form.FindEmiss_InPer(AT030_ID, AT055_ID);
end;

//�������� ��� 31 �� ������

procedure Tfrm01_Main.FindIssuer_711_31_InPer(const AT028_ID,
  AT055_ID: Double;  AFloatArray: TFloatArray);
begin
  SelectForm711_31;
  Application.ProcessMessages;
  GetF711_31Form.FindIssuer_InPer(AT028_ID, AT055_ID, AFloatArray);
end;

//�������� ��� 32 �� ������

procedure Tfrm01_Main.FindIssuer_711_32_InPer(const AT028_ID,
  AT055_ID: Double;  AFloatArray: TFloatArray);
begin
  SelectForm711_32;
  Application.ProcessMessages;
  GetF711_32Form.FindIssuer_InPer(AT028_ID, AT055_ID, AFloatArray);
end;

//������� ������� ��� 32 �� ������

procedure Tfrm01_Main.FindMainEmission_711_32_InPer(const AT030_ID,
  AT055_ID: Double);
begin
  SelectForm711_32;
  Application.ProcessMessages;
  GetF711_32Form.FindMainEmiss_InPer(AT030_ID, AT055_ID);
end;

procedure Tfrm01_Main.FindMainEmissions_711_12_InPer(const AT055_ID_S,
  AT055_ID_E: Double; AT030_IDs: TFloatArray);
begin
  SelectForm711_12;
  Application.ProcessMessages;
  GetF711_12Frame.FindMainEmissionsInPer(AT055_ID_S, AT055_ID_E, AT030_IDs);
end;

//������� �������� ��� 32 �� ������

procedure Tfrm01_Main.FindMainIssuer_711_32_InPer(const AT028_ID,
  AT055_ID: Double;  AFloatArray: TFloatArray);
begin
  SelectForm711_32;
  Application.ProcessMessages;
  GetF711_32Form.FindIssuer_InPer(AT028_ID, AT055_ID, AFloatArray);
end;

//������� ������� ��� 31 �� ������

procedure Tfrm01_Main.FindMainEmission_711_31_InPer(const AT030_ID,
  AT055_ID: Double);
begin
  SelectForm711_31;
  Application.ProcessMessages;
  GetF711_31Form.FindMainEmiss_InPer(AT030_ID, AT055_ID);
end;

//������� �������� ��� 31 �� ������

procedure Tfrm01_Main.FindMainIssuer_711_31_InPer(const AT028_ID,
  AT055_ID: Double;  AFloatArray: TFloatArray);
begin
  SelectForm711_31;
  Application.ProcessMessages;
  GetF711_31Form.FindMainIssuer_InPer(AT028_ID, AT055_ID, AFloatArray);
end;

procedure Tfrm01_Main.FindAllEmissInQuartal(const AT055_ID1, AT055_ID2,
  AT030_ID: Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindAllEmissInQuartal(AT055_ID1, AT055_ID2, AT030_ID);
end;

procedure Tfrm01_Main.actSetRepPathExecute(Sender: TObject);
begin
  frm10_RepOutputPath := Tfrm10_RepOutputPath.Create(Self);
  frm10_RepOutputPath.ShowModal;
  frm10_RepOutputPath.Free;
  frm10_RepOutputPath := nil;
end;

procedure Tfrm01_Main.FindAllMainIssuer(const AID: Double);
begin
  SelectForm405Link;

  Application.ProcessMessages;

  GetF405LinkForm.FindAllMainIssuer(AID);
end;

procedure Tfrm01_Main.FindAllMainIssuerInn(const AInn: String);
begin
  SelectForm405Link;

  Application.ProcessMessages;

  GetF405LinkForm.FindAllMainIssuerINN(AInn);
end;

procedure Tfrm01_Main.FindAllIssEmiss(const AT028_ID: Double; const AT027_IDs: array of Double);
begin
  SelectEmissInf;

  Application.ProcessMessages;

  GetEmissInfForm.FindAllIssEmiss(AT028_ID, AT027_IDs);
end;

procedure Tfrm01_Main.FindAllMainNRezid(const AID: Double);
begin
  SelectForm405Link;

  Application.ProcessMessages;

  GetF405LinkForm.FindAllMainNRezid(AID);
end;

procedure Tfrm01_Main.FindAllOnlyMainNRezid(const AID: Double);
begin
  SelectForm405Link;

  Application.ProcessMessages;

  GetF405LinkForm.FindAllOnlyMainNRezid(AID);
end;

procedure Tfrm01_Main.FindAllMainRezid(const AID: Double);
begin
  SelectForm405Link;

  Application.ProcessMessages;

  GetF405LinkForm.FindAllMainRezid(AID);
end;

procedure Tfrm01_Main.FindAllOnlyMainRezid(const AID: Double);
begin
  SelectForm405Link;

  Application.ProcessMessages;

  GetF405LinkForm.FindAllOnlyMainRezid(AID);
end;

procedure Tfrm01_Main.FindAllMainRezidInn(const AInn: String);
begin
  SelectForm405Link;

  Application.ProcessMessages;

  GetF405LinkForm.FindAllMainRezidINN(AInn);
end;

procedure Tfrm01_Main.FindOperFiltered(const AT055_ID1, AT055_ID2,
  AT027_ID, AT028_ID, AT006_ID, AT033_ID, AT012_ID, AT013_ID: Double;
  AT001_PART_IDs: array of Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindOperFiltered(AT055_ID1, AT055_ID2,
  AT027_ID, AT028_ID, AT006_ID, AT033_ID, AT012_ID, AT013_ID, AT001_PART_IDs);
end;

procedure Tfrm01_Main.FindOpersByMainIssueAndRezInPer(const AT055_ID,
  AT027_MAIN_ID, AT012_ID: Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindOpersByMainIssueAndRezInPer(AT055_ID, AT027_MAIN_ID, AT012_ID);
end;

procedure Tfrm01_Main.FindOpersByMainIssueAndNrezInPer(const AT055_ID,
  AT027_MAIN_ID, AT013_ID: Double);
begin
  SelectForm405;

  Application.ProcessMessages;

  GetF405Form.FindOpersByMainIssueAndNrezInPer(AT055_ID, AT027_MAIN_ID, AT013_ID);
end;

procedure Tfrm01_Main.SelectForm405Link;
begin
  if TreeView.Items.Count > 3 then
  begin
    TreeView.Items[3].Selected := True;
  end;
end;

procedure Tfrm01_Main.Find_405_Link_01(const AT055_ID1, AT055_ID2, AT027_ID,
  AT028_ID: Double);
begin
  SelectForm405Link;
  Application.ProcessMessages;
  GetF405LinkForm.Find_405_Link_01(AT055_ID1, AT055_ID2, AT027_ID, AT028_ID);
end;

function Tfrm01_Main.GetF405LinkForm: TC001_OpersByDate;
begin
  Result := TC001_OpersByDate(FDBTree.TreeNodeData[TreeView.Items[3].AbsoluteIndex].Form);
end;

procedure Tfrm01_Main.ND_Find_01(const AT055_ID, AT027_ID,
  AT028_ID: Double);
begin
  // ��������� � ������������ ������������ � ����������� ������
  GetNDForm.Find_01(AT055_ID, AT027_ID, AT028_ID);
end;

procedure Tfrm01_Main.ND_FindEmissionsInPer(const AT055_ID_S,
  AT055_ID_E: Double; AT030_IDs: TFloatArray);
begin
  GetNDForm.FindEmissionsInPer(AT055_ID_S, AT055_ID_E, AT030_IDs);
end;

function Tfrm01_Main.GetNDForm: TF003_ND;
var
  VIndex: Integer;
begin
  Result := nil;

  // ���� ������ ���� � ������
  VIndex := GetTreeIndexByName('TF003_ND');

  // �� ����� �����
  if VIndex = -1 then Exit;

  // �������� ����
  TreeView.Items[VIndex].Selected := True;

  // ���������� ������� �����
  VIndex := TreeView.Items[VIndex].AbsoluteIndex;
  Result := TF003_ND(FDBTree.TreeNodeData[VIndex].Form);
end;

procedure Tfrm01_Main.SelectForm711_12;
begin
  if TreeView.Items.Count > 1 then
    begin
    TreeView.Items[GetFormIndex('TB000_Opers')].Selected := True;
    TB000_Opers(FActiveContr).PageControl1.ActivePageIndex := 1;
    end;
end;

// �711 ������ 1.2 ������ �� �������� � �� ������
function Tfrm01_Main.GetF711_12Frame: TB000_Opers;
begin
  Result := TB000_Opers(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('TB000_Opers')].AbsoluteIndex].Form);
end;

// ������� � ������ �711-1.2 �� ������� IIP
procedure Tfrm01_Main.FindIssuer_711_12_InPer(const AT028_ID, AT055_ID_S, AT055_ID_E: Double; AT027_IDs: array of Double);
begin
  SelectForm711_12;
  Application.ProcessMessages;
  GetF711_12Frame.FindIssuer_InPer(AT028_ID, AT055_ID_S, AT055_ID_E, AT027_IDs);
end;

procedure Tfrm01_Main.SelectIssuersListForm;
begin
  if TreeView.Items.Count > 1 then
    begin
    TreeView.Items[GetFormIndex('Tfrm32_IssuerList')].Selected := True;
    end;
end;

function Tfrm01_Main.GetIssuersListForm: Tfrm32_IssuerList;
begin
  Result := Tfrm32_IssuerList(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('Tfrm32_IssuerList')].AbsoluteIndex].Form);
end;

procedure Tfrm01_Main.FindIssuer(const AT028_ID: Double);
begin
  SelectIssuersListForm;
  Application.ProcessMessages;
  GetIssuersListForm.FindIssuer(AT028_ID);
end;

procedure Tfrm01_Main.SelectEmissionsListForm;
begin
  if TreeView.Items.Count > 1 then
    begin
    TreeView.Items[GetFormIndex('Tfrm31_EmisInfList')].Selected := True;
    end;
end;

function Tfrm01_Main.GetEmissionsListForm: Tfrm31_EmisInfList;
begin
  Result := Tfrm31_EmisInfList(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('Tfrm31_EmisInfList')].AbsoluteIndex].Form);
end;

procedure Tfrm01_Main.FindEmisByIssuer(const AT027_ID, AT028_ID: Double; AISIN, AINN: string; ASource: integer);
begin
  SelectEmissionsListForm;
  Application.ProcessMessages;
  GetEmissionsListForm.FindEmissByIssuer(AT027_ID, AT028_ID, AISIN, AINN, ASource);
end;

function Tfrm01_Main.GetFormIndex(AFormClass: string): integer;
var
  i: integer;
begin
  Result := -1;
  for i := 0 to TreeView.Items.Count - 1 do
    begin
    if FDBTree.TreeNodeData[TreeView.Items[I].AbsoluteIndex].Code = AFormClass then
      begin
      Result := i;
      break;
      end;
  end;
end;

procedure Tfrm01_Main.F415_12_FindEmissionsInPer(const AT055_ID_S,
  AT055_ID_E: Double; AT030_IDs: TFloatArray);
begin
  SelectForm415_12;
  Application.ProcessMessages;
  GetF415_12Form.FindEmissions_12_InPer(AT055_ID_S, AT055_ID_E, AT030_IDs);
end;

procedure Tfrm01_Main.SelectForm415_12;
begin
  if TreeView.Items.Count > 1 then
    begin
    TreeView.Items[GetFormIndex('TF005_Opers')].Selected := True;
    TF005_Opers(FActiveContr).PageControl1.ActivePageIndex := 1;
    end;
end;

function Tfrm01_Main.GetF415_12Form: TF005_Opers;
begin
  Result := TF005_Opers(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('TF005_Opers')].AbsoluteIndex].Form);
end;


procedure Tfrm01_Main.FindIssuer_415_12_InPer(const AT028_ID, AT055_S_ID, AT055_E_ID, AT027_ID: Double);
begin
  SelectForm415_12;
  Application.ProcessMessages;
  GetF415_12Form.FindIssuer_12_InPer(AT028_ID, AT055_S_ID, AT055_E_ID, AT027_ID);
end;

procedure Tfrm01_Main.Find_711_Link_01(const AT055_ID, AT027_ID, APART_ID, AT028_ID: Double);
begin
  SelectForm711_Link;
  Application.ProcessMessages;
  GetF711_LinksFrame.FindIssuer_InPer(AT055_ID, AT027_ID, APART_ID, AT028_ID);
end;

procedure Tfrm01_Main.SelectForm711_Link;
begin
  if TreeView.Items.Count > 1 then
    begin
    TreeView.Items[GetFormIndex('TB004_Wizard')].Selected := True;
    TB004_Wizard(FActiveContr).PageControl.ActivePageIndex := 0;
    end;
end;

function Tfrm01_Main.GetF711_LinksFrame: TB004_Wizard;
begin
  Result := TB004_Wizard(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('TB004_Wizard')].AbsoluteIndex].Form);
end;

procedure Tfrm01_Main.Find_415_Link_01(const AT055_ID, AT027_ID, APART_ID,
  AT028_ID: Double);
begin
  SelectForm415_Link;
  Application.ProcessMessages;
  GetF415_LinksFrame.FindIssuer_InPer(AT055_ID, AT027_ID, APART_ID, AT028_ID);
end;

procedure Tfrm01_Main.SelectForm415_Link;
begin
  if TreeView.Items.Count > 1 then
    begin
    TreeView.Items[GetFormIndex('TF005_LinksWizard')].Selected := True;
    TF005_LinksWizard(FActiveContr).PageControl.ActivePageIndex := 0;
    end;
end;

function Tfrm01_Main.GetF415_LinksFrame: TF005_LinksWizard;
begin
  Result := TF005_LinksWizard(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('TF005_LinksWizard')].AbsoluteIndex].Form);
end;

procedure Tfrm01_Main.Find_415_Data(const AT055_ID_S, AT055_ID_E: Double; AT027_IDs: TFloatArray;
  APART_ID: Integer; APRIZ, ASECTOR, AACCOUNT: TStrings; AT028_ID: Double);
begin
  SelectForm415_Data;
  Application.ProcessMessages;
  GetF415_DataFrame.FindData_InPer(AT055_ID_S, AT055_ID_E, AT027_IDs, APART_ID, APRIZ, ASECTOR, AACCOUNT, AT028_ID);
end;

procedure Tfrm01_Main.SelectForm415_Data;
begin
  if TreeView.Items.Count > 1 then
    begin
    TreeView.Items[GetFormIndex('TF005_Opers')].Selected := True;
    TF005_Opers(FActiveContr).PageControl1.ActivePageIndex := 0;
    end;
end;

function Tfrm01_Main.GetF415_DataFrame: TF005_Opers;
begin
  Result := TF005_Opers(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('TF005_Opers')].AbsoluteIndex].Form);
end;

procedure Tfrm01_Main.Find_711_Data(const AT055_ID_S, AT055_ID_E: Double;
  AT027_IDs: TFloatArray; APART_ID: Integer; APRIZ, ASECTOR,
  AACCOUNT: TStrings; AT028_ID: Double);
begin
  SelectForm711_Data;
  Application.ProcessMessages;
  GetF711_DataFrame.FindData_InPer(AT055_ID_S, AT055_ID_E, AT027_IDs, APART_ID, APRIZ, ASECTOR, AACCOUNT, AT028_ID);
end;

procedure Tfrm01_Main.SelectForm711_Data;
begin
  if TreeView.Items.Count > 1 then
    begin
    TreeView.Items[GetFormIndex('TB000_Opers')].Selected := True;
    TB000_Opers(FActiveContr).PageControl1.ActivePageIndex := 0;
    end;
end;

function Tfrm01_Main.GetF711_DataFrame: TB000_Opers;
begin
  Result := TB000_Opers(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('TB000_Opers')].AbsoluteIndex].Form);
end;

procedure Tfrm01_Main.Find_417(const ASecType: String; ADateOp: TDateTime; ARegn, AOpType: String; AT030_ID: Double; APayDir, AOpCurr: String; AOpCount, AOpSum: Double);
begin
  SelectForm417_Data;
  Application.ProcessMessages;
  GetF417_DataFrame.FindOpByDate(ASecType, ADateOp, ARegn, AOpType, AT030_ID, APayDir, AOpCurr, AOpCount, AOpSum);
end;

procedure Tfrm01_Main.SelectForm417_Data;
begin
  if TreeView.Items.Count > 1 then
    begin
    TreeView.Items[GetFormIndex('TJ002_Opers')].Selected := True;
    end;
end;

function Tfrm01_Main.GetF417_DataFrame: TJ002_Opers;
begin
  Result := TJ002_Opers(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('TJ002_Opers')].AbsoluteIndex].Form);
end;

procedure Tfrm01_Main.FindIssuer_417_InPer(AT028_ID: Double; ADateStart, ADateEnd: TDateTime; ASecType, AIsin: String);
begin
  SelectForm417_Data;
  Application.ProcessMessages;
  GetF417_DataFrame.FindIssuer_InPer(AT028_ID, ADateStart, ADateEnd, ASecType, AIsin);
end;

procedure Tfrm01_Main.Log(Sender: TObject; LogLevel: integer; Msg: string;
  ToFile: boolean);
begin
//  ShowMessage(Msg); ���� ������ �� �����!!!
end;

procedure Tfrm01_Main.FindInnKoData;
begin
  SelectInnKoData;
  Application.ProcessMessages;
end;

procedure Tfrm01_Main.SelectInnKoData;
begin
  if TreeView.Items.Count > 1 then
    begin
    TreeView.Items[GetFormIndex('TM001_InnKoList')].Selected := True;
    end;
end;

function Tfrm01_Main.GetIsuDataFrame: TM002_IsuList;
begin
  Result := TM002_IsuList(FDBTree.TreeNodeData[TreeView.Items[GetFormIndex('TM002_IsuList')].AbsoluteIndex].Form);
end;

procedure Tfrm01_Main.FindIsuData;
begin
  SelectIsuData;
  Application.ProcessMessages;
  GetIsuDataFrame.InitFilters;
end;

procedure Tfrm01_Main.SelectIsuData;
begin
  if TreeView.Items.Count > 1 then
    begin
    TreeView.Items[GetFormIndex('TM002_IsuList')].Selected := True;
    end;
end;

initialization
  // ������������ ������
  RegisterClasses([
    TA001_0_LoadEmit,
    TA003_0_FSFR,
    TA004_0_RSN,
    TA005_0_MC,
    TA006_0_PT,
    TA007_0_CbondsLoad1,
    TA008_0_CbondsLoad2,
    TA009_0_CbondsLoad3,
    TB000_LoadWizard,
    TB000_Opers,
    TB004_Wizard,
    TC001_OpersByDate,
    TC002_CheckRates,
    TD000_LinkResid,
    TD001_LinkNresid,
    TE001_Wizard,
    TE002_DrList,
    TF001_Wizard,
    TF003_ND,
    TF005_LinksWizard,
    TF005_LoadWizard,
    TF005_LoadWizard_a,
    TF005_Opers,
    Tfrm05_SumList,
    Tfrm06_BondList,
    Tfrm07_OperList,
    Tfrm08_PayList,
    Tfrm10_ReportsList,
    Tfrm12_ReplLog,
    Tfrm17_664List,
    Tfrm20_EmitList,
    Tfrm21_EmitTypeList,
    Tfrm22_CBList,
    Tfrm23_BankList,
    Tfrm29_SecTypeList,
    Tfrm31_EmisInfList,
    Tfrm32_IssuerList,
    Tfrm33_IssuerTypeList,
    Tfrm35_SecRegnList,
    Tfrm36_SostVypList,
    Tfrm37_SposobRazmList,
    Tfrm38_NewReports,
    Tfrm42_Classification,
    Tfrm47_IssuerGroupList,
    Tfrm50_IssuerLinker,
    Tfrm51_EmisLinker,
    Tfrm53_CountryList,
    Tfrm54_MMVBRates,
    Tfrm56_664BankList,
    Tfrm57_664OperList,
    Tfrm58_101List,
    Tfrm59_DayList,
    Tfrm63_711List,
    Tfrm64_711List,
    Tfrm69_CurrencyList,
    Tfrm76_CalcQuotList,
    Tfrm79_711CodeList,
    Tfrm80_CalcRemains,
    Tfrm84_BICList,
    Tfrm88_IndustryList,
    Tfrm90_SumReports,
    Tfrm90_SumReports711,
    Tfrm91_405Links,
    Tfrm96_711Links,
    Tfrm100_InvTypesList,
    Tfrm100_InvTypesP2List,
    Tfrm102_BON1List,
    Tfrm881_SectorsList,
    TG001_Emissions,
    TG003_Requests,
    TH001_CbondsStocksList,
    TH002_CBondsEmissionsList,
    TI001_LoadWizard,
    TJ002_LoadWizard,
    TJ002_Opers,
    Tz001_TABS_frame,
    Tz002_fm_hist_grd,
    TK001_IssuersLinks,
    TK002_EmissionsLinks,
    TK001_ReestersGrid,
    TL001_SumList,
    TM001_LoadWizard,
    TM001_InnKoList,
    TM002_IsuLoadWizard,
    TM002_IsuList
{
    Tfrm13_QuotationList,
    Tfrm15_401List,
    Tfrm16_711List,
    Tfrm18_SMIList,
    Tfrm19_711List,
    Tfrm24_RezidList,
    Tfrm25_NRezidList,
    Tfrm28_RezidLinker,
    Tfrm30_EmissionList,
    Tfrm44_RezidGroupList,
    Tfrm46_NRezidGroupList,
    Tfrm48_EmisGroupList,
    Tfrm49_NRezidLinker,
    Tfrm55_NKOList,
    Tfrm60_DividentsList,
    Tfrm61_PortfelList,
    Tfrm62_661List,
    Tfrm71_NKOSumList,
    Tfrm75_RTSList,
    TA002_0_ScrinEmit,
    Tfrm103_NkdList,
    Tfrm200_GKORatesList,
    Tfrm104_InvAnalyzeList,
}
    ]);

end.
