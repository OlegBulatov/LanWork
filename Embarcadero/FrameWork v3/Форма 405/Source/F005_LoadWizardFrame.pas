unit F005_LoadWizardFrame;

interface

uses
  fm030_WizardFrame, F005_LoadPage2GridFrame, F005_LoadPage1Frame,
  F005_LoadPage2Frame, Forms, fm000_Parent, fm031_WizardPageFrame, Classes,
  ActnList, ComCtrls, StdCtrls, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  ActnList, ComCtrls, StdCtrls, ExtCtrls, fm000_Parent,
//

type
  TF005_LoadWizard = class(TfmWizard, IFilesLink)
    Page1: TF005_LoadPage1;
    Page2: TF005_LoadPage2;
    procedure actNextUpdate(Sender: TObject);
    procedure actFinishUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
  private
    // реализация IFilesLink
    function GetLoadPath: string;
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  F005_LoadWizard: TF005_LoadWizard;

implementation

{$R *.DFM}

{ TF005_LoadWizard }

function TF005_LoadWizard.GetLoadPath: string;
begin
  Result := Page1.LoadPath;
end;

procedure TF005_LoadWizard.InitFrame(Sender: TObject);
begin
  // Шаг 2
  Page2.Grid.Link := Self;
  // Шаг 3
  //R01_Step031.Link := Self;
  //R01_Step031.R01_Link1.R01_Dividens1.Link := Self;
  //R01_Step031.R01_Link1.R01_Opers1.Link := Self;

  inherited;
end;

procedure TF005_LoadWizard.actNextUpdate(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 0 then
    actNext.Enabled := Page1.CanClosePage(mtNext)
  else if PageControl.ActivePageIndex = 1 then
    actNext.Enabled := Page2.CanClosePage(mtNext)
  else
    inherited;
end;

procedure TF005_LoadWizard.actNextExecute(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 1 then
    begin
    Page2.Grid.ProcessOperations;
    end
  else
    inherited;
end;

procedure TF005_LoadWizard.actFinishUpdate(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 1 then
    actFinish.Enabled := not Page2.CanClosePage(mtNext)
  else
    inherited;
end;

end.
