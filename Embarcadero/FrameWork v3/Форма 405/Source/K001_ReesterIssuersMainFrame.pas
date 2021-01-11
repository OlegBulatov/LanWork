unit K001_ReesterIssuersMainFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  StdCtrls, fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, K001_IssuerTypeFilterFrame, fm023_TextEditFrame,
  K001_IssuerInnFilterFrame;

type
  TK001_ReesterIssuersMain = class(TfmGrid)
    paFilters: TPanel;
    GroupBox1: TGroupBox;
    btnRefresh: TButton;
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
    IssuerTypeFilter: TK001_IssuerTypeFilter;
    IssuerInnFilter: TK001_IssuerInnFilter;
    IssuerNameFilter: TK001_IssuerInnFilter;
    tlbEdit: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    actEditIssuer: TAction;
    odsListT036_ISBANK: TStringField;
    odsListT036_REGN: TStringField;
    odsListT036_OGRN: TStringField;
    procedure actRefreshExecute(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actEditIssuerUpdate(Sender: TObject);
    procedure actEditIssuerExecute(Sender: TObject);
  private
    FCanEdit: boolean;
    procedure ClearFilters;
    procedure SetCanEdit(const Value: boolean);
  protected
    function GetKeyFieldName: string; override;
  public
    procedure InitFrame(Sender: TObject);  override;
    //
    procedure ShowMain(AT028_ID: Double);
    //
    property CanEdit: boolean read FCanEdit write SetCanEdit;
  end;

var
  K001_ReesterIssuersMain: TK001_ReesterIssuersMain;

implementation

uses dm000_ObjectsFactory, unt007_LinksList, K001_IssuerEditDlg,
  dm005_MainData;

{$R *.DFM}

{ TK001_ReestersLinksTL }

procedure TK001_ReesterIssuersMain.ClearFilters;
begin
  IssuerTypeFilter.cb.Checked := False;
  IssuerInnFilter.cb.Checked := False;
  IssuerNameFilter.cb.Checked := False;
end;

procedure TK001_ReesterIssuersMain.InitFrame(Sender: TObject);
begin
  CanEdit := False;
  
  IssuerTypeFilter.InitFrame(Sender);
  IssuerInnFilter.cb.Checked := False;
  IssuerNameFilter.cb.Checked := False;

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

  inherited;
end;

procedure TK001_ReesterIssuersMain.ShowMain(AT028_ID: Double);
begin
  ClearFilters;
  odsList.SetVariable('T028_ID', 'AND T028_ID = ' + FloatToStr(AT028_ID));
  Self.RefreshAllRecords;
end;

procedure TK001_ReesterIssuersMain.actRefreshExecute(Sender: TObject);
begin
  odsList.SetVariable('T028_ID', ' ');

  inherited;
end;

procedure TK001_ReesterIssuersMain.xxxDBGridDrawColumnCell(Sender: TObject;
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

function TK001_ReesterIssuersMain.GetKeyFieldName: string;
begin
  Result := 'T028_ID';
end;

procedure TK001_ReesterIssuersMain.SetCanEdit(const Value: boolean);
begin
  FCanEdit := Value;
//  tlbSelect.Visible := FCanEdit;
  tlbEdit.Visible := FCanEdit;
end;

procedure TK001_ReesterIssuersMain.actEditIssuerUpdate(Sender: TObject);
begin
  actEditIssuer.Enabled := not odsList.IsEmpty;
end;

procedure TK001_ReesterIssuersMain.actEditIssuerExecute(Sender: TObject);
var
  vEditDlg: TK001_IssuerEdit;
begin
  vEditDlg := TK001_IssuerEdit.Create(Self);

//  vEditDlg.cbIsBank.DataSource := dsList;
//  vEditDlg.edRegn.DataSource := dsList;
//  vEditDlg.edOgrn.DataSource := dsList;

  vEditDlg.dsList.DataSet := odsList;

  if vEditDlg.ShowModal = mrOk then
    begin
    oqUpdate.SetVariable('T028_ID', odsListT028_ID.AsFloat);
    oqUpdate.SetVariable('T028_PARENT_ID', odsListT028_PARENT_ID.AsFloat);
    oqUpdate.SetVariable('T028_SHOT_NAME', odsListT028_SHOT_NAME.AsString);
    oqUpdate.SetVariable('T028_INN', odsListT028_INN.AsString);
    oqUpdate.SetVariable('T025_ID', odsListT025_ID.AsFloat);
    oqUpdate.SetVariable('T028_COUNTRY_ID', odsListT028_COUNTRY_ID.AsString);
    oqUpdate.SetVariable('T036_OGRN', odsListT036_OGRN.AsString);
    oqUpdate.SetVariable('T036_ISBANK', odsListT036_ISBANK.AsString);
    oqUpdate.SetVariable('T036_REGN', odsListT036_REGN.AsString);

    oqUpdate.SetVariable('USER', dmMain.GetUser);
    oqUpdate.Execute;
    Self.RefreshOneRecord;
    end;

  vEditDlg.Free;
end;

end.
