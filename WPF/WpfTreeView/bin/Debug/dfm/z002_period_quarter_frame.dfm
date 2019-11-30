inherited z002_period_quarter: Tz002_period_quarter
  Height = 26
  inherited lbCaption: TLabel
    Width = 88
    Caption = 'Выбрать квартал'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'T055_LONG_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select a055_ID as T055_ID,'
      '       T055_LONG_NAME'
      'from  v_t055_q'
      'order by a055_ID desc'#9)
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
  end
end
