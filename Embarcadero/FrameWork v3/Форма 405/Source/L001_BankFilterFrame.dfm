inherited L001_BankFilter: TL001_BankFilter
  inherited lbCaption: TLabel
    Caption = 'Кред. организация'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 10
    ListStyle = [lsSizeable]
    LookupField = 'REGN'
    LookupDisplay = 'NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT DISTINCT REGN,'
      '       NAME'
      'FROM   V_405_BANC_BY_NUMB'
      'ORDER BY REGN')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000005245474E010000000000040000004E414D450100
      00000000}
  end
end
