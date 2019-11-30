inherited F005_LinksPeriodFilter: TF005_LinksPeriodFilter
  inherited lbCaption: TLabel
    Width = 82
    Caption = 'Остатки на дату'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'PERIOD_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T055_ID,'
      '         PERIOD_DESC'
      'FROM     V_405_415_DATA_PERIODS'
      'ORDER BY T055_ID DESC')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000B000000504552
      494F445F44455343010000000000}
  end
end
