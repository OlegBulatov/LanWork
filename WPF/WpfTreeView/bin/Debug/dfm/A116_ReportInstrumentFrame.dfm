inherited A116_ReportInstrument: TA116_ReportInstrument
  inherited lbCaption: TLabel
    Width = 87
    Caption = 'Инструмент БМР'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 9
    LookupField = 'T072_ID'
    LookupDisplay = 'NAME_BY_LEVEL'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T072_ID,'
      '       NAME_BY_LEVEL'
      'from   V_410_BOP_INSTR_TREE'
      'where  T070_ID = :T070_ID')
    Variables.Data = {
      0300000001000000080000003A543037305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543037325F49440100000000000D0000004E414D
      455F42595F4C4556454C010000000000}
    object odsListT072_ID: TFloatField
      FieldName = 'T072_ID'
    end
    object odsListNAME_BY_LEVEL: TStringField
      FieldName = 'NAME_BY_LEVEL'
      Size = 4000
    end
  end
end
