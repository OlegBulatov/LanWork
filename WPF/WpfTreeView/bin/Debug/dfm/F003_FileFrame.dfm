inherited F003_File: TF003_File
  inherited lbCaption: TLabel
    Width = 29
    Caption = 'Τΰιλ'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T202_ID'
    LookupDisplay = 'T202_FILE_NAME;T202_STATE_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T202_ID,'
      '  T055_ID,'
      '  T028_ID,'
      '  T202_FILE_NAME,'
      '  T202_STATE,'
      '  T202_STATE_DESC'
      'FROM V_405_ND_FILES'
      'WHERE T055_ID = :T055_ID'
      'ORDER BY T202_FILE_NAME')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543230325F494401000000000007000000543035
      355F494401000000000007000000543032385F49440100000000000E00000054
      3230325F46494C455F4E414D450100000000000A000000543230325F53544154
      450100000000000F000000543230325F53544154455F44455343010000000000}
    object odsListT202_ID: TFloatField
      FieldName = 'T202_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT202_FILE_NAME: TStringField
      DisplayWidth = 100
      FieldName = 'T202_FILE_NAME'
      Size = 500
    end
    object odsListT202_STATE: TStringField
      FieldName = 'T202_STATE'
      Size = 1
    end
    object odsListT202_STATE_DESC: TStringField
      FieldName = 'T202_STATE_DESC'
      Size = 15
    end
  end
end
