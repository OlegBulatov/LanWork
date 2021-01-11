unit F005_LoadPage2aFrame;

interface

uses
  fm031_WizardPageFrame, F005_LoadPage2aProgressFrame, Forms, fm000_Parent,
  fm008_DBObjectFrame, fm009_ProgressFrame, ActnList, StdCtrls, Controls,
  ExtCtrls, Classes, B000_LoadPage2ProgressFrame;

type
  TF005_LoadPage2a = class(TfmWizardPage)
    Progress: TF005_LoadPage2aProgress;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject);  override;
    procedure DoOnShowPage(const AType: TMoveType); override;
  end;

var
  F005_LoadPage2a: TF005_LoadPage2a;

implementation

uses
  F005_LoadWizard_aFrame;

{$R *.DFM}

{ TF005_LoadPage2a }

procedure TF005_LoadPage2a.InitFrame(Sender: TObject);
begin
  Progress.InitFrame(Self);
  inherited;
end;

procedure TF005_LoadPage2a.DoOnShowPage(const AType: TMoveType);
begin
// ”шло в A09_LoadPage2ProgressFrame
//  Progress.MaxCount := TA09_LoadWizard(Wizard).Page1.Grid.oqCount.GetVariable('N') +
//		       TA09_LoadWizard(Wizard).Page1.Grid.oqCount.GetVariable('S');

  Progress.T055_ID_S := TF005_LoadWizard_a(Wizard).Page1.PeriodFilter.KeyValueFloat;
  Progress.T055_ID_E := TF005_LoadWizard_a(Wizard).Page1.PeriodFilter.KeyValue2Float;

  Progress.LoadN := TF005_LoadWizard_a(Wizard).Page1.Grid.cbLoadN.Checked;
  Progress.LoadR := TF005_LoadWizard_a(Wizard).Page1.Grid.cbLoadR.Checked;

  inherited;

  // запускаем процесс загрузки
  Progress.StartProcess;
end;

end.
