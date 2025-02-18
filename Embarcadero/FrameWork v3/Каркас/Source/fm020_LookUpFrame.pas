unit fm020_LookUpFrame;

interface

uses
  SysUtils, Classes, Controls, Forms,
  Db, OracleData, DBCtrls, StdCtrls,
  fm021_CheckBoxFrame, ActnList, fm000_Parent,
  fm008_DBObjectFrame, untParams, xxxDbLookupCheckCombo, Variants,
  System.Actions;

type
  TPos = (tpFirst, tpLast);

  TfmLookUp = class(TfmCheckBox)
    lcb: TxxxDBLookupCheckCombo;
    procedure lcbCloseUp(Sender: TObject);
  private
    FPos: TPos;
    function GetListValue: string;
    function GetKeyFieldName: string;
    //
    function GetLableCaption: string;
    procedure SetLableCaption(const Value: string);
    function GetSqlText: string;
    procedure SetSqlText(const Value: string);
    function GetListFieldName: string;
  protected
    procedure SetKeyValue(const Value: Variant); override;
//    procedure SetFilters; override;
    function GetKeyValue: Variant; override;
    function GetKeyValueFloat: Double; virtual;
    function GetKeyValueStr: string; virtual;
    function GetKeyValues: untParams.TFloatArray; virtual;
    function GetKeyValuesStr: TStrArray; virtual;
    //
    function GetDefPos: TPos; virtual;
    procedure ChangeState; override;
    procedure SetEnabled(Value: boolean); override;
  public
    constructor Create(AOwner: TComponent); override;
    //
//    procedure GetParamsValues; override;
//    procedure SetParamsValues; override;
    //
    procedure InitFrame(Sender: TObject);  override;
    //
//    procedure RetrieveConditions(const AConditions: TConditions);
    procedure SetKeyValuesStr(Values: array of string);
    procedure SetKeyValues(Values: untParams.TFloatArray);
    //
    property Pos: TPos read FPos write FPos;
    // ��� ������� ����
    property KeyFieldName: string read GetKeyFieldName;
    // �������� ������� ���� - �����
    property KeyValueFloat: Double read GetKeyValueFloat;
    // �������� ������� ���� - ������
    //
    property KeyValueStr: string read GetKeyValueStr;
    //
    property KeyValues: untParams.TFloatArray read GetKeyValues write SetKeyValues;
    property KeyValuesStr: TStrArray read GetKeyValuesStr;

    property ListValue: string read GetListValue;
    property ListFieldName: string read GetListFieldName;
  published
    property xxxLableCaption: string read GetLableCaption write SetLableCaption;
    property xxxSqlText: string read GetSqlText write SetSqlText;
  end;

var
  fmLookUp: TfmLookUp;

implementation

uses dm005_MainData, dm000_ObjectsFactory;

{$R *.DFM}

constructor TfmLookUp.Create(AOwner: TComponent);
begin
  inherited;
  FPos := GetDefPos;
end;

function TfmLookUp.GetDefPos: TPos;
begin
  Result := tpFirst;
end;

function TfmLookUp.GetKeyFieldName: string;
begin
  Result := lcb.LookupField;
end;

function TfmLookUp.GetKeyValue: Variant;
begin
  //Result := odsList.FieldByName(KeyFieldName).AsString;
  Result := lcb.KeyValue;
end;

function TfmLookUp.GetKeyValueFloat: Double;
begin
  //Result := odsList.FieldByName(KeyFieldName).AsFloat;
  if VarIsNull(lcb.KeyValue) then
    Result := -1
  else
    Result := lcb.KeyValue;
end;

function TfmLookUp.GetKeyValueStr: string;
begin
  if VarIsNull(lcb.KeyValue) then
    Result := ''
  else
    Result := lcb.KeyValue;
end;

function TfmLookUp.GetLableCaption: string;
begin
  Result := lbCaption.Caption;
end;

function TfmLookUp.GetListFieldName: string;
begin
  Result := lcb.LookupDisplay;
end;

function TfmLookUp.GetListValue: string;
begin
  Result := lcb.DisplayValue;
end;

function TfmLookUp.GetSqlText: string;
begin
  Result := odsList.SQL.Text;
