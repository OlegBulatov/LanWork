inherited A13_SectorFilter: TA13_SectorFilter
  inherited lbCaption: TLabel
    Width = 36
    Caption = 'Сектор'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 10
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    LookupField = 'T036_ID'
    LookupDisplay = 'T036_CODE;T036_NAME'
  end
  inherited cb: TCheckBox
    Checked = False
    State = cbUnchecked
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T036_ID,'
      '       T036_CODE,'
      '       T036_NAME'
      'from V_410_SECTORS'
      '--where  T036_ID > 0'
      'order by T036_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543033365F49440100000000000E000000543033
      365F46554C4C5F4E414D4501000000000009000000543033365F434F44450100
      0000000009000000543033365F4E414D45010000000000}
  end
end
