inherited fm34_IssuerType: Tfm34_IssuerType
  inherited Label1: TLabel
    Caption = 'Тип эмитента'
  end
  inherited Lookup01: TDBLookupComboBox
    KeyField = 'T025_ID'
    ListField = 'T025_SHOT_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T025_ID,'
      '  T025_SHOT_NAME'
      'FROM DPB_405_BOSS.T025_ISSUER_TYPE'
      'WHERE T025_ID = 9'
      'OR T025_ID = 8')
    QBEDefinition.QBEFieldDefs = {
      030000000200000007000000543032355F494401000000000E00000054303235
      5F53484F545F4E414D450100000000}
    object odsListT025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
  end
end
