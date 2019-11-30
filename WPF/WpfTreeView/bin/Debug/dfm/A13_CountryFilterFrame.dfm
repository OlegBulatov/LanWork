inherited A13_CountryFilter: TA13_CountryFilter
  inherited lcb: TxxxDBLookupCheckCombo
    EmptyValue = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'CO_ISO_DIG'
    LookupDisplay = 'CO_ID;CO_NAME'
  end
  inherited rb: TRadioButton
    Width = 69
    Caption = 'Страна'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select CO_ISO_DIG,'
      '       CO_ID,'
      '       CO_NAME_ONLY CO_NAME'
      'from V_410_COUNTRY'
      'order by CO_ISO_DIG')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000434F5F4E414D450100000000000A000000434F5F
      49534F5F44494701000000000005000000434F5F4944010000000000}
    object odsListCO_NAME: TStringField
      DisplayLabel = 'Название'
      FieldName = 'CO_NAME'
      Size = 255
    end
    object odsListCO_ISO_DIG: TFloatField
      FieldName = 'CO_ISO_DIG'
    end
    object odsListCO_ID: TStringField
      DisplayLabel = 'Код'
      FieldName = 'CO_ID'
      Size = 4
    end
  end
end
