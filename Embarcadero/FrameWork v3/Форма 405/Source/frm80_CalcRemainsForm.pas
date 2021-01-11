unit frm80_CalcRemainsForm;

interface

uses
  frm00_ParentForm, Oracle, Classes, ActnList, Forms,
  fm21SepDescriptionFrame, ComCtrls, StdCtrls, Controls, ExtCtrls;

type
  TCalcStepPage = interface
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
  end;

  TCalcStepPages = array[0..3] of TCalcStepPage;

  Tfrm80_CalcRemains = class(Tfrm00_Parent)
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
    Tab4: TTabSheet;
    fm21SepDescription4: Tfm21SepDescription;
    ActionList1: TActionList;
    actBack: TAction;
    actNext: TAction;
    oqApplyChanges: TOracleQuery;
    Tab5: TTabSheet;
    fm21SepDescription5: Tfm21SepDescription;
    Tab6: TTabSheet;
    Tab7: TTabSheet;
    btnDefaults: TButton;
    Tab8: TTabSheet;
    fm21SepDescription8: Tfm21SepDescription;
    fm21SepDescription7: Tfm21SepDescription;
    fm21SepDescription6: Tfm21SepDescription;
    Tab9: TTabSheet;
    fm21SepDescription9: Tfm21SepDescription;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure actBackExecute(Sender: TObject);
    procedure actBackUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDefaultsClick(Sender: TObject);
  private
    function GetT027_ID: Double;
    function GetT055_ID: Double;
    function GetT094_ID: Double;
    function GetT030_ID: Double;
    function GetT055_ID1: Double;
    function GetT055_ID2: Double;
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function GetNeedCalculate: boolean;
    procedure SetNeedCalculate(needCalculate: boolean);
  public
    T055_ID_Selected: Double;
    property T027_ID: Double read GetT027_ID;
    property T055_ID: Double read GetT055_ID;
    property T094_ID: Double read GetT094_ID;
    property T030_ID: Double read GetT030_ID;
    property needCalculate: boolean read GetNeedCalculate write SetNeedCalculate;
    procedure doNext();
    procedure doBack();
    procedure RefreshPeriodList();
    //
    procedure SetStep1Desc(Desc: String);
    procedure SetStep2Desc(Desc: String);
    //
    property T055_ID1: Double read GetT055_ID1;
    property T055_ID2: Double read GetT055_ID2;
  end;

var
  frm80_CalcRemains: Tfrm80_CalcRemains;

implementation

uses
  SysUtils, frm81_RemainsSecTypeForm, frm82_RemainsPeriodListForm,
  frm83_RemainsNotLinkedForm, frm83_RemainsListForm, frm83_RemainsRatesForm,
  frm86_RemainsPortDayListForm, frm83_RemainsSelectedListForm,
  frm83_DefaultSetListForm, frm83_DefaultRemainsListForm, untMessages;

resourcestring
  SConfirmCalculation = 'Будет начат расчет остатков для выбранного периода. Продолжить?';
  SEC_TYPE_DESC = 'Тип ц.б.: %s';
  PERIOD_DESC = 'Отчетный период: %s';

{$R *.DFM}

{ Tfrm80_CalcRemains }

class function Tfrm80_CalcRemains.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm80_CalcRemains;
end;

class function Tfrm80_CalcRemains.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm80_CalcRemains;
end;

class procedure Tfrm80_CalcRemains.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm80_CalcRemains) := AForm;
end;

procedure Tfrm80_CalcRemains.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  // инициализируем закладки
  Tfrm81_RemainsSecType.Instance.PlaceToWinControl(Tab1);
  Tfrm82_RemainsPeriodList.Instance.PlaceToWinControl(Tab2);
  Tfrm83_RemainsNotLinked.Instance.PlaceToWinControl(Tab3);
  Tfrm83_RemainsList.Instance.PlaceToWinControl(Tab4);
  Tfrm83_RemainsRates.Instance.PlaceToWinControl(Tab5);
  Tfrm86_RemainsPortDayList.Instance.PlaceToWinControl(Tab6);
  Tfrm83_RemainsSelectedList.Instance.PlaceToWinControl(Tab7);
  Tfrm83_DefaultSetList.Instance.PlaceToWinControl(Tab8);
  Tfrm83_DefaultRemainsList.Instance.PlaceToWinControl(Tab9);
end;

procedure Tfrm80_CalcRemains.FormDestroy(Sender: TObject);
begin
//
end;

function Tfrm80_CalcRemains.GetT027_ID: Double;
begin
  Result := Tfrm81_RemainsSecType(Tfrm81_RemainsSecType.Instance).T027_ID;
end;

function Tfrm80_CalcRemains.GetT055_ID: Double;
begin
  Result := Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).T055_ID;
end;

function Tfrm80_CalcRemains.GetT094_ID: Double;
begin
  Result := Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).T094_ID;
end;

function Tfrm80_CalcRemains.GetNeedCalculate: boolean;
begin
  Result := Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).needCalculate;
end;

