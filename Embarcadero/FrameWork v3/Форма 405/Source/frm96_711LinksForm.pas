unit frm96_711LinksForm;

interface

uses
  frm00_ParentForm, Oracle, Classes, ActnList, Forms,
  fm21SepDescriptionFrame, ComCtrls, StdCtrls, Controls, ExtCtrls,
  untParams;

type
  TCalcStepPage = interface
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

  TCalcStepPages = array[0..3] of TCalcStepPage;

  Tfrm96_711Links = class(Tfrm00_Parent)
    Panel2: TPanel;
    Panel3: TPanel;
    OKBtn: TButton;
    CancelBtn: TButton;
    PageControl1: TPageControl;
    Tab1: TTabSheet;
    Tab2: TTabSheet;
    ActionList1: TActionList;
    actBack: TAction;
    actNext: TAction;
    oqApplyChanges: TOracleQuery;
    fm21SepDescription1: Tfm21SepDescription;
    fm21SepDescription2: Tfm21SepDescription;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure actBackExecute(Sender: TObject);
    procedure actBackUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function GetT028_ID: Double;
    function GetT027_IDs: TFloatArray;
    function GetT055_ID: Double;
    function GetT054_ID: Double;
    function GetT053_ID: Double;
    function GetFLAG_T055: Double;
    function GetFLAG_T054: Double;
    function GetFLAG_T053: Double;
    function GetT053_Name: String;
    //procedure ApplyChanges();
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    property T028_ID: Double read GetT028_ID;
    property T027_IDs: TFloatArray read GetT027_IDs;
    property T055_ID: Double read GetT055_ID;
    property T054_ID: Double read GetT054_ID;
    property T053_ID: Double read GetT053_ID;
    property FLAG_T055: Double read GetFLAG_T055;
    property FLAG_T054: Double read GetFLAG_T054;
    property FLAG_T053: Double read GetFLAG_T053;
    property T053_Name: String read GetT053_Name;
    //
    procedure doNext();
    procedure doBack();
  end;

var
  frm96_711Links: Tfrm96_711Links;

implementation

uses frm97_711IssuerListForm, frm98_711OpListForm;
// frm05_SumListForm, ;

{$R *.DFM}

{ Tfrm96_711Links }

class function Tfrm96_711Links.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm96_711Links;
end;

class function Tfrm96_711Links.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm96_711Links;
end;

class procedure Tfrm96_711Links.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm96_711Links) := AForm;
end;

procedure Tfrm96_711Links.FormCreate(Sender: TObject);
begin
  // инициализируем закладки
  Tfrm97_711IssuerList.Instance.PlaceToWinControl(Tab1);

  Tfrm98_711OpList.Instance.PlaceToWinControl(Tab2);
end;

procedure Tfrm96_711Links.FormDestroy(Sender: TObject);
begin
	//
end;

function Tfrm96_711Links.GetT028_ID: Double;
begin
  Result := Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).T028_ID;
end;

function Tfrm96_711Links.GetT055_ID: Double;
begin
  Result := Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).T055_ID;
end;

function Tfrm96_711Links.GetT054_ID: Double;
begin
  Result := Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).T054_ID;
end;

function Tfrm96_711Links.GetT053_ID: Double;
begin
  Result := Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).T053_ID;
end;

function Tfrm96_711Links.GetFLAG_T055: Double;
begin
  Result := Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).FLAG_T055;
end;

function Tfrm96_711Links.GetFLAG_T054: Double;
begin
  Result := Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).FLAG_T054;
end;

function Tfrm96_711Links.GetFLAG_T053: Double;
begin
  Result := Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).FLAG_T053;
end;

procedure Tfrm96_711Links.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure Tfrm96_711Links.actBackExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).DoOnClosePage(Self, Applied);
      1: Tfrm98_711OpList(Tfrm98_711OpList.Instance).DoOnClosePage(Self, Applied);
    end;
    case PageControl1.ActivePageIndex - 1 of
      0: Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).DoOnShowPage(Self);
      1: Tfrm98_711OpList(Tfrm98_711OpList.Instance).DoOnShowPage(Self);
    end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm96_711Links.actBackUpdate(Sender: TObject);
begin
  doBack;
end;

procedure Tfrm96_711Links.actNextExecute(Sender: TObject);
begin
  doNext;
end;

procedure Tfrm96_711Links.actNextUpdate(Sender: TObject);
begin
  actNext.Enabled := PageControl1.ActivePageIndex < PageControl1.PageCount - 1;
end;

procedure Tfrm96_711Links.FormShow(Sender: TObject);
begin
//  Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).DoOnShowPage(Self);
end;

(*
procedure Tfrm96_711Links.ApplyChanges();
var
  VOldCursor: TCursor;
begin
  // ѕроставл€ем признак дл€ квартала, что все рассчитано
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    oqApplyChanges.SetVariable('I_T055_ID', T055_ID);
    oqApplyChanges.Execute;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;
*)

procedure Tfrm96_711Links.doBack;
begin
  actBack.Enabled := PageControl1.ActivePageIndex > 0;
end;

procedure Tfrm96_711Links.doNext;
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на следующую закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).DoOnClosePage(Self, Applied);
      1: Tfrm98_711OpList(Tfrm98_711OpList.Instance).DoOnClosePage(Self, Applied);
      //3: ApplyChanges;
    end;
    // если не одобрили, то не переходим дальше
    //if not Applied then exit;
    case PageControl1.ActivePageIndex + 1 of
      0: Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).DoOnShowPage(Self);
      1: Tfrm98_711OpList(Tfrm98_711OpList.Instance).DoOnShowPage(Self);
    end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

function Tfrm96_711Links.GetT027_IDs: TFloatArray;
begin
  result := Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).T027_IDs;
end;

function Tfrm96_711Links.GetT053_Name: String;
begin
  result := Tfrm97_711IssuerList(Tfrm97_711IssuerList.Instance).T053_Name;
end;

end.
