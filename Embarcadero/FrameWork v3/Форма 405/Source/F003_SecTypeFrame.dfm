inherited F003_SecType: TF003_SecType
  inherited lbCaption: TLabel
    Width = 40
    Caption = '“ип ц.б.'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    LookupField = 'T027_ID'
    LookupDisplay = 'T027_SEC_TYPE'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T027_ID,'
      '  T027_SEC_TYPE'
      'FROM V_405_SEC_TYPE'
      'ORDER BY T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032375F49440100000000000D000000543032
      375F5345435F54595045010000000000}
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
  end
end
