inherited F001_Time: TF001_Time
  inherited lbCaption: TLabel
    Width = 42
    Caption = ' вартал'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'T055_LONG_NAME; FILE_COUNT'
  end
  inherited cb: TCheckBox
    Enabled = False
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T055_ID,'
      '  T055_START_DATE,'
      '  T055_LONG_NAME,'
      '  FILE_COUNT'
      'FROM V_405_ND_LOAD_TIME'
      'ORDER BY T055_START_DATE')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543035355F49440100000000000F000000543035
      355F53544152545F444154450100000000000E000000543035355F4C4F4E475F
      4E414D450100000000000A00000046494C455F434F554E54010000000000}
    AfterOpen = odsListAfterOpen
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
    end
    object odsListT055_LONG_NAME: TStringField
      DisplayWidth = 12
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
    object odsListFILE_COUNT: TStringField
      DisplayWidth = 15
      FieldName = 'FILE_COUNT'
      Size = 61
    end
  end
end
