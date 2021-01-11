unit K001_IssuersLinksFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, K001_IssuerTypeFilterFrame, K001_RecTypeFilterFrame,
  fm023_TextEditFrame, K001_IssuerInnFilterFrame;

type
  TK001_IssuersLinks = class(TfmFilteredGrid)
    odsListT028_ID: TFloatField;
    odsListT028_PARENT_ID: TFloatField;
    odsListREC_TYPE: TFloatField;
    odsListREC_TYPE_NAME: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT025_ID: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListT028_COUNTRY_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_PARENT_ID_MAIN: TFloatField;
    odsListREC_TYPE_MAIN: TFloatField;
    odsListREC_TYPE_NAME_MAIN: TStringField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT025_ID_MAIN: TFloatField;
    odsListT025_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT028_COUNTRY_ID_MAIN: TStringField;
    odsListT028_COUNTRY_NAME_MAIN: TStringField;
    odsListT028_CODE_MAIN: TStringField;
    IssuerTypeFilter: TK001_IssuerTypeFilter;
    RecTypeFilter: TK001_RecTypeFilter;
    IssuerInnFilter: TK001_IssuerInnFilter;
    IssuerNameFilter: TK001_IssuerInnFilter;
    Bevel1: TBevel;
    Label1: TLabel;
    MainIssuerTypeFilter: TK001_IssuerTypeFilter;
    MainIssuerInnFilter: TK001_IssuerInnFilter;
    MainIssuerNameFilter: TK001_IssuerInnFilter;
    ToolButton1: TToolButton;
    actLink: TAction;
    ToolButton2: TToolButton;
    procedure actLinkUpdate(Sender: TObject);
    procedure actLinkExecute(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  K001_IssuersLinks: TK001_IssuersLinks;

implementation

uses dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

{ TK001_IssuersLinks }

constructor TK001_IssuersLinks.Create(AOwner: TComponent);
begin
  inherited;
  RecTypeFilter.InitFrame(Self);
//  RecTypeFilter.lcb.SetKeyValuesAll;
  IssuerTypeFilter.InitFrame(Self);
  IssuerInnFilter.cb.Checked := False;
  IssuerNameFilter.cb.Checked := False;
  MainIssuerTypeFilter.InitFrame(Self);
  MainIssuerInnFilter.cb.Checked := False;
  MainIssuerNameFilter.cb.Checked := False;

  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    RecTypeFilter,
    Self,
    'REC_TYPE',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    IssuerTypeFilter,
    Self,
    'T025_ID',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkTextCondition(
    ctStrLike,
    IssuerInnFilter,
    Self,
    'T028_INN',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkTextCondition(
    ctStrLike,
    IssuerNameFilter,
    Self,
    'T028_SHOT_NAME',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumIn,
    MainIssuerTypeFilter,
    Self,
    'T025_ID_MAIN',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkTextCondition(
    ctStrLike,
    MainIssuerInnFilter,
    Self,
    'T028_INN_MAIN',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkTextCondition(
    ctStrLike,
    MainIssuerNameFilter,
    Self,
    'T028_SHOT_NAME_MAIN',
    ltNoRefresh
    );

end;

procedure TK001_IssuersLinks.actLinkUpdate(Sender: TObject);
begin
  actLink.Enabled := not odsList.IsEmpty and
    (odsListREC_TYPE.AsInteger = 0);
end;

procedure TK001_IssuersLinks.actLinkExecute(Sender: TObject);
begin
//
end;

procedure TK001_IssuersLinks.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
    begin
    if odsListREC_TYPE.AsFloat = 1 then
      xxxDBGrid.Canvas.Brush.Color := RGB($FF,$CA,$CA);

    xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
end;

end.
