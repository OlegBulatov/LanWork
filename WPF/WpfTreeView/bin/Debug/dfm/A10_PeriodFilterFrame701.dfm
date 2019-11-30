inherited A10_PeriodFilter_701: TA10_PeriodFilter_701
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
      'from   DPB_701_BOSS.V_701_DATA_PERIODS'
      'where  T055_ID <= :PERIOD_TO')
    Variables.Data = {
      03000000010000000A0000003A504552494F445F544F04000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000B000000504552
      494F445F46524F4D010000000000}
  end
  inherited odsList2: TOracleDataSet
    SQL.Strings = (
      'select T055_ID,'
      '       PERIOD_TO'
      'from   DPB_701_BOSS.V_701_DATA_PERIODS'
      'where  T055_ID >= :PERIOD_FROM')
    Variables.Data = {
      03000000010000000C0000003A504552494F445F46524F4D0400000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F494401000000000009000000504552
      494F445F544F010000000000}
  end
end
