{******************************************************************************
   ��������:       untParams
   ����������:	   ������ ���������� ������

   �����������:
   ������     ����        �����            ��������
   ---------  ----------  ---------------  ------------------------------------
   1.0        17.09.2004  ��������		   1. �������� ������
*******************************************************************************}

unit untParams;

interface

uses Classes, db, Variants;

type
  TFloatArray = array of Double;
  TIntArray = array of Integer;
  TStrArray = array of string;
  TDateArray = array of TDateTime;

  // ��� ������
  TDataType = (
    dtBoolean,
    dtDateTime,
    dtFloat,
    dtInteger,
    dtString,
    dtVariant,
    dtIntArray,
    dtStrArray,
    dtFloatArray,
    dtCursor,
    dtUnknow
    );

  TRepParam = class(TCollectionItem)
  private
    FName: string;
    FParamType: TParamType;
    FDataType: TDataType;
    FDisplayClassName: string;
    FVisible: Boolean;
    procedure SetName(const Value: string);
    procedure SetType(const Value: TParamType);
    function GetAsBoolean: Boolean; virtual;
    function GetAsDateTime: TDateTime; virtual;
    function GetAsFloat: Double; virtual;
    function GetAsInteger: Longint; virtual;
    function GetAsString: string; virtual;
    function GetAsVariant: Variant; virtual;
    function GetAsIntArray: TIntArray; virtual;
    function GetAsStrArray: TStrArray; virtual;
    procedure SetAsBoolean(const Value: Boolean); virtual;
    procedure SetAsDateTime(const Value: TDateTime); virtual;
    procedure SetAsFloat(const Value: Double); virtual;
    procedure SetAsInteger(const Value: Longint); virtual;
    procedure SetAsString(const Value: string); virtual;
    procedure SetAsVariant(const Value: Variant); virtual;
    procedure SetAsIntArray(const Value: TIntArray); virtual;
    procedure SetAsStrArray(const Value: TStrArray); virtual;
    function GetAsFloatArray: TFloatArray; virtual;
    procedure SetAsFloatArray(const Value: TFloatArray); virtual;
    procedure SetDisplayClassName(const Value: string);
    procedure SetVisible(const Value: Boolean);
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    procedure CopyToDataSetParam(const AParam: Db.TParam); virtual;
    property Value: Variant read GetAsVariant write SetAsVariant;
    property DataType: TDataType read FDataType;
    property AsIntArray: TIntArray read GetAsIntArray write SetAsIntArray;
    property AsStrArray: TStrArray read GetAsStrArray write SetAsStrArray;
    property AsFloatArray: TFloatArray read GetAsFloatArray write SetAsFloatArray;
  published
    property Name: string read FName write SetName;
    property ParamType: TParamType read FParamType write SetType;
    property DisplayClassName: string read FDisplayClassName write SetDisplayClassName;
    property AsBoolean: Boolean read GetAsBoolean write SetAsBoolean;
    property AsDateTime: TDateTime read GetAsDateTime write SetAsDateTime;
    property AsFloat: Double read GetAsFloat write SetAsFloat;
    property AsInteger: Longint read GetAsInteger write SetAsInteger;
    property AsString: string read GetAsString write SetAsString;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
    property Visible: Boolean read FVisible write SetVisible;
  end;

  TRepParamClass = class of TRepParam;

  TBooleanParam = class(TRepParam)
  private
    FValue: Boolean;
    function GetAsBoolean: Boolean; override;
    function GetAsString: string; override;
    function GetAsVariant: Variant; override;
    procedure SetAsBoolean(const Value: Boolean); override;
    procedure SetAsString(const Value: string); override;
    procedure SetAsVariant(const Value: Variant); override;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property Value: Boolean read GetAsBoolean write SetAsBoolean;
  end;

  TDateTimeParam = class(TRepParam)
  private
    FValue: TDateTime;
    function GetAsDateTime: TDateTime; override;
    function GetAsFloat: Double; override;
    function GetAsString: string; override;
    function GetAsVariant: Variant; override;
    procedure SetAsDateTime(const Value: TDateTime); override;
    procedure SetAsFloat(const Value: Double); override;
    procedure SetAsString(const Value: string); override;
    procedure SetAsVariant(const Value: Variant); override;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property Value: TDateTime read GetAsDateTime write SetAsDateTime;
  end;

  TFloatParam = class(TRepParam)
  private
    FValue: Double;
    function GetAsFloat: Double; override;
    function GetAsInteger: Longint; override;
    function GetAsString: string; override;
    function GetAsVariant: Variant; override;
    procedure SetAsFloat(const Value: Double); override;
    procedure SetAsInteger(const Value: Longint); override;
    procedure SetAsString(const Value: string); override;
    procedure SetAsVariant(const Value: Variant); override;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property Value: Double read GetAsFloat write SetAsFloat;
  end;

  TIntegerParam = class(TRepParam)
  private
    FValue: Integer;
    function GetAsFloat: Double; override;
    function GetAsInteger: Longint; override;
    function GetAsString: string; override;
    function GetAsVariant: Variant; override;
    procedure SetAsFloat(const Value: Double); override;
    procedure SetAsInteger(const Value: Longint); override;
    procedure SetAsString(const Value: string); override;
    procedure SetAsVariant(const Value: Variant); override;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property Value: Longint read GetAsInteger write SetAsInteger;
  end;

  TStringParam = class(TRepParam)
  private
    FValue: string;
    function GetAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function GetAsFloat: Double; override;
    function GetAsInteger: Longint; override;
    function GetAsString: string; override;
    function GetAsVariant: Variant; override;
    procedure SetAsBoolean(const Value: Boolean); override;
    procedure SetAsDateTime(const Value: TDateTime); override;
    procedure SetAsFloat(const Value: Double); override;
    procedure SetAsInteger(const Value: Longint); override;
    procedure SetAsString(const Value: string); override;
    procedure SetAsVariant(const Value: Variant); override;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property Value: string read GetAsString write SetAsString;
  end;

  TVariantParam = class(TRepParam)
  private
    FValue: Variant;
    function GetAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function GetAsFloat: Double; override;
    function GetAsInteger: Longint; override;
    function GetAsString: string; override;
    function GetAsVariant: Variant; override;
    procedure SetAsBoolean(const Value: Boolean); override;
    procedure SetAsDateTime(const Value: TDateTime); override;
    procedure SetAsFloat(const Value: Double); override;
    procedure SetAsInteger(const Value: Longint); override;
    procedure SetAsString(const Value: string); override;
    procedure SetAsVariant(const Value: Variant); override;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  end;

  TIntArrayParam = class(TRepParam)
  private
    FValue: TIntArray;
    function GetAsIntArray: TIntArray; override;
    procedure SetAsIntArray(const Value: TIntArray); override;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property Value: TIntArray read GetAsIntArray write SetAsIntArray;
  end;

  TStrArrayParam = class(TRepParam)
  private
    FValue: TStrArray;
    function GetAsStrArray: TStrArray; override;
    procedure SetAsStrArray(const Value: TStrArray); override;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property Value: TStrArray read GetAsStrArray write SetAsStrArray;
  end;

  TFloatArrayParam = class(TRepParam)
  private
    FValue: TFloatArray;
