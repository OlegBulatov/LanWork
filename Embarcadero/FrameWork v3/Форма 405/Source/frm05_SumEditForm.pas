unit frm05_SumEditForm;

interface

uses
  frm04_EditForm, Db, OracleData, StdCtrls, DBCtrls,
  fm02_PrmParentFrame, fm04_LookUpFrame, fm05_EmissionFrame,
  fm11_NRezidFrame, fm10_RezidFrame, Mask, Forms, fm07_SelectParentFrame,
  fm12_CurrencyFrame, ComCtrls, DBDateTimePicker, Controls, Classes,
  ActnList, ExtCtrls, frm00_ParentForm, xxxDbLookupCheckCombo, Oracle;

//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  xxxDateEdit, dm005_MainData,
//  Buttons;

type
  Tfrm05_SumEdit = class(Tfrm04_Edit)
    ods02: TOracleDataSet;
    ds02: TDataSource;
    ods03: TOracleDataSet;
    ds03: TDataSource;
    ods04: TOracleDataSet;
    ds04: TDataSource;
    ods02T016_ID: TFloatField;
    ods02T016_BOND_ID: TStringField;
    ods02T016_BOND_DESC: TStringField;
    ods04T006_ID: TFloatField;
    ods04T006_NAME: TStringField;
    ods04T006_DESC: TStringField;
    ods03T011_ID: TFloatField;
    ods03T011_TYPE_ID: TFloatField;
    ods03T011_OPERATION_DESC: TStringField;
    odsPeriod: TOracleDataSet;
    dsPeriod: TDataSource;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    dt02: TDBDateTimePicker;
    Label18: TLabel;
    dt03: TDBDateTimePicker;
    Label23: TLabel;
    GroupBox2: TGroupBox;
    ed03: TDBEdit;
    ed01: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    ed02: TDBEdit;
    Label7: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    lcb03: TDBLookupComboBox;
    lcb04: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    dt01: TDBDateTimePicker;
    Label19: TLabel;
    lcbPeriod: TDBLookupComboBox;
    Label27: TLabel;
    cb01: TDBCheckBox;
    GroupBox5: TGroupBox;
    fm10_Rezid: Tfm10_Rezid;
    GroupBox6: TGroupBox;
    fm11_NRezid: Tfm11_NRezid;
    GroupBox3: TGroupBox;
    fm05_Emission: Tfm05_Emission;
    fm12_MainCurrency: Tfm12_Currency;
    fm12_OpCurrency: Tfm12_Currency;
    GroupBox7: TGroupBox;
    fm04_LookUp1: Tfm04_LookUp;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    cbProcessed: TDBCheckBox;
    odsPeriodT002_ID: TIntegerField;
    odsPeriodT002_BANK_CODE: TStringField;
    odsPeriodSUM_HEADER_DESC: TStringField;
    Label2: TLabel;
    lcbKO: TDBLookupComboBox;
    odsKO: TOracleDataSet;
    dsKO: TDataSource;
    odsKOREGN_NAME: TStringField;
    odsKOT002_BANK_CODE: TStringField;
    odsPeriodT055_ID: TFloatField;
    DBCheckBox1: TDBCheckBox;
    Label10: TLabel;
    lcbPart: TxxxDBLookupCheckCombo;
    odsPart: TOracleDataSet;
    dsPart: TDataSource;
    oqMaxNum: TOracleQuery;
    edRowNum: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure lcbKOCloseUp(Sender: TObject);
    procedure lcbPartCloseUp(Sender: TObject);
  private
    FBankCode: String;
    FT055_ID: Double;
    FOldPartId: Double;
    FOldRowNum: Double;
    //
    procedure SetMaxNum;
  protected
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
    //
    procedure SetDataSource(Value: TDataSource); override;
    function SaveChange: Boolean; override;
    function CancelChange: Boolean; override;
  public
    property T055_ID: Double read FT055_ID write FT055_ID;
    property BankCode: String read FBankCode write FBankCode;
  end;

var
  frm05_SumEdit: Tfrm05_SumEdit;

implementation

uses SysUtils, untMessages, frm05_SumListForm, frm30_EmissionListForm;

{$R *.DFM}

{ Tfrm05_SumEdit }

function Tfrm05_SumEdit.CancelChange: Boolean;
begin
  // отменяем изменения
  Result := frm05_SumList.CancelChange;
end;

class function Tfrm05_SumEdit.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm05_SumEdit;
end;

class function Tfrm05_SumEdit.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm05_SumEdit;
end;

function Tfrm05_SumEdit.SaveChange: Boolean;
begin
  // сохраняем изменения
  frm05_SumList.odsList['T001_PART_ID'] := lcbPart.KeyValue;
  frm05_SumList.odsList['T001_ROW_PREFIX'] := StrToInt(lcbPart.Text[1]);
//  frm05_SumList.odsList['T001_ROW_NUM'] := StrToInt(Trim(med01.Text));
  frm05_SumList.odsList['T001_ROW_PRFX'] := lcbPart.Text;

  if ed01.Field.AsFloat < 0 then
  begin
    if ed01.CanFocus then ed01.SetFocus;
    TAppMessages.Error('Кол-во ц.б. не может быть меньше нуля!');
  end;

  if ed02.Field.IsNull then
  begin
    if ed02.CanFocus then ed02.SetFocus;
    TAppMessages.Error('Укажите сумму платежа!');
  end;

  if ed03.Field.AsFloat < 0 then
  begin
    if ed03.CanFocus then ed03.SetFocus;
    TAppMessages.Error('Проценты не могут быть меньше нуля!');
  end;

  Result := frm05_SumList.SaveChange;
end;

