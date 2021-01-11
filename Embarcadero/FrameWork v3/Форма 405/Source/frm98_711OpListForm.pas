unit frm98_711OpListForm;

interface

uses
  frm04_ListForm, Db, fm02_PrmParentFrame, fm12_ListFrame,
  fm27_SecTypeFrame, fm41_SecTypeForLinksFrame, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm96_711LinksForm,
  frm00_ParentForm, frm95_EmissionLinkListForm, Variants, System.Actions;
//  Windows, Messages, SysUtils, Graphics, Controls, Dialogs,

type
  Tfrm98_711OpList = class(Tfrm04_List, TCalcStepPage)
    odsListT055_ID: TFloatField;
    odsListT028_MAIN_ID: TFloatField;
    odsListT030_ID_IS_MAIN: TStringField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT030_ID: TFloatField;
    Panel2: TPanel;
    fm27_SecType: Tfm41_SecTypeForLinks;
    ToolButton5: TToolButton;
    tbLinkEmission: TToolButton;
    actLinkEmission: TAction;
    odsListT064_COUNT: TFloatField;
    actApplyFilter: TAction;
    oqLinkEmission: TOracleQuery;
    odsListT052_SUM: TFloatField;
    odsListT052_SUM_Y: TFloatField;
    odsListT052_SUM_N: TFloatField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT027_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT026_ID_MAIN: TFloatField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    procedure actEditAttributesUpdate(Sender: TObject);
    procedure actEditAttributesExecute(Sender: TObject);
    procedure actLinkEmissionExecute(Sender: TObject);
    procedure actApplyFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actAddAttributesExecute(Sender: TObject);
    procedure actAddAttributesUpdate(Sender: TObject);

  private
    FKeyFields: string;
    FKeyValues: Variant;
    function GetT013_ID: Double;
    //function GetParentForm: Tfrm96_711Links;
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function ChooseForm: Tfrm95_EmissionLinkList; virtual;
    function LinkEmission: Boolean;

    //
    procedure DoRefresh(Sender: TObject);
  public
    { Public declarations }
    //
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    //
    property T013_ID: Double read GetT013_ID;
    procedure RefreshAfterListChange; override;
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant);  override;
  end;

var
  frm98_711OpList: Tfrm98_711OpList;

implementation

uses dm005_MainData, frm01_MainForm;

//uses untMessages, A00_MatrixConst, Matrix, dm005_MainData, frm01_MainForm;

resourcestring
  SConfirmCalculation = 'Ѕудет начат расчет остатков дл€ выбранного квартала. ѕродолжить?';
  SConfirmCalculation2 = '¬ы действительно хотите пересчитать остатки заново?';

{$R *.DFM}

{ Tfrm81_RemainsPeriodList }

procedure Tfrm98_711OpList.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
  (*
	if needCalculate then
	  Applied := TAppMessages.ShowConfirmation(SConfirmCalculation)
  else
  	Applied := true;
  *)
end;

procedure Tfrm98_711OpList.DoOnShowPage(const AMainForm: TForm);
begin
  // смотрим данные
  RefreshAfterListChange;
end;

class function Tfrm98_711OpList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm98_711OpList;
end;

class function Tfrm98_711OpList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm98_711OpList;
end;

function Tfrm98_711OpList.GetT013_ID: Double;
begin
  Result := odsList.FieldByName('T013_ID').AsFloat;
end;

class procedure Tfrm98_711OpList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm98_711OpList) := AForm;
end;

procedure Tfrm98_711OpList.RefreshAfterListChange;
begin
  RefreshData('T030_ID', odsList.FieldByName('T030_ID').AsFloat);
end;

(*
function Tfrm98_711OpList.GetParentForm: Tfrm96_711Links;
begin
  Result := Tfrm96_711Links(Tfrm96_711Links.Instance);
end;
*)

procedure Tfrm98_711OpList.actEditAttributesUpdate(
  Sender: TObject);
begin
  if dmMain.UseMatrix then
    actEditAttributes.Enabled := not DataSet.IsEmpty and EnableAction(actEditAttributes)
  else
    actEditAttributes.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm98_711OpList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin

  FKeyFields := KeyFields;
  FKeyValues := KeyValues;

  DoRefresh(nil);
end;

