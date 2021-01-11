inherited fm25_711Quarter: Tfm25_711Quarter
  inherited Label1: TLabel
    Width = 88
    Caption = 'Отчетный период'
  end
  inherited Lookup01: TxxxDBLookupCheckCombo
    LookupField = 'T055_ID'
    LookupDisplay = 'T055_LONG_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID, T055_LONG_NAME'
      'FROM  V_405_REPORT_PERIOD')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
end
