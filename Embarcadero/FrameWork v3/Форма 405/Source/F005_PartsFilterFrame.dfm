inherited F005_PartsFilter: TF005_PartsFilter
  inherited lbCaption: TLabel
    Width = 37
    Caption = 'Раздел'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    ListStyle = [lsSizeable]
    LookupField = 'PART_ID'
    LookupDisplay = 'PART_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT PART_ID,'
      '       PART_NAME'
      'FROM   V_405_415_PARTS')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000504152545F494401000000000009000000504152
      545F4E414D45010000000000}
    object odsListPART_ID: TFloatField
      FieldName = 'PART_ID'
    end
    object odsListPART_NAME: TStringField
      FieldName = 'PART_NAME'
      Size = 12
    end
  end
end
