unit dm03_ReportsData;

interface

uses
  Forms, Oracle, Db, Classes, OracleData, unt203_Reports, Variants;

type
  Tdm03_Reports = class(TDataModule)
    odsRepList: TOracleDataSet;
    odsRepPrm: TOracleDataSet;
    odsPrmOut: TOracleDataSet;
    pkRepUtils: TOraclePackage;
    odsRepData: TOracleDataSet;
    odsRepTables: TOracleDataSet;
    odsPeriods: TOracleDataSet;
    odsPeriodsT055_ID: TFloatField;
    odsPeriodsT055_LONG_NAME: TStringField;
    odsPeriodsT055_TYPE: TStringField;
    oqGetPeriod: TOracleQuery;
    oqSetPeriod: TOracleQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    FReportsManager: TRepManager;
    function GetReports: TReports;
    procedure BuildExcelDocument(const AReport: TReport);
    //
    // получаем данные отчета
    procedure GetRepData(const AReport: TReport);
    // сохраняем значения параметров
    procedure SaveParams(const AReport: TReport);
    // выполняем хранимую процедуру и получаем данные в виде DataSet'a
    procedure DoSQLProc(const AReport: TReport);
    // получаем список переменных из
    procedure GetParams(const AReport: TReport);
    // очищаем данные отчета
    procedure ClearRepData(const AReport: TReport);
  public
    // показать отчет в Excel
    procedure ShowReport(const AReport: TReport);
    procedure ShowRepBook(const AReports: TReports);
    //
    property Reports: TReports read GetReports;
  end;

var
  dm03_Reports: Tdm03_Reports;

implementation

uses
  SysUtils, Controls, dm005_MainData, untParams, unt204_ReportBuilder,
  Excel2000, unt201_ExcelConst, untMessages, Dialogs;

{$R *.DFM}

const
  TEMP_DIR = 'Reports\';                // директория с файлами шаблонов
  REPORTS_DIR = 'Temp\';                // директория с создаваемыми отчетами

  // тип данных
  DATA_TYPE_CODE: array[1..11] of TDataType = (
    dtBoolean,          // 1
    dtDateTime,         // 2
    dtFloat,            // 3
    dtInteger,          // 4
    dtString,           // 5
    dtVariant,          // 6
    dtIntArray,         // 7
    dtStrArray,         // 8
    dtFloatArray,       // 9
    dtCursor,           // 10
    dtUnknow            // 11
    );

type
  // Форма отчетности для фиктивных операций нерезидентов (в разрезе КО)
  TRpt405NrFicKO = class(TReportBuilder)
  protected
    procedure ExportTable(const ATablesItem: TTablesItem); override;
  end;

  // Форма отчетности для фиктивных операций нерезидентов (в разрезе плательщиков)
  TRpt405NrFicPay = class(TReportBuilder)
  private
//    procedure ExportBankTable(const ATablesItem: TTablesItem);
  protected
    procedure ExportTable(const ATablesItem: TTablesItem); override;
  end;

  // Формы отчетности со сменой отчетного периода расчета остатков
  TRemainsReport = class(TReportBuilder)
  end;

  // Отчет 109a
  TRemainsReport22a = class(TReportBuilder)
  protected
    procedure ExportTable(const ATablesItem: TTablesItem); override;
  end;


procedure Tdm03_Reports.BuildExcelDocument(const AReport: TReport);
var
  VClass: TReportBuilders;
  VBuilder: TReportBuilder;
begin
  VClass := TReportBuilders(FindClass(AReport.BuilderClass));
  VBuilder := VClass.Create;
  try
    VBuilder.BuildReport(AReport);
  finally
    VBuilder.Free;
  end;
end;

procedure Tdm03_Reports.ClearRepData(const AReport: TReport);
var
  I: Integer;
begin
  // очищаем временные таблица от старых значений
  dmMain.Commit;
  // закрываем DataSet'ы, избавляемся от старых
  for I := 0 to AReport.TablesList.Count - 1 do
  begin
    if not Assigned(AReport.TablesList[I].Data.DataSet) then Continue;

    AReport.TablesList[I].Data.DataSet.Free;
    AReport.TablesList[I].Data.DataSet := nil;
  end;
end;

procedure Tdm03_Reports.DataModuleCreate(Sender: TObject);
var
  VReport: TReport;
  VParam: TRepParam;
  VPath, VTempPath, VResPath: string;
begin
  FReportsManager := TRepManager.Create(Self);

  // путь к EXE файлу
  VPath := Concat(ExtractFilePath(Application.ExeName));

  // путь к директории с файлами шаблонов
  VTempPath := Concat(VPath, TEMP_DIR);

  // путь к директории где будут сохраняться созданные отчеты
  VResPath := Concat(VPath, REPORTS_DIR);

  // получаем дынные об отчетах
  with odsRepList do
  begin
    Close;
    Open;
    while not Eof do
    begin
      VReport := Reports.Add;

      // ID отчета
      VReport.ID := FieldByName('H002_ID').AsInteger;

      // название отчета [для показа на форме]
      VReport.ParentID := FieldByName('H002_PARENT_ID').AsInteger;

      // название отчета [для показа на форме]
      VReport.RepDisplayName := FieldByName('H002_DISPLAY_NAME').AsString;

      // полное название файла шаблона
      VReport.TempFileName := FieldByName('H002_TEMP_NAME').AsString;
      VReport.TempFileName := Concat(VTempPath, VReport.TempFileName);

      // найден ли шаблон отчета
      VReport.TempFileExists := FileExists(VReport.TempFileName);

      // полное название создаваемого файла
      VReport.ResultFileName := FieldByName('H002_FILE_NAME').AsString;
      // VReport.ResFileName := Concat(VResPath, VReport.ResFileName);

      // название класса для создания отчета
      VReport.BuilderClass := FieldByName('H002_CLASS_NAME').AsString;

      VReport.Executable :=  FieldByName('H002_EXECUTABLE').AsString = 'T';

