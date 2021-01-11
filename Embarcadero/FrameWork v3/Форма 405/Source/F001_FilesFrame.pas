unit F001_FilesFrame;

interface

uses
  fm005_GridFrame, Graphics, Db, DBCtrls, StdCtrls, Oracle, Menus, OracleData,
  Classes, ActnList, Controls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  xxxDBGrid, A000_ParserExcelDM, A000_FileDescUnt, F001_DataFrame, untParams,
  Forms, fm031_FilterFrame, Variants, System.Actions;

const
  FIELDS: array[0..10, 0..1] of string =
    (
    ('i_T204_ROW_NUM', '№ строки'),
    ('i_T204_NAME', 'Полное или сокращенное фирменное наименование эмитента-резидента (при наличии)'),
    ('i_T204_INN', 'ИНН эмитента'),
    ('i_T203_CODE', 'Код вида ценной бумаги'),
    ('i_T204_REGN', 'Государст-венный регистраци-онный номер выпуска'),
    ('i_T204_CURRENCY', 'Цифровой код валюты ценной бумаги ОКВ'),
    ('i_T204_NOMINAL', 'Номинальная стоимость одной ценной бумаги, в единицах оригинальной валюты'),
    ('i_T204_COUNT_01', 'на счетах владельцев-нерезидентов'),
    ('i_T204_COUNT_02', 'ценных бумаг, переданных нерезидентами в доверительное управление отчитывающейся организации'),
    ('i_T204_COUNT_03', 'ценных бумаг на иных счетах нерезидентов'),
    ('i_T204_COUNT_04', 'Всего на счетах клиентов (депонентов) (кроме ценных бумаг, принятых на хранение от других депозитариев-резидентов)')
    );

type
  TDateArray = array of TDateTime;

  IFilesLink = interface
    function GetT055_ID: Double;
    function GetLoadPath: string;
  end;

  // парсер для данных Небанковских депозитариев
  TNDParserExcel = class(TA000_ParserExcel)
  private
    function GetRowText(const ARow: Integer): string;
    function SetColumnNo(const ARow: Integer;AFields: TFileFields): string;
  protected
    procedure FindAllFields(AFields: TFileFields); override;
  public
    procedure GetRowData(AFields: TFileFields); override;
  end;

  TF001_Files = class(TfmGrid)
    oqRegFiles: TOracleQuery;
    odsListT202_ID: TFloatField;
    odsListT055_ID: TFloatField;
    odsListT028_ID: TFloatField;
    odsListT202_LOAD_DATE: TDateTimeField;
    odsListT202_FILE_NAME: TStringField;
    odsListT202_INFO: TStringField;
    odsListT202_STATE: TStringField;
    odsListT202_STATE_DESC: TStringField;
    odsListT202_EXISTS: TStringField;
    odsListT202_EXISTS_DESC: TStringField;
    odsListLOAD_FLAG: TStringField;
    odsListDELETE_FLAG: TStringField;
    odsTotal: TOracleDataSet;
    odsTotalALL_COUNT: TFloatField;
    odsTotalLOAD_COUNT: TFloatField;
    odsTotalDEL_COUNT: TFloatField;
    odsTotalERR_COUNT: TFloatField;
    GroupBox1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    dsTotal: TDataSource;
    ToolButton1: TToolButton;
    oqBeforeLoad: TOracleQuery;
    oqLogSuccess: TOracleQuery;
    oqLogError: TOracleQuery;
    odsListT202_ERR_MSG: TStringField;
    actLoad: TAction;
    actOpenFile: TAction;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    actShowData: TAction;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    oqClear: TOracleQuery;
    odsListSUM_COUNT: TFloatField;
    odsListT202_FILE_DATE: TDateTimeField;
    odsListT202_FILE_DATE_NEW: TDateTimeField;
    procedure odsListAfterOpen(DataSet: TDataSet);
    procedure actLoadExecute(Sender: TObject);
    procedure actOpenFileExecute(Sender: TObject);
    procedure actShowDataExecute(Sender: TObject);
  private
    FDataFrame: TF001_Data;
    FLink: IFilesLink;
    //
    procedure FindByMask(const APath, AMask: string; var AFileNames: TStrArray;
      var AFileDates: TDateArray);
    procedure FindFiles;
    procedure DoRegisterFiles(const AFileNames: TStrArray; const AFileDates: TDateArray);
    //
    procedure DoBeforeLoad;
    procedure DoLogSuccess(const AFileName: string);
    procedure DoLogError;
    //
    procedure CellClick(Column: TColumn);
    procedure LoadFile(const AFileName: string);
    procedure DeleteData;
  protected
    function GetKeyFieldName: string; override;
    //
    procedure DoCheck(CheckColumnName: String); override;
    procedure DoUnCheck(CheckColumnName: String); override;
    //
    procedure SetConditions; override;
    //
    function GetRowFontColor: TColor; override;
    //
    procedure RefreshAllRecords; override;
  public
    procedure LoadFiles;
    //
    procedure InitFrame(Sender: TObject); override;
    //
    property Link: IFilesLink read FLink write FLink;
  end;

