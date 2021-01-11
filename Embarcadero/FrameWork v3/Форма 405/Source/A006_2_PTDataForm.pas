unit A006_2_PTDataForm;

interface

uses
  frm04_ListFrame, Db, OracleData, A001_0_LoadEmitForm, StdCtrls, Oracle,
  Menus, Classes, ActnList, Controls, ComCtrls, ToolWin, fm31_FilterFrame,
  Forms, fmSeach, Grids, DBGrids, xxxDBGrid, ExtCtrls, unt001_Filter,
  untParams, Variants, System.Actions;

type
  TA006_2_PTData = class(Tfrm04_ListFrm, TLoadStepPage)
    odsFields: TOracleDataSet;
    odsFieldsT162_ID: TFloatField;
    odsFieldsT162_POSITION: TFloatField;
    odsFieldsT162_DISPLAY_NAME: TStringField;
    odsFieldsDISPLAY_NAME: TStringField;
    odsFieldsT161_ID: TFloatField;
    odsFieldsT161_POSITION: TFloatField;
    odsFieldsT161_DISPLAY_NAME: TStringField;
    odsFieldsT161_SQL_NAME: TStringField;
    odsFieldsT160_PREFIX: TStringField;
    Memo1: TMemo;
    odsFieldsT161_DISPLAY_FORMAT: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    lbTime: TLabel;
    chbShowSQL: TCheckBox;
  private
    VDataSet: TVirtualDataSet;
    FColumns: TFloatArray;
    FFields: TFloatArray;
    //
    FSelectList: TStrings;
    FTableList: TStrings;
    FWhereList: TStrings;
    FGroupByList: TStrings;
    //
    //
    function GetText(const AList: TStrings): string;
    function GetWhere(const AList: TStrings): string;
    procedure GetFieldsInfo;
    procedure GetTablesInfo;
    procedure PrepareSQL;
    //
    procedure RegistrField(const AFieldID: Double);
    procedure RegistrColumn(const AFieldID: Double);
    procedure CreateColumn(const AFieldID: Double);
    procedure CreateFilter(const AFieldID: Double; const AValue: string);
    procedure SetFormat;
  public
    procedure Init;
    //
    procedure DoOnShowPage(const AMainForm: TForm);
    procedure DoOnClosePage(const AMainForm: TForm; var Applied: boolean);
    //
    procedure ShowData;
  end;

var
  A006_2_PTData: TA006_2_PTData;

implementation

uses
  SysUtils, Dialogs, A006_SelectedFieldsFrame, A006_FilterListFrame,
  A006_0_PTForm;

{$R *.DFM}

{ TA006_2_PTData }

procedure TA006_2_PTData.RegistrField(const AFieldID: Double);
var
  I: Integer;
begin
  // ищем есть ли уже в списке
  for I := Low(FFields) to High(FFields) do
  begin
    if FFields[I] = AFieldID then
    begin
      Exit;
    end;
  end;

  // если не нашли то добавляем
  SetLength(FFields, Length(FFields) + 1);
  FFields[High(FFields)] := AFieldID;
end;

procedure TA006_2_PTData.RegistrColumn(const AFieldID: Double);
var
  I: Integer;
begin
  // ищем есть ли уже в списке
  for I := Low(FColumns) to High(FColumns) do
  begin
    if FColumns[I] = AFieldID then
    begin
      Exit;
    end;
  end;

  // если не нашли то добавляем
  SetLength(FColumns, Length(FColumns) + 1);
  FColumns[High(FColumns)] := AFieldID;
end;

procedure TA006_2_PTData.DoOnClosePage(const AMainForm: TForm;
  var Applied: boolean);
begin
  Applied := True;
end;

procedure TA006_2_PTData.DoOnShowPage(const AMainForm: TForm);
var
  VFields: TA006_SelectedFields;
  VFilters: TA006_FilterList;
begin
  // закрываем
  xxxDBGrid.AdvSettings.Enabled := False;
  odsList.Close;
  xxxDBGrid.Columns.Clear;
  odsList.Fields.Clear;

  // очищаем
  Memo1.Visible := False;
  SetLength(FFields, 0);
  SetLength(FColumns, 0);
  FSelectList.Clear;
  FTableList.Clear;
  FWhereList.Clear;
  FGroupByList.Clear;

  // добираемся до выбранных полей и фильтров
  VFields := TA006_0_PT(AMainForm).A006_1_PTSettings.A006_SelectedFields1;
  VFilters := TA006_0_PT(AMainForm).A006_1_PTSettings.A006_FilterList1;

  // регистрируем поля для отображения
  VFields.odsList.First;
  while not VFields.odsList.Eof do
  begin
    RegistrColumn(VFields.odsListT161_ID.AsFloat);
    VFields.odsList.Next;
  end;
  VFields.odsList.First;

  // регистрируем поля для фильтра
  VFilters.odsList.First;
  while not VFilters.odsList.Eof do
  begin
    RegistrField(VFilters.odsListT161_ID.AsFloat);
    VFilters.odsList.Next;
  end;
  VFilters.odsList.First;

  // получаем описание полей
  GetFieldsInfo;

  // регистрируем поля для отображения
  VFields.odsList.First;
  while not VFields.odsList.Eof do
  begin
    CreateColumn(VFields.odsListT161_ID.AsFloat);
    VFields.odsList.Next;
  end;
  VFields.odsList.First;  

  // создаем фильтры
  VFilters.odsList.First;
  while not VFilters.odsList.Eof do
  begin
    CreateFilter(VFilters.odsListT161_ID.AsFloat, VFilters.odsListCONDITION_VALUE.AsString);
    VFilters.odsList.Next;
  end;
  VFilters.odsList.First;

  // подготавливаем SQL
  PrepareSQL;

  // проставляем форматы
  SetFormat;
