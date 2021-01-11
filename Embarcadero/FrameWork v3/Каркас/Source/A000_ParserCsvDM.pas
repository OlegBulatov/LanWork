unit A000_ParserCsvDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  A000_ParserDM, A000_FileDescUnt;

const
  SEPARATOR = ';';

type
  TA000_ParserCsv = class(TA000_Parser)
  private
    FCSVFileList: TStrings;
  protected
    function GetStrCount: Integer; override;
    //
    procedure FindAllFields(AFields: TFileFields); override;
    procedure DoOpenFile(const AFileName: string); override;
    //
    function GetValueByColumnNumber(ARow: String; AColumnNumber: Integer): String;
    function GetNextCellValue(var AFromPos: Integer; ALine: String): String;
  public
    procedure CloseFile; override;
    procedure GetRowData(AFields: TFileFields); override;
    //
  end;

var
  A000_ParserCsv: TA000_ParserCsv;

implementation

{$R *.DFM}

function TA000_ParserCsv.GetStrCount: Integer;
begin
  Result := FCSVFileList.Count;
end;

function TA000_ParserCsv.GetNextCellValue(var AFromPos: Integer; ALine: String): String;
var
  I: Integer;
  VCellValue: String;
begin
  for I := AFromPos to Length(ALine) do
  begin
    if (ALine[I] = SEPARATOR) then
    begin
      Break;
    end;

    VCellValue := VCellValue + ALine[I];
  end;

  AFromPos := I + 1;
  Result := VCellValue;
end;

procedure TA000_ParserCsv.FindAllFields(AFields: TFileFields);
var
  VRow: Integer;
  VCellValue: String;
  VCellColumnNumber: Integer;
  VCurrentPos: Integer;
  VIsFind: Boolean;
  VField: TFileField;
begin
  VIsFind := False;

  for VRow := 0 to FCSVFileList.Count - 1 do
  begin
    VCellValue := '';
    VCurrentPos := 0;
    VCellColumnNumber := 0;

    while (VCurrentPos < Length(FCSVFileList[VRow])) do
    begin
      VCellValue := GetNextCellValue(VCurrentPos, FCSVFileList[VRow]);

      //ищем поле по названию
      VField := AFields.FieldByName(VCellValue);

      if Assigned(VField) then
      begin
      //если нашли, запоминаем номер строки с заголовком и номер столбца соответствующего поля
        VIsFind := True;
        StrHeader := VRow + 1;
        VField.FieldPos := VCellColumnNumber;
      end;

      Inc(VCellColumnNumber);
    end;

    if VIsFind then
    begin
      Break;
    end;
  end;
end;

function TA000_ParserCsv.GetValueByColumnNumber(ARow: String; AColumnNumber: Integer): String;
var
  VCol: Integer;
  VSymbNumb: Integer;
  VStr: String;
begin
  VStr := '';
  VCol := 0;
  VSymbNumb := 1;

  //ищем начало колонки с номером AColumnNumber в строке CSV-файла ARow
  while (VCol < AColumnNumber) and (VSymbNumb <= Length(ARow)) do
  begin
    if ARow[VSymbNumb] = SEPARATOR then
    begin
      Inc(VCol);
    end;

    Inc(VSymbNumb);
  end;

  //ищем значение в колонке с номером AColumnNumber (до следующего разделителя или конца строки)
  for VSymbNumb := VSymbNumb to Length(ARow) do
  begin
    if ARow[VSymbNumb] = SEPARATOR then Break;

    VStr := VStr + ARow[VSymbNumb];
  end;

  Result := VStr;
end;

procedure TA000_ParserCsv.DoOpenFile(const AFileName: string);
begin
  FCSVFileList := TStringList.Create;
  FCSVFileList.LoadFromFile(AFileName);
end;

procedure TA000_ParserCsv.CloseFile;
begin
//  FCSVFileList.Free;
end;

procedure TA000_ParserCsv.GetRowData(AFields: TFileFields);
var
  I: Integer;
begin
  // получаем данные по текущей строке файла
  for I := 0 to AFields.Count - 1 do
  begin
    AFields[I].FieldData := GetValueByColumnNumber(FCSVFileList[StrNum - 1], AFields[I].FieldPos);
  end;
end;

end.
