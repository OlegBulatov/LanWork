inherited A13_ItemsGroupFilter: TA13_ItemsGroupFilter
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownWidth = 300
    ListStyle = [lsSizeable]
    LookupField = 'T038_ID'
    LookupDisplay = 'T038_GROUP_NAME'
  end
  inherited rb: TRadioButton
    Width = 61
    Caption = 'Группа'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T038_ID,'
      '       T038_GROUP_NAME'
      'from   V_410_ITEM_GROUPS'
      'order by T038_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033385F49440100000000000F000000543033
      385F47524F55505F4E414D45010000000000}
    object odsListT038_ID: TFloatField
      FieldName = 'T038_ID'
    end
    object odsListT038_GROUP_NAME: TStringField
      FieldName = 'T038_GROUP_NAME'
      Size = 255
    end
  end
  inherited odsGroup: TOracleDataSet
    SQL.Strings = (
      'select T037_ID'
      'from   V_410_ITEM_LINKS'
      'where  T038_ID = :T038_ID')
    Variables.Data = {
      0300000001000000080000003A543033385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {040000000100000007000000543033375F4944010000000000}
    MasterFields = 'T038_ID'
    object odsGroupT037_ID: TFloatField
      FieldName = 'T037_ID'
      Required = True
    end
  end
end
