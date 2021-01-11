unit F005_LoadPage3aFrame;

interface

uses
  fm031_WizardPageFrame, B000_LoadPage3GridFrame, Forms, fm000_Parent,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame, ActnList,
  StdCtrls, Controls, ExtCtrls, Classes, F005_LoadPage3aGridFrame;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , ActnList, StdCtrls, ExtCtrls, fm000_Parent,
//  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame,
//

type
  TF005_LoadPage3a = class(TfmWizardPage)
    Grid: TF005_LoadPage3aGrid;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  F005_LoadPage3a: TF005_LoadPage3a;

implementation

{$R *.DFM}

{ TB000_LoadPage3 }

procedure TF005_LoadPage3a.InitFrame(Sender: TObject);
begin
  inherited;
  Grid.InitFrame(Self); 
end;

end.
