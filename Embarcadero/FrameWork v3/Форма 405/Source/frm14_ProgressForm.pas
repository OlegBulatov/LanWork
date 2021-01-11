unit frm14_ProgressForm;

interface

uses
  Forms, Controls, StdCtrls, Classes, Gauges, Oracle, frm14_LoadConstUnt, Variants;
//  Windows, Messages, SysUtils, Graphics, Dialogs,
//  ExtCtrls, Db, OracleData, Oracle,

type
  TThreads = class of TThread;

  Tfrm14_Progress = class(TForm)
    ProgressBar1: TGauge;
    btnOk: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFileName: String;
    FFileCode: TDBFType;
    FCloseOnDone: Boolean;
  protected
    procedure DoOnTerminate(Sender: TObject);
  public
    { Public declarations }
    class function ExecProc(FileName: String; FileCode: TDBFType; const AThread: TThread): String; virtual;
  end;

  TLoadThread = class(TThread)
    procedure CloseForm;
    procedure InitForm;
    procedure SetProgress;
    procedure NextRecord;
  private
    FFileName: String;
    FFileCode: TDBFType;
    FRowCount: Integer;
    FRowNum: Integer;
    FErrorMessage: string;
    oqLoad: TOracleQuery;
    FProgressForm: Tfrm14_Progress;
  protected
    procedure Execute; override;
    function FormatStrToDate(const AValue: string): TDateTime;
  public
    property ErrorMessage: string read FErrorMessage write FErrorMessage;
    property FileName: String read FFileName write FFileName;
    property FileCode: TDBFType read FFileCode write FFileCode;
  end;

  TCSVLoadThread = class(TLoadThread)
    private
      function GetCSVColForStr(ACSVStr: String; AColStr: String; ASeparator: String): Integer;
      function GetCSVStrByCol(ACSVStr: String; ACol: Integer; ASeparator: String): String;
    protected
      procedure Execute; override;
    public
  end;

  TXLSLoadThread = class(TLoadThread)
    private
      FPeriodID: Integer;
      //
      procedure oqSetLoad(AQuery: TOracleQuery);
      procedure oqLoadOper(AQuery: TOracleQuery; AArray: OleVariant; ARow: Integer);
    protected
      procedure Execute; override;
    public
      property PeriodID: Integer write FPeriodID;
  end;


var
  frm14_Progress: Tfrm14_Progress;

implementation

uses dm005_MainData, Windows, SysUtils, Excel2000, OleServer, ActiveX, Dbf;

//uses untMessages, dbf, ComObj,

const
  lcid = LOCALE_USER_DEFAULT;

resourcestring
  SFileName = 'Файл: %s';
  SRecProgress = 'Количество обработанных записей: %d из  %d';
  SErrorLoad =
    'Ошибка при загрузке файла! Строка %s! %s';

{$R *.DFM}

{ TLoadThread }

procedure TXLSLoadThread.oqSetLoad(AQuery: TOracleQuery);
begin
  AQuery.SQL.Clear;
  AQuery.SQL.Text := 'BEGIN' +
                     '  Pk_405_GKO.p_input_data_load(:ISIN, :T055_ID, :REP_DATE, :NOMINAL, :AVG_PRICE, :COUPON_RATE, :COUPON_INCOME' +
                          ', :TOTAL_CNT, :NR_CNT, :NR_TURNOVER_CNT, :NR_TURNOVER_RUB, :NR_BALANCE_CNT, :NR_BALANCE_RUB); ' +
                     'END;';
  // объявляем
  AQuery.DeclareVariable('ISIN', otString);
  AQuery.DeclareVariable('T055_ID', otInteger);
  AQuery.DeclareVariable('REP_DATE',  otDate);
  AQuery.DeclareVariable('NOMINAL', otString);
  AQuery.DeclareVariable('AVG_PRICE', otString);
  AQuery.DeclareVariable('COUPON_RATE', otString);
  AQuery.DeclareVariable('COUPON_INCOME', otString);
  AQuery.DeclareVariable('TOTAL_CNT', otString);
  AQuery.DeclareVariable('NR_CNT', otString);
  AQuery.DeclareVariable('NR_TURNOVER_CNT', otString);
  AQuery.DeclareVariable('NR_TURNOVER_RUB', otString);
  AQuery.DeclareVariable('NR_BALANCE_CNT', otString);
  AQuery.DeclareVariable('NR_BALANCE_RUB', otString);