class procedure Tfrm05_SumEdit.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm05_SumEdit) := AForm;
end;

procedure Tfrm05_SumEdit.FormShow(Sender: TObject);
begin
  fm05_Emission.FSearchBy := tsbSecRegn;
  fm05_Emission.FSecTypes := tstAll; // Все
  fm05_Emission.odsSelect.Close;
  fm05_Emission.odsSelect.Open;
  fm10_Rezid.odsSelect.Close;
  fm10_Rezid.odsSelect.Open;
  fm11_NRezid.odsSelect.Close;
  fm11_NRezid.odsSelect.Open;

  odsKO.Close;
  odsKO.Open;
  lcbKO.KeyValue := FBankCode;

  odsPeriod.Close;
  odsPeriod.SetVariable('T002_BANK_CODE', FBankCode);
  odsPeriod.Open;

  ods02.Close;
  ods02.Open;
  ods03.Close;
  ods03.Open;
  ods04.Close;
  ods04.Open;
  fm12_MainCurrency.odsSelect.Close;
  fm12_MainCurrency.odsSelect.Open;
  fm12_OpCurrency.odsSelect.Close;
  fm12_OpCurrency.odsSelect.Open;
  fm04_LookUp1.odsList.Close;
  fm04_LookUp1.odsList.Open;

  odsPart.Close;
  odsPart.SetVariable('T055_ID', FT055_ID);
  odsPart.SetVariable('part_no', frm05_SumList.odsListT001_PART_ID.AsFloat);
  odsPart.Open;
  lcbPart.KeyValue := frm05_SumList.DataSet.FieldByName('T001_PART_ID').AsFloat;

  FOldPartId := frm05_SumList.DataSet.FieldByName('T001_PART_ID').AsFloat;
  FOldRowNum := frm05_SumList.DataSet.FieldByName('T001_ROW_NUM').AsFloat;
end;

procedure Tfrm05_SumEdit.lcbKOCloseUp(Sender: TObject);
begin
  odsPeriod.Close;
  odsPeriod.SetVariable('T002_BANK_CODE', lcbKO.KeyValue);
  odsPeriod.Open;
  odsPeriod.Locate('T055_ID', FT055_ID, []);
  lcbPeriod.KeyValue := odsPeriod['T002_ID'];
  frm05_SumList.odsListT002_ID.AsFloat := lcbPeriod.KeyValue;
end;

procedure Tfrm05_SumEdit.lcbPartCloseUp(Sender: TObject);
begin
  if lcbPart.KeyValue = FOldPartId then
    begin
    frm05_SumList.DataSet.FieldByName('T001_ROW_NUM').AsFloat := FOldRowNum;
    end
  else
    SetMaxNum;
end;

procedure Tfrm05_SumEdit.SetMaxNum;
begin
  oqMaxNum.SetVariable('T002_ID', lcbPeriod.KeyValue);
  oqMaxNum.SetVariable('T001_PART_ID', lcbPart.KeyValue);
  oqMaxNum.Execute;
  frm05_SumList.DataSet.FieldByName('T001_ROW_NUM').AsFloat := oqMaxNum.Field('MAXNUM');
end;
  
procedure Tfrm05_SumEdit.SetDataSource(Value: TDataSource);
begin
  lcbKO.DataSource := Value;
  lcbKO.DataField := 'T002_BANK_CODE';

  lcbPeriod.DataSource := Value;
  lcbPeriod.DataField := 'T002_ID';

  dt01.DataSource := Value;
  dt01.DataField := 'T001_DATE_OP';

  lcbPart.DataSource := Value;
  lcbPart.DataField := 'T001_PART_ID';

  cb01.DataSource := Value;
  cb01.DataField := 'T001_IS_RANSOM';

  edRowNum.DataSource := Value;
  edRowNum.DataField := 'T001_ROW_NUM';

  lcb03.DataSource := Value;
  lcb03.DataField := 'T001_OP_ID';

  ed01.DataSource := Value;
  ed01.DataField := 'T001_OP_COUNT';

  lcb04.DataSource := Value;
  lcb04.DataField := 'T001_OP_PAY_ID';

  fm12_OpCurrency.lcbSelect.DataSource := Value;
  fm12_OpCurrency.lcbSelect.DataField := 'T001_OP_CR_ID';

  ed02.DataSource := Value;
  ed02.DataField := 'T001_OP_SUM';

  ed03.DataSource := Value;
  ed03.DataField := 'T001_OP_PROC';

  dt02.DataSource := Value;
  dt02.DataField := 'T001_DATE_ON';

  dt03.DataSource := Value;
  dt03.DataField := 'T001_DATE_OFF';

  fm12_MainCurrency.lcbSelect.DataSource := Value;
  fm12_MainCurrency.lcbSelect.DataField := 'T001_CR_ID';

  fm05_Emission.lcbSelect.DataSource := Value;
  fm05_Emission.lcbSelect.DataField := 'T030_ID';

  fm10_Rezid.lcbSelect.DataSource := Value;
  fm10_Rezid.lcbSelect.DataField := 'T012_ID';

  fm11_NRezid.lcbSelect.DataSource := Value;
  fm11_NRezid.lcbSelect.DataField := 'T013_ID';

  fm04_LookUp1.Lookup01.DataSource := Value;
  fm04_LookUp1.Lookup01.DataField := 'T001_INV_TYPE';

  DBCheckBox1.DataSource := Value;
  DBCheckBox1.DataField := 'IS_FIRST';

  cbProcessed.DataSource := Value;
  cbProcessed.DataField := 'T001_PROCESSED';

  DBMemo1.DataSource := Value;
  DBMemo1.DataField := 'T001_DPB_COMMENT';
end;

end.
