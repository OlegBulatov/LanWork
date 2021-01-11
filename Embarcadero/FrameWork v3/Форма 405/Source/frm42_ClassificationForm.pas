unit frm42_ClassificationForm;

interface

uses
  frm00_ParentForm, Classes, ActnList, StdCtrls, Controls, ExtCtrls, Forms,
  fm21SepDescriptionFrame, ComCtrls;
//  Windows, Messages, SysUtils, Graphics, Dialogs,

type
  TStepPage = interface
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm);
  end;

  TStepPages = array[0..5] of TStepPage;

  Tfrm42_Classification = class(Tfrm00_Parent)
    PageControl1: TPageControl;
    Tab6: TTabSheet;
    Tab2: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    OKBtn: TButton;
    CancelBtn: TButton;
    ActionList1: TActionList;
    actBack: TAction;
    actNext: TAction;
    Tab1: TTabSheet;
    Tab3: TTabSheet;
    Tab5: TTabSheet;
    fm21SepDescription1: Tfm21SepDescription;
    fm21SepDescription2: Tfm21SepDescription;
    fm21SepDescription3: Tfm21SepDescription;
    fm21SepDescription5: Tfm21SepDescription;
    fm21SepDescription6: Tfm21SepDescription;
    Tab7: TTabSheet;
    fm21SepDescription7: Tfm21SepDescription;
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure actNextExecute(Sender: TObject);
    procedure actBackExecute(Sender: TObject);
    procedure actBackUpdate(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function GetT055_ID: Double;
    function GetRegn: String;
    function GetBankName: String;
    function GetNResCountry: String;
    function GetNResName: String;
    function GetResINN: String;
    function GetResName: String;
    function GetNResCountryISO: Double;
    function GetResID: Double;
    function GetNResID: Double;
    function GetKOBalls: Double;
    function GetT002_ID: Double;
    function GetT012_ID: Double;
    function GetT012_NAME: String;
    function GetRezidBalls: Double;
    function GetT027_ID: Double;
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure SelectNextBank;
    procedure SelectNextGroup;
    procedure clearIds;
    //
    property T055_ID: Double read GetT055_ID;
    property T002_ID: Double read GetT002_ID;
    property T012_ID: Double read GetT012_ID;
    property T012_NAME: String read GetT012_NAME;
    property T027_ID: Double read GetT027_ID;
    property Regn: String read GetRegn;
    property BankName: String read GetBankName;
    //
    property KOBalls: Double read GetKOBalls;
    property RezidBalls: Double read GetRezidBalls;
    //
    property ResID: Double read GetResID;
    property ResName: String read GetResName;
    property ResINN: String read GetResINN;
    property NResID: Double read GetNResID;
    property NResName: String read GetNResName;
    property NResCountry: String read GetNResCountry;
    property NResCountryISO: Double read GetNResCountryISO;
  end;

var
  frm42_Classification: Tfrm42_Classification;

implementation

uses
  frm65_SelectPeriodForm, frm43_SettingsForm, frm40_BankStateForm,
  frm41_RezidGrpForm, frm41_ContrGrpStateForm, frm41_ContrStateForm;
//  , , frm66_KOStateListForm, //frm67_ContrStateListForm,
//  , frm41_RezidStateForm;

{$R *.DFM}

{ Tfrm42_Classification }

class function Tfrm42_Classification.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm42_Classification;
end;

class function Tfrm42_Classification.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm42_Classification;
end;

class procedure Tfrm42_Classification.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm42_Classification) := AForm;
end;

procedure Tfrm42_Classification.FormCreate(Sender: TObject);
begin
  // инициализируем заклади
  // Последовательность ОЧЕНЬ важна (иначе Access Violation)!!!!!!!
  // фиг знает почему надо разбираться

  Tfrm65_SelectPeriod.Instance.PlaceToWinControl(Tab1);
  Tfrm43_Settings.Instance.PlaceToWinControl(Tab2);
  Tfrm40_BankState.Instance.PlaceToWinControl(Tab3);
  Tfrm41_RezidGrp.Instance.PlaceToWinControl(Tab7);
  Tfrm41_ContrGrpState.Instance.PlaceToWinControl(Tab5);
  Tfrm41_ContrState.Instance.PlaceToWinControl(Tab6);

  // выбираем первую закладку
  PageControl1.ActivePageIndex := 0;
end;

procedure Tfrm42_Classification.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure Tfrm42_Classification.actNextExecute(Sender: TObject);
var
  VOldCursor: TCursor;
begin
  // на следующею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: Tfrm65_SelectPeriod(Tfrm65_SelectPeriod.Instance).DoOnClosePage(Self);
      1: Tfrm43_Settings(Tfrm43_Settings.Instance).DoOnClosePage(Self);
      2: Tfrm40_BankState(Tfrm40_BankState.Instance).DoOnClosePage(Self);
      3: Tfrm41_RezidGrp(Tfrm41_RezidGrp.Instance).DoOnClosePage(Self);
      4: Tfrm41_ContrGrpState(Tfrm41_ContrGrpState.Instance).DoOnClosePage(Self);
      5: Tfrm41_ContrState(Tfrm41_ContrState.Instance).DoOnClosePage(Self);
    end;
    case PageControl1.ActivePageIndex + 1 of
      0: Tfrm65_SelectPeriod(Tfrm65_SelectPeriod.Instance).DoOnShowPage(Self);
      1: Tfrm43_Settings(Tfrm43_Settings.Instance).DoOnShowPage(Self);
      2: Tfrm40_BankState(Tfrm40_BankState.Instance).DoOnShowPage(Self);
      3: Tfrm41_RezidGrp(Tfrm41_RezidGrp.Instance).DoOnShowPage(Self);
      4: Tfrm41_ContrGrpState(Tfrm41_ContrGrpState.Instance).DoOnShowPage(Self);
      5: Tfrm41_ContrState(Tfrm41_ContrState.Instance).DoOnShowPage(Self);
    end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm42_Classification.actBackExecute(Sender: TObject);
