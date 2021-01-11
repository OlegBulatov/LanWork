unit B000_LoadPage1Frame;

interface

uses
  fm031_WizardPageFrame, Classes, StdCtrls, Buttons, ActnList, Oracle, ExtCtrls,
  B000_LoadPage1GridFrame, Db, OracleData, B000_PeriodFilterFrame,
  B000_ReportTypeFilterFrame, fm004_ListFrame, fm005_GridFrame,
  fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, fm033_PeriodFilterFrame, Controls, Forms;
//Windows, Messages, SysUtils, Graphics, Dialogs,

type
  TB000_LoadPage1 = class(TfmWizardPage)
    stLoadDate: TStaticText;
    sbReload: TSpeedButton;
    actReload: TAction;
    oqReload: TOracleQuery;
    Filters: TPanel;
    Grid: TB000_LoadPage1Grid;
    GroupBox1: TGroupBox;
    odsLastLoad: TOracleDataSet;
    odsLastLoadT222_DATE: TDateTimeField;
    PeriodFilter: TB000_PeriodFilter;
    ReportTypeFilter: TB000_ReportTypeFilter;
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
  B000_LoadPage1: TB000_LoadPage1;

implementation

uses
  dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

{ TB000_LoadPage1 }

procedure TB000_LoadPage1.DoOnClosePage(const AType: TMoveType);
begin
//
end;

procedure TB000_LoadPage1.DoOnShowPage(const AType: TMoveType);
begin
//
end;

constructor TB000_LoadPage1.Create(AOwner: TComponent);
begin
  inherited;
  FReloading := False;
  Grid.PeriodFilter := PeriodFilter;
  InitFrames;
end;

procedure TB000_LoadPage1.InitFrames;
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

procedure TB000_LoadPage1.actReloadUpdate(Sender: TObject);
begin
  actReload.Enabled := not FReloading;
end;

procedure TB000_LoadPage1.actReloadExecute(Sender: TObject);
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

procedure TB000_LoadPage1.InitFilters;
begin
  PeriodFilter.InitFrame(Self);
  ReportTypeFilter.InitFrame(Self);
end;

procedure TB000_LoadPage1.PanelStepCaptionResize(Sender: TObject);
begin
  inherited;
  sbReload.Left := PanelStepCaption.Width - sbReload.Width - 16;
  stLoadDate.Left := sbReload.Left - stLoadDate.Width - 8;
end;

procedure TB000_LoadPage1.odsLastLoadAfterOpen(DataSet: TDataSet);
begin
  stLoadDate.Caption := 'Данные от ' + odsLastLoadT222_DATE.AsString;
  stLoadDate.Left := sbReload.Left - stLoadDate.Width - 8;
end;

procedure TB000_LoadPage1.GridodsListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Grid.odsListAfterOpen(DataSet);
  Grid.RefreshCounters;
end;

end.
