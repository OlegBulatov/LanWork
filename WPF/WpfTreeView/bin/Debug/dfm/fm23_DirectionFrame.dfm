inherited fm23_Direction: Tfm23_Direction
  inherited Label1: TLabel
    Width = 68
    Caption = 'Направление'
  end
  inherited Lookup01: TDBLookupComboBox
    KeyField = 'DIRECT_ID'
    ListField = 'DIRECT_NAME'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  DIRECT_ID,'
      '  DIRECT_NAME'
      'FROM V_NR_DIRECTION'
      'ORDER BY DIRECT_ID')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000090000004449524543545F49440100000000000B00000044
      49524543545F4E414D45010000000000}
    object odsListDIRECT_ID: TFloatField
      FieldName = 'DIRECT_ID'
    end
    object odsListDIRECT_NAME: TStringField
      FieldName = 'DIRECT_NAME'
      Size = 14
    end
  end
end