//      // показываем отчет по завершению 
//      VReport.Visible := True;
      VReport.Visible := FieldByName('H002_VISIBLE').AsString = 'T';

      // получаем список параметров
      with odsRepPrm do
      begin
        Close;
        SetVariable('H002_ID', VReport.ID);
        Open;
        while not Eof do
        begin
          // создаем параметр в зависимости от типа данных
          VParam := VReport.Params.Add(DATA_TYPE_CODE[FieldByName('H004_DATA_TYPE').AsInteger]);

          // название параметра
          VParam.Name := FieldByName('H004_NAME').AsString;

          // код параметра
          VParam.ParamType := TParamType(FieldByName('H004_TYPE').AsInteger);

          // название класса для отображения параметра
          VParam.DisplayClassName := FieldByName('H004_CLASS_NAME').AsString;

          // показываем параметр пользователю
          VParam.Visible := FieldByName('H004_VISIBLE').AsBoolean;
          Next;
        end;
        Close;
      end;

      // получаем список таблиц
      with odsRepTables do
      begin
        Close;
        SetVariable('H002_ID', VReport.ID);
        Open;
        while not Eof do
        begin
          with VReport.TablesList.Add do
          begin
            // начальная колонка
            Position.Left := FieldByName('H007_START_COL').AsInteger;

            // начальная строка
            Position.Top := FieldByName('H007_START_ROW').AsInteger;

            // название Oracle процедуры для получения данных
            StoredProcName := FieldByName('H007_PROC_NAME').AsString;
          end;
          Next;
        end;
        Close;
      end;

      Next;
    end;
    Close;
  end;
end;

procedure Tdm03_Reports.DoSQLProc(const AReport: TReport);
const
  SQL_TEXT =
    'begin ' +
    ':c_ret := %s; ' +
    'end;';
var
  I: Integer;
  VDataSet: TOracleDataSet;
begin
  // выполняем хранимую процедуру и получаем данные в виде DataSet'a
  for I := 0 to AReport.TablesList.Count - 1 do
  begin
    VDataSet := TOracleDataSet.Create(Self);
    VDataSet.Session := dmMain.OracleSession;
    VDataSet.SQL.Text := Format(SQL_TEXT, [AReport.TablesList[I].StoredProcName]);
    VDataSet.DeclareVariable('C_RET', otCursor);
    VDataSet.Open;
    AReport.TablesList[I].Data.DataSet := VDataSet;
  end;
end;

procedure Tdm03_Reports.GetParams(const AReport: TReport);
var
  Str: String;
begin
  // получаем список переменных из
  AReport.VarList.Clear;
  odsPrmOut.Close;
  odsPrmOut.Open;
  try
    while not odsPrmOut.Eof do
    begin
      if not odsPrmOut.FieldByName('H006_DATE').IsNull then
	begin
	AReport.VarList.Values[odsPrmOut.FieldByName('H006_NAME').AsString] :=
	  odsPrmOut.FieldByName('H006_DATE').AsString;
	end
      else if not odsPrmOut.FieldByName('H006_NUMB').IsNull then
	begin
	Str := odsPrmOut.FieldByName('H006_NUMB').AsString;
//	if Pos(',', Str) <> 0 then
//	  Str[Pos(',', Str)] := '.';
	AReport.VarList.Values[odsPrmOut.FieldByName('H006_NAME').AsString] := Str;
	end
      else
	begin
	AReport.VarList.Values[odsPrmOut.FieldByName('H006_NAME').AsString] :=
	  odsPrmOut.FieldByName('H006_STR').AsString;
	end;
      odsPrmOut.Next;
    end;
  finally
    odsPrmOut.Close;
  end;
end;

procedure Tdm03_Reports.GetRepData(const AReport: TReport);
begin
  // сохраняем значения параметров
  SaveParams(AReport);

  // выполняем хранимую процедуру и получаем данные в виде DataSet'a
  DoSQLProc(AReport);
  // получаем список переменных из
  GetParams(AReport);
end;

function Tdm03_Reports.GetReports: TReports;
begin
  Result := FReportsManager.Reports;
end;

procedure Tdm03_Reports.SaveParams(const AReport: TReport);
var
  I, J: Integer;
