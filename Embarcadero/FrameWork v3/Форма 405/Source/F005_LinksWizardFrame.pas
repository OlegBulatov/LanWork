unit F005_LinksWizardFrame;

interface

uses
  fm030_WizardFrame, F005_LinksStep2GridFrame, F005_LinksStep1Frame,
  F005_LinksStep2Frame, untParams, Forms, fm000_Parent,
  fm031_WizardPageFrame, Classes, ActnList, ComCtrls, StdCtrls, Controls,
  ExtCtrls;

type
  TF005_LinksWizard = class(TfmWizard, IEmissions415)
    Step1: TF005_LinksStep1;
    Step2: TF005_LinksStep2;
    procedure actNextUpdate(Sender: TObject);
  private
    // реализация IEmissions415
    function GetT055_ID: Double;
    function GetT028_ID: Double;
    function GetT028_PARENT_ID: Double;
    function IsCheckedPart: Boolean;
    function IsChecked_T027_ID: boolean;
    function GetT027_ID: TFloatArray;
    function GetPART_ID: Double;
    function IsChecked_DK_PRIZ: boolean;
    function GetDK_PRIZ: TStrArray;
    function IsChecked_SEKTOR: boolean;
    function GetSEKTOR: TStrArray;
    function IsChecked_VID_SH: boolean;
    function GetVID_SH: TStrArray;
  protected
    procedure DoFinish; override;
  public
    procedure InitFrame(Sender: TObject); override;
    procedure FindIssuer_InPer(const AT055_ID, AT027_ID, APART_ID, AT028_ID: Double);
  end;

var
  F005_LinksWizard: TF005_LinksWizard;

implementation

{$R *.DFM}

{ TF005_LinksWizard }

function TF005_LinksWizard.GetPART_ID: Double;
begin
  Result := Step1.Grid.PART_ID;
end;

function TF005_LinksWizard.GetT027_ID: TFloatArray;
begin
  Result := Step1.Grid.T027_ID;
end;

function TF005_LinksWizard.GetDK_PRIZ: TStrArray;
begin
  Result := Step1.Grid.DK_PRIZ;
end;

function TF005_LinksWizard.GetSEKTOR: TStrArray;
begin
  Result := Step1.Grid.SEKTOR;
end;

function TF005_LinksWizard.GetT028_ID: Double;
begin
  Result := Step1.Grid.T028_ID;
end;

function TF005_LinksWizard.GetT028_PARENT_ID: Double;
begin
  Result := Step1.Grid.T028_PARENT_ID;
end;

function TF005_LinksWizard.GetT055_ID: Double;
begin
  Result := Step1.Grid.T055_ID;
end;

function TF005_LinksWizard.GetVID_SH: TStrArray;
begin
  Result := Step1.Grid.VID_SH;
end;

function TF005_LinksWizard.IsCheckedPart: Boolean;
begin
  Result := Step1.Grid.PartFilter.cb.Checked;
end;

function TF005_LinksWizard.IsChecked_DK_PRIZ: boolean;
begin
  Result := Step1.Grid.PrizFilter.cb.Checked;
end;

function TF005_LinksWizard.IsChecked_SEKTOR: boolean;
begin
  Result := Step1.Grid.SectorFilter.cb.Checked;
end;

function TF005_LinksWizard.IsChecked_T027_ID: boolean;
begin
  Result := Step1.Grid.SecTypeFilter.cb.Checked;
end;

function TF005_LinksWizard.IsChecked_VID_SH: boolean;
begin
  Result := Step1.Grid.AccountFilter.cb.Checked;
end;

procedure TF005_LinksWizard.InitFrame(Sender: TObject);
begin
  Step2.Grid.Link := Self;
  inherited;
end;

procedure TF005_LinksWizard.actNextUpdate(Sender: TObject);
begin
  inherited;
  case PageControl.ActivePageIndex of
    0: begin
       actNext.Enabled := actNext.Enabled and
                          not Step1.Grid.odsList.IsEmpty and
                          (Step1.Grid.odsListISSUER_LINKED.AsString = 'Да');
       end;
  end;
end;

procedure TF005_LinksWizard.DoFinish;
begin
  ActiveStep.DoOnClosePage(mtBack);
  PageControl.ActivePageIndex := 0;
  ActiveStep.DoOnShowPage(mtNext);
end;

procedure TF005_LinksWizard.FindIssuer_InPer(const AT055_ID, AT027_ID,
  APART_ID, AT028_ID: Double);
begin
  Step1.Grid.FindIssuer_InPer(AT055_ID, AT027_ID, APART_ID, AT028_ID);
end;

end.
