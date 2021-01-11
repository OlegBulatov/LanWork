unit F005_Opers22Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  F005_ReporterFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame,
  F005_DataPeriodFilterFrame, fm031_FilterFrame;

type
  TF005_Opers22 = class(TfmFilteredGrid)
    PeriodFilter: TF005_DataPeriodFilter;
    ReporterFilter: TF005_ReporterFilter;
    odsListT239_ID: TFloatField;
    odsListT243_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT239_ROW_NUM: TFloatField;
    odsListT239_VEKS_SERIAL: TStringField;
    odsListT239_VEKS_NUM: TStringField;
    odsListT239_VEKS_BLANK: TStringField;
    odsListT239_VEKS_DTSOST: TDateTimeField;
    odsListT239_VEKS_KODVAL: TStringField;
    odsListT239_VEKS_SROKPOGASH: TStringField;
    odsListT239_VEKS_SUM: TFloatField;
    odsListT239_VEKSDERJ1_NAME: TStringField;
    odsListT239_VEKSDERJ1_CODE: TStringField;
    odsListT239_VEKSDERJ1_OGRN: TStringField;
    odsListT239_VEKSDERJ1_STRAN: TStringField;
    odsListT239_VEKS_SOST: TStringField;
    odsListT239_VEKS_DTFAKTPOG: TDateTimeField;
    odsListT239_VEKSDERJ_NAME: TStringField;
    odsListT239_VEKSDERJ_CODE: TStringField;
    odsListT239_VEKSDERJ_OGRN: TStringField;
    odsListT239_VEKSDERJ_STRAN: TStringField;
    odsListT239_PRIM: TStringField;
    odsListT239_VEKSDERJ1_REGION: TStringField;
    odsListT239_VEKSDERJ_REGION: TStringField;
    odsListT243_REPORTER_SHORT_NAME: TStringField;
    odsListT243_REPORTER_INN: TStringField;
    odsListT055_LONG_NAME: TStringField;
  private
    { Private declarations }
  public
    procedure InitFrame(Sender: TObject);  override;
  end;

var
  F005_Opers22: TF005_Opers22;

implementation

uses dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

{ TF005_Opers22 }

procedure TF005_Opers22.InitFrame(Sender: TObject);
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
