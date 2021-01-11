unit M002_IsuLoadWizardFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm030_WizardFrame, ActnList, ComCtrls, StdCtrls, ExtCtrls, fm000_Parent,
  fm031_WizardPageFrame, M002_IsuLoadPage1Frame, M002_IsuLoadPage2Frame,
  M002_IsuLoadPage3Frame;

type
  TM002_IsuLoadWizard = class(TfmWizard)
    PanelShield: TPanel;
    TabSheet3: TTabSheet;
    Page1: TM002_IsuLoadPage1;
    Page2: TM002_IsuLoadPage2;
    Page3: TM002_IsuLoadPage3;
    procedure actNextUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure PageControlChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure actFinishUpdate(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
    procedure PageControlResize(Sender: TObject);
    procedure actBackExecute(Sender: TObject);
  private
    { Private declarations }
  public
    FFileName: string;
  end;

var
  M002_IsuLoadWizard: TM002_IsuLoadWizard;

implementation

uses M002_IsuListFrame, frm01_MainForm;

{$R *.DFM}

// Прячем заголовки шагов
procedure TM002_IsuLoadWizard.PageControlResize(Sender: TObject);
begin
  PanelShield.Left := 0;
  PanelShield.Top := 0;
  PanelShield.Height := PageControl.TabHeight;
  PanelShield.Width := PageControl.Width;
end;

procedure TM002_IsuLoadWizard.PageControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  AllowChange := False;
end;

procedure TM002_IsuLoadWizard.actFinishUpdate(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 2 then
    actFinish.Enabled := (Page3.Grid.HasErrors = False)
  else
    actFinish.Enabled := False;
end;

procedure TM002_IsuLoadWizard.actFinishExecute(Sender: TObject);
begin
  Page3.Grid.SaveFile2Db;
  // Переводим TabControl загрузки на страницу Шаг 1
  inherited;
  // Здесь переход на Реестр ИСУ - Данные
  frm01_Main.FindIsuData;
end;

procedure TM002_IsuLoadWizard.actNextUpdate(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 0 then
    begin
    if Page1.edFile.Text <> '' then
      actNext.Enabled := True
    else
      actNext.Enabled := False;
    end
  else
    actNext.Enabled := False;
end;

procedure TM002_IsuLoadWizard.actNextExecute(Sender: TObject);
begin
//  if PageControl.ActivePageIndex = 0 then
//    Page2.InitFrame(Self);

//  inherited;
  case PageControl.ActivePageIndex of
    1: Page3.InitFrame(Self);
  end;

  inherited;

  case PageControl.ActivePageIndex of
    1: Page2.LoadFile(Page1.od1.FileName);
  end;
end;

procedure TM002_IsuLoadWizard.actBackExecute(Sender: TObject);
begin
  case PageControl.ActivePageIndex of
    1: begin
       Page2.Progress.StopProcess;
       while Page2.Progress.InProgress do
         Application.ProcessMessages;
       end;
    2: begin
       PageControl.ActivePageIndex := 0;
       Exit;
       end;
  end;

  inherited;
end;

end.
