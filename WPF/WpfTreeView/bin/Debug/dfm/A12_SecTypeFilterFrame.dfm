inherited A12_SecTypeFilter: TA12_SecTypeFilter
  Height = 25
  inherited lbCaption: TLabel
    Width = 100
    Caption = 'Типы ценных бумаг'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'SEC_NAME'
    LookupDisplay = 'SEC_NAME'
  end
  inherited cb: TCheckBox
    Checked = False
    State = cbUnchecked
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select '
      '    sec_type, '
      '    sec_name '
      'from V_SEC_TYPE'
      'order by sec_type desc')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000080000005345435F54595045010000000000080000005345
      435F4E414D45010000000000}
    object odsListSEC_TYPE: TStringField
      FieldName = 'SEC_TYPE'
      Size = 255
    end
    object odsListSEC_NAME: TStringField
      FieldName = 'SEC_NAME'
      Size = 255
    end
  end
end
