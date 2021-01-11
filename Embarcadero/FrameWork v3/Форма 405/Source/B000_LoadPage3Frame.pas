unit B000_LoadPage3Frame;

interface

uses
  fm031_WizardPageFrame, B000_LoadPage3GridFrame, Forms, fm000_Parent,
  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame, ActnList,
  StdCtrls, Controls, ExtCtrls, Classes;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , ActnList, StdCtrls, ExtCtrls, fm000_Parent,
//  fm008_DBObjectFrame, fm004_ListFrame, fm005_GridFrame,
//

type
  TB000_LoadPage3 = class(TfmWizardPage)
    Grid: TB000_LoadPage3Grid;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  B000_LoadPage3: TB000_LoadPage3;

implementation

{$R *.DFM}

{ TB000_LoadPage3 }

procedure TB000_LoadPage3.InitFrame(Sender: TObject);
begin
  inherited;
  Grid.InitFrame(Self); 
end;

end.
