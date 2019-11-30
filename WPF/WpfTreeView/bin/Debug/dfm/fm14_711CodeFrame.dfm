inherited fm14_711Code: Tfm14_711Code
  inherited btnSelect: TSpeedButton
    Caption = 'Код владельца...'
  end
  inherited lcbSelect: TDBLookupComboBox
    KeyField = 'T053_ID'
    ListField = 'T053_NAME'
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'select T053_ID, T053_NAME from T053_711_CODE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035335F494401000000000009000000543035
      335F4E414D45010000000000}
    object odsSelectT053_ID: TFloatField
      FieldName = 'T053_ID'
      Required = True
    end
    object odsSelectT053_NAME: TStringField
      FieldName = 'T053_NAME'
      Required = True
      Size = 255
    end
  end
end
