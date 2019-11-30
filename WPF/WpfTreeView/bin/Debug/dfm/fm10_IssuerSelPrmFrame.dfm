inherited fm10_IssuerSelPrm: Tfm10_IssuerSelPrm
  inherited Label1: TLabel
    Width = 43
    Caption = 'Ёмитент'
  end
  inherited Lookup01: TDBLookupComboBox
    KeyField = 'T028_ID'
    ListField = 'T028_SHOT_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T028_ID,'
      '             T028_SHOT_NAME'
      'FROM V_NR_ISSUERS_SELECT_DIV'
      'ORDER BY UPPER(T028_SHOT_NAME)')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D45010000000000}
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
  end
end
