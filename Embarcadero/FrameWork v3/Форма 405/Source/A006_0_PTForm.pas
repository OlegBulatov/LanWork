unit A006_0_PTForm;

interface

uses
  frm00_ParentForm, Forms, StdCtrls, ComCtrls, ExtCtrls, ActnList,
  fm21SepDescriptionFrame, A006_2_PTDataForm, A006_1_PTSettingsForm,
  Classes, frm04_ListFrame, Controls;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
//  frm04_ListForm, Oracle, Db, OracleData, Menus, ,
//  , , fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid,
//  ToolWin, , , frm04_TabListForm,
//  , frm04_ListFrame, ,

type
  TLoadStepPage = interface
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

  TA006_0_PT = class(Tfrm00_Parent)
    Panel2: TPanel;
    Panel3: TPanel;
    OKBtn: TButton;
    CancelBtn: TButton;
    PageControl1: TPageControl;
    Tab1: TTabSheet;
    fm21SepDescription1: Tfm21SepDescription;
    Tab2: TTabSheet;
    fm21SepDescription2: Tfm21SepDescription;
    ActionList1: TActionList;
    actBack: TAction;
    actNext: TAction;
    A006_2_PTData1: TA006_2_PTData;
    A006_1_PTSettings: TA006_1_PTSettings;
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure actBackExecute(Sender: TObject);
    procedure actBackUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
  private
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure doNext();
    procedure doBack();
  end;

var
  A006_0_PT: TA006_0_PT;

implementation

{$R *.DFM}

class function TA006_0_PT.GetSelfForm: Tfrm00_Parent;
begin
  Result := A006_0_PT;
end;

class function TA006_0_PT.GetSelfClass: Tfrm00_Parents;
begin
  Result := TA006_0_PT;
end;

class procedure TA006_0_PT.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(A006_0_PT) := AForm;
end;

procedure TA006_0_PT.FormCreate(Sender: TObject);
begin
  // инициализируем закладки
  PageControl1.ActivePage := Tab1;
  A006_1_PTSettings.FormCreate(A006_1_PTSettings);
  A006_2_PTData1.Init;
end;

procedure TA006_0_PT.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure TA006_0_PT.actBackExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: A006_1_PTSettings.DoOnClosePage(Self, Applied);
      1: A006_2_PTData1.DoOnClosePage(Self, Applied);
    end;
    case PageControl1.ActivePageIndex - 1 of
      0: A006_1_PTSettings.DoOnShowPage(Self);
      1: A006_2_PTData1.DoOnShowPage(Self);
     end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure TA006_0_PT.actBackUpdate(Sender: TObject);
begin
  doBack;
end;

procedure TA006_0_PT.actNextExecute(Sender: TObject);
begin
  doNext;
end;

procedure TA006_0_PT.actNextUpdate(Sender: TObject);
begin
  if CancelBtn.Caption <> 'Завершить' then
    actNext.Enabled := PageControl1.ActivePageIndex < PageControl1.PageCount - 1
  else
    actNext.Enabled := True;
end;

procedure TA006_0_PT.doBack;
begin
  actBack.Enabled := PageControl1.ActivePageIndex > 0;
end;

procedure TA006_0_PT.doNext;
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на следующую закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: A006_1_PTSettings.DoOnClosePage(Self, Applied);
      1: A006_2_PTData1.DoOnClosePage(Self, Applied);
    end;

    // если не одобрили, то не переходим дальше
    if not Applied then exit;

    case PageControl1.ActivePageIndex + 1 of
      0: A006_1_PTSettings.DoOnShowPage(Self);
      1: A006_2_PTData1.DoOnShowPage(Self);
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

end.
