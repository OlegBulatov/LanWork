unit F005_LoadPage1aFrame;

interface

uses
  fm031_WizardPageFrame, Classes, StdCtrls, Buttons, ActnList, Oracle, ExtCtrls,
  B000_LoadPage1GridFrame, Db, OracleData, F005_LoadPeriodFilterFrame,
  B000_ReportTypeFilterFrame, fm004_ListFrame, fm005_GridFrame,
  fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, fm033_PeriodFilterFrame, Controls, Forms,
  F005_LoadPage1aGridFrame, B000_PeriodFilterFrame;
//Windows, Messages, SysUtils, Graphics, Dialogs,

type
  TF005_LoadPage1a = class(TfmWizardPage)
    stLoadDate: TStaticText;
    sbReload: TSpeedButton;
    actReload: TAction;
    oqReload: TOracleQuery;
    Filters: TPanel;
    Grid: TF005_LoadPage1aGrid;
    GroupBox1: TGroupBox;
    odsLastLoad: TOracleDataSet;
    PeriodFilter: TF005_LoadPeriodFilter;
    ReportTypeFilter: TB000_ReportTypeFilter;
    odsLastLoadT244_DATE: TDateTimeField;
    Button1: TButton;
    procedure actReloadUpdate(Sender: TObject);
    procedure actReloadExecute(Sender: TObject);
    procedure PanelStepCaptionResize(Sender: TObject);
    procedure odsLastLoadAfterOpen(DataSet: TDataSet);
    procedure GridodsListAfterOpen(DataSet: TDataSet);
  private
    FReloading: boolean;
    procedure InitFrames;
    procedure InitFilters;
  public
    constructor Create(AOwner: TComponent); override;
    procedure DoOnShowPage(const AType: TMoveType); override;
    procedure DoOnClosePage(const AType: TMoveType); override;
  end;

var
  F005_LoadPage1a: TF005_LoadPage1a;

implementation

uses
  dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

{ TB000_LoadPage1 }

procedure TF005_LoadPage1a.DoOnClosePage(const AType: TMoveType);
begin
//
end;

procedure TF005_LoadPage1a.DoOnShowPage(const AType: TMoveType);
begin
//
end;

constructor TF005_LoadPage1a.Create(AOwner: TComponent);
begin
  inherited;
  FReloading := False;
  Grid.PeriodFilter := PeriodFilter;
  InitFrames;
end;

procedure TF005_LoadPage1a.InitFrames;
var
  OldCursor: TCursor;
begin
  InitFilters;

  ObjectsFactory.Links.LinkLookUp2Condition(
    ctNumBetween,
    PeriodFilter,
    Grid,
    'T055_ID',
    ltNoRefresh
    );

  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrEqual,
    ReportTypeFilter,
    Grid,
    'REPORT_TYPE',
    ltNoRefresh
    );

  OldCursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
//  oqBeforeLoad.Execute; //удаляем несуществующие отчеты из T219
  Screen.Cursor := OldCursor;

  Grid.InitFrame(Self);
  odsLastLoad.Close;
  odsLastLoad.Open;
end;

procedure TF005_LoadPage1a.actReloadUpdate(Sender: TObject);
begin
  actReload.Enabled := not FReloading;
end;

procedure TF005_LoadPage1a.actReloadExecute(Sender: TObject);
var
  vCursor: TCursor;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  FReloading := True;
  sbReload.Enabled := False;
  oqReload.Execute;
  odsLastLoad.Close;
  odsLastLoad.Open;
  sbReload.Enabled := True;
  FReloading := False;
  Grid.RefreshData;
  Screen.Cursor := vCursor;
end;

procedure TF005_LoadPage1a.InitFilters;
begin
  PeriodFilter.InitFrame(Self);
  ReportTypeFilter.InitFrame(Self);
end;

procedure TF005_LoadPage1a.PanelStepCaptionResize(Sender: TObject);
begin
  inherited;
  sbReload.Left := PanelStepCaption.Width - sbReload.Width - 16;
  stLoadDate.Left := sbReload.Left - stLoadDate.Width - 8;
end;

procedure TF005_LoadPage1a.odsLastLoadAfterOpen(DataSet: TDataSet);
begin
  stLoadDate.Caption := 'Данные от ' + odsLastLoadT244_DATE.AsString;
  stLoadDate.Left := sbReload.Left - stLoadDate.Width - 8;
end;

procedure TF005_LoadPage1a.GridodsListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Grid.odsListAfterOpen(DataSet);
  Grid.RefreshCounters;
end;

end.