procedure Tfrm80_CalcRemains.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure Tfrm80_CalcRemains.actBackExecute(Sender: TObject);
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на предыдущею закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    actNext.Caption := 'Далее >';
    case PageControl1.ActivePageIndex of
      0: Tfrm81_RemainsSecType(Tfrm81_RemainsSecType.Instance).DoOnClosePage(Self, Applied);
      1: Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).DoOnClosePage(Self, Applied);
      2: Tfrm83_RemainsNotLinked(Tfrm83_RemainsNotLinked.Instance).DoOnClosePage(Self, Applied);
      3: Tfrm83_RemainsList(Tfrm83_RemainsList.Instance).DoOnClosePage(Self, Applied);
      4: Tfrm83_RemainsRates(Tfrm83_RemainsRates.Instance).DoOnClosePage(Self, Applied);
      5: Tfrm86_RemainsPortDayList(Tfrm86_RemainsPortDayList.Instance).DoOnClosePage(Self, Applied);
      6: Tfrm83_RemainsSelectedList(Tfrm83_RemainsSelectedList.Instance).DoOnClosePage(Self, Applied);
      7: Tfrm83_DefaultSetList(Tfrm83_DefaultSetList.Instance).DoOnClosePage(Self, Applied);
      8: Tfrm83_DefaultRemainsList(Tfrm83_DefaultRemainsList.Instance).DoOnClosePage(Self, Applied);
    end;

    if (PageControl1.ActivePageIndex = 7) and (Tfrm83_DefaultSetList(Tfrm83_DefaultSetList.Instance).DirectCall = TRUE) then
      begin
      Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).DoOnShowPage(Self);
      PageControl1.ActivePageIndex := 1;
      end
    else
      begin
      case PageControl1.ActivePageIndex - 1 of
	0: Tfrm81_RemainsSecType(Tfrm81_RemainsSecType.Instance).DoOnShowPage(Self);
	1: Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).DoOnShowPage(Self);
	2: Tfrm83_RemainsNotLinked(Tfrm83_RemainsNotLinked.Instance).DoOnShowPage(Self);
	3: Tfrm83_RemainsList(Tfrm83_RemainsList.Instance).DoOnShowPage(Self);
	4: Tfrm83_RemainsRates(Tfrm83_RemainsRates.Instance).DoOnShowPage(Self);
	5: begin
	   Tfrm86_RemainsPortDayList(Tfrm86_RemainsPortDayList.Instance).StepForward := FALSE;
	   Tfrm86_RemainsPortDayList(Tfrm86_RemainsPortDayList.Instance).DoOnShowPage(Self);
	   end;
	6: Tfrm83_RemainsSelectedList(Tfrm83_RemainsSelectedList.Instance).DoOnShowPage(Self);
	7: Tfrm83_DefaultSetList(Tfrm83_DefaultSetList.Instance).DoOnShowPage(Self);
	end;
      PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
      end;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm80_CalcRemains.actBackUpdate(Sender: TObject);
begin
  doBack;
end;

procedure Tfrm80_CalcRemains.actNextExecute(Sender: TObject);
begin
  doNext;
end;

procedure Tfrm80_CalcRemains.actNextUpdate(Sender: TObject);
begin
//  actNext.Enabled := PageControl1.ActivePageIndex < PageControl1.PageCount - 1;
  actNext.Enabled := True;
end;

procedure Tfrm80_CalcRemains.FormShow(Sender: TObject);
begin
  Tfrm81_RemainsSecType(Tfrm81_RemainsSecType.Instance).DoOnShowPage(Self);
end;

procedure Tfrm80_CalcRemains.doBack;
begin
  actBack.Enabled := PageControl1.ActivePageIndex > 0;
end;

procedure Tfrm80_CalcRemains.doNext;
var
  VOldCursor: TCursor;
  Applied: boolean;
