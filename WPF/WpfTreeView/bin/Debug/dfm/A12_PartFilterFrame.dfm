inherited A12_PartFilter: TA12_PartFilter
  Width = 512
  inherited lbCaption: TLabel
    Width = 37
    Caption = 'Раздел'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Width = 351
    DisplayEmpty = 'Не выбрано'
    LookupField = 'T037_PART'
    LookupDisplay = 'T037_PART_NAME'
  end
  inherited cb: TCheckBox
    Checked = False
    State = cbUnchecked
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T037_PART,'
      '       T037_PART_NAME'
      'from V_410_REPORT_PARTS')
    QBEDefinition.QBEFieldDefs = {
      040000000200000009000000543033375F504152540100000000000E00000054
      3033375F504152545F4E414D45010000000000}
  end
end
