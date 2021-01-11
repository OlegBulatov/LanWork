inherited fm12_Currency: Tfm12_Currency
  inherited btnSelect: TSpeedButton
    Caption = 'Валюта...'
  end
  inherited lcbSelect: TDBLookupComboBox
    KeyField = 'ISO_ID'
    ListField = 'CURR_DESC'
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'select   ISO_ID, CURR_DESC'
      'from     V_405_CURRENCY'
      'order by ISO_ID')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000600000049534F5F49440100000000000900000043555252
      5F44455343010000000000}
    object odsSelectISO_ID: TStringField
      FieldName = 'ISO_ID'
      Size = 3
    end
    object odsSelectCURR_DESC: TStringField
      FieldName = 'CURR_DESC'
      Size = 106
    end
  end
end