//    function GetAsString: string; override;
    function GetAsFloatArray: TFloatArray; override;
    procedure SetAsFloatArray(const Value: TFloatArray); override;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    procedure CopyToDataSetParam(const AParam: Db.TParam); override;
    property Value: TFloatArray read GetAsFloatArray write SetAsFloatArray;
  end;

  TCursorParam = class(TRepParam)
  private
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    procedure CopyToDataSetParam(const AParam: Db.TParam); override;
  end;

  TRepParams = class(TCollection)
  private
    FOwner: TPersistent;
    function GetParamValue(const ParamName: string): Variant;
    procedure SetParamValue(const ParamName: string; const Value: Variant);
  protected
    function GetAttrCount: Integer; override;
    function GetAttr(Index: Integer): string; override;
    function GetItemAttr(Index, ItemIndex: Integer): string; override;
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TRepParam;
    procedure SetItem(Index: Integer; const Value: TRepParam);
  public
    constructor Create(const AOwner: TPersistent);
    procedure Assign(Source: TPersistent); override;
    function Add(ADataType: TDataType): TRepParam;
    property Items[Index: Integer]: TRepParam read GetItem write SetItem; default;
    function ParamByName(const Value: string): TRepParam;
    function FindParam(const Value: string): TRepParam;
    property ParamValues[const ParamName: string]: Variant read GetParamValue write SetParamValue;
  end;

const
  ParamClasses: array[TDataType] of TRepParamClass =
    (TBooleanParam, TDateTimeParam, TFloatParam, TIntegerParam, TStringParam, TVariantParam, TIntArrayParam, TStrArrayParam, TFloatArrayParam, TCursorParam, TRepParam);

