unit F005_LinksStep1GridFrame;

interface

uses
  fm010_FilteredGridFrame, ComCtrls, ActnList, Db, Oracle, C002_TypeSecFrame,
  F005_PartsFilterFrame, B004_PrizFilterFrame, B004_SectorFilterFrame,
  B004_AccountFilterFrame, F005_LinksPeriodFilterFrame, untParams,
  frm94_EmitentLinkListForm, Forms, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, Menus, OracleData, Classes,
  StdCtrls, Controls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  fm031_FilterFrame;

type
  TF005_LinksStep1Grid = class(TfmFilteredGrid)
    odsListT055_ID: TFloatField;
    odsListISSUER_LINKED: TStringField;
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListKOL_CB: TFloatField;
    odsListSUM_CB_USD: TFloatField;
    odsListNOM_SUM_LINKED: TFloatField;
    odsListNOM_SUM_NOT_LINKED: TFloatField;
    SecTypeFilter: TC002_TypeSec;
    PartFilter: TF005_PartsFilter;
    PrizFilter: TB004_PrizFilter;
    SectorFilter: TB004_SectorFilter;
    AccountFilter: TB004_AccountFilter;
    odsListT055_LONG_NAME: TStringField;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    actMakeMain: TAction;
    actLink: TAction;
    actUnlink: TAction;
    oqLink: TOracleQuery;
    PeriodFilter: TF005_LinksPeriodFilter;
    oqUnlink: TOracleQuery;
    oqHasMain: TOracleQuery;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    actGoToData: TAction;
    odsListT028_COUNTRY_ID: TStringField;
    odsListT028_COUNTRY_ID_MAIN: TStringField;
    procedure PartFilterlcbCloseUp(Sender: TObject);
    procedure actLinkUpdate(Sender: TObject);
    procedure actLinkExecute(Sender: TObject);
    procedure actUnlinkUpdate(Sender: TObject);
    procedure actUnlinkExecute(Sender: TObject);
    procedure actMakeMainUpdate(Sender: TObject);
    procedure actMakeMainExecute(Sender: TObject);
    procedure odsListAfterScroll(DataSet: TDataSet);
    procedure actRefreshExecute(Sender: TObject);
    procedure actGoToDataUpdate(Sender: TObject);
    procedure actGoToDataExecute(Sender: TObject);
  private
    function  GetDK_PRIZ: TStrArray;
    function  GetPART_ID: Double;
    function  GetSEKTOR: TStrArray;
    function  GetT027_ID: TFloatArray;
    function  GetT028_ID: Double;
    function  GetT055_ID: Double;
    function  GetVID_SH: TStrArray;
    function  GetT028_PARENT_ID: Double;
  protected
    function GetKeyFieldName: string; override;
    procedure SetConditions; override;
    function ChooseForm: Tfrm94_EmitentLinkList;
    function LinkEmitent: Boolean;
  public
    procedure InitFrame(Sender: TObject);  override;
    procedure FindIssuer_InPer(const AT055_ID, AT027_ID, APART_ID, AT028_ID: Double);
    //
    property T055_ID: Double read GetT055_ID;
    property T028_ID: Double read GetT028_ID;
    property T028_PARENT_ID: Double read GetT028_PARENT_ID;
    property T027_ID: TFloatArray read GetT027_ID;
    property PART_ID: Double read GetPART_ID;
    property DK_PRIZ: TStrArray read GetDK_PRIZ;
    property SEKTOR: TStrArray read GetSEKTOR;
    property VID_SH: TStrArray read GetVID_SH;
  end;

var
  F005_LinksStep1Grid: TF005_LinksStep1Grid;

implementation

uses
  dm000_ObjectsFactory, unt007_LinksList, frm01_MainForm;
//  , dm006_PictersData, dm005_MainData;

{$R *.DFM}

{ TF005_LinksStep1Grid }

