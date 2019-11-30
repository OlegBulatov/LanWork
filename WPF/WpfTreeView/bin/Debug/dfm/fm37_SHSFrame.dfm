inherited fm37_SHS: Tfm37_SHS
  inherited Label1: TLabel
    Width = 43
    Caption = '“ип ц. б.'
  end
  inherited Lookup01: TDBLookupComboBox
    KeyField = 'T027_ID'
    ListField = 'T027_SEC_TYPE'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'
      '  T027_SEC_TYPE'
      'FROM V_NR_SEC_TYPE_SHS'
      'ORDER BY T027_ID')
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
