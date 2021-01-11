unit L001_SumListFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm010_FilteredGridFrame, Oracle, Menus, Db, OracleData, ActnList,
  fm031_FilterFrame, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, fm000_Parent, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, fm033_PeriodFilterFrame, L001_PeriodFilterFrame,
  L001_BankFilterFrame, L001_OpCodeFilterFrame, L001_SecTypeFilterFrame,
  Mask, DBCtrls, fm002_EditFrame;

type
  TL001_SumList = class(TfmFilteredGrid)
    PeriodFilter: TL001_PeriodFilter;
    BankFilter: TL001_BankFilter;
    OpCodeFilter: TL001_OpCodeFilter;
    SecTypeFilter: TL001_SecTypeFilter;
    paBottom: TPanel;
    Label1: TLabel;
    cbCalcAll: TCheckBox;
    Label3: TLabel;
    odsListT002_ID: TFloatField;
    odsListT001_ID: TFloatField;
    odsListT001_PART_ID: TFloatField;
    odsListT001_ROW_PRFX: TStringField;
    odsListT001_ROW_NUM: TIntegerField;
    odsListT001_DATE_OP: TDateTimeField;
    odsListT001_OP_ID: TFloatField;
    odsListT011_TYPE_ID: TFloatField;
    odsListT001_OP_COUNT: TFloatField;
    odsListT001_PERCENT: TFloatField;
    odsListT001_OP_CR_DESC: TStringField;
    odsListT001_OP_SUM: TFloatField;
    odsListT001_OP_SUM_CROSS: TFloatField;
    odsListCUST_NAME: TStringField;
    odsListCUST_INN: TStringField;
    odsListCUST_TYPE: TStringField;
    odsListSELL_NAME: TStringField;
    odsListSELL_INN: TStringField;
    odsListSELL_TYPE: TStringField;
    odsListT027_SEC_TYPE: TStringField;
    odsListT001_CR_DESC: TStringField;
    odsListT001_COMMENT: TStringField;
    odsListT001_N8: TFloatField;
    odsListT001_N9: TFloatField;
    odsListT001_11: TFloatField;
    odsListT001_N99: TFloatField;
    odsListT001_10: TFloatField;
    odsListT002_NUMB_IN_YEA_DESC: TStringField;
    odsListT002_BANK_CODE: TStringField;
    odsListT002_BANK_NAME: TStringField;
    odsListT001_OP_YEAR: TStringField;
    odsListT001_OP_MONTH: TStringField;
    odsListT001_PRICE_USD: TFloatField;
    odsListT001_PRICE: TFloatField;
    odsListT001_MOD_OP_SUM_CROSS: TFloatField;
    odsListT001_INV_TYPE_DESCR: TStringField;
    odsListT001_REPO_DATE: TDateTimeField;
    odsListT001_DPB_COMMENT: TStringField;
    odsListC22_NAME: TStringField;
    odsListT055_ID: TFloatField;
    odsListT027_ID: TFloatField;
    odsCount: TOracleDataSet;
    dsCount: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    odsCountCOUNT_STR: TFloatField;
    odsCountOPS_SUM_CROSS: TFloatField;
    odsCountOPS_COUNT: TFloatField;
    odsListT001_OP_CR_ID: TStringField;
    odsListT001_CR_ID: TStringField;
    odsListT030_ID: TFloatField;
    odsListOP_TYPE_ERR: TFloatField;
    odsListSEC_TYPE_ERR: TFloatField;
    odsListT001_INV_TYPE: TIntegerField;
    odsListCUST_NAME_ERR: TFloatField;
    odsListSELL_NAME_ERR: TFloatField;
    oqMaxNum: TOracleQuery;
    odsListT001_ROW_PREFIX: TIntegerField;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    actInfo: TAction;
    ToolButton1: TToolButton;
    ToolButton4: TToolButton;
    actClone: TAction;
    oqClone: TOracleQuery;
    odsListT001_OWN_OPER: TIntegerField;
    odsListT026_SEC_REGN: TStringField;
    odsListCUST_TYPE_ID: TFloatField;
    odsListSELL_TYPE_ID: TFloatField;
    odsListISSUER_NAME: TStringField;
    odsListISSUER_COUNTRY_ID: TStringField;
    odsListISSUER_COUNTRY: TStringField;
    odsListISSUER_TYPE: TFloatField;
    odsListT012_ID_CUST: TFloatField;
    odsListT012_ID_SELL: TFloatField;
    procedure odsListAfterOpen(DataSet: TDataSet);
    procedure cbCalcAllClick(Sender: TObject);
    procedure xxxDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actInfoUpdate(Sender: TObject);
    procedure actInfoExecute(Sender: TObject);
    procedure actCloneUpdate(Sender: TObject);
    procedure actCloneExecute(Sender: TObject);
    procedure actAddUpdate(Sender: TObject);
  private
    procedure RefreshCountData;
  protected
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;

    procedure SetDefValues; override;

    function GetMatrixAddName: string; override;
    function GetMatrixUpdName: string; override;
    function GetMatrixDelName: string; override;

    function GetKeyFieldName: string; override;
  public
    function GetEditClass: TfmEditClass; override;
    procedure InitFrame(Sender: TObject); override;
  end;

