inherited Tfm44_SectorsRepList: TTfm44_SectorsRepList
  inherited gr01: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'T140_ID'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LEVEL_SECTOR_NAME'
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
      05000000020000000E00000054003100340030005F0049004400010000000000
      220000004C004500560045004C005F0053004500430054004F0052005F004E00
      41004D004500010000000000}
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
