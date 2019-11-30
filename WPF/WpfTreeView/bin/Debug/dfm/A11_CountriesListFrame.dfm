inherited A11_CountriesList: TA11_CountriesList
  Width = 909
  Height = 598
  inherited xxxDBGrid: TxxxDBGrid
    Width = 909
    Height = 573
    AdvSettings.Indexes = <
      item
        FieldName = 'CO_ISO_DIG'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'CO_ISO_DIG'
        PickList.Strings = ()
        Title.Caption = 'Цифровой код'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CO_LAT3'
        PickList.Strings = ()
        Title.Caption = 'Буквенный код'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CO_NAME_SHOT'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CO_GROUP_NAME'
        PickList.Strings = ()
        Title.Caption = 'Группа'
        Width = 146
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 909
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  CO_ISO_DIG,'
      '  CO_LAT3,'
      '  CO_NAME_LONG,'
      'CO_NAME_SHOT,'
      '  CO_GROUP_NAME'
      'FROM DS_BOP_BOSS.VS_BOP_COUNTRIES')
    QBEDefinition.QBEFieldDefs = {
      04000000050000000A000000434F5F49534F5F44494701000000000007000000
      434F5F4C4154330100000000000C000000434F5F4E414D455F4C4F4E47010000
      0000000D000000434F5F47524F55505F4E414D450100000000000C000000434F
      5F4E414D455F53484F54010000000000}
    object odsListCO_ISO_DIG: TFloatField
      FieldName = 'CO_ISO_DIG'
    end
    object odsListCO_LAT3: TStringField
      FieldName = 'CO_LAT3'
      Size = 3
    end
    object odsListCO_NAME_LONG: TStringField
      FieldName = 'CO_NAME_LONG'
      Size = 250
    end
    object odsListCO_GROUP_NAME: TStringField
      FieldName = 'CO_GROUP_NAME'
      Size = 17
    end
    object odsListCO_NAME_SHOT: TStringField
      FieldName = 'CO_NAME_SHOT'
      Size = 250
    end
  end
end
