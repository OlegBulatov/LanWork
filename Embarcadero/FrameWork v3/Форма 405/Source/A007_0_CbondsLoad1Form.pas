unit A007_0_CbondsLoad1Form;

interface

uses
  A001_0_LoadEmitForm, Oracle, Classes, ActnList, Forms,
  fm21SepDescriptionFrame, ComCtrls, StdCtrls, Controls, ExtCtrls,
  A007_1_SelectFileForm, A007_2_LoadedFileForm, A007_3_SaveDataForm,
  frm00_ParentForm;
//  Windows, Messages, Graphics, Dialogs,
//

type
  TA007_0_CbondsLoad1 = class(TA001_0_LoadEmit)
    procedure FormCreate(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
  private
    Page1: TA007_1_SelectFile;
    Page2: TA007_2_LoadedFile;
    Page3: TA007_3_SaveData;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure SetStep1Desc(Desc: String);
    procedure SetStep2Desc(Desc: String);
  end;

var
  A007_0_CbondsLoad1: TA007_0_CbondsLoad1;

implementation

uses
  SysUtils, A002_3_ScrinSaveForm;

resourcestring
  STEP_1_DESC = 'Файл: %s';
  STEP_2_DESC = 'Файл проверен %s';

{$R *.DFM}

procedure TA007_0_CbondsLoad1.FormCreate(Sender: TObject);
begin
  // инициализируем закладки
  Page1 := TA007_1_SelectFile(TA007_1_SelectFile.Instance);
  Page1.PlaceToWinControl(Tab1);
  Page2 := TA007_2_LoadedFile(TA007_2_LoadedFile.Instance);
  Page2.PlaceToWinControl(Tab2);
  Page3 := TA007_3_SaveData(TA007_3_SaveData.Instance);
  Page3.PlaceToWinControl(Tab3);
  PageControl1.ActivePage := Tab1;
end;

class function TA007_0_CbondsLoad1.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA007_0_CbondsLoad1;
end;

class function TA007_0_CbondsLoad1.GetSelfForm: Tfrm00_Parent;
begin
  Result := A007_0_CbondsLoad1;
end;

class procedure TA007_0_CbondsLoad1.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(A007_0_CbondsLoad1) := AForm;
end;

procedure TA007_0_CbondsLoad1.SetStep1Desc(Desc: String);
begin
  fm21SepDescription2.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
  fm21SepDescription3.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
end;

procedure TA007_0_CbondsLoad1.SetStep2Desc(Desc: String);
begin
  fm21SepDescription3.lblDesc2.Caption := format(STEP_2_DESC, [Desc]);
end;

procedure TA007_0_CbondsLoad1.actNextUpdate(Sender: TObject);
begin
  inherited;
  if (PageControl1.ActivePageIndex = 0) then
    actNext.Enabled := not (Page1.Edit1.Text = '');
end;

procedure TA007_0_CbondsLoad1.actNextExecute(Sender: TObject);
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

procedure TA007_0_CbondsLoad1.actFinishExecute(Sender: TObject);
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