begin
  // сохраняем значения параметров
  for I := 0 to AReport.Params.Count - 1 do
  begin
    case AReport.Params[I].DataType of
      dtDateTime:
	pkRepUtils.CallProcedure('p_save_in_prm_date', [
	    'i_name', AReport.Params[I].Name,
	    'i_value', AReport.Params[I].AsDateTime
	    ]);
      dtFloat, dtInteger:
	pkRepUtils.CallProcedure('p_save_in_prm_numb', [
	  'i_name', AReport.Params[I].Name,
	  'i_value', AReport.Params[I].AsFloat
	  ]);
      dtFloatArray:
	for J := Low(AReport.Params[I].AsFloatArray) to High(AReport.Params[I].AsFloatArray) do
	begin
	  pkRepUtils.CallProcedure('p_save_in_prm_numb', [
	    'i_name', AReport.Params[I].Name,
	    'i_value', AReport.Params[I].AsFloatArray[J]
	    ]);
	end;
      dtStrArray:
	for J := Low(AReport.Params[I].AsStrArray) to High(AReport.Params[I].AsStrArray) do
	begin
	  pkRepUtils.CallProcedure('p_save_in_prm_str', [
	    'i_name', AReport.Params[I].Name,
	    'i_value', AReport.Params[I].AsStrArray[J]
	    ]);
	end;
    else
      pkRepUtils.CallProcedure('p_save_in_prm_str', [
	'i_name', AReport.Params[I].Name,
	'i_value', AReport.Params[I].AsString
	]);
    end;
  end;
end;

procedure Tdm03_Reports.ShowRepBook(const AReports: TReports);
var
  I, j: Integer;
  VRepBookBuilder: TRepBookBuilder;
  vWorksheet: Excel2000.ExcelWorkSheet;
  vFound: boolean;
begin
  // создаем файл отчета в Excel
  Screen.Cursor := crHourGlass;
  VRepBookBuilder := nil;
  try
    VRepBookBuilder := TRepBookBuilder.Create(AReports.Items[0].BuilderClass);
    if AReports.CreateNewFile = True then
      VRepBookBuilder.OpenRepBook('')
    else
      VRepBookBuilder.OpenRepBook(AReports.Items[0].TempFileName);

//    SaveParams(AReport);
    for I := 0 to AReports.Count - 1 do
      begin
      try
      	// получаем данные отчета
      	GetRepData(AReports.Items[I]);

        // посылаем данные в Excel
        if AReports.CreateNewFile = True then
          // Создаем новый лист
          VRepBookBuilder.BuildNewSheet(AReports.Items[I])
        else
          begin
          // Находим нужный лист в шаблоне
          vFound := False;
          for j := 1 to VRepBookBuilder.RepBuilder.ExclReport.Workbook.Worksheets.Count do
            begin
            vWorksheet := VRepBookBuilder.RepBuilder.ExclReport.Workbook.Worksheets.Item[j] as Excel2000.ExcelWorksheet;
            if vWorksheet.Name = AReports.Items[I].SheetName then
              begin
              vWorksheet.Activate(0);
              VRepBookBuilder.RepBuilder.ExclReport.Worksheet := vWorksheet;
              vFound := True;
              break;
              end;
            end;

          if vFound = True then
            VRepBookBuilder.RepBuilder.BuildOnSheet(AReports.Items[I], vWorksheet)
          else
            begin
            if TAppMessages.ShowConfirmation('Лист отчета '+AReports.Items[I].SheetName+' в шаблоне не найден. Продолжить?') = False then
              break;
            end;
          end;
      finally
      	ClearRepData(AReports.Items[I]);
      end;
      end;
  finally
    if Assigned(VRepBookBuilder) then
      begin
      VRepBookBuilder.CloseRepBook(AReports.ResultFileName);
      VRepBookBuilder.Free;
      end;
    Screen.Cursor := crDefault;
  end;
end;

procedure Tdm03_Reports.ShowReport(const AReport: TReport);
var
  I: Integer;
  vT055_ID: Double;
begin
  // создаем файл отчета в Excel
  vT055_ID := 0;
  Screen.Cursor := crHourGlass;
  try
    if AReport.BuilderClass = 'TRemainsReport' then
      begin
      oqGetPeriod.Execute;
      vT055_ID := oqGetPeriod.GetVariable('RESULT');
      end;

    // сохраняем значения параметров
    SaveParams(AReport);
    // выполняем хранимую процедуру и получаем данные в виде DataSet'a
    DoSQLProc(AReport);
    try
      // получаем список переменных из
      GetParams(AReport);
      // посылам данные в Excel
      BuildExcelDocument(AReport);
    finally
      // закрываем DataSet'ы
      for I := 0 to AReport.TablesList.Count - 1 do
      begin
        if not Assigned(AReport.TablesList[I].Data.DataSet) then Continue;
        AReport.TablesList[I].Data.DataSet.Free;
        AReport.TablesList[I].Data.DataSet := nil;
      end;
    end;

    // очищаем временные таблицы (делаем Commit)
    dmMain.Commit;
  finally
    if AReport.BuilderClass = 'TRemainsReport' then
      begin
      oqSetPeriod.SetVariable('T055_ID', vT055_ID);
      oqSetPeriod.Execute;
      end;

    Screen.Cursor := crDefault;
  end;
end;