var
  L001_SumList: TL001_SumList;

implementation

uses
  dm000_ObjectsFactory, unt007_LinksList, dm005_MainData, Matrix, A00_MatrixConst,
  L001_SumListEditFrame, frm106_DataSourceForm;

{$R *.DFM}

{ TL001_SumList }

procedure TL001_SumList.InitFrame(Sender: TObject);
begin
  PeriodFilter.InitFrame(Self);
  BankFilter.InitFrame(Self);
  OpCodeFilter.InitFrame(Self);
  SecTypeFilter.InitFrame(Self);

  // ������
  ObjectsFactory.Links.LinkLookUp2Condition(
    ctNumBetween,
    PeriodFilter,
    Self,
    'T055_ID',
    ltNoRefresh
    );

  // ��
  ObjectsFactory.Links.LinkLookUpCondition(
    ctStrEqual,
    BankFilter,
    Self,
    'T002_BANK_CODE',
    ltNoRefresh
    );

  // ��� ��������
  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumEqual,
    OpCodeFilter,
    Self,
    'T001_OP_ID',
    ltNoRefresh
    );

  // ��� �.�.
  ObjectsFactory.Links.LinkLookUpCondition(
    ctNumEqual,
    SecTypeFilter,
    Self,
    'T027_ID',
    ltNoRefresh
    );

  inherited;
end;

function TL001_SumList.GetKeyFieldName: string;
begin
  Result := 'T001_ID';
end;

procedure TL001_SumList.RefreshCountData;
const
  SQL_TEXT =
    'SELECT count(*) AS COUNT_STR,' + #13#10 +
    '       SUM(T001_OP_COUNT) OPS_COUNT,' + #13#10 +
    '       SUM(T001_OP_SUM_CROSS) OPS_SUM_CROSS' + #13#10 +
    'FROM   (%S)';
var
  i: Integer;
begin
  odsCount.Close;
  if cbCalcAll.Checked then
    begin
    odsCount.SQL.Text := Format(SQL_TEXT, [odsList.Sql.Text]);
    for i := 0 to odsList.VariableCount - 1 do
      begin
      odsCount.SetVariable(odsList.VariableName(i), odsList.GetVariable(i));
      end;
    odsCount.Open;
    end;
end;

procedure TL001_SumList.odsListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  RefreshCountData;
end;

procedure TL001_SumList.cbCalcAllClick(Sender: TObject);
begin
  RefreshCountData;
end;

procedure TL001_SumList.xxxDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  VSTATE: array[Boolean] of Cardinal = (0, DFCS_CHECKED);
var
  VRect: TRect;
