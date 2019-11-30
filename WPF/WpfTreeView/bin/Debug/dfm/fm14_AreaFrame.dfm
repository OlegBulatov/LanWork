inherited fm14_Area: Tfm14_Area
  inherited Label1: TLabel
    Width = 43
    Caption = 'Область'
  end
  inherited Lookup01: TDBLookupComboBox
    KeyField = 'AREA_ID'
    ListField = 'AREA_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT AREA_ID,'
      '             AREA_NAME'
      'FROM   V_NR_AREA_LIST')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000415245415F494401000000000009000000415245
      415F4E414D45010000000000}
    object odsListAREA_ID: TFloatField
      FieldName = 'AREA_ID'
    end
    object odsListAREA_NAME: TStringField
      FieldName = 'AREA_NAME'
      Size = 24
    end
  end
end