implementation

uses Windows, Forms, SysUtils;

//*****************************************************************************

{TRepParam}

procedure TRepParam.SetName(const Value: string);
begin
  if FName <> Value then
  begin
    FName := Value;
    Changed(False);
  end;
end;

procedure TRepParam.SetType(const Value: TParamType);
begin
  if FParamType <> Value then
  begin
    FParamType := Value;
    Changed(False);
  end;
end;

procedure TRepParam.AssignTo(Dest: TPersistent);
begin
  raise Exception.Create('AssignTo in TRepParam not override'); { Do not localize }
end;

function TRepParam.GetAsBoolean: Boolean;
begin
  raise Exception.Create('Boolean'); { Do not localize }
end;

function TRepParam.GetAsDateTime: TDateTime;
begin
  raise Exception.Create('DateTime'); { Do not localize }
end;

function TRepParam.GetAsFloat: Double;
begin
  raise Exception.Create('Float'); { Do not localize }
end;

function TRepParam.GetAsInteger: Longint;
begin
  raise Exception.Create('Integer'); { Do not localize }
end;

function TRepParam.GetAsString: string;
begin
  raise Exception.Create('String'); { Do not localize }
end;

function TRepParam.GetAsVariant: Variant;
begin
  raise Exception.Create('Variant'); { Do not localize }
end;

procedure TRepParam.SetAsBoolean(const Value: Boolean);
begin
  raise Exception.Create('Boolean'); { Do not localize }
end;

procedure TRepParam.SetAsDateTime(const Value: TDateTime);
begin
  raise Exception.Create('DateTime'); { Do not localize }
end;

procedure TRepParam.SetAsFloat(const Value: Double);
begin
  raise Exception.Create('Float'); { Do not localize }
end;

procedure TRepParam.SetAsInteger(const Value: Longint);
begin
  raise Exception.Create('Integer'); { Do not localize }
end;

procedure TRepParam.SetAsString(const Value: string);
begin
  raise Exception.Create('String'); { Do not localize }
end;

procedure TRepParam.SetAsVariant(const Value: Variant);
begin
  raise Exception.Create('Variant'); { Do not localize }
end;

function TRepParam.GetAsIntArray: TIntArray;
begin
  raise Exception.Create('Array of Integer'); { Do not localize }
end;

procedure TRepParam.SetAsIntArray(const Value: TIntArray);
begin
  raise Exception.Create('Array of Integer'); { Do not localize }
end;

function TRepParam.GetAsStrArray: TStrArray;
begin
  raise Exception.Create('Array of string'); { Do not localize }
end;

procedure TRepParam.SetAsStrArray(const Value: TStrArray);
begin
  raise Exception.Create('Array of string'); { Do not localize }
end;

procedure TRepParam.SetDisplayClassName(const Value: string);
begin
  if FDisplayClassName <> Value then
  begin
    FDisplayClassName := Value;
    Changed(False);
  end;
end;

function TRepParam.GetAsFloatArray: TFloatArray;
begin
  raise Exception.Create('Array of variant'); { Do not localize }
end;

procedure TRepParam.SetAsFloatArray(const Value: TFloatArray);
begin
  raise Exception.Create('Array of variant'); { Do not localize }
end;

procedure TRepParam.CopyToDataSetParam(const AParam: Db.TParam);
begin
  AParam.Value := Self.Value;
end;

procedure TRepParam.SetVisible(const Value: Boolean);
begin
  if FVisible <> Value then
  begin
    FVisible := Value;
    Changed(False);
  end;
end;

{ TIntegerParam }

procedure TIntegerParam.AssignTo(Dest: TPersistent);
begin
  if Dest is TIntegerParam then
  begin
    with TIntegerParam(Dest) do
    begin
      FName := Self.FName;
      FParamType := Self.FParamType;
      FDataType := Self.FDataType;
      Value := Self.Value;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

function TIntegerParam.GetAsFloat: Double;
begin
  Result := GetAsInteger;
end;

function TIntegerParam.GetAsInteger: Longint;
begin
  Result := FValue;
end;

function TIntegerParam.GetAsString: string;
begin
  Str(FValue, Result);
end;

function TIntegerParam.GetAsVariant: Variant;
begin
  Result := FValue;
end;

procedure TIntegerParam.SetAsFloat(const Value: Double);
begin
  SetAsInteger(Integer(Round(Value)));
