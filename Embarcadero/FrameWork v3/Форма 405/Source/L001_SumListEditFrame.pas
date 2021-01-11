unit L001_SumListEditFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm002_EditFrame, ActnList, Db, OracleData, xxxDbLookupCheckCombo,
  DBCtrls, ComCtrls, DBDateTimePicker, StdCtrls, Mask,
  fm07_SelectParentFrame, fm12_CurrencyFrame, fm05_EmissionFrame,
  fm10_RezidFrame, fm02_PrmParentFrame, fm04_LookUpFrame, Oracle, ToolEdit,
  RXDBCtrl;

type
  TL001_SumListEdit = class(TfmEdit)
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label19: TLabel;
    Label27: TLabel;
    Label10: TLabel;
    lcbPeriod: TDBLookupComboBox;
    lcbPart: TxxxDBLookupCheckCombo;
    odsPeriod: TOracleDataSet;
    odsPeriodT002_ID: TIntegerField;
    odsPeriodSUM_HEADER_DESC: TStringField;
    odsPeriodT055_ID: TFloatField;
    dsPeriod: TDataSource;
    odsPart: TOracleDataSet;
    dsPart: TDataSource;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    ed01: TDBEdit;
    ed02: TDBEdit;
    lcb03: TDBLookupComboBox;
    ods03: TOracleDataSet;
    ods03T011_ID: TFloatField;
    ods03T011_TYPE_ID: TFloatField;
    ods03T011_OPERATION_DESC: TStringField;
    ds03: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox7: TGroupBox;
    Label9: TLabel;
    fm04_LookUp1: Tfm04_LookUp;
    DBMemo1: TDBMemo;
    oqMaxNum: TOracleQuery;
    dt01: TDBDateEdit;
    Label2: TLabel;
    lcbPayCurr: TxxxDBLookupCheckCombo;
    odsPayCurr: TOracleDataSet;
    dsPayCurr: TDataSource;
    Label4: TLabel;
    lcbCurr: TxxxDBLookupCheckCombo;
    odsCurr: TOracleDataSet;
    dsCurr: TDataSource;
    GroupBox8: TGroupBox;
    Label6: TLabel;
    edIssuerName: TDBEdit;
    Label8: TLabel;
    lcbIssuerCountry: TxxxDBLookupCheckCombo;
    odsIssuerCountry: TOracleDataSet;
    dsIssuerCountry: TDataSource;
    Label11: TLabel;
    lcbIssuerType: TxxxDBLookupCheckCombo;
    odsIssuerType: TOracleDataSet;
    dsIssuerType: TDataSource;
    Label12: TLabel;
    lcbSecType: TxxxDBLookupCheckCombo;
    Label13: TLabel;
    edSecRegn: TDBEdit;
    odsSecType: TOracleDataSet;
    dsSecType: TDataSource;
    GroupBox9: TGroupBox;
    Label14: TLabel;
    edCustName: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    lcbCustType: TxxxDBLookupCheckCombo;
    edCustInn: TDBEdit;
    odsCustType: TOracleDataSet;
    dsCustType: TDataSource;
    GroupBox10: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    edSellName: TDBEdit;
    lcbSellType: TxxxDBLookupCheckCombo;
    edSellInn: TDBEdit;
    odsSellType: TOracleDataSet;
    dsSellType: TDataSource;
    edRowNum: TDBEdit;
    procedure lcbPeriodCloseUp(Sender: TObject);
    procedure lcbPartCloseUp(Sender: TObject);
  private
    FOldPartId: Double;
    FOldRowNum: Double;
    //
    procedure SetMaxNum;
  public
    procedure InitFrame(Sender: TObject);  override;
    procedure SetDataSource(Value: TDataSource); override;
    function CheckValues: Boolean; override;
  end;

var
  L001_SumListEdit: TL001_SumListEdit;

implementation

uses
  untMessages, frm30_EmissionListForm;

{$R *.DFM}

{ TL001_SumListEdit }

procedure TL001_SumListEdit.InitFrame(Sender: TObject);
begin
  odsPeriod.Close;
  odsPeriod.SetVariable('T002_BANK_CODE', DataSource.DataSet['T002_BANK_CODE']);
  odsPeriod.Open;
//  odsPeriod.Last;
//  if lcbPeriod.DataSource.DataSet.FieldByName(lcbPeriod.DataField).IsNull then
//    lcbPeriod.KeyValue := odsPeriod.FieldByName(lcbPeriod.KeyField).Value;

  odsPart.Close;
  odsPart.SetVariable('T055_ID', DataSource.DataSet['T055_ID']);
  odsPart.SetVariable('part_no', DataSource.DataSet.FieldByName('T001_PART_ID').AsFloat);
  odsPart.Open;

  ods03.Close;
  ods03.Open;

  odsPayCurr.Close;
  odsPayCurr.Open;

  odsCurr.Close;
  odsCurr.Open;

