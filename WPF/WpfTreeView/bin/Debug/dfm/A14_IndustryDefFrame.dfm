inherited A14_IndustryDef: TA14_IndustryDef
  inherited lbCaption: TLabel
    Left = 8
    Width = 43
    Caption = 'Отрасль'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 98
    DropDownCount = 25
    LookupField = 'IND_ID'
    LookupDisplay = 'IND_LONG_NAME'
  end
  inherited cb: TCheckBox
    Left = 344
    Enabled = False
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   IND_ID,'
      '         IND_NAME,'
      '         IND_LONG_NAME'
      'FROM     DS_BOP_BOSS.VS_BOP_INDUSTRY_DEF'
      'ORDER BY IND_GROUP_POS,'
      '         IND_LONG_NAME')
    QBEDefinition.QBEFieldDefs = {
      040000000300000006000000494E445F494401000000000008000000494E445F
      4E414D450100000000000D000000494E445F4C4F4E475F4E414D450100000000
      00}
    object odsListIND_ID: TStringField
      FieldName = 'IND_ID'
      Size = 4
    end
    object odsListIND_NAME: TStringField
      FieldName = 'IND_NAME'
      Size = 3
    end
    object odsListIND_LONG_NAME: TStringField
      FieldName = 'IND_LONG_NAME'
      Size = 261
    end
  end
end
