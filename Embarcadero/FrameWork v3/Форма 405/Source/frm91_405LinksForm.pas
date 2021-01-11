unit frm91_405LinksForm;

interface

uses
  Forms, ActnList, StdCtrls, ComCtrls, ExtCtrls, Oracle, frm00_ParentForm,
  fm21SepDescriptionFrame, Classes, Controls;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  unt205_Params;

type
  TCalcStepPage = interface
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

  TCalcStepPages = array[0..3] of TCalcStepPage;

  Tfrm91_405Links = class(Tfrm00_Parent)
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
    Panel1: TPanel;
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
    function GetT055_ID: Double;
    function GetT027_ID: Double;
    function GetHidePack: Boolean;
    //procedure ApplyChanges();
  protected
    //
    NextEmissionID: Double;

    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    property T028_ID: Double read GetT028_ID;
    property T055_ID: Double read GetT055_ID;
    property T027_ID: Double read GetT027_ID;
    property HidePack: Boolean read GetHidePack;
    //
    procedure doNext();
    procedure doBack();
  end;

var
  frm91_405Links: Tfrm91_405Links;

implementation

uses
  frm92_IssuerListForm, frm93_OpListForm;
//, frm05_SumListForm, ;

{$R *.DFM}

{ Tfrm91_405Links }

class function Tfrm91_405Links.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm91_405Links;
end;

class function Tfrm91_405Links.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm91_405Links;
end;

class procedure Tfrm91_405Links.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm91_405Links) := AForm;
end;

procedure Tfrm91_405Links.FormCreate(Sender: TObject);
begin
  // инициализируем закладки
  Tfrm92_IssuerList.Instance.PlaceToWinControl(Tab1);
  Tfrm93_OpList.Instance.PlaceToWinControl(Tab2);
  PageControl1.ActivePageIndex := 0;
end;

procedure Tfrm91_405Links.FormDestroy(Sender: TObject);
begin
	//
end;

function Tfrm91_405Links.GetT028_ID: Double;
begin
  Result := Tfrm92_IssuerList(Tfrm92_IssuerList.Instance).T028_ID;
end;

function Tfrm91_405Links.GetT055_ID: Double;
begin
  Result := Tfrm92_IssuerList(Tfrm92_IssuerList.Instance).T055_ID;
end;

procedure Tfrm91_405Links.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure Tfrm91_405Links.actBackExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: Tfrm92_IssuerList(Tfrm92_IssuerList.Instance).DoOnClosePage(Self, Applied);
      1: Tfrm93_OpList(Tfrm93_OpList.Instance).DoOnClosePage(Self, Applied);
      //2: Tfrm83_OpList(Tfrm83_OpList.Instance).DoOnClosePage(Self, Applied);
    end;
    case PageControl1.ActivePageIndex - 1 of
      0: Tfrm92_IssuerList(Tfrm92_IssuerList.Instance).DoOnShowPage(Self);
      1: Tfrm93_OpList(Tfrm93_OpList.Instance).DoOnShowPage(Self);
      //2: Tfrm83_OpList(Tfrm83_OpList.Instance).DoOnShowPage(Self);
    end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm91_405Links.actBackUpdate(Sender: TObject);
begin
  doBack;
end;

procedure Tfrm91_405Links.actNextExecute(Sender: TObject);
begin
  doNext;
end;

procedure Tfrm91_405Links.actNextUpdate(Sender: TObject);
begin
  actNext.Enabled := PageControl1.ActivePageIndex < PageControl1.PageCount - 1;

  if PageControl1.ActivePageIndex = 0 then
    actNext.Enabled := actNext.Enabled and not Tfrm92_IssuerList(Tfrm92_IssuerList.Instance).odsListT028_ID_MAIN.IsNull;
end;

procedure Tfrm91_405Links.FormShow(Sender: TObject);
begin
//  Tfrm92_IssuerList(Tfrm92_IssuerList.Instance).DoOnShowPage(Self);
end;

(*
procedure Tfrm91_405Links.ApplyChanges();
var
  VOldCursor: TCursor;
begin
  // Проставляем признак для квартала, что все рассчитано
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

procedure Tfrm91_405Links.doBack;
begin
  actBack.Enabled := PageControl1.ActivePageIndex > 0;
end;

procedure Tfrm91_405Links.doNext;
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на следующую закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: Tfrm92_IssuerList(Tfrm92_IssuerList.Instance).DoOnClosePage(Self, Applied);
      1: Tfrm93_OpList(Tfrm93_OpList.Instance).DoOnClosePage(Self, Applied);
    end;

    // если не одобрили, то не переходим дальше
    //if not Applied then exit;

    case PageControl1.ActivePageIndex + 1 of
      0: Tfrm92_IssuerList(Tfrm92_IssuerList.Instance).DoOnShowPage(Self);
      1: begin
         fm21SepDescription2.Label4.Caption := 'Эмитент: ' + Tfrm92_IssuerList(Tfrm92_IssuerList.Instance).IssuerDesc;
         Tfrm93_OpList(Tfrm93_OpList.Instance).DoOnShowPage(Self);
         end;
      end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

function Tfrm91_405Links.GetHidePack: Boolean;
begin
  Result := Tfrm92_IssuerList(Tfrm92_IssuerList.Instance).chbHidePack.Checked;
end;

function Tfrm91_405Links.GetT027_ID: Double;
begin
  Result := Tfrm92_IssuerList(Tfrm92_IssuerList.Instance).T027_ID;
end;

end.
