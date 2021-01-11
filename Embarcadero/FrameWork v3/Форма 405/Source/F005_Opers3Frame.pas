unit F005_Opers3Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  F005_ReporterFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame,
  F005_DataPeriodFilterFrame, fm031_FilterFrame;

type
  TF005_Opers3 = class(TfmFilteredGrid)
    PeriodFilter: TF005_DataPeriodFilter;
    ReporterFilter: TF005_ReporterFilter;
    odsListIS_LINKED: TStringField;
    odsListT241_ID: TFloatField;
    odsListT243_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT241_ROW_NUM: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT241_EMIT_KPP: TStringField;
    odsListT241_EMIT_OGRN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_SEC_REGN: TStringField;
    odsListT241_KODVAL_CB: TStringField;
    odsListT241_N_ST: TFloatField;
    odsListT241_KREPOPR: TFloatField;
    odsListT241_KZAIMPR: TFloatField;
    odsListT241_KOBREPOPL: TFloatField;
    odsListT241_KZAIMPL: TFloatField;
    odsListT241_KDOVUPRPR: TFloatField;
    odsListT241_KDOVUPRPPR: TFloatField;
    odsListT241_KZALOGOBKO: TFloatField;
    odsListT241_KZALOGOBTL: TFloatField;
    odsListT241_KZALOG: TFloatField;
    odsListT241_PRIM: TStringField;
    odsListT241_N_ST_USD: TFloatField;
    odsListT241_EMIT_REGION: TStringField;
    odsListT243_REPORTER_SHORT_NAME: TStringField;
    odsListT243_REPORTER_INN: TStringField;
    odsListT030_ID: TFloatField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT027_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT028_CODE_MAIN: TStringField;
    odsListT028_COUNTRY_MAIN: TStringField;
    odsListT055_LONG_NAME: TStringField;
    odsListT010_ISIN_TRANSL: TStringField;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject);  override;
  end;

var
  F005_Opers3: TF005_Opers3;

implementation

uses dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

{ TF005_Opers3 }

procedure TF005_Opers3.InitFrame(Sender: TObject);
begin
  PeriodFilter.InitFrame(Self);
  PeriodFilter.cb.Checked := True;
  PeriodFilter.cb.Enabled := False;

  ReporterFilter.InitFrame(Self);
  ReporterFilter.cb.Checked := False;

  // фильтр по периоду
  ObjectsFactory.Links.LinkLookUp2Condition(
    ctNumBetween,
    PeriodFilter,
    Self,
    'T055_ID',
    ltNoRefresh
    );

  // фильтр по ИНН отчит. организации
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrIn,
    ReporterFilter,
    Self,
    'T243_REPORTER_INN',
    ltNoRefresh
    );

  inherited;
end;

end.