begin
  // на следующую закладку
  VOldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case PageControl1.ActivePageIndex of
      0: Tfrm81_RemainsSecType(Tfrm81_RemainsSecType.Instance).DoOnClosePage(Self, Applied);
      1:
      begin
        Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).DoOnClosePage(Self, Applied);
        if Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).needCalculate then
        begin
          Applied := TAppMessages.ShowConfirmation(SConfirmCalculation);
          Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).needCalculate := Applied;
        end;
      end;
      2: Tfrm83_RemainsNotLinked(Tfrm83_RemainsNotLinked.Instance).DoOnClosePage(Self, Applied);
      3: Tfrm83_RemainsList(Tfrm83_RemainsList.Instance).DoOnClosePage(Self, Applied);
      4: Tfrm83_RemainsRates(Tfrm83_RemainsRates.Instance).DoOnClosePage(Self, Applied);
      5: Tfrm86_RemainsPortDayList(Tfrm86_RemainsPortDayList.Instance).DoOnClosePage(Self, Applied);
      6: Tfrm83_RemainsSelectedList(Tfrm83_RemainsSelectedList.Instance).DoOnClosePage(Self, Applied);
      7: Tfrm83_DefaultSetList(Tfrm83_DefaultSetList.Instance).DoOnClosePage(Self, Applied);
      8: begin
         Tfrm83_DefaultRemainsList(Tfrm83_DefaultRemainsList.Instance).DoOnClosePage(Self, Applied);
         actNext.Caption := 'Далее >';
         PageControl1.ActivePageIndex := 0;
         end;
      //4: ApplyChanges;
      end;

    // если не одобрили, то не переходим дальше
    if not Applied then exit;
    case PageControl1.ActivePageIndex + 1 of
      0: Tfrm81_RemainsSecType(Tfrm81_RemainsSecType.Instance).DoOnShowPage(Self);
      1: Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).DoOnShowPage(Self);
      2: Tfrm83_RemainsNotLinked(Tfrm83_RemainsNotLinked.Instance).DoOnShowPage(Self);
      3: Tfrm83_RemainsList(Tfrm83_RemainsList.Instance).DoOnShowPage(Self);
      4: Tfrm83_RemainsRates(Tfrm83_RemainsRates.Instance).DoOnShowPage(Self);
      5: begin
	 Tfrm86_RemainsPortDayList(Tfrm86_RemainsPortDayList.Instance).StepForward := TRUE;
	 Tfrm86_RemainsPortDayList(Tfrm86_RemainsPortDayList.Instance).DoOnShowPage(Self);
	 end;
      6: Tfrm83_RemainsSelectedList(Tfrm83_RemainsSelectedList.Instance).DoOnShowPage(Self);
      7: begin
	 Tfrm83_DefaultSetList(Tfrm83_DefaultSetList.Instance).DoOnShowPage(Self);
	 Tfrm83_DefaultSetList(Tfrm83_DefaultSetList.Instance).DirectCall := FALSE;
	 end;
      8: begin
         actNext.Caption := 'Завершить';
         Tfrm83_DefaultRemainsList(Tfrm83_DefaultRemainsList.Instance).DoOnShowPage(Self);
         end;
      end;
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1;
  finally
    Screen.Cursor:= VOldCursor;
  end;
end;

procedure Tfrm80_CalcRemains.SetNeedCalculate(needCalculate: boolean);
begin
  Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).needCalculate := needCalculate;
end;

procedure Tfrm80_CalcRemains.RefreshPeriodList();
begin
  Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).RefreshAfterListChange;
end;

function Tfrm80_CalcRemains.GetT030_ID: Double;
begin
  Result := Tfrm83_RemainsList(Tfrm83_RemainsList.Instance).T030_ID;
end;

function Tfrm80_CalcRemains.GetT055_ID1: Double;
begin
  Result := Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).T055_ID1;
end;

function Tfrm80_CalcRemains.GetT055_ID2: Double;
begin
  Result := Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).T055_ID2;
end;

procedure Tfrm80_CalcRemains.SetStep1Desc(Desc: String);
begin
  fm21SepDescription2.lblDesc1.Caption := format(SEC_TYPE_DESC, [Desc]);
  fm21SepDescription3.lblDesc1.Caption := format(SEC_TYPE_DESC, [Desc]);
  fm21SepDescription4.lblDesc1.Caption := format(SEC_TYPE_DESC, [Desc]);
  fm21SepDescription5.lblDesc1.Caption := format(SEC_TYPE_DESC, [Desc]);
  fm21SepDescription6.lblDesc1.Caption := format(SEC_TYPE_DESC, [Desc]);
  fm21SepDescription7.lblDesc1.Caption := format(SEC_TYPE_DESC, [Desc]);
  fm21SepDescription8.lblDesc1.Caption := format(SEC_TYPE_DESC, [Desc]);
  fm21SepDescription9.lblDesc1.Caption := format(SEC_TYPE_DESC, [Desc]);
end;

procedure Tfrm80_CalcRemains.SetStep2Desc(Desc: String);
begin
  fm21SepDescription3.lblDesc2.Caption := format(PERIOD_DESC, [Desc]);
  fm21SepDescription4.lblDesc2.Caption := format(PERIOD_DESC, [Desc]);
  fm21SepDescription5.lblDesc2.Caption := format(PERIOD_DESC, [Desc]);
  fm21SepDescription6.lblDesc2.Caption := format(PERIOD_DESC, [Desc]);
  fm21SepDescription7.lblDesc2.Caption := format(PERIOD_DESC, [Desc]);
  fm21SepDescription8.lblDesc2.Caption := format(PERIOD_DESC, [Desc]);
  fm21SepDescription9.lblDesc2.Caption := format(PERIOD_DESC, [Desc]);
end;

procedure Tfrm80_CalcRemains.btnDefaultsClick(Sender: TObject);
var
  Applied: boolean;
begin
  Tfrm82_RemainsPeriodList(Tfrm82_RemainsPeriodList.Instance).DoOnClosePage(Self, Applied);
  Tfrm83_DefaultSetList(Tfrm83_DefaultSetList.Instance).DirectCall := TRUE;
  Tfrm83_DefaultSetList(Tfrm83_DefaultSetList.Instance).DoOnShowPage(Self);
  PageControl1.ActivePageIndex := 7;
end;

end.
