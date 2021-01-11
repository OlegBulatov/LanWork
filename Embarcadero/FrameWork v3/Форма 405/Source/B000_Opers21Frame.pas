unit B000_Opers21Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  B002_BankFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame,
  B000_RemainsPeriodFilterFrame, fm031_FilterFrame;

type
  TB000_Opers21 = class(TfmFilteredGrid)
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
    odsListT227_ID: TFloatField;
    odsListT227_TINVEKSDAT: TStringField;
    odsListT227_OGRNVEKDAT: TStringField;
    odsListT227_VEKSSERIAL: TStringField;
    odsListT227_VEKSBLANK: TStringField;
    odsListT227_VEKSDTSOST: TDateTimeField;
    odsListT227_SROKPLAT: TStringField;
    odsListT227_VEKSCODVAL: TIntegerField;
    odsListT227_VEKSSUM: TFloatField;
    odsListT227_VEKSDTBAL: TDateTimeField;
    odsListT227_VEKSOSNPRI: TStringField;
    odsListT227_KONTRAGENT: TStringField;
    odsListT227_INNKONTR: TStringField;
    odsListT227_TINKONTR: TStringField;
    odsListT227_OGRNKONTR: TStringField;
    odsListT227_COUNTR_KA: TIntegerField;
    odsListT227_BALSTOIM: TFloatField;
    odsListT227_NAKDISKONT: TFloatField;
    odsListT227_BALUCHETA: TStringField;
    odsListT227_MESTOVEKS: TStringField;
    odsListT227_INNVEKSHRA: TStringField;
    odsListT227_TINVEKSHRA: TStringField;
    odsListT227_OGRNVEKHRA: TStringField;
    odsListT227_COUNTR_HR: TIntegerField;
    odsListT227_OSNOV: TStringField;
    odsListT227_VEKSSUM_USD: TFloatField;
    odsListT227_DATE_1: TDateTimeField;
    odsListT227_DATE_2: TDateTimeField;
    odsListT227_VEKSRATE: TFloatField;
    odsListT227_BALSTOIM_1: TFloatField;
    odsListT227_CATEGORY: TStringField;
    odsListT227_RESERV: TFloatField;
    odsListT227_REALSTOIM: TFloatField;
    odsListT227_SPIS_DATE: TDateTimeField;
    odsListT227_VEKSOSNSPIS: TStringField;
    odsListT227_KONTRPRIZ_1: TIntegerField;
    odsListT227_INNKONTR_1: TStringField;
    odsListT227_TINKONTR_1: TStringField;
    odsListT227_KONTRAGENT_1: TStringField;
    odsListT227_OGRNKONTR_1: TStringField;
    odsListT227_COUNTR_KA_1: TIntegerField;
    odsListT227_COMMENT: TStringField;
    odsListT227_PEREOC: TFloatField;
    odsListT227_CORR: TFloatField;
    odsListT227_RESERV_CORR: TFloatField;
    odsListT227_PRIZ_VEKSDAT_NREZ: TStringField;
    odsListT227_PRIZ_ORG_NREZ: TStringField;
    odsListT227_PRIZ_VEKSHRAN_NREZ: TStringField;
    odsListT227_PRIZ_KONTR_NREZ: TStringField;
    ToolButton1: TToolButton;
    actInfo: TAction;
    procedure actInfoUpdate(Sender: TObject);
    procedure actInfoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject); override;
  end;

var
  B000_Opers21: TB000_Opers21;

implementation

uses dm000_ObjectsFactory, unt007_LinksList, frm106_DataSourceForm;

{$R *.DFM}

{ TB000_Opers21 }

procedure TB000_Opers21.InitFrame(Sender: TObject);
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

procedure TB000_Opers21.actInfoUpdate(Sender: TObject);
begin
  actInfo.Enabled := not odsList.FieldByName('T051_ID').IsNull;
end;

procedure TB000_Opers21.actInfoExecute(Sender: TObject);
var
  SourceForm: Tfrm106_DataSource;
begin
  SourceForm := Tfrm106_DataSource.Create(Self);
  SourceForm.InitData(if711, odsListT051_ID.AsFloat);
  SourceForm.ShowModal;
  SourceForm.Free;
end;

end.
