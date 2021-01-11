inherited F005_PeriodFilter: TF005_PeriodFilter
  inherited lbCaption: TLabel
    Width = 88
    Caption = 'Отчетный период'
  end
  object Label2: TLabel [2]
    Left = 149
    Top = 4
    Width = 9
    Height = 13
    Caption = 'c '
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'T055_LONG_NAME'
  end
  inherited lcb2: TRxDBLookupCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'T055_LONG_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T055_ID,'
      '         T055_LONG_NAME'
      'FROM     V_405_415_PERIODS'
      'where  T055_ID <= :PERIOD_TO'
      'ORDER BY T055_ID')
    Variables.Data = {
      03000000010000000A0000003A504552494F445F544F04000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
  end
  inherited odsList2: TOracleDataSet
    SQL.Strings = (
      'SELECT   T055_ID,'
      '         T055_LONG_NAME'
      'FROM     V_405_415_PERIODS'
      'where  T055_ID >= :PERIOD_FROM'
      'ORDER BY T055_ID')
    Variables.Data = {
      03000000010000000C0000003A504552494F445F46524F4D0400000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
  end
end
