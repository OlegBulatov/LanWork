unit xxxRegister;

interface

procedure Register;

implementation

uses xxxDBGrid, ColnEdit, DsgnIntf, Classes, xxxDBGridLookUp;

procedure Register;
begin
//  RegisterComponents('XXX', [TxxxDataSource]);

  RegisterComponents('XXX', [TxxxDBGrid]);

  RegisterComponents('XXX', [TxxxDBLookupComboBox]);

  (*
  RegisterPropertyEditor(
    TypeInfo(THeadersLines),
    TAdvSettings,
    'HeadersLines',
    TCollectionProperty
    );
  *)
end;

end.
