inherited E001_Remains: TE001_Remains
  Width = 1134
  Height = 529
  inherited xxxDBGrid: TxxxDBGrid
    Top = 77
    Width = 1134
    Height = 452
    OnDblClick = xxxDBGridDblClick
    AdvSettings.Indexes = <
      item
        FieldName = 'T167_NAME'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 6
            LastCol = 47
            Caption = 'Входящий остаток'
          end
          item
            FirstCol = 48
            LastCol = 74
            Caption = 'Операции'
          end
          item
            FirstCol = 75
            LastCol = 120
            Caption = 'Исходящий остаток'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 7
            LastCol = 27
            Caption = 'Котировки'
          end
          item
            FirstCol = 39
            LastCol = 40
            Caption = 'Резиденты'
          end
          item
            FirstCol = 79
            LastCol = 99
            Caption = 'Котировки'
          end
          item
            FirstCol = 112
            LastCol = 113
            Caption = 'Резиденты'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 7
            LastCol = 8
            Caption = 'BLOOMBERG'
          end
          item
            FirstCol = 9
            LastCol = 10
            Caption = 'ММВБ'
          end
          item
            FirstCol = 11
            LastCol = 12
            Caption = 'REUTERS'
          end
          item
            FirstCol = 13
            LastCol = 15
            Caption = 'Форма 405'
          end
          item
            FirstCol = 16
            LastCol = 18
            Caption = 'Форма 417'
          end
          item
            FirstCol = 19
            LastCol = 20
            Caption = 'MOEX Board'
          end
          item
            FirstCol = 21
            LastCol = 23
            Caption = 'Форма 711'
          end
          item
            FirstCol = 24
            LastCol = 26
            Caption = 'Форма 415'
          end
          item
            FirstCol = 27
            LastCol = 27
            Caption = 'Ручн.'
          end
          item
            FirstCol = 29
            LastCol = 31
            Caption = 'Форма 711'
          end
          item
            FirstCol = 32
            LastCol = 33
            Caption = 'Небанк.деп.'
          end
          item
            FirstCol = 34
            LastCol = 35
            Caption = '711 + НД'
          end
          item
            FirstCol = 36
            LastCol = 38
            Caption = 'МИП'
          end
          item
            FirstCol = 39
            LastCol = 39
            Caption = '711'
          end
          item
            FirstCol = 40
            LastCol = 40
            Caption = '415'
          end
          item
            FirstCol = 42
            LastCol = 44
            Caption = 'Доля прямых инвестиций (%)'
          end
          item
            FirstCol = 46
            LastCol = 47
            Caption = 'Доля резидентов (%)'
          end
          item
            FirstCol = 50
            LastCol = 51
            Caption = 'Форма 711'
          end
          item
            FirstCol = 52
            LastCol = 53
            Caption = 'Небанк.деп.'
          end
          item
            FirstCol = 54
            LastCol = 55
            Caption = '711 + НД'
          end
          item
            FirstCol = 56
            LastCol = 66
            Caption = 'Форма 405'
          end
          item
            FirstCol = 67
            LastCol = 68
            Caption = 'Форма 417'
          end
          item
            FirstCol = 69
            LastCol = 70
            Caption = 'Расчет'
          end
          item
            FirstCol = 71
            LastCol = 72
            Caption = 'Корректировка'
          end
          item
            FirstCol = 73
            LastCol = 74
            Caption = 'МИП'
          end
          item
            FirstCol = 75
            LastCol = 76
            Caption = 'Прочие'
          end
          item
            FirstCol = 77
            LastCol = 77
            Caption = 'Переоценка'
          end
          item
            FirstCol = 79
            LastCol = 80
            Caption = 'BLOOMBERG'
          end
          item
            FirstCol = 81
            LastCol = 82
            Caption = 'ММВБ'
          end
          item
            FirstCol = 83
            LastCol = 84
            Caption = 'REUTERS'
          end
          item
            FirstCol = 85
            LastCol = 87
            Caption = 'Форма 405'
          end
          item
            FirstCol = 88
            LastCol = 90
            Caption = 'Форма 417'
          end
          item
            FirstCol = 91
            LastCol = 92
            Caption = 'MOEX Board'
          end
          item
            FirstCol = 93
            LastCol = 95
            Caption = 'Форма 711'
          end
          item
            FirstCol = 96
            LastCol = 98
            Caption = 'Форма 415'
          end
          item
            FirstCol = 99
            LastCol = 99
            Caption = 'Ручн.'
          end
          item
            FirstCol = 102
            LastCol = 104
            Caption = 'Форма 711'
          end
          item
            FirstCol = 105
            LastCol = 106
            Caption = 'Небанк.деп.'
          end
          item
            FirstCol = 107
            LastCol = 108
            Caption = '711 + НД'
          end
          item
            FirstCol = 109
            LastCol = 111
            Caption = 'МИП'
          end
          item
            FirstCol = 112
            LastCol = 112
            Caption = '711'
          end
          item
            FirstCol = 113
            LastCol = 113
            Caption = '415'
          end
          item
            FirstCol = 115
            LastCol = 117
            Caption = 'Доля прямых инвестиций (%)'
          end
          item
            FirstCol = 119
            LastCol = 120
            Caption = 'Доля резидентов (%)'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T167_NAME'
        PickList.Strings = ()
        Title.Caption = 'Тикер'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T167_EXCHANGE'
        PickList.Strings = ()
        Title.Caption = 'Биржа'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN_TRANSL'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег. номер'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_EMISS_SIZE'
        PickList.Strings = ()
        Title.Caption = 'Выпуск, млн.шт.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_BLM'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_BLM_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_MVB'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_MVB_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_REU'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_REU_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_405'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_405_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_405_CNT'
        PickList.Strings = ()
        Title.Caption = 'К-во котировок'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_417'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_417_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_417_CNT'
        PickList.Strings = ()
        Title.Caption = 'К-во котировок'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_MOE'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_MOE_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_711'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_711_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_711_CNT'
        PickList.Strings = ()
        Title.Caption = 'К-во котировок'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_415'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_415_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_415_CNT'
        PickList.Strings = ()
        Title.Caption = 'К-во котировок'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RATE_HND'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_USD_RATE'
        PickList.Strings = ()
        Title.Caption = 'Цена,$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_711_CNT_REM'
        PickList.Strings = ()
        Title.Caption = '711 млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_711_USD_REM'
        PickList.Strings = ()
        Title.Caption = '711 млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_170_711_PRC'
        PickList.Strings = ()
        Title.Caption = '% от вып. '
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_NB_CNT_REM'
        PickList.Strings = ()
        Title.Caption = 'НБ млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_NB_USD_REM'
        PickList.Strings = ()
        Title.Caption = 'НБ млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_CNT_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_USD_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_170_CNT_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_170_USD_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_170_EMISS_PRC'
        PickList.Strings = ()
        Title.Caption = '% от вып. '
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_711_CNT_RES'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_415_CNT_RES'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_PERCENT'
        PickList.Strings = ()
        Title.Caption = 'Доля всей 711+415 к эмиссии (%)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_SI_PRC'
        PickList.Strings = ()
        Title.Caption = 'На дату расчета'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_SI_PRC_HND_DS'
        PickList.Strings = ()
        Title.Caption = 'Источник данных'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_SI_PRC_NR'
        PickList.Strings = ()
        Title.Caption = 'Актуальн.'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_PORTF_PRC'
        PickList.Strings = ()
        Title.Caption = 'Доля портфельн. инвестиций (%)'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RES_PRC'
        PickList.Strings = ()
        Title.Caption = 'На дату расчета'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_S_RES_PRC_HND_DS'
        PickList.Strings = ()
        Title.Caption = 'Источник данных'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_FLAG'
        PickList.Strings = ()
        Title.Caption = 'Флаг'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T170_O_USD_RATE'
        PickList.Strings = ()
        Title.Caption = 'Цена,$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_711_CNT_SAL'
        PickList.Strings = ()
        Title.Caption = '711 млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_711_USD_SAL'
        PickList.Strings = ()
        Title.Caption = '711 млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_NB_CNT_SAL'
        PickList.Strings = ()
        Title.Caption = 'НБ млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_NB_USD_SAL'
        PickList.Strings = ()
        Title.Caption = 'НБ млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_CNT_SAL'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_USD_SAL'
        PickList.Strings = ()
        Title.Caption = 'млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_SHS3_USD_SAL'
        PickList.Strings = ()
        Title.Caption = '405 shs3 млн долл'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_SHS3_CNT_SAL'
        PickList.Strings = ()
        Title.Caption = '405 shs3 млн шт'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_CNT_SAL'
        PickList.Strings = ()
        Title.Caption = '405 млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_PERCENT'
        PickList.Strings = ()
        Title.Caption = 'Доля'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_USD_SAL'
        PickList.Strings = ()
        Title.Caption = '405 млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_DR_CNT_SAL'
        PickList.Strings = ()
        Title.Caption = 'DR млн.шт (в SHS)'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_DR_USD_SAL'
        PickList.Strings = ()
        Title.Caption = 'DR млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_DR_KOEFF'
        PickList.Strings = ()
        Title.Caption = 'Коэфф. DR'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_DR_405_CNT_SAL'
        PickList.Strings = ()
        Title.Caption = '405+DR млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_DR_405_USD_SAL'
        PickList.Strings = ()
        Title.Caption = '405+DR млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_OTH_CNT_711_405'
        PickList.Strings = ()
        Title.Caption = 'Прочие шт., сокращение разрыва 711 и 405 '
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_417_CNT'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_417_USD'
        PickList.Strings = ()
        Title.Caption = 'млн.$'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_CNT_SAL_C'
        PickList.Strings = ()
        Title.Caption = 'Расч млн.шт.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_CNT_SAL_C_PRC'
        PickList.Strings = ()
        Title.Caption = '% от факт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_CNT_E'
        PickList.Strings = ()
        Title.Caption = 'Корр млн.шт.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_USD_E'
        PickList.Strings = ()
        Title.Caption = 'Корр млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_170_CNT_SAL'
        PickList.Strings = ()
        Title.Caption = 'Оп млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_170_USD_SAL'
        PickList.Strings = ()
        Title.Caption = 'Оп млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_OTH_CNT_E'
        PickList.Strings = ()
        Title.Caption = 'Проч млн.шт.'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_OTH_USD_E'
        PickList.Strings = ()
        Title.Caption = 'Проч млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_PER_USD'
        PickList.Strings = ()
        Title.Caption = 'Пер млн.$'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_EMISS_SIZE'
        PickList.Strings = ()
        Title.Caption = 'Выпуск, млн.шт.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_BLM'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_BLM_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_MVB'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_MVB_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_REU'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_REU_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_405'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_405_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_405_CNT'
        PickList.Strings = ()
        Title.Caption = 'К-во котировок'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_417'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_417_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_417_CNT'
        PickList.Strings = ()
        Title.Caption = 'К-во котировок'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_MOE'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_MOE_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_711'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_711_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_711_CNT'
        PickList.Strings = ()
        Title.Caption = 'К-во котировок'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_415'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_415_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_415_CNT'
        PickList.Strings = ()
        Title.Caption = 'К-во котировок'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RATE_HND'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_CNT_RATE'
        PickList.Strings = ()
        Title.Caption = 'Остаток на первое число следующего квартала млн. шт. оценка'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_USD_RATE'
        PickList.Strings = ()
        Title.Caption = 'Цена,$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_711_CNT_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_711_USD_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_170_711_PRC'
        PickList.Strings = ()
        Title.Caption = '% от вып. '
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_NB_CNT_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_NB_USD_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_CNT_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_USD_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_170_CNT_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_170_USD_REM'
        PickList.Strings = ()
        Title.Caption = 'млн.$'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_170_EMISS_PRC'
        PickList.Strings = ()
        Title.Caption = '% от вып. '
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_711_CNT_RES'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_415_CNT_RES'
        PickList.Strings = ()
        Title.Caption = 'млн.шт.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_PERCENT'
        PickList.Strings = ()
        Title.Caption = 'Доля всей 711+415 к эмиссии (%)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_SI_PRC'
        PickList.Strings = ()
        Title.Caption = 'На дату расчета'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_SI_PRC_HND_DS'
        PickList.Strings = ()
        Title.Caption = 'Источник данных'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_SI_PRC_NR'
        PickList.Strings = ()
        Title.Caption = 'Актуальн.'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_PORTF_PRC'
        PickList.Strings = ()
        Title.Caption = 'Доля портфельн. инвестиций (%)'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RES_PRC'
        PickList.Strings = ()
        Title.Caption = 'На дату расчета'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_RES_PRC_HND_DS'
        PickList.Strings = ()
        Title.Caption = 'Источник данных'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_FIXED'
        PickList.Strings = ()
        Title.Caption = 'Изменение исх. остатков запрещено'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_CALC_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата расчета'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_FI_SNS_DESC'
        PickList.Strings = ()
        Title.Caption = 'ФО'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARKET_STATUS'
        PickList.Strings = ()
        Title.Caption = 'Статус'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T030_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Вид ц.б.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_REGION_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код региона'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_REGION_NAME'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INDUSTRY_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код отрасли ОКВЭД'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INDUSTRY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Отрасль ОКВЭД'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_ICODE'
        PickList.Strings = ()
        Title.Caption = 'Код отрасли МЕЖД.'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INAME'
        PickList.Strings = ()
        Title.Caption = 'Отрасль МЕЖД.'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_COMMENTS'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_LOG_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата изменения записи'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_LOG_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Причина изменения записи'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_LOG_USER'
        PickList.Strings = ()
        Title.Caption = 'Имя пользователя'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_LOG_FILE_NAME'
        PickList.Strings = ()
        Title.Caption = 'Имя файла'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_SHORT_NAME'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T170_INN'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Top = 52
    Width = 1134
    AutoSize = True
    inherited tlbNav: TToolBar
      inherited tbSeparator01: TToolButton
        Visible = False
      end
    end
    inherited tlbSelect: TToolBar
      Width = 637
      ButtonHeight = 22
      ButtonWidth = 106
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Visible = False
      end
      object ToolButton7: TToolButton
        Left = 83
        Top = 0
        Action = actSettings
        AutoSize = True
      end
      object ToolButton3: TToolButton
        Left = 149
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 157
        Top = 0
        Action = actHistory
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 246
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 13
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 254
        Top = 0
        Hint = 'Фиксировать исходящие остатки'
        AutoSize = True
        Caption = 'Фиксировать...'
        DropdownMenu = MenuCheck
        ImageIndex = 27
        PopupMenu = MenuCheck
      end
      object ToolButton5: TToolButton
        Left = 364
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 13
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 372
        Top = 0
        Hint = 'Пересчитать данные за период...'
        AutoSize = True
        Caption = 'Пересчитать...'
        DropdownMenu = MenuCalc
        ImageIndex = 42
        PopupMenu = MenuCalc
        OnClick = actRecalcAllExecute
      end
      object ToolButton1: TToolButton
        Left = 477
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 485
        Top = 0
        AutoSize = True
        Caption = 'Перейти к ...'
        DropdownMenu = MenuJumps
        ImageIndex = 13
        PopupMenu = MenuJumps
      end
      object ToolButton4: TToolButton
        Left = 580
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object tbRequestRates: TToolButton
        Left = 588
        Top = 0
        AutoSize = True
        Caption = 'Обновить...'
        DropdownMenu = MenuLoadRates
        ImageIndex = 19
      end
    end
  end
  object paFilter: TPanel [2]
    Left = 0
    Top = 0
    Width = 1134
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label1: TLabel
      Left = 1070
      Top = 8
      Width = 50
      Height = 13
      Hint = 
        'Правила выбора операций SHS3, SHS4  для IIP:'#13#10'  1. Включаем опер' +
        'ации с кодами (11, 21, 22, 23) '#13#10'  2. Включаем операции выкупа э' +
        'митентом (99, "Проценты <> Сумма")'#13#10'  3. Исключаем фиктивные опе' +
        'рации'#13#10'  4. Исключаем операции РЕПО'#13#10'  5. Исключаем прямые'
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Описание'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    inline G001_IssuerGroup1: TG001_IssuerGroup
      Left = 4
      Top = 4
      inherited lcb: TxxxDBLookupCheckCombo
        DropDownCount = 6
      end
    end
    object Button1: TButton
      Left = 399
      Top = 2
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 1
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 31
    Width = 1134
    inherited Panel1: TPanel
      Left = 1107
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Left = 72
    Top = 212
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
    object actGoTo405: TAction
      Category = 'Adv'
      Caption = 'Перейти к 405...'
      Hint = 'Перейти к операциям формы 405...'
      ImageIndex = 11
      OnExecute = actGoTo405Execute
    end
    object actGoTo711: TAction
      Category = 'Adv'
      Caption = 'Перейти к 711...'
      Hint = 'Перейти к данным формы 711...'
      ImageIndex = 11
      OnExecute = actGoTo711Execute
    end
    object actRecalcActive: TAction
      Caption = 'Пересчитать текущую запись'
      ImageIndex = 42
      OnExecute = actRecalcActiveExecute
      OnUpdate = actRecalcAllUpdate
    end
    object actRecalcSelected: TAction
      Caption = 'Пересчитать выбранные записи'
      ImageIndex = 42
      OnExecute = actRecalcSelectedExecute
      OnUpdate = actRecalcSelectedUpdate
    end
    object actRecalcAll: TAction
      Caption = 'Пересчитать все записи'
      ImageIndex = 42
      OnExecute = actRecalcAllExecute
      OnUpdate = actRecalcAllUpdate
    end
    object actSettings: TAction
      Category = 'Adv'
      Caption = 'Поля...'
      Hint = 'Скрыть/Отобразить поля...'
      ImageIndex = 63
      OnExecute = actSettingsExecute
    end
    object actGoToND: TAction
      Category = 'Adv'
      Caption = 'Перейти к НД...'
      Hint = 'Перейти к данным небанковских депозитариев...'
      ImageIndex = 11
      OnExecute = actGoToNDExecute
    end
    object actGoToIssuers: TAction
      Caption = 'К эмитентам...'
      Hint = 'Перейти в реестр эмитентов'
      ImageIndex = 11
      OnExecute = actGoToIssuersExecute
    end
    object actGoToEmissions: TAction
      Caption = 'К эмиссиям...'
      Hint = 'Перейти в реестр эмиссий'
      ImageIndex = 11
      OnExecute = actGoToEmissionsExecute
    end
    object actHistory: TAction
      Caption = 'Изменения'
      Hint = 'История изменений'
      ImageIndex = 11
      OnExecute = actHistoryExecute
      OnUpdate = actHistoryUpdate
    end
    object actCheckAll: TAction
      Caption = 'Отметить все записи'
      ImageIndex = 28
      OnExecute = actCheckAllExecute
      OnUpdate = actCheckAllUpdate
    end
    object actUncheckAll: TAction
      Caption = 'Снять все отметки'
      ImageIndex = 29
      OnExecute = actUncheckAllExecute
      OnUpdate = actUncheckAllUpdate
    end
    object actCheckSelected: TAction
      Caption = 'Отметить все выбранные записи'
      ImageIndex = 28
      OnExecute = actCheckSelectedExecute
      OnUpdate = actCheckSelectedUpdate
    end
    object actUncheckSelected: TAction
      Caption = 'Снять отметки с выбранных записей'
      ImageIndex = 29
      OnExecute = actUncheckSelectedExecute
      OnUpdate = actUncheckSelectedUpdate
    end
    object actRatesLoadCurrent: TAction
      Caption = 'Обновить текущую'
      ImageIndex = 19
      OnExecute = actRatesLoadCurrentExecute
      OnUpdate = actRatesLoadCurrentUpdate
    end
    object actRatesLoadSelected: TAction
      Caption = 'Обновить выделенные'
      ImageIndex = 19
      OnExecute = actRatesLoadSelectedExecute
      OnUpdate = actRatesLoadSelectedUpdate
    end
    object actRatesLoadAll: TAction
      Caption = 'Обновить все'
      ImageIndex = 19
      OnExecute = actRatesLoadAllExecute
      OnUpdate = actRatesLoadAllUpdate
    end
    object actGoTo415: TAction
      Caption = 'Перейти к 415...'
      Hint = 'Перейти к данным формы 415...'
      ImageIndex = 11
      OnExecute = actGoTo415Execute
    end
    object actSiDetails: TAction
      Caption = 'Детализация'
      ImageIndex = 11
      Visible = False
      OnExecute = actSiDetailsExecute
      OnUpdate = actSiDetailsUpdate
    end
    object actGoTo417: TAction
      Caption = 'Перейти к 417...'
      Hint = 'Перейти к данным формы 417...'
      ImageIndex = 11
      OnExecute = actGoTo417Execute
    end
  end
  inherited dsList: TDataSource
    Top = 206
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'
      '       T027_SEC_TYPE,'
      '       T055_ID,'
      '       T170_ID,'
      '       T094_ID,'
      '       T028_ID,'
      '       T028_SHOT_NAME,'
      '       T028_INN,'
      '       T028_REGION_CODE,'
      '       T028_REGION_NAME,'
      '       T028_INDUSTRY_CODE,'
      '       T028_INDUSTRY_NAME,'
      '       T028_ICODE,'
      '       T028_INAME,'
      '       T028_FI_SNS,'
      '       T028_FI_SNS_DESC,'
      '       T167_NAME,'
      '       T167_EXCHANGE,'
      '       T031_ID,'
      '       T010_ISIN_TRANSL,'
      '       T026_ID,'
      '       T026_SEC_REGN,'
      '       T170_S_EMISS_SIZE,'
      '      -- вх.котировки'
      '      T170_S_RATE_BLM,'
      '      T170_S_RATE_BLM_DATE, '
      '      T170_S_RATE_MVB,'
      '      T170_S_RATE_MVB_DATE,'
      '      T170_S_RATE_REU,'
      '      T170_S_RATE_REU_DATE,'
      '      T170_S_RATE_405,'
      '      T170_S_RATE_405_DATE,'
      '      T170_S_RATE_405_CNT,'
      '      T170_S_RATE_417,'
      '      T170_S_RATE_417_DATE,'
      '      T170_S_RATE_417_CNT,'
      '      T170_S_RATE_MOE,'
      '      T170_S_RATE_MOE_DATE,'
      '      T170_S_RATE_711,'
      '      T170_S_RATE_711_DATE,'
      '      T170_S_RATE_711_CNT,'
      '      T170_S_RATE_415,'
      '      T170_S_RATE_415_DATE,'
      '      T170_S_RATE_415_CNT,'
      '      T170_S_RATE_HND,'
      '      -- вх.котировка (цена)'
      '       T170_S_USD_RATE,'
      '       T170_S_711_CNT_REM,'
      '       T170_S_711_USD_REM,'
      '       T170_S_170_711_PRC,'
      '       T170_S_NB_CNT_REM,'
      '       T170_S_NB_USD_REM,'
      '       T170_S_CNT_REM,'
      '       T170_S_USD_REM,'
      '       T170_S_PRC,'
      '       T170_S_170_CNT_REM,'
      '       T170_S_170_USD_REM,'
      '       T170_S_170_EMISS_PRC,'
      '       T170_S_711_CNT_RES,'
      '       T170_S_415_CNT_RES,'
      '       T170_S_PERCENT,'
      '       T170_S_SI_PRC_HND,'
      '       T170_S_SI_PRC_HND_DS,'
      '       T170_S_SI_PRC_SRC,'
      '       T170_S_SI_PRC,'
      '       T170_S_SI_PRC_NR,'
      '       T170_S_RES_PRC_HND,'
      '       T170_S_RES_PRC_HND_DS,'
      '       T170_S_RES_PRC_CLC,'
      '       T170_S_RES_PRC,'
      '       T170_S_PORTF_PRC,'
      '       T170_O_FLAG,'
      '       T170_O_USD_RATE,'
      '       T170_O_711_CNT_SAL,'
      '       T170_O_711_USD_SAL,'
      '       T170_O_NB_CNT_SAL,'
      '       T170_O_NB_USD_SAL,'
      '       T170_O_CNT_SAL,'
      '       T170_O_USD_SAL,'
      '       T170_O_417_CNT,'
      '       T170_O_417_USD,'
      '       T170_O_405_CNT_SAL,'
      '       T170_O_405_PERCENT,'
      '       T170_O_405_USD_SAL,'
      '       T170_O_DR_CNT_SAL,'
      '       T170_O_DR_USD_SAL,'
      '       T170_O_DR_KOEFF,'
      '       T170_O_DR_405_CNT_SAL,'
      '       T170_O_DR_405_USD_SAL,'
      '       T170_O_405_CNT_SAL_C,'
      '       T170_O_405_CNT_SAL_C_PRC,'
      '       T170_O_170_CNT_SAL,'
      '       T170_O_170_USD_SAL,'
      '       T170_O_405_CNT_E,'
      '       T170_O_405_USD_E,'
      '       T170_O_OTH_CNT_E,'
      '       T170_O_OTH_USD_E,'
      '       T170_O_PER_USD,'
      '       T170_E_EMISS_SIZE,'
      '      -- исх.котировки'
      '      T170_E_RATE_BLM,'
      '      T170_E_RATE_BLM_DATE, '
      '      T170_E_RATE_MVB,'
      '      T170_E_RATE_MVB_DATE,'
      '      T170_E_RATE_REU,'
      '      T170_E_RATE_REU_DATE,'
      '      T170_E_RATE_405,'
      '      T170_E_RATE_405_DATE,'
      '      T170_E_RATE_405_CNT,'
      '      T170_E_RATE_417,'
      '      T170_E_RATE_417_DATE,'
      '      T170_E_RATE_417_CNT,'
      '      T170_E_RATE_MOE,'
      '      T170_E_RATE_MOE_DATE,'
      '      T170_E_RATE_711,'
      '      T170_E_RATE_711_DATE,'
      '      T170_E_RATE_711_CNT,'
      '      T170_E_RATE_415,'
      '      T170_E_RATE_415_DATE,'
      '      T170_E_RATE_415_CNT,'
      '      T170_E_RATE_HND,'
      '      -- исх.котировка (цена)'
      '       T170_E_USD_RATE,'
      '       T170_E_711_CNT_REM,'
      '       T170_E_711_USD_REM,'
      '       T170_E_170_711_PRC,'
      '       T170_E_NB_CNT_REM,'
      '       T170_E_NB_USD_REM,'
      '       T170_E_CNT_REM,'
      '       T170_E_USD_REM,'
      '       T170_E_PRC,'
      '       T170_E_170_CNT_REM,'
      '       T170_E_170_USD_REM,'
      '       T170_E_170_EMISS_PRC,'
      '       T170_E_711_CNT_RES,'
      '       T170_E_415_CNT_RES,'
      '       T170_E_PERCENT,'
      '       T170_E_SI_PRC_HND,'
      '       T170_E_SI_PRC_HND_DS,'
      '       T170_E_SI_PRC_SRC,'
      '       T170_E_SI_PRC,'
      '       T170_E_SI_PRC_NR,'
      '       T170_E_RES_PRC_HND,'
      '       T170_E_RES_PRC_HND_DS,'
      '       T170_E_RES_PRC_CLC,'
      '       T170_E_RES_PRC,'
      '       T170_E_PORTF_PRC,'
      '       T170_COMMENTS,'
      '       T170_E_FIXED,'
      '       MARKET_STATUS,'
      '       T030_ID,'
      '       T030_TYPE,'
      '       T170_CHANGED,'
      '       T170_CALC_DATE,'
      '       T170_LOG_DATE,'
      '       T170_LOG_TYPE,'
      '       T170_LOG_USER, '
      '       T170_O_405_SHS3_USD_SAL,'
      '       T170_O_405_SHS3_CNT_SAL,'
      '       T170_O_OTH_CNT_711_405,'
      '       T170_SHORT_NAME,'
      '       T170_INN,'
      '       T170_E_CNT_RATE,'
      '       T170_LOG_FILE_NAME'
      'FROM   V_405_IIPS_SUM'
      'WHERE T027_ID = :T027_ID'
      'AND   T055_ID = :T055_ID'
      'AND   Pk_405_Issuers.f_is_issuer_in_group(:T042_ID, T028_ID) = 1')
    Variables.Data = {
      0300000003000000080000003A543032375F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000080000003A543034
      325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000A000000007000000543032375F494401000000000007000000543035
      355F494401000000000007000000543137305F49440100000000000700000054
      3039345F494401000000000007000000543032385F49440100000000000E0000
      00543032385F53484F545F4E414D4501000000000008000000543032385F494E
      4E01000000000011000000543137305F535F454D4953535F53495A4501000000
      00000F000000543137305F535F5553445F524154450100000000001200000054
      3137305F535F3731315F434E545F52454D01000000000012000000543137305F
      535F3731315F5553445F52454D01000000000012000000543137305F535F3137
      305F3731315F50524301000000000011000000543137305F535F4E425F434E54
      5F52454D01000000000011000000543137305F535F4E425F5553445F52454D01
      00000000000E000000543137305F535F434E545F52454D0100000000000E0000
      00543137305F535F5553445F52454D01000000000012000000543137305F535F
      3137305F434E545F52454D01000000000012000000543137305F535F3137305F
      5553445F52454D01000000000014000000543137305F535F3137305F454D4953
      535F5052430100000000000B000000543137305F4F5F464C4147010000000000
      12000000543137305F4F5F3430355F434E545F53414C01000000000012000000
      543137305F4F5F3430355F5553445F53414C0100000000000F00000054313730
      5F4F5F5553445F5241544501000000000011000000543137305F455F454D4953
      535F53495A450100000000000F000000543137305F455F5553445F5241544501
      000000000012000000543137305F455F3731315F434E545F52454D0100000000
      0012000000543137305F455F3731315F5553445F52454D010000000000120000
      00543137305F455F3137305F3731315F50524301000000000011000000543137
      305F455F4E425F434E545F52454D01000000000011000000543137305F455F4E
      425F5553445F52454D0100000000000E000000543137305F455F434E545F5245
      4D0100000000000E000000543137305F455F5553445F52454D01000000000012
      000000543137305F455F3137305F434E545F52454D0100000000001200000054
      3137305F455F3137305F5553445F52454D01000000000014000000543137305F
      455F3137305F454D4953535F50524301000000000009000000543136375F4E41
      4D450100000000000D000000543136375F45584348414E474501000000000012
      000000543137305F4F5F3731315F434E545F53414C0100000000001200000054
      3137305F4F5F3731315F5553445F53414C01000000000011000000543137305F
      4F5F4E425F434E545F53414C01000000000011000000543137305F4F5F4E425F
      5553445F53414C0100000000000E000000543137305F4F5F434E545F53414C01
      00000000000E000000543137305F4F5F5553445F53414C010000000000120000
      00543137305F4F5F3137305F434E545F53414C01000000000012000000543137
      305F4F5F3137305F5553445F53414C01000000000007000000543033305F4944
      01000000000007000000543033315F494401000000000007000000543032365F
      49440100000000000D000000543032365F5345435F5245474E0100000000000D
      0000004D41524B45545F53544154555301000000000009000000543033305F54
      5950450100000000000E000000543137305F4F5F5045525F5553440100000000
      0014000000543137305F4F5F3430355F434E545F53414C5F4301000000000018
      000000543137305F4F5F3430355F434E545F53414C5F435F5052430100000000
      000D000000543032375F5345435F545950450100000000000A00000054313730
      5F535F5052430100000000000A000000543137305F455F505243010000000000
      10000000543137305F4F5F3430355F434E545F45010000000000100000005431
      37305F4F5F3430355F5553445F450100000000000D000000543137305F434F4D
      4D454E54530100000000000C000000543137305F4348414E4745440100000000
      0010000000543137305F4F5F4F54485F434E545F450100000000001000000054
      3137305F4F5F4F54485F5553445F450100000000000C000000543137305F455F
      464958454401000000000012000000543137305F455F3731315F434E545F5245
      5301000000000012000000543137305F455F3431355F434E545F524553010000
      00000011000000543137305F4F5F44525F434E545F53414C0100000000001100
      0000543137305F4F5F44525F5553445F53414C0100000000000F000000543137
      305F4F5F44525F4B4F45464601000000000015000000543137305F4F5F44525F
      3430355F434E545F53414C01000000000015000000543137305F4F5F44525F34
      30355F5553445F53414C01000000000010000000543032385F524547494F4E5F
      434F444501000000000010000000543032385F524547494F4E5F4E414D450100
      0000000012000000543032385F494E4455535452595F434F4445010000000000
      12000000543032385F494E4455535452595F4E414D450100000000000A000000
      543032385F49434F44450100000000000A000000543032385F494E414D450100
      000000000B000000543032385F46495F534E5301000000000010000000543032
      385F46495F534E535F4445534301000000000012000000543137305F4F5F3430
      355F50455243454E540100000000000F000000543137305F535F524154455F42
      4C4D01000000000014000000543137305F535F524154455F424C4D5F44415445
      0100000000000F000000543137305F535F524154455F4D564201000000000014
      000000543137305F535F524154455F4D56425F444154450100000000000F0000
      00543137305F535F524154455F52455501000000000014000000543137305F53
      5F524154455F5245555F444154450100000000000F000000543137305F535F52
      4154455F34303501000000000014000000543137305F535F524154455F343035
      5F444154450100000000000F000000543137305F535F524154455F3431370100
      0000000014000000543137305F535F524154455F3431375F4441544501000000
      00000F000000543137305F535F524154455F4D4F450100000000001400000054
      3137305F535F524154455F4D4F455F444154450100000000000F000000543137
      305F535F524154455F484E440100000000000F000000543137305F455F524154
      455F424C4D01000000000014000000543137305F455F524154455F424C4D5F44
      4154450100000000000F000000543137305F455F524154455F4D564201000000
      000014000000543137305F455F524154455F4D56425F44415445010000000000
      0F000000543137305F455F524154455F52455501000000000014000000543137
      305F455F524154455F5245555F444154450100000000000F000000543137305F
      455F524154455F34303501000000000014000000543137305F455F524154455F
      3430355F444154450100000000000F000000543137305F455F524154455F3431
      3701000000000014000000543137305F455F524154455F3431375F4441544501
      00000000000F000000543137305F455F524154455F4D4F450100000000001400
      0000543137305F455F524154455F4D4F455F444154450100000000000F000000
      543137305F455F524154455F484E440100000000000F000000543137305F535F
      524154455F34313501000000000014000000543137305F535F524154455F3431
      355F444154450100000000000F000000543137305F455F524154455F34313501
      000000000014000000543137305F455F524154455F3431355F44415445010000
      00000013000000543137305F455F524154455F3430355F434E54010000000000
      13000000543137305F455F524154455F3431355F434E54010000000000130000
      00543137305F535F524154455F3430355F434E54010000000000130000005431
      37305F535F524154455F3431355F434E5401000000000012000000543137305F
      535F3731315F434E545F52455301000000000012000000543137305F535F3431
      355F434E545F5245530100000000000E000000543137305F535F50455243454E
      540100000000000E000000543137305F455F50455243454E540100000000000F
      000000543137305F535F524154455F3731310100000000001400000054313730
      5F535F524154455F3731315F4441544501000000000013000000543137305F53
      5F524154455F3731315F434E540100000000000F000000543137305F455F5241
      54455F37313101000000000014000000543137305F455F524154455F3731315F
      4441544501000000000013000000543137305F455F524154455F3731315F434E
      5401000000000010000000543031305F4953494E5F5452414E534C0100000000
      0013000000543137305F535F524154455F3431375F434E540100000000001300
      0000543137305F455F524154455F3431375F434E540100000000001100000054
      3137305F455F53495F5052435F484E4401000000000011000000543137305F53
      5F53495F5052435F484E4401000000000011000000543137305F535F53495F50
      52435F53524301000000000011000000543137305F455F53495F5052435F5352
      430100000000000D000000543137305F535F53495F5052430100000000001000
      0000543137305F535F53495F5052435F4E520100000000000D00000054313730
      5F455F53495F50524301000000000010000000543137305F455F53495F505243
      5F4E520100000000000E000000543137305F43414C435F444154450100000000
      0014000000543137305F535F53495F5052435F484E445F445301000000000014
      000000543137305F455F53495F5052435F484E445F4453010000000000120000
      00543137305F535F5245535F5052435F484E4401000000000015000000543137
      305F535F5245535F5052435F484E445F44530100000000001200000054313730
      5F535F5245535F5052435F434C430100000000000E000000543137305F535F52
      45535F50524301000000000012000000543137305F455F5245535F5052435F48
      4E4401000000000015000000543137305F455F5245535F5052435F484E445F44
      5301000000000012000000543137305F455F5245535F5052435F434C43010000
      0000000E000000543137305F455F5245535F5052430100000000001000000054
      3137305F535F504F5254465F50524301000000000010000000543137305F455F
      504F5254465F5052430100000000000D000000543137305F4C4F475F44415445
      0100000000000D000000543137305F4C4F475F545950450100000000000D0000
      00543137305F4C4F475F5553455201000000000017000000543137305F4F5F34
      30355F534853335F5553445F53414C01000000000017000000543137305F4F5F
      3430355F534853335F434E545F53414C01000000000016000000543137305F4F
      5F4F54485F434E545F3731315F3430350100000000000F000000543137305F53
      484F52545F4E414D4501000000000008000000543137305F494E4E0100000000
      000F000000543137305F455F434E545F52415445010000000000120000005431
      37305F4C4F475F46494C455F4E414D450100000000000E000000543137305F4F
      5F3431375F434E540100000000000E000000543137305F4F5F3431375F555344
      010000000000}
    Top = 204
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT170_ID: TFloatField
      FieldName = 'T170_ID'
    end
    object odsListT094_ID: TFloatField
      FieldName = 'T094_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT167_NAME: TStringField
      FieldName = 'T167_NAME'
      Size = 5
    end
    object odsListT167_EXCHANGE: TStringField
      FieldName = 'T167_EXCHANGE'
      Size = 2
    end
    object odsListT028_INN: TStringField
      DisplayWidth = 10
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListT170_S_EMISS_SIZE: TFloatField
      FieldName = 'T170_S_EMISS_SIZE'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_S_USD_RATE: TFloatField
      FieldName = 'T170_S_USD_RATE'
      OnGetText = odsList_GetTextRATE
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object odsListT170_S_711_CNT_REM: TFloatField
      FieldName = 'T170_S_711_CNT_REM'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_S_711_USD_REM: TFloatField
      FieldName = 'T170_S_711_USD_REM'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_S_170_711_PRC: TFloatField
      FieldName = 'T170_S_170_711_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT170_S_NB_CNT_REM: TFloatField
      FieldName = 'T170_S_NB_CNT_REM'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_S_NB_USD_REM: TFloatField
      FieldName = 'T170_S_NB_USD_REM'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_S_CNT_REM: TFloatField
      FieldName = 'T170_S_CNT_REM'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_S_USD_REM: TFloatField
      FieldName = 'T170_S_USD_REM'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_S_711_CNT_RES: TFloatField
      FieldName = 'T170_S_711_CNT_RES'
      OnGetText = odsList_GetTextCNT
    end
    object odsListT170_S_415_CNT_RES: TFloatField
      FieldName = 'T170_S_415_CNT_RES'
      OnGetText = odsList_GetTextCNT
    end
    object odsListT170_S_PERCENT: TFloatField
      FieldName = 'T170_S_PERCENT'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_O_FLAG: TStringField
      FieldName = 'T170_O_FLAG'
      Visible = False
      Size = 1
    end
    object odsListT170_S_170_CNT_REM: TFloatField
      FieldName = 'T170_S_170_CNT_REM'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_S_170_USD_REM: TFloatField
      FieldName = 'T170_S_170_USD_REM'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_S_170_EMISS_PRC: TFloatField
      FieldName = 'T170_S_170_EMISS_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT170_O_USD_RATE: TFloatField
      FieldName = 'T170_O_USD_RATE'
      OnGetText = odsList_GetTextRATE
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_O_711_CNT_SAL: TFloatField
      FieldName = 'T170_O_711_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_O_711_USD_SAL: TFloatField
      FieldName = 'T170_O_711_USD_SAL'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_O_NB_CNT_SAL: TFloatField
      FieldName = 'T170_O_NB_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_O_NB_USD_SAL: TFloatField
      FieldName = 'T170_O_NB_USD_SAL'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_O_CNT_SAL: TFloatField
      FieldName = 'T170_O_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_O_USD_SAL: TFloatField
      FieldName = 'T170_O_USD_SAL'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_O_405_CNT_SAL: TFloatField
      FieldName = 'T170_O_405_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_O_405_PERCENT: TFloatField
      FieldName = 'T170_O_405_PERCENT'
      DisplayFormat = '### ### ### ##0.000000'
    end
    object odsListT170_O_405_USD_SAL: TFloatField
      FieldName = 'T170_O_405_USD_SAL'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_O_405_CNT_SAL_C: TFloatField
      FieldName = 'T170_O_405_CNT_SAL_C'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_O_DR_CNT_SAL: TFloatField
      FieldName = 'T170_O_DR_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_O_DR_USD_SAL: TFloatField
      FieldName = 'T170_O_DR_USD_SAL'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_O_DR_KOEFF: TFloatField
      FieldName = 'T170_O_DR_KOEFF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_O_DR_405_CNT_SAL: TFloatField
      FieldName = 'T170_O_DR_405_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_O_DR_405_USD_SAL: TFloatField
      FieldName = 'T170_O_DR_405_USD_SAL'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_O_405_CNT_E: TFloatField
      FieldName = 'T170_O_405_CNT_E'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
      EditFormat = '###########0'
    end
    object odsListT170_O_405_CNT_SAL_C_PRC: TFloatField
      FieldName = 'T170_O_405_CNT_SAL_C_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT170_O_405_USD_E: TFloatField
      FieldName = 'T170_O_405_USD_E'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object odsListT170_O_170_CNT_SAL: TFloatField
      FieldName = 'T170_O_170_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_O_170_USD_SAL: TFloatField
      FieldName = 'T170_O_170_USD_SAL'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_O_OTH_CNT_E: TFloatField
      FieldName = 'T170_O_OTH_CNT_E'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
      EditFormat = '###########0'
    end
    object odsListT170_O_OTH_USD_E: TFloatField
      FieldName = 'T170_O_OTH_USD_E'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object odsListT170_O_PER_USD: TFloatField
      FieldName = 'T170_O_PER_USD'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_E_EMISS_SIZE: TFloatField
      FieldName = 'T170_E_EMISS_SIZE'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_E_USD_RATE: TFloatField
      FieldName = 'T170_E_USD_RATE'
      OnGetText = odsList_GetTextRATE
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object odsListT170_E_711_CNT_REM: TFloatField
      FieldName = 'T170_E_711_CNT_REM'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_E_711_USD_REM: TFloatField
      FieldName = 'T170_E_711_USD_REM'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_E_170_711_PRC: TFloatField
      FieldName = 'T170_E_170_711_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT170_E_NB_CNT_REM: TFloatField
      FieldName = 'T170_E_NB_CNT_REM'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_E_NB_USD_REM: TFloatField
      FieldName = 'T170_E_NB_USD_REM'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_E_USD_REM: TFloatField
      FieldName = 'T170_E_USD_REM'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_E_CNT_REM: TFloatField
      FieldName = 'T170_E_CNT_REM'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_E_170_CNT_REM: TFloatField
      FieldName = 'T170_E_170_CNT_REM'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_E_170_USD_REM: TFloatField
      FieldName = 'T170_E_170_USD_REM'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT170_E_170_EMISS_PRC: TFloatField
      FieldName = 'T170_E_170_EMISS_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT170_E_711_CNT_RES: TFloatField
      FieldName = 'T170_E_711_CNT_RES'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_E_415_CNT_RES: TFloatField
      FieldName = 'T170_E_415_CNT_RES'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT170_E_PERCENT: TFloatField
      FieldName = 'T170_E_PERCENT'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_COMMENTS: TStringField
      FieldName = 'T170_COMMENTS'
      Size = 255
    end
    object odsListT170_E_FIXED: TStringField
      FieldName = 'T170_E_FIXED'
      Size = 1
    end
    object odsListMARKET_STATUS: TStringField
      FieldName = 'MARKET_STATUS'
      Size = 255
    end
    object odsListT030_TYPE: TStringField
      FieldName = 'T030_TYPE'
      Size = 13
    end
    object odsListT170_S_PRC: TFloatField
      FieldName = 'T170_S_PRC'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT170_E_PRC: TFloatField
      FieldName = 'T170_E_PRC'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT031_ID: TFloatField
      FieldName = 'T031_ID'
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT170_CHANGED: TStringField
      FieldName = 'T170_CHANGED'
      Size = 1
    end
    object odsListT028_REGION_CODE: TFloatField
      FieldName = 'T028_REGION_CODE'
    end
    object odsListT028_REGION_NAME: TStringField
      FieldName = 'T028_REGION_NAME'
      Size = 250
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT028_INDUSTRY_NAME: TStringField
      FieldName = 'T028_INDUSTRY_NAME'
      Size = 255
    end
    object odsListT028_ICODE: TStringField
      FieldName = 'T028_ICODE'
      Size = 3
    end
    object odsListT028_INAME: TStringField
      FieldName = 'T028_INAME'
      Size = 255
    end
    object odsListT028_FI_SNS: TStringField
      FieldName = 'T028_FI_SNS'
      Size = 1
    end
    object odsListT028_FI_SNS_DESC: TStringField
      FieldName = 'T028_FI_SNS_DESC'
      Size = 5
    end
    object odsListT170_S_RATE_BLM: TFloatField
      FieldName = 'T170_S_RATE_BLM'
      OnGetText = odsList_GetTextRATE
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.000'
    end
    object odsListT170_S_RATE_BLM_DATE: TDateTimeField
      FieldName = 'T170_S_RATE_BLM_DATE'
    end
    object odsListT170_S_RATE_MVB: TFloatField
      FieldName = 'T170_S_RATE_MVB'
      OnGetText = odsList_GetTextRATE
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.000'
    end
    object odsListT170_S_RATE_MVB_DATE: TDateTimeField
      FieldName = 'T170_S_RATE_MVB_DATE'
    end
    object odsListT170_S_RATE_REU: TFloatField
      FieldName = 'T170_S_RATE_REU'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_S_RATE_REU_DATE: TDateTimeField
      FieldName = 'T170_S_RATE_REU_DATE'
    end
    object odsListT170_S_RATE_405: TFloatField
      FieldName = 'T170_S_RATE_405'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_S_RATE_405_DATE: TDateTimeField
      FieldName = 'T170_S_RATE_405_DATE'
    end
    object odsListT170_S_RATE_405_CNT: TFloatField
      FieldName = 'T170_S_RATE_405_CNT'
    end
    object odsListT170_S_RATE_417: TFloatField
      FieldName = 'T170_S_RATE_417'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_S_RATE_417_DATE: TDateTimeField
      FieldName = 'T170_S_RATE_417_DATE'
    end
    object odsListT170_S_RATE_MOE: TFloatField
      FieldName = 'T170_S_RATE_MOE'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_S_RATE_MOE_DATE: TDateTimeField
      FieldName = 'T170_S_RATE_MOE_DATE'
    end
    object odsListT170_S_RATE_415: TFloatField
      FieldName = 'T170_S_RATE_415'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_S_RATE_415_DATE: TDateTimeField
      FieldName = 'T170_S_RATE_415_DATE'
    end
    object odsListT170_S_RATE_415_CNT: TFloatField
      FieldName = 'T170_S_RATE_415_CNT'
    end
    object odsListT170_S_RATE_HND: TFloatField
      FieldName = 'T170_S_RATE_HND'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_E_RATE_BLM: TFloatField
      FieldName = 'T170_E_RATE_BLM'
      OnGetText = odsList_GetTextRATE
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.000'
    end
    object odsListT170_E_RATE_BLM_DATE: TDateTimeField
      FieldName = 'T170_E_RATE_BLM_DATE'
    end
    object odsListT170_E_RATE_MVB: TFloatField
      FieldName = 'T170_E_RATE_MVB'
      OnGetText = odsList_GetTextRATE
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.000'
    end
    object odsListT170_E_RATE_MVB_DATE: TDateTimeField
      FieldName = 'T170_E_RATE_MVB_DATE'
    end
    object odsListT170_E_RATE_REU: TFloatField
      FieldName = 'T170_E_RATE_REU'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_E_RATE_REU_DATE: TDateTimeField
      FieldName = 'T170_E_RATE_REU_DATE'
    end
    object odsListT170_E_RATE_405: TFloatField
      FieldName = 'T170_E_RATE_405'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_E_RATE_405_DATE: TDateTimeField
      FieldName = 'T170_E_RATE_405_DATE'
    end
    object odsListT170_E_RATE_405_CNT: TFloatField
      FieldName = 'T170_E_RATE_405_CNT'
    end
    object odsListT170_E_RATE_417: TFloatField
      FieldName = 'T170_E_RATE_417'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_E_RATE_417_DATE: TDateTimeField
      FieldName = 'T170_E_RATE_417_DATE'
    end
    object odsListT170_E_RATE_MOE: TFloatField
      FieldName = 'T170_E_RATE_MOE'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_E_RATE_MOE_DATE: TDateTimeField
      FieldName = 'T170_E_RATE_MOE_DATE'
    end
    object odsListT170_E_RATE_HND: TFloatField
      FieldName = 'T170_E_RATE_HND'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_E_RATE_415: TFloatField
      FieldName = 'T170_E_RATE_415'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_E_RATE_415_DATE: TDateTimeField
      FieldName = 'T170_E_RATE_415_DATE'
    end
    object odsListT170_E_RATE_415_CNT: TFloatField
      FieldName = 'T170_E_RATE_415_CNT'
    end
    object odsListT170_S_RATE_711: TFloatField
      FieldName = 'T170_S_RATE_711'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_S_RATE_711_DATE: TDateTimeField
      FieldName = 'T170_S_RATE_711_DATE'
    end
    object odsListT170_S_RATE_711_CNT: TFloatField
      FieldName = 'T170_S_RATE_711_CNT'
    end
    object odsListT170_E_RATE_711: TFloatField
      FieldName = 'T170_E_RATE_711'
      OnGetText = odsList_GetTextRATE
    end
    object odsListT170_E_RATE_711_DATE: TDateTimeField
      FieldName = 'T170_E_RATE_711_DATE'
    end
    object odsListT170_E_RATE_711_CNT: TFloatField
      FieldName = 'T170_E_RATE_711_CNT'
    end
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Size = 255
    end
    object odsListT170_S_RATE_417_CNT: TFloatField
      FieldName = 'T170_S_RATE_417_CNT'
    end
    object odsListT170_E_RATE_417_CNT: TFloatField
      FieldName = 'T170_E_RATE_417_CNT'
    end
    object odsListT170_E_SI_PRC_HND: TFloatField
      FieldName = 'T170_E_SI_PRC_HND'
    end
    object odsListT170_S_SI_PRC_HND: TFloatField
      FieldName = 'T170_S_SI_PRC_HND'
    end
    object odsListT170_S_SI_PRC_SRC: TFloatField
      FieldName = 'T170_S_SI_PRC_SRC'
    end
    object odsListT170_E_SI_PRC_SRC: TFloatField
      FieldName = 'T170_E_SI_PRC_SRC'
    end
    object odsListT170_S_SI_PRC: TFloatField
      FieldName = 'T170_S_SI_PRC'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_S_SI_PRC_NR: TFloatField
      FieldName = 'T170_S_SI_PRC_NR'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_E_SI_PRC: TFloatField
      FieldName = 'T170_E_SI_PRC'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_E_SI_PRC_NR: TFloatField
      FieldName = 'T170_E_SI_PRC_NR'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_CALC_DATE: TDateTimeField
      FieldName = 'T170_CALC_DATE'
    end
    object odsListT170_S_SI_PRC_HND_DS: TStringField
      FieldName = 'T170_S_SI_PRC_HND_DS'
      Size = 255
    end
    object odsListT170_E_SI_PRC_HND_DS: TStringField
      FieldName = 'T170_E_SI_PRC_HND_DS'
      Size = 255
    end
    object odsListT170_S_RES_PRC_HND: TFloatField
      FieldName = 'T170_S_RES_PRC_HND'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_S_RES_PRC_HND_DS: TStringField
      FieldName = 'T170_S_RES_PRC_HND_DS'
      Size = 255
    end
    object odsListT170_S_RES_PRC_CLC: TFloatField
      FieldName = 'T170_S_RES_PRC_CLC'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_S_RES_PRC: TFloatField
      FieldName = 'T170_S_RES_PRC'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_E_RES_PRC_HND: TFloatField
      FieldName = 'T170_E_RES_PRC_HND'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_E_RES_PRC_HND_DS: TStringField
      FieldName = 'T170_E_RES_PRC_HND_DS'
      Size = 255
    end
    object odsListT170_E_RES_PRC_CLC: TFloatField
      FieldName = 'T170_E_RES_PRC_CLC'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_E_RES_PRC: TFloatField
      FieldName = 'T170_E_RES_PRC'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_S_PORTF_PRC: TFloatField
      FieldName = 'T170_S_PORTF_PRC'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_E_PORTF_PRC: TFloatField
      FieldName = 'T170_E_PORTF_PRC'
      OnGetText = odsList_GetTextPRC
    end
    object odsListT170_LOG_DATE: TDateTimeField
      FieldName = 'T170_LOG_DATE'
    end
    object odsListT170_LOG_TYPE: TStringField
      FieldName = 'T170_LOG_TYPE'
      Size = 1
    end
    object odsListT170_LOG_USER: TStringField
      FieldName = 'T170_LOG_USER'
      Size = 255
    end
    object odsListT170_O_405_SHS3_USD_SAL: TFloatField
      FieldName = 'T170_O_405_SHS3_USD_SAL'
    end
    object odsListT170_O_405_SHS3_CNT_SAL: TFloatField
      FieldName = 'T170_O_405_SHS3_CNT_SAL'
    end
    object odsListT170_O_OTH_CNT_711_405: TFloatField
      FieldName = 'T170_O_OTH_CNT_711_405'
    end
    object odsListT170_SHORT_NAME: TStringField
      FieldName = 'T170_SHORT_NAME'
      Size = 255
    end
    object odsListT170_INN: TStringField
      FieldName = 'T170_INN'
      Size = 25
    end
    object odsListT170_E_CNT_RATE: TFloatField
      FieldName = 'T170_E_CNT_RATE'
    end
    object odsListT170_LOG_FILE_NAME: TStringField
      FieldName = 'T170_LOG_FILE_NAME'
      Size = 255
    end
    object odsListT170_O_417_CNT: TFloatField
      FieldName = 'T170_O_417_CNT'
      OnGetText = odsList_GetTextCNT
      OnSetText = odsList_SetText
    end
    object odsListT170_O_417_USD: TFloatField
      FieldName = 'T170_O_417_USD'
      OnGetText = odsList_GetTextUSD
      OnSetText = odsList_SetText
    end
  end
  inherited PopupMenu: TPopupMenu
    OnPopup = PopupMenuPopup
    Left = 72
    Top = 255
    inherited mi02: TMenuItem
      OnClick = mi02Click
    end
    object N16: TMenuItem [3]
      Caption = '-'
    end
    object miDetails: TMenuItem [4]
      Action = actSiDetails
    end
  end
  inherited oqAdd: TOracleQuery
    Left = 247
    Top = 247
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_SHS_IIP.p_update_row('
      '    i_T170_ID            => :T170_ID,'
      '    i_T170_S_USD_RATE    => :T170_S_USD_RATE,'
      '    i_T170_S_170_CNT_REM => :T170_S_170_CNT_REM, -- вх. шт'
      '    i_T170_S_170_USD_REM => :T170_S_170_USD_REM, -- вх. $'
      '    i_T170_O_USD_RATE    => :T170_O_USD_RATE,'
      
        '    i_T170_O_405_CNT_E   => :T170_O_405_CNT_E,   -- операции кор' +
        'р. шт'
      
        '    i_T170_O_405_USD_E   => :T170_O_405_USD_E,   -- операции кор' +
        'р. $'
      
        '    i_T170_O_170_CNT_SAL => :T170_O_170_CNT_SAL, -- операции МИП' +
        ' шт '
      
        '    i_T170_O_170_USD_SAL => :T170_O_170_USD_SAL, -- операции МИП' +
        ' $'
      '    i_T170_O_OTH_CNT_E   => :T170_O_OTH_CNT_E,   -- прочие шт'
      '    i_T170_O_OTH_USD_E   => :T170_O_OTH_USD_E,   -- прочие $'
      '    i_T170_O_PER_USD     => :T170_O_PER_USD,     -- переоценка $'
      '    i_T170_E_USD_RATE    => :T170_E_USD_RATE,'
      '    i_T170_E_170_CNT_REM => :T170_E_170_CNT_REM, -- исх. шт '
      '    i_T170_E_170_USD_REM => :T170_E_170_USD_REM, -- исх. $'
      '    i_T170_COMMENTS      => :T170_COMMENTS,'
      
        '    i_T170_E_FIXED       => :T170_E_FIXED,       -- замок на исх' +
        '. (Y/N)'
      '    i_T170_LOG_USER      => :T170_LOG_USER'
      '     );'
      'end;')
    Variables.Data = {
      0300000012000000080000003A543137305F4944040000000000000000000000
      100000003A543137305F535F5553445F52415445040000000000000000000000
      100000003A543137305F455F5553445F52415445040000000000000000000000
      110000003A543137305F4F5F3430355F434E545F450400000000000000000000
      00110000003A543137305F4F5F3430355F5553445F4504000000000000000000
      0000100000003A543137305F4F5F5553445F5241544504000000000000000000
      00000F0000003A543137305F4F5F5045525F5553440400000000000000000000
      000E0000003A543137305F434F4D4D454E545305000000000000000000000011
      0000003A543137305F4F5F4F54485F434E545F45040000000000000000000000
      110000003A543137305F4F5F4F54485F5553445F450400000000000000000000
      00130000003A543137305F4F5F3137305F434E545F53414C0400000000000000
      00000000130000003A543137305F4F5F3137305F5553445F53414C0400000000
      00000000000000130000003A543137305F535F3137305F5553445F52454D0400
      00000000000000000000130000003A543137305F455F3137305F5553445F5245
      4D040000000000000000000000130000003A543137305F535F3137305F434E54
      5F52454D050000000000000000000000130000003A543137305F455F3137305F
      434E545F52454D0500000000000000000000000D0000003A543137305F455F46
      495845440500000000000000000000000E0000003A543137305F4C4F475F5553
      4552050000000000000000000000}
    Top = 247
  end
  inherited oqDelete: TOracleQuery
    Left = 311
    Top = 246
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 177
    Top = 249
  end
  inherited pmFilter: TPopupMenu
    Left = 360
    Top = 184
  end
  object oqCheckCalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  PK_405_SHS_IIP.P_CHECK_CALCULATION (:I_T027_ID, :I_T055_ID, :I' +
        '_USER );'
      '  COMMIT; '
      'END;  ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000030000000A0000003A495F543032375F494404000000000000000000
      00000A0000003A495F543035355F494404000000000000000000000007000000
      3A495F55534552050000000000000000000000}
    Left = 248
    Top = 327
  end
  object oqGetMonth: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  PK_405_SHS_IIP.P_GET_MONTHS ( :I_T055_ID, :O_T055_S_ID, :O_T05' +
        '5_E_ID, :START_DATE, :END_DATE );'
      'END;  '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000050000000A0000003A495F543035355F494404000000000000000000
      00000C0000003A4F5F543035355F535F49440400000000000000000000000C00
      00003A4F5F543035355F455F4944040000000000000000000000090000003A45
      4E445F444154450C00000000000000000000000B0000003A53544152545F4441
      54450C0000000000000000000000}
    Left = 318
    Top = 327
  end
  object oqDoCalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  PK_405_SHS_IIP.p_do_calculation (:I_T027_ID, :I_T055_ID, :I_T0' +
        '30_ID, :I_USER );'
      '  COMMIT; '
      'END;  ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000040000000A0000003A495F543032375F494404000000000000000000
      00000A0000003A495F543035355F494404000000000000000000000007000000
      3A495F555345520500000000000000000000000A0000003A495F543033305F49
      44040000000000000000000000}
    Cursor = crHourGlass
    Left = 281
    Top = 328
  end
  object MenuJumps: TPopupMenu
    Images = dmPicters.ilCommonPictures
    Left = 584
    object N4051: TMenuItem
      Action = actGoTo405
    end
    object N7111: TMenuItem
      Action = actGoTo711
    end
    object N1: TMenuItem
      Action = actGoToND
    end
    object N417: TMenuItem
      Action = actGoTo417
    end
    object NIssuer: TMenuItem
      Action = actGoToIssuers
    end
    object NEmissions: TMenuItem
      Action = actGoToEmissions
    end
  end
  object oqSaveCheck: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_405_SHS_IIP.p_set_block(:T170_ID, :T170_E_FIXED);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543137305F4944040000000000000000000000
      0D0000003A543137305F455F4649584544050000000000000000000000}
    Left = 424
    Top = 248
  end
  object MenuCheck: TPopupMenu
    Images = dmPicters.ilCommonPictures
    Left = 496
    object N2: TMenuItem
      Action = actCheckAll
    end
    object N4: TMenuItem
      Action = actCheckSelected
    end
    object N3: TMenuItem
      Action = actUncheckAll
    end
    object N5: TMenuItem
      Action = actUncheckSelected
    end
  end
  object MenuCalc: TPopupMenu
    Images = dmPicters.ilCommonPictures
    Left = 536
    object N6: TMenuItem
      Action = actRecalcActive
    end
    object N7: TMenuItem
      Action = actRecalcSelected
    end
    object N10: TMenuItem
      Action = actRecalcAll
    end
  end
  object MenuLoadRates: TPopupMenu
    Images = dmPicters.ilCommonPictures
    Left = 640
    object MenuItem1: TMenuItem
      Action = actRatesLoadCurrent
    end
    object MenuItem2: TMenuItem
      Action = actRatesLoadSelected
    end
    object MenuItem3: TMenuItem
      Action = actRatesLoadAll
    end
  end
  object oqSaveRates: TOracleQuery
    SQL.Strings = (
      'begin'
      '  DPB_405_BOSS.PK_405_SHS_IIP.P_CALC_RATE_1 ('
      '    :ISIN,'
      '    :TICKER,'
      '    :EXCH_CODE,'
      '    :T030_ID,'
      '    :T055_ID_S,'
      '    :T055_ID_E'
      '  );'
      'end;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000060000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F4504000000000000000000000005000000
      3A4953494E050000000000000000000000070000003A5449434B455205000000
      00000000000000000A0000003A455843485F434F444505000000000000000000
      0000080000003A543033305F4944040000000000000000000000}
    Left = 512
    Top = 248
  end
  object odsDates: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_START_DATE,'
      '       T055_END_DATE'
      'FROM   V_405_TIME'
      'WHERE T055_ID = :T055_ID')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    Session = dmMain.OracleSession
    Left = 424
    Top = 280
  end
  object oqSaveEmissSize: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_SHS_IIP.p_Save_Emiss_Size(:ISIN, :T055_ID, :USER);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000050000003A4953494E050000000000000000000000080000
      003A543035355F4944040000000000000000000000050000003A555345520500
      00000000000000000000}
    Left = 472
    Top = 248
  end
  object oqSetRate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_SHS_IIP.p_set_rate(:T170_ID, :RATE_VALUE, :USER);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A543137305F4944040000000000000000000000
      0B0000003A524154455F56414C5545040000000000000000000000050000003A
      55534552050000000000000000000000}
    Left = 560
    Top = 248
  end
  object oqGetRates: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_405_SHS_IIP.p_get_rates(:T170_ID, :ISIN, :END_DATE, :RATE_S' +
        'OURCE);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000080000003A543137305F4944050000000000000000000000
      0C0000003A524154455F534F5552434505000000000000000000000005000000
      3A4953494E050000000000000000000000090000003A454E445F444154450C00
      00000000000000000000}
    Left = 424
    Top = 312
  end
  object oqCalcLight: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_405_SHS_IIP.p_calc_light(:T170_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543137305F4944040000000000000000000000}
    Left = 464
    Top = 312
  end
  object oqSetInvPart: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_405_SHS_IIP.p_set_pi_percent(:T170_ID, :VALUE, :DATA_SOURCE' +
        ', :USER, :INV_TYPE);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000005000000080000003A543137305F4944040000000000000000000000
      060000003A56414C5545040000000000000000000000050000003A5553455205
      00000000000000000000000C0000003A444154415F534F555243450500000000
      00000000000000090000003A494E565F54595045040000000000000000000000}
    Left = 600
    Top = 248
  end
  object oqSiData: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  PK_405_SHS_IIP.p_update_si_data(:T170_ID, :ISIN, :END_DATE, :U' +
        'SER);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000080000003A543137305F4944040000000000000000000000
      050000003A4953494E050000000000000000000000090000003A454E445F4441
      54450C0000000000000000000000050000003A55534552050000000000000000
      000000}
    Left = 640
    Top = 248
  end
end
