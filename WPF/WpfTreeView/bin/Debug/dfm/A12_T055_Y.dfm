inherited Period: TPeriod
  Width = 629
  Height = 80
  inherited lcb: TxxxDBLookupCheckCombo
    Width = 468
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select * from V_404_DATA_PERIODS t order by t.t055_long_name')
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
