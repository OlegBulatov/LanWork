unit frm32_IssuerListForm;

interface

uses
  frm04_ListForm, Db, Oracle, OracleData, Menus, Classes, ActnList,
  StdCtrls, ComCtrls, fm31_FilterFrame, Forms, fmSeach, Grids, DBGrids,
  xxxDBGrid, ToolWin, Controls, ExtCtrls, frm04_EditForm, frm00_ParentForm;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  Buttons;

type
  Tfrm32_IssuerList = class(Tfrm04_List)
    odsListT028_ID: TFloatField;
    odsListT028_SHOT_NAME: TStringField;
    odsListT036_ISBANK: TStringField;
    odsListT036_INCLUDE: TStringField;
    odsListT028_INN: TStringField;
    odsListT025_ID: TFloatField;
    odsListT025_SHOT_NAME: TStringField;
    odsListT036_TICKER_SKRIN: TStringField;
    odsListT036_MAIL_ADDRESS: TStringField;
    odsListT036_REG_NUMBER: TStringField;
    odsListT036_COMPANY_HEAD: TStringField;
    odsListT028_COUNTRY_ID: TStringField;
    odsListCOUNTRY_NAME: TStringField;
    odsListT028_CODE: TStringField;
    odsListT037_ID: TFloatField;
    oqClear: TOracleQuery;
    actClearSelect: TAction;
    odsListT028_INDUSTRY: TStringField;
    odsListT028_INDUSTRY_CODE: TStringField;
    odsListT028_REGION: TStringField;
    odsListT028_REGION_CODE: TFloatField;
    odsListT140_ID: TIntegerField;
    odsListSECTOR_NAME: TStringField;
    odsListT036_NOT_FP: TStringField;
    odsListT036_KPP: TFloatField;
    odsListT036_OKFS: TStringField;
    odsListT036_OKOGU: TStringField;
    odsListT036_SPARK_COMMENT: TStringField;
    odsListT036_SPARK_ID: TFloatField;
    odsListT036_OKPO: TStringField;
    odsListISSUER_LAST_UPDATE: TDateTimeField;
    odsListT036_IS_MC: TStringField;
    odsListT036_FULL_NAME: TStringField;
    odsListT037_LONG_NAME: TStringField;
    odsListT036_IS_RSN: TStringField;
    odsListT112_GROUP_NAME: TStringField;
    odsListSHS3_T167_NAME: TStringField;
    odsListSHS3_T167_EXCHANGE: TStringField;
    odsListSHS4_T167_NAME: TStringField;
    odsListSHS4_T167_EXCHANGE: TStringField;
    ToolButton6: TToolButton;
    actInnExport: TAction;
    odsINN: TOracleDataSet;
    odsListT036_COMMENTS: TStringField;
    odsListT033_ID: TFloatField;
    odsListT036_CR_ID: TStringField;
    odsListT036_OKATO: TFloatField;
    odsListT036_ID: TFloatField;
    procedure actClearSelectExecute(Sender: TObject);
    procedure actClearSelectUpdate(Sender: TObject);
    procedure actInnExportExecute(Sender: TObject);
    procedure odsListAfterInsert(DataSet: TDataSet);

  private
    FT028_ID: Double;
    procedure ClearSelect;
  protected
    //
    procedure OnClearSelect;
    procedure OnAdd; override;
    //
    function IsDuplicateFound: Boolean; override;
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
    procedure WriteLogOnInsert(); override;
    procedure WriteLogOnEdit(); override;
    procedure WriteLogOnDelete(); override;
    //
    function EditForm: Tfrm04_Edit; override;
    function EnableAction(Action: TAction): boolean; override;
    //
    class function GetSelfClass: Tfrm00_Parents; override;
    class function GetSelfForm: Tfrm00_Parent; override;
    class procedure SetSelfForm(const AForm: Tfrm00_Parent); override;
  public
    procedure RefreshAfterListChange; override;

    procedure FindIssuer(AT028_ID: Double);
  end;

var
  frm32_IssuerList: Tfrm32_IssuerList;

implementation

uses
  SysUtils, Matrix, A00_MatrixConst, frm32_IssuerEditForm, unt204_ReportBuilder,
  Dialogs;

{$R *.DFM}

{ Tfrm32_IssuerList }

class function Tfrm32_IssuerList.GetSelfClass: Tfrm00_Parents;
begin
  Result := Tfrm32_IssuerList;
end;

class function Tfrm32_IssuerList.GetSelfForm: Tfrm00_Parent;
begin
  Result := frm32_IssuerList;
end;

class procedure Tfrm32_IssuerList.SetSelfForm(const AForm: Tfrm00_Parent);
begin
  TForm(frm32_IssuerList) := AForm;
end;

