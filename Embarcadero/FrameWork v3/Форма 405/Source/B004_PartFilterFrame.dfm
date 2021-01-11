inherited B004_PartFilter: TB004_PartFilter
  inherited lbCaption: TLabel
    Width = 37
    Caption = 'Раздел'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'PART_ID'
    LookupDisplay = 'PART_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select PART_ID,'
      '       PART_NAME'
      'FROM   V_711_PARTS'
      'ORDER BY PART_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000504152545F494401000000000009000000504152
      545F4E414D45010000000000}
    object odsListPART_ID: TFloatField
      FieldName = 'PART_ID'
    end
    object odsListPART_NAME: TStringField
      FieldName = 'PART_NAME'
      Size = 10
    end
  end
end
