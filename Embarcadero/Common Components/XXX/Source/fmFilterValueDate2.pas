unit fmFilterValueDate2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, DBCtrls, StdCtrls, ComCtrls, xxxDBGrid, unt001_Filter;

type
  TfmFilterValueDateFrame2 = class(TfmFilterValueFrame)
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
  private
    function GetDate1: TDateTime;
    function GetDate2: TDateTime;
    procedure SetDate1(const Value: TDateTime);
    procedure SetDate2(const Value: TDateTime);
  protected
    function GetValues: TValueItems; override;
    procedure SetValues(const Value: TValueItems); override;
  public
    property Date1: TDateTime read GetDate1 write SetDate1;
    property Date2: TDateTime read GetDate2 write SetDate2;    
  end;

var
  fmFilterValueDateFrame2: TfmFilterValueDateFrame2;

implementation

{$R *.DFM}

{ TfmFilterValueDateFrame2 }

function TfmFilterValueDateFrame2.GetDate1: TDateTime;
begin
  Result := DateTimePicker1.Date;
end;

function TfmFilterValueDateFrame2.GetDate2: TDateTime;
begin
  Result := DateTimePicker2.Date;
end;

function TfmFilterValueDateFrame2.GetValues: TValueItems;
var
  VValue: TValueItem;
begin
  Result := inherited GetValues;
  if not Assigned(Result) then Exit;

  // возвращаем выбранные даты
  if Result.Count > 0 then Result.Clear;
  VValue := Result.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := Date1;
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := Date1;
  VValue := Result.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := Date2;
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := Date2;
end;

procedure TfmFilterValueDateFrame2.SetDate1(const Value: TDateTime);
begin
  DateTimePicker1.Date := Value;
end;

procedure TfmFilterValueDateFrame2.SetDate2(const Value: TDateTime);
begin
  DateTimePicker2.Date := Value;
end;

procedure TfmFilterValueDateFrame2.SetValues(const Value: TValueItems);
begin
  inherited SetValues(Value);

  // возвращаем выбранную дату
  if Assigned(Value) and (Value.Count > 1) then
  begin
    DateTimePicker1.DateTime := Value.Items[0].ListValue.AsDateTime;
    DateTimePicker2.DateTime := Value.Items[1].ListValue.AsDateTime;
  end else
  begin
    Date1 := Now;
    Date2 := Now;
  end;
end;

end.