procedure Tfrm32_IssuerList.OnAdd;
begin
  if EditForm = nil then Exit;

  // отображаем форму для добавления записи
  EditType := etInsert;
  DataSet.Insert;
  DataSet.FieldByName('T036_ISBANK').AsString := 'N';
  DataSet.FieldByName('T036_INCLUDE').AsString := 'Y';
  DataSet.FieldByName('T036_NOT_FP').AsString := 'N';
  with EditForm do
  begin
    DataSource := dsList;
    OnSaveChange := Self.SaveChange;
    OnCancelChange := Self.CancelChange;
    EditType := Self.EditType;
    ShowModal;
  end;
end;

procedure Tfrm32_IssuerList.DoDelete;
begin
  // удаляем запись
  oqDelete.SetVariable('T028_ID', odsList['T028_ID']);
  oqDelete.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT028_ID := odsList['T028_ID'];
end;

procedure Tfrm32_IssuerList.DoEdit;
begin
  // редактируем запись
  // T028
  oqUpdate.SetVariable('T028_ID', odsList['T028_ID']);
  oqUpdate.SetVariable('T028_SHOT_NAME', odsList['T028_SHOT_NAME']);
  oqUpdate.SetVariable('T028_INN', odsList['T028_INN']);
  oqUpdate.SetVariable('T025_ID', odsList['T025_ID']);
  oqUpdate.SetVariable('T028_COUNTRY_ID', odsList['T028_COUNTRY_ID']);
  oqUpdate.SetVariable('T028_INDUSTRY_CODE', odsList['T028_INDUSTRY_CODE']);
  oqUpdate.SetVariable('T028_REGION_CODE', odsList['T028_REGION_CODE']);
  oqUpdate.SetVariable('T140_ID', odsList['T140_ID']);
  oqUpdate.SetVariable('T033_ID', odsList['T033_ID']);

  // 36
  oqUpdate.SetVariable('T036_ID', odsList['T036_ID']);
  oqUpdate.SetVariable('T036_FULL_NAME', odsList['T036_FULL_NAME']);
  oqUpdate.SetVariable('T036_ISBANK', odsList['T036_ISBANK']);
  oqUpdate.SetVariable('T036_INCLUDE', odsList['T036_INCLUDE']);
  oqUpdate.SetVariable('T036_TICKER_SKRIN', odsList['T036_TICKER_SKRIN']);
  oqUpdate.SetVariable('T036_MAIL_ADDRESS', odsList['T036_MAIL_ADDRESS']);
  oqUpdate.SetVariable('T036_REG_NUMBER', odsList['T036_REG_NUMBER']);
  oqUpdate.SetVariable('T036_COMPANY_HEAD', odsList['T036_COMPANY_HEAD']);
  oqUpdate.SetVariable('T037_ID', odsList['T037_ID']);
  oqUpdate.SetVariable('T036_CR_ID', odsList['T036_CR_ID']);
  oqUpdate.SetVariable('T036_NOT_FP', odsList['T036_NOT_FP']);
  oqUpdate.SetVariable('T036_KPP', odsList['T036_KPP']);
  oqUpdate.SetVariable('T036_OKFS', odsList['T036_OKFS']);
  oqUpdate.SetVariable('T036_OKOGU', odsList['T036_OKOGU']);
  oqUpdate.SetVariable('T036_SPARK_COMMENT', odsList['T036_SPARK_COMMENT']);
  oqUpdate.SetVariable('T036_SPARK_ID', odsList['T036_SPARK_ID']);
  oqUpdate.SetVariable('T036_OKPO', odsList['T036_OKPO']);
  oqUpdate.SetVariable('T036_OKATO', odsList['T036_OKATO']);
  oqUpdate.SetVariable('T036_IS_MC', odsList['T036_IS_MC']);
  oqUpdate.SetVariable('T036_IS_RSN', odsList['T036_IS_RSN']);
  oqUpdate.SetVariable('T036_COMMENTS', odsList['T036_COMMENTS']);

  // 167
  oqUpdate.SetVariable('SHS3_T167_NAME', odsList['SHS3_T167_NAME']);
  oqUpdate.SetVariable('SHS3_T167_EXCHANGE', odsList['SHS3_T167_EXCHANGE']);
  //
  oqUpdate.SetVariable('SHS4_T167_NAME', odsList['SHS4_T167_NAME']);
  oqUpdate.SetVariable('SHS4_T167_EXCHANGE', odsList['SHS4_T167_EXCHANGE']);

  oqUpdate.Execute;
  FT028_ID := odsList['T028_ID'];
end;