begin
  inherited;

  if (Column.Field.FieldName = 'T001_10')             // �����
  or (Column.Field.FieldName = 'T001_N9')             // ����������
  or (Column.Field.FieldName = 'T001_OWN_OPER') then  // ������. ���
    begin
    VRect := Rect;
    VRect.Top := VRect.Top + 1;
    VRect.Bottom := VRect.Bottom - 1;
    xxxDBGrid.Canvas.FillRect(Rect);
    DrawFrameControl(
      xxxDBGrid.Canvas.Handle,
      VRect,
      DFC_BUTTON,
      DFCS_BUTTONCHECK or
      VState[Column.Field.AsInteger = 1] or
      DFCS_FLAT
      );
    Exit;
    end;

  if ((Column.Field.FieldName = 'T011_TYPE_ID') and (odsListOP_TYPE_ERR.AsFloat = 1)) or
     ((Column.Field.FieldName = 'T027_SEC_TYPE') and (odsListSEC_TYPE_ERR.AsFloat = 1)) or
     ((Column.Field.FieldName = 'CUST_NAME') and (odsListCUST_NAME_ERR.AsFloat = 1)) or
     ((Column.Field.FieldName = 'SELL_NAME') and (odsListSELL_NAME_ERR.AsFloat = 1)) then
    begin
    xxxDbGrid.Canvas.Brush.Color := clYellow;
//    xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
   // ������� ��� �� ���.�
   else if (Column.Field.FieldName = 'CUST_INN') then
     begin
     if Pos('* ������ ��� ����������', odsListT001_DPB_COMMENT.AsString) <> 0 then
       xxxDbGrid.Canvas.Brush.Color := clYellow;
//     xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end
   else if (Column.Field.FieldName = 'SELL_INN') then
     begin
     if Pos('* ������ ��� ��������', odsListT001_DPB_COMMENT.AsString) <> 0 then
       xxxDbGrid.Canvas.Brush.Color := clYellow;
//     xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

  xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

function TL001_SumList.GetMatrixAddName: string;
begin
  Result := ADD_DATA_1;
end;

function TL001_SumList.GetMatrixUpdName: string;
begin
  Result := CHANGE_DATA_1;
end;

function TL001_SumList.GetMatrixDelName: string;
begin
  Result := DELETE_DATA_1;
end;

function TL001_SumList.GetEditClass: TfmEditClass;
begin
  Result := TL001_SumListEdit;
end;

