inherited A09_PeriodSelect_701: TA09_PeriodSelect_701
  inherited lbCaption: TLabel
    Width = 88
    Caption = 'Отчетный период'
  end
  inherited lcb:  TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'T055_LONG_NAME'
  end
  inherited cb: TCheckBox
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T055_ID,'
      '       T055_LONG_NAME'
      'from   V_406_DATA_PERIODS'
      'order by T055_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
  end
end