end;

procedure TXLSLoadThread.oqLoadOper(AQuery: TOracleQuery; AArray: OleVariant; ARow: Integer);
begin
  // устанавливаем значения
  AQuery.SetVariable('REP_DATE', FormatStrToDate(AArray[ARow, 1]));
  AQuery.SetVariable('ISIN', AArray[ARow, 2]);
  AQuery.SetVariable('T055_ID', FPeriodID);
  AQuery.SetVariable('NOMINAL', StrToFloat(AArray[ARow, 3]));
  AQuery.SetVariable('AVG_PRICE', StrToFloat(AArray[ARow, 4]));
  AQuery.SetVariable('COUPON_RATE', StrToFloat(AArray[ARow, 5]));
  AQuery.SetVariable('COUPON_INCOME', StrToFloat(AArray[ARow, 6]));
  AQuery.SetVariable('TOTAL_CNT', StrToFloat(AArray[ARow, 7]));
  AQuery.SetVariable('NR_CNT', StrToFloat(AArray[ARow, 8]));
  AQuery.SetVariable('NR_TURNOVER_CNT', StrToFloat(AArray[ARow, 9]));
  AQuery.SetVariable('NR_TURNOVER_RUB', StrToFloat(AArray[ARow, 10]));
  AQuery.SetVariable('NR_BALANCE_CNT', StrToFloat(AArray[ARow, 11]));
  AQuery.SetVariable('NR_BALANCE_RUB', StrToFloat(AArray[ARow, 12]));
  // Строка сформирована, записываем
  AQuery.Execute;
end;

procedure TXLSLoadThread.Execute;
var
  ExcelApp: Excel2000.TExcelApplication;
  Workbook: Excel2000.ExcelWorkbook;
  Sheet: Excel2000.ExcelWorksheet;
  DataArray: OleVariant;
  Row, Col: Integer;
begin
  Synchronize(InitForm);

  FRowNum := 0;
  ExcelApp := nil;
  Workbook := nil;

  try
    try
      ExcelApp := Excel2000.TExcelApplication.Create(nil);

      oqLoad := TOracleQuery.Create(nil);
      oqLoad.Session := dmMain.OracleSession;

      // подготавливаем oqLoad для загрузки данных
      oqSetLoad(oqLoad);
      
      ExcelApp.ConnectKind := ckNewInstance;
      //CoInitializeEx(nil, COINIT_MULTITHREADED); // !!!!
      CoInitialize(nil);
      ExcelApp.Connect;
      ExcelApp.AutoQuit := False; // по умолчанию это свойство True только в unit ExcelXP
      // Hide Excel
      ExcelApp.Visible[lcid] := False;

      // Open the Workbook
      Workbook := ExcelApp.Workbooks.Open(
        FileName,
        0,                // UpdateLinks: OleVariant; 0 - no charts are created, 2 - never update
        True,             // ReadOnly: OleVariant;
        5,       		      // Format: OleVariant; 5 - means nothing
        EmptyParam,       // Password: OleVariant;
        EmptyParam,       // WriteResPassword: OleVariant;
        True,             // IgnoreReadOnlyRecommended: OleVariant;
        EmptyParam,       // Origin: OleVariant;
        EmptyParam,       // Delimiter: OleVariant;
        True,             // Editable for Excel 4.0 add-in: OleVariant;
        False,            // Notify: OleVariant;
        0,                // Converter: OleVariant;
        False,            // AddToMru: OleVariant;
        0);		            // CorruptLoad: OleVariant;

      Sheet := Workbook.Sheets[1] as _Worksheet;
      DataArray := Sheet.UsedRange[lcid].Value;

      // Анализируем формат файла
      Col := VarArrayHighBound(DataArray, 2) - VarArrayLowBound(DataArray, 2) + 1;
      if Col < 12  then
      begin
        raise ERangeError.Create('Неверная структура файла');
      end;

      FRowCount := VarArrayHighBound(DataArray, 1) - (VarArrayLowBound(DataArray, 1)+3) + 1;
      Synchronize(SetProgress);
      // цикл по строкам начиная с 4й
      for Row := (VarArrayLowBound(DataArray, 1)+3) to VarArrayHighBound(DataArray, 1) do
      begin
        // записываем операцию в базу из строки Excel
        oqLoadOper(oqLoad, DataArray, Row);

        Inc(FRowNum);
        Synchronize(NextRecord);
        Application.ProcessMessages;
      end;
    except
      on e:Exception do
        FErrorMessage := Format(SErrorLoad, [IntToStr(FRowNum), E.Message + ': ' + oqLoad.SQL.Text]);
    end;
  finally
    // Unassign the Delphi Variant Matrix
    DataArray := Unassigned;
    oqLoad.Free;
    Synchronize(CloseForm);

    // Quit Excel
    if ExcelApp <> nil then
    begin
      if Workbook <> nil then
      begin
        Workbook.Close(False, EmptyParam, EmptyParam, lcid);
      end;

      ExcelApp.Quit; // закрыть Excel
      ExcelApp.Disconnect;
    end;

    FreeAndNil(ExcelApp);
    CoUnInitialize;
  end;