procedure Tfrm32_IssuerList.DoInsert;
begin
  // Добавляем запись
  // T028
  oqAdd.SetVariable('T028_SHOT_NAME', odsList['T028_SHOT_NAME']);
  oqAdd.SetVariable('T028_INN', odsList['T028_INN']);
  oqAdd.SetVariable('T025_ID', odsList['T025_ID']);
  oqAdd.SetVariable('T028_COUNTRY_ID', odsList['T028_COUNTRY_ID']);
  oqAdd.SetVariable('T028_INDUSTRY_CODE', odsList['T028_INDUSTRY_CODE']);
  oqAdd.SetVariable('T028_REGION_CODE', odsList['T028_REGION_CODE']);
  oqAdd.SetVariable('T140_ID', odsList['T140_ID']);
  oqAdd.SetVariable('T033_ID', odsList['T033_ID']);

  // 36
  oqAdd.SetVariable('T036_FULL_NAME', odsList['T036_FULL_NAME']);
  oqAdd.SetVariable('T036_ISBANK', odsList['T036_ISBANK']);
  oqAdd.SetVariable('T036_INCLUDE', odsList['T036_INCLUDE']);
  oqAdd.SetVariable('T036_TICKER_SKRIN', odsList['T036_TICKER_SKRIN']);
  oqAdd.SetVariable('T036_MAIL_ADDRESS', odsList['T036_MAIL_ADDRESS']);
  oqAdd.SetVariable('T036_REG_NUMBER', odsList['T036_REG_NUMBER']);
  oqAdd.SetVariable('T036_COMPANY_HEAD', odsList['T036_COMPANY_HEAD']);
  oqAdd.SetVariable('T037_ID', odsList['T037_ID']);
  oqAdd.SetVariable('T036_CR_ID', odsList['T036_CR_ID']);
  oqAdd.SetVariable('T036_NOT_FP', odsList['T036_NOT_FP']);
  oqAdd.SetVariable('T036_KPP', odsList['T036_KPP']);
  oqAdd.SetVariable('T036_OKFS', odsList['T036_OKFS']);
  oqAdd.SetVariable('T036_OKOGU', odsList['T036_OKOGU']);
  oqAdd.SetVariable('T036_SPARK_COMMENT', odsList['T036_SPARK_COMMENT']);
  oqAdd.SetVariable('T036_SPARK_ID', odsList['T036_SPARK_ID']);
  oqAdd.SetVariable('T036_OKPO', odsList['T036_OKPO']);
  oqAdd.SetVariable('T036_OKATO', odsList['T036_OKATO']);
  oqAdd.SetVariable('T036_IS_MC', odsList['T036_IS_MC']);
  oqAdd.SetVariable('T036_IS_RSN', odsList['T036_IS_RSN']);
  oqAdd.SetVariable('T036_COMMENTS', odsList['T036_COMMENTS']);

  // 167
  oqAdd.SetVariable('SHS3_T167_NAME', odsList['SHS3_T167_NAME']);
  oqAdd.SetVariable('SHS3_T167_EXCHANGE', odsList['SHS3_T167_EXCHANGE']);
  oqAdd.SetVariable('SHS4_T167_NAME', odsList['SHS4_T167_NAME']);
  oqAdd.SetVariable('SHS4_T167_EXCHANGE', odsList['SHS4_T167_EXCHANGE']);

  oqAdd.Execute;
  FT028_ID := oqAdd.GetVariable('T028_ID');
end;

function Tfrm32_IssuerList.IsDuplicateFound: Boolean;
begin
  // Проверку на дубликат комментим, т.к. теперь она выполняется
  // непосредственно в функции добавления записи

//  // проверяем существует ли уже такая запись
//  oqDupl.SetVariable('T028_ID', odsList['T028_ID']);
//  oqDupl.SetVariable('T028_SHOT_NAME', odsList['T028_SHOT_NAME']);
//  oqDupl.SetVariable('T025_ID', odsList['T025_ID']);
//  oqDupl.SetVariable('T028_INN', odsList['T028_INN']);
//  oqDupl.SetVariable('T028_COUNTRY_ID', odsList['T028_COUNTRY_ID']);
//  oqDupl.SetVariable('T033_ID', odsList['T033_ID']);
//  oqDupl.SetVariable('T037_ID', odsList['T037_ID']);
//
//  oqDupl.Execute;
//  Result := oqDupl.GetVariable('o_result') > 0;

  Result := False;
end;

procedure Tfrm32_IssuerList.WriteLogOnInsert();
begin
  Matrix.MA.WriteToLog2(ADD_ISSUER, true, '');
end;

procedure Tfrm32_IssuerList.WriteLogOnEdit();
begin
  Matrix.MA.WriteToLog2(CHANGE_ISSUER, true, '');
end;

procedure Tfrm32_IssuerList.WriteLogOnDelete();
begin
  Matrix.MA.WriteToLog2(DELETE_ISSUER, true, '');
end;

