unit SpeedButtonAl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons;

type
  TSpeedButtonAl = class(TSpeedButton)
  private
  protected
  public
  published
    property Align;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('R_Viewer', [TSpeedButtonAl]);
end;

end.
