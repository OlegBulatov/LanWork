unit ButtonAl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TButtonAl = class(TButton)
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
  RegisterComponents('R_Viewer', [TButtonAl]);
end;

end.