procedure Tfrm98_711OpList.DoRefresh(Sender: TObject);
begin
  // снимаем фильтры по полю тип ц.б.
  //xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID');
  // получаем список ценных бумаг
  fm27_SecType.GetParamsValues;
  // устанавливаем фильтр
  //Set24Filter('T027_ID', fm27_SecType.Param.AsFloatArray);

  // устанавливаем фильтр
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID');

  // обновл€ем данные
  DataSet.Close;
  DataSet.SetVariable('T028_ID', Tfrm96_711Links(Tfrm96_711Links.Instance).T028_ID);
  DataSet.SetVariable('T055_ID', Tfrm96_711Links(Tfrm96_711Links.Instance).T055_ID);
  DataSet.SetVariable('T054_ID', Tfrm96_711Links(Tfrm96_711Links.Instance).T054_ID);
  DataSet.SetVariable('T053_ID', Tfrm96_711Links(Tfrm96_711Links.Instance).T053_ID);
  DataSet.SetVariable('FLAG_T055', Tfrm96_711Links(Tfrm96_711Links.Instance).FLAG_T055);
  DataSet.SetVariable('FLAG_T054', Tfrm96_711Links(Tfrm96_711Links.Instance).FLAG_T054);
  DataSet.SetVariable('FLAG_T053', Tfrm96_711Links(Tfrm96_711Links.Instance).FLAG_T053);
  Set24Filter('T027_ID', Tfrm96_711Links(Tfrm96_711Links.Instance).T027_IDs);
  DataSet.Open;
  if FKeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(FKeyFields, FKeyValues, [])
  end;
end;

procedure Tfrm98_711OpList.actEditAttributesExecute(Sender: TObject);
begin
{
  if odsListT030_ID_IS_MAIN.AsString = 'ƒа' then
  begin
    frm01_Main.FindMainEmission_711_32_InPer(
    odsListT030_ID.AsFloat,
    Tfrm96_711Links(Tfrm96_711Links.Instance).T055_ID
    );
  end else
  begin
}
    frm01_Main.FindEmission_711_32_InPer(
    odsListT030_ID.AsFloat,
    Tfrm96_711Links(Tfrm96_711Links.Instance).T055_ID
    );
//  end;
end;

procedure Tfrm98_711OpList.actLinkEmissionExecute(Sender: TObject);
begin
  ChooseForm.T028_ID := Tfrm96_711Links(Tfrm96_711Links.instance).T028_ID;
  ChooseForm.RegNum := odsListT026_SEC_REGN.AsString;
  ChooseForm.OnSelect := LinkEmission;
  ChooseForm.RefreshAfterListChange;
  ChooseForm.ShowModal
end;

function Tfrm98_711OpList.LinkEmission: Boolean;
begin
//  Result := False;

  // переносим запись
  oqLinkEmission.SetVariable('i_id', odsListT030_ID.AsFloat);
  oqLinkEmission.SetVariable('i_parent_id', ChooseForm.SelectedID);
  oqLinkEmission.Execute;

  Result := True;
  FKeyValues := odsListT030_ID.AsFloat;
  RefreshData('T030_ID', ChooseForm.SelectedID);
end;

function Tfrm98_711OpList.ChooseForm: Tfrm95_EmissionLinkList;
begin
  result := Tfrm95_EmissionLinkList.instance; 
end;

procedure Tfrm98_711OpList.actApplyFilterExecute(Sender: TObject);
begin
  //
  RefreshData('', Unassigned);
end;

procedure Tfrm98_711OpList.FormCreate(Sender: TObject);
begin
  inherited;

  fm27_SecType.SetParamsValues;
end;

procedure Tfrm98_711OpList.actAddAttributesExecute(Sender: TObject);
begin
{
  if odsListT030_ID_IS_MAIN.AsString = 'ƒа' then
  begin
    frm01_Main.FindMainEmission_711_31_InPer(
    odsListT030_ID.AsFloat,
    Tfrm96_711Links(Tfrm96_711Links.Instance).T055_ID
    );
  end else
  begin
}
    frm01_Main.FindEmission_711_31_InPer(
    odsListT030_ID.AsFloat,
    Tfrm96_711Links(Tfrm96_711Links.Instance).T055_ID
    );
//  end;
end;

procedure Tfrm98_711OpList.actAddAttributesUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actAddAttributes.Enabled := not DataSet.IsEmpty and EnableAction(actAddAttributes)
  else
    actAddAttributes.Enabled := not DataSet.IsEmpty;
end;

end.
