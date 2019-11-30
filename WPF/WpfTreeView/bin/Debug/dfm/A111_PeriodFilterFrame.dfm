inherited A111_PeriodFilter: TA111_PeriodFilter
  Width = 512
  inherited lbCaption: TLabel
    Width = 38
    Caption = 'Период'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Width = 351
    LookupField = 'T055_ID'
    LookupDisplay = 'T055_LONG_NAME'
  end
  inherited cb: TCheckBox
    Checked = False
    Enabled = False
    State = cbGrayed
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T055_ID,'
      '       T055_LONG_NAME'
      'from   V_410_REPORT_PERIODS'
      'where  T055_START_DATE >= TO_DATE('#39'01.10.2013'#39','#39'dd.mm.yyyy'#39')')
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
