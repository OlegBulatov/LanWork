unit fmFilterValueText3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValueNumb3, DBCtrls, StdCtrls, Db, xxxDBGrid, unt001_Filter;

type
  TfmFilterValueTextFrame3 = class(TfmFilterValueNumbFrame3)
  private
  protected
    function GetValues: TValueItems; override;
    procedure SetValues(const Value: TValueItems); override;
  public
  end;

var
  fmFilterValueTextFrame3: TfmFilterValueTextFrame3;

implementation

{$R *.DFM}

{ TfmFilterValueTextFrame3 }

function TfmFilterValueTextFrame3.GetValues: TValueItems;
begin
  //Result := inherited GetValues;
  Result := FValues;  // !!!1
  if not Assigned(Result) then Exit;

  // возвращаем выбранное число
  if Result.Count > 0 then Result.Clear;
  with Result.Add do
  begin
    KeyValue.ValueType := vtString;
    KeyValue.Value := '%' + Edit.Text + '%';
    ListValue.ValueType := vtString;
    ListValue.Value := '%' + Edit.Text + '%';
  end;
end;

procedure TfmFilterValueTextFrame3.SetValues(const Value: TValueItems);
begin
  FValues := Value;  // !!!!
  //inherited SetValues(Value);

  // устанавливаем значение
  if Assigned(Value) and (Value.Count > 0) then
  begin
    lcValue.KeyValue := Value.Items[0].ListValue.Value;
  end else
  begin
    lcValue.KeyValue := DataSource.DataSet[lcValue.ListField];
  end;
  lcValue.CloseUp(True);  
end;

end.