//необычный экспорт в excel (фиктивные операции с точки зрения КО)
procedure TRpt405NrFicKO.ExportTable(const ATablesItem: TTablesItem);
var
  VRow: Integer;
  VRowCount: Integer;
  I: Integer;
  VRange: Excel2000.ExcelRange;

  VBankName: String;
  VColCount: Integer;
  VCol: Integer;
  VArrayParam: TFloatArray;
  VArrayData: Array of Array of Variant;
  VFind: Boolean;
  VDataSetFic: TDataSet;
  VT055_ID: Integer;
  VColData: Integer;
begin
  dm03_Reports.odsPeriods.Close;
  dm03_Reports.odsPeriods.Open;
  VArrayParam := ATablesItem.Report.Params[0].AsFloatArray;
  VColCount := Length(VArrayParam) + 3;// 0 столбец - номер п/п
                                       // 1 столбец - название КО
                                       // последний столбец - сумма по всем периодам для КО
  //заполнение шапки
  SetLength(VArrayData, 3);// 1 строка заголовка, 2 строка с суммой по столбцу, 3 строка пустая
  SetLength(VArrayData[0], VColCount);
  SetLength(VArrayData[1], VColCount);
  SetLength(VArrayData[2], VColCount);
  VArrayData[0, 0] := '№ п/п';
  VArrayData[0, 1] := 'Наименование КО (рег. номер) (типы ценных бумаг)';
  VArrayData[0, VColCount - 1] := 'Всего';
  VArrayData[1, VColCount - 1] := 0;//сумма по всем КО
  for I := 2 to VColCount - 1 do
    VArrayData[1, I] := 0;
  VArrayData[1, 0] := 'Итого';

  VDataSetFic := ATablesItem.Data.DataSet;
  VRowCount := 3;
  while not VDataSetFic.Eof do
  begin
    VRowCount := VRowCount + 1;
    SetLength(VArrayData, VRowCount);
    SetLength(VArrayData[VRowCount - 1], VColCount);
    VBankName := VDataSetFic.FieldByName('T002_BANK_NAME').AsString;
    VArrayData[VRowCount - 1, 0] := VRowCount - 3;//№ п/п
    VArrayData[VRowCount - 1, 1] := VBankName;    //Наименование КО
    VArrayData[VRowCount - 1, VColCount - 1] := VDataSetFic.FieldByName('T001_OP_SUM_CROSS_SALDO').AsFloat;//Сумма по строке
    VArrayData[1, VColCount - 1] := VArrayData[1, VColCount - 1] + VArrayData[VRowCount - 1, VColCount - 1];// увеличиваем общую сумму
    VDataSetFic.Next;

    dm03_Reports.odsPeriods.First;
    VColData := 1;

    while not dm03_Reports.odsPeriods.Eof do
    begin
      VCol := 0;  
      VFind := False;
      while (not VFind) and (VCol <= VColCount - 4) do  // -4, потому что VColCoutn учитывает дополнительные 3 колонки, которых нет в VArrayParam 
      begin
        if VArrayParam[VCol] = dm03_Reports.odsPeriods.FieldByName('T055_ID').AsInteger then
        begin
          VColData := VColData + 1;
          VArrayData[0, VColData] := dm03_Reports.odsPeriods.FieldByName('T055_LONG_NAME').AsString;

          VT055_ID := VDataSetFic.FieldByName('Period_ID').AsInteger;
          while (VDataSetFic.FieldByName('T002_BANK_NAME').AsString = VBankName) and (not VDataSetFic.Eof)
                and (not VFind) do
          begin
            if VArrayParam[VCol] = VDataSetFic.FieldByName('Period_ID').AsInteger then
            begin
              VArrayData[VRowCount - 1, VColData] := VDataSetFic.FieldByName('T001_OP_SUM_CROSS_SALDO').AsFloat;
              VFind := True;
            end;
            VDataSetFic.Next;
          end;
          VDataSetFic.Locate('T002_BANK_NAME; PERIOD_ID', VarArrayOf([VBankName, VT055_ID]), []);
          if not VFind then
          begin
            VArrayData[VRowCount - 1, VColData] := 0;
            VFind := True;
          end;
          VArrayData[1, VColData] := VArrayData[1, VColData] + VArrayData[VRowCount - 1, VColData];// увеличиваем сумму по столбцу
        end;
        VCol := VCol + 1;
      end;
      dm03_Reports.odsPeriods.Next;
    end;

    while (VBankName = VDataSetFic.FieldByName('T002_BANK_NAME').AsString) and (not VDataSetFic.Eof) do
    begin
      VDataSetFic.Next;
    end;

  end;

  VCol := ATablesItem.Position.Left - 1;
  VRow := ATablesItem.Position.Top - 2;

  VRange := FExclReport.Range[2, 1, 2, VCol + VColCount - 1];
  VRange.WrapText := True;
  VRange.MergeCells := True;
  VRange.Value := 'Сводные данные о чистых перечислениях денежных средств нерезидентам по фиктивным операциям с акциями, векселями1 и прочими ценными бумагами , в разрезе отдельных кредитных организаций';
  VRange.HorizontalAlignment := xlCenter;
  VRange := FExclReport.Range[3, 1, 3, VCol + VColCount - 1];
  VRange.WrapText := True;
  VRange.MergeCells := True;
  VRange.Value := '(отрицательный знак - перевод денежных средств нерезидентам; положительный знак - перевод денежных средств резидентам)';
  VRange.HorizontalAlignment := xlCenter;

  VRange := FExclReport.Range[VRow, VCol, VRow + VRowCount - 1, VCol + VColCount - 1];
  VRange.Value := VArrayData;
  // обводим линией
  VRange.Borders.LineStyle := unt201_ExcelConst.xlContinuous;
  VRange := FExclReport.Cell[7, 1];
  //По центру первый столбец с номером по порядку
  VRange.EntireColumn.HorizontalAlignment := xlCenter;
  FExclReport.Cell[6, 1].HorizontalAlignment := xlLeft;
  //Перенос по словам для заголовка
  VRange.EntireRow.WrapText := True;
  VRange.EntireRow.Font.Bold := True;

  //Денежный формат
  VRange := FExclReport.Range[VRow + 1, VCol + 2, VRow + VRowCount - 1, VCol + VColCount - 1];
  VRange.NumberFormat := '# ##0.00';
