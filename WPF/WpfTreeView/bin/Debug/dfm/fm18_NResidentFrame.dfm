inherited fm18_NResident: Tfm18_NResident
  inherited Label1: TLabel
    Width = 61
    Caption = 'Нерезидент'
  end
  inherited Lookup01: TDBLookupComboBox
    KeyField = 'M029_ID'
    ListField = 'T028_SHOT_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT M029_ID,'
      '             T028_SHOT_NAME'
      'FROM   V_NR_REINVEST_NRESIDENT'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000E000000543032385F53484F545F4E414D45010000000000
      070000004D3035325F4944010000000000}
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListM029_ID: TFloatField
      FieldName = 'M029_ID'
      Required = True
    end
  end
end
