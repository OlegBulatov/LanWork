inherited A14_CategoriesFlag: TA14_CategoriesFlag
  inherited lbCaption: TLabel
    Left = 8
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 98
    DropDownCount = 2
    LookupField = 'T100_FLAG_ID'
    LookupDisplay = 'T100_FLAG_LONG_NAME'
  end
  inherited cb: TCheckBox
    Left = 352
    Enabled = False
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  T100_FLAG_ID,'
      '  T100_FLAG_NAME,'
      '  T100_FLAG_LONG_NAME'
      'FROM DS_BOP_BOSS.VS_BOP_T100_FLAG_DESC'
      'ORDER BY T100_FLAG_ID DESC')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000C000000543130305F464C41475F49440100000000000E00
      0000543130305F464C41475F4E414D4501000000000013000000543130305F46
      4C41475F4C4F4E475F4E414D45010000000000}
    object odsListT100_FLAG_ID: TStringField
      FieldName = 'T100_FLAG_ID'
      Size = 1
    end
    object odsListT100_FLAG_NAME: TStringField
      FieldName = 'T100_FLAG_NAME'
      Size = 1
    end
    object odsListT100_FLAG_LONG_NAME: TStringField
      FieldName = 'T100_FLAG_LONG_NAME'
      Size = 22
    end
  end
end
