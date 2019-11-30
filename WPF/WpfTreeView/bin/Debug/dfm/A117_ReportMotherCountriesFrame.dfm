inherited A117_ReportMothers: TA117_ReportMothers
  inherited lbCaption: TLabel
    Width = 106
    Caption = 'Материнская страна'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 25
    LookupField = 'T062_ID'
    LookupDisplay = 'NAME_BY_LEVEL'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T062_ID,'
      '       NAME_BY_LEVEL'
      'FROM   V_410_BOP_CNT_M_TREE'
      'WHERE  T068_ID = :T068_ID')
    Variables.Data = {
      0300000001000000080000003A543036385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543036325F49440100000000000D0000004E414D
      455F42595F4C4556454C010000000000}
    object odsListT062_ID: TFloatField
      FieldName = 'T062_ID'
    end
    object odsListNAME_BY_LEVEL: TStringField
      FieldName = 'NAME_BY_LEVEL'
      Size = 4000
    end
  end
end
