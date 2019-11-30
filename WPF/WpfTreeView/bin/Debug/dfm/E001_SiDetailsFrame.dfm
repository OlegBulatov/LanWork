inherited E001_SiDetailsGrid: TE001_SiDetailsGrid
  Width = 1095
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1095
    AdvSettings.Indexes = <
      item
        FieldName = 'M010_INT_DATE'
        SortType = stAsc
      end
      item
        FieldName = 'M050_TYPE_DESC'
        SortType = stDesc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'M010_INT_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата с'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M010_INT_END_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата по'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M030_BUY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Собственник'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COUNTRY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T025_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Тип собственника'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M030_PRC'
        PickList.Strings = ()
        Title.Caption = 'Процент'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M030_COUNT'
        PickList.Strings = ()
        Title.Caption = 'Количество бумаг'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M050_TYPE_DESC'
        PickList.Strings = ()
        Title.Caption = 'Тип инвестирования'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M031_NAME'
        PickList.Strings = ()
        Title.Caption = 'Источник данных'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M030_ENTER_DESC'
        PickList.Strings = ()
        Title.Caption = 'Тип ввода'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M030_COMMENT'
        PickList.Strings = ()
        Title.Caption = 'Комментарии'
        Width = 100
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1095
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 1095
    inherited Panel1: TPanel
      Left = 1068
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  M010_INT_DATE,'
      '  M010_INT_END_DATE,'
      '  M030_BUY_NAME,'
      '  COUNTRY_NAME,'
      '  M030_PRC,'
      '  M050_TYPE_DESC,'
      '  M031_NAME,'
      '  M030_COMMENT,'
      '  T025_SHOT_NAME,'
      '  M030_COUNT,'
      '  M030_ENTER_DESC'
      'from DPB_NR_BOSS.V_NR_PI_PART'
      'where T027_ID = :T027_ID'
      'and   T028_ID = :T028_ID')
    Variables.Data = {
      0300000002000000080000003A543032375F4944040000000000000000000000
      080000003A543032385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000C0000000D0000004D3031305F494E545F4441544501000000000011
      0000004D3031305F494E545F454E445F444154450100000000000D0000004D30
      33305F4255595F4E414D450100000000000C000000434F554E5452595F4E414D
      45010000000000080000004D3033305F5052430100000000000E0000004D3035
      305F545950455F44455343010000000000090000004D3033315F4E414D450100
      000000000C0000004D3033305F434F4D4D454E540100000000000E0000005430
      32355F53484F545F4E414D450100000000000A0000004D3033305F434F554E54
      0100000000000F0000004D3033305F454E5445525F50524F430100000000000F
      0000004D3033305F454E5445525F44455343010000000000}
    object odsListM010_INT_DATE: TDateTimeField
      FieldName = 'M010_INT_DATE'
    end
    object odsListM010_INT_END_DATE: TDateTimeField
      FieldName = 'M010_INT_END_DATE'
    end
    object odsListM030_BUY_NAME: TStringField
      FieldName = 'M030_BUY_NAME'
      Size = 255
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 250
    end
    object odsListM030_PRC: TFloatField
      FieldName = 'M030_PRC'
    end
    object odsListM050_TYPE_DESC: TStringField
      FieldName = 'M050_TYPE_DESC'
      Size = 11
    end
    object odsListM031_NAME: TStringField
      FieldName = 'M031_NAME'
      Size = 50
    end
    object odsListM030_COMMENT: TStringField
      FieldName = 'M030_COMMENT'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Size = 255
    end
    object odsListM030_COUNT: TFloatField
      FieldName = 'M030_COUNT'
    end
    object odsListM030_ENTER_DESC: TStringField
      FieldName = 'M030_ENTER_DESC'
      Size = 12
    end
  end
end
