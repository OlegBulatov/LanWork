inherited fm09_IssTypeInf: Tfm09_IssTypeInf
  inherited btnSelect: TSpeedButton
    Width = 102
    Caption = ' Код эмитента'
  end
  inherited lcbSelect: TDBLookupComboBox
    Left = 112
    Width = 346
    KeyField = 'T037_ID'
    ListField = 'T037_SHOT_NAME'
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T037_ID,'
      '  T037_SHOT_NAME'
      'FROM V_NR_ISSUER_INF_TYPE')
    QBEDefinition.QBEFieldDefs = {
      030000000200000007000000543033375F494401000000000E00000054303337
      5F53484F545F4E414D450100000000}
    object odsSelectT037_ID: TFloatField
      FieldName = 'T037_ID'
      Required = True
    end
    object odsSelectT037_SHOT_NAME: TStringField
      FieldName = 'T037_SHOT_NAME'
      Required = True
      Size = 255
    end
  end
end