procedure TL001_SumList.DoInsert;
begin
{
T001_ID - ID ������ (����������� ���������)
* T002_ID - ID ��������� ������
* T001_PART_ID - ID �������
* T001_ROW_PREFIX ����� ������� �� ������ �����
* T001_ROW_PRFX ����� �������/����������
* T001_ROW_NUM - ����� ������
* T001_DATE_OP - ���� ��������
* T001_OP_ID - ��� �������� (T011_ID)
* T001_OP_COUNT - ���������� �.�.
T001_OP_PAY_ID - ��� (����������� �������)
* T001_OP_CR_ID - ��� ������ ������� (�������� � ������)
* T001_OP_SUM - ����� ������� � ������ �������
T001_OP_PROC - ��� (��������)
T001_DATE_ON - ��� (���� �����������)
T001_DATE_OFF - ��� (���� ���������)
* T001_CR_ID - ��� ������ �.�. (�������� � ������)
T030_ID - ID �.�. - ���, ��������� ���������� ������
* T012_ID_CUST - ID ����������
* T012_ID_SELL - ID ��������
* T001_INV_TYPE - ��� ��������������
* T001_DPB_COMMENT - ����������� ���

* T001_PROCESSED - ������������� � 2 (�� �������� � ������� ������� ������������)
* T001_REMAINS_TYPE - ������������� � 0 (�� ������� � ������� ��������)

T035_ID - ID ��������� �������� (��������� ������, ���������, ��������, �� ���������) (����������� ��������� �� INSERT � "��������� ������")
T001_CR_DESC - ��� ������ �.�. (����) (����������� ���������)
T001_OP_CR_DESC - ��� ������ ������� (����) (����������� ���������)
T001_N8 - ��� (����)
T001_N9 - ��� (���������)
T001_10 - ����� (�� �����)
T001_11 - ��� (������)
T001_OP_SUM_CROSS - (������������ � �������� ��� ������� ������)
T001_OP_PROC_CROSS - ��� (�.�. ��� ���������)
T001_IS_RANSOM - ������� ������ ��������� (����������� ���������)
T001_CURSE - ���� ������ ������� �� ���� �������� (����������� ���������)
T001_N99 - ��� (���������)
T001_COMMENT - ����������
T001_C11 - ��� (���������� - �������� ����� �����������)
T001_C12 - ��� (���������� - ��� ������ ����� �����������)
T001_C16 - ��� (���������� - �������� �����������)
T001_C17 - ��� (���������� - ��� ������ �����������)
T001_C18 - ��� (��� ��������������� ����� (�� 01.04.2018))
T001_C19 - ��� (��� SWIFT ����� ����������� (�� 01.04.2018))
T001_C20 - ��� (��� ������ ����� ����������� (�� 01.04.2018))
T001_OP_SUM_RUB - (����������� � ������� ��������)
T001_REPO_TYPE - ��� - ��� ���� (����������� ��������� � "�� ����")
T001_OTHER - ��� (���� "������ �������" ��� SHS3 � SHS4)
T001_OTHER_PROC - ��� (������ ������ ��� ������ ����� ���� shs3, shs4)
IS_FIRST - ��� �������: Y - ��������� �����, N - ��������� ����� (�������� ��������� �� ��������� �����)
T001_NR_INV_TYPE - ���
T001_DATA_SOURCE - ��� (�������� ���������)
T055_DATE_ID - ��� (�������� ���������)
T055_HEADER_ID - ��� (�������� ���������)
T027_MAIN_ID - ��� (�������� ���������)
T028_MAIN_ID - ��� (�������� ���������)
T030_MAIN_ID - ��� (�������� ���������)
T027_ID - ��� (�������� ���������)
T028_ID - ��� (�������� ���������)
T028_IS_LINK - ��� (�������� ���������)
T030_IS_LINK - ��� (�������� ���������)
T001_RATE -���
T001_REPO_DATE -���
T105_ID - ��� - ��� ���� �������� �������� (��� ������ ����������� � 176 (�� ���������))
T001_PERCENT - ���
T001_DR_COUNT - ���
T001_DR_COUNT_STATE - ���
T001_DATE_OP_BACK - ���
T001_DR_COUNT_SRC - ���
}

  oqAdd.SetVariable('T002_ID', odsList['T002_ID']);  // lcbPeriod
  oqAdd.SetVariable('T001_PART_ID', odsList['T001_PART_ID']);  // lcbPart
  oqAdd.SetVariable('T001_ROW_PREFIX', odsList['T001_ROW_PREFIX']); // lcbPart - CheckValues
  oqAdd.SetVariable('T001_ROW_PRFX', odsList['T001_ROW_PRFX']); // lcbPart - CheckValues
  oqAdd.SetVariable('T001_ROW_NUM', odsList['T001_ROW_NUM']); // med01 - CheckValues
  oqAdd.SetVariable('T001_DATE_OP', odsList['T001_DATE_OP']);  // dt01
  oqAdd.SetVariable('T001_OP_ID', odsList['T001_OP_ID']); // lcb03
  oqAdd.SetVariable('T001_OP_COUNT', odsList['T001_OP_COUNT']); // ed01
//--  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;
  oqAdd.SetVariable('T001_OP_PAY_ID', -1); // ��� ����������� ������� �� ������
  oqAdd.SetVariable('T001_OP_CR_ID', odsList['T001_OP_CR_ID']); // lcbPayCurr
  oqAdd.SetVariable('T001_OP_SUM', odsList['T001_OP_SUM']); // ed02
//--  v_rec.T001_OP_PROC := :T001_OP_PROC;
//--  v_rec.T001_DATE_ON := :T001_DATE_ON;
//--  v_rec.T001_DATE_OFF := :T001_DATE_OFF;
  oqAdd.SetVariable('T001_CR_ID', odsList['T001_CR_ID']); // lcbCurr
  oqAdd.SetVariable('T001_INV_TYPE', odsList['T001_INV_TYPE']); // fm04_LookUp1.Lookup01
  oqAdd.SetVariable('T001_DPB_COMMENT', odsList['T001_DPB_COMMENT']); // DBMemo1
//--  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;
  oqAdd.SetVariable('T001_PROCESSED', 2); // ��������� �� ������� ������������
  oqAdd.SetVariable('T001_REMAINS_TYPE', 0); // �� ������� � ������� ��������
  // �������
