inherited A13_CurrencyFilter: TA13_CurrencyFilter
  inherited lbCaption: TLabel
    Width = 38
    Caption = 'Валюта'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 9
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clRed
    LookupField = 'ISO_ID'
    LookupDisplay = 'ISO_ID;NAME_RUSH'
  end
  inherited cb: TCheckBox
    Checked = False
    State = cbUnchecked
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select ISO_ID,'
      '       NAME_RUSH'
      'FROM   V_410_CURRENCY_LOCAL'
      'ORDER BY ISO_ID')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000600000049534F5F49440100000000000900000043555252
      5F44455343010000000000}
  end
end
