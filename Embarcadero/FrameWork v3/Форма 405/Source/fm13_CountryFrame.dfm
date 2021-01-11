inherited fm13_Country: Tfm13_Country
  inherited btnSelect: TSpeedButton
    Caption = 'Страна...'
  end
  inherited lcbSelect: TDBLookupComboBox
    KeyField = 'SN015_ISO_DIG'
    ListField = 'COUNTRY_DESC'
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'SELECT * FROM '
      'V_405_GOS_LIST'
      'order by COUNTRY_DESC')
    QBEDefinition.QBEFieldDefs = {
      04000000040000000D000000534E3031355F49534F5F44494701000000000013
      000000534E3031355F46554C4C5F5255535F4E414D4501000000000014000000
      534E3031355F53484F52545F5255535F4E414D450100000000000C000000434F
      554E5452595F44455343010000000000}
    object odsSelectSN015_ISO_DIG: TFloatField
      FieldName = 'SN015_ISO_DIG'
    end
    object odsSelectSN015_FULL_RUS_NAME: TStringField
      FieldName = 'SN015_FULL_RUS_NAME'
      Size = 250
    end
    object odsSelectSN015_SHORT_RUS_NAME: TStringField
      FieldName = 'SN015_SHORT_RUS_NAME'
      Size = 250
    end
    object odsSelectCOUNTRY_DESC: TStringField
      FieldName = 'COUNTRY_DESC'
      Size = 293
    end
  end
end
