inherited A06_CountryGroupMembersEditLeft: TA06_CountryGroupMembersEditLeft
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'CO_ISO_DIG'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'CO_ISO_DIG'
        PickList.Strings = ()
        Title.Caption = 'Цифровой код'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CO_LAT2'
        PickList.Strings = ()
        Title.Caption = 'Буквенный код'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CO_NAME_LONG'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 480
        Visible = True
      end>
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  CO_ISO_DIG,'
      '  CO_LAT2,'
      '  CO_NAME_LONG,'
      '  CHILD_ID'
      'from V_410_COUNTRY_GROUP_LEFT')
    QBEDefinition.QBEFieldDefs = {
      04000000040000000A000000434F5F49534F5F4449470100000000000C000000
      434F5F4E414D455F4C4F4E4701000000000007000000434F5F4C415432010000
      000000080000004348494C445F4944010000000000}
    object odsListCO_ISO_DIG: TFloatField
      FieldName = 'CO_ISO_DIG'
    end
    object odsListCO_LAT2: TStringField
      FieldName = 'CO_LAT2'
      Size = 3
    end
    object odsListCO_NAME_LONG: TStringField
      FieldName = 'CO_NAME_LONG'
      Size = 255
    end
    object odsListCHILD_ID: TFloatField
      FieldName = 'CHILD_ID'
    end
  end
end