//--  oqAdd.SetVariable('T030_ID', odsList['T030_ID']); // fm05_Emission.lcbSelect
  oqAdd.SetVariable('ISSUER_NAME', odsList['ISSUER_NAME']); // edIssuerName
  oqAdd.SetVariable('ISSUER_COUNTRY_ID', odsList['ISSUER_COUNTRY_ID']); // lcbIssuerCountry
  oqAdd.SetVariable('ISSUER_TYPE', odsList['ISSUER_TYPE']); // lcbIssuerType
  oqAdd.SetVariable('T027_SEC_TYPE', odsList['T027_SEC_TYPE']); // lcbSecType
  oqAdd.SetVariable('T026_SEC_REGN', odsList['T026_SEC_REGN']); // edSecRegn
  // ����������
//  oqAdd.SetVariable('T012_ID', odsList['T012_ID']); // fm10_Customer.odsSelect
  oqAdd.SetVariable('CUST_NAME', odsList['CUST_NAME']); // edCustName
  oqAdd.SetVariable('CUST_INN', odsList['CUST_INN']); // edCustInn
  oqAdd.SetVariable('CUST_TYPE_ID', odsList['CUST_TYPE_ID']); //lcbCustType
  // ��������
//  oqAdd.SetVariable('T013_ID', odsList['T013_ID']); // fm10_Seller.lcbSelect
  oqAdd.SetVariable('SELL_NAME', odsList['SELL_NAME']); // edSellName
  oqAdd.SetVariable('SELL_INN', odsList['SELL_INN']); // edSellInn
  oqAdd.SetVariable('SELL_TYPE_ID', odsList['SELL_TYPE_ID']); //lcbSellType

  oqAdd.SetVariable('USER', dmMain.GetUser);

  oqAdd.Execute;

  odsList['T001_ID'] := oqAdd.GetVariable('T001_ID');
end;

procedure TL001_SumList.DoEdit;
begin
  oqUpdate.SetVariable('T001_ID', odsList['T001_ID']); // ������� �� ������
  oqUpdate.SetVariable('T002_ID', odsList['T002_ID']);  // lcbPeriod
  oqUpdate.SetVariable('T001_PART_ID', odsList['T001_PART_ID']);  // lcbPart
  oqUpdate.SetVariable('T001_ROW_PREFIX', odsList['T001_ROW_PREFIX']); // lcbPart - CheckValues
  oqUpdate.SetVariable('T001_ROW_PRFX', odsList['T001_ROW_PRFX']); // lcbPart - CheckValues
  oqUpdate.SetVariable('T001_ROW_NUM', odsList['T001_ROW_NUM']); // med01 - CheckValues
  oqUpdate.SetVariable('T001_DATE_OP', odsList['T001_DATE_OP']);  // dt01
  oqUpdate.SetVariable('T001_OP_ID', odsList['T001_OP_ID']); // lcb03
  oqUpdate.SetVariable('T001_OP_COUNT', odsList['T001_OP_COUNT']); // ed01
//--  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;
  oqUpdate.SetVariable('T001_OP_PAY_ID', -1); // ��� ����������� ������� �� ������ (� ���������� � �������� - ���������)
  oqUpdate.SetVariable('T001_OP_CR_ID', odsList['T001_OP_CR_ID']); // lcbPayCurr
  oqUpdate.SetVariable('T001_OP_SUM', odsList['T001_OP_SUM']); // ed02
//--  v_rec.T001_OP_PROC := :T001_OP_PROC;
//--  v_rec.T001_DATE_ON := :T001_DATE_ON;
//--  v_rec.T001_DATE_OFF := :T001_DATE_OFF;
  oqUpdate.SetVariable('T001_CR_ID', odsList['T001_CR_ID']); // lcbCurr
  oqUpdate.SetVariable('T001_INV_TYPE', odsList['T001_INV_TYPE']); // fm04_LookUp1.Lookup01
  oqUpdate.SetVariable('T001_DPB_COMMENT', odsList['T001_DPB_COMMENT']); // DBMemo1
