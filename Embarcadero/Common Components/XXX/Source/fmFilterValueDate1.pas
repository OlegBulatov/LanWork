unit fmFilterValueDate1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, DBCtrls, StdCtrls, ComCtrls, xxxDBGrid, unt001_Filter;

type
  TfmFilterValueDateFrame1 = class(TfmFilterValueFrame)
    Label1: TLabel;
    DateTimePicker: TDateTimePicker;
  private
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
  protected
    function GetValues: TValueItems; override;
    procedure SetValues(const Value: TValueItems); override;
  public
    property Date: TDateTime read GetDate write SetDate;
  end;

var
  fmFilterValueDateFrame1: TfmFilterValueDateFrame1;

implementation

{$R *.DFM}

{ TfmFilterValueDateFrame1 }

function TfmFilterValueDateFrame1.GetDate: TDateTime;
begin
  Result := DateTimePicker.Date;
end;

function TfmFilterValueDateFrame1.GetValues: TValueItems;
var
  VValue: TValueItem;
begin
  Result := inherited GetValues;
  if not Assigned(Result) then Exit;

  // возвращаем выбранную дату
  if Result.Count > 0 then Result.Clear;
  VValue := Result.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := Date;
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := Date;
end;

procedure TfmFilterValueDateFrame1.SetDate(const Value: TDateTime);
begin
  DateTimePicker.Date := Value;
end;

procedure TfmFilterValueDateFrame1.SetValues(const Value: TValueItems);
begin
  inherited SetValues(Value);

  // возвращаем выбранную дату
  if Assigned(Value) and (Value.Count > 0) then
  begin
    Date := Value.Items[0].ListValue.AsDateTime;
  end else
  begin
    Date := Now;
  end;
end;

end.
