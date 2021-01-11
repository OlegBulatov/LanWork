unit E001_WizardFrame;

interface

uses
  fm030_WizardFrame, E001_RemainsFrame, E001_Step01Frame, E001_Step02Frame,
  Forms, fm000_Parent, fm031_WizardPageFrame, Classes, ActnList, ComCtrls,
  StdCtrls, Controls, ExtCtrls;

type
  TE001_Wizard = class(TfmWizard, IRemainsLink)
    E001_Step011: TE001_Step01;
    E001_Step021: TE001_Step02;
  private
    // реализация IRemainsLink
    function GetT027_ID: Double;
    function GetT055_ID: Double;
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  E001_Wizard: TE001_Wizard;

implementation

{$R *.DFM}

{ TE001_Wizard }

function TE001_Wizard.GetT027_ID: Double;
begin
  Result := E001_Step011.T027_ID;
end;

function TE001_Wizard.GetT055_ID: Double;
begin
  Result := E001_Step011.T055_ID;
end;

procedure TE001_Wizard.InitFrame(Sender: TObject);
begin
  // Шаг 2
  //R01_Step021.Link := Self;
  E001_Step021.E001_Remains1.Link := Self;
  // Шаг 3
  //R01_Step031.Link := Self;
  //R01_Step031.R01_Link1.R01_Dividens1.Link := Self;
  //R01_Step031.R01_Link1.R01_Opers1.Link := Self;

  inherited;
end;

end.