procedure TF005_LinksStep1Grid.InitFrame(Sender: TObject);
begin
  PeriodFilter.InitFrame(Self);
  SecTypeFilter.InitFrame(Self);
  PartFilter.InitFrame(Self);
  PrizFilter.InitFrame(Self);
  SectorFilter.InitFrame(Self);
  AccountFilter.InitFrame(Self);

  PrizFilter.SetKeyValuesStr(['И']);
  SectorFilter.SetKeyValuesStr(['S2']);
  AccountFilter.SetKeyValuesStr(['OWNER']);

  PartFilterlcbCloseUp(PartFilter);
  
  // фильтр по типу ценных бумаг
  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    SecTypeFilter,
    Self,
    'T027_ID',
    ltNoRefresh
    );
  // фильтр по разделу
  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumEqual,
    PartFilter,
    Self,
    'PART_ID',
    ltNoRefresh
    );
  // фильтр по признаку для 1.1
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    PrizFilter,
    Self,
    'DK_PRIZ',
    ltNoRefresh
    );
  // фильтр по сектору для 1.2
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    SectorFilter,
    Self,
    'SEKTOR',
    ltNoRefresh
    );
  // фильтр по виду счета для 1.2
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    AccountFilter,
    Self,
    'VID_SH',
    ltNoRefresh
    );

  inherited;
end;

function TF005_LinksStep1Grid.GetKeyFieldName: string;
begin
  Result := 'T028_ID';
end;

procedure TF005_LinksStep1Grid.PartFilterlcbCloseUp(Sender: TObject);
begin
  PartFilter.lcbCloseUp(Sender);

  if PartFilter.KeyValueFloat = 11 then
    begin
    PrizFilter.Enabled := True;
    SectorFilter.Enabled := False;
    AccountFilter.Enabled := False;
    end
  else if PartFilter.KeyValueFloat = 12 then
    begin
    PrizFilter.Enabled := False;
    SectorFilter.Enabled := True;
    AccountFilter.Enabled := True;
    end
  else
    begin
    PrizFilter.Enabled := False;
    SectorFilter.Enabled := False;
    AccountFilter.Enabled := False;
    end;
end;

procedure TF005_LinksStep1Grid.SetConditions;
begin
  inherited;
  // устанавливаем фильтры
  odsList.SetVariable('T055_ID', PeriodFilter.KeyValue);
end;

procedure TF005_LinksStep1Grid.actLinkUpdate(Sender: TObject);
begin
  actLink.Enabled := not odsList.IsEmpty and (odsListISSUER_LINKED.AsString = 'Нет');
end;

procedure TF005_LinksStep1Grid.actLinkExecute(Sender: TObject);
begin
  ChooseForm.ClearFilters;
  ChooseForm.INN := odsListT028_INN.AsString;
  ChooseForm.OnSelect := LinkEmitent;
  ChooseForm.RefreshAfterListChange;
  ChooseForm.ShowModal;
end;

function TF005_LinksStep1Grid.ChooseForm: Tfrm94_EmitentLinkList;
begin
  Result := Tfrm94_EmitentLinkList.instance;
end;

function TF005_LinksStep1Grid.LinkEmitent: Boolean;
begin
  // переносим запись
  oqLink.SetVariable('i_id', odsListT028_ID.AsFloat);
  oqLink.SetVariable('i_parent_id', ChooseForm.SelectedID);
  oqLink.Execute;

  // где должны встать
//  OldKeyFieldValue := ChooseForm.SelectedID;
  OldKeyFieldValue := odsListT028_ID.AsFloat;
  RefreshDataAfterChange;

  Result := True;
end;

function TF005_LinksStep1Grid.GetPART_ID: Double;
begin
  Result := PartFilter.KeyValueFloat;
end;

function TF005_LinksStep1Grid.GetDK_PRIZ: TStrArray;
begin
  Result := PrizFilter.KeyValuesStr;
end;

function TF005_LinksStep1Grid.GetSEKTOR: TStrArray;
begin
  Result := SectorFilter.KeyValuesStr;
end;

function TF005_LinksStep1Grid.GetT027_ID: TFloatArray;
begin
  Result := untParams.TFloatArray(SecTypeFilter.KeyValues);
end;

function TF005_LinksStep1Grid.GetT028_ID: Double;
begin
  Result := odsListT028_ID.AsFloat;
end;

function TF005_LinksStep1Grid.GetT055_ID: Double;
begin
  Result := PeriodFilter.KeyValueFloat;
end;

function TF005_LinksStep1Grid.GetVID_SH: TStrArray;
begin
  Result := AccountFilter.KeyValuesStr;
end;

function TF005_LinksStep1Grid.GetT028_PARENT_ID: Double;
begin
  Result := odsListT028_ID_MAIN.AsFloat;
end;

