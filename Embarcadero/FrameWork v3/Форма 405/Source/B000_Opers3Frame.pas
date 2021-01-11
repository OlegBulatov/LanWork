unit B000_Opers3Frame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, xxxDBGrid,
  B002_BankFilterFrame, fm000_Parent, fm008_DBObjectFrame,
  fm021_CheckBoxFrame, fm020_LookUpFrame, fm033_PeriodFilterFrame,
  B000_RemainsPeriodFilterFrame, fm031_FilterFrame;

type
  TB000_Opers3 = class(TfmFilteredGrid)
    PeriodFilter: TB000_RemainsPeriodFilter;
    BankFilter: TB002_BankFilter;
    odsListT218_ID: TFloatField;
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
    odsListEMIT_TIN: TStringField;
    odsListEMIT_KPP: TStringField;
    odsListEMIT_OGRN: TStringField;
    odsListEMIT_STRAN: TFloatField;
    odsListEMIT_PRIZ: TIntegerField;
    odsListISIN: TStringField;
    odsListKODVAL_CB: TStringField;
    odsListN_ST: TFloatField;
    odsListN_ST_USD: TFloatField;
    odsListKREPOPR: TFloatField;
    odsListKZAIMPR: TFloatField;
    odsListKOBREPOPL: TFloatField;
    odsListKZAIMPL: TFloatField;
    odsListKDOVUPRPR: TFloatField;
    odsListKDOVUPRPPR: TFloatField;
    odsListKZALOGOBKO: TFloatField;
    odsListKZALOGOBTL: TFloatField;
    odsListKZALOGPR: TFloatField;
    odsListPRIM: TStringField;
    odsListVID_SH: TStringField;
    odsListSEKTOR: TStringField;
    odsListKDEPO: TFloatField;
    odsListSTOP_CORP: TFloatField;
    odsListSTOP_OPER: TFloatField;
    odsListSTOP_ARREST: TFloatField;
    odsListT218_COMMENT_3: TStringField;
    odsListPRIZ_EMIT_NREZ: TStringField;
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
  B000_Opers3: TB000_Opers3;

implementation

uses dm000_ObjectsFactory, unt007_LinksList, frm106_DataSourceForm;

{$R *.DFM}

{ TB000_Opers3 }

procedure TB000_Opers3.InitFrame(Sender: TObject);
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

procedure TB000_Opers3.actInfoUpdate(Sender: TObject);
begin
  actInfo.Enabled := not odsList.FieldByName('T051_ID').IsNull;
end;

procedure TB000_Opers3.actInfoExecute(Sender: TObject);
var
  SourceForm: Tfrm106_DataSource;
begin
  SourceForm := Tfrm106_DataSource.Create(Self);
  SourceForm.InitData(if711, odsListT051_ID.AsFloat);
  SourceForm.ShowModal;
  SourceForm.Free;
end;

end.
