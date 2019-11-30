inherited A002_Currency_Frame: TA002_Currency_Frame
  inherited xxxDBGrid: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'T102_ISO_CHR'
        PickList.Strings = ()
        Title.Caption = 'Код ISO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T102_LAT3'
        PickList.Strings = ()
        Title.Caption = 'Код LAT'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T102_NAME_RU'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 300
        Visible = True
      end>
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select   '
      '  T102_ISO_CHR,'
      '  T102_ISO_DIG,'
      '  T102_LAT3,'
      '  T102_NAME_RU'
      ' from V_408_CURRENCY')
    QBEDefinition.QBEFieldDefs = {
      04000000040000000C000000543130325F49534F5F4348520100000000000C00
      0000543130325F49534F5F44494701000000000009000000543130325F4C4154
      330100000000000C000000543130325F4E414D455F5255010000000000}
    object odsListT102_ISO_CHR: TStringField
      FieldName = 'T102_ISO_CHR'
      Size = 3
    end
    object odsListT102_ISO_DIG: TFloatField
      FieldName = 'T102_ISO_DIG'
    end
    object odsListT102_LAT3: TStringField
      FieldName = 'T102_LAT3'
      Size = 3
    end
    object odsListT102_NAME_RU: TStringField
      FieldName = 'T102_NAME_RU'
      Size = 255
    end
  end
end
