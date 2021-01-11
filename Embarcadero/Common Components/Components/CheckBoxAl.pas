unit CheckBoxAl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TCheckBoxAl = class(TCheckBox)
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
  RegisterComponents('R_Viewer', [TCheckBoxAl]);
end;

end.
