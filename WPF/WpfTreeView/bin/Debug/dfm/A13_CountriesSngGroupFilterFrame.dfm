inherited A13_CountriesSngGroupFilter: TA13_CountriesSngGroupFilter
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 3
    DisplayAllFields = True
    LookupField = 'CO_GROUP'
    LookupDisplay = 'CO_GROUP_NAME'
  end
  inherited rb: TRadioButton
    Width = 81
    Caption = 'ÄÇ/ÑÍÃ'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select CO_GROUP,'
      '       CO_GROUP_NAME'
      'from   V_410_COUNTRIES_SNG')
    QBEDefinition.QBEFieldDefs = {
      040000000200000008000000434F5F47524F55500100000000000D000000434F
      5F47524F55505F4E414D45010000000000}
  end
end
