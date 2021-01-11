unit A000_File2DbDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Oracle, frm00_ParentForm, A000_FileDescUnt, A000_ParserDM, A000_ProcInfoForm;

type
  TA000_File2Db = class(TDataModule)
    oqLoad: TOracleQuery;
    oqBefore: TOracleQuery;
    oqAfter: TOracleQuery;
  private
    FProcName: string;
    FProgress: TA000_ProcInfo;
    FClass: TA000_ParserClass;
    FFields: TFileFields;
    FFileName: string;
    //
    procedure PrepareQuery;
    procedure SaveRow;
    procedure LoadData;
    //
    procedure SetBeforeProcName(AValue: String);
    procedure SetAfterProcName(AValue: String);
  protected
    procedure BeforeLoad; virtual;
    procedure AfterLoad; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    //
    function  LoadFile: string;
    procedure BeforeProcClearParams;
    procedure SetBeforeProcParam(AName: String; AType: Integer; AValue: Variant);
    procedure SetAfterProcParam(AName: String; AType: Integer; AValue: Variant);
    procedure AfterProcClearParams;
    //
    property BeforeProcName: string write SetBeforeProcName;
    property AfterProcName: string write SetAfterProcName;
    property ProcName: string read FProcName write FProcName;
    property FileName: string read FFileName write FFileName;
    property Fields: TFileFields read FFields write FFields;
    property ParserClass: TA000_ParserClass read FClass write FClass;
  end;

var
  A000_File2Db: TA000_File2Db;

implementation

uses ShellAPI, untMessages, dm005_MainData;

{$R *.DFM}

resourcestring
  SProcName = 'Импорт данных из файла';
  SRecProgress =
    'Количество обработанных записей: %d из  %d';
  SFileNotFound =
    'Файл ''%s'' '              + #13#10 +
    'не найден!';
  SErrorLoad =
    'Ошибка при загрузке файла!' + #13#10 +
    'Строка %s!' + #13#10 +
    ' ' + #13#10 +
    '%s';

{ TA000_File2Db }


procedure TA000_File2Db.SetBeforeProcName(AValue: String);
const
  SQL_TEXT =
    'BEGIN' +
    ' %s; ' +
    'END;';
begin
  if AValue = '' then Exit;

  oqBefore.SQL.Text := Format(SQL_TEXT, [AValue]);
end;

procedure TA000_File2Db.SetAfterProcName(AValue: String);
const
  SQL_TEXT =
    'BEGIN' +
    ' %s; ' +
    'END;';
begin
  if AValue = '' then Exit;

  oqAfter.SQL.Text := Format(SQL_TEXT, [AValue]);
end;

procedure TA000_File2Db.BeforeProcClearParams;
begin
  oqBefore.DeleteVariables;
end;

procedure TA000_File2Db.SetBeforeProcParam(AName: String; AType: Integer; AValue: Variant);
begin
  oqBefore.DeclareVariable(AName, AType);
  oqBefore.SetVariable(AName, AValue);
end;

procedure TA000_File2Db.BeforeLoad;
begin
  if oqBefore.SQL.Text = '' then Exit;

  oqBefore.Execute;
end;

function TA000_File2Db.LoadFile: string;
var
  VOldCursor: TCursor;
begin
  Result := '';
  // запуск загрузки
  VOldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    dmMain.StartTransaction;
    try
      // Шаг 0. Стартуем процесс загрузки
      FProgress.CreateProcess;

      // Шаг 1. делаем что-то перед загрузкой
      FProgress.StartProcess(SProcName, 'Шаг 1. Подготовка к загрузке данных...', '', 2, 100);
      PrepareQuery;
      BeforeLoad;
      FProgress.SetProcInfo(SProcName, 'Шаг 1. Подготовка завершена', '', 10, 100);

      // Шаг 2. загружаем данные из файла (начинаем с 10% заканчиваем 80%)
      LoadData;

      // Шаг 3. Делаем что-то после загрузки
      FProgress.SetProcInfo(SProcName, 'Шаг 3. Обработка загруженных данных...', '', 81, 100);
      AfterLoad;
      FProgress.SetProcInfo(SProcName, 'Шаг 3. Обработка файла завершена', '', 100, 100);

      // Шаг 4. Процесс загрузки завершен
      FProgress.EndProcess('Импорт данных успешно завершен', True);
      dmMain.Commit;
    except
      on E: Exception do
      begin
        FProgress.HaltProcess;
        dmMain.Rollback;
        Result := E.Message;
        raise;
      end;
    end;
  finally
    Screen.Cursor := VOldCursor;
  end;