end;

procedure TCSVLoadThread.Execute;
const
  SEPARATOR = ';';
var
  FCSVFileList: TStringList;
  VRow: Integer;
  VStr: String;

  VDataStart: Boolean;
  NTradeDateCol: Integer;
  NSecIdCol:  Integer;
  NIsinCol:  Integer;
  NCloseCol: Integer;

  STradeDate: String;
  SSecId:  String;
  SIsin:  String;
  SClose: String;
begin
  Synchronize(InitForm);

  VDataStart := False;
  NTradeDateCol := -1;
  NSecIdCol := -1;
  NIsinCol := -1;
  NCloseCol := -1;
  FRowNum := 0;

  try
    oqLoad := TOracleQuery.Create(nil);
    oqLoad.Session := dmMain.OracleSession;
    oqLoad.SQL.Clear;
    oqLoad.DeclareVariable('TRADEDATE', otDate);
    oqLoad.DeclareVariable('SECID', otString);
    oqLoad.DeclareVariable('ISIN', otString);
    oqLoad.DeclareVariable('CLOSE', otFloat);
    oqLoad.SQL.Text := 'BEGIN' +
                       '  Pk_405_GKO.p_rate_load(:TRADEDATE, :SECID, :ISIN, :CLOSE); ' +
                       'END;';

    FCSVFileList := TStringList.Create;
    try
      FCSVFileList.LoadFromFile(FFileName);
      for VRow := 0 to FCSVFileList.Count - 1 do
      begin
        VStr := FCSVFileList[VRow];

        if not VDataStart then
        begin
          NTradeDateCol := GetCSVColForStr(VStr, 'TRADEDATE', SEPARATOR);
          if NTradeDateCol >= 0 then
          begin
            VDataStart := True;
            FRowCount := FCSVFileList.Count - VRow - 2;
            NSecIdCol := GetCSVColForStr(VStr, 'SECID', SEPARATOR);
            NIsinCol := GetCSVColForStr(VStr, 'ISIN', SEPARATOR);
            NCloseCol := GetCSVColForStr(VStr, 'CLOSE', SEPARATOR);
            Synchronize(SetProgress);
          end;
        end
        else
        begin
          Inc(FRowNum);
          Synchronize(NextRecord);

          STradeDate := GetCSVStrByCol(VStr, NTradeDateCol, SEPARATOR);
          SSecId := GetCSVStrByCol(VStr, NSecIdCol, SEPARATOR);
          SIsin := GetCSVStrByCol(VStr, NIsinCol, SEPARATOR);
          SClose := GetCSVStrByCol(VStr, NCloseCol, SEPARATOR);
          SClose := StringReplace(SClose, ',', '.', []);

          if STradeDate = '' then
          begin
            oqLoad.SetVariable('TRADEDATE', null)
          end
          else
          begin
            oqLoad.SetVariable('TRADEDATE', FormatStrToDate(STradeDate));
          end;

          oqLoad.SetVariable('SECID', SSecId);
          oqLoad.SetVariable('ISIN', SIsin);

          if SClose = '' then
          begin
            oqLoad.SetVariable('CLOSE', null)
          end
          else
          begin
            oqLoad.SetVariable('CLOSE', StrToFloat(SClose));
          end;

          oqLoad.Execute;
        end;
      end;

      Synchronize(CloseForm);
      oqLoad.Free;
    finally
      FCSVFileList.Free;
    end;
  except
    on E: Exception do
    begin
      Synchronize(CloseForm);
      oqLoad.Free;
      FErrorMessage := Format(SErrorLoad, [IntToStr(FRowNum), E.Message]);
    end;
  end;
