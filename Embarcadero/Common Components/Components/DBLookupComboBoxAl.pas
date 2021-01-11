unit DBLookupComboBoxAl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls;

type
  TDBLookupComboBoxAl = class(TDBLookupComboBox)
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
  RegisterComponents('R_Viewer', [TDBLookupComboBoxAl]);
end;

end.
