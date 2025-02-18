unit A000_ParserExcelDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  A000_ParserDM, A000_FileDescUnt, unt202_ExcelExport, Excel2000, ActiveX;

type
  TA000_ParserExcel = class(TA000_Parser)
  private
  protected
    FExcel: TExclReport;
    FDataRange: Excel2000.ExcelRange;
//    FData: OLEVariant;
    //
    procedure FindAllFields(AFields: TFileFields); override;
    procedure DoOpenFile(const AFileName: string); override;
    function GetStrCount: Integer; override;
  public
    constructor Create(AOwner: TComponent); override;
    //
    procedure CloseFile; override;
    procedure GetRowData(AFields: TFileFields); override;
    //
    property DataRange: Excel2000.ExcelRange read FDataRange;
  end;

var
  A000_ParserExcel: TA000_ParserExcel;

implementation

{$R *.DFM}

{ TA000_ParserExcel }

procedure TA000_ParserExcel.FindAllFields(AFields: TFileFields);
var
  I, J: Integer;
  VValue: string;
  VField: TFileField;
  VFlag: Boolean;
begin
  // ��������� ��� �� ���� ���� � ����� Excel
  VFlag := False;
  StrHeader := -1;
//  for I := FDataRange.Row to FDataRange.Rows.Count do
  for i := 1 to FDataRange.Rows.Count do
    begin
    for J := FDataRange.Column to FDataRange.Columns.Count do
    begin
      // ������ ������ ����������
      //if VarIsNull(FExcel.Cell[I, J].Value) then Continue;

//      VValue := Trim(FData[I, J]);
      VValue := Trim(FExcel.Cell[i, j].Value);

      if VValue = '' then Continue;

      // ���� ���� �� ��������
      VField := AFields.FieldByName(VValue);

      // ���� ��� �� �������� ���� �� ����������
      if Assigned(VField) then
      begin
        // ����� ������ � ���������� �����
        VFlag := True;
        StrHeader := I;
        VField.FieldPos := J;
      end;
    end;
    // ���� ������ � ����������� ����� �� �����
    if VFlag then
    begin
      Exit;
    end;
  end;
end;

procedure TA000_ParserExcel.CloseFile;
begin
  // ���������� �������� ���������
  FExcel.ScreenUpdating := True;

  // ��������� �����
  FExcel.CloseWorkbook;

  // ������������� �� Excel
  FExcel.Disconnect;

  // !!!
  CoUnInitialize;
end;

constructor TA000_ParserExcel.Create(AOwner: TComponent);
begin
  inherited;

  FExcel := TExclReport.Create(Self);
end;

procedure TA000_ParserExcel.GetRowData(AFields: TFileFields);
var
  I: Integer;
begin
  // �������� ������ �� ������� ������ ����� Excel
  for I := 0 to AFields.Count - 1 do
    begin
    if AFields[i].FieldPos <> -1 then
//      AFields[I].FieldData := Copy(FData[StrNum, AFields[I].FieldPos], 1, 255);
      AFields[I].FieldData := Copy(FExcel.Cell[StrNum, AFields[I].FieldPos].Value, 1, 255);
    end;
end;

procedure TA000_ParserExcel.DoOpenFile(const AFileName: string);
begin
  // �������������� � Excel
  CoInitialize(nil);

  FExcel.Connect;

  // �� ������������ ��������� ��� ��������
  FExcel.ScreenUpdating := False;

  // ��������� �����
  FExcel.OpenWorkbook(AFileName);

  // ���������� ������� ������
  //FDataRange := FExcel.Cell[1, 1].CurrentRegion;
  FDataRange := FExcel.Worksheet.UsedRange[0];
//  FData := FDataRange.Value;
end;

function TA000_ParserExcel.GetStrCount: Integer;
begin
  if not Assigned(FDataRange) then
  begin
    Result := 0;
  end else
  begin
    Result := FDataRange.Rows.Count;
  end;
end;

end.