end;


procedure TA006_2_PTData.Init;
begin
  // создаем переменные
  FSelectList   := TStringList.Create;
  FTableList   := TStringList.Create;
  FWhereList   := TStringList.Create;
  FGroupByList := TStringList.Create;

  // создаем виртуальный DataSet для фильтрации полей
  VDataSet := TVirtualDataSet.Create(Self);
  VDataSet.DataSet := odsFields;
  VDataSet.Enabled := True;
  VDataSet.Indexes.Add.FieldName := 'T162_POSITION';
  VDataSet.Indexes.Add.FieldName := 'T161_POSITION';
end;

function TA006_2_PTData.GetText(const AList: TStrings): string;
var
  I: Integer;
begin
  Result := '';

  // собираем через запятую
  for I := 0 to  AList.Count - 1 do
  begin
    if Result <> '' then
    begin
      Result := Result + ',' + #13#10;
    end;
    Result := Result + '    ' + AList[I];
  end;
end;

function TA006_2_PTData.GetWhere(const AList: TStrings): string;
var
  I: Integer;
begin
  Result := '';

  // собираем через запятую
  for I := 0 to  AList.Count - 1 do
  begin
    if Result <> '' then
    begin
      Result := Result + #13#10 + 'AND    ';
    end;
    Result := Result + AList[I];
  end;
end;


procedure TA006_2_PTData.PrepareSQL;
const
  SELECT_TEXT =
    'SELECT' + #13#10 +
    '%s'     + #13#10 +
    'FROM'   + #13#10 +
    '%s';
  WHERE_TEXT =
    '%s'     + #13#10 +
    'WHERE'  + #13#10 +
    '%s';
  GRP_BY_TEXT =
    '%s'        + #13#10 +
    'GROUP BY'  + #13#10 +
    '%s';
var
  VSql: string;
  VTime: TDateTime;
  VSec, VMSec, VMin: Integer;
begin
  // собираем текст SELECT
  VSql := Format(SELECT_TEXT, [
    GetText(FSelectList),
    GetText(FTableList)
    ]);

  // если надо добавляем WHERE
  if FWhereList.Count > 0 then
  begin
    VSql := Format(WHERE_TEXT, [
      VSql,
      GetWhere(FWhereList)
      ]);
  end;

  // если надо добавляем GROUP BY
  if FGroupByList.Count > 0 then
  begin
    VSql := Format(GRP_BY_TEXT, [
      VSql,
      GetText(FGroupByList)
      ]);
  end;

  odsList.SQL.Text := VSql;

  if chbShowSQL.Checked then
  begin
    ShowMessage(odsList.SQL.GetText);
    Memo1.Lines.Text := odsList.SQL.GetText;
    Memo1.Visible := True;
  end else
  begin
    Memo1.Visible := False;
  end;

  // включаем грид для автосортировки и т.п.
  xxxDBGrid.AdvSettings.Enabled := True;

  // открываем
  lbTime.Caption := '';
  VTime := Now;
  try
    odsList.Open;
  except
    on E: Exception do
    begin
      showmessage(e.Message);
    end;
  end;
  VMSec := Trunc((Now - VTime) * 24 * 3600 * 1000);
  VSec := Trunc(VMSec / 1000);
  VMin := Trunc(VSec / 60);
  if VMin <= 0 then
  begin
    lbTime.Caption := Format('%f сек.', [VSec + VMSec / 1000]);
  end else
  begin
    lbTime.Caption := Format('%d мин. %d сек.', [VMin, VSec mod 60]);
  end;
end;

procedure TA006_2_PTData.CreateColumn(const AFieldID: Double);
var
  VColumn: TColumn;
begin
  // ищем поле
  odsFields.Locate('T161_ID', AFieldID, []);

  // создаем колонку
  VColumn := xxxDBGrid.Columns.Add;
  VColumn.FieldName := odsFieldsT161_SQL_NAME.AsString;
  VColumn.Title.Caption := odsFieldsT161_DISPLAY_NAME.AsString;
  VColumn.Width := 100;
end;

procedure TA006_2_PTData.CreateFilter(const AFieldID: Double;
  const AValue: string);
