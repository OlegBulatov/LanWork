unit A004_0_RSNForm;

interface

uses
  frm00_ParentForm, Oracle, Classes, ActnList, Forms,
  fm21SepDescriptionFrame, ComCtrls, StdCtrls, Controls, ExtCtrls;
//  Messages, Graphics, Dialogs,
//  frm04_ListForm, Db, OracleData, Menus,
//  fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid,
//  ToolWin, frm04_TabListForm,

type
  TLoadStepPage = interface
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

  TLoadStepPages = array[0..3] of TLoadStepPage;

  TA004_0_RSN = class(Tfrm00_Parent)
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
  A004_0_RSN: TA004_0_RSN;

implementation

uses
  SysUtils, A004_1_RSNFileForm, A004_2_RSNEmitForm, A004_3_RSNSaveForm;

resourcestring
  STEP_1_DESC = 'Файл: %s';
  STEP_2_DESC = 'Файл проверен %s';

{$R *.DFM}

class function TA004_0_RSN.GetSelfForm: Tfrm00_Parent;
begin
  Result := A004_0_RSN;
end;

class function TA004_0_RSN.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA004_0_RSN;
end;

class procedure TA004_0_RSN.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(A004_0_RSN) := AForm;
end;

procedure TA004_0_RSN.FormCreate(Sender: TObject);
begin
  // инициализируем закладки
  TA004_1_RSNFile.Instance.PlaceToWinControl(Tab1);
  TA004_2_RSNEmit.Instance.PlaceToWinControl(Tab2);
  TA004_3_RSNSave.Instance.PlaceToWinControl(Tab3);
  PageControl1.ActivePage := Tab1;
end;

procedure TA004_0_RSN.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure TA004_0_RSN.SetStep1Desc(Desc: String);
begin
  fm21SepDescription2.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
  fm21SepDescription3.lblDesc1.Caption := format(STEP_1_DESC, [Desc]);
end;

procedure TA004_0_RSN.SetStep2Desc(Desc: String);
begin
  fm21SepDescription3.lblDesc2.Caption := format(STEP_2_DESC, [Desc]);
end;

procedure TA004_0_RSN.actBackExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: TA004_1_RSNFile(TA004_1_RSNFile.Instance).DoOnClosePage(Self, Applied);
      1: TA004_2_RSNEmit(TA004_2_RSNEmit.Instance).DoOnClosePage(Self, Applied);
      2: TA004_3_RSNSave(TA004_3_RSNSave.Instance).DoOnClosePage(Self, Applied);
    end;
    case PageControl1.ActivePageIndex - 1 of
      0: TA004_1_RSNFile(TA004_1_RSNFile.Instance).DoOnShowPage(Self);
      1: TA004_2_RSNEmit(TA004_2_RSNEmit.Instance).DoOnShowPage(Self);
      2: TA004_3_RSNSave(TA004_3_RSNSave.Instance).DoOnShowPage(Self);
     end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TA004_0_RSN.actBackUpdate(Sender: TObject);
begin
  doBack;
end;

procedure TA004_0_RSN.actNextExecute(Sender: TObject);
begin
  doNext;
end;

procedure TA004_0_RSN.actNextUpdate(Sender: TObject);
begin
  if CancelBtn.Caption <> 'Завершить' then
    actNext.Enabled := PageControl1.ActivePageIndex < PageControl1.PageCount - 1
  else
    actNext.Enabled := True;
end;

procedure TA004_0_RSN.doBack;
begin
  actBack.Enabled := PageControl1.ActivePageIndex > 0;
end;

procedure TA004_0_RSN.doNext;
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на следующую закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: TA004_1_RSNFile(TA004_1_RSNFile.Instance).DoOnClosePage(Self, Applied);
      1: TA004_2_RSNEmit(TA004_2_RSNEmit.Instance).DoOnClosePage(Self, Applied);
      2: TA004_3_RSNSave(TA004_3_RSNSave.Instance).DoOnClosePage(Self, Applied);
    end;

    // если не одобрили, то не переходим дальше
    if not Applied then exit;

    case PageControl1.ActivePageIndex + 1 of
      0, 3: TA004_1_RSNFile(TA004_1_RSNFile.Instance).DoOnShowPage(Self);
      1: TA004_2_RSNEmit(TA004_2_RSNEmit.Instance).DoOnShowPage(Self);
      2: TA004_3_RSNSave(TA004_3_RSNSave.Instance).DoOnShowPage(Self);

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

function TA004_0_RSN.GetFileName: string;
begin

end;

end.
