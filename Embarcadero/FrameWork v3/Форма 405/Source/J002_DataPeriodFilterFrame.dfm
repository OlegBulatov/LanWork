inherited J002_DataPeriodFilter: TJ002_DataPeriodFilter
  inherited lbCaption: TLabel
    Width = 136
    Caption = 'Отчетный период              с'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'PERIOD_DESC'
  end
  inherited lcb2: TRxDBLookupCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'PERIOD_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T055_ID,'
      '         PERIOD_DESC'
      'FROM     V_405_417_DATA_PERIODS'
      'where    T055_ID <= :PERIOD_TO'
      'ORDER BY T055_ID')
    Variables.Data = {
      03000000010000000A0000003A504552494F445F544F04000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000B000000504552
      494F445F44455343010000000000}
  end
  inherited odsList2: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      '       PERIOD_DESC'
      'FROM   V_405_417_DATA_PERIODS'
      'where  T055_ID >= :PERIOD_FROM'
      'ORDER BY T055_ID')
    Variables.Data = {
      03000000010000000C0000003A504552494F445F46524F4D0400000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000B000000504552
      494F445F44455343010000000000}
  end
end
