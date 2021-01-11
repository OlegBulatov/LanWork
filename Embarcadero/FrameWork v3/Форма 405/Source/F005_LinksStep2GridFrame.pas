unit F005_LinksStep2GridFrame;

interface

uses
  fm010_FilteredGridFrame, Db, Oracle, Menus, OracleData, Classes, ActnList,
  Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  untParams, frm95_EmissionLinkListForm, fm005_GridFrame, Forms,
  fm031_FilterFrame;

type
  IEmissions415 = interface
    function GetT055_ID: Double;
    function GetT028_ID: Double;
    function GetT028_PARENT_ID: Double;
    function IsChecked_T027_ID: boolean;
    function GetT027_ID: TFloatArray;
    function IsCheckedPart: boolean;
    function GetPART_ID: Double;
    function IsChecked_DK_PRIZ: boolean;
    function GetDK_PRIZ: TStrArray;
    function IsChecked_SEKTOR: boolean;
    function GetSEKTOR: TStrArray;
    function IsChecked_VID_SH: boolean;
    function GetVID_SH: TStrArray;
  end;

  TF005_LinksStep2Grid = class(TfmGrid)
    odsListIS_LINKED: TStringField;
    odsListT030_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListISIN: TStringField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT027_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT026_ID_MAIN: TFloatField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListISIN_MAIN: TStringField;
    odsListKOL_CB: TFloatField;
    odsListNOM_SUM: TFloatField;
    odsListNOM_SUM_Y: TFloatField;
    odsListNOM_SUM_N: TFloatField;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    actMakeMain: TAction;
    actLink: TAction;
    actUnlink: TAction;
    ToolButton3: TToolButton;
    oqLink: TOracleQuery;
    oqUnlink: TOracleQuery;
    oqMakeMain: TOracleQuery;
    procedure actLinkUpdate(Sender: TObject);
    procedure actLinkExecute(Sender: TObject);
    procedure actUnlinkUpdate(Sender: TObject);
    procedure actUnlinkExecute(Sender: TObject);
    procedure actMakeMainUpdate(Sender: TObject);
    procedure actMakeMainExecute(Sender: TObject);
  private
    FLink: IEmissions415;
  protected
    function  GetKeyFieldName: string; override;
    procedure SetConditions; override;
    function  ChooseForm: Tfrm95_EmissionLinkList; virtual;
    function  LinkEmission: Boolean;
  public
    property Link: IEmissions415 read FLink write FLink;
  end;

var
  F005_LinksStep2Grid: TF005_LinksStep2Grid;

implementation

{$R *.DFM}

{ TF005_LinksStep2Grid }

function TF005_LinksStep2Grid.GetKeyFieldName: string;
begin
  Result := 'T030_ID';
end;

procedure TF005_LinksStep2Grid.SetConditions;
begin
  inherited;
  // устанавливаем фильтры
  odsList.SetVariable('T055_ID', FLink.GetT055_ID);
  odsList.SetVariable('T028_ID', FLink.GetT028_ID);

  VDataSet.Conditions.ClearFor('T027_ID');
  if FLink.IsChecked_T027_ID then
    VDataSet.Conditions.AddNumInFilter('T027_ID', untParams.TFloatArray(FLink.GetT027_ID));

  VDataSet.Conditions.ClearFor('PART_ID');
  if FLink.IsCheckedPart then
    VDataSet.Conditions.AddFilter01('PART_ID', FLink.GetPART_ID);

  VDataSet.Conditions.ClearFor('DK_PRIZ');
  VDataSet.Conditions.ClearFor('SEKTOR');
  VDataSet.Conditions.ClearFor('VID_SH');

  if (FLink.GetPART_ID = 11) and (FLink.IsChecked_DK_PRIZ = True) then
    begin
    VDataSet.Conditions.AddStrInFilter('DK_PRIZ', untParams.TStrArray(FLink.GetDK_PRIZ));
    end
  else if (FLink.GetPART_ID = 12) then
    begin
    if (FLink.IsChecked_SEKTOR = True) then
      VDataSet.Conditions.AddStrInFilter('SEKTOR', untParams.TStrArray(FLink.GetSEKTOR));
    if (FLink.IsChecked_VID_SH = True) then
      VDataSet.Conditions.AddStrInFilter('VID_SH', untParams.TStrArray(FLink.GetVID_SH));
    end;
end;

procedure TF005_LinksStep2Grid.actLinkUpdate(Sender: TObject);
begin
  actLink.Enabled := not odsList.IsEmpty and (odsListIS_LINKED.AsString = 'Ќет');
end;

procedure TF005_LinksStep2Grid.actLinkExecute(Sender: TObject);
begin
  ChooseForm.T028_ID := FLink.GetT028_PARENT_ID;
  ChooseForm.RegNum := odsListT026_SEC_REGN.AsString;
  ChooseForm.ISIN := odsListISIN.AsString;
  ChooseForm.OnSelect := LinkEmission;
  ChooseForm.RefreshAfterListChange;
  ChooseForm.ShowModal;
end;

function TF005_LinksStep2Grid.LinkEmission: Boolean;
begin
  // переносим запись
  oqLink.SetVariable('T030_ID', odsListT030_ID.AsFloat);
  oqLink.SetVariable('T030_PARENT_ID', ChooseForm.SelectedID);
  oqLink.Execute;

  // где должны встать
  OldKeyFieldValue := odsListT030_ID.AsFloat;
  RefreshDataAfterChange;

  Result := True;
end;

function TF005_LinksStep2Grid.ChooseForm: Tfrm95_EmissionLinkList;
begin
  Result := Tfrm95_EmissionLinkList.instance;
end;

procedure TF005_LinksStep2Grid.actUnlinkUpdate(Sender: TObject);
begin
  actUnlink.Enabled := not odsList.IsEmpty and
                       not odsListT030_ID_MAIN.IsNull and
                       not (odsListT030_ID.AsFloat = odsListT030_ID_MAIN.AsFloat);
end;

procedure TF005_LinksStep2Grid.actUnlinkExecute(Sender: TObject);
begin
  if odsListT030_ID.AsFloat = odsListT030_ID_MAIN.AsFloat then
    begin
    // удал€ем как главную
// ѕока не умеем !!!
//    oqDupl.SetVariable('T012_ID', odsList['T028_ID']);
//    oqDupl.Execute;
    end
  else
    begin
    // удал€ем св€зь
    oqUnlink.SetVariable('T030_ID', odsList['T030_ID']);
    oqUnlink.Execute;
    end;

  OldKeyFieldValue := odsListT030_ID.AsFloat;
  RefreshDataAfterChange;
end;

procedure TF005_LinksStep2Grid.actMakeMainUpdate(Sender: TObject);
begin
  actMakeMain.Enabled := not odsList.IsEmpty and
                         odsListT030_ID_MAIN.IsNull and
                         not (odsListT030_ID.AsFloat = odsListT030_ID_MAIN.AsFloat);
end;

procedure TF005_LinksStep2Grid.actMakeMainExecute(Sender: TObject);
begin
  // переносим запись
  oqMakeMain.SetVariable('T030_ID', odsListT030_ID.AsFloat);
  oqMakeMain.Execute;

  // где должны встать
  OldKeyFieldValue := odsListT030_ID.AsFloat;
  RefreshDataAfterChange;
end;

end.
