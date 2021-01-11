unit fmFilterValueDate10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, DBCtrls, StdCtrls, ComCtrls, xxxDBGrid, fmFilterValueDate9;

type
  TfmFilterValueDateFrame10 = class(TfmFilterValueDateFrame9)
  private
  protected
    function DefDate1: TDateTime; override;
    function DefDate2: TDateTime; override;
  public
  end;

var
  fmFilterValueDateFrame10: TfmFilterValueDateFrame10;

implementation

{$R *.DFM}

{ TfmFilterValueDateFrame10 }

function TfmFilterValueDateFrame10.DefDate1: TDateTime;
begin
  // прошлый год [левая граница] первый день года
  Result := IncMonth(inherited DefDate1, - 12);
end;

function TfmFilterValueDateFrame10.DefDate2: TDateTime;
begin
  // прошлый год [правая граница] последний день года
  Result := IncMonth(inherited DefDate2, - 12);
end;

end.
