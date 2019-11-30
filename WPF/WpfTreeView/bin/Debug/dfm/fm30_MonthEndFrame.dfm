inherited fm30_MonthEnd: Tfm30_MonthEnd
  inherited Label1: TLabel
    Width = 48
    Caption = 'Ìוסÿצ ןמ'
  end
  inherited Lookup01: TDBLookupComboBox
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID, T055_LONG_NAME'
      'FROM   V_NR_MONTH_ALL_LIST')
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
