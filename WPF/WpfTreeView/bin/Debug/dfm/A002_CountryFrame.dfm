inherited A002_Country: TA002_Country
  inherited lbCaption: TLabel
    Width = 36
    Caption = 'Страна'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 25
    LookupField = 'CO_ISO_DIG'
    LookupDisplay = 'NAME_LOOKUP'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  CO_ISO_DIG,'
      '  CO_NAME_SHOT,'
      '  NAME_LOOKUP'
      'FROM DS_BOP_BOSS.VS_BOP_COUNTRIES'
      'ORDER BY CO_ISO_DIG')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000A000000434F5F49534F5F4449470100000000000C000000
      434F5F4E414D455F53484F540100000000000B0000004E414D455F4C4F4F4B55
      50010000000000}
    object odsListCO_ISO_DIG: TFloatField
      DisplayWidth = 4
      FieldName = 'CO_ISO_DIG'
    end
    object odsListCO_NAME_SHOT: TStringField
      FieldName = 'CO_NAME_SHOT'
      Size = 250
    end
    object odsListNAME_LOOKUP: TStringField
      FieldName = 'NAME_LOOKUP'
      Size = 291
    end
  end
end
