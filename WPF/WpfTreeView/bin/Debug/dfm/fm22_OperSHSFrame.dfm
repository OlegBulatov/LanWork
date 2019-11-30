inherited fm22_OperSHS: Tfm22_OperSHS
  inherited Lookup01: TxxxDBLookupCheckCombo
    LookupField = 'T027_ID'
    LookupDisplay = 'T027_SEC_TYPE'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T027_ID, T027_SEC_TYPE'
      'from T027_SEC_TYPE'
      
        'where T027_SEC_TYPE IN ('#39'SHS1'#39', '#39'SHS2'#39', '#39'SHS3'#39', '#39'SHS4'#39', '#39'SHS5'#39', ' +
        #39'SHS6'#39') '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032375F49440100000000000D000000543032
      375F5345435F54595045010000000000}
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
  end
end
