unit A000_ParserDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  A000_FileDescUnt;

type
  {
  *****************************************************************************
    ����������: ������� ����� ��� �������� � ��������� �� ������,
                �������������� ����� �������.
  *****************************************************************************
    ��������:   � ����� ������ �� ���� ����� �������� ������ ������
                ��� ������� � ������� ���������� �� � ������,
                � � 5 ��� 10 ������.
                ����� ������� � "������� �����" �� �������
                ���������� "������� ������".
                � ������ �� ���������� "������� ������" ����� ��������������
                ��������� (First, Next, Eof, GetData).
  *****************************************************************************
    ������:     VParser.OpenFile(FFileName, FFields);
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
    FStrNum: Integer;                                                           // ����� ������� ������ � �����
    FStrHeader: Integer;                                                        // ����� ������ ��������� � �����
    FEof: Boolean;
    FShowError: Boolean;                                                              // ������� ����� ������� ������
    function GetRowNum: Integer;
    function GetRowCount: Integer;
  protected
    // ������������� ��� ������ ��� ��������� ������ �������� First � Next
    procedure DoFirst; virtual;                                                 // ���������� - � ������
    procedure DoNext; virtual;                                                  // ���������� - � ������
    // ������������� � ����������� �����������
    procedure FindAllFields(ARow: TFileFields); virtual; abstract;              // ���������� - ����� �����
    procedure DoOpenFile(const AFileName: string); virtual; abstract;           // ���������� - ��������� ����
    function  GetStrCount: Integer; virtual; abstract;                          // ���������� - ���������� ���� �����
    // �������� �� ����� ������� ������
    property StrHeader: Integer read FStrHeader write FStrHeader;               // ����� ������ ��������� � �����
  public
    // ������ � ������
    constructor Create(AOwner: TComponent); override;
    procedure OpenFile(const AFileName: string; AFields: TFileFields);          // ��������� ����
    procedure CloseFile; virtual; abstract;                                     // ��������� ����
    procedure CheckFormat(AFields: TFileFields);                                // �������� �������
    property  ShowError: Boolean read FShowError write FShowError;              // �������� ������ ���� ������ �������
    // ��������� � �������� �� ������� ������
    procedure First;                                                            // � ������
    procedure Next;                                                             // ������
    procedure GetRowData(AFields: TFileFields); virtual; abstract;              // �������� �������� ������
    property Eof: Boolean read FEof;                                            // ����� ������� � �������
    property RowNum: Integer read GetRowNum;                                    // ������� ������ � �������
    property RowCount: Integer read GetRowCount;                                // ����� ����� � �������
    //
    property StrNum: Integer read FStrNum;                                      // ������� ������ � �����
    property StrCount: Integer read GetStrCount;                                // ���������� ����� � �����
    //
    property HeaderStr: Integer read FStrHeader;                                // ������ ��������� � ����� 
  end;

  TA000_ParserClass = class of TA000_Parser;

var
  A000_Parser: TA000_Parser;

implementation

uses untMessages;

resourcestring
  SErrorFormat =
    '������ � ������� ������!' + #13#10 +
    '' + #13#10 +
    '���� ''%s'' �� �������!';

{$R *.DFM}

{ TA000_Parser }

constructor TA000_Parser.Create(AOwner: TComponent);
begin
  inherited;

  // ����������� ������� ��� ������ � ��������� ���
  FStrHeader := - 1;

  // ���� ���� �� ������� ������� ��� ������� �����
  FEof := True;

  // �� ��������� �������� �� ������ �����
  FShowError := True;
end;

procedure TA000_Parser.CheckFormat(AFields: TFileFields);
var
  I: Integer;
begin
  // �������� ����� ������� � �����
  for I := 0  to AFields.Count - 1 do
  begin
    AFields[I].FieldPos := -1;
  end;

  // ��������� ��� �� ���� ���� � �����
  // � ���������� ����� ������� ��� ������� ����
  FindAllFields(AFields);

  // ���� ��� �� ���� �������� ������ � ������� �����
  if not FShowError then Exit;

  // �������� ��� �� ������� �����
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
    // ��������� �� ��������� ������ � �����
    Inc(FStrNum);
    DoNext;
  end else
  begin
    // �������� ����� ������, �� ����� ������� Next
    FEof := True;
  end;
end;

procedure TA000_Parser.OpenFile(const AFileName: string; AFields: TFileFields);
begin
  // ��������� ����
  DoOpenFile(AFileName);

  // ��������� ��� ������
  CheckFormat(AFields);

  // ������ �� ������ ������
  First;
end;

procedure TA000_Parser.DoFirst;
begin
  // � ����������� ������������ ���� ���� ������� �������
  // �� ������ ������
  // �������� "���������".First
end;

procedure TA000_Parser.DoNext;
begin
  // � ����������� ������������ ���� ���� ������� �������
  // �� ������ ������
  // �������� "���������".Next
end;

function TA000_Parser.GetRowNum: Integer;
begin
  // �������� ������� ������ �� ���� ������� ������
  Result := FStrNum;

  // ���������� ����� ������ � ������ ������� ���������
  if FStrHeader <> -1 then
  begin
    Result := Result - FStrHeader;
  end;
end;

function TA000_Parser.GetRowCount: Integer;
begin
  // �������� ������ ���������� �����
  Result := StrCount;

  // ���������� ���������� �������� ����� � ������ ������� ���������
  if FStrHeader <> -1 then
  begin
    Result := Result - FStrHeader;
  end;
end;

end.
