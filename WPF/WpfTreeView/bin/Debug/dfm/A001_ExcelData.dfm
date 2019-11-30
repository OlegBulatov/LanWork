inherited fm_ExcelData: Tfm_ExcelData
  Width = 1086
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1086
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 15
            LastCol = 19
            Caption = 'Наличие ошибок'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T001_PART'
        PickList.Strings = ()
        Title.Caption = 'Раздел'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_ROW'
        PickList.Strings = ()
        Title.Caption = 'Строка'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_STR_NUM'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Номер строки'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T001_ISO_CHR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Валюта'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_CURRENCY_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Наименование валюты'
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_ISO_DIG'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Страна'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_COUNTRY_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Наименование страны'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_IN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Входящая сумма'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OPR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Изменения'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OTH'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Другие операции'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OUT'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Исходящая сумма'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_CURSE_KOEFF'
        PickList.Strings = ()
        Title.Caption = 'Коэффициент'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_CURSE_IN'
        PickList.Strings = ()
        Title.Caption = 'Курс валюты вх.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_CURSE_OUT'
        PickList.Strings = ()
        Title.Caption = 'Курс валюты исх.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_CURSE_QUART'
        PickList.Strings = ()
        Title.Caption = 'Ср. кв. курс'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_CURRENCY_ERROR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Валюта не распознана'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_COUNTRY_ERROR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Страна не распознана'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_SUM_IN_ERROR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Ошибка преобразования в число'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_SUM_OUT_ERROR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Ошибка преобразования в число'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_CHECK_ERROR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Нарушено условие'
        Width = 100
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1086
    inherited tlbSelect: TToolBar
      ButtonWidth = 27
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select '
      '     T001_PART,'
      '     T001_ROW,'
      '   T001_STR_NUM,'
      '   T001_ISO_CHR,'
      '   T001_CURRENCY_NAME,'
      '   T001_ISO_DIG,'
      '   T001_COUNTRY_NAME,'
      '   T001_IN,'
      '   T001_OPR,'
      '   T001_OTH,'
      '   T001_OUT,'
      '   T001_CURRENCY_ERROR,'
      '   T001_COUNTRY_ERROR,'
      '   T001_SUM_IN_ERROR,'
      '   T001_SUM_OUT_ERROR,'
      '   T001_CHECK_ERROR,'
      '  T001_CURSE_KOEFF,'
      '  T001_CURSE_IN,'
      '  T001_CURSE_OUT,'
      '  T001_CURSE_QUART'
      'from '
      '   VS_408_SUM_EXCEL')
    QBEDefinition.QBEFieldDefs = {
      04000000140000000C000000543030315F5354525F4E554D0100000000001200
      0000543030315F43555252454E43595F4E414D45010000000000110000005430
      30315F434F554E5452595F4E414D4501000000000007000000543030315F494E
      01000000000008000000543030315F4F50520100000000000800000054303031
      5F4F544801000000000008000000543030315F4F555401000000000013000000
      543030315F43555252454E43595F4552524F5201000000000012000000543030
      315F434F554E5452595F4552524F5201000000000011000000543030315F5355
      4D5F494E5F4552524F5201000000000012000000543030315F53554D5F4F5554
      5F4552524F5201000000000010000000543030315F434845434B5F4552524F52
      01000000000009000000543030315F5041525401000000000008000000543030
      315F524F570100000000000C000000543030315F49534F5F4348520100000000
      000C000000543030315F49534F5F44494701000000000010000000543030315F
      43555253455F4B4F4546460100000000000D000000543030315F43555253455F
      494E0100000000000E000000543030315F43555253455F4F5554010000000000
      10000000543030315F43555253455F5155415254010000000000}
    object odsListT001_PART: TFloatField
      FieldName = 'T001_PART'
    end
    object odsListT001_ROW: TFloatField
      FieldName = 'T001_ROW'
    end
    object odsListT001_STR_NUM: TStringField
      FieldName = 'T001_STR_NUM'
      Size = 50
    end
    object odsListT001_ISO_CHR: TStringField
      FieldName = 'T001_ISO_CHR'
      Size = 50
    end
    object odsListT001_CURRENCY_NAME: TStringField
      FieldName = 'T001_CURRENCY_NAME'
      Size = 255
    end
    object odsListT001_ISO_DIG: TStringField
      FieldName = 'T001_ISO_DIG'
      Size = 50
    end
    object odsListT001_COUNTRY_NAME: TStringField
      FieldName = 'T001_COUNTRY_NAME'
      Size = 250
    end
    object odsListT001_IN: TStringField
      FieldName = 'T001_IN'
      Size = 50
    end
    object odsListT001_OPR: TStringField
      FieldName = 'T001_OPR'
      Size = 50
    end
    object odsListT001_OTH: TStringField
      FieldName = 'T001_OTH'
      Size = 50
    end
    object odsListT001_OUT: TStringField
      FieldName = 'T001_OUT'
      Size = 50
    end
    object odsListT001_CURRENCY_ERROR: TStringField
      FieldName = 'T001_CURRENCY_ERROR'
    end
    object odsListT001_COUNTRY_ERROR: TStringField
      FieldName = 'T001_COUNTRY_ERROR'
    end
    object odsListT001_SUM_IN_ERROR: TStringField
      FieldName = 'T001_SUM_IN_ERROR'
      Size = 29
    end
    object odsListT001_SUM_OUT_ERROR: TStringField
      FieldName = 'T001_SUM_OUT_ERROR'
      Size = 29
    end
    object odsListT001_CHECK_ERROR: TStringField
      FieldName = 'T001_CHECK_ERROR'
      Size = 250
    end
    object odsListT001_CURSE_KOEFF: TFloatField
      FieldName = 'T001_CURSE_KOEFF'
    end
    object odsListT001_CURSE_IN: TFloatField
      FieldName = 'T001_CURSE_IN'
    end
    object odsListT001_CURSE_OUT: TFloatField
      FieldName = 'T001_CURSE_OUT'
    end
    object odsListT001_CURSE_QUART: TFloatField
      FieldName = 'T001_CURSE_QUART'
    end
  end
end
