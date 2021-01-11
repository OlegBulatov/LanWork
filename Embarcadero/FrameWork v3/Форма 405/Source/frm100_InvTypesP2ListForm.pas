unit frm100_InvTypesP2ListForm;

interface

uses
  frm04_ListForm, Db, fm02_PrmParentFrame, fm04_LookUpFrame,
  fm35_EmissGroupFrame, StdCtrls, DBCtrls, fm01_PeriodFrame, Oracle,
  OracleData, Menus, Classes, ActnList, ComCtrls, fm31_FilterFrame, Forms,
  fmSeach, Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls,
  frm00_ParentForm, System.Actions;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  fm03_PrmPeriodFrame

type
  Tfrm100_InvTypesP2List = class(Tfrm04_List)
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    odsListT055_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListT006_DIRECTION_DESC: TStringField;
    odsListT001_OP_COUNT: TFloatField;
    odsListSUM_ALL: TFloatField;
    odsListSUM_CASE: TFloatField;
    odsListSUM_STRAIGHT: TFloatField;
    odsListSUM_OTHER: TFloatField;
    Tfm01_Period2: Tfm01_Period;
    Tfm01_Period1: Tfm01_Period;
    lcbType: TDBLookupComboBox;
    odsType: TOracleDataSet;
    odsTypeT027_ID: TFloatField;
    odsTypeDESC_FLD: TStringField;
    dsType: TDataSource;
    odsListT027_SEC_TYPE: TStringField;
    actSetInvStraight: TAction;
    actSetInvCase: TAction;
    actSetInvNoCount: TAction;
    odsListT027_ID: TFloatField;
    oqSetInvType: TOracleQuery;
    actGoto405: TAction;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    odsListSUM_NOCOUNT: TFloatField;
    Label2: TLabel;
    Label3: TLabel;
    odsListT028_ID: TFloatField;
    Label4: TLabel;
    cb_Residents: TComboBox;
    oqResidentsFilter: TOracleQuery;
    odsListT006_DIRECTION: TIntegerField;
    odsListT037_SHOT_NAME: TStringField;
    oqGetResidentsFilter: TOracleQuery;
    actSetInvBackStraight: TAction;
    odsListSUM_BACK_STRAIGHT: TFloatField;
    ToolBar3: TToolBar;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    actSetInvSister: TAction;
    actSetInvOthYch: TAction;
    odsListSUM_SISTER: TFloatField;
    odsListSUM_OTH_YCH: TFloatField;
    odsListT011_TYPE_ID: TFloatField;
    odsListT012_NAME: TStringField;
    odsListT012_CODE: TStringField;
    odsListT013_NAME: TStringField;
    odsListT013_CODE: TFloatField;
    odsListT012_ID: TFloatField;
    odsListT013_ID: TFloatField;
    CheckBox1: TCheckBox;
    fm35_EmissGroup1: Tfm35_EmissGroup;
    odsListT001_COMMENT: TStringField;
    odsListT001_PART_ID: TFloatField;
    odsListT001_PERCENT: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure actInvStraightExecute(Sender: TObject);
    procedure actInvStraightUpdate (Sender: TObject);
    procedure actInvCaseUpdate (Sender: TObject);
    procedure actInvNoCountUpdate (Sender: TObject);
    procedure actGoto405Execute (Sender: TObject);
    procedure cb_ResidentsChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSetInvBackStraightUpdate(Sender: TObject);
    procedure actSetInvBackStraightExecute(Sender: TObject);
    procedure actSetInvSisterExecute(Sender: TObject);
    procedure actSetInvOthYchExecute(Sender: TObject);
    procedure actSetInvSisterUpdate(Sender: TObject);
    procedure actSetInvOthYchUpdate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure actSetInvCaseExecute(Sender: TObject);
    procedure actSetInvNoCountExecute(Sender: TObject);
  private
    procedure setInvType(AType: Integer);
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function EnableAction(Action: TAction): boolean; override;
  public
    { Public declarations }
    procedure RefreshData(const KeyFields: string; const KeyValues: Variant); override;
  end;

var
  frm100_InvTypesP2List: Tfrm100_InvTypesP2List;

implementation

uses SysUtils, dm005_MainData, frm01_MainForm;

{$R *.DFM}

{ Tfrm100_InvTypesList }

procedure Tfrm100_InvTypesP2List.setInvType(AType: Integer);
var
  I: Integer;
  VSum: Double;
