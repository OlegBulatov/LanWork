unit BitBtnAl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TBitBtnAl = class(TBitBtn)
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
  RegisterComponents('R_Viewer', [TBitBtnAl]);
end;

end.
