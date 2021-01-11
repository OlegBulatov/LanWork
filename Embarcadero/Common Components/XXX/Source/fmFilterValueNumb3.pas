unit fmFilterValueNumb3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValueNumb1, DBCtrls, StdCtrls, Db, xxxDBGrid, unt001_Filter;

type
  TfmFilterValueNumbFrame3 = class(TfmFilterValueNumbFrame1)
    Edit: TEdit;
    procedure lcValueCloseUp(Sender: TObject);
  private
  protected
    function GetValues: TValueItems; override;
    procedure SetValues(const Value: TValueItems); override;
  public
  end;

var
  fmFilterValueNumbFrame3: TfmFilterValueNumbFrame3;

implementation

{$R *.DFM}

{ TfmFilterValueFrame3 }

function TfmFilterValueNumbFrame3.GetValues: TValueItems;
begin
  Result := FValues;                       // !!!
  if not Assigned(Result) then Exit;

  // возвращаем выбранное число
  if Result.Count > 0 then Result.Clear;
  with Result.Add do
  begin
    KeyValue.ValueType := vtNumber;
    KeyValue.AsFloat := StrToFloat(Edit.Text); // !!!
    ListValue.ValueType := vtNumber;
    ListValue.AsFloat := StrToFloat(Edit.Text);
  end;
end;

procedure TfmFilterValueNumbFrame3.SetValues(const Value: TValueItems);
begin
  FValues := Value;  // !!!!

  // устанавливаем значение
  if Assigned(Value) and (Value.Count > 0) then
  begin
    lcValue.KeyValue := Value.Items[0].ListValue.AsFloat;
  end else
  begin
    lcValue.KeyValue := DataSource.DataSet[lcValue.ListField];
  end;
  lcValue.CloseUp(True);
end;

procedure TfmFilterValueNumbFrame3.lcValueCloseUp(Sender: TObject);
begin
  Edit.Text := lcValue.Text;
end;

end.

