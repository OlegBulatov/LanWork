unit B004_EmissionsFrame;

interface

uses
  fm005_GridFrame, Db, Oracle, Menus, OracleData, Classes, ActnList,
  Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  untParams, frm95_EmissionLinkListForm, Forms, fm031_FilterFrame;

type
  IEmissions = interface
    function GetT055_ID: Double;
    function GetT028_ID: Double;
    function GetT028_ID_MAIN: Double;
    function IsChecked_T027_ID: boolean;
    function GetT027_ID: TFloatArray;
    function GetPART_ID: Double;
    function IsChecked_DK_PRIZ: boolean;
    function GetDK_PRIZ: TStrArray;
    function IsChecked_SEKTOR: boolean;
    function GetSEKTOR: TStrArray;
    function IsChecked_VID_SH: boolean;
    function GetVID_SH: TStrArray;
  end;

  TB004_Emissions = class(TfmGrid)
    odsListT055_ID: TFloatField;
    odsListT028_MAIN_ID: TFloatField;
    odsListT030_ID: TFloatField;
    odsListT030_ID_IS_MAIN: TStringField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListKOL_CB: TFloatField;
    odsListNOM_SUM: TFloatField;
    odsListNOM_SUM_Y: TFloatField;
    odsListNOM_SUM_N: TFloatField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT027_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT026_ID_MAIN: TFloatField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    ToolButton1: TToolButton;
    actLink: TAction;
    oqLinkEmission: TOracleQuery;
    odsListISIN: TStringField;
    odsListISIN_MAIN: TStringField;
    ToolButton2: TToolButton;
    actMakeMain: TAction;
    ToolButton3: TToolButton;
    actUnlink: TAction;
    oqUnlinkEmission: TOracleQuery;
    oqMakeEmissionMain: TOracleQuery;
    procedure actLinkUpdate(Sender: TObject);
    procedure actLinkExecute(Sender: TObject);
    procedure actMakeMainUpdate(Sender: TObject);
    procedure actMakeMainExecute(Sender: TObject);
    procedure actUnlinkUpdate(Sender: TObject);
    procedure actUnlinkExecute(Sender: TObject);
  private
    FLink: IEmissions;
  protected
    function GetKeyFieldName: string; override;
    procedure SetConditions; override;
    function ChooseForm: Tfrm95_EmissionLinkList; virtual;
    function LinkEmission: Boolean;
  public
    property Link: IEmissions read FLink write FLink;
  end;

var
  B004_Emissions: TB004_Emissions;

implementation

{$R *.DFM}

{ TB004_Emissions }

procedure TB004_Emissions.SetConditions;
begin
  inherited;

  // устанавливаем фильтры
  odsList.SetVariable('T055_ID', FLink.GetT055_ID);
  odsList.SetVariable('T028_ID', FLink.GetT028_ID);

  VDataSet.Conditions.ClearFor('T027_ID');
  if FLink.IsChecked_T027_ID then
    VDataSet.Conditions.AddNumInFilter('T027_ID', untParams.TFloatArray(FLink.GetT027_ID));

  VDataSet.Conditions.ClearFor('PART_ID');
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

procedure TB004_Emissions.actLinkUpdate(Sender: TObject);
begin
  inherited;
//
end;

procedure TB004_Emissions.actLinkExecute(Sender: TObject);
begin
//  ChooseForm.T028_ID := FLink.GetT028_ID;
  ChooseForm.T028_ID := FLink.GetT028_ID_MAIN;
  ChooseForm.RegNum := odsListT026_SEC_REGN.AsString;
  ChooseForm.ISIN := odsListISIN.AsString;
  ChooseForm.OnSelect := LinkEmission;
  ChooseForm.RefreshAfterListChange;
  ChooseForm.ShowModal;
end;

function TB004_Emissions.ChooseForm: Tfrm95_EmissionLinkList;
begin
  Result := Tfrm95_EmissionLinkList.instance;
end;

function TB004_Emissions.LinkEmission: Boolean;
begin
  // переносим запись
  oqLinkEmission.SetVariable('i_id', odsListT030_ID.AsFloat);
  oqLinkEmission.SetVariable('i_parent_id', ChooseForm.SelectedID);
  oqLinkEmission.Execute;

  // где должны встать
  OldKeyFieldValue := ChooseForm.SelectedID;
  RefreshDataAfterChange;

  Result := True;
end;

function TB004_Emissions.GetKeyFieldName: string;
begin
  Result := 'T030_ID_MAIN';
end;

procedure TB004_Emissions.actMakeMainUpdate(Sender: TObject);
begin
  inherited;
//
end;

procedure TB004_Emissions.actMakeMainExecute(Sender: TObject);
begin
  oqMakeEmissionMain.SetVariable('T030_ID', odsListT030_ID.AsFloat);
  oqMakeEmissionMain.Execute;

  // где должны встать
//  OldKeyFieldValue := ChooseForm.SelectedID;
  RefreshDataAfterChange;
end;

procedure TB004_Emissions.actUnlinkUpdate(Sender: TObject);
begin
  actUnlink.Enabled := not odsList.IsEmpty
                       and not odsListT030_ID_MAIN.IsNull;

end;

procedure TB004_Emissions.actUnlinkExecute(Sender: TObject);
begin
  oqUnlinkEmission.SetVariable('i_T030_ID', odsListT030_ID.AsFloat);
  oqUnlinkEmission.Execute;

  // где должны встать
//  OldKeyFieldValue := ChooseForm.SelectedID;
  RefreshDataAfterChange;
end;

end.
