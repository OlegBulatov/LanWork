unit J002_LoadPage1Frame;

interface

uses
  fm031_WizardPageFrame, Classes, StdCtrls, Buttons, ActnList, Oracle, ExtCtrls,
  B000_LoadPage1GridFrame, Db, OracleData, J002_LoadPeriodFilterFrame,
  B000_ReportTypeFilterFrame, fm004_ListFrame, fm005_GridFrame,
  fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, fm033_PeriodFilterFrame, Controls, Forms,
  J002_LoadPage1GridFrame, B000_PeriodFilterFrame;

type
  TJ002_LoadPage1 = class(TfmWizardPage)
    stLoadDate: TStaticText;
    sbReload: TSpeedButton;
    actReload: TAction;
    oqReload: TOracleQuery;
    Filters: TPanel;
    Grid: TJ002_LoadPage1Grid;
    GroupBox1: TGroupBox;
    odsLastLoad: TOracleDataSet;
    PeriodFilter: TJ002_LoadPeriodFilter;
    ReportTypeFilter: TB000_ReportTypeFilter;
    Button1: TButton;
    odsLastLoadT224_DATE: TDateTimeField;
    odsLastLoadF417_DATE: TDateTimeField;
    procedure actReloadExecute(Sender: TObject);
    procedure PanelStepCaptionResize(Sender: TObject);
    procedure odsLastLoadAfterOpen(DataSet: TDataSet);
    procedure GridodsListAfterOpen(DataSet: TDataSet);
    procedure actReloadUpdate(Sender: TObject);
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
  J002_LoadPage1a: TJ002_LoadPage1;

implementation

uses
  dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

{ TB000_LoadPage1 }

procedure TJ002_LoadPage1.DoOnClosePage(const AType: TMoveType);
begin
//
end;

procedure TJ002_LoadPage1.DoOnShowPage(const AType: TMoveType);
begin
//
end;

constructor TJ002_LoadPage1.Create(AOwner: TComponent);
begin
  inherited;
  FReloading := False;
  Grid.PeriodFilter := PeriodFilter;
  InitFrames;
end;

procedure TJ002_LoadPage1.InitFrames;
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

procedure TJ002_LoadPage1.actReloadExecute(Sender: TObject);
var
  vCursor: TCursor;
begin
  vCursor := Screen.Cursor;
  try
    Screen.Cursor := crSQLWait;
    sbReload.Enabled := False;
    FReloading := True;
    oqReload.Execute;
    odsLastLoad.Close;
    odsLastLoad.Open;
    Grid.RefreshData;
  finally
    sbReload.Enabled := True;
    FReloading := False;
    Screen.Cursor := vCursor;
  end;
end;

procedure TJ002_LoadPage1.InitFilters;
begin
  PeriodFilter.InitFrame(Self);
  ReportTypeFilter.InitFrame(Self);
end;

procedure TJ002_LoadPage1.PanelStepCaptionResize(Sender: TObject);
begin
  inherited;
  sbReload.Left := PanelStepCaption.Width - sbReload.Width - 16;
  stLoadDate.Left := sbReload.Left - stLoadDate.Width - 8;
end;

procedure TJ002_LoadPage1.odsLastLoadAfterOpen(DataSet: TDataSet);
var
  vStr: string;
begin
  vStr := 'Исходные данные ';
  if odsLastLoadF417_DATE.IsNull then
    vStr := vStr + 'отсутствуют.'
  else
    vStr := vStr + 'от ' + odsLastLoadF417_DATE.AsString;

  stLoadDate.Caption := vStr + '       Доступные загрузки на ' + odsLastLoadT224_DATE.AsString;
  stLoadDate.Left := sbReload.Left - stLoadDate.Width - 8;
end;

procedure TJ002_LoadPage1.GridodsListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Grid.odsListAfterOpen(DataSet);
  Grid.RefreshCounters;
end;

procedure TJ002_LoadPage1.actReloadUpdate(Sender: TObject);
begin
  actReload.Enabled := not FReloading;
end;

end.
