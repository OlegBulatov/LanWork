inherited A12_PayDirFilter: TA12_PayDirFilter
  inherited lbCaption: TLabel
    Width = 114
    Caption = 'Направление платежа'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DropDownCount = 4
    LookupField = 'PAY_DIR_CODE'
    LookupDisplay = 'PAY_DIR_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select PAY_DIR_CODE,'
      '       PAY_DIR_NAME'
      'from V_404_PAY_DIR')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000C0000005041595F4449525F434F44450100000000000C00
      00005041595F4449525F4E414D45010000000000}
    object odsListPAY_DIR_CODE: TStringField
      FieldName = 'PAY_DIR_CODE'
      Size = 1
    end
    object odsListPAY_DIR_NAME: TStringField
      FieldName = 'PAY_DIR_NAME'
      Size = 10
    end
  end
end
