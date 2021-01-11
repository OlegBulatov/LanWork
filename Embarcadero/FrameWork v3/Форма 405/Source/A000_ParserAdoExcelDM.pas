unit A000_ParserAdoExcelDM;

interface

uses
  A000_ParserDM, SysUtils, Classes, Db, ADODB, A000_FileDescUnt;
//  Windows, Messages, Graphics, Controls, Forms, Dialogs,

type
  TA000_ParserAdoExcel = class(TA000_Parser)
    ADOConn: TADOConnection;
    ADOTable: TADOTable;
  private
    { Private declarations }
  protected
    procedure DoOpenFile(const AFileName: string); override;           // реализаци€ - открываем файл
    procedure DoFirst; override;                                       // реализаци€ - в начало
    procedure DoNext; override;                                        // реализаци€ - в вперед

    procedure FindAllFields(AFields: TFileFields); override;           // реализаци€ - поиск полей
    function  GetStrCount: Integer; override;                          // реализаци€ - количество всех строк
  public
    { Public declarations }
    procedure CloseFile; override;                                     // закрываем файл
  end;

var
  A000_ParserAdoExcel: TA000_ParserAdoExcel;

implementation

{$R *.DFM}

{ TA000_ParserAdoExcel }

procedure TA000_ParserAdoExcel.DoOpenFile(const AFileName: string);
var
  vTables: TStringList;
  i: integer;
begin
  vTables := TStringList.Create;
  ADOConn.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;' +
                              'Data Source=' + AFileName + ';' +
                              'Extended Properties="Excel 12.0; Hdr=No; IMEX=1";' +
                              'Persist Security Info=False';
  try
    ADOConn.Open;
    ADOConn.GetTableNames(vTables, False);
//    ADOTable.TableName := vTables[0];
    for i := 0 to vTables.Count-1 do
      begin
      ADOTable.TableName := vTables[i];
      if LastDelimiter('$', vTables[i]) = Length(vTables[i]) then
      break;
      end;

    ADOTable.Open;
  finally
    vTables.Free;
  end;
end;

procedure TA000_ParserAdoExcel.CloseFile;
begin
  ADOConn.Close;
end;

procedure TA000_ParserAdoExcel.FindAllFields(AFields: TFileFields);
var
  i: Integer;
  vValue: string;
  vField: TFileField;
  vFound: Boolean;
begin
  // провер€ем все ли пол€ есть в файле Excel
  vFound := False;
  StrHeader := -1;
  ADOTable.First;
  while not ADOTable.Eof do
    begin
    for i := 0 to ADOTable.FieldCount-1 do
      begin
      vValue := Trim(ADOTable.Fields[i].AsString);
      // пустые €чейки пропускаем
      if vValue = '' then Continue;
      // ищем поле по названию
      vField := AFields.FieldByName(vValue);

      // если это не название пол€ то пропускаем
      if Assigned(vField) then
        begin
        // нашли строку с названи€ми полей
        vFound := True;
        StrHeader := ADOTable.RecNo;
        VField.FieldPos := i;
        end;
      end;
    // если строку с заголовками нашли то выход
    if vFound then
      begin
      Exit;
      end;

    ADOTable.Next;
    end;
end;

function TA000_ParserAdoExcel.GetStrCount: Integer;
begin
  Result := ADOTable.RecordCount;
end;

procedure TA000_ParserAdoExcel.DoFirst;
begin
  if StrHeader = -1 then
    ADOTable.First
  else
    ADOTable.RecNo := StrHeader + 1;
end;

procedure TA000_ParserAdoExcel.DoNext;
begin
  ADOTable.Next;
end;

end.