var
  F001_Files: TF001_Files;

implementation

{$R *.DFM}

uses
  Windows, SysUtils, ShellAPI, A000_File2DbDM, untMessages;

{ TF001_Files }

procedure TF001_Files.CellClick(Column: TColumn);
begin
  if ((Column.Field.FieldName = 'LOAD_FLAG') or (Column.Field.FieldName = 'DELETE_FLAG')) and
     (not Column.Field.IsNull) then
  begin
    if Column.Field.AsString = 'Y' then
    begin
      // снимаем признак
      DoUnCheck(Column.Field.FieldName);
    end else
    begin
      // ставим признак
      DoCheck(Column.Field.FieldName);
    end;
  end;
end;

procedure TF001_Files.DoCheck(CheckColumnName: String);
begin
  // выделяем запись
  odsList.Edit;
  if CheckColumnName = 'LOAD_FLAG' then
  begin
    odsList.FieldByName('LOAD_FLAG').AsString := 'Y';
    odsList.FieldByName('DELETE_FLAG').AsString := 'N';
  end else
  begin
    odsList.FieldByName('LOAD_FLAG').AsString := 'N';
    odsList.FieldByName('DELETE_FLAG').AsString := 'Y';
  end;
  odsList.Post;
end;

procedure TF001_Files.DoRegisterFiles(const AFileNames: TStrArray;
  const AFileDates: TDateArray);
var
  VFileNames: Variant;
  VFileDates: Variant;
  I: Integer;
begin
  // на вход
  VFileNames := VarArrayCreate([0, Length(AFileNames) - 1], varVariant);
  for I := 0 to Length(AFileNames) - 1 do
  begin
    VFileNames[I] :=  AFileNames[I];
  end;
  VFileDates := VarArrayCreate([0, Length(AFileDates) - 1], varVariant);
  for I := 0 to Length(AFileDates) - 1 do
  begin
    VFileDates[I] :=  AFileDates[I];
  end;

  oqRegFiles.SetVariable('I_T055_ID', FLink.GetT055_ID);
  oqRegFiles.SetVariable('I_FILE_LIST', VFileNames);
  oqRegFiles.SetVariable('I_DATE_LIST', VFileDates);
  oqRegFiles.Execute;
end;

procedure TF001_Files.DoUnCheck(CheckColumnName: String);
begin
  // снимем выделение
  odsList.Edit;
  odsList.FieldByName(CheckColumnName).AsString := 'N';
  odsList.Post;
end;

procedure TF001_Files.FindFiles;
var
  VFileNames: TStrArray;
  VFileDates: TDateArray;
