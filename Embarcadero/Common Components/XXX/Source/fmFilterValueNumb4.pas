unit fmFilterValueNumb4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValueNumb3, DBCtrls, StdCtrls, Db, xxxDBGrid, unt001_Filter;

type
  TfmFilterValueNumbFrame4 = class(TfmFilterValueNumbFrame3)
    Edit2: TEdit;
    lcValue2: TDBLookupComboBox;
    procedure lcValue2CloseUp(Sender: TObject);
  private
  protected
    function GetValues: TValueItems; override;
    procedure SetValues(const Value: TValueItems); override;
    procedure SetKeyField(const Value: string); override;
    procedure SetListField(const Value: string); override;
  public
  end;

var
  fmFilterValueNumbFrame4: TfmFilterValueNumbFrame4;

implementation

{$R *.DFM}

{ TfmFilterValueFrame4 }

function TfmFilterValueNumbFrame4.GetValues: TValueItems;
begin
  Result := inherited GetValues;
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
  with Result.Add do
  begin
    KeyValue.ValueType := vtNumber;
    KeyValue.AsFloat := StrToFloat(Edit2.Text); // !!!
    ListValue.ValueType := vtNumber;
    ListValue.AsFloat := StrToFloat(Edit2.Text);
  end;
end;

procedure TfmFilterValueNumbFrame4.SetValues(const Value: TValueItems);
begin
  inherited SetValues(Value);

  // устанавливаем значение
  if Assigned(Value) and (Value.Count > 1) then
  begin
    lcValue.KeyValue := Value.Items[0].ListValue.AsFloat;
    lcValue2.KeyValue := Value.Items[1].ListValue.AsFloat;
  end else
  begin
    lcValue.KeyValue := DataSource.DataSet[lcValue.ListField];
    lcValue2.KeyValue := DataSource.DataSet[lcValue.ListField];    
  end;
  lcValue.CloseUp(True);
  lcValue2.CloseUp(True);  
end;

procedure TfmFilterValueNumbFrame4.lcValue2CloseUp(Sender: TObject);
begin
  Edit2.Text := lcValue2.Text;
end;

procedure TfmFilterValueNumbFrame4.SetKeyField(const Value: string);
begin
  inherited SetKeyField(Value);
  lcValue2.KeyField := Value;
end;

procedure TfmFilterValueNumbFrame4.SetListField(const Value: string);
begin
  inherited SetListField(Value);
  lcValue2.ListField := Value;
end;

end.