end;

procedure TIntegerParam.SetAsInteger(const Value: Integer);
begin
  FValue := Value;
end;

procedure TIntegerParam.SetAsString(const Value: string);
var
  E: Integer;
  L: Longint;
begin
  if Value = '' then SetAsInteger(0) else
  begin
    Val(Value, L, E);
    if E <> 0 then raise Exception.Create('Error! Real to Integer!');
    SetAsInteger(L);
  end;
end;

procedure TIntegerParam.SetAsVariant(const Value: Variant);
begin
  SetAsInteger(Value);
end;

{ TVariantParam }

procedure TVariantParam.AssignTo(Dest: TPersistent);
begin
  if Dest is TVariantParam then
  begin
    with TVariantParam(Dest) do
    begin
      FName := Self.FName;
      FParamType := Self.FParamType;
      FDataType := Self.FDataType;
      Value := Self.Value;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

function TVariantParam.GetAsBoolean: Boolean;
begin
  Result := GetAsVariant;
end;

function TVariantParam.GetAsDateTime: TDateTime;
begin
  Result := GetAsVariant;
end;

function TVariantParam.GetAsFloat: Double;
begin
  Result := GetAsVariant;
end;

function TVariantParam.GetAsInteger: Longint;
begin
  Result := GetAsVariant;
end;

function TVariantParam.GetAsString: string;
begin
  Result := VarToStr(GetAsVariant);
end;

function TVariantParam.GetAsVariant: Variant;
begin
  Result := FValue;
end;

procedure TVariantParam.SetAsBoolean(const Value: Boolean);
begin
  SetAsVariant(Value);
end;

procedure TVariantParam.SetAsDateTime(const Value: TDateTime);
begin
  SetAsVariant(Value);
end;

procedure TVariantParam.SetAsFloat(const Value: Double);
begin
  SetAsVariant(Value);
end;

procedure TVariantParam.SetAsInteger(const Value: Longint);
begin
  SetAsVariant(Value);
end;

procedure TVariantParam.SetAsString(const Value: string);
begin
  SetAsVariant(Value);
end;

procedure TVariantParam.SetAsVariant(const Value: Variant);
begin
  FValue := Value;
end;

{ TStringParam }

procedure TStringParam.AssignTo(Dest: TPersistent);
begin
  if Dest is TStringParam then
  begin
    with TStringParam(Dest) do
    begin
      FName := Self.FName;
      FParamType := Self.FParamType;
      FDataType := Self.FDataType;
      Value := Self.Value;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

function TStringParam.GetAsBoolean: Boolean;
var
  S: string;
begin
  S := GetAsString;
  Result := (Length(S) > 0) and (S[1] in ['T', 't', 'Y', 'y']);
end;

function TStringParam.GetAsDateTime: TDateTime;
begin
  Result := StrToDateTime(GetAsString);
end;

function TStringParam.GetAsFloat: Double;
begin
  Result := StrToFloat(GetAsString);
end;

function TStringParam.GetAsInteger: Longint;
begin
  Result := StrToInt(GetAsString);
end;

function TStringParam.GetAsString: string;
begin
  Result := FValue;
end;

function TStringParam.GetAsVariant: Variant;
begin
  if FValue <> '' then Result := FValue else Result := Null;
end;

procedure TStringParam.SetAsBoolean(const Value: Boolean);
const
  Values: array[Boolean] of string[1] = ('F', 'T');
begin
  SetAsString(Values[Value]);
end;

procedure TStringParam.SetAsDateTime(const Value: TDateTime);
begin
  SetAsString(DateTimeToStr(Value));
end;

procedure TStringParam.SetAsFloat(const Value: Double);
begin
  SetAsString(FloatToStr(Value));
end;

procedure TStringParam.SetAsInteger(const Value: Longint);
begin
  SetAsString(IntToStr(Value));
end;

procedure TStringParam.SetAsString(const Value: string);
begin
  FValue := Value;
end;

procedure TStringParam.SetAsVariant(const Value: Variant);
begin
  SetAsString(Value);
end;

{ TFloatParam }

procedure TFloatParam.AssignTo(Dest: TPersistent);
begin
  if Dest is TFloatParam then
  begin
    with TFloatParam(Dest) do
    begin
      FName := Self.FName;
      FParamType := Self.FParamType;
      FDataType := Self.FDataType;
      Value := Self.Value;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

