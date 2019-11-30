inherited A12_Iss_Filter: TA12_Iss_Filter
  Height = 44
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select id,name from V_ISS_LOOK')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    object odsListID: TFloatField
      FieldName = 'ID'
    end
    object odsListNAME: TStringField
      FieldName = 'NAME'
      Size = 255
    end
  end
end
