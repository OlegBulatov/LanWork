unit fmFilterValueText1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValueNumb1, DBCtrls, StdCtrls, Db, xxxDBGrid, unt001_Filter;

type
  TfmFilterValueTextFrame1 = class(TfmFilterValueNumbFrame1)
  private
  protected
    function GetValues: TValueItems; override;
    procedure SetValues(const Value: TValueItems); override;
  public
  end;

var
  fmFilterValueTextFrame1: TfmFilterValueTextFrame1;

implementation

{$R *.DFM}

{ TfmFilterValueTextFrame1 }

function TfmFilterValueTextFrame1.GetValues: TValueItems;
begin
  Result := FValues;  // !!!1
  if not Assigned(Result) then Exit;

  // возвращаем выбранное число
  if Result.Count > 0 then Result.Clear;
  with Result.Add do
  begin
    KeyValue.ValueType := vtString;
    KeyValue.Value := lcValue.ListSource.DataSet.FieldByName(lcValue.KeyField).AsString;
    ListValue.ValueType := vtString;
    ListValue.Value := lcValue.ListSource.DataSet.FieldByName(lcValue.ListField).AsString;
  end;
end;

procedure TfmFilterValueTextFrame1.SetValues(const Value: TValueItems);
begin
  FValues := Value;  // !!!!

  // устанавливаем значение
  if Assigned(Value) and (Value.Count > 0) then
  begin
    lcValue.KeyValue := Value.Items[0].ListValue.Value;
  end else
  begin
    lcValue.KeyValue := DataSource.DataSet[lcValue.ListField];
  end;
end;

end.

