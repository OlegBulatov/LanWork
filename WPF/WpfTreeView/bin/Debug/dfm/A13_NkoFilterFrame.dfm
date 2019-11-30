inherited A13_NkoFilter: TA13_NkoFilter
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 3
    DropDownWidth = 640
    DisplayAllFields = True
    LookupField = 'NKO_ID'
    LookupDisplay = 'NKO_NAME'
  end
  inherited rb: TRadioButton
    Width = 81
    Caption = ' Œ/Õ Œ'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   NKO_ID,'
      '         NKO_NAME'
      'FROM     V_410_COUNTRY_NKO'
      'ORDER BY NKO_ID'
      '  ')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000060000004E4B4F5F4944010000000000080000004E4B4F5F
      4E414D45010000000000}
    object odsListNKO_ID: TFloatField
      FieldName = 'NKO_ID'
    end
    object odsListNKO_NAME: TStringField
      FieldName = 'NKO_NAME'
      Size = 3
    end
  end
end
