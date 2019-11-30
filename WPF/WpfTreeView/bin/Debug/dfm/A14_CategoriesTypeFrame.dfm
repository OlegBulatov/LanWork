inherited A14_CategoriesType: TA14_CategoriesType
  inherited lbCaption: TLabel
    Left = 8
    Width = 74
    Caption = 'Тип категории'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 98
    DropDownCount = 3
    LookupField = 'T100_TYPE'
    LookupDisplay = 'T100_TYPE_DESC'
  end
  inherited cb: TCheckBox
    Left = 350
    Enabled = False
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T100_TYPE,'
      '  T100_TYPE_DESC'
      'FROM  DS_BOP_BOSS.VS_BOP_T100_TYPE_DESC'
      'ORDER BY T100_TYPE_DESC'
      '  ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000009000000543130305F545950450100000000000E00000054
      3130305F545950455F44455343010000000000}
    object odsListT100_TYPE: TStringField
      FieldName = 'T100_TYPE'
      Size = 1
    end
    object odsListT100_TYPE_DESC: TStringField
      FieldName = 'T100_TYPE_DESC'
      Size = 15
    end
  end
end