end;

//необычный экспорт в Exsel (фиктивные операции в разрезе плательщиков)
procedure TRpt405NrFicPay.ExportTable(const ATablesItem: TTablesItem);
var
  vDataSetFic: TDataSet;
  //VdsPeriods: TDataSet;
  VArrayParam: TFloatArray;
  VArrayData: Array of Array of Variant;
  VRowCount: Integer;
  VColCount: Integer;
  //VColData: Integer;
  VCol: Integer;
  VFind: Boolean;
  //VT055_ID: Integer;
  VRow: Integer;
  VBankName: String;
  VT012_ID: Integer;
  VRange: Excel2000.ExcelRange;

//
  VArrayBankRows: TIntArray;
  I: Integer;
begin
  VRowCount := 0;
  // получаем id периодов отсортированных в нужном порядке
  SetLength(VArrayParam, ATablesItem.Report.VarList.Count);
  for VCol := 0 to ATablesItem.Report.VarList.Count - 1 do
  begin
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! грубое упрощение
    VArrayParam[VCol] := StrToFloat(copy(ATablesItem.Report.VarList.Strings[VCol],2, 4));
  end;
  VDataSetFic := ATablesItem.Data.DataSet;
  vDataSetFic.Close;
  vDataSetFic.Open;
  VColCount := Length(VArrayParam) + 4;// 1 колонка - пустая
                                       // 2 - ИНН / Рег. номер КО
                                       // 3 - наименование КО
                                       // последняя - сумма по всем периодам
  //1, 2 строки - названия периодов
  //3 строка - оглавление по всем КО
  //4 строка - суммы по всем КО
  SetLength(VArrayData, 4);

  VRowCount := VRowCount + 1;
  SetLength(VArrayData[VRowCount - 1], VColCount);
  SetLength(VArrayData[VRowCount], VColCount);
  // выводим названия периодов в шапке
  for VCol := 3 to VColCount - 2 do
  begin
    VArrayData[VRowCount - 1, VCol] := ATablesItem.Report.VarList.Values['A' + FloatToStr(VArrayParam[VCol - 3])];
  end;
  VArrayData[VRowCount - 1, VColCount - 1] := 'Всего';

  VRowCount := VRowCount + 2;
  SetLength(VArrayData[VRowCount - 1], VColCount);
  VArrayData[VRowCount - 1, 0] := 'По всем кредитным организациям';
  SetLength(VArrayBankRows, 1);
  VArrayBankRows[0] := VRowCount - 1;

  VRowCount := VRowCount + 1;
  SetLength(VArrayData[VRowCount - 1], VColCount);
  VArrayData[VRowCount - 1, 0] := 'Сальдо фиктивных операций';
  for VCol := 3 to VColCount - 1 do
  begin
    VArrayData[VRowCount - 1, VCol] := 0;
  end;

  while not vDataSetFic.Eof do
  begin
    VRowCount := VRowCount + 3;
    SetLength(VArrayData, VRowCount);
    SetLength(VArrayData[VRowCount - 3], VColCount);
    SetLength(VArrayData[VRowCount - 2], VColCount);
    SetLength(VArrayData[VRowCount - 1], VColCount);
    VBankName := vDataSetFic.FieldByName('T002_BANK_NAME').AsString;
    VArrayData[VRowCount - 3, 0] := VBankName;
    VArrayData[VRowCount - 2, 0] := 'Сальдо фиктивных операций';
    for VCol := 3 to VColCount - 1 do
    begin
      VArrayData[VRowCount - 2, VCol] := 0;
    end;
    VArrayData[VRowCount - 1, 0] := '        Из них по отдельным клиентам банка';

    // номер строчки c именем КО в массиве VArrrayData
    SetLength(VArrayBankRows, Length(VArrayBankRows) + 1);
    VArrayBankRows[Length(VArrayBankRows) - 1] := VRowCount - 3;

    while (VBankName = vDataSetFic.FieldByName('T002_BANK_NAME').AsString) and (not vDataSetFic.Eof) do
    begin
      VRowCount := VRowCount + 1;
      SetLength(VArrayData, VRowCount);
      SetLength(VArrayData[VRowCount - 1], VColCount);
      VT012_ID := vDataSetFic.FieldByName('T012_ID').AsInteger;
      VArrayData[VRowCount - 1, 1] := vDataSetFic.FieldByName('T012_CODE').AsString;
      VArrayData[VRowCount - 1, 2] := vDataSetFic.FieldByName('T012_NAME').AsString;
      VArrayData[VRowCount - 1, VColCount - 1] := vDataSetFic.FieldByName('T001_OP_SUM_CROSS_SALDO').AsFloat;
      // увеличиваем сумму по всем периодам для КО
      VArrayData[VArrayBankRows[Length(VArrayBankRows) - 1] + 1, VColCount - 1] := VArrayData[VArrayBankRows[Length(VArrayBankRows) - 1] + 1, VColCount - 1] + VArrayData[VRowCount - 1, VColCount - 1];

      vDataSetFic.Next;
      // проставляем везде нули, чтоб потом пустых не оставалось
      for VCol := 3 to VColCount - 2 do
      begin
        VArrayData[VRowCount - 1, VCol] := 0;
      end;

      while (VT012_ID = vDataSetFic.FieldByName('T012_ID').AsInteger) and (not vDataSetFic.Eof) do
      begin
        VFind := False;
        VCol := 3;
        while (not VFind) and (VCol <= VColCount - 2) do
        begin
          if VArrayParam[VCol - 3] = vDataSetFic.FieldByName('PERIOD_ID').AsInteger then
          begin
            VArrayData[VRowCount - 1, VCol] := vDataSetFic.FieldByName('T001_OP_SUM_CROSS_SALDO').AsFloat;
            // увеличиваем сумму по всем КО по периоду
            VArrayData[3, VCol] := VArrayData[3, VCol] + vDataSetFic.FieldByName('T001_OP_SUM_CROSS_SALDO').AsFloat;
            // увеличиваем сумму по периоду для КО
            VArrayData[VArrayBankRows[Length(VArrayBankRows) - 1] + 1, VCol] := VArrayData[VArrayBankRows[Length(VArrayBankRows) - 1] + 1, VCol] + vDataSetFic.FieldByName('T001_OP_SUM_CROSS_SALDO').AsFloat;
            VFind := True;
          end;
          VCol := VCol + 1;
        end;
        vDataSetFic.Next;
      end;
    end;
  end;

  VCol := ATablesItem.Position.Left;
  VRow := ATablesItem.Position.Top;

  VRange := FExclReport.Range[2, 1, 2, 1 + VColCount - 1];
  VRange.WrapText := True;
  VRange.MergeCells := True;
  VRange.Value := 'Сводные данные о чистых перечислениях денежных средств нерезидентам по фиктивным операциям с акциями, векселями и прочими ценными бумагами в разрезе отдельных плательщиков';
  VRange.HorizontalAlignment := xlCenter;
  VRange.Font.Size := 12;
  VRange.Font.Bold := True;

  VRange := FExclReport.Range[3, 1, 3, 1 + VColCount - 1];
  VRange.WrapText := True;
  VRange.MergeCells := True;
  VRange.Value := '(отрицательный знак - перевод денежных средств нерезидентам;';
  VRange.HorizontalAlignment := xlCenter;

  VRange := FExclReport.Range[4, 1, 4, 1 + VColCount - 1];
  VRange.WrapText := True;
  VRange.MergeCells := True;
  VRange.Value := 'положительный знак - перевод денежных средств резидентам)';
  VRange.HorizontalAlignment := xlCenter;

  VRange := FExclReport.Range[VRow, VCol, VRow + VRowCount - 1, VCol + VColCount - 1];
  VRange.Value := VArrayData;
  // обводим линией
  VRange.Borders.LineStyle := unt201_ExcelConst.xlContinuous;
  VRange.NumberFormat := '# ##0.00';

  //редактируем строчки с именем KO
  for I := 0 to Length(VArrayBankRows) - 1 do
  begin
    VRange := FExclReport.Range[VRow + VArrayBankRows[I], VCol, VRow + VArrayBankRows[I], VCol + VColCount - 1];
    VRange.MergeCells := True;
    VRange.HorizontalAlignment := xlCenter;
    VRange.Font.Bold := True;
  end;

  //Редактируем шапку
  VRange := FExclReport.Cell[VRow, VCol];
  VRange.EntireColumn.ColumnWidth := 3.29;

  VRange := FExclReport.Range[VRow, VCol + 1, VRow, VCol + 2];
  VRange.MergeCells := True;
  VRange.Value := 'Плательщик';

  VRange := FExclReport.Cell[VRow + 1, VCol + 1];
  VRange.Value := 'ИНН / рег. номер КО';
  VRange.WrapText := True;
  VRange.EntireColumn.ColumnWidth := 13.71;
  VRange.EntireColumn.NumberFormat := '0';

  VRange := FExclReport.Cell[VRow + 1, VCol + 2];
  VRange.Value := 'Наименование';
  VRange.EntireColumn.ColumnWidth := 33.57;

  for I := 3 to VColCount - 1 do
  begin
    VRange := FExclReport.Range[VRow, VCol + I, VRow + 1, VCol + I];
    VRange.MergeCells := True;
    VRange.WrapText := True;
    VRange.EntireColumn.ColumnWidth := 9.14;
    VRange.EntireColumn.NumberFormat := '# ##0.00'
  end;

  VRange := FExclReport.Range[VRow, VCol, VRow + 1, VCol + VColCount - 1];
  VRange.HorizontalAlignment := xlCenter;
  VRange.VerticalAlignment := xlCenter;
  VRange.EntireColumn.Font.Name := 'Times New Roman';





