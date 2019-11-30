inherited A119_Confident2: TA119_Confident2
  inherited lbCaption: TLabel
    Width = 113
    Caption = 'Конфиденциальность:'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'CONF_ID'
    LookupDisplay = 'CONF_TEXT'
  end
  inherited cb: TCheckBox
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT CONF_ID,'
      '       CONF_TEXT'
      'FROM   V_410_CONFIDENT')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000434F4E465F494401000000000009000000434F4E
      465F54455854010000000000}
    object odsListCONF_ID: TFloatField
      FieldName = 'CONF_ID'
    end
    object odsListCONF_TEXT: TStringField
      FieldName = 'CONF_TEXT'
      Size = 3
    end
  end
end
