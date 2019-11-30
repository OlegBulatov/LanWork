inherited A13_BanksGroupFilter: TA13_BanksGroupFilter
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownWidth = 300
    ListStyle = [lsSizeable]
    LookupField = 'T030_ID'
    LookupDisplay = 'T030_GROUP_NAME'
  end
  inherited rb: TRadioButton
    Width = 65
    Caption = 'Группа'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T030_ID,'
      '       T030_GROUP_NAME'
      'from V_410_BANK_GROUPS'
      'order by T030_GROUP_NAME')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033305F49440100000000000F000000543033
      305F47524F55505F4E414D45010000000000}
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT030_GROUP_NAME: TStringField
      FieldName = 'T030_GROUP_NAME'
      Size = 255
    end
  end
  inherited odsGroup: TOracleDataSet
    SQL.Strings = (
      'select REGN'
      'from   V_410_BANK_LINKS'
      'where  T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    MasterFields = 'T030_ID'
  end
end