function TFloatParam.GetAsFloat: Double;
begin
  Result := FValue;
end;

function TFloatParam.GetAsInteger: Longint;
begin
  Result := Longint(Round(GetAsFloat));
end;

function TFloatParam.GetAsString: string;
begin
  Result := FloatToStr(GetAsFloat);
end;

function TFloatParam.GetAsVariant: Variant;
begin
  Result := GetAsFloat;
end;

procedure TFloatParam.SetAsFloat(const Value: Double);
begin
  FValue := Value;
end;

procedure TFloatParam.SetAsInteger(const Value: Longint);
begin
  SetAsFloat(Value);
end;

procedure TFloatParam.SetAsString(const Value: string);
var
  F: Extended;
begin
  if Value = '' then SetAsFloat(0) else
  begin
    if not TextToFloat(PChar(Value), F, fvExtended) then
      raise Exception.Create('Error! String to Float!');
    SetAsFloat(F);
  end;
end;

procedure TFloatParam.SetAsVariant(const Value: Variant);
begin
  SetAsFloat(Value);
end;

{ TBooleanParam }

procedure TBooleanParam.AssignTo(Dest: TPersistent);
begin
  if Dest is TBooleanParam then
  begin
    with TBooleanParam(Dest) do
    begin
      FName := Self.FName;
      FParamType := Self.FParamType;
      FDataType := Self.FDataType;
      Value := Self.Value;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

function TBooleanParam.GetAsBoolean: Boolean;
begin
  Result := FValue;
end;

function TBooleanParam.GetAsString: string;
const
  Values: array[Boolean] of string[1] = ('F', 'T');
begin
  Result := Values[GetAsBoolean];
end;

function TBooleanParam.GetAsVariant: Variant;
begin
  Result := GetAsBoolean;
end;

procedure TBooleanParam.SetAsBoolean(const Value: Boolean);
begin
  FValue := Value;
end;

procedure TBooleanParam.SetAsString(const Value: string);
const
  Values: array[Boolean] of string[1] = ('F', 'T');
begin
  if AnsiCompareText(Value, Values[False]) = 0 then
    SetAsBoolean(False)
  else
    if AnsiCompareText(Value, Values[True]) = 0 then
      SetAsBoolean(True)
    else
      raise Exception.Create('Error! String to Boolean!');
end;

procedure TBooleanParam.SetAsVariant(const Value: Variant);
begin
  SetAsBoolean(Value);
end;

{ TDateTimeParam }

procedure TDateTimeParam.AssignTo(Dest: TPersistent);
begin
  if Dest is TDateTimeParam then
  begin
    with TDateTimeParam(Dest) do
    begin
      FName := Self.FName;
      FParamType := Self.FParamType;
      FDataType := Self.FDataType;
      Value := Self.Value;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

function TDateTimeParam.GetAsDateTime: TDateTime;
begin
  Result := FValue;
end;

function TDateTimeParam.GetAsFloat: Double;
begin
  Result := GetAsDateTime;
end;

function TDateTimeParam.GetAsString: string;
begin
  Result := DateTimeToStr(GetAsDateTime);
end;

function TDateTimeParam.GetAsVariant: Variant;
begin
  Result := VarFromDateTime(GetAsDateTime);
end;

procedure TDateTimeParam.SetAsDateTime(const Value: TDateTime);
begin
  FValue := Value;
end;

procedure TDateTimeParam.SetAsFloat(const Value: Double);
begin
  SetAsDateTime(Value);
end;

procedure TDateTimeParam.SetAsString(const Value: string);
begin
  if Value = '' then
    SetAsDateTime(0)
  else
    SetAsDateTime(StrToDateTime(Value));
end;

procedure TDateTimeParam.SetAsVariant(const Value: Variant);
begin
  SetAsDateTime(VarToDateTime(Value));
end;

{TRepParams}

function TRepParams.Add(ADataType: TDataType): TRepParam;
begin
//  Result := TRepParam(inherited Add);
  Result := ParamClasses[ADataType].Create(Self);
  Result.FDataType := ADataType;
end;

constructor TRepParams.Create(const AOwner: TPersistent);
begin
  inherited Create(TRepParam);
  FOwner := AOwner;
end;

function TRepParams.GetParamValue(const ParamName: string): Variant;
begin
  Result := ParamByName(ParamName).Value
end;

procedure TRepParams.SetParamValue(const ParamName: string;
  const Value: Variant);
