{******************************************************************************
   ��������:       untClasses
   ����������:	   ������ ��� ������ � Clipboard

   �����������:
   ������     ����        �����            ��������
   ---------  ----------  ---------------  ------------------------------------
   1.0        17.09.2004  ��������		   1. �������� ������
*******************************************************************************}

unit untClasses;

interface

uses clipbrd, db;

type
  TCustomClipboard = class(TClipboard)
  private
    FBufLen: Integer;
    FDataLen: Integer;
    FBuf: PChar;
    FCurBuf: PChar;
    procedure Init;
  public
    constructor Create;
    procedure AddToBuf(const AStr: string);
    procedure PasteBufToCliboard;
  end;

  TDataSetClipboard = class(TCustomClipboard)
  private
    FDataSet: TDataSet;
  protected
    function IsFieldVisible(const AField: TField): Boolean; virtual;
    function GetFieldValue(const AField: TField): string; virtual;
    function GetRecAsText: string; virtual;
  public
    procedure CopyDataSetToClipboard;
    function CopyDataSetToClipboardEx(var AFillCount: Integer): Integer;
    //
    property DataSet: TDataSet read FDataSet write FDataSet;
  end;

  procedure CopyToCliboard(const ADataSet: TDataSet);

implementation

uses
  SysUtils, Windows, untMessages;

const
  CODEPAGE = 1251;
  DEFLEN = 10000;
  DEFDELTA = 10000;

  PRINT_DATA_TYPE = [
    ftString, ftSmallint, ftInteger, ftWord, ftBoolean, ftFloat, ftCurrency,
    ftBCD, ftDate, ftTime, ftDateTime, ftBytes, ftAutoInc, ftMemo
    ];

procedure CopyToCliboard(const ADataSet: TDataSet);
var
  VClipboard: TDataSetClipboard;
begin
  // �������� ���������� DataSet � ������ ������
  VClipboard := TDataSetClipboard.Create;
  try
    VClipboard.DataSet := ADataSet;
    VClipboard.CopyDataSetToClipboard;
  finally
    VClipboard.Free;
  end;
end;

{ TCustomClipboard }

//******************************************************************************
// ��������� ������ � �����
//******************************************************************************
procedure TCustomClipboard.AddToBuf(const AStr: string);
begin
  if not Assigned(FBuf) then Init;
  if Length(AStr) >= FBufLen - FDataLen then
  begin
    FBufLen := FBufLen + DEFDELTA;
    FCurBuf := StrAlloc(FBufLen);
    StrCopy(FCurBuf, FBuf);
    StrDispose(FBuf);
    FBuf := FCurBuf;
    FCurBuf := FBuf + FDataLen;
  end;
  StrCopy(FCurBuf, PChar(AStr));
  FCurBuf := FCurBuf + Length(FCurBuf);
  FDataLen := FDataLen + Length(AStr);
end;

constructor TCustomClipboard.Create;
begin
  inherited;
  FBuf := nil;
end;

//******************************************************************************
// �������� ���������� ������ � Cliboard
//******************************************************************************
procedure TCustomClipboard.PasteBufToCliboard;
var
  p: array[0..9] of Char;
begin
  // ����������� ��������� �� �������
  GetKeyboardLayoutName(p);
  try
    LoadKeyboardLayout('00000419', KLF_ACTIVATE); // Rus
    // �������� FBuf � �����
    Clipboard.SetTextBuf(FBuf);
  finally
    LoadKeyboardLayout(p, KLF_ACTIVATE);
  end;
  StrDispose(FBuf);
  FBuf := nil;
end;

//******************************************************************************
// �������� ������ ��� �����
//******************************************************************************
procedure TCustomClipboard.Init;
begin
  FBuf := StrAlloc(DEFLEN);
  FBufLen := DEFLEN;
  FDataLen := 0;
  FCurBuf := FBuf;
end;

{ TDataSetClipboard }

procedure TDataSetClipboard.CopyDataSetToClipboard;
var
  VCount: Integer;
  VBookmark: TBookmark;
begin
  VCount := 1;
  FDataSet.DisableControls;
  try
    VBookmark := FDataSet.GetBookmark;
    try
      FDataSet.First;
      while not FDataSet.Eof do
      begin
        if VCount <= 65000 then
        begin
          // �������� ������ DataSet'a � FBuf
          AddToBuf(GetRecAsText);
        end;
        FDataSet.Next;
        Inc(VCount);
      end;
    finally
      FDataSet.GotoBookmark(VBookmark);
      FDataSet.FreeBookmark(VBookmark);
    end;
  finally
    FDataSet.EnableControls;
  end;
  if VCount > 65000 then
  begin
    TAppMessages.ShowInformation('��������! ���������� ������������ ���������� �����, ������������ � ������(�������)!');
  end;
  PasteBufToCliboard;
end;

function TDataSetClipboard.CopyDataSetToClipboardEx(var AFillCount: Integer): Integer;
var
  VCount: Integer;
begin
  VCount := 1;
  try
    while (VCount <= AFillCount) and (not FDataSet.Eof) do
    begin
      // �������� ������ DataSet'a � FBuf
      AddToBuf(GetRecAsText);
      // ��������� � ��������� ������
      FDataSet.Next;
      Inc(VCount);
    end;
  finally
    Result := VCount-1;
  end;
  PasteBufToCliboard;
end;

function TDataSetClipboard.GetFieldValue(const AField: TField): string;
begin
  Result := AField.AsString;

  // ������� ������� ���������� ����� Excel
  Result := StringReplace(Result, #9, ' ', [rfReplaceAll]);

  // ������� �������, ���� ���� ������ �������
  if Copy(Result,1,1) = '"' then
    Result := StringReplace(Result, '"', '', [rfReplaceAll]);

  // ������� ������� �������� ������
  Result := StringReplace(Result, #13#10, ' ', [rfReplaceAll]);
  // ������� ������� ����� ������
  Result := StringReplace(Result, #13, ' ', [rfReplaceAll]);
end;

//******************************************************************************
// ��������� ������� ��� ����������� � �����
//******************************************************************************
function TDataSetClipboard.GetRecAsText: string;
var
  I: Integer;
begin
  // ��������� ������ ������
  Result := '';
  for I := 0 to FDataSet.Fields.Count - 1 do
  begin
    if not IsFieldVisible(FDataSet.Fields[I]) then Continue;
    // ��������� ������ ���������� ����� Excel
    Result := Concat(Result, #9, GetFieldValue(FDataSet.Fields[I]));
  end;

  // ������� ������ (������) ������ #9
  Result := Copy(Result, 2, Length(Result));

  // ��������� ������ �������� ������ #13#10
  Result := Concat(Result, #13#10);
end;

//******************************************************************************
// ��������� �������� �� �������� ���� � �����
//******************************************************************************
function TDataSetClipboard.IsFieldVisible(const AField: TField): Boolean;
begin
  Result := AField.Visible and (AField.DataType in PRINT_DATA_TYPE);
end;

end.
