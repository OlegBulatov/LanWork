unit frm93_OpListForm;

interface

uses
  frm04_ListForm, frm91_405LinksForm, Db, Oracle, OracleData, Menus,
  Classes, ActnList, StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach,
  Grids, DBGrids, xxxDBGrid, ToolWin, Controls, ExtCtrls, frm00_ParentForm,
  frm95_EmissionLinkListForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  fm27_SecTypeFrame,

type
  Tfrm93_OpList = class(Tfrm04_List, TCalcStepPage)
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
    odsListT001_OP_COUNT: TFloatField;
    odsListT001_OP_SUM_CROSS: TFloatField;
    odsListT001_OP_SUM_CROSS_Y: TFloatField;
    odsListT001_OP_SUM_CROSS_N: TFloatField;
    odsListT030_ID: TFloatField;
    ToolButton5: TToolButton;
    tbLinkEmission: TToolButton;
    actLinkByIssuer: TAction;
    actGoToEmissInf: TAction;
    ToolButton6: TToolButton;
    odsListIS_PACK: TFloatField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT027_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT026_ID_MAIN: TFloatField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    ToolButton7: TToolButton;
    actUnlink: TAction;
    actMakeMain: TAction;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    MenuLink: TPopupMenu;
    actLinkBySecRegn: TAction;
    N16: TMenuItem;
    N17: TMenuItem;
    procedure actEditAttributesUpdate(Sender: TObject);
    procedure actEditAttributesExecute(Sender: TObject);
    procedure actLinkByIssuerExecute(Sender: TObject);
    procedure actGoToEmissInfExecute(Sender: TObject);
    procedure chbHidePackClick(Sender: TObject);
    procedure actLinkByIssuerUpdate(Sender: TObject);
    procedure actUnlinkUpdate(Sender: TObject);
    procedure actUnlinkExecute(Sender: TObject);
    procedure actMakeMainUpdate(Sender: TObject);
    procedure actMakeMainExecute(Sender: TObject);
    procedure actGoToEmissInfUpdate(Sender: TObject);
    procedure actLinkBySecRegnExecute(Sender: TObject);
    procedure actLinkBySecRegnUpdate(Sender: TObject);
  private
    FKeyValues: Variant;
    function GetT013_ID: Double;
    //function GetParentForm: Tfrm91_405Links;
  protected
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;

    function ChooseForm: Tfrm95_EmissionLinkList; virtual;
    function LinkEmission: Boolean;

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
  frm93_OpList: Tfrm93_OpList;

implementation

uses frm01_MainForm, dm005_MainData;

//uses untMessages, A00_MatrixConst, Matrix

{$R *.DFM}

{ Tfrm81_RemainsPeriodList }

procedure Tfrm93_OpList.DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
begin
//
end;

procedure Tfrm93_OpList.DoOnShowPage(const AMainForm: TForm);
begin
  // смотрим данные
  RefreshAfterListChange;
end;

class function Tfrm93_OpList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm93_OpList;
end;

class function Tfrm93_OpList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm93_OpList;
end;

function Tfrm93_OpList.GetT013_ID: Double;
begin
  Result := odsList.FieldByName('T013_ID').AsFloat;
end;

class procedure Tfrm93_OpList.SetSelfForm(
  const AForm: Tfrm00_Parent);
begin
  TForm(frm93_OpList) := AForm;
end;

procedure Tfrm93_OpList.RefreshAfterListChange;
begin
  RefreshData('T030_ID', odsList.FieldByName('T030_ID').AsFloat);
end;

(*
function Tfrm93_OpList.GetParentForm: Tfrm91_405Links;
begin
  Result := Tfrm91_405Links(Tfrm91_405Links.Instance);
end;
*)

procedure Tfrm93_OpList.RefreshData(const KeyFields: string;
  const KeyValues: Variant);
begin
  // устанавливаем фильтр
  xxxDBGrid.MainDataSet.Conditions.ClearFor('T027_ID');
  xxxDBGrid.MainDataSet.Conditions.ClearFor('IS_PACK');

//  if Tfrm91_405Links(Tfrm91_405Links.Instance).T027_IDs <> nil then
//    Set24Filter('T027_ID', Tfrm91_405Links(Tfrm91_405Links.Instance).T027_IDs);
  SetNumbFilter('T027_ID', Tfrm91_405Links(Tfrm91_405Links.Instance).T027_ID);

  if Tfrm91_405Links(Tfrm91_405Links.Instance).HidePack then
    SetNumbFilter('IS_PACK', 0);

  // обновляем данные
  DataSet.Close;
  DataSet.SetVariable('T055_ID', Tfrm91_405Links(Tfrm91_405Links.Instance).T055_ID);
  DataSet.SetVariable('T028_ID', Tfrm91_405Links(Tfrm91_405Links.Instance).T028_ID);
  DataSet.Open;
  if KeyFields = '' then
  begin
    if DefPosition = dpLast then DataSet.Last;
  end else
  begin
    DataSet.Locate(KeyFields, KeyValues, [])
  end;
end;

procedure Tfrm93_OpList.actEditAttributesUpdate(
  Sender: TObject);