//  fm05_Emission.FSearchBy := tsbIsin;
//  fm05_Emission.FSecTypes := tstPart2; // “олько типы ц.б. раздела 2
//  fm05_Emission.odsSelect.Close;
//  fm05_Emission.odsSelect.Open;

  odsIssuerCountry.Close;
  odsIssuerCountry.Open;

  odsIssuerType.Close;
  odsIssuerType.Open;

  odsSecType.Close;
  odsSecType.Open;

  odsCustType.Close;
  odsCustType.Open;

  odsSellType.Close;
  odsSellType.Open;

  fm04_LookUp1.odsList.Close;
  fm04_LookUp1.odsList.Open;

  // «начени€ по умолчанию дл€ вставки новой записи
  if EditType = etInsert then
    begin

    end;

  FOldPartId := DataSource.DataSet.FieldByName('T001_PART_ID').AsFloat;
  FOldRowNum := DataSource.DataSet.FieldByName('T001_ROW_NUM').AsFloat;

  inherited;
end;

procedure TL001_SumListEdit.SetDataSource(Value: TDataSource);
begin
  inherited;

  lcbPeriod.DataSource := Value;
  lcbPeriod.DataField := 'T002_ID';

  dt01.DataSource := Value;
  dt01.DataField := 'T001_DATE_OP';

  edRowNum.DataSource := Value;
  edRowNum.DataField := 'T001_ROW_NUM';

  lcbPart.DataSource := Value;
  lcbPart.DataField := 'T001_PART_ID';

  lcb03.DataSource := Value;
  lcb03.DataField := 'T001_OP_ID';

  ed01.DataSource := Value;
  ed01.DataField := 'T001_OP_COUNT';

  lcbPayCurr.DataSource := Value;
  lcbPayCurr.DataField := 'T001_OP_CR_ID';

  ed02.DataSource := Value;
  ed02.DataField := 'T001_OP_SUM';

  lcbCurr.DataSource := Value;
  lcbCurr.DataField := 'T001_CR_ID';

  edIssuerName.DataSource := Value;
  edIssuerName.DataField := 'ISSUER_NAME';

  lcbIssuerCountry.DataSource := Value;
  lcbIssuerCountry.DataField := 'ISSUER_COUNTRY_ID';

  lcbIssuerType.DataSource := Value;
  lcbIssuerType.DataField := 'ISSUER_TYPE';

  lcbSecType.DataSource := Value;
  lcbSecType.DataField := 'T027_SEC_TYPE';

  edSecRegn.DataSource := Value;
  edSecRegn.DataField := 'T026_SEC_REGN';

  edCustName.DataSource := Value;
  edCustName.DataField := 'CUST_NAME';

  edCustInn.DataSource := Value;
  edCustInn.DataField := 'CUST_INN';

  lcbCustType.DataSource := Value;
  lcbCustType.DataField := 'CUST_TYPE_ID';

  edSellName.DataSource := Value;
  edSellName.DataField := 'SELL_NAME';

  edSellInn.DataSource := Value;
  edSellInn.DataField := 'SELL_INN';

  lcbSellType.DataSource := Value;
  lcbSellType.DataField := 'SELL_TYPE_ID';

  fm04_LookUp1.Lookup01.DataSource := Value;
  fm04_LookUp1.Lookup01.DataField := 'T001_INV_TYPE';

  DBMemo1.DataSource := Value;
  DBMemo1.DataField := 'T001_DPB_COMMENT';
end;

procedure TL001_SumListEdit.lcbPeriodCloseUp(Sender: TObject);
begin
  DataSource.DataSet['T055_ID'] := odsPeriod['T055_ID'];

  odsPart.Close;
  odsPart.SetVariable('T055_ID', odsPeriod['T055_ID']);
  odsPart.Open;

  SetMaxNum;
end;

procedure TL001_SumListEdit.lcbPartCloseUp(Sender: TObject);
begin
  if lcbPart.KeyValue = FOldPartId then
    begin
    DataSource.DataSet.FieldByName('T001_PART_ID').AsFloat := FOldRowNum;
    end
  else
    SetMaxNum;
end;

procedure TL001_SumListEdit.SetMaxNum;
begin
  oqMaxNum.SetVariable('T002_ID', lcbPeriod.KeyValue);
  oqMaxNum.SetVariable('T001_PART_ID', lcbPart.KeyValue);
  oqMaxNum.Execute;
  DataSource.DataSet.FieldByName('T001_ROW_NUM').AsFloat := oqMaxNum.Field('MAXNUM');
end;

