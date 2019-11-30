inherited A13_KpFilter: TA13_KpFilter
  Width = 583
  inherited lbCaption: TLabel
    Width = 152
    Caption = 'Территориальное управление'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 184
    Width = 401
    LookupField = 'KP_ID'
    LookupDisplay = 'KP_NAME'
  end
  inherited cb: TCheckBox
    Checked = False
    State = cbUnchecked
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select KP_ID,'
      '       KP_NAME'
      'from   V_406_KP_FILTER'
      'ORDER  BY KP_ID')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000050000004B505F4944010000000000070000004B505F4E41
      4D45010000000000}
    object odsListKP_ID: TFloatField
      FieldName = 'KP_ID'
    end
    object odsListKP_NAME: TStringField
      FieldName = 'KP_NAME'
      Size = 262
    end
  end
end