begin
  if dmMain.UseMatrix then
    actEditAttributes.Enabled := not DataSet.IsEmpty and EnableAction(actEditAttributes)
  else
    actEditAttributes.Enabled := not DataSet.IsEmpty;
end;

procedure Tfrm93_OpList.actEditAttributesExecute(Sender: TObject);
begin
  // найти операции формы 405
  frm01_Main.FindEmissInPer(
    Tfrm91_405Links(Tfrm91_405Links.Instance).T055_ID,
    odsListT030_ID.AsFloat
    );

  (*
  if odsListT030_ID_IS_MAIN.AsString = 'Да' then
  begin
    frm01_Main.FindMainEmissInPer(
      Tfrm91_405Links(Tfrm91_405Links.Instance).T055_ID,
      odsListT030_ID.AsFloat
      );
  end else
  begin
    frm01_Main.FindEmissInPer(
      Tfrm91_405Links(Tfrm91_405Links.Instance).T055_ID,
      odsListT030_ID.AsFloat
      );
  end;
  *)
end;

procedure Tfrm93_OpList.actLinkByIssuerUpdate(Sender: TObject);
begin
  actLinkByIssuer.Enabled := not odsList.IsEmpty
                             and odsListT030_ID_MAIN.IsNull;
end;

procedure Tfrm93_OpList.actLinkByIssuerExecute(Sender: TObject);
begin
  ChooseForm.T028_ID := odsListT028_MAIN_ID.AsFloat;
  ChooseForm.RegNum := odsListT026_SEC_REGN.AsString;
  ChooseForm.OnSelect := LinkEmission;
  ChooseForm.RefreshAfterListChange;
  ChooseForm.ShowModal;
end;

procedure Tfrm93_OpList.actLinkBySecRegnUpdate(Sender: TObject);
begin
  actLinkBySecRegn.Enabled := not odsList.IsEmpty
                              and odsListT030_ID_MAIN.IsNull;
end;

procedure Tfrm93_OpList.actLinkBySecRegnExecute(Sender: TObject);
begin
  ChooseForm.T028_ID := -1;
  ChooseForm.RegNum := odsListT026_SEC_REGN.AsString;
  ChooseForm.OnSelect := LinkEmission;
  ChooseForm.RefreshAfterListChange;
  ChooseForm.ShowModal;
end;

function Tfrm93_OpList.ChooseForm: Tfrm95_EmissionLinkList;
begin
  Result := Tfrm95_EmissionLinkList.instance;
end;

function Tfrm93_OpList.LinkEmission: Boolean;
begin
//  Result := False;

  // переносим запись
  oqUpdate.SetVariable('i_id', odsListT030_ID.AsFloat);
  oqUpdate.SetVariable('i_parent_id', ChooseForm.SelectedID);
  oqUpdate.Execute;

  Result := True;
  FKeyValues := odsListT030_ID.AsFloat;
  RefreshData('T030_ID', ChooseForm.SelectedID);
end;

procedure Tfrm93_OpList.DoRefresh(Sender: TObject);
begin
//
end;

procedure Tfrm93_OpList.actGoToEmissInfUpdate(Sender: TObject);
begin
  actGoToEmissInf.Enabled := ((not odsList.IsEmpty) and (not odsListT028_ID_MAIN.IsNull));
end;

procedure Tfrm93_OpList.actGoToEmissInfExecute(Sender: TObject);
begin
  frm01_Main.FindAllIssEmiss(
    odsListT028_ID_MAIN.AsFloat,
    [odsListT027_ID.AsFloat]
    );
end;

procedure Tfrm93_OpList.chbHidePackClick(Sender: TObject);
begin
  // вызываем обновление данных
  RefreshData('T030_ID', odsListT030_ID.Value);
end;

procedure Tfrm93_OpList.actUnlinkUpdate(Sender: TObject);
begin
  actUnlink.Enabled := (not odsListT030_ID_MAIN.IsNull and not (odsListT030_ID.AsFloat = odsListT030_ID_MAIN.AsFloat));
end;

procedure Tfrm93_OpList.actUnlinkExecute(Sender: TObject);
begin
  if odsListT030_ID.AsFloat = odsListT030_ID_MAIN.AsFloat then
    begin
    // удаляем как главную
// Пока не умеем !!!
//    oqDupl.SetVariable('T012_ID', odsList['T028_ID']);
//    oqDupl.Execute;
    end
  else
    begin
    // удаляем связь
    oqDelete.SetVariable('T030_ID', odsList['T030_ID']);
    oqDelete.Execute;
    end;

  RefreshData('T030_ID', odsList['T030_ID']);
end;

procedure Tfrm93_OpList.actMakeMainUpdate(Sender: TObject);
begin
  actMakeMain.Enabled := not odsList.IsEmpty and odsListT030_ID_MAIN.IsNull;
end;

procedure Tfrm93_OpList.actMakeMainExecute(Sender: TObject);
begin
  oqAdd.SetVariable('i_T030_ID', odsList['T030_ID']);
  oqAdd.Execute;

  RefreshData('T030_ID', odsList['T030_ID']);
end;

end.
