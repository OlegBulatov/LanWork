unit fmFilterValueDate9;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, DBCtrls, StdCtrls, ComCtrls, xxxDBGrid, fmFilterValueDate5;

type
  TfmFilterValueDateFrame9 = class(TfmFilterValueDateFrame5)
  private
  protected
    function DefDate1: TDateTime; override;
    function DefDate2: TDateTime; override;
  public
  end;

var
  fmFilterValueDateFrame9: TfmFilterValueDateFrame9;

implementation

{$R *.DFM}

{ TfmFilterValueDateFrame9 }

function TfmFilterValueDateFrame9.DefDate1: TDateTime;
var
  Year, Month, Day: Word;
begin
  // текущий год [левая граница] первый день года
  DecodeDate(Date, Year, Month, Day);
  Result := EncodeDate(Year, 1, 1);
end;

function TfmFilterValueDateFrame9.DefDate2: TDateTime;
var
  Year, Month, Day: Word;
begin
  // текущий год [правая граница] последний день года
  DecodeDate(Date, Year, Month, Day);
  Month := 12;
  Day := MonthDays[IsLeapYear(Year)][Month];
  Result := EncodeDate(Year, Month, Day);
end;

end.
