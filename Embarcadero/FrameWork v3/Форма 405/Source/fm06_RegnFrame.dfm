inherited fm06_Regn: Tfm06_Regn
  inherited btnSelect: TSpeedButton
    Caption = 'Рег. номер...'
  end
  inherited lcbSelect: TDBLookupComboBox
    KeyField = 'T026_ID'
    ListField = 'T026_SEC_REGN'
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'select T026_ID, T026_SEC_REGN'
      'from     V_405_SEC_REGN'
      'where T026_ID = :T026_ID'
      'order by T026_SEC_REGN'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543032365F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032365F49440100000000000D000000543032
      365F5345435F5245474E010000000000}
    BeforeOpen = odsSelectBeforeOpen
    object odsSelectT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsSelectT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
  end
end
