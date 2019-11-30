inherited fm19_NResidType: Tfm19_NResidType
  inherited Label1: TLabel
    Width = 87
    Caption = 'Тип нерезидента'
  end
  inherited Lookup01: TDBLookupComboBox
    KeyField = 'T034_ID'
    ListField = 'T034_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T034_ID,'
      '         T034_NAME'
      'FROM     V_NR_NREZID_TYPE'
      'ORDER BY T034_NAME')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033345F494401000000000009000000543033
      345F4E414D45010000000000}
    object odsListT034_ID: TFloatField
      FieldName = 'T034_ID'
      Required = True
    end
    object odsListT034_NAME: TStringField
      FieldName = 'T034_NAME'
      Required = True
      Size = 50
    end
  end
end