var
  VOldCursor: TCursor;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: Tfrm65_SelectPeriod(Tfrm65_SelectPeriod.Instance).DoOnClosePage(Self);
      1: Tfrm43_Settings(Tfrm43_Settings.Instance).DoOnClosePage(Self);
      2: Tfrm40_BankState(Tfrm40_BankState.Instance).DoOnClosePage(Self);
      3: Tfrm41_RezidGrp(Tfrm41_RezidGrp.Instance).DoOnClosePage(Self);
      4: Tfrm41_ContrGrpState(Tfrm41_ContrGrpState.Instance).DoOnClosePage(Self);
      5: Tfrm41_ContrState(Tfrm41_ContrState.Instance).DoOnClosePage(Self);
    end;
    case PageControl1.ActivePageIndex - 1 of
      0: Tfrm65_SelectPeriod(Tfrm65_SelectPeriod.Instance).DoOnShowPage(Self);
      1: Tfrm43_Settings(Tfrm43_Settings.Instance).DoOnShowPage(Self);
      2: Tfrm40_BankState(Tfrm40_BankState.Instance).DoOnShowPage(Self);
      3: Tfrm41_RezidGrp(Tfrm41_RezidGrp.Instance).DoOnShowPage(Self);
      4: Tfrm41_ContrGrpState(Tfrm41_ContrGrpState.Instance).DoOnShowPage(Self);
      5: Tfrm41_ContrState(Tfrm41_ContrState.Instance).DoOnShowPage(Self);
    end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm42_Classification.actBackUpdate(Sender: TObject);
begin
  actBack.Enabled := PageControl1.ActivePageIndex > 0;
end;

procedure Tfrm42_Classification.actNextUpdate(Sender: TObject);
begin
  actNext.Enabled := PageControl1.ActivePageIndex < PageControl1.PageCount - 1;
end;

function Tfrm42_Classification.GetT055_ID: Double;
begin
  Result := Tfrm65_SelectPeriod(Tfrm65_SelectPeriod.Instance).T055_ID;
end;

procedure Tfrm42_Classification.FormShow(Sender: TObject);
begin
  Tfrm65_SelectPeriod(Tfrm65_SelectPeriod.Instance).DoOnShowPage(Self);
end;

function Tfrm42_Classification.GetRegn: String;
begin
  Result := Tfrm40_BankState(Tfrm40_BankState.Instance).Regn;
end;

function Tfrm42_Classification.GetBankName: String;
begin
  Result := Tfrm40_BankState(Tfrm40_BankState.Instance).BankName;
end;


procedure Tfrm42_Classification.SelectNextBank;
begin
  // выбор следующего банка
end;

procedure Tfrm42_Classification.SelectNextGroup;
begin
  // выбор следующей группы
end;

function Tfrm42_Classification.GetNResCountry: String;
begin
  Result := Tfrm41_ContrState(Tfrm41_ContrState.Instance).NResCountry;
end;

function Tfrm42_Classification.GetNResName: String;
begin
  Result := Tfrm41_ContrState(Tfrm41_ContrState.Instance).NResName;
end;

function Tfrm42_Classification.GetResINN: String;
begin
  Result := Tfrm41_RezidGrp(Tfrm41_RezidGrp.Instance).ResINN;
end;

function Tfrm42_Classification.GetResName: String;
begin
  Result := Tfrm41_RezidGrp(Tfrm41_RezidGrp.Instance).ResName;
end;

function Tfrm42_Classification.GetNResCountryISO: Double;
begin
  Result := Tfrm41_ContrState(Tfrm41_ContrState.Instance).NResCountryISO;
end;

function Tfrm42_Classification.GetResID: Double;
begin
  Result := Tfrm41_RezidGrp(Tfrm41_RezidGrp.Instance).ResID;
end;

function Tfrm42_Classification.GetNResID: Double;
begin
  Result := Tfrm41_ContrState(Tfrm41_ContrState.Instance).NResID;
end;

function Tfrm42_Classification.GetKOBalls: Double;
begin
  Result := Tfrm40_BankState(Tfrm40_BankState.Instance).KOBalls;
end;

function Tfrm42_Classification.GetT002_ID: Double;
begin
  Result := Tfrm40_BankState(Tfrm40_BankState.Instance).T002_ID;
end;

function Tfrm42_Classification.GetT027_ID: Double;
begin
  Result := Tfrm41_ContrGrpState(Tfrm41_ContrGrpState.Instance).T027_ID;
end;

function Tfrm42_Classification.GetT012_ID: Double;
begin
  Result := Tfrm41_RezidGrp(Tfrm41_RezidGrp.Instance).T012_ID;
end;

function Tfrm42_Classification.GetT012_NAME: String;
begin
  Result := Tfrm41_RezidGrp(Tfrm41_RezidGrp.Instance).T012_NAME;
end;

procedure Tfrm42_Classification.clearIds;
begin
  Tfrm41_RezidGrp(Tfrm41_RezidGrp.Instance).ClearId;
  Tfrm41_ContrGrpState(Tfrm41_ContrGrpState.Instance).ClearId;
end;

function Tfrm42_Classification.GetRezidBalls: Double;
begin
  Result := Tfrm41_RezidGrp(Tfrm41_RezidGrp.Instance).RezidBalls;
end;

end.
