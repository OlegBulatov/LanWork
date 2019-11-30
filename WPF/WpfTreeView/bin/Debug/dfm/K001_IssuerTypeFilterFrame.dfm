inherited K001_IssuerTypeFilter: TK001_IssuerTypeFilter
  inherited lbCaption: TLabel
    Width = 85
    Caption = 'Тип контрагента'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 6
    DisplayEmpty = 'Не выбрано'
    DisplaySelectAll = 'Все'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked]
    LookupField = 'T025_ID'
    LookupDisplay = 'T025_SHOT_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T025_ID,'
      '       T025_SHOT_NAME'
      'from   V_405_ISSUER_TYPE'
      'where  T025_ID < 1000')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032355F49440100000000000E000000543032
      355F53484F545F4E414D45010000000000}
  end
end
