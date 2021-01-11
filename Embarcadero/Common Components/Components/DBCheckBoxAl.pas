unit DBCheckBoxAl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls;

type
  TDBCheckBoxAl = class(TDBCheckBox)
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
  RegisterComponents('R_Viewer', [TDBCheckBoxAl]);
end;

end.
