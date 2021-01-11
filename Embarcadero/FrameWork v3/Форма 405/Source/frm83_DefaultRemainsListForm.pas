unit frm83_DefaultRemainsListForm;

interface

uses
  frm04_TabListForm, frm80_CalcRemainsForm, ComCtrls, Db,
  frm83_DefaultRepaymentsListForm, frm83_DefaultOperationsListForm,
  frm00_ParentForm, Forms, frm04_ListForm, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, fm31_FilterFrame, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, Variants, System.Actions;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
//  , Oracle, OracleData, Menus, ActnList, StdCtrls,
//  fm31_FilterFrame, fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin,
//  ExtCtrls, , , dm005_MainData,
//  frm04_TabListItemForm

type
  Tfrm83_DefaultRemainsList = class(Tfrm04_TabList, TCalcStepPage)
    ts02: TTabSheet;
    odsListT150_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT027_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListDEF_TYPE_DESC: TStringField;
    odsListDEF_DATE: TDateTimeField;
    odsListT031_CURRENCY: TStringField;
    odsListT055_ID: TFloatField;
    odsListSUM_NOM_IN: TFloatField;
    odsListSUM_NOM_DEF: TFloatField;
    odsListSUM_NOM_405: TFloatField;
    odsListSUM_NOM_CBONS: TFloatField;
    odsListSUM_NOM_YEAR: TFloatField;
    odsListSUM_NOM_BALANCE: TFloatField;
    odsListSUM_NOM_OUT: TFloatField;
    odsListSUM_USD_IN: TFloatField;
    odsListSUM_USD_DEF: TFloatField;
    odsListSUM_USD_405: TFloatField;
    odsListSUM_USD_CBONS: TFloatField;
    odsListSUM_USD_YEAR: TFloatField;
    odsListSUM_USD_BALANCE: TFloatField;
    odsListSUM_USD_OUT: TFloatField;
    odsListUSD_COURSE_REVALUATION: TFloatField;
    odsListREPAYS_PRC_OUT: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT055_START_DATE: TDateTimeField;
    odsListT055_END_DATE: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure odsListAfterScroll(DataSet: TDataSet);
    procedure actShowDetailExecute(Sender: TObject);
  private
    vRepayments: Tfrm83_DefaultRepaymentsList;
    vOperations: Tfrm83_DefaultOperationsList;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
    procedure RefreshAfterListChange; override;
  end;

var
  frm83_DefaultRemainsList: Tfrm83_DefaultRemainsList;

implementation

//uses untMessages, frm04_ListForm,
//  frm82_RemainsPeriodListForm;

{$R *.DFM}

{ Tfrm83_DefaultRemainsList }

procedure Tfrm83_DefaultRemainsList.RefreshAfterListChange;
begin
  RefreshData('T150_ID', odsList['T150_ID']);
end;

procedure Tfrm83_DefaultRemainsList.DoOnClosePage(const AMainForm: TForm;
  var Applied: boolean);
begin
  Applied := True;
end;

procedure Tfrm83_DefaultRemainsList.DoOnShowPage(const AMainForm: TForm);
begin
  RefreshAfterListChange;
end;

class function Tfrm83_DefaultRemainsList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm83_DefaultRemainsList;
end;

class function Tfrm83_DefaultRemainsList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm83_DefaultRemainsList;
end;

class procedure Tfrm83_DefaultRemainsList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm83_DefaultRemainsList) := AForm;
end;

procedure Tfrm83_DefaultRemainsList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  DataSet.Close;
  // обновляем параметры
  DataSet.SetVariable('T027_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T027_ID);
  DataSet.SetVariable('T055_ID', Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID);
  DataSet.Open;

  if KeyFields = '' then
    begin
    if DefPosition = dpLast then
      DataSet.Last;
    end
  else
    DataSet.Locate(KeyFields, KeyValues, []);
end;

procedure Tfrm83_DefaultRemainsList.FormCreate(Sender: TObject);
begin
  inherited;

  pc01.ActivePageIndex := 0;

  // инициализируем и кладем на панель
  if not Assigned(vRepayments) then
  begin
    vRepayments := Tfrm83_DefaultRepaymentsList(Tfrm83_DefaultRepaymentsList.Instance);
    vRepayments.RefreshMaster := RefreshAfterListChange;
    PlaceFormToWinControl(vRepayments, pc01.Pages[0]);
  end;

  if not Assigned(vOperations) then
  begin
    vOperations := Tfrm83_DefaultOperationsList(Tfrm83_DefaultOperationsList.Instance);
    vOperations.RefreshMaster := RefreshAfterListChange;
    PlaceFormToWinControl(vOperations, pc01.Pages[1]);
  end;
end;

procedure Tfrm83_DefaultRemainsList.odsListAfterScroll(DataSet: TDataSet);
begin
  vRepayments.DefDate := odsList['DEF_DATE'];
  vRepayments.DefaultID := odsList['T150_ID'];

  vOperations.T030_ID := odsListT030_ID.AsFloat;
  vOperations.DefaultID := odsListT150_ID.AsFloat;
  vOperations.DefaultDate := odsListDEF_DATE.AsDateTime;
  vOperations.PeriodID := Tfrm80_CalcRemains(Tfrm80_CalcRemains.Instance).T055_ID;

  if Panel1.Visible then
  begin
    vRepayments.RefreshData('', Unassigned);
    vOperations.RefreshData('', Unassigned);
  end;
end;

procedure Tfrm83_DefaultRemainsList.actShowDetailExecute(Sender: TObject);
begin
  inherited;

  if actShowDetail.Checked then
  begin
    vRepayments.RefreshData('', Unassigned);
    vOperations.RefreshData('', Unassigned);
  end;
end;

end.