{
  // получаем id периодов отсортированных в нужном порядке
  SetLength(VArrayParam, ATablesItem.Report.VarList.Count);
  for VCol := 0 to ATablesItem.Report.VarList.Count - 1 do
  begin
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! грубое упрощение
    VArrayParam[VCol] := StrToFloat(copy(ATablesItem.Report.VarList.Strings[VCol],2, 4));
  end;
  VDataSetFic := ATablesItem.Data.DataSet;
  vDataSetFic.Close;
  vDataSetFic.Open;
  VColCount := Length(VArrayParam) + 2;// 1 колонка имя клиента банка
                                       // 2 колонка - сумма по всем периодам
  //1 строка - названия периодов
  //2 строка - оглавление по всем КО
  //3 строка - суммы по всем КО
  SetLength(VArrayData, 3);
  SetLength(VArrayData[0], VColCount);
  for VCol := 1 to VColCount - 2 do
  begin
    VArrayData[0, VCol] := ATablesItem.Report.VarList.Values['A' + FloatToStr(VArrayParam[VCol - 1])];
  end;
  VArrayData[0, VColCount - 1] := 'Всего';

  SetLength(VArrayData[1], VColCount);
  VArrayData[1, 0] := 'По всем кредитным организациям';
  SetLength(VArrayBankRows, 1);
  VArrayBankRows[0] := 1;

  SetLength(VArrayData[2], VColCount);
  VArrayData[2, 0] := 'Сальдо фиктивных операций';
  for VCol := 1 to VColCount - 1 do
  begin
    VArrayData[2, VCol] := 0;
  end;

  VRowCount := 3;

  while not vDataSetFic.Eof do
  begin
    VRowCount := VRowCount + 3;
    SetLength(VArrayData, VRowCount);
    SetLength(VArrayData[VRowCount - 3], VColCount);
    SetLength(VArrayData[VRowCount - 2], VColCount);
    SetLength(VArrayData[VRowCount - 1], VColCount);
    VBankName := vDataSetFic.FieldByName('T002_BANK_NAME').AsString;
    VArrayData[VRowCount - 3, 0] := VBankName;
    VArrayData[VRowCount - 2, 0] := 'Сальдо фиктивных операций';
    for VCol := 1 to VColCount - 1 do
    begin
      VArrayData[VRowCount - 2, VCol] := 0;
    end;
    VArrayData[VRowCount - 1, 0] := '      Из них по отдельным клиентам банка';

    // номер строчки c именем КО в массиве VArrrayData
    SetLength(VArrayBankRows, Length(VArrayBankRows) + 1);
    VArrayBankRows[Length(VArrayBankRows) - 1] := VRowCount - 3;

    while (VBankName = vDataSetFic.FieldByName('T002_BANK_NAME').AsString) and (not vDataSetFic.Eof) do
    begin
      VRowCount := VRowCount + 1;
      SetLength(VArrayData, VRowCount);
      SetLength(VArrayData[VRowCount - 1], VColCount);
      VT012_ID := vDataSetFic.FieldByName('T012_ID').AsInteger;
      VArrayData[VRowCount - 1, 0] := vDataSetFic.FieldByName('T012_NAME').AsString;
      VArrayData[VRowCount - 1, VColCount - 1] := vDataSetFic.FieldByName('T001_OP_SUM_CROSS_SALDO').AsFloat;
      VArrayData[VArrayBankRows[Length(VArrayBankRows) - 1] + 1, VColCount - 1] := VArrayData[VArrayBankRows[Length(VArrayBankRows) - 1] + 1, VColCount - 1] + VArrayData[VRowCount - 1, VColCount - 1];

      vDataSetFic.Next;
      // проставляем везде нули, чтоб потом пустых не оставалось
      for VCol := 1 to VColCount - 2 do
      begin
        VArrayData[VRowCount - 1, VCol] := 0;
      end;

      while (VT012_ID = vDataSetFic.FieldByName('T012_ID').AsInteger) and (not vDataSetFic.Eof) do
      begin
        VFind := False;
        VCol := 1;
        while (not VFind) and (VCol <= VColCount - 2) do
        begin
          if VArrayParam[VCol - 1] = vDataSetFic.FieldByName('PERIOD_ID').AsInteger then
          begin
            VArrayData[VRowCount - 1, VCol] := vDataSetFic.FieldByName('T001_OP_SUM_CROSS_SALDO').AsFloat;
            // увеличиваем сумму по всем КО по периоду
            VArrayData[2, VCol] := VArrayData[2, VCol] + vDataSetFic.FieldByName('T001_OP_SUM_CROSS_SALDO').AsFloat;
            // увеличиваем сумму по периоду для КО
            VArrayData[VArrayBankRows[Length(VArrayBankRows) - 1] + 1, VCol] := VArrayData[VArrayBankRows[Length(VArrayBankRows) - 1] + 1, VCol] + vDataSetFic.FieldByName('T001_OP_SUM_CROSS_SALDO').AsFloat;
            VFind := True;
          end;
          VCol := VCol + 1;
        end;
        vDataSetFic.Next;
      end;
    end;
  end;

  VCol := ATablesItem.Position.Left;
  VRow := ATablesItem.Position.Top;

  VRange := FExclReport.Range[2, 1, 2, 1 + VColCount - 1];
  VRange.WrapText := True;
  VRange.MergeCells := True;
  VRange.Value := 'Сводные данные о чистых перечислениях денежных средств нерезидентам по фиктивным операциям с акциями, векселями и прочими ценными бумагами в разрезе отдельных плательщиков';
  VRange.HorizontalAlignment := xlCenter;
  VRange.Font.Size := 12;
  VRange.Font.Bold := True;

  VRange := FExclReport.Range[3, 1, 3, 1 + VColCount - 1];
  VRange.WrapText := True;
  VRange.MergeCells := True;
  VRange.Value := '(отрицательный знак - перевод денежных средств нерезидентам;';
  VRange.HorizontalAlignment := xlCenter;

  VRange := FExclReport.Range[4, 1, 4, 1 + VColCount - 1];
  VRange.WrapText := True;
  VRange.MergeCells := True;
  VRange.Value := 'положительный знак - перевод денежных средств резидентам)';
  VRange.HorizontalAlignment := xlCenter;

  VRange := FExclReport.Range[VRow, VCol, VRow + VRowCount - 1, VCol + VColCount - 1];
  VRange.Value := VArrayData;
  // обводим линией
  VRange.Borders.LineStyle := untExcelConst.xlContinuous;

  //редактируем строчки с именем KO
  for I := 0 to Length(VArrayBankRows) - 1 do
  begin
    VRange := FExclReport.Range[VRow + VArrayBankRows[I], VCol, VRow + VArrayBankRows[I], VCol + VColCount - 1];
    VRange.MergeCells := True;
    VRange.HorizontalAlignment := xlCenter;
    VRange.Font.Bold := True;
  end;
}
end;

