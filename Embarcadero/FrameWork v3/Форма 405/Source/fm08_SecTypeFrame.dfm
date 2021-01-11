inherited fm08_SecType: Tfm08_SecType
  inherited btnSelect: TSpeedButton
    Caption = '“ип ц.б....'
  end
  inherited lcbSelect: TDBLookupComboBox
    KeyField = 'T027_ID'
    ListField = 'T027_SEC_TYPE'
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'select T027_ID, T027_SEC_TYPE'
      'from     V_405_SEC_TYPE'
      'order by T027_SEC_TYPE'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032375F49440100000000000D000000543032
      375F5345435F54595045010000000000}
    object odsSelectT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsSelectT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
  end
end
