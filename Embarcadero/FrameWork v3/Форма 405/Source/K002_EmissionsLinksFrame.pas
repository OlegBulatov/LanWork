unit K002_EmissionsLinksFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  fm010_FilteredGridFrame, StdCtrls, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, K002_EmissionSecTypeFilterFrame,
  K001_RecTypeFilterFrame, fm023_TextEditFrame, K001_IssuerInnFilterFrame;

type
  TK002_EmissionsLinks = class(TfmFilteredGrid)
    SecTypeFilter: TK002_EmissionSecTypeFilter;
    odsListT030_ID: TFloatField;
    odsListT030_PARENT_ID: TFloatField;
    odsListREC_TYPE: TFloatField;
    odsListREC_TYPE_NAME: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT010_ID: TFloatField;
    odsListT010_ISIN: TStringField;
    odsListT028_ID: TFloatField;
    odsListT028_PARENT_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT025_ID: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListT028_COUNTRY_NAME: TStringField;
    odsListT027_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT026_ID_MAIN: TFloatField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListT010_ID_MAIN: TFloatField;
    odsListT010_ISIN_MAIN: TStringField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_PARENT_ID_MAIN: TFloatField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT025_ID_MAIN: TFloatField;
    odsListT025_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT028_COUNTRY_ID_MAIN: TStringField;
    odsListT028_COUNTRY_NAME_MAIN: TStringField;
    RecTypeFilter: TK001_RecTypeFilter;
    SecRegnFilter: TK001_IssuerInnFilter;
    IsinFilter: TK001_IssuerInnFilter;
    InnFilter: TK001_IssuerInnFilter;
    Bevel1: TBevel;
    Label1: TLabel;
    SecTypeMainFilter: TK002_EmissionSecTypeFilter;
    SecRegnMainFilter: TK001_IssuerInnFilter;
    IsinMainFilter: TK001_IssuerInnFilter;
    InnMainFilter: TK001_IssuerInnFilter;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  K002_EmissionsLinks: TK002_EmissionsLinks;

implementation

uses dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

{ TK002_EmissionsLinks }

constructor TK002_EmissionsLinks.Create(AOwner: TComponent);
begin
  inherited;
  RecTypeFilter.InitFrame(Self);
  SecTypeFilter.InitFrame(Self);
  SecTypeFilter.lcb.SetKeyValuesAll;
  SecRegnFilter.cb.Checked := False;
  IsinFilter.cb.Checked := False;
  InnFilter.cb.Checked := False;
  SecTypeMainFilter.InitFrame(Self);
  SecRegnMainFilter.cb.Checked := False;
  IsinMainFilter.cb.Checked := False;
  InnMainFilter.cb.Checked := False;

  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    RecTypeFilter,
    Self,
    'REC_TYPE',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    SecTypeFilter,
    Self,
    'T027_ID',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkTextCondition(
    ctStrLike,
    SecRegnFilter,
    Self,
    'T026_SEC_REGN',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkTextCondition(
    ctStrLike,
    IsinFilter,
    Self,
    'T010_ISIN',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkTextCondition(
    ctStrLike,
    InnFilter,
    Self,
    'T028_INN',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    SecTypeMainFilter,
    Self,
    'T027_ID_MAIN',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkTextCondition(
    ctStrLike,
    SecRegnMainFilter,
    Self,
    'T026_SEC_REGN_MAIN',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkTextCondition(
    ctStrLike,
    IsinMainFilter,
    Self,
    'T010_ISIN_MAIN',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkTextCondition(
    ctStrLike,
    InnMainFilter,
    Self,
    'T028_INN_MAIN',
    ltNoRefresh
    );

end;

procedure TK002_EmissionsLinks.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
    begin
    if odsListREC_TYPE.AsFloat = 1 then
      xxxDBGrid.Canvas.Brush.Color := RGB($CA,$FF,$CA);

    xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
end;

end.
