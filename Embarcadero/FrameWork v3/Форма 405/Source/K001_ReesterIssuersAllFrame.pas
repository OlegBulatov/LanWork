unit K001_ReesterIssuersAllFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList, ComCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid, StdCtrls, fm000_Parent,
  fm008_DBObjectFrame, fm021_CheckBoxFrame, fm020_LookUpFrame,
  K001_IssuerTypeFilterFrame, fm023_TextEditFrame,
  K001_IssuerInnFilterFrame, fm031_FilterFrame, K001_RecTypeFilterFrame;

type
  TK001_ReesterIssuersAll = class(TfmGrid)
    PanelFilters: TPanel;
    GroupBox1: TGroupBox;
    IssuerTypeFilter: TK001_IssuerTypeFilter;
    btnRefresh: TButton;
    IssuerInnFilter: TK001_IssuerInnFilter;
    IssuerNameFilter: TK001_IssuerInnFilter;
    odsListT028_IS_MAIN: TIntegerField;
    odsListT028_ID: TFloatField;
    odsListT028_PARENT_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT025_ID: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListT028_COUNTRY_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListREC_TYPE: TFloatField;
    RecTypeFilter: TK001_RecTypeFilter;
    tlbEdit: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    actEditIssuer: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    actLinkIssuer: TAction;
    actUnlinkIssuer: TAction;
    actMakeIssuerMain: TAction;
    oqLink: TOracleQuery;
    oqUnlink: TOracleQuery;
    oqMakeMain: TOracleQuery;
    odsListT036_ISBANK: TStringField;
    odsListT036_REGN: TStringField;
    odsListT036_OGRN: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actRefreshExecute(Sender: TObject);
    procedure actEditIssuerUpdate(Sender: TObject);
    procedure actEditIssuerExecute(Sender: TObject);
    procedure actMakeIssuerMainUpdate(Sender: TObject);
    procedure actMakeIssuerMainExecute(Sender: TObject);
  private
    FCanEdit: boolean;
    procedure ClearFilters;
    procedure SetCanEdit(const Value: boolean);
  protected
    function GetKeyFieldName: string; override;
  public
    procedure InitFrame(Sender: TObject);  override;
    //
    procedure ShowLinked(AT028_PARENT_ID: Double);
    procedure ShowIssuers(AT028_IDs: String);

    property CanEdit: boolean read FCanEdit write SetCanEdit;
  end;

var
  K001_ReesterIssuersAll: TK001_ReesterIssuersAll;

implementation

uses dm000_ObjectsFactory, unt007_LinksList,
  K001_IssuerEditDlg, dm005_MainData;

{$R *.DFM}

procedure TK001_ReesterIssuersAll.InitFrame(Sender: TObject);
begin
  CanEdit := False;

  RecTypeFilter.InitFrame(Self);
  RecTypeFilter.lcb.SetKeyValuesAll;
  IssuerTypeFilter.InitFrame(Sender);
  IssuerInnFilter.cb.Checked := False;
  IssuerNameFilter.cb.Checked := False;

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

//  tlbSelect.Visible := (Pos('TEST609', dmMain.GetUser) = 1);
//  tlbEdit.Visible := (Pos('TEST609', dmMain.GetUser) = 1);

  inherited;
end;

procedure TK001_ReesterIssuersAll.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not xxxDBGrid.DataSource.DataSet.IsEmpty then
    begin
    if not xxxDBGrid.SelectedRows.CurrentRowSelected then
      begin
      if odsListREC_TYPE.AsFloat = 1 then
        begin
        xxxDBGrid.Canvas.Brush.Color := RGB($FF,$CF,$C0); // Главные
        if gdSelected in State then
          xxxDBGrid.Canvas.Brush.Color := clBlue;
        end
      else if odsListREC_TYPE.AsFloat = 2 then
        begin
        xxxDBGrid.Canvas.Brush.Color := RGB($C0,$FF,$CF); // Связанные
        if gdSelected in State then
          xxxDBGrid.Canvas.Brush.Color := clBlue;
        end;
      end
    else
      begin
      xxxDbGrid.Canvas.Font.Color := clBlue;
      if odsListREC_TYPE.AsFloat = 1 then
        begin
        xxxDBGrid.Canvas.Brush.Color := RGB($FF,$CF,$C0); // Главные
        if gdSelected in State then
          begin
          xxxDBGrid.Canvas.Brush.Color := clBlue;
          xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
          end;
        end
      else if odsListREC_TYPE.AsFloat = 2 then
        begin
        xxxDBGrid.Canvas.Brush.Color := RGB($C0,$FF,$CF); // Связанные
        if gdSelected in State then
          begin
          xxxDBGrid.Canvas.Brush.Color := clBlue;
          xxxDBGrid.Canvas.Font.Color := xxxDBGrid.Color;
          end;
        end;
      end;

    xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