function TL001_SumListEdit.CheckValues: Boolean;
begin
  if lcbPeriod.DataSource.DataSet.FieldByName(lcbPeriod.DataField).IsNull then
    begin
    if lcbPeriod.CanFocus then lcbPeriod.SetFocus;
    TAppMessages.Error('”кажите отчетный период.');
    end;

  if dt01.DataSource.DataSet.FieldByName(dt01.DataField).IsNull then
    begin
    if dt01.CanFocus then dt01.SetFocus;
    TAppMessages.Error('”кажите дату операции.');
    end;

  if lcbPart.DataSource.DataSet.FieldByName(lcbPart.DataField).IsNull then
    begin
    if lcbPart.CanFocus then lcbPart.SetFocus;
    TAppMessages.Error('”кажите номер раздела.');
    end;

  if edRowNum.Text = '' then
    begin
    if edRowNum.CanFocus then edRowNum.SetFocus;
    TAppMessages.Error('”кажите номер строки.');
    end;

  if lcb03.DataSource.DataSet.FieldByName(lcb03.DataField).IsNull then
    begin
    if lcb03.CanFocus then lcb03.SetFocus;
    TAppMessages.Error('”кажите код операции.');
    end;

  if ed01.DataSource.DataSet.FieldByName(ed01.DataField).IsNull then
    begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('”кажите количество ц.б.');
    end;

  if lcbPayCurr.DataSource.DataSet.FieldByName(lcbPayCurr.DataField).IsNull then
    begin
    if lcbPayCurr.CanFocus then lcbPayCurr.SetFocus;
    TAppMessages.Error('”кажите код валюты платежа.');
    end;

  if ed02.DataSource.DataSet.FieldByName(ed02.DataField).IsNull then
    begin
    if ed02.CanFocus then ed02.SetFocus;
    TAppMessages.Error('”кажите сумму платежа.');
    end;

  if lcbCurr.DataSource.DataSet.FieldByName(lcbCurr.DataField).IsNull then
    begin
    if lcbCurr.CanFocus then lcbCurr.SetFocus;
    TAppMessages.Error('”кажите код валюты ц.б.');
    end;

  if edIssuerName.DataSource.DataSet.FieldByName(edIssuerName.DataField).IsNull then
    begin
    if edIssuerName.CanFocus then edIssuerName.SetFocus;
    TAppMessages.Error('”кажите название эмитента.');
    end;

  if lcbIssuerCountry.DataSource.DataSet.FieldByName(lcbIssuerCountry.DataField).IsNull then
    begin
    if lcbIssuerCountry.CanFocus then lcbIssuerCountry.SetFocus;
    TAppMessages.Error('”кажите страну эмитента.');
    end;

  if lcbIssuerType.DataSource.DataSet.FieldByName(lcbIssuerType.DataField).IsNull then
    begin
    if lcbIssuerType.CanFocus then lcbIssuerType.SetFocus;
    TAppMessages.Error('”кажите тип эмитента.');
    end;

  if lcbSecType.DataSource.DataSet.FieldByName(lcbSecType.DataField).IsNull then
    begin
    if lcbSecType.CanFocus then lcbSecType.SetFocus;
    TAppMessages.Error('”кажите тип ц.б.');
    end;

  if edSecRegn.DataSource.DataSet.FieldByName(edSecRegn.DataField).IsNull then
    begin
    if edSecRegn.CanFocus then edSecRegn.SetFocus;
    TAppMessages.Error('”кажите регистрационный номер ц.б.');
    end;

  if edCustName.DataSource.DataSet.FieldByName(edCustName.DataField).IsNull then
    begin
    if edCustName.CanFocus then edCustName.SetFocus;
    TAppMessages.Error('”кажите название покупател€.');
    end;

  if edCustInn.DataSource.DataSet.FieldByName(edCustInn.DataField).IsNull then
    begin
    if edCustInn.CanFocus then edCustInn.SetFocus;
    TAppMessages.Error('”кажите код покупател€.');
    end;

  if lcbCustType.DataSource.DataSet.FieldByName(lcbCustType.DataField).IsNull then
    begin
    if lcbCustType.CanFocus then lcbCustType.SetFocus;
    TAppMessages.Error('”кажите тип покупател€.');
    end;

  if edSellName.DataSource.DataSet.FieldByName(edSellName.DataField).IsNull then
    begin
    if edSellName.CanFocus then edSellName.SetFocus;
    TAppMessages.Error('”кажите название продавца.');
    end;

  if edSellInn.DataSource.DataSet.FieldByName(edSellInn.DataField).IsNull then
    begin
    if edSellInn.CanFocus then edSellInn.SetFocus;
    TAppMessages.Error('”кажите код продавца.');
    end;

  if lcbSellType.DataSource.DataSet.FieldByName(lcbSellType.DataField).IsNull then
    begin
    if lcbSellType.CanFocus then lcbSellType.SetFocus;
    TAppMessages.Error('”кажите тип продавца.');
    end;

  if fm04_LookUp1.Lookup01.DataSource.DataSet.FieldByName(fm04_LookUp1.Lookup01.DataField).IsNull then
    begin
    if fm04_LookUp1.Lookup01.CanFocus then fm04_LookUp1.Lookup01.SetFocus;
    TAppMessages.Error('”кажите тип инвестировани€.');
    end;

  // устанавливаем дополнительные значени€ полей
  DataSource.DataSet['T001_ROW_PREFIX'] := StrToInt(lcbPart.Text[1]);
  DataSource.DataSet['T001_ROW_PRFX'] := lcbPart.Text;

  Result := True;
end;

end.
