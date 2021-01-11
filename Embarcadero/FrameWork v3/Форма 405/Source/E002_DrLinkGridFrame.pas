unit E002_DrLinkGridFrame;

interface

uses
  fm010_FilteredGridFrame, Db, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, C002_TypeSecFrame, Forms, fm000_Parent,
  fm023_TextEditFrame, Oracle, Menus, OracleData, Classes, ActnList,
  StdCtrls, Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, fm031_FilterFrame;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  fm005_GridFrame,

type
  TE002_DrLinkGrid = class(TfmFilteredGrid)
    IsinFilter: TfmTextFilter;
    SecTypeFilter: TC002_TypeSec;
    odsSecTypes: TOracleDataSet;
    odsListT030_ID: TFloatField;
    odsListISIN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT028_ID: TFloatField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT025_LONG_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListCOUNTRY: TStringField;
    odsListTICKER: TStringField;
    odsListEXCH: TStringField;
    odsListIS_MAIN: TStringField;
  private
    FIsin: string;
    FSecTypes: TStringList;
    procedure SetIsin(const Value: string);
    procedure SetSecTypes(const Value: string);
    function GetIsin: string;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure InitFrame(Sender: TObject); override;
    procedure RefreshAllRecords; override;

    property Isin: string read GetIsin write SetIsin;
    property SecTypes: string write SetSecTypes;
  end;

var
  E002_DrLinkGrid: TE002_DrLinkGrid;

implementation

uses dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

{ TE002_DrLinkGrid }

constructor TE002_DrLinkGrid.Create(AOwner: TComponent);
begin
  inherited;
  FSecTypes := TStringList.Create;
end;

destructor TE002_DrLinkGrid.Destroy;
begin
  FSecTypes.Free;
  inherited;
end;

procedure TE002_DrLinkGrid.InitFrame(Sender: TObject);
begin
  SecTypeFilter.InitFrame(Self);
  SecTypeFilter.lcb.KeyValuesStr := FSecTypes;

  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    SecTypeFilter,
    Self,
    'T027_ID',
    ltNoRefresh
    );

  inherited;
end;

procedure TE002_DrLinkGrid.SetIsin(const Value: string);
begin
  IsinFilter.ed.Text := Value;
  FIsin := Value;
end;

function TE002_DrLinkGrid.GetIsin: string;
begin
  Result := FIsin;
end;

procedure TE002_DrLinkGrid.SetSecTypes(const Value: string);
var
  i: integer;
  vSecTypes: string;
begin
  FSecTypes.Clear;
  if Length(Value) = 0 then Exit;
  vSecTypes := '''';
  for i := 1 to Length(Value) do
    begin
    if Value[i] = ' ' then continue;
    if Value[i] = ',' then
      vSecTypes := vSecTypes + ''','''
    else
      vSecTypes := vSecTypes + Value[i];
    end;
  vSecTypes := vSecTypes + '''';

  odsSecTypes.Close;
  odsSecTypes.SetVariable('SEC_TYPES', vSecTypes);
  odsSecTypes.Open;
  while not odsSecTypes.Eof do
    begin
    FSecTypes.Add(odsSecTypes.FieldByName('T027_ID').AsString);
    odsSecTypes.Next;
    end;
end;

procedure TE002_DrLinkGrid.RefreshAllRecords;
begin
  DataSet.Close;

  // Фильтр по ISIN
  if IsinFilter.cb.Checked then
    odsList.SetVariable('ISIN', 'WHERE ((ISIN LIKE ''%' + IsinFilter.KeyValue + '%'') OR (T026_SEC_REGN LIKE ''%' + IsinFilter.KeyValue + '%''))')
  else
    odsList.SetVariable('ISIN', '');

  SetConditions;

  DataSet.Open;
end;

end.
