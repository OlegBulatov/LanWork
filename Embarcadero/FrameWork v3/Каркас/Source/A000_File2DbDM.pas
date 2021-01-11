unit A000_File2DbDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Oracle, A000_FileDescUnt, A000_ParserDM, A000_ProcInfoForm;

type
  TA000_File2Db = class(TDataModule)
    oqLoad: TOracleQuery;
    oqBefore: TOracleQuery;
    oqAfter: TOracleQuery;
  private
    FProcName: string;
    FProgress: TA000_ProcInfo;
    FParser: TA000_Parser;
    FFields: TFileFields;
    FFileName: string;
    //
    procedure PrepareQuery;
    procedure SaveRow;
    procedure LoadData;
    //
    procedure SetBeforeProcName(AValue: String);
    procedure SetAfterProcName(AValue: String);
    procedure SetParserClass(const Value: TA000_ParserClass);
  protected
    procedure BeforeLoad; virtual;
    procedure AfterLoad; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    //
    procedure LoadFile;
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
    // ������
    property Parser: TA000_Parser read FParser;
    property ParserClass: TA000_ParserClass write SetParserClass;
  end;

var
  A000_File2Db: TA000_File2Db;

implementation

uses ShellAPI, untMessages, dm005_MainData;

{$R *.DFM}

resourcestring
  SProcName = '������ ������ �� �����';
  SRecProgress =
    '���������� ������������ �������: %d ��  %d';
  SFileNotFound =
    '���� ''%s'' '              + #13#10 +
    '�� ������!';
  SErrorLoad =
    '������ ��� �������� �����!' + #13#10 +
    '������ %s!' + #13#10 +
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

procedure TA000_File2Db.LoadFile;
var
  VOldCursor: TCursor;
begin
  // ������ ��������
  VOldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    dmMain.StartTransaction;
    try
      // ��� 0. �������� ������� ��������
      FProgress.CreateProcess;

      // ��� 1. ������ ���-�� ����� ���������
      FProgress.StartProcess(SProcName, '��� 1. ���������� � �������� ������...', '', 2, 100);
      PrepareQuery;
      BeforeLoad;
      FProgress.SetProcInfo(SProcName, '��� 1. ���������� ���������', '', 10, 100);

      // ��� 2. ��������� ������ �� ����� (�������� � 10% ����������� 80%)
      LoadData;

      // ��� 3. ������ ���-�� ����� ��������
      FProgress.SetProcInfo(SProcName, '��� 3. ��������� ����������� ������...', '', 81, 100);
      AfterLoad;
      FProgress.SetProcInfo(SProcName, '��� 3. ��������� ����� ���������', '', 100, 100);

      // ��� 4. ������� �������� ��������
      FProgress.EndProcess('������ ������ ������� ��������', True);
      dmMain.Commit;
    except
      on E: Exception do
      begin
        FProgress.HaltProcess;
        dmMain.Rollback;
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
  // �������������� oqLoad
  oqLoad.SQL.Clear;
  oqLoad.DeleteVariables;

  // ��������� SQL
  VSqlText := '';
  for I := 0  to FFields.Count - 1 do
  begin
    if VSqlText <> '' then
    begin
      VSqlText := Concat(VSqlText, ' ,');
    end;
    VSqlText := Concat(VSqlText, ' :', FFields[I].ParamName);
    // ������� ��������� ���������
    oqLoad.DeclareVariable(FFields[I].ParamName, otString);
  end;
  oqLoad.SQL.Text := Format(SQL_TEXT, [FProcName, VSqlText]);
end;

procedure TA000_File2Db.LoadData;
var
  VRowNum, VProc: Integer;
  VComment: string;
begin
   // ��� 2. ��������� ������ �� ����� (�������� � 10% ����������� 80%)
  FProgress.SetProcInfo(SProcName, '��� 2. �������� ������ �� �����...', '', 11, 100);
  VRowNum := 0;
  try
    try
      // ��������� ����
      FParser.OpenFile(FFileName, FFields);
      FProgress.SetCnt('���� ������ �������', 12);
      Application.ProcessMessages;
      // ������ �� ������ ������
      FParser.First;
      // ����� �� ���� �������
      while not FParser.Eof do
      begin
        // ������ ������ �� �����
        FParser.GetRowData(FFields);

        // ��������� � ��
        SaveRow;

        // ���� ������� ������� ��������� ����� ���������
        VRowNum := FParser.StrNum;
        VProc := Round((79  - 12) * FParser.RowNum / FParser.RowCount );
        VComment := Format(SRecProgress, [FParser.RowNum, FParser.RowCount]);
        FProgress.SetCnt(VComment, 12 + VProc);

        // ��������� � ��������� ������
        FParser.Next;
      end;
    finally
      FParser.CloseFile;
      FProgress.SetCnt('���� ������', 79);
    end;
    FProgress.SetProcInfo(SProcName, '��� 2. �������� ������ ���������', '', 80, 100);
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
  // ������������� ��������
  for I := 0  to FFields.Count - 1 do
  begin
    oqLoad.SetVariable(FFields[I].ParamName, FFields[I].FieldData);
  end;
  // ����������
  oqLoad.Execute;
end;

constructor TA000_File2Db.Create(AOwner: TComponent);
begin
  inherited;

  FProgress := TA000_ProcInfo.Create(Self);

  FFields := TFileFields.Create(Self);
end;

procedure TA000_File2Db.SetParserClass(const Value: TA000_ParserClass);
begin
  // ����������� ������ ������ ���� ����
  if Assigned(FParser) then
  begin
    FreeAndNil(FParser);
  end;

  // ������� ����� ������
  FParser := Value.Create(Self);
end;

end.
