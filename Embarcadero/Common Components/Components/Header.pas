unit Header;

interface

uses
  Windows, Messages, SysUtils, Classes;

type
  THeaders = class;

  THeader = record
    FFirstCol,
    FLastCol : Integer;
    FText : string;
  end;
  PHeader = ^THeader;


  THeaders = class(TPersistent)
    FHeaders : TList;
  private
    function GetItems(Index: Integer): PHeader;
  protected

  public
    constructor Create;
    destructor Destroy;override;

    function Count : Integer;
    procedure Clear;

    procedure Add;
    procedure Delete(Index : Integer);

    procedure DefineProperties(Filer: TFiler);override;
    procedure ReadBinaryData(Stream: TStream);
    procedure WriteBinaryData(Stream: TStream);

    property Items[Index : Integer] : PHeader read GetItems;default;
  end;


implementation

{ THeaders }

procedure THeaders.Add;
var
  p : PHeader;
begin
  new(p);
  p.FFirstCol := 0;
  p.FLastCol := 0;
  p.FText := '';
  FHeaders.Add(p);
end;

procedure THeaders.Clear;
var
  i : Integer;
  p : PHeader;
begin
  for i := 0 to Count - 1 do begin
    p := FHeaders[0];
    Dispose(p);
    FHeaders.Delete(0)
  end;
end;

function THeaders.Count: Integer;
begin
  Result := FHeaders.Count;
end;

constructor THeaders.Create;
begin
  inherited Create;
  FHeaders := TList.Create;
end;

procedure THeaders.DefineProperties(Filer: TFiler);
function WriteData: Boolean;
  begin
    if Filer.Ancestor <> nil then
      Result := Count > 0;
 end;
begin
  inherited DefineProperties(Filer);
  Filer.DefineBinaryProperty('Data', ReadBinaryData, WriteBinaryData,
    WriteData);
end;

procedure THeaders.Delete(Index : Integer);
var
  p : PHeader;
begin
  if (Index > -1) and (Index < Count ) then begin
    p := FHeaders[Index];
    Dispose(p);
    FHeaders.Delete(Index);
  end;
end;

destructor THeaders.Destroy;
begin
  Clear;
  FHeaders.Free;
  inherited;
end;

function THeaders.GetItems(Index: Integer): PHeader;
begin
  Result := FHeaders[Index];
end;

procedure THeaders.ReadBinaryData(Stream: TStream);
var
  Tempcount, I : integer;
  Temp : Integer;
  TempStr : string;
  p : PHeader;
begin
  Clear;
  with Stream do
  begin
    ReadBuffer( TempCount, SizeOf(TempCount));
    for I := 0 to TempCount - 1 do begin
      New(p);

      ReadBuffer(Temp, SizeOf(Temp));
      SetLength( TempStr, Temp );
      ReadBuffer(PChar(TempStr)^, Temp);
      p.FText := TempStr;

      ReadBuffer( Temp, SizeOf(Temp));
      p.FFirstCol := Temp;
      ReadBuffer( Temp, SizeOf(Temp));
      p.FLastCol := Temp;

      FHeaders.Add(p);
    end;
  end;
end;

procedure THeaders.WriteBinaryData(Stream: TStream);
var
  I: Integer;
  Temp: Integer;
begin
  with Stream do begin
    Temp := Count;

    WriteBuffer(Temp, SizeOf(Temp));
    for I := 0 to Temp - 1  do
      with Items[I]^ do begin
        Temp := Length(FText);
        WriteBuffer(Temp, SizeOf(Temp));
        WriteBuffer(PChar(FText)^, Length(FText));

        WriteBuffer(FFirstCol, SizeOf(FFirstCol));
        WriteBuffer(FLastCol, SizeOf(FLastCol));
      end;
  end;
end;

end.
