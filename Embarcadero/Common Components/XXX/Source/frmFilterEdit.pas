unit frmFilterEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frmDialog, ActnList, StdCtrls, ExtCtrls, DBCtrls, xxxDBGrid, db,
  fmFilterValue, dbgrids, unt001_Filter;

type
  TValueDataSet = class(TLookUpDataSet)
  public
    procedure PrepareSQL; override;
  end;

  TfrmFilterEditForm = class(TfrmDialogForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    cmbFields: TComboBox;
    cmbCondition: TComboBox;
    actForm: TAction;
    procedure cmbFieldsChange(Sender: TObject);
    procedure actFormExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cmbConditionChange(Sender: TObject);
  private
    FDBGrid: TxxxDBGrid;
    FFrame: TfmFilterValueFrame;
    FLookUpDataSet: TValueDataSet;
    FValues: TValueItems;
    FCondition: TCondition;
    //
    function GetField: TField;
    procedure SetField(const Value: TField);
    //procedure ClearEdits;
    function GetDispCondition: TDisplayCondition;
    procedure SetDispCondition(const Value: TDisplayCondition);
    function GetArrayOfConditions: TArrayOfConditions;
    procedure DrawFilterValueFrame;
    function GetValues: TValueItems;
    procedure SetValues(const Value: TValueItems);
    //
    function IsActive: Boolean;
    //
    procedure SetDBGrid(const Value: TxxxDBGrid);
    //
    procedure CheckField;
    procedure CheckCondition;
    function GetFilterType: TValueType;
  protected
    function SaveChange: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    //
    property Field: TField read GetField write SetField;
    property DispCondition: TDisplayCondition read GetDispCondition write SetDispCondition;
    property FilterType: TValueType read GetFilterType;
    property Values: TValueItems read GetValues write SetValues;
    //
    property LookUpDataSet: TValueDataSet read FLookUpDataSet;
    //
    property DBGrid: TxxxDBGrid read FDBGrid write SetDBGrid;
    property Condition: TCondition read FCondition;
  end;

var
  frmFilterEditForm: TfrmFilterEditForm;

implementation

{$R *.DFM}

uses fmFilterValueEmpty, fmFilterValueDate1, fmFilterValueDate2,
  fmFilterValueDate3, fmFilterValueDate4, fmFilterValueDate5,
  fmFilterValueDate6, fmFilterValueDate7, fmFilterValueDate8,
  fmFilterValueDate9, fmFilterValueDate10, fmFilterValueNumb1,
  fmFilterValueNumb2, fmFilterValueNumb3, fmFilterValueNumb4,
  fmFilterValueText1, fmFilterValueText2, fmFilterValueText3;

const
  // массив классов отображающих значения для условия
  VALUE_CLASS: array[TDisplayCondition] of TfmFilterValueFrames = (
    TfmFilterValueNumbFrame1,   //dc01,  // 'равно'               // number
    TfmFilterValueTextFrame1,   //dc02,  // 'равно (точно)'       // text
    TfmFilterValueNumbFrame1,   //dc03,  // 'не равно'            // number
    TfmFilterValueNumbFrame3,   //dc04,  // 'больше чем'          // number
    TfmFilterValueNumbFrame3,   //dc05,  // 'меньше чем'          // number
    TfmFilterValueTextFrame3,   //dc06,  // 'содержит'            // text
    TfmFilterValueNumbFrame4,   //dc07,  // 'между'               // number
    TfmFilterValueEmptyFrame,   //dc08,  // 'пусто'               // number // text // date
    TfmFilterValueEmptyFrame,   //dc09,  // 'не пусто'            // number // text // date
    TfmFilterValueTextFrame3,   //dc10,  // 'не содержит'         // text
    TfmFilterValueDateFrame1,   //dc11,  // 'не раннее'           // date
    TfmFilterValueDateFrame1,   //dc12,  // 'не позднее'          // date
    TfmFilterValueDateFrame3,   //dc13,  // 'сегодня'             // date
    TfmFilterValueDateFrame4,   //dc14,  // 'вчера'               // date
    TfmFilterValueDateFrame5,   //dc15,  // 'текущая неделя'      // date
    TfmFilterValueDateFrame6,   //dc16,  // 'прошлая неделя'      // date
    TfmFilterValueDateFrame7,   //dc17,  // 'текущий месяц'       // date
    TfmFilterValueDateFrame8,   //dc18,  // 'прошлый месяц'       // date
    TfmFilterValueDateFrame9,   //dc19,  // 'текущий год'         // date
    TfmFilterValueDateFrame10,  //dc20,  // 'прошлый год'         // date
    TfmFilterValueDateFrame1,   //dc21,  // 'равно'    (для даты) // date
    TfmFilterValueDateFrame1,   //dc22   // 'не равно' (для даты) // date
    TfmFilterValueDateFrame2,   //dc23   // 'между' (для даты)    // date
    TfmFilterValueNumbFrame2,   //dc24,  // 'список'              // number
    TfmFilterValueTextFrame2,   //dc26   // 'список'              // text
    TfmFilterValueNumbFrame3,   //dc27,  // 'больше или равно чем'// number
    TfmFilterValueNumbFrame3,   //dc28   // 'меньше или равно чем'// number
    TfmFilterValueNumbFrame1,   //dc29   // 'равно или NULL       // number
    TfmFilterValueNumbFrame1    //dc30   // 'не равно или NULL    // text
    );

const
  SConditionNotSelected = 'Не выбрано условие!';
  SFieldNotSelected = 'Не выбрано поле!';
  SValueIsEmpty = 'Укажите значение!';

{ TValueDataSet }

procedure TValueDataSet.PrepareSQL;
const
  SQL_WHERE_POS = '1=1';
  SQL_WITH_HINT =
   ' SELECT %s * FROM (%s)';
  SQL_WITH_FILTER_A =
   ' %s WHERE %s ';
  SQL_WITH_FILTER =
    ' SELECT 99 AS FIELD_ID, TO_CHAR(FIELD_KEY) AS %s, TO_CHAR(FIELD_NAME) AS %s ' +
    ' FROM (SELECT DISTINCT %s as FIELD_KEY, %s FIELD_NAME FROM (%s) ORDER BY 1, 2)';
  // запрос будет возвращать три поля FIELD_ID, FIELD_KEY, FIELD_VALUE
//  SQL_WITH_FILTER =
//    ' SELECT 99 AS FIELD_ID, TO_CHAR(FIELD_KEY) AS %s, TO_CHAR(FIELD_NAME) AS %s ' +
//    ' FROM (SELECT DISTINCT %s as FIELD_KEY, %s FIELD_NAME FROM (%s) %s %s ORDER BY 1, 2)';
var
//  VWhere: string;
  i: integer;
  AddFilters: boolean;
  FilterStr: string;
  TagStr: string;
begin
  if not (Enabled and Assigned(DataSet)) then Exit;

  SQL.Text := FOldSQL.Text;

  // формируем заменяемые строки-фильтры
  AddFilters := False;
  for i := 0 to Conditions.Count-1 do
    begin
    if Conditions.Items[i].Replace <> '' then
      begin
      if Pos(Conditions.Items[i].Replace, SQL.Text) <> 0 then
        begin
        FilterStr := Trim(StringReplace(Conditions.Items[i].Replace, '--', '', [rfIgnoreCase]));
        TagStr := Copy(FilterStr, Pos('<', FilterStr), Pos('>', FilterStr) - Pos('<', FilterStr) + 1);
        FilterStr := ' ' + StringReplace(FilterStr, TagStr, Conditions.Items[i].BuildSQL, [rfIgnoreCase]) + ' ';
        SQL.Text := StringReplace(SQL.Text, Conditions.Items[i].Replace, FilterStr, [rfIgnoreCase]);
        end;
      end
    else
      AddFilters := True;
    end;

  // формируем запрос с HINT
  SQL.Text := Format(SQL_WITH_HINT, [OptimizerHint, SQL.Text]);

  if AddFilters then
    // формируем условие WHERE
    if Conditions.Count > 0 then
      begin
      if Pos(SQL_WHERE_POS, SQL.Text) > 0 then
        // заменяем
        SQL.Text := StringReplace(SQL.Text, SQL_WHERE_POS, Conditions.BuildSQL, [rfReplaceAll, rfIgnoreCase])
      else
        // добавляем
        SQL.Text := Format(SQL_WITH_FILTER_A, [SQL.Text, Conditions.BuildSQL]);
      end;

//  // формируем условие WHERE для расширенного фильтра
//  if Conditions.Count > 0 then
//  begin
//    VWhere := 'WHERE';
//  end else
//  begin
//    VWhere := '';
//  end;

//  SQL.Text := Format(SQL_WITH_FILTER, [
//    KeyFieldName, ListFieldName, KeyFieldName, ListFieldName,
//    FOldSQL.Text,
//    VWhere,
//    Conditions.BuildSQL
//    ]);

  // Формируем запрос для расширенного фильтра
  SQL.Text := Format(SQL_WITH_FILTER, [
    KeyFieldName, ListFieldName, KeyFieldName, ListFieldName,
    SQL.Text
    ]);

  PrepareForClientSQL;
end;

procedure TfrmFilterEditForm.cmbFieldsChange(Sender: TObject);
var
  I: Integer;
  VOldText: string;
  VArray: TArrayOfConditions;
begin
  if not IsActive then Exit;

  // обновляем LookUpDataSet
  if Assigned(FLookUpDataSet) and Assigned(FLookUpDataSet.DataSet) then
  begin
    if Assigned(FFrame) then
    begin
      FFrame.DataSet := nil;
    end;
    FLookUpDataSet.Enabled := False;
    FLookUpDataSet.DataSet.Close;  
    FLookUpDataSet.KeyFieldName := Field.FieldName;
    FLookUpDataSet.ListFieldName := FDBGrid.MainDataSet.FindKeyFieldName(Field.FieldName);
    FLookUpDataSet.Enabled := True;
    FLookUpDataSet.Refresh;
  end;

  // по типу поля определяем массив возможных условий
  VArray := GetArrayOfConditions;

  // заполняем список условий
  VOldText := cmbCondition.Text;
  cmbCondition.Items.Clear;
  for I := 0 to CONDITION_COUNT[FilterType] do
  begin
    cmbCondition.Items.AddObject(
      DISPLAY_CONDITION_TEXT[VArray[I]],
      TObject(VArray[I]));
  end;
  cmbCondition.ItemIndex := cmbCondition.Items.IndexOf(VOldText);
  if cmbCondition.ItemIndex = - 1 then
  begin
    cmbCondition.ItemIndex := 0;
  end;// else
  begin
    cmbCondition.OnChange(cmbCondition);
  end;
end;

function TfrmFilterEditForm.GetFilterType: TValueType;
begin
  CheckField;

  // определяем тип поля
  Result := GetTypeForField(Field);
end;

procedure TfrmFilterEditForm.CheckField;
begin
  if cmbFields.ItemIndex <> - 1 then Exit;
  if cmbFields.CanFocus then cmbFields.SetFocus;
  raise Exception.Create(SFieldNotSelected);
end;

function TfrmFilterEditForm.GetField: TField;
begin
  Result := TField(cmbFields.Items.Objects[cmbFields.ItemIndex]);
end;

procedure TfrmFilterEditForm.SetField(const Value: TField);
begin
  cmbFields.ItemIndex := cmbFields.Items.IndexOfObject(Value);
  cmbFields.OnChange(cmbFields);
end;

(*
procedure TfrmFilterEditForm.ClearEdits;
begin
end;
*)

procedure TfrmFilterEditForm.actFormExecute(Sender: TObject);
begin
  // пусто
end;

procedure TfrmFilterEditForm.actFormUpdate(Sender: TObject);
begin
  //
end;

function TfrmFilterEditForm.GetDispCondition: TDisplayCondition;
begin
  CheckCondition;

  Result := GetArrayOfConditions[cmbCondition.ItemIndex];
end;

procedure TfrmFilterEditForm.SetDispCondition(const Value: TDisplayCondition);
begin
  cmbCondition.ItemIndex :=
    cmbCondition.Items.IndexOfObject(TObject(Value));
end;

procedure TfrmFilterEditForm.CheckCondition;
begin
  if cmbCondition.ItemIndex <> - 1 then Exit;
  if cmbCondition.CanFocus then cmbCondition.SetFocus;
  raise Exception.Create(SConditionNotSelected);
end;

function TfrmFilterEditForm.GetArrayOfConditions: TArrayOfConditions;
begin
  // возвращаем массив условий для выбранного поля
  Result := TArrayOfConditions(CONDITION_FOR_TYPE[FilterType]);
end;

procedure TfrmFilterEditForm.DrawFilterValueFrame;
var
  VFrameClass: TfmFilterValueFrames;
begin
  // по условию определяем создаем фрейм для запроса значений
  if cmbFields.ItemIndex = - 1 then
  begin
    VFrameClass := TfmFilterValueEmptyFrame;
  end else
  begin
    VFrameClass := VALUE_CLASS[DispCondition];
  end;

  // убираем существующий
  if Assigned(FFrame) then
  begin
    Self.Height := Self.Height - FFrame.Height;
    FFrame.Free;
  end;

  // добавляем новый
  FFrame := VFrameClass.Create(Self);
  if Assigned(FLookUpDataSet) and Assigned(FLookUpDataSet.DataSet) then
  begin
    FFrame.DataSet := FLookUpDataSet.DataSet;
    FFrame.KeyField := FLookUpDataSet.KeyFieldName;
    FFrame.ListField := FLookUpDataSet.ListFieldName;
  end else
  begin
    FFrame.DataSet := nil;
    FFrame.KeyField := '';
    FFrame.ListField := '';
  end;
  FFrame.Values := FValues;
  FFrame.Top := Self.Height;
  FFrame.Parent := Self;
  FFrame.Align := alTop;
  Self.Height := Self.Height + FFrame.Height;
end;

procedure TfrmFilterEditForm.cmbConditionChange(Sender: TObject);
begin
  if not IsActive then Exit;

  // рисуем по умолчанию
  DrawFilterValueFrame;
end;

function TfrmFilterEditForm.SaveChange: Boolean;
begin
  Result := False;

  // добавляем новое условие
  FCondition := FDBGrid.MainDataSet.Conditions.Add;
  try
    FCondition.DisplayName := cmbFields.Text;
    FCondition.ListName := Field.FieldName;
    FCondition.Condition := DispCondition;
    FCondition.ValueItems.Free;
    FCondition.ValueItems := Values;
    Result := True;
  except
    FDBGrid.MainDataSet.Conditions.Delete(FCondition.Index);
  end;
end;

function TfrmFilterEditForm.GetValues: TValueItems;
begin
  if Assigned(FFrame) then
  begin
    FValues := FFrame.Values;
  end;
  Result := FValues;
end;

procedure TfrmFilterEditForm.SetValues(const Value: TValueItems);
begin
  if Assigned(Value) then
  begin
    FValues := Value;
  end else
  begin
    FValues := TValueItems.Create(nil);
  end;
end;

procedure TfrmFilterEditForm.SetDBGrid(const Value: TxxxDBGrid);
var
  I: Integer;
  VColumn: TColumn;
begin
  FDBGrid := Value;

  // сбрасываем выбранные элементы
  cmbFields.Items.Clear;
  cmbCondition.Items.Clear;

  if not (Assigned(FDBGrid) and Assigned(FDBGrid.Columns)) then Exit;

  // создаем DataSet для выпадающего списка
  FLookUpDataSet := TValueDataSet.Create(Self);
  FLookUpDataSet.MainDataSet := FDBGrid.MainDataSet;

  if not IsActive then Exit;

  // заполняем список полей
  for I := 0 to FDBGrid.Columns.Count - 1 do
  begin
    VColumn := FDBGrid.Columns[I];
    if Assigned(VColumn.Field) and (VColumn.Field.FieldKind = fkData) then
    begin
      cmbFields.Items.AddObject(
        FDBGrid.GetFullColumnName(VColumn),
        VColumn.Field
        );
    end;
  end;

  // рисуем по умолчанию
  DrawFilterValueFrame;
end;

function TfrmFilterEditForm.IsActive: Boolean;
begin
  Result :=
    Assigned(FDBGrid) and
    Assigned(FDBGrid.Columns) and
    Assigned(FDBGrid.MainDataSet.DataSet) and
    Assigned(FLookUpDataSet) and
    Assigned(FLookUpDataSet.DataSet);
end;

constructor TfrmFilterEditForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

end.
