inherited A12_ItemTypeFilter: TA12_ItemTypeFilter
  Width = 512
  inherited lbCaption: TLabel
    Width = 81
    Caption = 'Тип показателя'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Width = 351
    DropDownCount = 3
    LookupField = 'ITEM_TYPE'
    LookupDisplay = 'ITEM_TYPE_NAME'
  end
  inherited cb: TCheckBox
    Checked = False
    State = cbUnchecked
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select ITEM_TYPE,'
      '       ITEM_TYPE_NAME'
      'from V_410_FORM_ITEM_TYPES')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000090000004954454D5F545950450100000000000E00000049
      54454D5F545950455F4E414D45010000000000}
    object odsListITEM_TYPE: TStringField
      FieldName = 'ITEM_TYPE'
      Size = 1
    end
    object odsListITEM_TYPE_NAME: TStringField
      FieldName = 'ITEM_TYPE_NAME'
      Size = 7
    end
  end
end
