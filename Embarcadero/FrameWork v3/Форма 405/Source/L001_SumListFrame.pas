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
    'T002_BANK_CODE',
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

  // Тип ц.б.
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

  if (Column.Field.FieldName = 'T001_10')             // ПАКЕТ
  or (Column.Field.FieldName = 'T001_N9')             // РАСССРОЧКА
  or (Column.Field.FieldName = 'T001_OWN_OPER') then  // СОБСТВ. БУМ
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
   // заменен ИНН на Рег.№
   else if (Column.Field.FieldName = 'CUST_INN') then
     begin
     if Pos('* Замена ИНН покупателя', odsListT001_DPB_COMMENT.AsString) <> 0 then
       xxxDbGrid.Canvas.Brush.Color := clYellow;
//     xxxDBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end
   else if (Column.Field.FieldName = 'SELL_INN') then
     begin
     if Pos('* Замена ИНН продавца', odsListT001_DPB_COMMENT.AsString) <> 0 then
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
T001_ID - ID записи (установится триггером)
* T002_ID - ID заголовка отчета
* T001_PART_ID - ID раздела
* T001_ROW_PREFIX номер раздела до первой точки
* T001_ROW_PRFX номер раздела/подраздела
* T001_ROW_NUM - номер строки
* T001_DATE_OP - дата операции
* T001_OP_ID - код операции (T011_ID)
* T001_OP_COUNT - количество ц.б.
T001_OP_PAY_ID - нет (направление платежа)
* T001_OP_CR_ID - код валюты платежа (цифровой в тексте)
* T001_OP_SUM - сумма платежа в валюте платежа
T001_OP_PROC - нет (проценты)
T001_DATE_ON - нет (дата регистрации)
T001_DATE_OFF - нет (дата погашения)
* T001_CR_ID - код валюты ц.б. (цифровой в тексте)
T030_ID - ID ц.б. - нет, создается процедурой записи
* T012_ID_CUST - ID покупателя
* T012_ID_SELL - ID продавца
* T001_INV_TYPE - тип инвестирования
* T001_DPB_COMMENT - комментарий ДПБ

* T001_PROCESSED - устанавливаем в 2 (не включать в расчеты Участие нерезидентов)
* T001_REMAINS_TYPE - устанавливаем в 0 (не считать в расчете остатков)

T035_ID - ID состояния операции (требуется оценка, фиктивная, реальная, не оценивать) (установится триггером на INSERT в "требуется оценка")
T001_CR_DESC - код валюты ц.б. (букв) (установится триггером)
T001_OP_CR_DESC - код валюты платежа (букв) (установится триггером)
T001_N8 - нет (МЕНА)
T001_N9 - нет (РАССРОЧКА)
T001_10 - ПАКЕТ (не нужно)
T001_11 - нет (БРОКЕР)
T001_OP_SUM_CROSS - (рассчитается в триггере или функции записи)
T001_OP_PROC_CROSS - нет (т.к. нет процентов)
T001_IS_RANSOM - признак выкупа эмитентом (установится триггером)
T001_CURSE - курс валюты платежа на дату операции (установится триггером)
T001_N99 - нет (ИМУЩЕСТВО)
T001_COMMENT - примечание
T001_C11 - нет (контрагент - название банка нерезидента)
T001_C12 - нет (контрагент - код страны банка нерезидента)
T001_C16 - нет (контрагент - название нерезидента)
T001_C17 - нет (контрагент - код страны нерезидента)
T001_C18 - нет (БИК уполномоченного банка (до 01.04.2018))
T001_C19 - нет (код SWIFT банка нерезидента (до 01.04.2018))
T001_C20 - нет (код страны банка нерезидента (до 01.04.2018))
T001_OP_SUM_RUB - (установится в расчете остатков)
T001_REPO_TYPE - нет - тип РЕПО (установится триггером в "не РЕПО")
T001_OTHER - нет (Флаг "Другие платежи" для SHS3 и SHS4)
T001_OTHER_PROC - нет (Ставка налога для прочих бумаг типа shs3, shs4)
IS_FIRST - нет Признак: Y - первичный рынок, N - вторичный рынок (ставится триггером во вторичный рынок)
T001_NR_INV_TYPE - нет
T001_DATA_SOURCE - нет (ставится триггером)
T055_DATE_ID - нет (ставится триггером)
T055_HEADER_ID - нет (ставится триггером)
T027_MAIN_ID - нет (ставится триггером)
T028_MAIN_ID - нет (ставится триггером)
T030_MAIN_ID - нет (ставится триггером)
T027_ID - нет (ставится триггером)
T028_ID - нет (ставится триггером)
T028_IS_LINK - нет (ставится триггером)
T030_IS_LINK - нет (ставится триггером)
T001_RATE -нет
T001_REPO_DATE -нет
T105_ID - нет - код вида валютной операции (при записи установится в 176 (не определен))
T001_PERCENT - нет
T001_DR_COUNT - нет
T001_DR_COUNT_STATE - нет
T001_DATE_OP_BACK - нет
T001_DR_COUNT_SRC - нет
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
  oqAdd.SetVariable('T001_OP_PAY_ID', -1); // Код направления платежа не указан
  oqAdd.SetVariable('T001_OP_CR_ID', odsList['T001_OP_CR_ID']); // lcbPayCurr
  oqAdd.SetVariable('T001_OP_SUM', odsList['T001_OP_SUM']); // ed02
