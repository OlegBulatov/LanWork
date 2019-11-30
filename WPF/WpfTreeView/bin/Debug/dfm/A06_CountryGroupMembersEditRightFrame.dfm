inherited A06_CountryGroupMembersEditRight: TA06_CountryGroupMembersEditRight
  Width = 611
  inherited xxxDBGrid: TxxxDBGrid
    Width = 611
    AdvSettings.Indexes = <
      item
        FieldName = 'POSITION'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'POSITION'
        PickList.Strings = ()
        Title.Caption = '№ п.п'
        Width = 38
        Visible = True
      end
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
  inherited paToolButton: TPanel
    Width = 611
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 611
    inherited Panel1: TPanel
      Left = 584
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  CO_ISO_DIG,'
      '  CO_LAT2,'
      '  CO_NAME_LONG,'
      '  POSITION'
      'from V_410_COUNTRY_GROUP_RIGHT')
    QBEDefinition.QBEFieldDefs = {
      04000000040000000A000000434F5F49534F5F4449470100000000000C000000
      434F5F4E414D455F4C4F4E4701000000000008000000504F534954494F4E0100
      0000000007000000434F5F4C415432010000000000}
    object odsListCO_ISO_DIG: TFloatField
      FieldName = 'CO_ISO_DIG'
    end
    object odsListCO_LAT2: TStringField
      FieldName = 'CO_LAT2'
      Size = 3
    end
    object odsListCO_NAME_LONG: TStringField
      FieldName = 'CO_NAME_LONG'
      Size = 250
    end
    object odsListPOSITION: TFloatField
      FieldName = 'POSITION'
    end
  end
end
