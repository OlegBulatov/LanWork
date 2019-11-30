inherited A13_CountriesGroupFilter: TA13_CountriesGroupFilter
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownWidth = 300
    ListStyle = [lsSizeable]
    LookupField = 'T033_ID'
    LookupDisplay = 'T033_GROUP_NAME'
  end
  inherited rb: TRadioButton
    Width = 61
    Caption = 'Группа'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T033_ID,'
      
        '       T033_CODE || '#39'    '#39' || T033_GROUP_NAME_RUS T033_GROUP_NAM' +
        'E'
      'from   V_410_COUNTRY_GROUPS'
      'order by T033_CODE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033335F49440100000000000F000000543033
      335F47524F55505F4E414D45010000000000}
    object odsListT033_ID: TFloatField
      FieldName = 'T033_ID'
    end
    object odsListT033_GROUP_NAME: TStringField
      FieldName = 'T033_GROUP_NAME'
      Size = 262
    end
  end
  inherited odsGroup: TOracleDataSet
    SQL.Strings = (
      'select TO_NUMBER(ISO_DIG) ISO_DIG'
      'from   V_410_COUNTRY_GROUP_MEMBERS_F'
      'where  T033_ID = :T033_ID'
      'and    T055_ID = :T055_ID')
    Variables.Data = {
      0300000002000000080000003A543033335F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000}
    MasterFields = 'T033_ID'
    object odsGroupISO_DIG: TFloatField
      FieldName = 'ISO_DIG'
    end
  end
end