//--  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;
  oqUpdate.SetVariable('T001_PROCESSED', 2); // ��������� �� ������� ������������
  oqUpdate.SetVariable('T001_REMAINS_TYPE', 0); // �� ������� � ������� ��������
  // �������
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']); // fm05_Emission.lcbSelect
  oqUpdate.SetVariable('ISSUER_NAME', odsList['ISSUER_NAME']); // edIssuerName
  oqUpdate.SetVariable('ISSUER_COUNTRY_ID', odsList['ISSUER_COUNTRY_ID']); // lcbIssuerCountry
  oqUpdate.SetVariable('ISSUER_TYPE', odsList['ISSUER_TYPE']); // lcbIssuerType
  oqUpdate.SetVariable('T027_SEC_TYPE', odsList['T027_SEC_TYPE']); // lcbSecType
  oqUpdate.SetVariable('T026_SEC_REGN', odsList['T026_SEC_REGN']); // edSecRegn
  // ����������
  oqUpdate.SetVariable('T012_ID_CUST', odsList['T012_ID_CUST']); // fm10_Customer.odsSelect
  oqUpdate.SetVariable('CUST_NAME', odsList['CUST_NAME']); // edCustName
  oqUpdate.SetVariable('CUST_INN', odsList['CUST_INN']); // edCustInn
  oqUpdate.SetVariable('CUST_TYPE_ID', odsList['CUST_TYPE_ID']); //lcbCustType
  // ��������
  oqUpdate.SetVariable('T012_ID_SELL', odsList['T012_ID_SELL']); // fm10_Seller.lcbSelect
  oqUpdate.SetVariable('SELL_NAME', odsList['SELL_NAME']); // edSellName
  oqUpdate.SetVariable('SELL_INN', odsList['SELL_INN']); // edSellInn
  oqUpdate.SetVariable('SELL_TYPE_ID', odsList['SELL_TYPE_ID']); //lcbSellType
  
  oqUpdate.SetVariable('USER', dmMain.GetUser);

  oqUpdate.Execute;
end;

procedure TL001_SumList.DoDelete;
begin
  // �������� ��������� �������� ������
  oqDelete.SetVariable('T001_ID', odsListT001_ID.AsFloat);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
end;

procedure TL001_SumList.SetDefValues;
begin
  // ��� ����� - ���� ���������� � �������, � �� 0, ������ ���, ���� ��� - NULL
  if BankFilter.cb.Checked then
    if BankFilter.KeyValueStr <> '0' then
       odsList['T002_BANK_CODE'] := BankFilter.KeyValue;

  // ������ - ���� ������ �������, � ������� '�' � '��' ����������, ������ ���, ���� ��� - ��������� NULL
//  if PeriodFilter.cb.Checked then
//    if PeriodFilter.KeyValueFloat = PeriodFilter.KeyValue2Float then
//      odsList['T002_ID'] := PeriodFilter.KeyValue2Float;

  // ����� ������� - �� ��������� ������ 2.1
  odsListT001_PART_ID.AsFloat := 6;
end;

procedure TL001_SumList.actInfoUpdate(Sender: TObject);
begin
  actInfo.Enabled := not odsList.FieldByName('T002_ID').IsNull;
end;

procedure TL001_SumList.actInfoExecute(Sender: TObject);
var
  SourceForm: Tfrm106_DataSource;
begin
  SourceForm := Tfrm106_DataSource.Create(Self);
  SourceForm.InitData(if405, odsList.FieldByName('T002_ID').AsFloat);
  SourceForm.ShowModal;
  SourceForm.Free;
end;

procedure TL001_SumList.actCloneUpdate(Sender: TObject);
begin
  if dmMain.UseMatrix then
    actClone.Enabled := not DataSet.IsEmpty and Matrix.MA.IsOperationPermitted(CHANGE_DATA_1, FALSE)
  else
    actClone.Enabled := not DataSet.IsEmpty;
end;

procedure TL001_SumList.actCloneExecute(Sender: TObject);
begin
  try
    dmMain.StartTransaction;

    // ��������� ������
    oqClone.SetVariable('T001_ID', odsList['T001_ID']);
    oqClone.Execute;
    dmMain.Commit;
  except
    on e:Exception do
    begin
      dmMain.Rollback;
      raise e;
    end;
  end;

  RefreshDataAfterChange;
  odsList.Locate('T001_ID', oqClone.GetVariable('T001_ID'), []);
end;

procedure TL001_SumList.actAddUpdate(Sender: TObject);
begin
  actAdd.Enabled := (not ReadOnly) and
                    (GetEditClass <> nil) and
                    ActionEnabled(GetMatrixAddName) and
                    BankFilter.cb.Checked and
                    (BankFilter.KeyValueStr <> '0');
end;

end.
