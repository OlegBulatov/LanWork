inherited A14_CountriesDef: TA14_CountriesDef
  inherited lbCaption: TLabel
    Left = 8
    Width = 36
    Caption = 'Страна'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 98
    DropDownCount = 25
    LookupField = 'REG_ID'
    LookupDisplay = 'REG_LONG_NAME'
  end
  inherited cb: TCheckBox
    Left = 352
    Enabled = False
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  REG_ID,'
      '  REG_NAME,'
      '  REG_LONG_NAME'
      'FROM DS_BOP_BOSS.VS_BOP_COUNTRIES_DEF'
      'ORDER BY REG_GROUP_POS,'
      '  REG_ID'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000060000005245475F4944010000000000080000005245475F
      4E414D450100000000000D0000005245475F4C4F4E475F4E414D450100000000
      00}
    object odsListREG_ID: TFloatField
      FieldName = 'REG_ID'
    end
    object odsListREG_NAME: TStringField
      FieldName = 'REG_NAME'
      Size = 40
    end
    object odsListREG_LONG_NAME: TStringField
      FieldName = 'REG_LONG_NAME'
      Size = 256
    end
  end
end