procedure TF005_LinksStep1Grid.actUnlinkUpdate(Sender: TObject);
begin
  actUnlink.Enabled := not odsList.IsEmpty and
                       not odsListT028_ID_MAIN.IsNull and
                       not (odsListT028_ID.AsFloat = odsListT028_ID_MAIN.AsFloat);
end;

procedure TF005_LinksStep1Grid.actUnlinkExecute(Sender: TObject);
begin
  // переносим запись
  oqUnLink.SetVariable('T028_ID', odsListT028_ID.AsFloat);
  oqUnLink.Execute;

  // где должны встать
  OldKeyFieldValue := odsListT028_ID.AsFloat;
  RefreshDataAfterChange;
end;

procedure TF005_LinksStep1Grid.actMakeMainUpdate(Sender: TObject);
begin
//  actMakeMain.Enabled := not odsList.IsEmpty and odsListT028_ID_MAIN.IsNull and (FHasMain = 0);
  actMakeMain.Enabled := False;
end;

procedure TF005_LinksStep1Grid.actMakeMainExecute(Sender: TObject);
begin
  oqAdd.SetVariable('T028_ID', odsList['T028_ID']);
  oqAdd.Execute;
//  RefreshData('T028_ID', odsList['T028_ID']);
  RefreshOneRecord;
end;

procedure TF005_LinksStep1Grid.odsListAfterScroll(DataSet: TDataSet);
begin
  inherited;

//  oqHasMain.SetVariable('T028_INN', odsListT028_INN.AsString);
//  oqHasMain.Execute;
//  FHasMain := oqHasMain.GetVariable('RESULT');
end;

procedure TF005_LinksStep1Grid.FindIssuer_InPer(const AT055_ID, AT027_ID,
  APART_ID, AT028_ID: Double);
begin
  InitFrame(Self);

  // снимаем все фильтры
  VDataSet.Conditions.Clear;
  VDataSet.Indexes.Clear;

  // фильтр по периоду
  PeriodFilter.KeyValue := AT055_ID;

  // фильтр по типу ц.б.
  SecTypeFilter.lcb.SetDefaults([AT027_ID]);

  // фильтр по разделу
  PartFilter.KeyValue := APART_ID;
  PartFilterlcbCloseUp(PartFilter.lcb);

  PrizFilter.cb.Checked := False;
  PrizFilter.lcb.Enabled := False;

  SectorFilter.cb.Checked := False;
  SectorFilter.lcb.Enabled := False;

  AccountFilter.cb.Checked := False;
  AccountFilter.lcb.Enabled :=  False;

  // Устанавливаем фильтр по эмитенту
  VDataSet.Conditions.AddFilter01('T028_ID', AT028_ID);

  RefreshAllRecords;
end;

procedure TF005_LinksStep1Grid.actRefreshExecute(Sender: TObject);
begin
  VDataSet.Conditions.ClearFor('T028_ID');
  inherited;
end;

procedure TF005_LinksStep1Grid.actGoToDataUpdate(Sender: TObject);
begin
  actGoToData.Enabled := not odsList.IsEmpty
                         and (PartFilter.cb.Checked = True);
end;

procedure TF005_LinksStep1Grid.actGoToDataExecute(Sender: TObject);
var
  vT027_IDs: TFloatArray;
  vPrizs: TStrings;
  vSectors: TStrings;
  vAccounts: TStrings;
begin
   if SecTypeFilter.cb.Checked then
     vT027_IDs := untParams.TFloatArray(SecTypeFilter.lcb.KeyValuesFloat)
   else
     vT027_IDs := nil;

   if PrizFilter.Enabled and PrizFilter.cb.Checked then
     vPrizs := PrizFilter.lcb.KeyValuesStr
   else
     vPrizs := nil;

   if SectorFilter.Enabled and SectorFilter.cb.Checked then
     vSectors := SectorFilter.lcb.KeyValuesStr
   else
     vSectors := nil;

   if AccountFilter.Enabled and AccountFilter.cb.Checked then
     vAccounts := AccountFilter.lcb.KeyValuesStr
   else
     vAccounts := nil;

  // Переходим к данным
  frm01_Main.Find_415_Data(
    odsListT055_ID.AsFloat,  // на дату c
    odsListT055_ID.AsFloat,  // на дату по
    vT027_IDs,               // тип ц.б.
    PartFilter.lcb.KeyValue, // раздел
    vPrizs,                  // признак
    vSectors,                // сектор
    vAccounts,               // вид счета
    odsListT028_ID.AsFloat  // эмитент
    );
end;

end.
