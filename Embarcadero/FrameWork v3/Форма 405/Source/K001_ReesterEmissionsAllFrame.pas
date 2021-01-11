unit K001_ReesterEmissionsAllFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  StdCtrls, fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, K001_RecTypeFilterFrame,
  K002_EmissionSecTypeFilterFrame, fm023_TextEditFrame,
  K001_IssuerInnFilterFrame;

type
  TK001_ReesterEmissionsAll = class(TfmGrid)
    paFilters: TPanel;
    GroupBox1: TGroupBox;
    btnRefresh: TButton;
    odsListT030_IS_MAIN: TIntegerField;
    odsListT030_ID: TFloatField;
    odsListT030_PARENT_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT028_PARENT_ID: TFloatField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_SEC_REGN: TStringField;
    odsListT010_ID: TFloatField;
    odsListT010_ISIN: TStringField;
    odsListT030_RECORD_TYPE: TIntegerField;
    odsListREC_TYPE: TFloatField;
    odsListT026_ID: TFloatField;
    RecTypeFilter: TK001_RecTypeFilter;
    SecTypeFilter: TK002_EmissionSecTypeFilter;
    SecRegnFilter: TK001_IssuerInnFilter;
    IsinFilter: TK001_IssuerInnFilter;
    odsListT028_SHOT_NAME: TStringField;
    actLinkEmission: TAction;
    ToolButton1: TToolButton;
    actUnlinkEmission: TAction;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    actMakeMain: TAction;
    oqLink: TOracleQuery;
    oqUnLink: TOracleQuery;
    oqMakeMain: TOracleQuery;
    odsListT028_INN: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actRefreshExecute(Sender: TObject);
    procedure actMakeMainUpdate(Sender: TObject);
    procedure actMakeMainExecute(Sender: TObject);
  private
    FCanEdit: boolean;
    procedure ClearFilters;
    procedure SetCanEdit(const Value: boolean);
  protected
    function GetKeyFieldName: string; override;
  public
    procedure InitFrame(Sender: TObject);  override;
    //
    procedure ShowEmissions(AT028_ID: Double);
    procedure ShowLinked(AT030_PARENT_ID: Double);

    property CanEdit: boolean read FCanEdit write SetCanEdit;
  end;

var
  K001_ReesterEmissionsAll: TK001_ReesterEmissionsAll;

implementation

uses dm000_ObjectsFactory, unt007_LinksList, dm005_MainData;

{$R *.DFM}

procedure TK001_ReesterEmissionsAll.InitFrame(Sender: TObject);
begin
  CanEdit := False;

  RecTypeFilter.InitFrame(Self);
  RecTypeFilter.lcb.SetKeyValuesAll;
  SecTypeFilter.InitFrame(Self);
  SecTypeFilter.lcb.SetKeyValuesAll;
  SecRegnFilter.cb.Checked := False;
  IsinFilter.cb.Checked := False;

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

//  tlbSelect.Visible := (Pos('TEST609', dmMain.GetUser) = 1);

  inherited;
end;

procedure TK001_ReesterEmissionsAll.xxxDBGridDrawColumnCell(Sender: TObject;
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

procedure TK001_ReesterEmissionsAll.ShowEmissions(AT028_ID: Double);
begin
  ClearFilters;
  odsList.SetVariable('T028_ID', 'AND T028_ID = ' + FloatToStr(AT028_ID));
  Self.RefreshAllRecords;
end;

procedure TK001_ReesterEmissionsAll.ClearFilters;
begin
  RecTypeFilter.cb.Checked := False;
  SecTypeFilter.cb.Checked := False;
  SecRegnFilter.cb.Checked := False;
  IsinFilter.cb.Checked := False;

  odsList.SetVariable('T030_PARENT_ID', ' ');
  odsList.SetVariable('T028_ID', ' ');
end;

procedure TK001_ReesterEmissionsAll.actRefreshExecute(Sender: TObject);
begin
  odsList.SetVariable('T030_PARENT_ID', ' ');
  odsList.SetVariable('T028_ID', ' ');

  inherited;
end;

procedure TK001_ReesterEmissionsAll.ShowLinked(AT030_PARENT_ID: Double);
begin
  ClearFilters;
  odsList.SetVariable('T030_PARENT_ID', 'AND T030_PARENT_ID = ' + FloatToStr(AT030_PARENT_ID));
  Self.RefreshAllRecords;
end;

function TK001_ReesterEmissionsAll.GetKeyFieldName: string;
begin
  Result := 'T030_ID';
end;

procedure TK001_ReesterEmissionsAll.actMakeMainUpdate(Sender: TObject);
begin
  actMakeMain.Enabled := not odsList.IsEmpty and
                         odsListT030_PARENT_ID.IsNull;
end;

procedure TK001_ReesterEmissionsAll.actMakeMainExecute(Sender: TObject);
begin
  oqMakeMain.SetVariable('T030_ID', odsListT030_ID.AsFloat);
  oqMakeMain.Execute;
  Self.RefreshOneRecord;
end;

procedure TK001_ReesterEmissionsAll.SetCanEdit(const Value: boolean);
begin
  FCanEdit := Value;
  tlbSelect.Visible := FCanEdit;
end;

end.