end;

procedure TA000_File2Db.AfterProcClearParams;
begin
  oqAfter.DeleteVariables;
end;

procedure TA000_File2Db.SetAfterProcParam(AName: String; AType: Integer; AValue: Variant);
begin
  oqAfter.DeclareVariable(AName, AType);
  oqAfter.SetVariable(AName, AValue);
end;

procedure TA000_File2Db.AfterLoad;
begin
  if oqAfter.SQL.Text = '' then Exit;

  oqAfter.Execute;
end;

procedure TA000_File2Db.PrepareQuery;
const
  SQL_TEXT =
    'BEGIN' +
    ' %s( %s ); ' +
    'END;';
var
  I: Integer;
  VSqlText: string;
begin
  // подготавливаем oqLoad
  oqLoad.SQL.Clear;
  oqLoad.DeleteVariables;

  // формируем SQL
  VSqlText := '';
  for I := 0  to FFields.Count - 1 do
  begin
    if VSqlText <> '' then
    begin
      VSqlText := Concat(VSqlText, ' ,');
    end;
    VSqlText := Concat(VSqlText, ' :', FFields[I].ParamName);
    // заводим параметры процедуры - все типа string
    oqLoad.DeclareVariable(FFields[I].ParamName, otString);
  end;
  oqLoad.SQL.Text := Format(SQL_TEXT, [FProcName, VSqlText]);
end;

procedure TA000_File2Db.LoadData;
var
  VParser: TA000_Parser;
  VRowNum, VProc: Integer;
  VComment: string;
begin
   // Шаг 2. загружаем данные из файла (начинаем с 10% заканчиваем 80%)
  FProgress.SetProcInfo(SProcName, 'Шаг 2. Загрузка данных из файла...', '', 11, 100);
  VRowNum := 0;
  try
    VParser := FClass.Create(nil);
    try
      try
        // открываем файл
        VParser.OpenFile(FFileName, FFields);
        FProgress.SetCnt('Файл открыт успешно', 12);
        Application.ProcessMessages;
        // встаем на первую строку
        VParser.First;
        // бежим по всем строкам
        while not VParser.Eof do
          begin
          // читаем строку из файла
          VParser.GetRowData(FFields);

          // сохраняем в БД
          SaveRow;

          // сами считаем сколько процентов строк загружено
          VRowNum := VParser.StrNum;
          VProc := Round((79  - 12) * VParser.RowNum / VParser.RowCount );
          VComment := Format(SRecProgress, [VParser.RowNum, VParser.RowCount]);
          FProgress.SetCnt(VComment, 12 + VProc);

          // переходим к следующей строке
          VParser.Next;
          end;
      finally
        VParser.CloseFile;
        FProgress.SetCnt('Файл закрыт', 79);
      end;
    finally
      VParser.Free;
    end;
    FProgress.SetProcInfo(SProcName, 'Шаг 2. Загрузка данных завершена', '', 80, 100);
  except
    on E: Exception do
    begin
      E.Message := Format(SErrorLoad, [IntToStr(VRowNum), E.Message]);
    	raise;
    end;
  end;
end;

procedure TA000_File2Db.SaveRow;
var
  I: Integer;
begin
  // устанавливаем значения
  for I := 0  to FFields.Count - 1 do
    begin
    oqLoad.SetVariable(FFields[I].ParamName, FFields[I].FieldData);
    end;

  // записываем
  oqLoad.Execute;
end;

constructor TA000_File2Db.Create(AOwner: TComponent);
begin
  inherited;

  FProgress := TA000_ProcInfo.Create(Self);

  FFields := TFileFields.Create(Self);
end;

end.
