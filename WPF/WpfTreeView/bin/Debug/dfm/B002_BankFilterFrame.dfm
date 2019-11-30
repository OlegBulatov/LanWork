inherited B002_BankFilter: TB002_BankFilter
  inherited lbCaption: TLabel
    Caption = 'Кред. организация'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    ListStyle = [lsSizeable]
    LookupField = 'REGN'
    LookupDisplay = 'REGN;BANK_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT DISTINCT REGN,'
      '       BANK_NAME'
      'FROM   V_711_BANC_BY_NUMB'
      'ORDER BY REGN')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000005245474E0100000000000900000042414E4B5F4E
      414D45010000000000}
    object odsListREGN: TStringField
      DisplayWidth = 5
      FieldName = 'REGN'
      Size = 9
    end
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 250
    end
  end
end
