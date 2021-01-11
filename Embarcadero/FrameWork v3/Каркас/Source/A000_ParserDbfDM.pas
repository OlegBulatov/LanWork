unit A000_ParserDbfDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  A000_ParserDM, A000_FileDescUnt, DBF;

type
  TA000_ParserDbf = class(TA000_Parser)
  private
    FDBF: TDbf;
  protected
    procedure FindAllFields(ARow: TFileFields); override;
    procedure DoOpenFile(const AFileName: string); override;
    function GetStrCount: Integer; override;
    //
    procedure DoFirst; override;
    procedure DoNext; override;
  public
    constructor Create(AOwner: TComponent); override;
    //
    procedure CloseFile; override;
    procedure GetRowData(ARow: TFileFields); override;
  end;

var
  A000_ParserDbf: TA000_ParserDbf;

implementation

{$R *.DFM}

uses dm005_MainData, untMessages;

{ TA000_ParserDbf }

procedure TA000_ParserDbf.FindAllFields(ARow: TFileFields);
var
  I: Integer;
  VField: TFileField;
begin
  // проверяем все ли поля есть в файле DBF
  for I := 1 to FDBF.FieldCount do
  begin
    // ищем такое поле у нас
    VField := ARow.FieldByName(FDBF.GetFieldName(I));
    // сохраняем номер колонки
    if Assigned(VField) then
    begin
      VField.FieldPos := I;
    end;
  end;
end;

procedure TA000_ParserDbf.CloseFile;
begin
  FDBF.Close;
end;

constructor TA000_ParserDbf.Create(AOwner: TComponent);
begin
  inherited;

  FDBF := TDbf.Create(Self);
end;

procedure TA000_ParserDbf.DoFirst;
begin
  FDBF.First;
end;

procedure TA000_ParserDbf.GetRowData(ARow: TFileFields);
var
  I: Integer;
begin
  // получаем данные по текущей строке файла DBF
  for I := 0 to ARow.Count - 1 do
  begin
    ARow[I].FieldData := FDBF.GetFieldData(I);
    // если поле в DBF пустое то GetFieldData(I) = '#########'
    if ARow[I].FieldData = '#########' then
    begin
      ARow[I].FieldData := '';
    end;
  end;
end;

procedure TA000_ParserDbf.DoNext;
begin
	FDBF.Next;
end;


procedure TA000_ParserDbf.DoOpenFile(const AFileName: string);
begin
  FDBF.TableName := AFileName;
  FDBF.Open;
  FDBF.CodePage := OEM;
end;

function TA000_ParserDbf.GetStrCount: Integer;
begin
  Result := FDBF.RecordCount;
end;

end.
