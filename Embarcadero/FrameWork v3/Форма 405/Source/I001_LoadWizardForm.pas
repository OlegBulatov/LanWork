unit I001_LoadWizardForm;

interface

uses
  A001_0_LoadEmitForm, Oracle, Classes, ActnList, Forms,
  fm21SepDescriptionFrame, ComCtrls, StdCtrls, Controls, ExtCtrls,
  I001_SelectFileForm, I001_LoadedFileForm, I001_SaveDataForm,
  frm00_ParentForm;
//  Windows, Messages, Graphics, Dialogs,

type
  TI001_LoadWizard = class(TA001_0_LoadEmit)
    procedure FormCreate(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
  private
    Page1: TI001_SelectFile;
    Page2: TI001_LoadedFile;
    Page3: TI001_SaveData;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure SetStep1Desc(Desc: String);
    procedure SetStep2Desc(Desc: String);
  end;

var
  I001_LoadWizard: TI001_LoadWizard;

implementation

uses
  SysUtils;

resourcestring
  STEP_1_DESC = 'Файл: %s';
  STEP_2_DESC = 'Файл проверен %s';

{$R *.DFM}

procedure TI001_LoadWizard.FormCreate(Sender: TObject);
begin
  // инициализируем закладки
  Page1 := TI001_SelectFile(TI001_SelectFile.Instance);
  Page1.PlaceToWinControl(Tab1);
  Page2 := TI001_LoadedFile(TI001_LoadedFile.Instance);
  Page2.PlaceToWinControl(Tab2);
  Page3 := TI001_SaveData(TI001_SaveData.Instance);
  Page3.PlaceToWinControl(Tab3);
  PageControl1.ActivePage := Tab1;
end;

class function TI001_LoadWizard.GetSelfClass: Tfrm00_Parents;
begin
  Result := TI001_LoadWizard;
end;

class function TI001_LoadWizard.GetSelfForm: Tfrm00_Parent;
begin
  Result := I001_LoadWizard;
end;

class procedure TI001_LoadWizard.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(I001_LoadWizard) := AForm;
end;

procedure TI001_LoadWizard.SetStep1Desc(Desc: String);
begin
  fm21SepDescription2.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
  fm21SepDescription3.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
end;

procedure TI001_LoadWizard.SetStep2Desc(Desc: String);
begin
  fm21SepDescription3.lblDesc2.Caption := format(STEP_2_DESC, [Desc]);
end;

procedure TI001_LoadWizard.actNextUpdate(Sender: TObject);
begin
  inherited;
  if (PageControl1.ActivePageIndex = 0) then
    actNext.Enabled := not (Page1.Edit1.Text = '');
end;

procedure TI001_LoadWizard.actNextExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на следующую закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: begin
         Page1.DoOnClosePage(Self, Applied);
         SetStep1Desc(Page1.FFileName);
         end;
      1: Page2.DoOnClosePage(Self, Applied);
      2: Page3.DoOnClosePage(Self, Applied);
    end;

    // если не одобрили, то не переходим дальше
    if not Applied then exit;

    case PageControl1.ActivePageIndex + 1 of
      0, 3: Page1.DoOnShowPage(Self);
      1: Page2.DoOnShowPage(Self);
      2: Page3.DoOnShowPage(Self);
    end;

    if PageControl1.ActivePageIndex < 2 then
      PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1
    else
      begin
      PageControl1.ActivePageIndex := 0;
      end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TI001_LoadWizard.actFinishExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    Page3.DoOnClosePage(Self, Applied);

    // если не одобрили, то не переходим дальше
    if not Applied then exit;

    PageControl1.ActivePageIndex := 0;
    Page1.DoOnShowPage(Self);
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

end.
