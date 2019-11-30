inherited A003_Users: TA003_Users
  inherited lbCaption: TLabel
    Width = 79
    Caption = 'Ответственный'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T203_LOGIN'
    LookupDisplay = 'T203_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T203_ID,T203_NAME, T203_LOGIN'
      'FROM DS_BOP_BOSS.VS_BOP_USERS'
      'ORDER BY T203_NAME')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543230335F494401000000000009000000543230
      335F4E414D450100000000000A000000543230335F4C4F47494E010000000000}
    object odsListT203_ID: TFloatField
      FieldName = 'T203_ID'
    end
    object odsListT203_NAME: TStringField
      FieldName = 'T203_NAME'
      Size = 255
    end
    object odsListT203_LOGIN: TStringField
      FieldName = 'T203_LOGIN'
      Size = 10
    end
  end
end
