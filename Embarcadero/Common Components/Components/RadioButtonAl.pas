unit RadioButtonAl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TRadioButtonAl = class(TRadioButton)
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
  RegisterComponents('R_Viewer', [TRadioButtonAl]);
end;

end.
