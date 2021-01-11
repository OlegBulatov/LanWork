unit B004_IssuersFrame;

interface

uses
  fm005_GridFrame, StdCtrls, ExtCtrls, ComCtrls, ActnList, Db, Oracle,
  B004_PeriodFilterFrame, C002_TypeSecFrame, B004_PartFilterFrame,
  B004_PrizFilterFrame, B004_SectorFilterFrame, B004_AccountFilterFrame,
  untParams, frm94_EmitentLinkListForm, Forms, fm000_Parent,
  fm008_DBObjectFrame, fm021_CheckBoxFrame, fm020_LookUpFrame, Menus,
  OracleData, Classes, Controls, ToolWin, Grids, DBGrids, xxxDBGrid,
  fm031_FilterFrame;

type
  TB004_Issuers = class(TfmGrid)
    odsListT055_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT028_ID_IS_MAIN: TStringField;
    odsListT036_INCLUDE: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListKOL_CB: TFloatField;
    odsListNOM_SUM: TFloatField;
    odsListNOM_SUM_Y: TFloatField;
    odsListNOM_SUM_N: TFloatField;
    paFilter: TPanel;
    PeriodFilter: TB004_PeriodFilter;
    SecTypeFilter: TC002_TypeSec;
    Button1: TButton;
    tbLink: TToolButton;
    actLink: TAction;
    oqLinkEmitent: TOracleQuery;
    PartFilter: TB004_PartFilter;
    PrizFilter: TB004_PrizFilter;
    SectorFilter: TB004_SectorFilter;
    AccountFilter: TB004_AccountFilter;
    odsListT055_LONG_NAME: TStringField;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    actGoToData: TAction;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT028_COUNTRY_ID_MAIN: TStringField;
    ToolButton3: TToolButton;
    actUnlink: TAction;
    oqUnlinkIssuer: TOracleQuery;
    procedure actLinkUpdate(Sender: TObject);
    procedure actLinkExecute(Sender: TObject);
    procedure PartFilterlcbCloseUp(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actGoToDataUpdate(Sender: TObject);
    procedure actGoToDataExecute(Sender: TObject);
    procedure actUnlinkExecute(Sender: TObject);
    procedure actUnlinkUpdate(Sender: TObject);
  private
    function GetT055_ID: Double;
    function GetT028_ID: Double;
    function GetT028_ID_MAIN: Double;
    function GetT027_ID: TFloatArray;
    function GetPART_ID: Double;
    function GetDK_PRIZ: TStrArray;
    function GetSEKTOR: TStrArray;
    function GetVID_SH: TStrArray;
  protected
    function GetKeyFieldName: string; override;
    procedure SetConditions; override;
    function LinkEmitent: Boolean;
    function ChooseForm: Tfrm94_EmitentLinkList; virtual;
  public
    procedure InitFrame(Sender: TObject);  override;
    procedure FindIssuer_InPer(AT055_ID, AT027_ID, APART_ID, AT028_ID: Double);    
    //
    property T055_ID: Double read GetT055_ID;
    property T028_ID: Double read GetT028_ID;
    property T028_ID_MAIN: Double read GetT028_ID_MAIN;
    property T027_ID: TFloatArray read GetT027_ID;
    property PART_ID: Double read GetPART_ID;
    property DK_PRIZ: TStrArray read GetDK_PRIZ;
    property SEKTOR: TStrArray read GetSEKTOR;
    property VID_SH: TStrArray read GetVID_SH;
  end;

var
  B004_Issuers: TB004_Issuers;

implementation

uses
  dm000_ObjectsFactory, unt007_LinksList, SysUtils, frm01_MainForm;

{$R *.DFM}

{ TB004_Issuers }

procedure TB004_Issuers.InitFrame(Sender: TObject);
begin
  // инициализируем фильтры
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

procedure TB004_Issuers.SetConditions;
begin
  inherited;
  // устанавливаем фильтры
  odsList.SetVariable('T055_ID', PeriodFilter.KeyValue);
end;

procedure TB004_Issuers.actLinkUpdate(Sender: TObject);
begin
  actLink.Enabled := odsListT028_ID_IS_MAIN.AsString = 'Нет';
end;

procedure TB004_Issuers.actLinkExecute(Sender: TObject);
begin
  ChooseForm.ClearFilters;
  ChooseForm.INN := odsListT028_INN.AsString;
  ChooseForm.OnSelect := LinkEmitent;
  ChooseForm.RefreshAfterListChange;
  ChooseForm.ShowModal;
end;

function TB004_Issuers.ChooseForm: Tfrm94_EmitentLinkList;
begin
  Result := Tfrm94_EmitentLinkList.instance;
end;

function TB004_Issuers.LinkEmitent: Boolean;
begin
  // переносим запись
  oqLinkEmitent.SetVariable('i_id', odsListT028_ID.AsFloat);
  oqLinkEmitent.SetVariable('i_parent_id', ChooseForm.SelectedID);
  oqLinkEmitent.Execute;

  // где должны встать
  OldKeyFieldValue := ChooseForm.SelectedID;
  RefreshDataAfterChange;

  Result := True;
end;

function TB004_Issuers.GetKeyFieldName: string;
begin
  Result := 'T028_ID';
end;

function TB004_Issuers.GetT027_ID: TFloatArray;
begin
  Result := SecTypeFilter.KeyValues;
end;

function TB004_Issuers.GetT028_ID: Double;
begin
  Result := odsListT028_ID.AsFloat;
end;

function TB004_Issuers.GetT028_ID_MAIN: Double;
begin
  Result := odsListT028_ID_MAIN.AsFloat;
end;

function TB004_Issuers.GetT055_ID: Double;
begin
  Result := PeriodFilter.KeyValueFloat;
end;

function TB004_Issuers.GetPART_ID: Double;
begin
  Result := PartFilter.KeyValueFloat;
end;

function TB004_Issuers.GetDK_PRIZ: TStrArray;
begin
  Result := PrizFilter.KeyValuesStr;
end;

function TB004_Issuers.GetSEKTOR: TStrArray;
begin
  Result := SectorFilter.KeyValuesStr;
end;

function TB004_Issuers.GetVID_SH: TStrArray;
begin
  Result := AccountFilter.KeyValuesStr;
end;

procedure TB004_Issuers.PartFilterlcbCloseUp(Sender: TObject);
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
  else if PartFilter.KeyValueFloat = 23 then
    begin
    PrizFilter.Enabled := False;
    SectorFilter.Enabled := False;
    AccountFilter.Enabled := False;
    end
  else
    begin
    PrizFilter.Enabled := False;
    SectorFilter.Enabled := False;
    AccountFilter.Enabled := False;
    end;
end;

procedure TB004_Issuers.FindIssuer_InPer(AT055_ID, AT027_ID, APART_ID,
  AT028_ID: Double);
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

  SectorFilter.cb.Checked := False;
  SectorFilter.lcb.Enabled := False;

  AccountFilter.cb.Checked := False;
  AccountFilter.lcb.Enabled :=  False;

  // Устанавливаем фильтр по эмитенту
  VDataSet.Conditions.AddFilter01('T028_ID', AT028_ID);

  RefreshAllRecords;
end;

procedure TB004_Issuers.actRefreshExecute(Sender: TObject);
begin
  VDataSet.Conditions.ClearFor('T028_ID');
  inherited;
end;

procedure TB004_Issuers.actGoToDataUpdate(Sender: TObject);
begin
  actGoToData.Enabled := not odsList.IsEmpty
                         and (PartFilter.cb.Checked = True);
end;

procedure TB004_Issuers.actGoToDataExecute(Sender: TObject);
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
  frm01_Main.Find_711_Data(
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

procedure TB004_Issuers.actUnlinkUpdate(Sender: TObject);
begin
  actUnlink.Enabled := not odsList.IsEmpty and
                       not odsListT028_ID_MAIN.IsNull and
                       not (odsListT028_ID.AsFloat = odsListT028_ID_MAIN.AsFloat);
end;

procedure TB004_Issuers.actUnlinkExecute(Sender: TObject);
begin
  // переносим запись
  oqUnLinkIssuer.SetVariable('T028_ID', odsListT028_ID.AsFloat);
  oqUnLinkIssuer.Execute;

  // где должны встать
  OldKeyFieldValue := odsListT028_ID.AsFloat;
  RefreshDataAfterChange;
end;

end.
