inherited A10_BankFilter: TA10_BankFilter
  inherited lbCaption: TLabel
    Width = 74
    Caption = 'Рег. номер КО'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'REGN'
    LookupDisplay = 'REGN_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select REGN,'
      '       TRANSLATE(REGN_NAME, '#39')('#39', '#39' '#39') REGN_NAME'
      'from   V_410_BANKS'
      'order by REGN')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000005245474E010000000000090000005245474E5F4E
      414D45010000000000}
    object odsListREGN: TStringField
      FieldName = 'REGN'
      Size = 9
    end
    object odsListREGN_NAME: TStringField
      FieldName = 'REGN_NAME'
      Size = 57
    end
  end
end
