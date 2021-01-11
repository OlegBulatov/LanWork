unit A003_0_FSFRForm;

interface

uses
  frm00_ParentForm, Oracle, Classes, ActnList, Forms,
  fm21SepDescriptionFrame, ComCtrls, StdCtrls, Controls, ExtCtrls;
//  Windows, Messages, Graphics, Controls, Dialogs,
//  frm04_ListForm, Db, OracleData, Menus,
//  fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid,
//  ToolWin, frm04_TabListForm,

type
  TLoadStepPage = interface
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

  TLoadStepPages = array[0..3] of TLoadStepPage;

  TA003_0_FSFR = class(Tfrm00_Parent)
    Panel2: TPanel;
    Panel3: TPanel;
    OKBtn: TButton;
    CancelBtn: TButton;
    PageControl1: TPageControl;
    Tab1: TTabSheet;
    fm21SepDescription1: Tfm21SepDescription;
    Tab2: TTabSheet;
    fm21SepDescription2: Tfm21SepDescription;
    Tab3: TTabSheet;
    fm21SepDescription3: Tfm21SepDescription;
    ActionList1: TActionList;
    actBack: TAction;
    actNext: TAction;
    oqApplyChanges: TOracleQuery;
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure actBackExecute(Sender: TObject);
    procedure actBackUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
  private
    function GetFileName: string;
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure doNext();
    procedure doBack();
    procedure SetStep1Desc(Desc: String);
    procedure SetStep2Desc(Desc: String);
    //
    property FileName: string read GetFileName;
  end;

var
  A003_0_FSFR: TA003_0_FSFR;

implementation

uses
  SysUtils, A003_1_FSFRFileForm, A003_2_FSFREmitForm, A003_3_FSFRSaveForm;

resourcestring
  STEP_1_DESC = 'Файл: %s';
  STEP_2_DESC = 'Файл проверен %s';

{$R *.DFM}

class function TA003_0_FSFR.GetSelfForm: Tfrm00_Parent;
begin
  Result := A003_0_FSFR;
end;

class function TA003_0_FSFR.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA003_0_FSFR;
end;

class procedure TA003_0_FSFR.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(A003_0_FSFR) := AForm;
end;

procedure TA003_0_FSFR.FormCreate(Sender: TObject);
begin
  // инициализируем закладки
  TA003_1_FSFRFile.Instance.PlaceToWinControl(Tab1);
  TA003_2_FSFREmit.Instance.PlaceToWinControl(Tab2);
  TA003_3_FSFRSave.Instance.PlaceToWinControl(Tab3);
  PageControl1.ActivePage := Tab1;
end;

procedure TA003_0_FSFR.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure TA003_0_FSFR.SetStep1Desc(Desc: String);
begin
  fm21SepDescription2.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
  fm21SepDescription3.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
end;

procedure TA003_0_FSFR.SetStep2Desc(Desc: String);
begin
  fm21SepDescription3.lblDesc2.Caption := format(STEP_2_DESC, [Desc]);
end;

procedure TA003_0_FSFR.actBackExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: TA003_1_FSFRFile(TA003_1_FSFRFile.Instance).DoOnClosePage(Self, Applied);
      1: TA003_2_FSFREmit(TA003_2_FSFREmit.Instance).DoOnClosePage(Self, Applied);
      2: TA003_3_FSFRSave(TA003_3_FSFRSave.Instance).DoOnClosePage(Self, Applied);
    end;
    case PageControl1.ActivePageIndex - 1 of
      0: TA003_1_FSFRFile(TA003_1_FSFRFile.Instance).DoOnShowPage(Self);
      1: TA003_2_FSFREmit(TA003_2_FSFREmit.Instance).DoOnShowPage(Self);
      2: TA003_3_FSFRSave(TA003_3_FSFRSave.Instance).DoOnShowPage(Self);
     end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TA003_0_FSFR.actBackUpdate(Sender: TObject);
begin
  doBack;
end;

procedure TA003_0_FSFR.actNextExecute(Sender: TObject);
begin
  doNext;
end;

procedure TA003_0_FSFR.actNextUpdate(Sender: TObject);
begin
  if CancelBtn.Caption <> 'Завершить' then
    actNext.Enabled := PageControl1.ActivePageIndex < PageControl1.PageCount - 1
  else
    actNext.Enabled := True;
end;

procedure TA003_0_FSFR.doBack;
begin
  actBack.Enabled := PageControl1.ActivePageIndex > 0;
end;

procedure TA003_0_FSFR.doNext;
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на следующую закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: TA003_1_FSFRFile(TA003_1_FSFRFile.Instance).DoOnClosePage(Self, Applied);
      1: TA003_2_FSFREmit(TA003_2_FSFREmit.Instance).DoOnClosePage(Self, Applied);
      2: TA003_3_FSFRSave(TA003_3_FSFRSave.Instance).DoOnClosePage(Self, Applied);
    end;

    // если не одобрили, то не переходим дальше
    if not Applied then exit;

    case PageControl1.ActivePageIndex + 1 of
      0, 3: TA003_1_FSFRFile(TA003_1_FSFRFile.Instance).DoOnShowPage(Self);
      1: TA003_2_FSFREmit(TA003_2_FSFREmit.Instance).DoOnShowPage(Self);
      2: TA003_3_FSFRSave(TA003_3_FSFRSave.Instance).DoOnShowPage(Self);

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

function TA003_0_FSFR.GetFileName: string;
begin

end;

end.
