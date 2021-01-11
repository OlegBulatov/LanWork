inherited E001_Time: TE001_Time
  inherited lbCaption: TLabel
    Width = 38
    Caption = 'Период'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 12
    LookupField = 'T055_ID'
    LookupDisplay = 'T055_LONG_NAME; T094_STATE_DESC'
  end
  inherited cb: TCheckBox
    Enabled = False
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T027_ID,'
      '         T055_ID,'
      '         T055_START_DATE,'
      '   T055_END_DATE,'
      '   T055_NEXT_START,'
      '         T055_LONG_NAME,'
      '         T094_STATE,'
      '         T094_STATE_DESC'
      'FROM     V_405_IIPS_TIME V1'
      'WHERE    V1.T027_ID = :T027_ID'
      'ORDER BY V1.T055_ID')
    Variables.Data = {
      0300000001000000080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000800000007000000543032375F494401000000000007000000543035
      355F49440100000000000F000000543035355F53544152545F44415445010000
      0000000E000000543035355F4C4F4E475F4E414D450100000000000A00000054
      3039345F53544154450100000000000F000000543039345F53544154455F4445
      53430100000000000D000000543035355F454E445F444154450100000000000F
      000000543035355F4E4558545F5354415254010000000000}
    AfterOpen = odsListAfterOpen
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
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
    object odsListT094_STATE: TStringField
      FieldName = 'T094_STATE'
      Size = 1
    end
    object odsListT094_STATE_DESC: TStringField
      FieldName = 'T094_STATE_DESC'
      Size = 12
    end
    object odsListT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
    end
    object odsListT055_NEXT_START: TDateTimeField
      FieldName = 'T055_NEXT_START'
    end
  end
end
