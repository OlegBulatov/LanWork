inherited A001_Categories: TA001_Categories
  inherited lbCaption: TLabel
    Width = 53
    Caption = 'Категория'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 88
    Width = 289
    DropDownCount = 25
    LookupField = 'T100_ID'
    LookupDisplay = 'T100_HIERARCHY_NAME;T203_NAME'
  end
  inherited cb: TCheckBox
    Enabled = False
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'begin'
      
        '  :c_tmp := PK_BOP_CATEGORIES.f_get_categories_by_user(:i_T203_L' +
        'OGIN);'
      'end;')
    Variables.Data = {
      0300000002000000060000003A435F544D507400000000000000000000000D00
      00003A495F543230335F4C4F47494E050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543130305F494401000000000013000000543130
      305F4849455241524348595F4E414D4501000000000009000000543230335F4E
      414D450100000000000A000000543230335F4C4F47494E0100000000000F0000
      00543130305F444953504C5F4E414D4501000000000009000000543130305F54
      595045010000000000}
    object odsListT100_HIERARCHY_NAME: TStringField
      DisplayWidth = 43
      FieldName = 'T100_HIERARCHY_NAME'
      Size = 4000
    end
    object odsListT100_ID: TFloatField
      FieldName = 'T100_ID'
    end
    object odsListT203_NAME: TStringField
      FieldName = 'T203_NAME'
      Size = 255
    end
    object odsListT203_LOGIN: TStringField
      FieldName = 'T203_LOGIN'
      Size = 10
    end
    object odsListT100_DISPL_NAME: TStringField
      FieldName = 'T100_DISPL_NAME'
      Size = 128
    end
    object odsListT100_TYPE: TStringField
      FieldName = 'T100_TYPE'
      Size = 1
    end
  end
end
