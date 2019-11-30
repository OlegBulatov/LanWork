inherited A114_ReportVersion: TA114_ReportVersion
  inherited lbCaption: TLabel
    Width = 73
    Caption = 'Версия отчета'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T063_ID'
    LookupDisplay = 'T063_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T063_ID,'
      '       T061_ID,'
      '       T070_ID,'
      '       T068_ID,'
      '       T063_NAME'
      'from   V_410_BOP_REPORT_VERSIONS'
      'ORDER BY T063_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543037305F494401000000000007000000543036
      315F494401000000000007000000543036335F49440100000000000900000054
      3036335F4E414D4501000000000007000000543036385F4944010000000000}
    object odsListT063_ID: TFloatField
      FieldName = 'T063_ID'
    end
    object odsListT061_ID: TFloatField
      FieldName = 'T061_ID'
    end
    object odsListT070_ID: TFloatField
      FieldName = 'T070_ID'
    end
    object odsListT068_ID: TFloatField
      FieldName = 'T068_ID'
    end
    object odsListT063_NAME: TStringField
      FieldName = 'T063_NAME'
      Size = 255
    end
  end
end
