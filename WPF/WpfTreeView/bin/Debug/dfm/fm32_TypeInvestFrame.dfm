inherited fm31_TypeInvest: Tfm31_TypeInvest
  inherited Label1: TLabel
    Width = 105
    Caption = 'Тип инвестирования'
  end
  inherited Lookup01: TDBLookupComboBox
    Left = 120
    Width = 235
    DataField = 'M050_TYPE'
    KeyField = 'M050_TYPE'
    ListField = 'M050_TYPE_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT 1 M050_TYPE,'
      '             '#39'Прямые'#39'   M050_TYPE_DESC'
      'FROM DUAL'
      'UNION ALL'
      'SELECT 2 M050_TYPE,'
      '             '#39'Портфельные'#39' M050_TYPE_DESC'
      'FROM DUAL')
    QBEDefinition.QBEFieldDefs = {
      0300000002000000090000004D3035305F5459504501000000000E0000004D30
      35305F545950455F444553430100000000}
    object odsListM050_TYPE: TFloatField
      FieldName = 'M050_TYPE'
    end
    object odsListM050_TYPE_DESC: TStringField
      FieldName = 'M050_TYPE_DESC'
      Size = 11
    end
  end
end
