inherited F001_Data: TF001_Data
  Width = 1030
  Height = 680
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1030
    Height = 655
    AdvSettings.Indexes = <
      item
        FieldName = 'T203_ERROR'
        SortType = stAsc
      end
      item
        FieldName = 'T204_ID'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 11
            LastCol = 14
            Caption = 'Кол-во ц.б. (строки)'
          end
          item
            FirstCol = 18
            LastCol = 21
            Caption = 'Кол-во ц.б. (числа)'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T204_ID'
        PickList.Strings = ()
        Title.Caption = 'Код строки'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T202_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T203_ERROR'
        PickList.Strings = ()
        Title.Caption = 'Ошибка'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T204_ROW_NUM'
        PickList.Strings = ()
        Title.Caption = '№ строки'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T204_NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T204_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН/Страна'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T204_COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T203_CODE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T204_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег. номер'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T204_CURRENCY'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T204_NOMINAL'
        PickList.Strings = ()
        Title.Caption = 'Номинал'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T204_COUNT_01'
        PickList.Strings = ()
        Title.Caption = 'На счетах владельцев-нерезидентов'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T204_COUNT_02'
        PickList.Strings = ()
        Title.Caption = 
          'Ценных бумаг, переданных нерезидентами в доверительное управлени' +
          'е отчитывающейся организации'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T204_COUNT_03'
        PickList.Strings = ()
        Title.Caption = 'Ценных бумаг на иных счетах нерезидентов'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T204_COUNT_04'
        PickList.Strings = ()
        Title.Caption = 'Всего на счетах клиентов (депонентов)'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T030_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T203_ROW_NUM'
        PickList.Strings = ()
        Title.Caption = '№ строки'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_NOMINAL'
        PickList.Strings = ()
        Title.Caption = 'Номинал'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_01'
        PickList.Strings = ()
        Title.Caption = 'На счетах владельцев-нерезидентов'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_02'
        PickList.Strings = ()
        Title.Caption = 
          'Ценных бумаг, переданных нерезидентами в доверительное управлени' +
          'е отчитывающейся организации'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_03'
        PickList.Strings = ()
        Title.Caption = 'Ценных бумаг на иных счетах нерезидентов'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_COUNT_04'
        PickList.Strings = ()
        Title.Caption = 'Всего на счетах клиентов (депонентов)'
        Width = 50
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1030
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      'T204_ID, T202_ID, T204_ROW_NUM, '
      '   T204_NAME, T204_INN, T204_COUNTRY, '
      '   T204_REGN, T203_CODE, T204_CURRENCY, '
      '   T204_NOMINAL, T204_COUNT_01, T204_COUNT_02, '
      '   T204_COUNT_03, T204_COUNT_04, T030_ID, '
      '   T203_ROW_NUM, T203_NOMINAL, T203_COUNT_01, '
      '   T203_COUNT_02, T203_COUNT_03, T203_COUNT_04, T203_ERROR'
      'FROM V_405_ND_TEMP_DATA'
      'WHERE T202_ID = :T202_ID'
      'ORDER BY T204_ID')
    Variables.Data = {
      0300000001000000080000003A543230325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001600000007000000543230345F494401000000000007000000543230
      325F49440100000000000C000000543230345F524F575F4E554D010000000000
      09000000543230345F4E414D4501000000000008000000543230345F494E4E01
      00000000000C000000543230345F434F554E5452590100000000000900000054
      3230345F5245474E01000000000009000000543230335F434F44450100000000
      000D000000543230345F43555252454E43590100000000000C00000054323034
      5F4E4F4D494E414C0100000000000D000000543230345F434F554E545F303101
      00000000000D000000543230345F434F554E545F30320100000000000D000000
      543230345F434F554E545F30330100000000000D000000543230345F434F554E
      545F303401000000000007000000543033305F49440100000000000C00000054
      3230335F524F575F4E554D0100000000000C000000543230335F4E4F4D494E41
      4C0100000000000D000000543230335F434F554E545F30310100000000000D00
      0000543230335F434F554E545F30320100000000000D000000543230335F434F
      554E545F30330100000000000D000000543230335F434F554E545F3034010000
      0000000A000000543230335F4552524F52010000000000}
    object odsListT204_ID: TFloatField
      FieldName = 'T204_ID'
    end
    object odsListT202_ID: TFloatField
      FieldName = 'T202_ID'
    end
    object odsListT204_ROW_NUM: TStringField
      FieldName = 'T204_ROW_NUM'
      Size = 255
    end
    object odsListT204_NAME: TStringField
      FieldName = 'T204_NAME'
      Size = 255
    end
    object odsListT204_INN: TStringField
      FieldName = 'T204_INN'
      Size = 255
    end
    object odsListT204_COUNTRY: TStringField
      FieldName = 'T204_COUNTRY'
      Size = 255
    end
    object odsListT204_REGN: TStringField
      FieldName = 'T204_REGN'
      Size = 255
    end
    object odsListT203_CODE: TStringField
      FieldName = 'T203_CODE'
      Size = 255
    end
    object odsListT204_CURRENCY: TStringField
      FieldName = 'T204_CURRENCY'
      Size = 255
    end
    object odsListT204_NOMINAL: TStringField
      FieldName = 'T204_NOMINAL'
      Size = 255
    end
    object odsListT204_COUNT_01: TStringField
      FieldName = 'T204_COUNT_01'
      Size = 255
    end
    object odsListT204_COUNT_02: TStringField
      FieldName = 'T204_COUNT_02'
      Size = 255
    end
    object odsListT204_COUNT_03: TStringField
      FieldName = 'T204_COUNT_03'
      Size = 255
    end
    object odsListT204_COUNT_04: TStringField
      FieldName = 'T204_COUNT_04'
      Size = 255
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT203_ROW_NUM: TFloatField
      FieldName = 'T203_ROW_NUM'
    end
    object odsListT203_NOMINAL: TFloatField
      FieldName = 'T203_NOMINAL'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT203_COUNT_01: TFloatField
      FieldName = 'T203_COUNT_01'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT203_COUNT_02: TFloatField
      FieldName = 'T203_COUNT_02'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT203_COUNT_03: TFloatField
      FieldName = 'T203_COUNT_03'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT203_COUNT_04: TFloatField
      FieldName = 'T203_COUNT_04'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT203_ERROR: TStringField
      FieldName = 'T203_ERROR'
      Size = 255
    end
  end
end
