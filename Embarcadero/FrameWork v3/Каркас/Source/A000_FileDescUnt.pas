unit A000_FileDescUnt;

interface

uses Classes, db;

type

  TFileField = class(TCollectionItem)
  private
    FFieldName: string;   // название колонки в файле
    FFieldPos: Integer;   // номер колонки в файле
    FFieldData: string;   // значение колонки в файле
    FParamName: string;   // название параметра в процедуре Oracle
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property FieldName: string read FFieldName write FFieldName;
    property FieldPos: Integer read FFieldPos write FFieldPos;
    property FieldData: string read FFieldData write FFieldData;
    property ParamName: string read FParamName write FParamName;
  end;

  TFileFields = class(TCollection)
  private
    FOwner: TPersistent;
    function GetFieldValue(const FieldName: string): String;
    procedure SetFieldValue(const FieldName: string; const Value: String);
  protected
    function GetAttrCount: Integer; override;
    function GetAttr(Index: Integer): string; override;
    function GetItemAttr(Index, ItemIndex: Integer): string; override;
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TFileField;
    procedure SetItem(Index: Integer; const Value: TFileField);
  public
    constructor Create(const AOwner: TPersistent);
    function Add: TFileField;
    property Items[Index: Integer]: TFileField read GetItem write SetItem; default;
    function FieldByName(const Value: string): TFileField;
    function FindField(const Value: string): TFileField;
    property FieldValues[const FieldName: string]: String read GetFieldValue write SetFieldValue;
  end;

implementation

uses Windows, Forms, SysUtils;

{TFileFields}

function TFileFields.Add: TFileField;
begin
  Result := TFileField(inherited Add);
end;

constructor TFileFields.Create(const AOwner: TPersistent);
begin
  inherited Create(TFileField);
  FOwner := AOwner;
end;

function TFileFields.GetFieldValue(const FieldName: string): string;
begin
  Result := FieldByName(FieldName).FieldData;
end;

procedure TFileFields.SetFieldValue(const FieldName: string;
  const Value: string);
begin
  FieldByName(FieldName).FieldData := Value;
end;

function TFileFields.GetAttr(Index: Integer): string;
begin
  case Index of
    0: Result := 'FieldName';
    1: Result := 'FieldPos';
    2: Result := 'FieldData';
    3: Result := 'ParamName';
  else
    Result := '';
  end;
end;

function TFileFields.GetAttrCount: Integer;
begin
  Result := 4;
end;

function TFileFields.GetItem(Index: Integer): TFileField;
begin
  Result := TFileField(inherited Items[Index]);
end;

function TFileFields.GetItemAttr(Index, ItemIndex: Integer): string;
begin
  case Index of
    0: Result := Items[ItemIndex].FieldName;
    1: Result := IntToStr(Items[ItemIndex].FieldPos);
    2: Result := Items[ItemIndex].FieldData;
    3: Result := Items[ItemIndex].ParamName;
  else
    Result := '';
  end;
end;

function TFileFields.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TFileFields.SetItem(Index: Integer; const Value: TFileField);
begin
  Items[Index].Assign(Value);
end;

function TFileFields.FieldByName(const Value: string): TFileField;
begin
  Result := FindField(Value);
  (*
  if Result = nil then
  begin
    raise Exception.Create('Ошибка! Параметра с таким именем не найдено! "' + Value + '"');
  end;
  *)
end;

function TFileFields.FindField(const Value: string): TFileField;
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
  begin
    Result := TFileField(inherited Items[I]);
    if AnsiCompareText(Result.FieldName, Value) = 0 then Exit;
  end;
  Result := nil;
end;

{ TFileField }

procedure TFileField.AssignTo(Dest: TPersistent);
begin
  if Dest is TFileField then
  begin
    with TFileField(Dest) do
    begin
      FFieldName := Self.FieldName;
      FFieldPos := Self.FieldPos;
      FFieldData := Self.FieldData;
      FParamName := Self.ParamName;
      Changed(False);
    end;
  end else
  begin
    inherited AssignTo(Dest);
  end;
end;

end.
