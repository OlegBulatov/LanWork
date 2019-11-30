inherited J002_KontrTypeFilter: TJ002_KontrTypeFilter
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 10
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'T195_TYPE_CODE'
    LookupDisplay = 'T195_TYPE_CODE;T195_TYPE'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T195_TYPE_CODE,'
      '       T195_TYPE'
      'from   V_405_417_CLIENT_TYPES')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000E000000543139355F545950455F434F4445010000000000
      09000000543139355F54595045010000000000}
  end
end
