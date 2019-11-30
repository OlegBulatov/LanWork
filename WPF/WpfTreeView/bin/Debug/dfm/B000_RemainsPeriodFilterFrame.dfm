inherited B000_RemainsPeriodFilter: TB000_RemainsPeriodFilter
  inherited lbCaption: TLabel
    Width = 100
    Caption = 'ќстатки на даты   с'
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
      'SELECT  T055_ID,'
      #9' T002_NUMB_IN_YEA_TEXT'
      'FROM    V_405_DBF_711_NUMB_IN_YEA_DESC'
      'WHERE   T055_ID <= :PERIOD_TO'
      'ORDER BY T055_ID')
    Variables.Data = {
      03000000010000000A0000003A504552494F445F544F04000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F494401000000000015000000543030
      325F4E554D425F494E5F5945415F54455854010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT002_NUMB_IN_YEA_TEXT: TStringField
      FieldName = 'T002_NUMB_IN_YEA_TEXT'
      Size = 10
    end
  end
  inherited odsList2: TOracleDataSet
    SQL.Strings = (
      'SELECT  T055_ID,'
      #9' T002_NUMB_IN_YEA_TEXT'
      'FROM    V_405_DBF_711_NUMB_IN_YEA_DESC'
      'WHERE   T055_ID >= :PERIOD_FROM'
      'ORDER BY T055_ID')
    Variables.Data = {
      03000000010000000C0000003A504552494F445F46524F4D0400000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F494401000000000015000000543030
      325F4E554D425F494E5F5945415F54455854010000000000}
    object odsList2T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsList2T002_NUMB_IN_YEA_TEXT: TStringField
      FieldName = 'T002_NUMB_IN_YEA_TEXT'
      Size = 10
    end
  end
end