function Tfrm32_IssuerList.EditForm: Tfrm04_Edit;
begin
  Result := Tfrm32_IssuerEdit.Instance;
end;

function Tfrm32_IssuerList.EnableAction(Action: TAction): boolean;
begin
  if Action.Name= 'actAddAttributes' then
    result:= Matrix.MA.IsOperationPermitted(ADD_ISSUER, FALSE)
  else if Action.Name= 'actEditAttributes' then
    result:= Matrix.MA.IsOperationPermitted(CHANGE_ISSUER, FALSE)
  else if Action.Name= 'actDeleteAttributes' then
    result:= Matrix.MA.IsOperationPermitted(DELETE_ISSUER, FALSE)
  else result:= true;
end;

procedure Tfrm32_IssuerList.RefreshAfterListChange;
begin
  RefreshData('T028_ID', FT028_ID);
end;

procedure Tfrm32_IssuerList.OnClearSelect;
begin
  // выбираем текущего эмитента
  oqClear.SetVariable('i_id', odsList.FieldByName('T028_ID').AsFloat);
  oqClear.Execute;
  odsList.Next;
  if odsList.Eof then odsList.Prior;
  FT028_ID := odsList['T028_ID'];
end;

procedure Tfrm32_IssuerList.ClearSelect;
begin
    // выбираем запись
    OnClearSelect;
    // обновляем списки
    RefreshAfterListChange;
end;

procedure Tfrm32_IssuerList.actClearSelectExecute(Sender: TObject);
begin
  ClearSelect;
end;

procedure Tfrm32_IssuerList.actClearSelectUpdate(Sender: TObject);
begin
  actClearSelect.Enabled := not odsList.IsEmpty;
end;

procedure Tfrm32_IssuerList.actInnExportExecute(Sender: TObject);
const
  cAll: string =
    'WITH '                                                                  +
    '  s01 AS ( '                                                            +
    '    SELECT DISTINCT SUBSTR(V1.T028_INN, 1, 12) AS T028_INN '            +
    '    FROM   T028_ISSUERS V1 '                                            +
    '    WHERE  V1.T028_ID = V1.T028_PARENT_ID '                             +
    '    AND    V1.T028_INN NOT IN (''-'', ''0000000000'', ''XXXXXXXXXX'') ' +
    '    ORDER BY SUBSTR(V1.T028_INN, 1, 12) '                               +
    '    ), '                                                                +
    '  s02 AS ( '                                                            +
    '    SELECT ROWNUM AS RN, '                                              +
    '           T028_INN AS INN '                                            +
    '    FROM  s01 '                                                         +
    '    ) ';

  cCount: string =
    'SELECT COUNT(*) '                                                       +
    'FROM   s02';

  cPart: string =
    'SELECT INN '                                                            +
     'FROM   s02 '                                                           +
     'WHERE  RN BETWEEN %d AND %d ';

  cDelta: integer = 10000;

  cReportFileName: string = 'Список ИНН для SPARK.xlsx';
var
  vCursor: TCursor;
  cSQL: string;
  vTotal: Double;
  vFrom: integer;
  vTo: integer;
  vFileName: string;
begin
  vCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    // счетчики
    odsINN.Close;
    cSQL := cAll + cCount;

    odsINN.SQL.Clear;
    odsINN.SQL.Text := cSQL;
    odsINN.Open;
    vTotal := odsINN.Fields[0].AsFloat;
    odsINN.Close;

    vFrom := 1;

    vFileName := Copy(ExtractFileName(cReportFileName), 1, Pos('.', cReportFileName));
    vFileName := vFileName + FormatDateTime('yymmddhhnnss', Now) + ExtractFileExt(cReportFileName);

    while vFrom <= vTotal do
      begin
      vTo := vFrom + cDelta - 1;
      cSQL := cAll + Format(cPart, [vFrom, vTo]);

      odsINN.SQL.Clear;
      odsINN.SQL.Text := cSQL;
      odsINN.Open;

      ExportToExcel(odsINN, vFileName);

      odsINN.Close;

      vFrom := vFrom + cDelta;
      end;
  finally
    Screen.Cursor := vCursor;
  end;
end;

procedure Tfrm32_IssuerList.FindIssuer(AT028_ID: Double);
begin
  // снимаем все фильтры
  xxxDBGrid.MainDataSet.Conditions.Clear;
  xxxDBGrid.MainDataSet.Indexes.Clear;

  // устанавливаем фильтр по резиденту
  SetNumbFilter('T028_ID', AT028_ID);

  RefreshAfterListChange;
end;

procedure Tfrm32_IssuerList.odsListAfterInsert(DataSet: TDataSet);
begin
  if odsListT033_ID.IsNull then
    odsListT033_ID.AsFloat := 1; // по умолчанию - Юрлицо
end;

end.
