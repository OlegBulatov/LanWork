inherited A002_err_filter: TA002_err_filter
  inherited lbCaption: TLabel
    Width = 79
    Caption = 'Ошибки сверки'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'ID'
    LookupDisplay = 'DESCR'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      'ID'#9#9#9', '
      'descr '#9#9
      'FROM v998_err_bloom')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000050000004445534352010000
      000000}
    object odsListID: TFloatField
      FieldName = 'ID'
    end
    object odsListDESCR: TStringField
      FieldName = 'DESCR'
      Size = 255
    end
  end
end