begin
  // ищем файлы XLS, XLSX, XLSM в папке
  FindByMask(FLink.GetLoadPath, '*.xls', VFileNames, VFileDates);
  //FindByMask(FLink.GetLoadPath, '*.xlsx', VFiles);
  //FindByMask(FLink.GetLoadPath, '*.xlsm', VFiles);

  // регистрируем файлы в Oracle
  DoRegisterFiles(VFileNames, VFileDates);
end;

function TF001_Files.GetRowFontColor: TColor;
begin
  if odsListT202_EXISTS.AsString = 'N' then
  begin
    // файл не найден надо удалить данные
    Result := clRed;
  end else
  if odsListT202_STATE.AsString = 'E' then
  begin
    // ошибка требуется перезагрузить данные
    Result := clRed;
  end else    
  if (odsListT202_STATE.AsString = 'L') and (odsListSUM_COUNT.AsFloat = 0) then
  begin
    // загружен пустой файл
    Result := clRed;
  end else
  begin
    // операция привязана к выбранному объявлению
    Result := inherited GetRowFontColor;
  end;
end;

procedure TF001_Files.InitFrame(Sender: TObject);
var
  VColumnDef: TColumnDef;
begin
  inherited;

  ColumnDefs.Clear;
  //
  VColumnDef := ColumnDefs.AddSelectionColumn(xxxDBGrid.Columns[0]);
  VColumnDef.Images.Clear;
  VColumnDef.Images.AddStr(51, 'N');
  VColumnDef.Images.AddStr(52, 'Y');
  VColumnDef.OnCellClick := CellClick;
  //
  VColumnDef := ColumnDefs.AddSelectionColumn(xxxDBGrid.Columns[1]);
  VColumnDef.Images.Clear;
  VColumnDef.Images.AddStr(51, 'N');
  VColumnDef.Images.AddStr(52, 'Y');
  VColumnDef.OnCellClick := CellClick;
end;

procedure TF001_Files.SetConditions;
begin
  odsList.SetVariable('T055_ID', FLink.GetT055_ID);
  inherited;
end;

procedure TF001_Files.odsListAfterOpen(DataSet: TDataSet);
begin
  // считаем итоги
  odsTotal.Close;
  odsTotal.SetVariable('T055_ID', FLink.GetT055_ID);
  odsTotal.Open;  
end;

procedure TF001_Files.FindByMask(const APath, AMask: string;
  var AFileNames: TStrArray; var AFileDates: TDateArray);
var
  VSr: TSearchRec;
  VFileAttrs: Integer;
