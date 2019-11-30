inherited A12_CountryFilter: TA12_CountryFilter
  inherited lbCaption: TLabel
    Width = 36
    Caption = 'Страна'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DisplayAllFields = True
    LookupField = 'CO_ID'
    LookupDisplay = 'CO_ID;CO_NAME_SHORT'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select CO_ISO_DIG,'
      '       CO_ID,'
      '       CO_NAME_SHORT'
      'from   V_404_COUNTRY'
      'order by CO_ISO_DIG')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000A000000434F5F49534F5F44494701000000000005000000
      434F5F49440100000000000D000000434F5F4E414D455F53484F525401000000
      0000}
    object odsListCO_ISO_DIG: TFloatField
      FieldName = 'CO_ISO_DIG'
    end
    object odsListCO_NAME_SHORT: TStringField
      FieldName = 'CO_NAME_SHORT'
      Size = 250
    end
    object odsListCO_ID: TFloatField
      FieldName = 'CO_ID'
    end
  end
end
