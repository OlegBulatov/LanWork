inherited B000_PeriodFilter: TB000_PeriodFilter
  inherited lbCaption: TLabel
    Width = 100
    Caption = 'Отчетный период  с'
  end
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
      'FROM   V_405_711_NUMB_IN_YEA_DESC'
      'where  T055_ID <= :PERIOD_TO')
    Variables.Data = {
      03000000010000000A0000003A504552494F445F544F04000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543035355F49440100000000000B0000004E554D
      425F494E5F594541010000000000100000004E554D425F494E5F5945415F4445
      5343010000000000}
  end
  inherited odsList2: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      #9'NUMB_IN_YEA_DESC'
      'FROM   V_405_711_NUMB_IN_YEA_DESC'
      'where  T055_ID >= :PERIOD_FROM')
    Variables.Data = {
      03000000010000000C0000003A504552494F445F46524F4D0400000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543035355F49440100000000000B0000004E554D
      425F494E5F594541010000000000100000004E554D425F494E5F5945415F4445
      5343010000000000}
  end
end