//--  v_rec.T001_OP_PROC := :T001_OP_PROC;
//--  v_rec.T001_DATE_ON := :T001_DATE_ON;
//--  v_rec.T001_DATE_OFF := :T001_DATE_OFF;
  oqAdd.SetVariable('T001_CR_ID', odsList['T001_CR_ID']); // lcbCurr
  oqAdd.SetVariable('T001_INV_TYPE', odsList['T001_INV_TYPE']); // fm04_LookUp1.Lookup01
  oqAdd.SetVariable('T001_DPB_COMMENT', odsList['T001_DPB_COMMENT']); // DBMemo1
//--  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;
  oqAdd.SetVariable('T001_PROCESSED', 2); // исключаем из Участие нерезидентов
  oqAdd.SetVariable('T001_REMAINS_TYPE', 0); // не считать в расчете остатков
  // эмиссия
//--  oqAdd.SetVariable('T030_ID', odsList['T030_ID']); // fm05_Emission.lcbSelect
  oqAdd.SetVariable('ISSUER_NAME', odsList['ISSUER_NAME']); // edIssuerName
  oqAdd.SetVariable('ISSUER_COUNTRY_ID', odsList['ISSUER_COUNTRY_ID']); // lcbIssuerCountry
  oqAdd.SetVariable('ISSUER_TYPE', odsList['ISSUER_TYPE']); // lcbIssuerType
  oqAdd.SetVariable('T027_SEC_TYPE', odsList['T027_SEC_TYPE']); // lcbSecType
  oqAdd.SetVariable('T026_SEC_REGN', odsList['T026_SEC_REGN']); // edSecRegn
  // Покупатель
//  oqAdd.SetVariable('T012_ID', odsList['T012_ID']); // fm10_Customer.odsSelect
  oqAdd.SetVariable('CUST_NAME', odsList['CUST_NAME']); // edCustName
  oqAdd.SetVariable('CUST_INN', odsList['CUST_INN']); // edCustInn
  oqAdd.SetVariable('CUST_TYPE_ID', odsList['CUST_TYPE_ID']); //lcbCustType
  // Продавец
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
  oqUpdate.SetVariable('T001_ID', odsList['T001_ID']); // берется из записи
  oqUpdate.SetVariable('T002_ID', odsList['T002_ID']);  // lcbPeriod
  oqUpdate.SetVariable('T001_PART_ID', odsList['T001_PART_ID']);  // lcbPart
  oqUpdate.SetVariable('T001_ROW_PREFIX', odsList['T001_ROW_PREFIX']); // lcbPart - CheckValues
  oqUpdate.SetVariable('T001_ROW_PRFX', odsList['T001_ROW_PRFX']); // lcbPart - CheckValues
  oqUpdate.SetVariable('T001_ROW_NUM', odsList['T001_ROW_NUM']); // med01 - CheckValues
  oqUpdate.SetVariable('T001_DATE_OP', odsList['T001_DATE_OP']);  // dt01
  oqUpdate.SetVariable('T001_OP_ID', odsList['T001_OP_ID']); // lcb03
  oqUpdate.SetVariable('T001_OP_COUNT', odsList['T001_OP_COUNT']); // ed01
