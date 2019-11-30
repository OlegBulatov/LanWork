inherited E001_IssuerGroup: TE001_IssuerGroup
  inherited lbCaption: TLabel
    Width = 92
    Caption = 'Группа эмитентов'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T042_ID'
    LookupDisplay = 'T042_SHORT_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T042_ID,'
      '       T042_SHORT_NAME'
      'FROM   V_405_IIPS_ISSUER_GROUP_NEW')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543034325F49440100000000000F000000543034
      325F53484F52545F4E414D45010000000000}
    object odsListT042_ID: TFloatField
      FieldName = 'T042_ID'
    end
    object odsListT042_SHORT_NAME: TStringField
      FieldName = 'T042_SHORT_NAME'
      Size = 30
    end
  end
end
