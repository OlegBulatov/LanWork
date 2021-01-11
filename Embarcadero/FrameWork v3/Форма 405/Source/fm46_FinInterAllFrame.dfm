inherited fm46_FinInterAll: Tfm46_FinInterAll
  inherited Label1: TLabel
    Width = 42
    Caption = '“ип орг.'
  end
  inherited Lookup01: TxxxDBLookupCheckCombo
    DropDownCount = 4
    LookupField = 'FI_TYPE_ID'
    LookupDisplay = 'FI_TYPE_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT FI_TYPE_ID, FI_TYPE_NAME'
      'FROM   V_405_FIN_INTER_TYPE_LIST'
      'ORDER BY FI_TYPE_ID')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000A00000046495F545950455F49440100000000000C000000
      46495F545950455F4E414D45010000000000}
    object odsListFI_TYPE_ID: TFloatField
      FieldName = 'FI_TYPE_ID'
    end
    object odsListFI_TYPE_NAME: TStringField
      FieldName = 'FI_TYPE_NAME'
      Size = 255
    end
  end
end
