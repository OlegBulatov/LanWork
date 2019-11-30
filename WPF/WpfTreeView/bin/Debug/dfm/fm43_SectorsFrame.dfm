inherited fm43_Sectors: Tfm43_Sectors
  inherited btnSelect: TSpeedButton
    Caption = 'Сектор...'
  end
  inherited lcbSelect: TDBLookupComboBox
    KeyField = 'T140_ID'
    ListField = 'SECTOR_NAME'
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'SELECT   T140_ID,'
      '         SECTOR_NAME'
      'FROM     V_405_SECTORS  '
      'order by SECTOR_NAME')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543134305F49440100000000000B000000534543
      544F525F4E414D45010000000000}
    object odsSelectT140_ID: TIntegerField
      FieldName = 'T140_ID'
      Required = True
    end
    object odsSelectSECTOR_NAME: TStringField
      FieldName = 'SECTOR_NAME'
      Required = True
      Size = 512
    end
  end
end
