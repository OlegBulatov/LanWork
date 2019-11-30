inherited A002_Time: TA002_Time
  inherited lbCaption: TLabel
    Width = 38
    Caption = 'Период'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 88
    Width = 289
    LookupField = 'T055_ID'
    LookupDisplay = 'T055_LONG_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  T055_ID,'
      '  T055_LONG_NAME'
      'FROM DS_BOP_BOSS.VS_BOP_LOAD_TIME'
      'ORDER BY  T055_START_DATE'
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
  end
end
