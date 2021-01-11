unit fmFilterValueDate3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, DBCtrls, StdCtrls, ComCtrls, xxxDBGrid, unt001_Filter;

type
  // сегодня
  TfmFilterValueDateFrame3 = class(TfmFilterValueFrame)
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
  fmFilterValueDateFrame3: TfmFilterValueDateFrame3;

implementation

{$R *.DFM}

{ TfmFilterValueDateFrame3 }

function TfmFilterValueDateFrame3.GetDate: TDateTime;
begin
  Result := DateTimePicker.Date;
end;

function TfmFilterValueDateFrame3.GetValues: TValueItems;
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

procedure TfmFilterValueDateFrame3.SetDate(const Value: TDateTime);
begin
  DateTimePicker.Date := Value;
end;

procedure TfmFilterValueDateFrame3.SetValues(const Value: TValueItems);
begin
  inherited SetValues(Value);

  // сегодня
  Date := Now;
end;

end.
