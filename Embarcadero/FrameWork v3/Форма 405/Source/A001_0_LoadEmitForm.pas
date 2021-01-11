unit A001_0_LoadEmitForm;

interface

uses
  frm00_ParentForm, Oracle, Classes, ActnList, Forms,
  ComCtrls, StdCtrls, Controls, ExtCtrls, fm21SepDescriptionFrame;
//  Windows, Messages, Graphics, Dialogs,
//  frm04_ListForm, Db, OracleData, Menus
//  fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid,
//  ToolWin, frm04_TabListForm,

type
  TLoadStepPage = interface
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

  TLoadStepPages = array[0..3] of TLoadStepPage;

  TA001_0_LoadEmit = class(Tfrm00_Parent)
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
    actFinish: TAction;
    BtnFinish: TButton;
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure actBackExecute(Sender: TObject);
    procedure actBackUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure actFinishUpdate(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
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
    procedure DoFinish();
    procedure SetStep1Desc(Desc: String);
    procedure SetStep2Desc(Desc: String);
    //
    property FileName: string read GetFileName;
  end;

var
  A001_0_LoadEmit: TA001_0_LoadEmit;

implementation

uses SysUtils, A001_1_SelectFileForm, A001_2_SparkEmitForm, A001_3_SparkSaveForm;

resourcestring
  STEP_1_DESC = 'Файл: %s';
  STEP_2_DESC = 'Файл проверен %s';

{$R *.DFM}

class function TA001_0_LoadEmit.GetSelfForm: Tfrm00_Parent;
begin
  Result := A001_0_LoadEmit;
end;

class function TA001_0_LoadEmit.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA001_0_LoadEmit;
end;

class procedure TA001_0_LoadEmit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(A001_0_LoadEmit) := AForm;
end;

procedure TA001_0_LoadEmit.FormCreate(Sender: TObject);
begin
  // инициализируем закладки
  Tfrm101_1_SelectFile.Instance.PlaceToWinControl(Tab1);
  Tfrm101_2_LoadFile.Instance.PlaceToWinControl(Tab2);
  Tfrm101_3_SaveData.Instance.PlaceToWinControl(Tab3);
  PageControl1.ActivePage := Tab1;
end;

procedure TA001_0_LoadEmit.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure TA001_0_LoadEmit.SetStep1Desc(Desc: String);
begin
  fm21SepDescription2.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
  fm21SepDescription3.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
end;

procedure TA001_0_LoadEmit.SetStep2Desc(Desc: String);
begin
  fm21SepDescription3.lblDesc2.Caption := format(STEP_2_DESC, [Desc]);
end;

procedure TA001_0_LoadEmit.actBackExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: Tfrm101_1_SelectFile(Tfrm101_1_SelectFile.Instance).DoOnClosePage(Self, Applied);
      1: Tfrm101_2_LoadFile(Tfrm101_2_LoadFile.Instance).DoOnClosePage(Self, Applied);
      2: Tfrm101_3_SaveData(Tfrm101_3_SaveData.Instance).DoOnClosePage(Self, Applied);
    end;
    case PageControl1.ActivePageIndex - 1 of
      0: Tfrm101_1_SelectFile(Tfrm101_1_SelectFile.Instance).DoOnShowPage(Self);
      1: Tfrm101_2_LoadFile(Tfrm101_2_LoadFile.Instance).DoOnShowPage(Self);
      2: Tfrm101_3_SaveData(Tfrm101_3_SaveData.Instance).DoOnShowPage(Self);
     end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TA001_0_LoadEmit.actBackUpdate(Sender: TObject);
begin
  doBack;
end;

procedure TA001_0_LoadEmit.actNextExecute(Sender: TObject);
begin
  doNext;
end;

procedure TA001_0_LoadEmit.actNextUpdate(Sender: TObject);
begin
  if CancelBtn.Caption <> 'Завершить' then
    actNext.Enabled := PageControl1.ActivePageIndex < PageControl1.PageCount - 1
  else
    actNext.Enabled := True;
end;

procedure TA001_0_LoadEmit.doBack;
begin
  actBack.Enabled := PageControl1.ActivePageIndex > 0;
end;

procedure TA001_0_LoadEmit.doNext;
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на следующую закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: Tfrm101_1_SelectFile(Tfrm101_1_SelectFile.Instance).DoOnClosePage(Self, Applied);
      1: Tfrm101_2_LoadFile(Tfrm101_2_LoadFile.Instance).DoOnClosePage(Self, Applied);
      2: Tfrm101_3_SaveData(Tfrm101_3_SaveData.Instance).DoOnClosePage(Self, Applied);
    end;

    // если не одобрили, то не переходим дальше
    if not Applied then exit;

    case PageControl1.ActivePageIndex + 1 of
      0, 3: Tfrm101_1_SelectFile(Tfrm101_1_SelectFile.Instance).DoOnShowPage(Self);
      1: Tfrm101_2_LoadFile(Tfrm101_2_LoadFile.Instance).DoOnShowPage(Self);
      2: Tfrm101_3_SaveData(Tfrm101_3_SaveData.Instance).DoOnShowPage(Self);

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

function TA001_0_LoadEmit.GetFileName: string;
begin

end;

procedure TA001_0_LoadEmit.actFinishUpdate(Sender: TObject);
begin
  actFinish.Enabled := PageControl1.ActivePageIndex = (PageControl1.PageCount - 1)
end;

procedure TA001_0_LoadEmit.actFinishExecute(Sender: TObject);
begin
  DoFinish;
end;

procedure TA001_0_LoadEmit.DoFinish;
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    Tfrm101_3_SaveData(Tfrm101_3_SaveData.Instance).DoOnClosePage(Self, Applied);

    // если не одобрили, то не переходим дальше
    if not Applied then exit;

    PageControl1.ActivePageIndex := 0;
    Tfrm101_1_SelectFile(Tfrm101_1_SelectFile.Instance).DoOnShowPage(Self);
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

end.
