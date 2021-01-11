unit C002_CheckRatesFrame;

interface

uses
  fm005_GridFrame, StdCtrls, ExtCtrls, Db, C002_TypeSecFrame, C002_PeriodFrame,
  C002_OpCodeFrame, fm023_TextEditFrame, G001_IssuerGroupFrame, C002_IssuerFrame,
  C002_CheckRatesBottomFrame, fm004_ListFrame, fm033_PeriodFilterFrame,
  Forms, fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, Oracle, Menus, OracleData, Classes, ActnList,
  Controls, ComCtrls, ToolWin, Grids, DBGrids, xxxDBGrid;
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
//  , Oracle, Menus, OracleData, ActnList, ComCtrls,
//  ToolWin, , Grids, DBGrids, xxxDBGrid,
//  fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
//  fm020_LookUpFrame, ,
//  fm033_PeriodFilterFrame, , ,
//  fm023_TextEditFrame, , ,
//  fm004_ListFrame,

type
  TC002_CheckRates = class(TfmGrid)
    paFilters: TPanel;
    SecTypeFilter: TC002_TypeSec;
    Button1: TButton;
    PeriodFilter: TC002_Period;
    OpCodeFilter: TC002_OpCode;
    DeltaFilter: TfmTextFilter;
    IssuerGroupFilter: TG001_IssuerGroup;
    IssuerFilter: TC002_Issuer;
    odsListT027_ID: TFloatField;
    odsListSEC_TYPE: TStringField;
    odsListT001_OP_ID: TFloatField;
    odsListOP_CODE: TFloatField;
    odsListT002_BANK_CODE: TStringField;
    odsListISSUER: TStringField;
    odsListREZID: TStringField;
    odsListNREZID: TStringField;
    odsListPAY_DIR: TIntegerField;
    odsListOP_COUNT: TFloatField;
    odsListOP_SUM: TFloatField;
    odsListOP_SUM_DIR: TFloatField;
    odsListAVG_PRICE: TFloatField;
    odsListAVG_RATE: TFloatField;
    odsListPRICE_DIFF: TFloatField;
    odsListRECORD_CNT: TFloatField;
    Splitter1: TSplitter;
    DetailsList: TC002_CheckRatesBottom;
    odsListT028_ID_MAIN: TFloatField;
    odsListT012_ID_MAIN: TFloatField;
    odsListT013_ID_MAIN: TFloatField;
    cbNoRates: TCheckBox;
    odsListSUM_PRICE: TFloatField;
    odsListSUM_PRICE_DIFF: TFloatField;
    Delta2Filter: TfmTextFilter;
  private
  protected
    procedure RefreshAllRecords; override;
  public
    procedure InitFrame(Sender: TObject);  override;
  end;

var
  C002_CheckRates: TC002_CheckRates;

implementation

uses dm000_ObjectsFactory, unt007_LinksList;

{$R *.DFM}

{ TC002_CheckRates }

procedure TC002_CheckRates.InitFrame(Sender: TObject);
begin
  if not SecTypeFilter.odsList.Active then
    begin
    // Период - в RefreshAllRecords

    // Тип ценной бумаги
    ObjectsFactory.Links.LinkLookUpCondition(
      ctNumEqual,
      SecTypeFilter,
      Self,
      'T027_ID',
      ltNoRefresh
      );

    // Код операции
    ObjectsFactory.Links.LinkLookUpCondition(
      ctNumEqual,
      OpCodeFilter,
      Self,
      'T001_OP_ID',
      ltNoRefresh
      );

    // Отклонение цены - в RefreshAllRecords
//    ObjectsFactory.Links.LinkTextCondition(
//      ctNumMore,
//      DeltaFilter,
//      Self,
//      'PRICE_DIFF',
//      ltNoRefresh
//      );

    end;

  // инициализируем фильтры:
  // Период
  PeriodFilter.InitFrame(Self);
  // Код операции
  OpCodeFilter.InitFrame(Self);
  OpCodeFilter.SetKeyValuesStr(['1']); // Код операции 11
  // Тип ц.б.
  SecTypeFilter.InitFrame(Self);
  SecTypeFilter.SetKeyValuesStr(['3']); // Тип ц.б. SHS3
  // Группа эмитентов
  IssuerGroupFilter.InitFrame(Self);
  IssuerGroupFilter.SetKeyValuesStr(['103']); // Группа IIPS
  // Эмитент
//  RezidentFilter.odsList.SetVariable('T055_ID_S', PeriodFilter.KeyValue);
//  RezidentFilter.odsList.SetVariable('T055_ID_E', PeriodFilter.KeyValue2);
//  RezidentFilter.odsList.SetVariable('T011_ID', PeriodFilter.KeyValue2);
  IssuerFilter.SetVariables(
                   PeriodFilter.KeyValueFloat,
                   PeriodFilter.KeyValue2Float,
                   OpCodeFilter.KeyValueFloat,
                   SecTypeFilter.KeyValueFloat
                   );
  IssuerFilter.InitFrame(Self);
  // Резидент

  // Нерезидент

  DetailsList.InitFrame(Self);

  inherited;
end;

procedure TC002_CheckRates.RefreshAllRecords;
begin
  // Период
  odsList.SetVariable('T055_ID_S', PeriodFilter.KeyValue);
  odsList.SetVariable('T055_ID_E', PeriodFilter.KeyValue2);

  // Группа эмитентов
  if IssuerGroupFilter.cb.Checked then
    odsList.SetVariable('T042_ID', 'AND Pk_405_Issuers.f_is_issuer_in_group(' + IssuerGroupFilter.KeyValueStr + ', T028_ID_MAIN) = 1')
  else
    odsList.SetVariable('T042_ID', '');

  // Без биржевых цен
  if cbNoRates.Checked = False then
    odsList.SetVariable('NO_RATES', 'AND AVG(T001_RATE) IS NOT NULL')
  else
    odsList.SetVariable('NO_RATES', '');

  // Отклонение цены
  if DeltaFilter.cb.Checked then
    odsList.SetVariable('DELTA', 'AND NVL(MAX(PRICE_DIFF), 1000000) > ' + DeltaFilter.ed.Text)
  else
    odsList.SetVariable('DELTA', '');

  // Отклонение суммы цен
  if Delta2Filter.cb.Checked then
    odsList.SetVariable('DELTA2', 'AND NVL(ABS((SUM(T001_PRICE) - AVG(T001_RATE)) / DECODE (SUM(T001_RATE), 0, NULL, SUM(T001_RATE)) * 100), 1000000) < ' + Delta2Filter.ed.Text)
  else
    odsList.SetVariable('DELTA2', '');

  DetailsList.odsList.SetVariable('T055_ID_S', PeriodFilter.KeyValue);
  DetailsList.odsList.SetVariable('T055_ID_E', PeriodFilter.KeyValue2);

//  ShowMessage(odsList.SubstitutedSQL);

  inherited;
end;

end.
