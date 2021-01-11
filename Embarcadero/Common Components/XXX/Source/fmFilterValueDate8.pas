unit fmFilterValueDate8;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, DBCtrls, StdCtrls, ComCtrls, xxxDBGrid, fmFilterValueDate7;

type
  TfmFilterValueDateFrame8 = class(TfmFilterValueDateFrame7)
  private
  protected
    function DefDate1: TDateTime; override;
    function DefDate2: TDateTime; override;
  public
  end;

var
  fmFilterValueDateFrame8: TfmFilterValueDateFrame8;

implementation

{$R *.DFM}

{ TfmFilterValueDateFrame8 }

function TfmFilterValueDateFrame8.DefDate1: TDateTime;
begin
  // прошлый мес€ц [лева€ граница] первый день мес€ца
  Result := IncMonth(inherited DefDate1, - 1);
end;

function TfmFilterValueDateFrame8.DefDate2: TDateTime;
begin
  // прошлый мес€ц [права€ граница] последний день мес€ца
  Result := IncMonth(inherited DefDate2, - 1);
end;

end.