begin
  // ищем файлы в папке
  VFileAttrs := faAnyFile-faDirectory;
  if FindFirst(APath + '\' + AMask, VFileAttrs, VSr) = 0 then
  begin
    // если не нашли то добавляем
    SetLength(AFileNames, Length(AFileNames) + 1);
    AFileNames[High(AFileNames)] := VSr.Name;
    SetLength(AFileDates, Length(AFileDates) + 1);
    AFileDates[High(AFileDates)] := FileDateToDateTime(VSr.Time);
    while FindNext(VSr) = 0 do
    begin
      // если не нашли то добавляем
      SetLength(AFileNames, Length(AFileNames) + 1);
      AFileNames[High(AFileNames)] := VSr.Name;
      SetLength(AFileDates, Length(AFileDates) + 1);
      AFileDates[High(AFileDates)] := FileDateToDateTime(VSr.Time);
    end;
    FindClose(VSr);
  end;
end;

procedure TF001_Files.LoadFiles;
begin
  // выполняем обработку файлов
  odsList.First;
  while not odsList.Eof do
  begin
    if odsListLOAD_FLAG.AsString = 'Y' then
    begin
      // загружаем файл
      LoadFile(FLink.GetLoadPath + '\' + odsListT202_FILE_NAME.AsString);
      RefreshOneRecord;
      odsList.Next;
    end else
    if odsListDELETE_FLAG.AsString = 'Y' then
    begin
      // удаляем данные из БД
      DeleteData;
      odsList.Delete;
    end;
    Application.ProcessMessages;
  end;
end;

procedure TF001_Files.LoadFile(const AFileName: string);
var
  I: Integer;
  VLoader: TA000_File2Db;
  VField: TFileField;
begin
  try
    // зазружаем данные из файла
    DoBeforeLoad;
    VLoader := TA000_File2Db.Create(nil);
    try
      VLoader.FileName := AFileName;
      //VLoader.BeforeProcName := 'PK_405_SHS_IIP.p_do_before_load';
      VLoader.ProcName := 'PK_405_ND_DATA.p_add_xls_row';
      VLoader.ParserClass := TNDParserExcel;
      for I := Low(FIELDS) to High(FIELDS) do
      begin
        VField := VLoader.Fields.Add;
        VField.ParamName := FIELDS[I, 0];
        VField.FieldName := FIELDS[I, 1];
      end;
      VLoader.LoadFile;
    finally
      VLoader.Free;
    end;
    DoLogSuccess(AFileName);
  except
    on E: Exception do
    begin
      odsList.Edit;
      odsListT202_ERR_MSG.AsString := 'Ошбика загрузки: ' + E.Message;
      odsList.Post;
      DoLogError;
    end;
  end;
end;

procedure TF001_Files.DeleteData;
begin
  // удаляем данные из БД
  oqClear.SetVariable('I_T202_ID', odsListT202_ID.AsFloat);
  oqClear.Execute;
end;

procedure TF001_Files.DoBeforeLoad;
begin
  // перед загрузкой
  oqBeforeLoad.SetVariable('I_T202_ID', odsListT202_ID.AsFloat);
  oqBeforeLoad.Execute;
end;

procedure TF001_Files.DoLogError;
begin
  // логируем ошибку
  oqLogError.SetVariable('I_T202_ID', odsListT202_ID.AsFloat);
  oqLogError.SetVariable('I_T202_ERR_MSG', odsListT202_ERR_MSG.AsString);
  oqLogError.Execute;
end;

procedure TF001_Files.DoLogSuccess(const AFileName: string);
begin
  // логируем успешную загрузку
  oqLogSuccess.SetVariable('I_T202_ID', odsListT202_ID.AsFloat);
  oqLogSuccess.Execute;
end;

function TF001_Files.GetKeyFieldName: string;
begin
  Result := 'T202_ID';
end;

{ TNDParserExcel }

procedure TNDParserExcel.GetRowData(AFields: TFileFields);
var
  I: Integer;
begin
  // получаем данные по текущей строке файла Excel
  for I := 0 to AFields.Count - 1 do
  begin
    if AFields[I].FieldPos = -777 then
    begin
      AFields[I].FieldData := '';
    end else
    begin
//      AFields[I].FieldData := Copy(FData[StrNum, AFields[I].FieldPos], 1, 255);
      AFields[I].FieldData := Copy(FExcel.Cell[StrNum, AFields[I].FieldPos].Value, 1, 255);
    end;
  end;
end;

procedure TNDParserExcel.FindAllFields(AFields: TFileFields);
const
  // всего 11 столбцов - первый столбец без номера
  CVer_01 = '0;1;2;3;4;5;6;7;8;9;10';
  // всего 11 столбцов - первый столбец с номером 1
  CVer_02 = '1;2;3;4;5;6;7;8;9;10;11';
  // всего 9 столбцов - первый столбец без номера
  CVer_03 = '0;1;2;3;4;5;6;7;8';
  // всего 9 столбцов - первый столбец с номером 1
  CVer_04 = '1;2;3;4;5;6;7;8;9';
var
  I: Integer;
  VHeader: string;
  VField: TFileField;
begin
  for I := 0 to 10 do
  begin
    AFields[I].FieldPos := -777;
  end;

  // в файлах дурдом твориться с наименованием полей
  // могут вставить пустые колонки
  // проставляем для каждого поля номер колонки Excel
  StrHeader := -1;

  // ищем строку заголовка
  for I := FDataRange.Row to FDataRange.Rows.Count do
  begin
    // собираем текст
    VHeader := GetRowText(I);

    // проверяем нашли заголовок или нет
    if (VHeader = CVer_01) or (VHeader = CVer_02) or
       (VHeader = CVer_03) or (VHeader = CVer_04) then
    begin
      StrHeader := I;
      SetColumnNo(I, AFields);
      Break;
    end;

    // если за 25 строк не нашил заголовок то считаем что его нет
    if I > 25 then
    begin
      Break;
    end
  end;

  // если не нашли заголовок то
  // жестко зашиваем порядок полей
  if StrHeader = -1 then
  begin
    StrHeader := 1;

    for I := 0 to 10 do
    begin
      VField := AFields.FieldByName(FIELDS[I, 1]);
      VField.FieldPos := I + 1;
    end;
  end;
end;

procedure TF001_Files.actLoadExecute(Sender: TObject);
begin
  // загружаем файлы
  LoadFiles;

  // обновляем
  RefreshAllRecords;
end;

procedure TF001_Files.actOpenFileExecute(Sender: TObject);
begin
  // открыть файл
  if not ShellExecute(Application.Handle, nil,
      PChar(FLink.GetLoadPath + '\' + odsListT202_FILE_NAME.AsString), nil, nil, SW_SHOWNORMAL)<= 32 then
  begin
    TAppMessages.Error('Ошибка открытия файла!');
  end;
end;

procedure TF001_Files.actShowDataExecute(Sender: TObject);
begin
  // посмотреть данные
  if not Assigned(FDataFrame) then
  begin
    FDataFrame := TF001_Data.Create(Self);
    FDataFrame.FrameName := 'Данные файла';
  end;
  FDataFrame.T202_ID := odsListT202_ID.AsFloat;
  FDataFrame.InitFrame(FDataFrame);
  FDataFrame.ShowModal;
end;

function TNDParserExcel.GetRowText(const ARow: Integer): string;
var
  VCount, J: Integer;
  VValue: string;
begin
  // собираем текст ячеек через ";" пропуская пустые ячейки (кроме первой пустой)
  // собираем пока не наберем 11 значений или дойдем до последней колонки
  VCount := 0;
  Result := '';
  for J := FDataRange.Column to FDataRange.Columns.Count do
  begin
    // счетчик найденных значений
    if VCount >= 11 then Exit;

    // получаем значение ячейки
//    VValue := Trim(FData[ARow, J]);
    VValue := Trim(FExcel.Cell[ARow, J].Value);

    // для первой колонки подменям пусто на 0
    if (VValue = '') and (J = FDataRange.Column) then
    begin
      VValue := '0';
    end;

    // собираем текст
    if VValue <> '' then
    begin
      Inc(VCount);
      if Result <> '' then
      begin
        Result := Result + ';';
      end;
      Result := Result + VValue;
    end;
  end;
end;

function TNDParserExcel.SetColumnNo(const ARow: Integer; AFields: TFileFields): string;
var
  VCount, J: Integer;
  VValue: string;
begin
  // проставляем для полей номера колонок
  VCount := 0;
  Result := '';
  for J := FDataRange.Column to FDataRange.Columns.Count do
  begin
    // счетчик найденных значений
    if VCount >= 11 then Exit;

    // получаем значение ячейки
//    VValue := Trim(FData[ARow, J]);
    VValue := Trim(FExcel.Cell[ARow, J].Value);

    // для первой колонки подменям пусто на 0
    if (VValue = '') and (J = FDataRange.Column) then
    begin
      VValue := '0';
    end;

    // собираем текст
    if VValue <> '' then
    begin
      Inc(VCount);
      AFields[VCount - 1].FieldPos := J;
    end;
  end;
end;

procedure TF001_Files.RefreshAllRecords;
begin
  // проверям папку с файлами
  FindFiles;

  //
  inherited;
end;

end.