begin
  odsList.DisableControls;
  try
    // Просиавляем признак для каждой выделенной записи
    if xxxDBGrid.SelectedRows.Count = 0 then
    begin
      xxxDBGrid.SelectedRows.CurrentRowSelected := True;
    end;

    // Бежим по каждой строке
    for I := 0 to xxxDBGrid.SelectedRows.Count - 1 do
    begin

      odsList.GotoBookmark(xxxDBGrid.SelectedRows.Items[I]);

      oqSetInvType.SetVariable ('T001_INV_TYPE',AType);
      oqSetInvType.SetVariable ('T055_ID', odsListT055_ID.asfloat);
      oqSetInvType.SetVariable ('T027_ID', odsListT027_ID.asfloat);
      oqSetInvType.SetVariable ('T028_ID', odsListT028_ID.asfloat);
      oqSetInvType.SetVariable ('T006_ID', odsListT006_DIRECTION.asfloat);
      oqSetInvType.SetVariable ('T012_ID', odsListT012_ID.asFloat);
      oqSetInvType.SetVariable ('T013_ID', odsListT013_ID.asFloat);
      oqSetInvType.SetVariable ('T011_TYPE_ID', odsListT011_TYPE_ID.AsFloat);

      oqSetInvType.Execute;

      // обновляем одну строку
      odsList.Edit;
      VSum := 0;
      if odsListSUM_NOCOUNT.AsFloat > 0 then
      begin
        vsum := odsListSUM_NOCOUNT.AsFloat;
      end else
      if odsListSUM_CASE.AsFloat > 0 then
      begin
        vsum := odsListSUM_CASE.AsFloat;
      end else
      if odsListSUM_OTHER.AsFloat > 0 then
      begin
        vsum := odsListSUM_OTHER.AsFloat;
      end else
      if odsListSUM_BACK_STRAIGHT.AsFloat > 0 then
      begin
        vsum := odsListSUM_BACK_STRAIGHT.AsFloat;
      end else
      if odsListSUM_SISTER.AsFloat > 0 then
      begin
        vsum := odsListSUM_SISTER.AsFloat;
      end else
      if odsListSUM_OTH_YCH.AsFloat > 0 then
      begin
        vsum := odsListSUM_OTH_YCH.AsFloat;
      end else
      if odsListSUM_STRAIGHT.AsFloat > 0 then
      begin
        vsum := odsListSUM_STRAIGHT.AsFloat;
      end;
      odsListSUM_NOCOUNT.AsFloat := 0;
      odsListSUM_CASE.AsFloat := 0;
      odsListSUM_OTHER.AsFloat := 0;
      odsListSUM_BACK_STRAIGHT.AsFloat := 0;
      odsListSUM_SISTER.AsFloat := 0;
      odsListSUM_OTH_YCH.AsFloat := 0;
      odsListSUM_STRAIGHT.AsFloat := 0;

      if AType = 1 then
      begin
        // Прямые
        odsListSUM_STRAIGHT.AsFloat := vsum;
      end else
      if AType = 2 then
      begin
        // Портфельные
        odsListSUM_CASE.AsFloat := vsum;
      end else
      if AType = 3 then
      begin
        // Не учитывать
        odsListSUM_OTHER.AsFloat := vsum;
      end else
      if AType = 4 then
      begin
        // Обратные прямые
        odsListSUM_BACK_STRAIGHT.AsFloat:= vsum;
      end else
      if AType = 5 then
      begin
        // Сестринские
        odsListSUM_SISTER.AsFloat:= vsum;
      end else
      if AType = 6 then
      begin
        // Прочие участие
        odsListSUM_OTH_YCH.AsFloat:= vsum;
      end;
      odsList.Post;
    end;
    xxxDBGrid.SelectedRows.Clear;




    (*
    RefreshAfterListChange;
    DataSet.Locate ('T055_ID; T027_ID; T028_ID; T006_DIRECTION; T012_ID; T013_ID',
      VarArrayOf([AT055_ID, AT027_ID, AT028_ID, AT006_ID, AT012_ID, AT013_ID]), []);
    *)

    dmMain.Commit;
  finally
    dmMain.Rollback;
    odsList.EnableControls;
  end;
end;

procedure Tfrm100_InvTypesP2List.actGoto405Execute(Sender: TObject);
var
  vResFilter: Integer;
begin
  oqGetResidentsFilter.Execute;
  vResFilter := oqGetResidentsFilter.GetVariable('O_RES');

  frm01_Main.FindOperFiltered(
    Tfm01_Period1.lcbPeriod.KeyValue,
    Tfm01_Period2.lcbPeriod.KeyValue,
    lcbType.KeyValue,
    odsListT028_ID.asFloat,
    odsListT006_DIRECTION.asFloat,
    vResFilter,
    odsListT012_ID.asFloat,
    odsListT013_ID.asFloat,
    [2, 5] // T001_PART_ID
    );
