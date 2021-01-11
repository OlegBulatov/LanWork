unit B000_Opers22Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  B002_BankFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame,
  B000_RemainsPeriodFilterFrame, fm031_FilterFrame;

type
  TB000_Opers22 = class(TfmFilteredGrid)
    PeriodFilter: TB000_RemainsPeriodFilter;
    BankFilter: TB002_BankFilter;
    odsListT051_ID: TFloatField;
    odsListT051_BANK_CODE: TStringField;
    odsListT051_KP_ID: TIntegerField;
    odsListT051_LOAD_DATE: TDateTimeField;
    odsListT055_ID: TFloatField;
    odsListT051_NUMB_IN_YEA: TStringField;
    odsListT051_NUMB_IN_YEA_DESC: TStringField;
    odsListT051_REPORT_DATE: TDateTimeField;
    odsListIS_MAIN: TStringField;
    odsListT030_ID: TFloatField;
    odsListT026_SEC_REGN: TStringField;
    odsListT027_ID: TFloatField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT028_ID: TFloatField;
    odsListT028_INN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListT027_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_PARENT_ID: TFloatField;
    odsListT028_INN_MAIN: TStringField;
    odsListT028_COUNTRY_ID_MAIN: TStringField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT025_SHOT_NAME_MAIN: TStringField;
    odsListT228_ID: TFloatField;
    odsListT228_VEKSSERIAL: TStringField;
    odsListT228_VEKSBLANK: TStringField;
    odsListT228_VEKSDTSOST: TDateTimeField;
    odsListT228_SROKPOGASH: TStringField;
    odsListT228_VEKSCODVAL: TIntegerField;
    odsListT228_VEKSSUM: TFloatField;
    odsListT228_VEKSDERJ_1: TStringField;
    odsListT228_INNDERJ_1: TStringField;
    odsListT228_TINDERJ_1: TStringField;
    odsListT228_OGRNDERJ_1: TStringField;
    odsListT228_COUNTR_DR1: TIntegerField;
    odsListT228_VEKSSOST: TStringField;
    odsListT228_DTFAKTPOG: TDateTimeField;
    odsListT228_VEKSDERJ: TStringField;
    odsListT228_INNDERJ: TStringField;
    odsListT228_TINDERJ: TStringField;
    odsListT228_OGRNDERJKO: TStringField;
    odsListT228_COUNTR_DR: TIntegerField;
    odsListT228_VEKSSUM_USD: TFloatField;
    odsListT228_DATE_1: TDateTimeField;
    odsListT228_DATE_2: TDateTimeField;
    odsListT228_VEKSRATE: TFloatField;
    odsListT228_REALSTOIM_NOM: TFloatField;
    odsListT228_COMMENT: TStringField;
    odsListT228_BALUCHETA: TStringField;
    odsListT228_PRIZ_VEKSDERJ_1_NREZ: TStringField;
    odsListT228_PRIZ_VEKSDERJ_NREZ: TStringField;
    ToolButton1: TToolButton;
    actInfo: TAction;
    procedure odsListBeforeOpen(DataSet: TDataSet);
    procedure actInfoUpdate(Sender: TObject);
    procedure actInfoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  B000_Opers22: TB000_Opers22;

implementation

uses dm000_ObjectsFactory, unt007_LinksList, frm106_DataSourceForm;

{$R *.DFM}

{ TB000_Opers22 }

procedure TB000_Opers22.InitFrame(Sender: TObject);
begin
  PeriodFilter.InitFrame(Self);
  BankFilter.InitFrame(Self);

  // Период
  ObjectsFactory.Links.LinkLookUp2Condition(
    ctNumBetween,
    PeriodFilter,
    Self,
    'T055_ID',
    ltNoRefresh
    );

  // КО
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrEqual,
    BankFilter,
    Self,
    'T051_BANK_CODE',
    ltNoRefresh
    );

  inherited;
end;

procedure TB000_Opers22.odsListBeforeOpen(DataSet: TDataSet);
var
  i: integer;
begin
//  inherited;
  if PeriodFilter.cb.Checked and (PeriodFilter.KeyValue2Float < 1974) then// апрель 2018
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'T201_BALUCHETA') then
        xxxDbGrid.Columns[i].Visible := False;
      end;
    end
  else
    begin
    for i := 0 to xxxDbGrid.Columns.Count-1 do
      begin
      if (xxxDbGrid.Columns[i].FieldName = 'T201_BALUCHETA') then
        xxxDbGrid.Columns[i].Visible := True;
      end;
    end;
end;

procedure TB000_Opers22.actInfoUpdate(Sender: TObject);
begin
  actInfo.Enabled := not odsList.FieldByName('T051_ID').IsNull;
end;

procedure TB000_Opers22.actInfoExecute(Sender: TObject);
var
  SourceForm: Tfrm106_DataSource;
begin
  SourceForm := Tfrm106_DataSource.Create(Self);
  SourceForm.InitData(if711, odsListT051_ID.AsFloat);
  SourceForm.ShowModal;
  SourceForm.Free;
end;

end.
