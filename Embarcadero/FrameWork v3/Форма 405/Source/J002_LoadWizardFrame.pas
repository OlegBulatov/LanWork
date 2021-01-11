unit J002_LoadWizardFrame;

interface

uses
  fm030_WizardFrame, ComCtrls, J002_LoadPage1Frame, J002_LoadPage2Frame,
  J002_LoadPage3Frame, Forms, fm000_Parent, fm031_WizardPageFrame, Classes,
  ActnList, StdCtrls, Controls, ExtCtrls, F005_LoadPage3aFrame,
  F005_LoadPage2aFrame, F005_LoadPage1aFrame;

type
  TJ002_LoadWizard = class(TfmWizard)
    Page1: TJ002_LoadPage1;
    Page2: TJ002_LoadPage2;
    Page3: TJ002_LoadPage3;
    TabSheet3: TTabSheet;
    procedure actNextUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actBackUpdate(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  J002_LoadWizard: TJ002_LoadWizard;

implementation

uses untMessages;

{$R *.DFM}

procedure TJ002_LoadWizard.actNextUpdate(Sender: TObject);
begin
  inherited;
  if PageControl.ActivePageIndex = 0 then
    begin
    if Page1.Grid.odsList.IsEmpty then
      actNext.Enabled := False
    else if not Page1.Grid.cbLoadN.Checked and not Page1.Grid.cbLoadR.Checked then
      actNext.Enabled := False
    else if (Page1.Grid.cbLoadN.Checked and (Page1.Grid.oqCount.GetVariable('N') = 0)) and not Page1.Grid.cbLoadR.Checked then
      actNext.Enabled := False
    else if (Page1.Grid.cbLoadR.Checked and (Page1.Grid.oqCount.GetVariable('S') = 0)) and not Page1.Grid.cbLoadN.Checked then
      actNext.Enabled := False;
    end
  else if PageControl.ActivePageIndex = 1 then
    begin
    if Page2.Progress.InProgress then
      actNext.Enabled := False;
    end;

end;

procedure TJ002_LoadWizard.actNextExecute(Sender: TObject);
var
  vStr: String;
begin
  if PageControl.ActivePageIndex = 0 then
    begin
    vStr :=  'Будут загружены отчеты:' + #13#10;
    if Page1.Grid.cbLoadN.Checked then
      vStr := vStr + '   новые - ' + Page1.Grid.lCountN.Caption + #13#10;
    if Page1.Grid.cbLoadR.Checked then
      vStr := vStr + '   корректировочные - ' + Page1.Grid.lCountR.Caption + #13#10;
    vStr := vStr + #13#10 + 'Запустить загрузку?';
    if not TAppMessages.ShowConfirmation(vStr) then Exit;
    end
  else if PageControl.ActivePageIndex = 1 then
    begin
    Page3.Grid.odsList.SetVariable('T180_ID', Page2.Progress.T180_ID);
    Page3.Grid.RefreshData;
    end;

   inherited;
end;

procedure TJ002_LoadWizard.actBackUpdate(Sender: TObject);
begin
  inherited;
  if PageControl.ActivePageIndex = 1 then
    begin
    if Page2.Progress.InProgress then
      actBack.Enabled := False;
    end
  else
   if PageControl.ActivePageIndex = 2 then
    actBack.Enabled := False;
end;

procedure TJ002_LoadWizard.actFinishExecute(Sender: TObject);
begin
  inherited;
  Page1.Grid.RefreshData;
  //Здесь надо рефрешить верхний фильтр журнала загрузки и страницу отчетов
//  if Assigned(A10_LoadJournal) then
//    A10_LoadJournal.InitFrames;
end;

end.
