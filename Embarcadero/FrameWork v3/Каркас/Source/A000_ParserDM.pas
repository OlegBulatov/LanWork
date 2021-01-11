unit A000_ParserDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  A000_FileDescUnt;

type
  {
  *****************************************************************************
    Назанчение: Базовый класс для парсинга и навигации по данным,
                представляющим собой таблицу.
  *****************************************************************************
    Описание:   В общем случае на вход можем получить массив данных
                где таблица с данными начинается не с первой,
                а с 5 или 10 строки.
                Таким образом в "Строках файла" мы выделям
                подобласть "Таблица данных".
                И именно по подобласти "Таблица данных" будет осуществляться
                навигация (First, Next, Eof, GetData).
  *****************************************************************************
    Пример:     VParser.OpenFile(FFileName, FFields);
                try
                  VParser.First;
                  while not VParser.Eof do
                  begin
                    VParser.GetRowData(FFields);
                    VParser.Next;
                  end;
                finally
                  VParser.CloseFile;
                end;
  *****************************************************************************
  }

  TA000_Parser = class(TDataModule)
  private
    FStrNum: Integer;                                                           // номер текущей строки в файле
    FStrHeader: Integer;                                                        // номер строки заголовка в файле
    FEof: Boolean;
    FShowError: Boolean;                                                              // признак конца таблицы данных
    function GetRowNum: Integer;
    function GetRowCount: Integer;
  protected
    // переопределям для файлов где навигация только методами First и Next
    procedure DoFirst; virtual;                                                 // реализация - в начало
    procedure DoNext; virtual;                                                  // реализация - в вперед
    // переопределям в наследниках обязательно
    procedure FindAllFields(ARow: TFileFields); virtual; abstract;              // реализация - поиск полей
    procedure DoOpenFile(const AFileName: string); virtual; abstract;           // реализация - открываем файл
    function  GetStrCount: Integer; virtual; abstract;                          // реализация - количество всех строк
    // счетчики по всему массиву данных
    property StrHeader: Integer read FStrHeader write FStrHeader;               // номер строки заголовка в файле
  public
    // работа с файлом
    constructor Create(AOwner: TComponent); override;
    procedure OpenFile(const AFileName: string; AFields: TFileFields);          // открываем файл
    procedure CloseFile; virtual; abstract;                                     // закрываем файл
    procedure CheckFormat(AFields: TFileFields);                                // проверка формата
    property  ShowError: Boolean read FShowError write FShowError;              // выдавать ошибку если ошибка формата
    // навигация и счетчики по таблице данных
    procedure First;                                                            // в начало
    procedure Next;                                                             // вперед
    procedure GetRowData(AFields: TFileFields); virtual; abstract;              // получаем значения строки
    property Eof: Boolean read FEof;                                            // конец таблицы с данными
    property RowNum: Integer read GetRowNum;                                    // текущая строка в таблице
    property RowCount: Integer read GetRowCount;                                // всего строк в таблице
    //
    property StrNum: Integer read FStrNum;                                      // текущая строка в файле
    property StrCount: Integer read GetStrCount;                                // количество строк в файле
    //
    property HeaderStr: Integer read FStrHeader;                                // строка заголовка в файле 
  end;

  TA000_ParserClass = class of TA000_Parser;

var
  A000_Parser: TA000_Parser;

implementation

uses untMessages;

resourcestring
  SErrorFormat =
    'Ошибка в формата данных!' + #13#10 +
    '' + #13#10 +
    'Поле ''%s'' не найдено!';

{$R *.DFM}

{ TA000_Parser }

constructor TA000_Parser.Create(AOwner: TComponent);
begin
  inherited;

  // поумолчанию считаем что строки с колонками нет
  FStrHeader := - 1;

  // пока файл не открыли считаем что таблица пуста
  FEof := True;

  // по умолчанию ругаемся на формат файла
  FShowError := True;
end;

procedure TA000_Parser.CheckFormat(AFields: TFileFields);
var
  I: Integer;
begin
  // обнуляем номер колонки в файле
  for I := 0  to AFields.Count - 1 do
  begin
    AFields[I].FieldPos := -1;
  end;

  // проверяем все ли поля есть в файле
  // и запоминаем номер колонки для каждого поля
  FindAllFields(AFields);

  // надо или не надо выдавать ошибку о формате файла
  if not FShowError then Exit;

  // проверям все ли колонки нашли
  for I := 0  to AFields.Count - 1 do
  begin
    if AFields[I].FieldPos = -1 then
    begin
      TAppMessages.ErrorFmt(SErrorFormat, [AFields[I].FieldName]);
    end;
  end;
end;

procedure TA000_Parser.First;
begin
  FStrNum := FStrHeader + 1;
  FEof := RowCount = 0;
  DoFirst;
end;

procedure TA000_Parser.Next;
begin
  if RowNum < RowCount then
  begin
    // переходим на следующею строку в файле
    Inc(FStrNum);
    DoNext;
  end else
  begin
    // достигли конца строки, не можем сделать Next
    FEof := True;
  end;
end;

procedure TA000_Parser.OpenFile(const AFileName: string; AFields: TFileFields);
begin
  // открываем файл
  DoOpenFile(AFileName);

  // проверяем его формат
  CheckFormat(AFields);

  // встаем на первую запись
  First;
end;

procedure TA000_Parser.DoFirst;
begin
  // в наследниках переписываем если надо реально перейти
  // на первую строку
  // например "Компонент".First
end;

procedure TA000_Parser.DoNext;
begin
  // в наследниках переписываем если надо реально перейти
  // на другую строку
  // например "Компонент".Next
end;

function TA000_Parser.GetRowNum: Integer;
begin
  // получаем текущею строку во всем массиве данных
  Result := FStrNum;

  // возвращаем номер строки с учетом позиции заголовка
  if FStrHeader <> -1 then
  begin
    Result := Result - FStrHeader;
  end;
end;

function TA000_Parser.GetRowCount: Integer;
begin
  // получаем полное количество строк
  Result := StrCount;

  // возвращаем количество реальных строк с учетом позиции заголовка
  if FStrHeader <> -1 then
  begin
    Result := Result - FStrHeader;
  end;
end;

end.
