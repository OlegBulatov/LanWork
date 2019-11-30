inherited L001_PeriodFilter: TL001_PeriodFilter
  inherited lbCaption: TLabel
    Width = 133
    Caption = 'Отчетный период             с'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'T002_NUMB_IN_YEA_TEXT'
  end
  inherited lcb2: TRxDBLookupCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'T002_NUMB_IN_YEA_TEXT'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      #9'T002_NUMB_IN_YEA_TEXT'
      'FROM   V_405_NUMB_IN_YEA_DESC'
      'where  T055_ID <= :PERIOD_TO'
      'and    T055_ID >= 1978'
      'ORDER BY T002_NUMB_IN_YEA')
    Variables.Data = {
      03000000010000000A0000003A504552494F445F544F04000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F494401000000000015000000543030
      325F4E554D425F494E5F5945415F54455854010000000000}
  end
  inherited odsList2: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      '       T002_NUMB_IN_YEA_TEXT'
      'FROM   V_405_NUMB_IN_YEA_DESC'
      'where  T055_ID >= :PERIOD_FROM'
      'and    T055_ID >= 1978'
      'ORDER BY T002_NUMB_IN_YEA')
    Variables.Data = {
      03000000010000000C0000003A504552494F445F46524F4D0400000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F494401000000000015000000543030
      325F4E554D425F494E5F5945415F54455854010000000000}
  end
end
