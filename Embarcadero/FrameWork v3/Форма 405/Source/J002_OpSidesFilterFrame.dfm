inherited J002_OpSidesFilter: TJ002_OpSidesFilter
  inherited lbCaption: TLabel
    Width = 83
    Caption = 'Стороны сделки'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 5
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'OP_SIDE_ID'
    LookupDisplay = 'OP_SIDE_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT OP_SIDE_ID,'
      '       OP_SIDE_DESC'
      'FROM   V_405_417_OP_SIDES')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000A0000004F505F534944455F49440100000000000C000000
      4F505F534944455F44455343010000000000}
  end
end
