inherited Tfm44_SectorsRepList: TTfm44_SectorsRepList
  inherited gr01: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'T140_ID'
        PickList.Strings = ()
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LEVEL_SECTOR_NAME'
        PickList.Strings = ()
        Visible = True
      end>
  end
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT V1.T140_ID,'
      '       V1.LEVEL_SECTOR_NAME'
      'FROM   V_405_SECTORS V1'
      'ORDER BY V1.SECTOR_POS')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543134305F4944010000000000110000004C4556
      454C5F534543544F525F4E414D45010000000000}
    object ods01T140_ID: TIntegerField
      FieldName = 'T140_ID'
      Required = True
    end
    object ods01LEVEL_SECTOR_NAME: TStringField
      FieldName = 'LEVEL_SECTOR_NAME'
      Size = 4000
    end
  end
end
