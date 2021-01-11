unit J002_LoadPage3Frame;

interface

uses
  fm031_WizardPageFrame, B000_LoadPage3GridFrame, Forms, fm000_Parent,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame, ActnList,
  StdCtrls, Controls, ExtCtrls, Classes, J002_LoadPage3GridFrame;

type
  TJ002_LoadPage3 = class(TfmWizardPage)
    Grid: TJ002_LoadPage3Grid;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  J002_LoadPage3: TJ002_LoadPage3;

implementation

{$R *.DFM}

{ TB000_LoadPage3 }

procedure TJ002_LoadPage3.InitFrame(Sender: TObject);
begin
  inherited;
  Grid.InitFrame(Self); 
end;

end.