end;

procedure TK001_ReesterIssuersAll.ClearFilters;
begin
  RecTypeFilter.cb.Checked := False;
  IssuerTypeFilter.cb.Checked := False;
  IssuerInnFilter.cb.Checked := False;
  IssuerNameFilter.cb.Checked := False;

  odsList.SetVariable('T028_PARENT_ID', ' ');
  odsList.SetVariable('T028_ID', ' ');
end;

procedure TK001_ReesterIssuersAll.ShowLinked(AT028_PARENT_ID: Double);
begin
  ClearFilters;
  odsList.SetVariable('T028_PARENT_ID', 'AND T028_PARENT_ID = ' + FloatToStr(AT028_PARENT_ID));
  Self.RefreshAllRecords;
end;

procedure TK001_ReesterIssuersAll.actRefreshExecute(Sender: TObject);
begin
  odsList.SetVariable('T028_PARENT_ID', ' ');
  odsList.SetVariable('T028_ID', ' ');

  inherited;
end;

procedure TK001_ReesterIssuersAll.ShowIssuers(AT028_IDs: String);
begin
  ClearFilters;
  odsList.SetVariable('T028_ID', 'AND T028_ID IN (' + AT028_IDs + ')');
  Self.RefreshAllRecords;
end;

procedure TK001_ReesterIssuersAll.actEditIssuerUpdate(Sender: TObject);
begin
  actEditIssuer.Enabled := not odsList.IsEmpty;
end;

procedure TK001_ReesterIssuersAll.actEditIssuerExecute(Sender: TObject);
var
  vEditDlg: TK001_IssuerEdit;
begin
  vEditDlg := TK001_IssuerEdit.Create(Self);

  vEditDlg.dsList.DataSet := odsList;

  if odsListREC_TYPE.AsFloat <> 1 then // не главные
    begin
    vEditDlg.cbIsBank.Enabled := False;
    vEditDlg.lblRegn.Enabled := False;
    vEditDlg.edRegn.Enabled := False;
    vEditDlg.lblOgrn.Enabled := False;
    vEditDlg.edOgrn.Enabled := False;
    end;

  if vEditDlg.ShowModal = mrOk then
    begin
    oqUpdate.SetVariable('T028_ID', odsListT028_ID.AsFloat);
    oqUpdate.SetVariable('T028_SHOT_NAME', odsListT028_SHOT_NAME.AsString);
    oqUpdate.SetVariable('T028_INN', odsListT028_INN.AsString);
    oqUpdate.SetVariable('T025_ID', odsListT025_ID.AsFloat);
    oqUpdate.SetVariable('T028_COUNTRY_ID', odsListT028_COUNTRY_ID.AsString);
    oqUpdate.SetVariable('USER', dmMain.GetUser);
    oqUpdate.Execute;
    Self.RefreshOneRecord;
    end;

  vEditDlg.Free;
end;

function TK001_ReesterIssuersAll.GetKeyFieldName: string;
begin
  Result := 'T028_ID';
end;

procedure TK001_ReesterIssuersAll.actMakeIssuerMainUpdate(Sender: TObject);
begin
  actMakeIssuerMain.Enabled := not odsList.IsEmpty and
                         odsListT028_PARENT_ID.IsNull;
end;

procedure TK001_ReesterIssuersAll.actMakeIssuerMainExecute(
  Sender: TObject);
begin
  oqMakeMain.SetVariable('T028_ID', odsListT028_ID.AsFloat);
  oqMakeMain.Execute;
  Self.RefreshOneRecord;
end;

procedure TK001_ReesterIssuersAll.SetCanEdit(const Value: boolean);
begin
//  if FCanEdit <> Value then
    begin
    FCanEdit := Value;
    tlbSelect.Visible := FCanEdit;
    tlbEdit.Visible := FCanEdit;
    end;
end;

end.
