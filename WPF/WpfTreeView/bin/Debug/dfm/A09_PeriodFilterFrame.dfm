inherited A09_PeriodFilter: TA09_PeriodFilter
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'PERIOD_FROM'
  end
  inherited lcb2: TRxDBLookupCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'PERIOD_TO'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T055_ID,'
      '       PERIOD_FROM'
      'from   V_410_DATA_PERIODS'
      'where  T055_ID <= :PERIOD_TO')
    Variables.Data = {
      03000000010000000A0000003A504552494F445F544F03000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000B000000504552
      494F445F46524F4D010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListPERIOD_FROM: TStringField
      FieldName = 'PERIOD_FROM'
      Size = 54
    end
  end
  inherited odsList2: TOracleDataSet
    SQL.Strings = (
      'select T055_ID,'
      '       PERIOD_TO'
      'from   V_410_DATA_PERIODS'
      'where  T055_ID >= :PERIOD_FROM')
    Variables.Data = {
      03000000010000000C0000003A504552494F445F46524F4D0400000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F494401000000000009000000504552
      494F445F544F010000000000}
    object odsList2T055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsList2PERIOD_TO: TStringField
      FieldName = 'PERIOD_TO'
      Size = 54
    end
  end
end
