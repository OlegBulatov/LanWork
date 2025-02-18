unit fm033_PeriodFilterFrame;

interface

uses
  Forms, Classes, Controls, StdCtrls, Db, OracleData, RxLookup, fm020_LookUpFrame,
  ActnList, xxxDbLookupCheckCombo, Variants, System.Actions;

type
  TfmPeriodFilter = class(TfmLookUp)
    Label1: TLabel;
    lcb2: TRxDBLookupCombo;
    odsList2: TOracleDataSet;
    dsList2: TDataSource;
    procedure Period1lcbCloseUp(Sender: TObject);
    procedure Period2lcbCloseUp(Sender: TObject);
  private
    function GetKeyValue2: Variant;
    function GetKeyValue2Float: Double;
    function GetKeyValue2Str: string;
    procedure SetKeyValue2(const Value: Variant);
  protected
    function GetKeyValue: Variant; override;
    function GetKeyValueFloat: Double; override;
    function GetKeyValueStr: string; override;

    procedure SetKeyValue(const Value: Variant); override;

    procedure ChangeState; override;
  public
    procedure InitFrame(Sender: TObject);  override;
    // �������� ��������� ���� 2 - ����������
    // �������� ��������� ���� 2 - ����������
    property KeyValue2: Variant read GetKeyValue2 write SetKeyValue2;
    // �������� ������� ���� 2 - �����
    property KeyValue2Float: Double read GetKeyValue2Float;
    // �������� ������� ���� 2 - ������
    property KeyValue2Str: string read GetKeyValue2Str;
  end;

var
  fmPeriodFilter: TfmPeriodFilter;

implementation

{$R *.DFM}

{ TfmPeriodFilter }

procedure TfmPeriodFilter.InitFrame(Sender: TObject);
begin
  odsList.Close;
  odsList.SetVariable(0, MaxInt);
  odsList.Open;
  odsList.Last;

  if not odsList.IsEmpty then
    lcb.KeyValue := odsList[lcb.LookupField]
  else
    lcb.KeyValue := 0;

  odsList2.Close;
  dsList2.DataSet := nil;
  if not VarIsEmpty(lcb.KeyValue) then
    odsList2.SetVariable(0, lcb.KeyValue)
  else
    odsList2.SetVariable(0, 0);

  odsList2.Open;
  dsList2.DataSet := odsList2;
  odsList2.Last;
  if not odsList2.IsEmpty then
    lcb2.KeyValue := odsList2[lcb2.LookupField]
  else
    lcb2.KeyValue := '';
end;

procedure TfmPeriodFilter.Period1lcbCloseUp(Sender: TObject);
var
  vKey: Variant;
begin
  vKey := lcb2.KeyValue;

  odsList2.Close;
  dsList2.DataSet := nil;

  if not VarIsEmpty(lcb.KeyValue) then
    odsList2.SetVariable(0, lcb.KeyValue)
  else
    odsList2.SetVariable(0, 0);

  odsList2.Open;
  dsList2.DataSet := odsList2;

  if not odsList2.Locate(lcb2.LookupField, vKey, []) then
    odsList2.Last;

  if not odsList2.IsEmpty then
    lcb2.KeyValue := odsList2[lcb2.LookupField]
  else
    lcb2.KeyValue := 0;
end;

procedure TfmPeriodFilter.Period2lcbCloseUp(Sender: TObject);
var
  vKey: Variant;
begin
  vKey := lcb.KeyValue;

  odsList.Close;
  dsList.DataSet := nil;

  if not VarIsEmpty(lcb2.KeyValue) then
    odsList.SetVariable(0, lcb2.KeyValue)
  else
    odsList.SetVariable(0, MaxInt);

  odsList.Open;
  dsList.DataSet := odsList;

  if not odsList.Locate(lcb.LookupField, vKey, []) then
    odsList.Last;

  if not odsList.IsEmpty then
    lcb.KeyValue := odsList[lcb.LookupField]
  else
    lcb.KeyValue := 0;
end;

procedure TfmPeriodFilter.ChangeState;
begin
  inherited;
  lcb2.Enabled := cb.Checked;
end;

function TfmPeriodFilter.GetKeyValue2: Variant;
begin
  if (cb.State = cbChecked) or (cb.State = cbGrayed)then
    Result := lcb2.KeyValue
  else
    Result := 0;
end;

function TfmPeriodFilter.GetKeyValue2Float: Double;
begin
  if (cb.Checked) or (cb.State = cbGrayed) then
    begin
    if VarIsNull(lcb2.KeyValue) then
      Result := -1
    else
      Result := lcb2.KeyValue;
    end
  else
    Result := 0;
end;

function TfmPeriodFilter.GetKeyValue2Str: string;
begin
  if (cb.Checked) or (cb.State = cbGrayed) then
    begin
     if VarIsNull(lcb2.KeyValue) then
       Result := ''
     else
       Result := lcb2.KeyValue
     end
  else
    Result := '';
end;

procedure TfmPeriodFilter.SetKeyValue2(const Value: Variant);
begin
  if Value <> Null then
    lcb2.KeyValue := Value;
end;

function TfmPeriodFilter.GetKeyValue: Variant;
begin
  if (cb.State = cbChecked) or (cb.State = cbGrayed) then
    Result := inherited GetKeyValue
  else
    Result := 0;
end;

function TfmPeriodFilter.GetKeyValueFloat: Double;
begin
  if cb.Checked then
    Result := inherited GetKeyValueFloat
  else
    Result := 0;
end;

function TfmPeriodFilter.GetKeyValueStr: string;
begin
  if cb.Checked then
    Result := inherited GetKeyValueStr
  else
    Result := '';
end;

procedure TfmPeriodFilter.SetKeyValue(const Value: Variant);
begin
  inherited;
  Period1lcbCloseUp(lcb);
end;

end.