end;

procedure TLoadThread.CloseForm;
begin
  FProgressForm.Cursor :=  crDefault;
  FProgressForm.ProgressBar1.Progress := FProgressForm.ProgressBar1.MaxValue;
  FProgressForm.Close;
end;

function TLoadThread.FormatStrToDate(
  const AValue: string): TDateTime;
begin
  // значение в формате 'ДД.ММ.ГГ' преобразуем в дату
  // заменяем точки на DateSeparator
  Result := StrToDate(StringReplace(AValue, '.', FormatSettings.DateSeparator, [rfReplaceAll]));
end;

function TCSVLoadThread.GetCSVColForStr(ACSVStr: String; AColStr: String; ASeparator: String): Integer;
var
  VSymbNumb: Integer;
  VPosColStr: Integer;
  VCol: Integer;
begin
  VPosColStr := Pos(AColStr, ACSVStr);

  if VPosColStr = 0 then
  begin
    Result := -1;
    Exit;
  end;

  if VPosColStr = 1 then
  begin
    Result := 0;
    Exit;
  end;

  VCol := 0;
  for VSymbNumb := 0 to VPosColStr do
  begin
    if ACSVStr[VSymbNumb] = ASeparator then Inc(VCol);
  end;

  Result := VCol;
end;

function TCSVLoadThread.GetCSVStrByCol(ACSVStr: String; ACol: Integer; ASeparator: String): String;
var
  VCol: Integer;
  VSymbNumb: Integer;
  VStr: String;
begin
  VStr := '';
  VCol := 0;
  VSymbNumb := 1;

  while (VCol < ACol) and (VSymbNumb <= Length(ACSVStr)) do
  begin
    if ACSVStr[VSymbNumb] = ASeparator then
    begin
      Inc(Vcol);
    end;

    Inc(VSymbNumb);
  end;

  for VSymbNumb := VSymbNumb to Length(ACSVStr) do
  begin
    if ACSVStr[VSymbNumb] = ASeparator then Break;

    VStr := VStr + ACSVStr[VSymbNumb];
  end;

  Result := VStr;
end;

procedure TLoadThread.Execute;
const
  SQL_TEXT =
    'BEGIN' +
    ' %s( %s ); ' +
    'END;';
var
  VDBF: TDbf;
  I: Integer;
  VOracleType: Integer;
  VSqlText: string;
  str: string;
begin
  Synchronize(InitForm);
  try
    oqLoad := TOracleQuery.Create(nil);
    oqLoad.Session := dmMain.OracleSession;
    oqLoad.SQL.Clear;

    FRowNum := 1;
    VDBF := TDbf.Create(nil);
    try
      VDBF.TableName := FFileName;
      VDBF.Exclusive := True;
      VDBF.Open;
      VDBF.CodePage := OEM;
      VDBF.First;
      // Формируем SQL
      VSqlText := '';
      for I := 1 to VDBF.FieldCount do
        begin
	      if VSqlText <> '' then
	        VSqlText := Concat(VSqlText, ' ,');
	      VSqlText := Concat(VSqlText, ' :', 'i_', VDBF.GetFieldName(I));
        end;
      VSqlText := Format(SQL_TEXT, [DBF_PROC_NAME[FFileCode], VSqlText]);
      oqLoad.SQL.Text := VSqlText;
      // заводим параметры функции
      oqLoad.DeleteVariables;
      if ((FileCode = ft711_31_new) or (FileCode = ft711_32_new)) then
        begin
        for I := 1 to VDBF.FieldCount do
          begin
  	      case VDBF.GetFieldType(I) of
  	        bfDate:   VOracleType := otDate;
	        else
            VOracleType := otString;
          end;
	        oqLoad.DeclareVariable('i_' + VDBF.GetFieldName(I), VOracleType);
          end;
        end
      else
        begin
        for I := 1 to VDBF.FieldCount do
          begin
  	      case VDBF.GetFieldType(I) of
  	        bfDate:   VOracleType := otDate;
  	        bfFloat:  VOracleType := otFloat;
  	        bfNumber: VOracleType := otFloat;
 	        else
            VOracleType := otString;
          end;
	        oqLoad.DeclareVariable('i_' + VDBF.GetFieldName(I), VOracleType);
          end;
        end;

      FRowCount := VDBF.RecordCount;
      Synchronize(SetProgress);

      while FRowNum <= FRowCount do // VDBF.Eof работает, но не так, как хочется
        begin
	      Synchronize(NextRecord);
	      FRowNum := FRowNum + 1;
	      oqLoad.ClearVariables;
	      for I := 1 to VDBF.FieldCount do
	        begin
	        str := VDBF.GetFieldData(I);
	        if str <> '' then
	          case oqLoad.VariableType(I-1) of
	            otFloat:
		            // если поле в DBF пустое то str = '#########'
		            if Pos('#', str) = 0 then
		              oqLoad.SetVariable('i_' + VDBF.GetFieldName(I), StrToFloat(str))
                else
		              oqLoad.SetVariable('i_' + VDBF.GetFieldName(I), 0);
              otInteger:
		            // если поле в DBF пустое то str = '#########'
		            if Pos('#', str) = 0 then
	                oqLoad.SetVariable('i_' + VDBF.GetFieldName(I), StrToInt(str))
                else
                 oqLoad.SetVariable('i_' + VDBF.GetFieldName(I), 0);
              otString:
		             oqLoad.SetVariable('i_' + VDBF.GetFieldName(I), str);
	            otDate:
		             oqLoad.SetVariable('i_' + VDBF.GetFieldName(I), FormatStrToDate(str));
	          end;
	        end;
	      oqLoad.Execute;
	      VDBF.Next;
        end;
    finally
      VDBF.Close;
      VDBF.Free;
      oqLoad.Free;
      Synchronize(CloseForm);
    end;

  except
    on E: Exception do FErrorMessage := Format(SErrorLoad, [IntToStr(FRowNum), E.Message]);
  end;