end;

procedure TfmLookUp.InitFrame(Sender: TObject);
begin
  // ��������� DataSet
  odsList.Close;

  // ��������� ��������� ������� �������
  //SetFilters;

  // �������� ������
  odsList.Open;

  // ��������������� �� ������
  if FPos = tpLast then
    odsList.Last;

  KeyValue := odsList[KeyFieldName];
end;

{
procedure TfmLookUp.RetrieveConditions(
  const AConditions: TConditions);
var
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ������� ������� �� ���� �� ������
  AConditions.ClearFor(KeyFieldName);

  // ���� ���� ����������� �� ���������� �� ������ �� ������
  if not IsEnabled then Exit;

  // ��������� ����� �������
  VCondition := AConditions.Add;
  VCondition.DisplayName := '*****';
  VCondition.Condition := dc01;
  VCondition.ListName := KeyFieldName;

  // ��������� �������� �������
  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := KeyValueFloat ;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := KeyValueFloat;
end;
}

{
procedure TfmLookUp.SetFilters;
begin
  // ����������� ��������� � ��������� � DataSet'�� ��������
  ObjectsFactory.Links.SetDataSetVariables(odsList);
end;
}

procedure TfmLookUp.SetKeyValue(const Value: Variant);
begin
  if Value <> Null then
    lcb.KeyValue := Value;
end;

procedure TfmLookUp.SetLableCaption(const Value: string);
begin
  lbCaption.Caption := Value;
end;

{
procedure TfmLookUp.SetParamsValues;
begin
  InitValues;

  if Param.Value <> 0 then
  begin
    lcbList.KeyValue := Param.Value;
  end;
end;
}

procedure TfmLookUp.SetSqlText(const Value: string);
begin
  odsList.SQL.Text := Value;
end;

procedure TfmLookUp.lcbCloseUp(Sender: TObject);
begin
//  if not cb.Checked then
//    begin
//    cb.Checked := True;
//    end;

  if Assigned(lcb.OnChange) then
    lcb.OnChange(lcb);
end;

procedure TfmLookUp.ChangeState;
begin
    lcb.Enabled := cb.Checked;
    if Assigned(lcb.OnChange) then
      lcb.OnChange(lcb);
end;

function TfmLookUp.GetKeyValues: untParams.TFloatArray;
var
  i: integer;
begin
  SetLength(Result, 0);
  if lcb.KeyValuesStr.Count > 0 then
    try
      for i := 0 to lcb.KeyValuesStr.Count-1 do
        if lcb.KeyValuesStr[i] <> '' then
          begin
          SetLength(Result, Length(Result)+1);
          Result[High(Result)] := StrToFloat(lcb.KeyValuesStr[i]);
          end;
    except
      on E: EConvertError do
        begin
        SetLength(Result, 0);
        raise;
        end;
    end;
end;

function TfmLookUp.GetKeyValuesStr: TStrArray;
var
  i: integer;
begin
  SetLength(Result, 0);
  if lcb.KeyValuesStr.Count > 0 then
    for i := 0 to lcb.KeyValuesStr.Count-1 do
      if lcb.KeyValuesStr[i] <> '' then
        begin
        SetLength(Result, Length(Result)+1);
        Result[High(Result)] := lcb.KeyValuesStr[i];
        end;
end;

procedure TfmLookUp.SetKeyValuesStr(Values: array of string);
var
  Tmp:  TStringList;
  i:    integer;
begin
  if lsChecked in lcb.ListStyle then
    begin
    Tmp := TStringList.Create;
    for i := Low(Values) to High(Values) do
      Tmp.Add(Values[i]);
    lcb.KeyValuesStr := Tmp;
    Tmp.Free;
    end
  else
    lcb.KeyValue := Values[Low(Values)];
end;

procedure TfmLookUp.SetEnabled(Value: boolean);
begin
  inherited SetEnabled(Value);
  lcb.Enabled := Value;
end;

procedure TfmLookUp.SetKeyValues(Values: untParams.TFloatArray);
begin
  lcb.KeyValuesFloat := xxxDbLookupCheckCombo.TFloatArray(Values);
end;

end.
