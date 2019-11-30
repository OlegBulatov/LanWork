inherited fm15_CountryList: Tfm15_CountryList
  Width = 422
  inherited Label1: TLabel
    Width = 36
    Caption = 'Страна'
  end
  inherited gr01: TxxxDBGrid
    Width = 319
    Columns = <
      item
        Expanded = False
        FieldName = 'SN015_ISO_DIG'
        PickList.Strings = ()
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SN015_SHORT_RUS_NAME'
        PickList.Strings = ()
        Width = 200
        Visible = True
      end>
  end
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT   SN015_ISO_DIG, '
      '         SN015_SHORT_RUS_NAME'
      'FROM     V_NR_GOS_LIST'
      'ORDER BY SN015_SHORT_RUS_NAME')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000D000000534E3031355F49534F5F44494701000000000014
      000000534E3031355F53484F52545F5255535F4E414D45010000000000}
    object ods01SN015_ISO_DIG: TFloatField
      FieldName = 'SN015_ISO_DIG'
    end
    object ods01SN015_SHORT_RUS_NAME: TStringField
      FieldName = 'SN015_SHORT_RUS_NAME'
      Size = 250
    end
  end
end
