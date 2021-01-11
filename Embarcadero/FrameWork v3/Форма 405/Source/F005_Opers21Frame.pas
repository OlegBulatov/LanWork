unit F005_Opers21Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  F005_ReporterFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame,
  F005_DataPeriodFilterFrame, fm031_FilterFrame;

type
  TF005_Opers21 = class(TfmFilteredGrid)
    PeriodFilter: TF005_DataPeriodFilter;
    ReporterFilter: TF005_ReporterFilter;
    odsListIS_LINKED: TStringField;
    odsListT238_ID: TFloatField;
    odsListT243_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT238_ROW_NUM: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT028_INN: TStringField;
    odsListT238_VEKSDAT_OGRN: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT026_SEC_REGN: TStringField;
    odsListT238_VEKS_SERIAL: TStringField;
    odsListT238_VEKS_BLANK: TStringField;
    odsListT238_VEKS_DTSOST: TDateTimeField;
    odsListT238_VEKS_SROKPLAT: TStringField;
    odsListT238_VEKS_KODVAL: TStringField;
    odsListT238_VEKS_SUM: TFloatField;
    odsListT238_VEKS_DTBAL: TDateTimeField;
    odsListT238_VEKS_OSNPRI: TStringField;
    odsListT238_KONTR_NAME: TStringField;
    odsListT238_KONTR_CODE: TStringField;
    odsListT238_KONTR_OGRN: TStringField;
    odsListT238_KONTR_STRAN: TStringField;
    odsListT238_BALSTOIM: TFloatField;
    odsListT238_NAKDISKONT: TFloatField;
    odsListT238_BALUCHETA: TStringField;
    odsListT238_MESTOVEKS: TStringField;
    odsListT238_VEKSHRA_INN: TStringField;
    odsListT238_VEKSHRA_OGRN: TStringField;
    odsListT238_VEKSHRA_STRAN: TStringField;
    odsListT238_OSNOV: TStringField;
    odsListT238_PRIM: TStringField;
    odsListT238_VEKS_REGION: TStringField;
    odsListT238_KONTR_REGION: TStringField;
    odsListT238_VEKSHRA_REGION: TStringField;
    odsListT243_REPORTER_SHORT_NAME: TStringField;
    odsListT243_REPORTER_INN: TStringField;
    odsListT030_ID: TFloatField;
    odsListT030_ID_MAIN: TFloatField;
    odsListT027_ID_MAIN: TFloatField;
    odsListT027_SEC_TYPE_MAIN: TStringField;
    odsListT026_SEC_REGN_MAIN: TStringField;
    odsListT028_ID_MAIN: TFloatField;
    odsListT028_SHOT_NAME_MAIN: TStringField;
    odsListT028_INN_MAIN: TStringField;
    odsListT028_COUNTRY_MAIN: TStringField;
    odsListT055_LONG_NAME: TStringField;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject);  override;
  end;

var
  F005_Opers21: TF005_Opers21;

implementation

uses dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

{ TF005_Opers21 }

procedure TF005_Opers21.InitFrame(Sender: TObject);
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
