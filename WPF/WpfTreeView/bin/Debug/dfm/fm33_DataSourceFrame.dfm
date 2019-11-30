inherited fm33_DataSource: Tfm33_DataSource
  inherited Label1: TLabel
    Width = 88
    Caption = 'Итсочник данных'
  end
  inherited Lookup01: TDBLookupComboBox
    Left = 120
    Width = 235
    DataField = 'M031_ID'
    KeyField = 'M031_ID'
    ListField = 'M031_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT M031_ID,'
      ' M031_NAME'
      'FROM V_NR_DATA_SOURCE'
      'ORDER BY UPPER(M031_NAME)')
    QBEDefinition.QBEFieldDefs = {
      0300000002000000070000004D3033315F49440100000000090000004D303331
      5F4E414D450100000000}
    object odsListM031_ID: TFloatField
      FieldName = 'M031_ID'
      Required = True
    end
    object odsListM031_NAME: TStringField
      FieldName = 'M031_NAME'
      Required = True
      Size = 50
    end
  end
end
