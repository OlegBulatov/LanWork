unit fmFilterValueDate6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmFilterValue, DBCtrls, StdCtrls, ComCtrls, xxxDBGrid, fmFilterValueDate5;

type
  TfmFilterValueDateFrame6 = class(TfmFilterValueDateFrame5)
  private
  protected
    function DefDate1: TDateTime; override;
    function DefDate2: TDateTime; override;
  public
  end;

var
  fmFilterValueDateFrame6: TfmFilterValueDateFrame6;

implementation

{$R *.DFM}

{ TfmFilterValueDateFrame6 }

function TfmFilterValueDateFrame6.DefDate1: TDateTime;
begin
  // прошлая неделя [правая граница] воскресеньем
  Result := inherited DefDate1 - 7;
end;

function TfmFilterValueDateFrame6.DefDate2: TDateTime;
begin
  // прошлая неделя [правая граница] воскресеньем
  Result := inherited DefDate2 - 7;
end;

end.
