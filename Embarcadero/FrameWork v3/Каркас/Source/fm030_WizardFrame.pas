unit fm030_WizardFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, ActnList, StdCtrls, ExtCtrls, ComCtrls, fm031_WizardPageFrame;

type
  TfmWizard = class(TfmParent)
    Panel1: TPanel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Bevel: TBevel;
    Panel3: TPanel;
    BtnBack: TButton;
    BtnNext: TButton;
    BtnFinish: TButton;
    actBack: TAction;
    actNext: TAction;
    actFinish: TAction;
    procedure actBackExecute(Sender: TObject);
    procedure actBackUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
    procedure actFinishUpdate(Sender: TObject);
  private
    function GetActiveStep: TfmWizardPage;
    function GetSteps(Index: Integer): TfmWizardPage;
  protected
    procedure DoFinish; virtual;
  public
    procedure InitFrame(Sender: TObject); override;

    property Steps[Index: Integer]: TfmWizardPage read GetSteps; default;
    property ActiveStep: TfmWizardPage read GetActiveStep;
  end;

var
  fmWizard: TfmWizard;

implementation

{$R *.DFM}

{ TfmWizard }

function TfmWizard.GetActiveStep: TfmWizardPage;
begin
  Result := Steps[PageControl.ActivePageIndex];
end;

function TfmWizard.GetSteps(Index: Integer): TfmWizardPage;
var
  i: Integer;
  vComp: TComponent;
begin
  Result := nil;
  for i := 0 to PageControl.Pages[Index].ControlCount - 1 do
    begin
    vComp := PageControl.Pages[Index].Controls[i];
    if vComp is TfmWizardPage then
      begin
      Result := TfmWizardPage(vComp);
      Break;
      end;
    end;
end;

procedure TfmWizard.InitFrame(Sender: TObject);
begin
  inherited;

  // инициализируем фрейм
  if PageControl.PageCount > 0 then
    begin
    PageControl.ActivePageIndex := 0;
    ActiveStep.DoOnShowPage(mtNext);
    end;
end;

procedure TfmWizard.DoFinish;
begin
  ActiveStep.DoOnClosePage(mtBack);
  PageControl.ActivePageIndex := 0;
  ActiveStep.DoOnShowPage(mtBack);
end;

procedure TfmWizard.actBackUpdate(Sender: TObject);
begin
  actBack.Enabled := PageControl.ActivePageIndex > 0;
end;

procedure TfmWizard.actBackExecute(Sender: TObject);
var
  VOldCursor: TCursor;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    // проверяем можем ли уйти со страницы
    if ActiveStep.CanClosePage(mtBack) then
      begin
      // что-то делаем перед уходом
      ActiveStep.DoOnClosePage(mtBack);

      // проверяем можем ли можем прийти на страницу
      if Steps[PageControl.ActivePageIndex - 1].CanShowPage(mtBack) then
        begin
        // что-то делаем перед приходом
        Steps[PageControl.ActivePageIndex - 1].DoOnShowPage(mtBack);

        // переходим
        PageControl.ActivePageIndex := PageControl.ActivePageIndex - 1;
        end;
      end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TfmWizard.actNextExecute(Sender: TObject);
var
  VOldCursor: TCursor;
begin
  // на следующею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    // проверяем можем ли уйти со страницы
    if ActiveStep.CanClosePage(mtNext) then
      begin
      // что-то делаем перед уходом
      ActiveStep.DoOnClosePage(mtNext);

      // проверяем можем ли можем прийти на страницу
      if Steps[PageControl.ActivePageIndex + 1].CanShowPage(mtNext) then
        begin
        // что-то делаем перед приходом
        Steps[PageControl.ActivePageIndex + 1].DoOnShowPage(mtNext);

        // переходим
        PageControl.ActivePageIndex := PageControl.ActivePageIndex + 1;
        end;
      end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TfmWizard.actNextUpdate(Sender: TObject);
begin
  actNext.Enabled := PageControl.ActivePageIndex < (PageControl.PageCount - 1);
end;

procedure TfmWizard.actFinishExecute(Sender: TObject);
begin
  DoFinish;
end;

procedure TfmWizard.actFinishUpdate(Sender: TObject);
begin
  actFinish.Enabled := PageControl.ActivePageIndex = (PageControl.PageCount - 1);
end;

end.
