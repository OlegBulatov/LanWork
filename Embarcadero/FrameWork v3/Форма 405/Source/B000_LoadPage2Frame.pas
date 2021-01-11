unit B000_LoadPage2Frame;

interface

uses
  fm031_WizardPageFrame, B000_LoadPage2ProgressFrame, Forms, fm000_Parent,
  fm008_DBObjectFrame, fm009_ProgressFrame, ActnList, StdCtrls, Controls,
  ExtCtrls, Classes;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , ActnList, StdCtrls, ExtCtrls, fm000_Parent,
//  fm008_DBObjectFrame, fm009_ProgressFrame, ;

type
  TB000_LoadPage2 = class(TfmWizardPage)
    Progress: TB000_LoadPage2Progress;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject);  override;
    procedure DoOnShowPage(const AType: TMoveType); override;
  end;

var
  B000_LoadPage2: TB000_LoadPage2;

implementation

uses
  B000_LoadWizardFrame;

{$R *.DFM}

{ TB000_LoadPage2 }

procedure TB000_LoadPage2.InitFrame(Sender: TObject);
begin
  Progress.InitFrame(Self);
  inherited;
end;

procedure TB000_LoadPage2.DoOnShowPage(const AType: TMoveType);
begin
// ”шло в A09_LoadPage2ProgressFrame
//  Progress.MaxCount := TA09_LoadWizard(Wizard).Page1.Grid.oqCount.GetVariable('N') +
//		       TA09_LoadWizard(Wizard).Page1.Grid.oqCount.GetVariable('S');

  Progress.T055_ID_S := TB000_LoadWizard(Wizard).Page1.PeriodFilter.KeyValueFloat;
  Progress.T055_ID_E := TB000_LoadWizard(Wizard).Page1.PeriodFilter.KeyValue2Float;

  Progress.LoadN := TB000_LoadWizard(Wizard).Page1.Grid.cbLoadN.Checked;
  Progress.LoadR := TB000_LoadWizard(Wizard).Page1.Grid.cbLoadR.Checked;

  inherited;

  // запускаем процесс загрузки
  Progress.StartProcess;
end;

end.
