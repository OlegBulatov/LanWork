unit K001_ReesterEmissionsMainFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm005_GridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  StdCtrls, fm023_TextEditFrame, K001_IssuerInnFilterFrame,
  K002_EmissionSecTypeFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, K001_RecTypeFilterFrame;

type
  TK001_ReesterEmissionsMain = class(TfmGrid)
    paFilters: TPanel;
    GroupBox1: TGroupBox;
    SecTypeFilter: TK002_EmissionSecTypeFilter;
    SecRegnFilter: TK001_IssuerInnFilter;
    IsinFilter: TK001_IssuerInnFilter;
    btnRefresh: TButton;
    odsListT030_IS_MAIN: TIntegerField;
    odsListT030_ID: TFloatField;
    odsListT030_PARENT_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT028_PARENT_ID: TFloatField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT010_ID: TFloatField;
    odsListT010_ISIN: TStringField;
    odsListT030_RECORD_TYPE: TIntegerField;
    odsListT028_SHOT_NAME: TStringField;
    odsListREC_TYPE: TFloatField;
    odsListT028_INN: TStringField;
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actRefreshExecute(Sender: TObject);
  private
    procedure ClearFilters;
  public
    procedure InitFrame(Sender: TObject);  override;
    //
    procedure ShowMain(AT030_ID: Double);
    procedure ShowEmissions(AT028_ID: Double);
  end;

var
  K001_ReesterEmissionsMain: TK001_ReesterEmissionsMain;

implementation

uses dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

{ TK001_ReesterEmissionsMain }

procedure TK001_ReesterEmissionsMain.InitFrame(Sender: TObject);
begin
  SecTypeFilter.InitFrame(Self);
  SecTypeFilter.lcb.SetKeyValuesAll;
  SecRegnFilter.cb.Checked := False;
  IsinFilter.cb.Checked := False;

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

  inherited;
end;

procedure TK001_ReesterEmissionsMain.xxxDBGridDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
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

procedure TK001_ReesterEmissionsMain.ShowMain(AT030_ID: Double);
begin
  ClearFilters;
  odsList.SetVariable('T030_ID', 'AND T030_ID = ' + FloatToStr(AT030_ID));
  Self.RefreshAllRecords;
end;

procedure TK001_ReesterEmissionsMain.ClearFilters;
begin
  SecTypeFilter.cb.Checked := False;
  SecRegnFilter.cb.Checked := False;
  IsinFilter.cb.Checked := False;

  odsList.SetVariable('T028_ID', ' ');
  odsList.SetVariable('T030_ID', ' ');
end;

procedure TK001_ReesterEmissionsMain.ShowEmissions(AT028_ID: Double);
begin
  ClearFilters;
  odsList.SetVariable('T028_ID', 'AND T028_ID = ' + FloatToStr(AT028_ID));
  Self.RefreshAllRecords;
end;

procedure TK001_ReesterEmissionsMain.actRefreshExecute(Sender: TObject);
begin
  odsList.SetVariable('T028_ID', ' ');
  odsList.SetVariable('T030_ID', ' ');

  inherited;
end;

end.
