unit fmFilterValueNumb1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, DBCtrls, StdCtrls, Db, xxxDBGrid, unt001_Filter;

type
  TfmFilterValueNumbFrame1 = class(TfmFilterValueFrame)
    Label1: TLabel;
    lcValue: TDBLookupComboBox;
    DataSource: TDataSource;
    procedure lcValueDropDown(Sender: TObject);
  private
  protected
    procedure SetKeyField(const Value: string); override;
    procedure SetListField(const Value: string); override;
    procedure SetDataSet(const Value: TDataSet); override;
    function GetValues: TValueItems; override;
    procedure SetValues(const Value: TValueItems); override;
  public
  end;

var
  fmFilterValueNumbFrame1: TfmFilterValueNumbFrame1;

implementation

{$R *.DFM}

{ TfmFilterValueFrame1 }

function TfmFilterValueNumbFrame1.GetValues: TValueItems;
begin
  Result := inherited GetValues;
  if not Assigned(Result) then Exit;

  // возвращаем выбранное число
  if Result.Count > 0 then Result.Clear;
  with Result.Add do
  begin
    KeyValue.ValueType := vtNumber;
    KeyValue.AsFloat := lcValue.ListSource.DataSet.FieldByName(lcValue.KeyField).AsFloat; // !!!
    ListValue.ValueType := vtNumber;
    ListValue.AsFloat := lcValue.ListSource.DataSet.FieldByName(lcValue.ListField).AsFloat;
  end;
end;

procedure TfmFilterValueNumbFrame1.SetDataSet(const Value: TDataSet);
begin
  DataSource.DataSet := Value;
end;

procedure TfmFilterValueNumbFrame1.SetKeyField(const Value: string);
begin
  lcValue.KeyField := Value;
end;

procedure TfmFilterValueNumbFrame1.SetListField(const Value: string);
begin
  lcValue.ListField := Value;
end;

procedure TfmFilterValueNumbFrame1.SetValues(const Value: TValueItems);
begin
  inherited SetValues(Value);

  // устанавливаем значение
  if Assigned(Value) and (Value.Count > 0) then
  begin
    lcValue.KeyValue := Value.Items[0].ListValue.AsFloat;
  end else
  begin
    lcValue.KeyValue := DataSource.DataSet[lcValue.ListField];
  end;
end;

procedure TfmFilterValueNumbFrame1.lcValueDropDown(Sender: TObject);
(*
var
  VOldCursor: TCursor;
*)
begin
(*
  if not Assigned(DataSource.DataSet) then Exit;

  VOldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    DataSource.DataSet.DisableControls;
    try
      DataSource.DataSet.Close;
      DataSource.DataSet.Open;
    finally
      DataSource.DataSet.EnableControls;
    end;
  finally
    Screen.Cursor := VOldCursor;
  end;
*)
end;

end.

