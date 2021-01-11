unit B004_WizardFrame;

interface

uses
  fm030_WizardFrame, B004_EmissionsFrame, Db, B004_Step01Frame,
  B004_Step02Frame, untParams, Forms, fm000_Parent,
  fm031_WizardPageFrame, Classes, ActnList, ComCtrls, StdCtrls, Controls,
  ExtCtrls;

type
  TB004_Wizard = class(TfmWizard, IEmissions)
    B004_Step011: TB004_Step01;
    B004_Step021: TB004_Step02;
  private
    // реализация IEmissions
    function GetT055_ID: Double;
    function GetT028_ID: Double;
    function GetT028_ID_MAIN: Double;
    function IsChecked_T027_ID: boolean;
    function GetT027_ID: TFloatArray;
    function GetPART_ID: Double;
    function IsChecked_DK_PRIZ: boolean;
    function GetDK_PRIZ: TStrArray;
    function IsChecked_SEKTOR: boolean;
    function GetSEKTOR: TStrArray;
    function IsChecked_VID_SH: boolean;
    function GetVID_SH: TStrArray;
  public
    procedure InitFrame(Sender: TObject); override;
    procedure FindIssuer_InPer(const AT055_ID, AT027_ID, APART_ID, AT028_ID: Double);
  end;

var
  B004_Wizard: TB004_Wizard;

implementation

{$R *.DFM}

{ TB004_Wizard }

function TB004_Wizard.GetPART_ID: Double;
begin
  Result := B004_Step011.B004_Issuers1.PART_ID;
end;

function TB004_Wizard.GetT027_ID: TFloatArray;
begin
  Result := B004_Step011.B004_Issuers1.T027_ID;
end;

function TB004_Wizard.GetT028_ID: Double;
begin
  Result := B004_Step011.B004_Issuers1.T028_ID;
end;

function TB004_Wizard.GetT028_ID_MAIN: Double;
begin
  Result := B004_Step011.B004_Issuers1.T028_ID_MAIN;
end;

function TB004_Wizard.GetT055_ID: Double;
begin
  Result := B004_Step011.B004_Issuers1.T055_ID;
end;

function TB004_Wizard.GetDK_PRIZ: TStrArray;
begin
  Result := B004_Step011.B004_Issuers1.DK_PRIZ;
end;

function TB004_Wizard.GetSEKTOR: TStrArray;
begin
  Result := B004_Step011.B004_Issuers1.SEKTOR;
end;

function TB004_Wizard.GetVID_SH: TStrArray;
begin
  Result := B004_Step011.B004_Issuers1.VID_SH;
end;

function TB004_Wizard.IsChecked_T027_ID: boolean;
begin
  Result := B004_Step011.B004_Issuers1.SecTypeFilter.cb.Checked;
end;

function TB004_Wizard.IsChecked_DK_PRIZ: boolean;
begin
  Result := B004_Step011.B004_Issuers1.PrizFilter.cb.Checked;
end;

function TB004_Wizard.IsChecked_SEKTOR: boolean;
begin
  Result := B004_Step011.B004_Issuers1.SectorFilter.cb.Checked;
end;

function TB004_Wizard.IsChecked_VID_SH: boolean;
begin
  Result := B004_Step011.B004_Issuers1.AccountFilter.cb.Checked;
end;

procedure TB004_Wizard.InitFrame(Sender: TObject);
begin
  // Шаг 2
  B004_Step021.B004_Emissions1.Link := Self;

  inherited;
end;

procedure TB004_Wizard.FindIssuer_InPer(const AT055_ID, AT027_ID, APART_ID,
  AT028_ID: Double);
begin
  B004_Step011.B004_Issuers1.FindIssuer_InPer(AT055_ID, AT027_ID, APART_ID, AT028_ID);
end;

end.
