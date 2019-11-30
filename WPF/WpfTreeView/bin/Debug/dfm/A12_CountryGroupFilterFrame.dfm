inherited A12_CountryGroupFilter: TA12_CountryGroupFilter
  Width = 512
  inherited lbCaption: TLabel
    Width = 67
    Caption = 'Группа стран'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Width = 351
    DropDownCount = 3
    LookupField = 'CO_GROUP'
    LookupDisplay = 'CO_GROUP_NAME'
  end
  inherited cb: TCheckBox
    Checked = False
    State = cbUnchecked
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select DISTINCT'
      '         CO_GROUP,'
      '         CO_GROUP_NAME'
      'from V_410_COUNTRY'
      'ORDER BY CO_GROUP')
    QBEDefinition.QBEFieldDefs = {
      040000000200000008000000434F5F47524F55500100000000000D000000434F
      5F47524F55505F4E414D45010000000000}
    object odsListCO_GROUP: TFloatField
      FieldName = 'CO_GROUP'
    end
    object odsListCO_GROUP_NAME: TStringField
      FieldName = 'CO_GROUP_NAME'
      Size = 17
    end
  end
end