end;

procedure Tfrm100_InvTypesP2List.actInvCaseUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSetInvCase.Enabled := not DataSet.IsEmpty and EnableAction(actSetInvCase)
  else
    actSetInvCase.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm100_InvTypesP2List.actInvNoCountUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSetInvNoCount.Enabled := not DataSet.IsEmpty and EnableAction(actSetInvNoCount)
  else
    actSetInvNoCount.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm100_InvTypesP2List.actInvStraightUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSetInvStraight.Enabled := not DataSet.IsEmpty and EnableAction(actSetInvStraight)
  else
    actSetInvStraight.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm100_InvTypesP2List.actInvStraightExecute(Sender: TObject);
begin
  SetInvType(1);
end;

function Tfrm100_InvTypesP2List.EnableAction(Action: TAction): boolean;
begin
  result := true;
end;

procedure Tfrm100_InvTypesP2List.FormShow(Sender: TObject);
begin
  if not odsType.Active then
  begin
    fm35_EmissGroup1.odsList.Close;
    fm35_EmissGroup1.odsList.Open;
    fm35_EmissGroup1.odsList.Last;
    fm35_EmissGroup1.Lookup01.KeyValue := 1;

    Tfm01_Period1.Init;
    Tfm01_Period2.Init;

    odsType.Close;
    odsType.Open;

    lcbType.KeyValue := 3;
  end;
	inherited;
end;

class function Tfrm100_InvTypesP2List.GetSelfClass: Tfrm00_Parents;
begin
  result := Tfrm100_InvTypesP2List;
end;

class function Tfrm100_InvTypesP2List.GetSelfForm: Tfrm00_Parent;
begin
  result := frm100_InvTypesP2List;
end;

procedure Tfrm100_InvTypesP2List.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin

  DataSet.Close;

  // снимаем фильтры по данному полю
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T055_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID');

  SetNumbBetweenFilter(
    'T055_ID',
    strtoint(Tfm01_Period1.KeyValue),
    strtoint(Tfm01_Period2.KeyValue)
    );

  SetNumbFilter('T027_ID', lcbType.KeyValue);

  // фильтр по группе эмиссий
  odsList.SetVariable('T042_ID', fm35_EmissGroup1.Lookup01.KeyValue);

  DataSet.Open;

end;

class procedure Tfrm100_InvTypesP2List.SetSelfForm(
	const AForm: Tfrm00_Parent);
begin
	TForm(frm100_InvTypesP2List) := AForm;
end;

// AMS:
procedure Tfrm100_InvTypesP2List.cb_ResidentsChange(Sender: TObject);
begin
  inherited;
  oqResidentsFilter.SetVariable('FILTER_FLAG', cb_Residents.ItemIndex);
  oqResidentsFilter.Execute;
end;

procedure Tfrm100_InvTypesP2List.FormCreate(Sender: TObject);
begin
  inherited;
  cb_Residents.ItemIndex := 0;
  CheckBox1.Checked := False;
end;
// AMS end

procedure Tfrm100_InvTypesP2List.actSetInvBackStraightUpdate(
  Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSetInvBackStraight.Enabled := not DataSet.IsEmpty and EnableAction(actSetInvBackStraight)
  else
    actSetInvBackStraight.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm100_InvTypesP2List.actSetInvBackStraightExecute(
  Sender: TObject);
begin
  SetInvType(4);
end;

procedure Tfrm100_InvTypesP2List.actSetInvSisterExecute(Sender: TObject);
begin
  SetInvType(5);
end;

procedure Tfrm100_InvTypesP2List.actSetInvOthYchExecute(Sender: TObject);
begin
  SetInvType(6);
end;

procedure Tfrm100_InvTypesP2List.actSetInvSisterUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSetInvSister.Enabled := not DataSet.IsEmpty and EnableAction(actSetInvSister)
  else
    actSetInvSister.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm100_InvTypesP2List.actSetInvOthYchUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actSetInvOthYch.Enabled := not DataSet.IsEmpty and EnableAction(actSetInvOthYch)
  else
    actSetInvOthYch.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm100_InvTypesP2List.CheckBox1Click(Sender: TObject);
begin
  xxxDBGrid.Columns[1].Visible := not CheckBox1.Checked;
end;

procedure Tfrm100_InvTypesP2List.actSetInvCaseExecute(Sender: TObject);
begin
  SetInvType(2);
end;

procedure Tfrm100_InvTypesP2List.actSetInvNoCountExecute(Sender: TObject);
begin
  SetInvType(3);
end;

end.