//--  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;
  oqUpdate.SetVariable('T001_OP_PAY_ID', -1); // Код направления платежа не указан (и покупатель и продавец - резиденты)
  oqUpdate.SetVariable('T001_OP_CR_ID', odsList['T001_OP_CR_ID']); // lcbPayCurr
  oqUpdate.SetVariable('T001_OP_SUM', odsList['T001_OP_SUM']); // ed02
//--  v_rec.T001_OP_PROC := :T001_OP_PROC;
//--  v_rec.T001_DATE_ON := :T001_DATE_ON;
//--  v_rec.T001_DATE_OFF := :T001_DATE_OFF;
  oqUpdate.SetVariable('T001_CR_ID', odsList['T001_CR_ID']); // lcbCurr
  oqUpdate.SetVariable('T001_INV_TYPE', odsList['T001_INV_TYPE']); // fm04_LookUp1.Lookup01
  oqUpdate.SetVariable('T001_DPB_COMMENT', odsList['T001_DPB_COMMENT']); // DBMemo1
//--  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;
  oqUpdate.SetVariable('T001_PROCESSED', 2); // исключаем из Участие нерезидентов
  oqUpdate.SetVariable('T001_REMAINS_TYPE', 0); // не считать в расчете остатков
  // эмиссия
  oqUpdate.SetVariable('T030_ID', odsList['T030_ID']); // fm05_Emission.lcbSelect
  oqUpdate.SetVariable('ISSUER_NAME', odsList['ISSUER_NAME']); // edIssuerName
  oqUpdate.SetVariable('ISSUER_COUNTRY_ID', odsList['ISSUER_COUNTRY_ID']); // lcbIssuerCountry
  oqUpdate.SetVariable('ISSUER_TYPE', odsList['ISSUER_TYPE']); // lcbIssuerType
  oqUpdate.SetVariable('T027_SEC_TYPE', odsList['T027_SEC_TYPE']); // lcbSecType
  oqUpdate.SetVariable('T026_SEC_REGN', odsList['T026_SEC_REGN']); // edSecRegn
  // Покупатель
  oqUpdate.SetVariable('T012_ID_CUST', odsList['T012_ID_CUST']); // fm10_Customer.odsSelect
  oqUpdate.SetVariable('CUST_NAME', odsList['CUST_NAME']); // edCustName
  oqUpdate.SetVariable('CUST_INN', odsList['CUST_INN']); // edCustInn
  oqUpdate.SetVariable('CUST_TYPE_ID', odsList['CUST_TYPE_ID']); //lcbCustType
  // Продавец
  oqUpdate.SetVariable('T012_ID_SELL', odsList['T012_ID_SELL']); // fm10_Seller.lcbSelect
  oqUpdate.SetVariable('SELL_NAME', odsList['SELL_NAME']); // edSellName
  oqUpdate.SetVariable('SELL_INN', odsList['SELL_INN']); // edSellInn
  oqUpdate.SetVariable('SELL_TYPE_ID', odsList['SELL_TYPE_ID']); //lcbSellType
  
  oqUpdate.SetVariable('USER', dmMain.GetUser);

  oqUpdate.Execute;
end;

procedure TL001_SumList.DoDelete;
begin
  // вызываем процедуру удаления записи
  oqDelete.SetVariable('T001_ID', odsListT001_ID.AsFloat);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
end;

procedure TL001_SumList.SetDefValues;
begin
  // Код банка - если установлен в фильтре, и не 0, ставим его, если нет - NULL
  if BankFilter.cb.Checked then
    if BankFilter.KeyValueStr <> '0' then
       odsList['T002_BANK_CODE'] := BankFilter.KeyValue;

  // Период - если фильтр включен, и периоды 'с' и 'по' одинаковые, ставим его, если нет - оставляем NULL
//  if PeriodFilter.cb.Checked then
//    if PeriodFilter.KeyValueFloat = PeriodFilter.KeyValue2Float then
//      odsList['T002_ID'] := PeriodFilter.KeyValue2Float;

  // Номер раздела - по умолчанию раздел 2.1
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

    // Добавляем запись
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