begin
  ParamByName(ParamName).Value := Value;
end;

function TRepParams.GetAttr(Index: Integer): string;
begin
  case Index of
    0: Result := 'Name';
    1: Result := 'ParamType';
  else
    Result := '';
  end;
end;

function TRepParams.GetAttrCount: Integer;
begin
  Result := 2;
end;

function TRepParams.GetItem(Index: Integer): TRepParam;
begin
  Result := TRepParam(inherited Items[Index]);
end;

function TRepParams.GetItemAttr(Index, ItemIndex: Integer): string;
begin
  case Index of
    0: Result := Items[ItemIndex].Name;
  else
    Result := '';
  end;
end;

function TRepParams.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TRepParams.SetItem(Index: Integer; const Value: TRepParam);
begin
  Items[Index].Assign(Value);
end;

function TRepParams.ParamByName(const Value: string): TRepParam;
begin
  Result := FindParam(Value);
  if Result = nil then
     raise Exception.Create('������! ��������� � ������ ''' + Value + '''�� �������!');
end;

function TRepParams.FindParam(const Value: string): TRepParam;
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
  begin
    Result := TRepParam(inherited Items[I]);
    if AnsiCompareText(Result.Name, Value) = 0 then Exit;
  end;
  Result := nil;
end;

//*****************************************************************************

procedure TRepParams.Assign(Source: TPersistent);
var
  I: Integer;
begin
//  if Source is TParams then
  if Source is TRepParams then
  begin
    BeginUpdate;
    try
      Clear;
      for I := 0 to TRepParams(Source).Count - 1 do
        Add(TRepParams(Source).Items[I].FDataType).Assign(TRepParams(Source).Items[I]);
    finally
      EndUpdate;
    end;
    Exit;
  end;
  inherited Assign(Source);
end;

{ TIntArrayParam }

procedure TIntArrayParam.AssignTo(Dest: TPersistent);
begin
  if Dest is TIntArrayParam then
  begin
    with TIntArrayParam(Dest) do
    begin
      FName := Self.FName;
      FParamType := Self.FParamType;
      FDataType := Self.FDataType;
      Value := Self.Value;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

function TIntArrayParam.GetAsIntArray: TIntArray;
begin
  Result := FValue;
end;

procedure TIntArrayParam.SetAsIntArray(const Value: TIntArray);
begin
  FValue := Copy(Value);
end;

{ TStrArrayParam }

procedure TStrArrayParam.AssignTo(Dest: TPersistent);
begin
  if Dest is TStrArrayParam then
  begin
    with TStrArrayParam(Dest) do
    begin
      FName := Self.FName;
      FParamType := Self.FParamType;
      FDataType := Self.FDataType;
      Value := Self.Value;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

function TStrArrayParam.GetAsStrArray: TStrArray;
begin
  Result := FValue;
end;

procedure TStrArrayParam.SetAsStrArray(const Value: TStrArray);
begin
  FValue := Copy(Value);
end;

{ TFloatArrayParam }

procedure TFloatArrayParam.AssignTo(Dest: TPersistent);
begin
  if Dest is TFloatArrayParam then
  begin
    with TFloatArrayParam(Dest) do
    begin
      FName := Self.FName;
      FParamType := Self.FParamType;
      FDataType := Self.FDataType;
      Value := Self.Value;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

procedure TFloatArrayParam.CopyToDataSetParam(const AParam: Db.TParam);
var
  J: Integer;
begin
  AParam.Value := '';
  for J := Low(Value) to High(Value) do
  begin
    if AParam.Value <> '' then
    begin
      AParam.Value := Concat(AParam.Value, ' , ');
    end;
    AParam.Value := Concat(AParam.Value, FloatToStr(Value[J]));
  end;
end;

function TFloatArrayParam.GetAsFloatArray: TFloatArray;
begin
  Result := FValue;
end;

procedure TFloatArrayParam.SetAsFloatArray(const Value: TFloatArray);
begin
  FValue := nil;
  FValue := Copy(Value);
end;

{ TCursorParam }

procedure TCursorParam.AssignTo(Dest: TPersistent);
begin
  if Dest is TCursorParam then
  begin
    with TCursorParam(Dest) do
    begin
      FName := Self.FName;
      FParamType := Self.FParamType;
      FDataType := Self.FDataType;
      Value := Self.Value;
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

procedure TCursorParam.CopyToDataSetParam(const AParam: Db.TParam);
begin
end;

end.
