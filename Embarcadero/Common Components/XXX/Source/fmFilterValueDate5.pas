unit fmFilterValueDate5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, DBCtrls, StdCtrls, ComCtrls, xxxDBGrid, unt001_Filter;

type
  TfmFilterValueDateFrame5 = class(TfmFilterValueFrame)
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
    //
    function DayOfWeek: Integer;
    //
    function DefDate1: TDateTime; virtual;
    function DefDate2: TDateTime; virtual;
  public
    property Date1: TDateTime read GetDate1 write SetDate1;
    property Date2: TDateTime read GetDate2 write SetDate2;    
  end;

var
  fmFilterValueDateFrame5: TfmFilterValueDateFrame5;

implementation

{$R *.DFM}

{ TfmFilterValueDateFrame2 }

function TfmFilterValueDateFrame5.DayOfWeek: Integer;
begin
  // Понедельник = 2
  // Вторник     = 3
  // ...
  // Воскресенье = 8
  Result := Sysutils.DayOfWeek(Now);
  if Result = 1 then Result := 8;
end;

function TfmFilterValueDateFrame5.DefDate1: TDateTime;
begin
  // текущая неделя [левая граница] понедельник
  Result := Now - DayOfWeek + 2;
end;

function TfmFilterValueDateFrame5.DefDate2: TDateTime;
begin
  // текущая неделя [правая граница] воскресеньем
  Result := Now - DayOfWeek + 8;
end;

function TfmFilterValueDateFrame5.GetDate1: TDateTime;
begin
  Result := DateTimePicker1.Date;
end;

function TfmFilterValueDateFrame5.GetDate2: TDateTime;
begin
  Result := DateTimePicker2.Date;
end;

function TfmFilterValueDateFrame5.GetValues: TValueItems;
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

procedure TfmFilterValueDateFrame5.SetDate1(const Value: TDateTime);
begin
  DateTimePicker1.Date := Value;
end;

procedure TfmFilterValueDateFrame5.SetDate2(const Value: TDateTime);
begin
  DateTimePicker2.Date := Value;
end;

procedure TfmFilterValueDateFrame5.SetValues(const Value: TValueItems);
begin
  inherited SetValues(Value);

  // возвращаем выбранную дату
  Date1 := DefDate1;
  Date2 := DefDate2;
end;

end.
