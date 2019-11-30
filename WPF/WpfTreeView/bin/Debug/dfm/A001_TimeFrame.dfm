inherited fmTimeLookUp: TfmTimeLookUp
  inherited lbCaption: TLabel
    Left = 18
    Width = 42
    Caption = ' вартал'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'T055_LONG_NAME'
  end
  inherited cb: TCheckBox
    Left = 0
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T055_ID,'
      '  T055_LONG_NAME '
      'from DS_408_BOSS.V_408_LOAD_PERIODS '
      'order by T055_ID asc ')
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
