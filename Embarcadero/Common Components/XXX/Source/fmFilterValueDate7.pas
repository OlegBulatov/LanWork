unit fmFilterValueDate7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, DBCtrls, StdCtrls, ComCtrls, xxxDBGrid, fmFilterValueDate5;

type
  TfmFilterValueDateFrame7 = class(TfmFilterValueDateFrame5)
  private
  protected
    function DefDate1: TDateTime; override;
    function DefDate2: TDateTime; override;
  public
  end;

var
  fmFilterValueDateFrame7: TfmFilterValueDateFrame7;

implementation

{$R *.DFM}

{ TfmFilterValueDateFrame7 }

function TfmFilterValueDateFrame7.DefDate1: TDateTime;
var
  Year, Month, Day: Word;
begin
  // текущий мес€ц [лева€ граница] первый день мес€ца
  DecodeDate(Date, Year, Month, Day);
  Result := EncodeDate(Year, Month, 1);
end;

function TfmFilterValueDateFrame7.DefDate2: TDateTime;
var
  Year, Month, Day: Word;
begin
  // текущий мес€ц [права€ граница] последний день мес€ца
  DecodeDate(Date, Year, Month, Day);
  Result := EncodeDate(Year, Month, MonthDays[IsLeapYear(Year)][Month]);
end;

end.