end;

procedure TLoadThread.InitForm;
begin
  FProgressForm.Label2.Caption := Format(SFileName, [ExtractFileName(FFileName)]);
  FProgressForm.Label1.Caption := 'Количество обработанных записей';
end;

procedure TLoadThread.SetProgress;
begin
  FProgressForm.ProgressBar1.MaxValue := FRowCount;
  FProgressForm.Label1.Caption := Format(SRecProgress, [0, FRowCount]);
end;

procedure TLoadThread.NextRecord;
begin
  FProgressForm.ProgressBar1.Progress := FRowNum;
  FProgressForm.Label1.Caption := Format(SRecProgress, [FRowNum, FRowCount]);
end;

{ Tfrm14_Progress }

class function Tfrm14_Progress.ExecProc(FileName: String; FileCode: TDBFType; const AThread: TThread): String;
var
  VThread: TLoadThread;
//  MaxValue: Double;
begin
  Result := '';
  if not Assigned(frm14_Progress) then
  begin
    frm14_Progress := Tfrm14_Progress.Create(Application);
  end;

  frm14_Progress.FFileName := FileName;
  frm14_Progress.FFileCode := FileCode;

  frm14_Progress.btnOk.Enabled := False;
  frm14_Progress.Cursor := crHourGlass;

  frm14_Progress.ProgressBar1.Progress := 0;

  // запускаем процесс
//  VThread := TLoadThread(ATThread.Create(True));
  VThread := TLoadThread(AThread);
//  try
    VThread.ErrorMessage := '';
    VThread.FileName := FileName;
    VThread.FileCode := FileCode;
    VThread.FreeOnTerminate := False;
    VThread.FProgressForm := frm14_Progress;
    VThread.OnTerminate := frm14_Progress.DoOnTerminate;
    VThread.Resume;
    frm14_Progress.ShowModal;
    if VThread.ErrorMessage <> '' then
    begin
      Result := VThread.ErrorMessage;
      //TAppMessages.Error('Ошибка при выполнении загрузки: ' + VThread.ErrorMessage);
    end;
//  finally
//    VThread.Free;
//  end;
  Application.ProcessMessages;
end;

procedure Tfrm14_Progress.DoOnTerminate(Sender: TObject);
begin
  frm14_Progress.Cursor :=  crDefault;
  ProgressBar1.Progress := ProgressBar1.MaxValue;
  if frm14_Progress.FCloseOnDone then
  begin
    frm14_Progress.Close;
  end;
end;

procedure Tfrm14_Progress.FormCreate(Sender: TObject);
begin
  FCloseOnDone := true;
end;

end.
