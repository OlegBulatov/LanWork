inherited fm08_IssType: Tfm08_IssType
  Height = 21
  inherited btnSelect: TSpeedButton
    Width = 99
    Caption = ' Тип эмитента'
  end
  inherited lcbSelect: TDBLookupComboBox
    Left = 108
    Width = 335
    KeyField = 'T025_ID'
    ListField = 'T025_SHOT_NAME'
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T025_ID,'
      '  T025_SHOT_NAME'
      'FROM V_NR_ISSUER_TYPE')
    QBEDefinition.QBEFieldDefs = {
      030000000200000007000000543032355F494401000000000E00000054303235
      5F53484F545F4E414D450100000000}
    object odsSelectT025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
    object odsSelectT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
  end
end
