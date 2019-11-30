inherited A002_View: TA002_View
  inherited lbCaption: TLabel
    Width = 79
    Caption = 'Представление'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 4
    LookupField = 'DS_ID'
    LookupDisplay = 'DS_NAME_LOOKUP'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  DS_ID,'
      '  DS_NAME_LOOKUP'
      'from DS_BOP_BOSS.VS_BOP_DISPL_TYPE'
      'ORDER BY DS_ID ')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000500000044535F49440100000000000E00000044535F4E41
      4D455F4C4F4F4B5550010000000000}
    object odsListDS_ID: TFloatField
      FieldName = 'DS_ID'
    end
    object odsListDS_NAME_LOOKUP: TStringField
      FieldName = 'DS_NAME_LOOKUP'
      Size = 11
    end
  end
end
