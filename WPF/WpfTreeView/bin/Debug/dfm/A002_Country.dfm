inherited A002_Country_Frame: TA002_Country_Frame
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'T101_ISO_DIG'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T101_ISO_DIG'
        PickList.Strings = ()
        Title.Caption = 'Код ISO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T101_LAT3'
        PickList.Strings = ()
        Title.Caption = 'Код LAT'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T101_NAME_LONG'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 287
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T101_GROUP_NAME'
        PickList.Strings = ()
        Title.Caption = 'Группа'
        Width = 121
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    inherited tlbNav: TToolBar
      inherited tbFirst: TToolButton
        Visible = False
      end
      inherited tbLast: TToolButton
        Visible = False
      end
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      '   SELECT '
      '  T101_GROUP_NAME,'
      '  T101_ISO_DIG,'
      '  T101_NAME_LONG,'
      '  T101_LAT3'
      '     FROM V_408_COUNTRY')
    QBEDefinition.QBEFieldDefs = {
      04000000040000000F000000543130315F47524F55505F4E414D450100000000
      000C000000543130315F49534F5F4449470100000000000E000000543130315F
      4E414D455F4C4F4E4701000000000009000000543130315F4C41543301000000
      0000}
    object odsListT101_GROUP_NAME: TStringField
      FieldName = 'T101_GROUP_NAME'
      Size = 17
    end
    object odsListT101_ISO_DIG: TFloatField
      FieldName = 'T101_ISO_DIG'
    end
    object odsListT101_NAME_LONG: TStringField
      FieldName = 'T101_NAME_LONG'
      Size = 250
    end
    object odsListT101_LAT3: TStringField
      FieldName = 'T101_LAT3'
      Size = 3
    end
  end
end
