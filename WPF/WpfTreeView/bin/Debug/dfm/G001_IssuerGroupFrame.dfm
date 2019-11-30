inherited G001_IssuerGroup: TG001_IssuerGroup
  inherited lbCaption: TLabel
    Width = 92
    Caption = 'Группа эмитентов'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    ListStyle = [lsSizeable]
    LookupField = 'T042_ID'
    LookupDisplay = 'T042_SHORT_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T042_ID,'
      '  T042_SHORT_NAME'
      'FROM V_405_IIPS_ISSUER_GROUP'
      '--ORDER BY T042_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543034325F49440100000000000F000000543034
      325F53484F52545F4E414D45010000000000}
    object odsListT042_ID: TFloatField
      FieldName = 'T042_ID'
    end
    object odsListT042_SHORT_NAME: TStringField
      FieldName = 'T042_SHORT_NAME'
      Size = 255
    end
  end
end
