inherited K001_RecTypeFilter: TK001_RecTypeFilter
  inherited lbCaption: TLabel
    Width = 58
    Caption = 'Тип записи'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 5
    DisplayEmpty = 'Не выбрано'
    DisplaySelectAll = 'Все'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked]
    LookupField = 'REC_TYPE'
    LookupDisplay = 'REC_TYPE_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select REC_TYPE,'
      '       REC_TYPE_NAME'
      'from   V_405_REESTERS_REC_TYPES')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000080000005245435F545950450100000000000D0000005245
      435F545950455F4E414D45010000000000}
  end
end