const
  APF = '''';
var
  VField: string;
  VValue: string;
begin
  // ищем поле
  odsFields.Locate('T161_ID', AFieldID, []);

  // регистрируем поле
  VField := odsFieldsT160_PREFIX.AsString + '.' + odsFieldsT161_SQL_NAME.AsString;

  // проверяем надо ли добавлять кавычки
  if (AValue[1] = APF) and (AValue[Length(AValue)] = APF) then
  begin
    VValue := AValue;
  end else
  begin
    VValue := APF + AValue + APF;
  end;

  // добавляем условие
  // считаем что если есть ', ' то значит это список
  // иначе это одно значение
  if Pos(''', ''', VValue) > 0 then
  begin
    VValue := ' IN  (' + VValue + ')';
  end else
  begin
    VValue := ' = ' + VValue;
  end;
  FWhereList.Add(VField + VValue);
end;

procedure TA006_2_PTData.ShowData;
begin

end;

procedure TA006_2_PTData.GetFieldsInfo;
var
  VCondition: TCondition;
  VValue: TValueItem;
  J: Integer;
begin
  // закрываем
  odsFields.Close;

  // Фильтр по выбранным снимаем фильтры
  VDataSet.Conditions.ClearFor('T161_ID');

  // добавляем условие
  VCondition := VDataSet.Conditions.Add;
  VCondition.DisplayName := 'T161_ID';
  VCondition.Condition := dc24;
  VCondition.ListName := 'T161_ID';
  for J := Low(FFields) to High(FFields) do
  begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtNumber;
    VValue.KeyValue.AsFloat := FFields[J];
    VValue.ListValue.ValueType := vtNumber;
    VValue.ListValue.AsFloat := FFields[J];
  end;
  for J := Low(FColumns) to High(FColumns) do
  begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtNumber;
    VValue.KeyValue.AsFloat := FColumns[J];
    VValue.ListValue.ValueType := vtNumber;
    VValue.ListValue.AsFloat := FColumns[J];
  end;

  // открываем
  odsFields.Open;

  // получаем список полей
  GetTablesInfo;
end;


procedure TA006_2_PTData.GetTablesInfo;
var
  VColumns: Variant;
  VFields: Variant;
  VSelect: Variant;
  VTable: Variant;
  VFilter: Variant;
  VGroupBy: Variant;
  I: Integer;
begin
  // на вход
  VColumns := VarArrayCreate([0, Length(FColumns) - 1], varVariant);
  for I := 0 to Length(FColumns) - 1 do
  begin
    VColumns[I] :=  FColumns[I];
  end;
  VFields := VarArrayCreate([0, Length(FFields) - 1], varVariant);
  for I := 0 to Length(FFields) - 1 do
  begin
    VFields[I] :=  FFields[I];
  end;

  // на выход
  VSelect   := VarArrayCreate([0, 255 - 1], varVariant);
  VTable    := VarArrayCreate([0, 255 - 1], varVariant);
  VFilter   := VarArrayCreate([0, 255 - 1], varVariant);
  VGroupBy   := VarArrayCreate([0, 255 - 1], varVariant);

  oqAdd.SetVariable('I_COLUMN_ID', VColumns);
  oqAdd.SetVariable('I_FIELD_ID', VFields);
  oqAdd.Execute;
  VSelect := oqAdd.GetVariable('O_SELECT_TEXT');
  VTable := oqAdd.GetVariable('O_TABLE_TEXT');
  VFilter := oqAdd.GetVariable('O_WHERE_TEXT');
  VGroupBy := oqAdd.GetVariable('O_GROUP_BY_TEXT');

  for I := 0 to VarArrayHighBound(VSelect, 1) do
  begin
    FSelectList.Add(VSelect[I]);
  end;

  for I := 0 to VarArrayHighBound(VTable, 1) do
  begin
    FTableList.Add(VTable[I]);
  end;

  for I := 0 to VarArrayHighBound(VFilter, 1) do
  begin
    FWhereList.Add(VFilter[I]);
  end;

  if not VarIsEmpty(VGroupBy) then
  begin
    for I := 0 to VarArrayHighBound(VGroupBy, 1) do
    begin
      FGroupByList.Add(VGroupBy[I]);
    end;
  end;
end;

procedure TA006_2_PTData.SetFormat;
var
  I: Integer;
  VField: TField;
begin
  // проставляем форматы
  for I := 0 to xxxDBGrid.Columns.Count - 1 do
  begin
    // поле
    VField := xxxDBGrid.Columns[I].Field;

    // проверяем может ли быть
    if not (VField is TNumericField) then Continue;

    // ищем описание поле
    if odsFields.Locate('T161_SQL_NAME', VField.FieldName, []) then
    begin
      if not odsFieldsT161_DISPLAY_FORMAT.IsNull then
      begin
         TNumericField(VField).DisplayFormat := odsFieldsT161_DISPLAY_FORMAT.AsString;
      end;
    end;
  end;
end;

end.
