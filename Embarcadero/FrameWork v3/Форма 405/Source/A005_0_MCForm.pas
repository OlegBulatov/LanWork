unit A005_0_MCForm;

interface

uses
  frm00_ParentForm, Oracle, Classes, ActnList, Forms,
  fm21SepDescriptionFrame, ComCtrls, StdCtrls, Controls, ExtCtrls;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  frm04_ListForm, Db, OracleData, Menus,
//  fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid,
//  ToolWin, frm04_TabListForm,

type
  TLoadStepPage = interface
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

  TLoadStepPages = array[0..3] of TLoadStepPage;

  TA005_0_MC = class(Tfrm00_Parent)
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
    btnFinish: TButton;
    actFinish: TAction;
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure actBackExecute(Sender: TObject);
    procedure actBackUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
    procedure actFinishUpdate(Sender: TObject);
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
    procedure doFinish();
    procedure SetStep1Desc(Desc: String);
    procedure SetStep2Desc(Desc: String);
    //
    property FileName: string read GetFileName;
  end;

var
  A005_0_MC: TA005_0_MC;

implementation

uses
  SysUtils, A005_1_MCFileForm, A005_2_MCEmitForm, A005_3_MCSaveForm;

resourcestring
  STEP_1_DESC = 'Файл: %s';
  STEP_2_DESC = 'Файл проверен %s';

{$R *.DFM}

class function TA005_0_MC.GetSelfForm: Tfrm00_Parent;
begin
  Result := A005_0_MC;
end;

class function TA005_0_MC.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA005_0_MC;
end;

class procedure TA005_0_MC.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(A005_0_MC) := AForm;
end;

procedure TA005_0_MC.FormCreate(Sender: TObject);
begin
  // инициализируем закладки
  TA005_1_MCFile.Instance.PlaceToWinControl(Tab1);
  TA005_2_MCEmit.Instance.PlaceToWinControl(Tab2);
  TA005_3_MCSave.Instance.PlaceToWinControl(Tab3);
  PageControl1.ActivePage := Tab1;
end;

procedure TA005_0_MC.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure TA005_0_MC.SetStep1Desc(Desc: String);
begin
  fm21SepDescription2.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
  fm21SepDescription3.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
end;

procedure TA005_0_MC.SetStep2Desc(Desc: String);
begin
  fm21SepDescription3.lblDesc2.Caption := format(STEP_2_DESC, [Desc]);
end;

procedure TA005_0_MC.actBackExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: TA005_1_MCFile(TA005_1_MCFile.Instance).DoOnClosePage(Self, Applied);
      1: TA005_2_MCEmit(TA005_2_MCEmit.Instance).DoOnClosePage(Self, Applied);
      2: TA005_3_MCSave(TA005_3_MCSave.Instance).DoOnClosePage(Self, Applied);
    end;
    case PageControl1.ActivePageIndex - 1 of
      0: TA005_1_MCFile(TA005_1_MCFile.Instance).DoOnShowPage(Self);
      1: TA005_2_MCEmit(TA005_2_MCEmit.Instance).DoOnShowPage(Self);
      2: TA005_3_MCSave(TA005_3_MCSave.Instance).DoOnShowPage(Self);
     end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TA005_0_MC.actBackUpdate(Sender: TObject);
begin
  doBack;
end;

procedure TA005_0_MC.actNextExecute(Sender: TObject);
begin
  doNext;
end;

procedure TA005_0_MC.actNextUpdate(Sender: TObject);
begin
  if CancelBtn.Caption <> 'Завершить' then
    actNext.Enabled := PageControl1.ActivePageIndex < PageControl1.PageCount - 1
  else
    actNext.Enabled := True;
end;

procedure TA005_0_MC.doBack;
begin
  actBack.Enabled := PageControl1.ActivePageIndex > 0;
end;

procedure TA005_0_MC.doNext;
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на следующую закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: TA005_1_MCFile(TA005_1_MCFile.Instance).DoOnClosePage(Self, Applied);
      1: TA005_2_MCEmit(TA005_2_MCEmit.Instance).DoOnClosePage(Self, Applied);
      2: TA005_3_MCSave(TA005_3_MCSave.Instance).DoOnClosePage(Self, Applied);
    end;

    // если не одобрили, то не переходим дальше
    if not Applied then exit;

    case PageControl1.ActivePageIndex + 1 of
      0, 3: TA005_1_MCFile(TA005_1_MCFile.Instance).DoOnShowPage(Self);
      1: TA005_2_MCEmit(TA005_2_MCEmit.Instance).DoOnShowPage(Self);
      2: TA005_3_MCSave(TA005_3_MCSave.Instance).DoOnShowPage(Self);

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

function TA005_0_MC.GetFileName: string;
begin

end;

procedure TA005_0_MC.doFinish;
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    TA005_3_MCSave(TA005_3_MCSave.Instance).DoOnClosePage(Self, Applied);

    // если не одобрили, то не переходим дальше
    if not Applied then exit;

    PageControl1.ActivePageIndex := 0;
    TA005_1_MCFile(TA005_1_MCFile.Instance).DoOnShowPage(Self);
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TA005_0_MC.actFinishExecute(Sender: TObject);
begin
  doFinish;
end;

procedure TA005_0_MC.actFinishUpdate(Sender: TObject);
begin
  actFinish.Enabled := PageControl1.ActivePageIndex = (PageControl1.PageCount - 1)
end;

end.
