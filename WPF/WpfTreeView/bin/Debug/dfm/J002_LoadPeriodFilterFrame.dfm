inherited J002_LoadPeriodFilter: TJ002_LoadPeriodFilter
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'NUMB_IN_YEA_DESC'
  end
  inherited lcb2: TRxDBLookupCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'NUMB_IN_YEA_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      #9'NUMB_IN_YEA_DESC'
      'FROM   V_405_417_GCI_DATA_PERIODS'
      'where  T055_ID <= :PERIOD_TO')
    Variables.Data = {
      03000000010000000A0000003A504552494F445F544F04000000000000000000
      0000}
  end
  inherited odsList2: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      #9'NUMB_IN_YEA_DESC'
      'FROM   V_405_417_GCI_DATA_PERIODS'
      'where  T055_ID >= :PERIOD_FROM')
    Variables.Data = {
      03000000010000000C0000003A504552494F445F46524F4D0400000000000000
      00000000}
  end
end