{ TRemainsReport22a }

procedure TRemainsReport22a.ExportTable(const ATablesItem: TTablesItem);
var
  VDataSet: TDataSet;
  VStartRow: Integer;
  VStartCol: Integer;

  VRange: Excel2000.ExcelRange;
  VArrayData: Array of Array of Variant;
  VRowCount: Integer;
  VColCount: Integer;
  i: Integer;

begin
  VDataSet := ATablesItem.Data.DataSet;
  VStartRow := ATablesItem.Position.Top;
  VStartCol := ATablesItem.Position.Left;

  vRowCount := VDataSet.FieldCount;
  vColCount := 0;
  VDataSet.First;
  while not VDataSet.Eof do
    begin
    vColCount := vColCount + 1;
    vDataSet.Next;
    end;

  // Формируем массив для данных DataSetа
  SetLength(VArrayData, VRowCount, VColCount);

  //Формируем массив с данными DataSet-а, развернутыми на 90 (строки в столбцы)
  VColCount := 0;
  VDataSet.First;
  while not VDataSet.Eof do
    begin
    // Заполняем массив данными из REF CURSOR отчета
    VColCount := VColCount + 1;
    for i:= 0 to VRowCount - 1 do
      begin
      VArrayData[i, VColCount - 1] := VDataSet.Fields.Fields[i].Value;
      end;
    VDataSet.Next;
    end;

  if VRowCount > 0 then
    begin
    //выводим данные в Excel
    VRange := FExclReport.Range[VStartRow,
				VStartCol,
				VStartRow + VRowCount - 1,
				VStartCol + VColCount - 1];
    VRange.Value := VArrayData;

    // Устанавливаем размер ячеек по первой строке
    VRange := FExclReport.Range[VStartRow, VStartCol, VStartRow, VStartCol + VColCount - 1];
    VRange.ColumnWidth := 25;

    // Делаем рамки вокруг ячеек шапки и меняем шрифт, где надо
    for i := VStartCol to VStartCol + VColCount - 1 do
      begin
      VRange := FExclReport.Range[VStartRow, i, VStartRow, i];
      VRange.BorderAround(EmptyParam, xlThin, 1, EmptyParam);
      VRange.WrapText := True;
      if Pos('ВСЕГО', VRange.Value) > 0 then
        VRange.Font.Bold := True;
      end;

    // Делаем рамку вокруг первой ячейки значений
    VRange := FExclReport.Range[VStartRow + 1, VStartCol, VStartRow + 1, VStartCol];
    VRange.BorderAround(EmptyParam, xlThin, 1, EmptyParam);

    // Преобразуем таблицу к формату первой ячейки значений
    VRange.Copy(EmptyParam);
//    FExclReport.Range[VStartRow + 1, VStartCol, VStartRow + VRowCount - 1, VStartCol + VColCount - 1].PasteSpecial(xlFormats, xlNone, False, False);
    VRange.ClearOutline;

    // Убираем рамки в пустых строках (42)
    FExclReport.Range[42, 1, 42, VStartCol + VColCount - 1].Clear;
    end;

  FExclReport.Range[1, 1, 1, 1].Select;
end;

initialization
  RegisterClasses([
    TReportBuilder,
    TRpt405NrFicKO,
    TRpt405NrFicPay,
    TRemainsReport,
    TRemainsReport22a
    ]);

end.




