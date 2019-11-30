inherited fm11_DivToolType: Tfm11_DivToolType
  inherited Label1: TLabel
    Left = 8
    Width = 61
    Caption = 'Инструмент'
  end
  inherited Lookup01: TDBLookupComboBox
    KeyField = 'TOOL_TYPE_ID'
    ListField = 'TOOL_TYPE_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  TOOL_TYPE_ID,'
      '  TOOL_TYPE_DESC'
      'FROM V_NR_TOOL_TYPE'
      'WHERE TOOL_TYPE_ID IN (1,2)')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000C000000544F4F4C5F545950455F49440100000000000E00
      0000544F4F4C5F545950455F44455343010000000000}
    object odsListTOOL_TYPE_ID: TFloatField
      FieldName = 'TOOL_TYPE_ID'
    end
    object odsListTOOL_TYPE_DESC: TStringField
      FieldName = 'TOOL_TYPE_DESC'
      Size = 12
    end
  end
end
