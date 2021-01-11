unit J002_LoadPage2Frame;

interface

uses
  fm031_WizardPageFrame, J002_LoadPage2ProgressFrame, Forms, fm000_Parent,
  fm008_DBObjectFrame, fm009_ProgressFrame, ActnList, StdCtrls, Controls,
  ExtCtrls, Classes;

type
  TJ002_LoadPage2 = class(TfmWizardPage)
    Progress: TJ002_LoadPage2Progress;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject);  override;
    procedure DoOnShowPage(const AType: TMoveType); override;
  end;

var
  J002_LoadPage2: TJ002_LoadPage2;

implementation

uses
  J002_LoadWizardFrame;

{$R *.DFM}

{ TF005_LoadPage2a }

procedure TJ002_LoadPage2.InitFrame(Sender: TObject);
begin
  Progress.InitFrame(Self);
  inherited;
end;

procedure TJ002_LoadPage2.DoOnShowPage(const AType: TMoveType);
begin
// ”шло в A09_LoadPage2ProgressFrame
//  Progress.MaxCount := TA09_LoadWizard(Wizard).Page1.Grid.oqCount.GetVariable('N') +
//		       TA09_LoadWizard(Wizard).Page1.Grid.oqCount.GetVariable('S');

  Progress.T055_ID_S := TJ002_LoadWizard(Wizard).Page1.PeriodFilter.KeyValueFloat;
  Progress.T055_ID_E := TJ002_LoadWizard(Wizard).Page1.PeriodFilter.KeyValue2Float;

  Progress.LoadN := TJ002_LoadWizard(Wizard).Page1.Grid.cbLoadN.Checked;
  Progress.LoadR := TJ002_LoadWizard(Wizard).Page1.Grid.cbLoadR.Checked;

  inherited;

  // запускаем процесс загрузки
  Progress.StartProcess;
end;

end.
