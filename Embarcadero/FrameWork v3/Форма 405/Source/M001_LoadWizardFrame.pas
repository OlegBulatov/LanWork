unit M001_LoadWizardFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm030_WizardFrame, ActnList, ComCtrls, StdCtrls, ExtCtrls, fm000_Parent,
  fm031_WizardPageFrame, M001_LoadPage1Frame, M001_LoadPage3Frame,
  fm008_DBObjectFrame, fm040_LoaderFrame, M001_LoadPage2ProgressFrame,
  M001_LoadPage2Frame;

type
  TM001_LoadWizard = class(TfmWizard)
    Page1: TM001_LoadPage1;
    PanelShield: TPanel;
    TabSheet3: TTabSheet;
    Page3: TM001_LoadPage3;
    Page2: TM001_LoadPage2;
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
  M001_LoadWizard: TM001_LoadWizard;

implementation

uses frm01_MainForm;

{$R *.DFM}

// прячем заголовки шагов
procedure TM001_LoadWizard.PageControlResize(Sender: TObject);
begin
  PanelShield.Left := 0;
  PanelShield.Top := 0;
  PanelShield.Height := PageControl.TabHeight;
  PanelShield.Width := PageControl.Width;
end;

procedure TM001_LoadWizard.PageControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  AllowChange := False;
end;

procedure TM001_LoadWizard.actFinishUpdate(Sender: TObject);
begin
  inherited;
  if actFinish.Enabled = True then
    actFinish.Enabled := (Page3.Grid.odsListT184_HAS_ERRORS.AsFloat = 0);
end;

procedure TM001_LoadWizard.actFinishExecute(Sender: TObject);
begin
  Page3.Grid.SaveFile2Db;
  // Переводим TabControl загрузки на страницу Шаг 1
  inherited;
  // Здесь переход на Реестр KO - Данные
  frm01_Main.FindInnKoData;
end;

procedure TM001_LoadWizard.actBackExecute(Sender: TObject);
begin
  case PageControl.ActivePageIndex of
    1: begin
       Page2.Progress.StopProcess;
       while Page2.Progress.InProgress do
         Application.ProcessMessages;
//       PageControl.ActivePageIndex := 0;
//       Exit;
       end;
    2: begin
       PageControl.ActivePageIndex := 0;
       Exit;
       end;
  end;

  inherited;
end;

procedure TM001_LoadWizard.actNextUpdate(Sender: TObject);
begin
  case PageControl.ActivePageIndex of
    0: begin
       if FFileName <> '' then
         actNext.Enabled := True
       else
         actNext.Enabled := False;
       end;
  else
    actNext.Enabled := False;
  end;
end;

procedure TM001_LoadWizard.actNextExecute(Sender: TObject);
begin
  case PageControl.ActivePageIndex of
    1: Page3.InitFrame(Self);
  end;

  inherited;

  case PageControl.ActivePageIndex of
    1: Page2.LoadFile(Page1.OpenDialog1.FileName);
  end;

end;

end.
