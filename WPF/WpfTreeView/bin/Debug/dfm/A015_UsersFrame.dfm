inherited A015_Users: TA015_Users
  inherited lbCaption: TLabel
    Left = 8
    Width = 79
    Caption = 'Ответственный'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 98
    LookupField = 'T203_ID'
    LookupDisplay = 'T203_NAME'
  end
  inherited cb: TCheckBox
    Left = 350
    Enabled = False
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T203_ID,T203_NAME'
      'FROM DS_BOP_BOSS.VS_BOP_USERS'
      'ORDER BY T203_NAME')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543230335F494401000000000009000000543230
      335F4E414D45010000000000}
    object odsListT203_ID: TFloatField
      FieldName = 'T203_ID'
    end
    object odsListT203_NAME: TStringField
      FieldName = 'T203_NAME'
      Size = 255
    end
  end
end
