inherited fm39_CurrFilter: Tfm39_CurrFilter
  inherited Label1: TLabel
    Width = 38
    Caption = 'Валюта'
  end
  inherited Lookup01: TxxxDBLookupCheckCombo
    LookupField = 'ISO_ID'
    LookupDisplay = 'CURR_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT ISO_ID, CURR_DESC'
      'FROM V_405_CURRENCY_FILTER')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000600000049534F5F49440100000000000900000043555252
      5F44455343010000000000}
    object odsListISO_ID: TStringField
      FieldName = 'ISO_ID'
      Size = 3
    end
    object odsListCURR_DESC: TStringField
      FieldName = 'CURR_DESC'
      Size = 106
    end
  end
end
