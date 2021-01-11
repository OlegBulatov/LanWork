inherited fm23_OperBON: Tfm23_OperBON
  inherited Lookup01: TxxxDBLookupCheckCombo
    LookupField = 'T027_ID'
    LookupDisplay = 'T027_SEC_TYPE'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T027_ID, T027_SEC_TYPE'
      'from T027_SEC_TYPE'
      
        'where T027_SEC_TYPE IN ('#39'BON1'#39', '#39'BON2'#39', '#39'BON3'#39', '#39'BON4'#39', '#39'BON5'#39', ' +
        #39'BON6'#39', '#39'BON7'#39', '#39'BON11'#39') '
      'ORDER BY  T027_SEC_TYPE')
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
