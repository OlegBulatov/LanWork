unit xxxDBGridLookUp;

interface

uses dbctrls, controls;

type
  TxxxDBLookupComboBox = class(TDBLookupComboBox)
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

implementation

uses
  Windows;

{ TxxxDBLookupComboBox }

procedure TxxxDBLookupComboBox.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style and not WS_BORDER;
end;

end.
