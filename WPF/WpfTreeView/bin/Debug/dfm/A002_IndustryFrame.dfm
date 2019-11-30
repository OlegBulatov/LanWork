inherited A002_Industry: TA002_Industry
  inherited lbCaption: TLabel
    Width = 43
    Caption = 'Отрасль'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 25
    LookupField = 'T112_GROUP_LETTER'
    LookupDisplay = 'NAME_LOOKUP'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  T112_ID,'
      '  T112_GROUP_LETTER,'
      '  T112_GROUP_NAME,'
      '  NAME_LOOKUP'
      'FROM DS_BOP_BOSS.VS_BOP_INDUSTRY'
      'ORDER BY T112_GROUP_LETTER')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543131325F494401000000000011000000543131
      325F47524F55505F4C45545445520100000000000F000000543131325F47524F
      55505F4E414D450100000000000B0000004E414D455F4C4F4F4B555001000000
      0000}
    object odsListT112_ID: TFloatField
      FieldName = 'T112_ID'
    end
    object odsListT112_GROUP_LETTER: TStringField
      DisplayWidth = 4
      FieldName = 'T112_GROUP_LETTER'
      Size = 3
    end
    object odsListT112_GROUP_NAME: TStringField
      FieldName = 'T112_GROUP_NAME'
      Size = 255
    end
    object odsListNAME_LOOKUP: TStringField
      FieldName = 'NAME_LOOKUP'
      Size = 259
    end
  end
end
