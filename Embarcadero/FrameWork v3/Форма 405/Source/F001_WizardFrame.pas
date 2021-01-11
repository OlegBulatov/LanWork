unit F001_WizardFrame;

interface

uses
  fm030_WizardFrame, F001_FilesFrame, F001_Step01Frame, F001_Step02Frame,
  Forms, fm000_Parent, fm031_WizardPageFrame, Classes, ActnList, ComCtrls,
  StdCtrls, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , ActnList, ComCtrls, StdCtrls, ExtCtrls, fm000_Parent,
//  fm031_WizardPageFrame
//

type
  TF001_Wizard = class(TfmWizard, IFilesLink)
    F001_Step011: TF001_Step01;
    F001_Step021: TF001_Step02;
  private
    // реализация IFilesLink
    function GetT055_ID: Double;
    function GetLoadPath: string;
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  F001_Wizard: TF001_Wizard;

implementation

{$R *.DFM}

{ TF001_Wizard }

function TF001_Wizard.GetLoadPath: string;
begin
  Result := F001_Step011.LoadPath;
end;

function TF001_Wizard.GetT055_ID: Double;
begin
  Result := F001_Step011.T055_ID;
end;

procedure TF001_Wizard.InitFrame(Sender: TObject);
begin
  // Шаг 2
  F001_Step021.F001_Files1.Link := Self;
  // Шаг 3
  //R01_Step031.Link := Self;
  //R01_Step031.R01_Link1.R01_Dividens1.Link := Self;
  //R01_Step031.R01_Link1.R01_Opers1.Link := Self;

  inherited;
end;

end.
