inherited A09_ReportTypeFilter: TA09_ReportTypeFilter
  inherited lbCaption: TLabel
    Width = 55
    Caption = 'Тип отчета'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'TYPE_ID'
    LookupDisplay = 'TYPE_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select TYPE_ID,'
      '       TYPE_NAME'
      'from   V_410_REPORT_TYPES'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000545950455F494401000000000009000000545950
      455F4E414D45010000000000}
    object odsListTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Size = 22
    end
    object odsListTYPE_ID: TStringField
      FieldName = 'TYPE_ID'
      Size = 1
    end
  end
end
