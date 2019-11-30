inherited A14_Source: TA14_Source
  inherited lbCaption: TLabel
    Left = 8
    Width = 88
    Caption = 'Источник данных'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 98
    LookupField = 'T204_ID'
    LookupDisplay = 'T204_NAME'
  end
  inherited cb: TCheckBox
    Left = 328
    Enabled = False
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      '  SELECT T204_ID,'
      '         T204_NAME,'
      '         T204_DESC'
      'FROM  DS_BOP_BOSS.VS_BOP_SOURCES'
      'ORDER BY T204_NAME')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543230345F494401000000000009000000543230
      345F4E414D4501000000000009000000543230345F44455343010000000000}
    object odsListT204_ID: TFloatField
      FieldName = 'T204_ID'
    end
    object odsListT204_NAME: TStringField
      FieldName = 'T204_NAME'
      Size = 25
    end
    object odsListT204_DESC: TStringField
      FieldName = 'T204_DESC'
      Size = 255
    end
  end
end
