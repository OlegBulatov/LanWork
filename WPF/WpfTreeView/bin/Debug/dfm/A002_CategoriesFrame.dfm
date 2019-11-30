inherited A002_Categories: TA002_Categories
  inherited lbCaption: TLabel
    Width = 53
    Caption = 'Категория'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 88
    Width = 289
    DropDownCount = 25
    LookupField = 'T100_ID'
    LookupDisplay = 'T100_HIERARCHY_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  T100_ID,'
      '  T100_HIERARCHY_NAME'
      'FROM  '
      ' DS_BOP_BOSS.VS_BOP_CATEGORIES')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543130305F494401000000000013000000543130
      305F4849455241524348595F4E414D45010000000000}
    object odsListT100_HIERARCHY_NAME: TStringField
      FieldName = 'T100_HIERARCHY_NAME'
      Size = 4000
    end
    object odsListT100_ID: TFloatField
      FieldName = 'T100_ID'
    end
  end
end
