inherited C001_OpersByDate: TC001_OpersByDate
  Left = 221
  Top = 284
  Width = 1127
  Height = 677
  ActiveControl = nil
  Caption = 'Отчеты банков'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1116
    Top = 123
    Height = 471
  end
  inherited paRight: TPanel
    Left = 1119
    Top = 123
    Height = 471
  end
  inherited paMain: TPanel
    Top = 123
    Width = 1116
    Height = 471
    inherited ToolBar2: TToolBar
      Width = 1116
      ButtonWidth = 108
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 518
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        Enabled = False
        ImageIndex = 4
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 526
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        Enabled = False
        ImageIndex = 12
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 534
        Top = 0
        Action = actSetInvStraight
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 607
        Top = 0
        Action = actSetInvCase
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 709
        Top = 0
        Action = actSetInvNoCount
        AutoSize = True
      end
      object ToolButton11: TToolButton
        Left = 809
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        Enabled = False
        ImageIndex = 3
        Style = tbsSeparator
        Visible = False
      end
      object tbInfo: TToolButton
        Left = 817
        Top = 0
        Action = actInfo
      end
      object ToolButton7: TToolButton
        Left = 925
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 22
        Style = tbsSeparator
      end
      object ToolButton14: TToolButton
        Left = 933
        Top = 0
        Action = actGoTo417
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 88
      Width = 1116
      Height = 296
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 5
              LastCol = 30
              Caption = 'Параметры расчетов по операциям с ценными бумагами'
            end
            item
              FirstCol = 31
              LastCol = 47
              Caption = 'Характеристика ценной бумаги - по главной эмиссии'
            end
            item
              FirstCol = 73
              LastCol = 76
              Caption = 'Контрагент '
            end>
        end
        item
          Headers = <
            item
              FirstCol = 13
              LastCol = 16
              Caption = 'Сумма платежа'
            end
            item
              FirstCol = 17
              LastCol = 26
              Caption = 'Резидент - Главный'
            end
            item
              FirstCol = 27
              LastCol = 30
              Caption = 'Нерезидент - Главный'
            end
            item
              FirstCol = 31
              LastCol = 41
              Caption = 'Эмитент - Главный'
            end
            item
              FirstCol = 73
              LastCol = 74
              Caption = 'Банк-нерезидента'
            end
            item
              FirstCol = 75
              LastCol = 76
              Caption = 'Нерезидент'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T001_ROW_PRFX'
          PickList.Strings = ()
          Title.Caption = '№ раз.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_CODE'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер КО'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_ROW_NUM'
          PickList.Strings = ()
          Title.Caption = 'Стр.'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          PickList.Strings = ()
          Title.Caption = 'Отчетный период'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OP'
          PickList.Strings = ()
          Title.Caption = 'Дата операции'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T011_TYPE_ID'
          PickList.Strings = ()
          Title.Caption = 'Код опер.'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_NAME'
          PickList.Strings = ()
          Title.Caption = 'Код н. пл.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во бумаг'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_PERCENT'
          PickList.Strings = ()
          Title.Caption = 'Доля'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_MODIF'
          PickList.Strings = ()
          Title.Caption = 'Цена (в $)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_RATE'
          PickList.Strings = ()
          Title.Caption = 'Биржевая цена (в $)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_RATE_DELTA'
          PickList.Strings = ()
          Title.Caption = 'Расхождение (в %)'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_CR_DESC'
          PickList.Strings = ()
          Title.Caption = 'Код вал. плат.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM'
          PickList.Strings = ()
          Title.Caption = 'Всего'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC'
          PickList.Strings = ()
          Title.Caption = 'Проценты'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Проценты ($)'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_NAME'
          PickList.Strings = ()
          Title.Caption = 'Резидент'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_CO_ID'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Фиктивный'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_REGION_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код региона'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_REGION_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наим. региона'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_INDUSTRY_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код отрасли'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_INDUSTRY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наим. отрасли'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FI_SNS_DESC'
          PickList.Strings = ()
          Title.Caption = 'ФО'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FI_PB_DESC'
          PickList.Strings = ()
          Title.Caption = 'ФП'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_NAME'
          PickList.Strings = ()
          Title.Caption = 'Нерезидент'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_COUNTRY'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Фиктивный'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 53
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
          Title.Caption = 'Наим. региона'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код отрасли'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наим. отрасли'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_ICODE'
          PickList.Strings = ()
          Title.Caption = 'Код отрасли МЕЖД.'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INAME'
          PickList.Strings = ()
          Title.Caption = 'Наим. отрасли МЕЖД.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_FI_SNS_DESC'
          PickList.Strings = ()
          Title.Caption = 'ФО'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_FI_PB_DESC'
          PickList.Strings = ()
          Title.Caption = 'ФП'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REG_NUM'
          PickList.Strings = ()
          Title.Caption = 'Регистр. номер'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_TYPE_ID'
          PickList.Strings = ()
          Title.Caption = 'Код типа ц.б.'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_ON'
          PickList.Strings = ()
          Title.Caption = 'Дата регистр.'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OFF'
          PickList.Strings = ()
          Title.Caption = 'Дата погашения'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_SEC_DESC'
          PickList.Strings = ()
          Title.Caption = 'Срочность'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_CR_DESC'
          PickList.Strings = ()
          Title.Caption = 'Код валюты ц.б.'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N8'
          PickList.Strings = ()
          Title.Caption = 'МЕНА'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N9'
          PickList.Strings = ()
          Title.Caption = 'РАССРОЧКА'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_10'
          PickList.Strings = ()
          Title.Caption = 'ПАКЕТ'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_11'
          PickList.Strings = ()
          Title.Caption = 'БРОКЕР'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N99'
          PickList.Strings = ()
          Title.Caption = 'ИМУЩЕСТВО'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OWN_EMISSION'
          PickList.Strings = ()
          Title.Caption = 'СОБСТВ. БУМ.'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Комментарий'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_IS_RANSOM'
          PickList.Strings = ()
          Title.Caption = 'Выкуп эмитентом'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_PART_ID'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_ID'
          PickList.Strings = ()
          Title.Caption = 'Код операции'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          PickList.Strings = ()
          Title.Caption = 'Отчетный период'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_CODE'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер КО'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование КО'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_ID'
          PickList.Strings = ()
          Title.Caption = 'Код операции'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T030_ID'
          PickList.Strings = ()
          Title.Caption = 'Код эмиссии'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_ID'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T012_ID'
          PickList.Strings = ()
          Title.Caption = 'Код резидента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T013_ID'
          PickList.Strings = ()
          Title.Caption = 'Код нерезидента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          PickList.Strings = ()
          Title.Caption = 'Код даты операции'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_YEAR_OP'
          PickList.Strings = ()
          Title.Caption = 'Год'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OP_MONTH'
          PickList.Strings = ()
          Title.Caption = 'Месяц'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T035_NAME'
          PickList.Strings = ()
          Title.Caption = 'Фиктив.'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_RUB'
          PickList.Strings = ()
          Title.Caption = 'Цена (в руб.)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_DIRECTION_DESC'
          PickList.Strings = ()
          Title.Caption = 'Направление'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_MOD_OP_SUM_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Сумма платежа (в млн. $)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C11'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C12'
          PickList.Strings = ()
          Title.Caption = 'Код страны'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C16'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C17'
          PickList.Strings = ()
          Title.Caption = 'Код страны'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C18'
          PickList.Strings = ()
          Title.Caption = 'BIC уполномоченного банка'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C19'
          PickList.Strings = ()
          Title.Caption = 'SWIFT банка-нерезидента'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C20'
          PickList.Strings = ()
          Title.Caption = 'Цифр. код страны банка-нерезидента'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_ID'
          PickList.Strings = ()
          Title.Caption = 'ID кода операции'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          PickList.Strings = ()
          Title.Caption = 'ID типа ценной бумаги'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID_1'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б. 1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PAY_ID'
          PickList.Strings = ()
          Title.Caption = 'ID напр. платежа'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T030_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = 'Код главной эмиссии'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = 'Код главного эмитента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН эмитента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T012_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = 'Код главного резидента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T013_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = 'Код главного нерезидента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_INV_TYPE_DESCR'
          PickList.Strings = ()
          Title.Caption = 'Тип инвестирования'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_INV_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип инвестиций_1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_PROCESSED_DESC'
          PickList.Strings = ()
          Title.Caption = 'К учёту (Участие нерез.)'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_ID'
          PickList.Strings = ()
          Title.Caption = 'Код направления платежа'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_REPO_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип РЕПО'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DPB_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Комментарий ДПБ'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_DIRECTION'
          PickList.Strings = ()
          Title.Caption = 'Код направления'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_REMAINS_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Код типа остатков'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T035_ID'
          PickList.Strings = ()
          Title.Caption = 'Код фиктивности'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T013_REAL_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = 'Код только главного нерезидента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Код типа резидента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T012_REAL_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = 'Код только главного резидента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IIP_SHS_FLAG'
          PickList.Strings = ()
          Title.Caption = 'Вкл. в расч IIP SHS3,SHS4'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REPO_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата РЕПО'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_COMMENTS'
          PickList.Strings = ()
          Title.Caption = 'Примечание ДС'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C22'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C22_NAME'
          PickList.Strings = ()
          Title.Caption = 'Вид валютной операции'
          Width = 255
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_HEADER_ID'
          PickList.Strings = ()
          Title.Caption = 'Код отчетного периода'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 46
      Width = 1116
      inherited Panel1: TPanel
        Left = 1089
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 67
      Width = 1116
      TabOrder = 4
      inherited Panel1: TPanel
        Left = 1089
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 384
      Width = 1116
      Height = 87
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object Label2: TLabel
        Left = 6
        Top = 24
        Width = 40
        Height = 13
        Caption = 'Строк:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 327
        Top = 23
        Width = 58
        Height = 13
        Caption = 'В Россию'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 56
        Top = 24
        Width = 75
        Height = 17
        DataField = 'COUNT_STR'
        DataSource = dsCount
      end
      object Label3: TLabel
        Left = 327
        Top = 46
        Width = 64
        Height = 13
        Caption = 'Из России'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 327
        Top = 69
        Width = 44
        Height = 13
        Caption = 'Сальдо'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 394
        Top = 3
        Width = 55
        Height = 13
        Caption = 'Всего ($)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 618
        Top = 3
        Width = 67
        Height = 13
        Caption = 'Кол-во ц.б.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 506
        Top = 3
        Width = 79
        Height = 13
        Caption = 'Проценты ($)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTime: TLabel
        Left = 56
        Top = 44
        Width = 31
        Height = 13
        Caption = 'lbTime'
      end
      object Label9: TLabel
        Left = 6
        Top = 44
        Width = 43
        Height = 13
        Caption = 'Время:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 730
        Top = 3
        Width = 50
        Height = 13
        Caption = 'Цена ($)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit3: TDBEdit
        Left = 394
        Top = 20
        Width = 110
        Height = 21
        Hint = 'Сумма платежа'
        Color = clBtnFace
        DataField = 'SUM_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 506
        Top = 20
        Width = 110
        Height = 21
        Hint = 'Сумма платежа'
        Color = clBtnFace
        DataField = 'PROC_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 394
        Top = 43
        Width = 110
        Height = 21
        Hint = 'Сумма платежа'
        Color = clBtnFace
        DataField = 'SUM_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 506
        Top = 43
        Width = 110
        Height = 21
        Hint = 'Сумма платежа'
        Color = clBtnFace
        DataField = 'PROC_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 394
        Top = 66
        Width = 110
        Height = 21
        Hint = 'Сумма платежа'
        Color = clBtnFace
        DataField = 'SUM_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 506
        Top = 66
        Width = 110
        Height = 21
        Hint = 'Сумма платежа'
        Color = clBtnFace
        DataField = 'PROC_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 618
        Top = 20
        Width = 110
        Height = 21
        Hint = 'Кол-во ценных бумаг'
        Color = clBtnFace
        DataField = 'COUNT_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 618
        Top = 43
        Width = 110
        Height = 21
        Hint = 'Кол-во ценных бумаг'
        Color = clBtnFace
        DataField = 'COUNT_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 618
        Top = 66
        Width = 110
        Height = 21
        Hint = 'Кол-во ценных бумаг'
        Color = clBtnFace
        DataField = 'COUNT_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 730
        Top = 20
        Width = 110
        Height = 21
        Hint = 'Цена ценных бумаг'
        Color = clBtnFace
        DataField = 'PRICE_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 730
        Top = 43
        Width = 110
        Height = 21
        Hint = 'Цена ценных бумаг'
        Color = clBtnFace
        DataField = 'PRICE_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 10
      end
      object DBEdit12: TDBEdit
        Left = 730
        Top = 66
        Width = 110
        Height = 21
        Hint = 'Цена ценных бумаг'
        Color = clBtnFace
        DataField = 'PRICE_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 11
      end
      object cbRes: TCheckBox
        Left = 6
        Top = 4
        Width = 107
        Height = 17
        Caption = 'Считать итоги'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = cbResClick
      end
    end
    object ToolBar3: TToolBar
      Left = 0
      Top = 23
      Width = 1116
      Height = 23
      ButtonWidth = 111
      Caption = 'ToolBar3'
      EdgeBorders = []
      Enabled = False
      Flat = True
      Images = dm02_Picters.ilCommonPictures
      List = True
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 5
      Visible = False
      Wrapable = False
      object ToolButton15: TToolButton
        Left = 0
        Top = 0
        Action = actCloneSumInfo
        AutoSize = True
      end
      object ToolButton16: TToolButton
        Left = 98
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 29
        Style = tbsSeparator
      end
      object ToolButton20: TToolButton
        Left = 106
        Top = 0
        Action = actMaturDate
        AutoSize = True
      end
      object ToolButton12: TToolButton
        Left = 221
        Top = 0
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 44
        Style = tbsSeparator
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 627
    Width = 1119
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 0
    Width = 1119
    Height = 123
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Label1: TLabel
      Left = 320
      Top = 7
      Width = 12
      Height = 13
      Caption = 'по'
    end
    inline Tfm01_Period1: Tfm01_Period
      Left = 127
      Top = 2
      Width = 185
      inherited Label1: TLabel
        Width = 0
        Caption = '   Отчетный период c'
        Visible = False
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 4
        Width = 181
        KeyField = 'T055_ID'
      end
      inherited dsPeriod: TDataSource
        Left = 88
        Top = 65530
      end
      inherited odsPeriod: TOracleDataSet
        Left = 56
        Top = 65530
      end
    end
    inline Frame11: Tfm04_PrmKO
      Left = 127
      Top = 26
      Width = 394
      Height = 22
      TabOrder = 1
      inherited Label1: TLabel
        Width = 0
        Height = 22
        Caption = '   Кред. организация'
        Visible = False
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 4
        Width = 390
      end
      inherited odsPeriod: TOracleDataSet
        SQL.Strings = (
          'SELECT  DISTINCT REGN, NAME--, T002_NUMB_IN_YEA'
          'FROM     V_405_BANC_BY_NUMB'
          '--WHERE    T002_NUMB_IN_YEA = :T002_NUMB_IN_YEA '
          'ORDER BY REGN')
        Variables.Data = {0300000000000000}
        Left = 72
      end
      inherited dsPeriod: TDataSource
        Left = 104
      end
    end
    object chbPeriod: TCheckBox
      Left = 5
      Top = 6
      Width = 123
      Height = 17
      Caption = 'Отчетный период  с'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object chbKO: TCheckBox
      Left = 5
      Top = 29
      Width = 121
      Height = 17
      Caption = 'Кред. организация'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    inline Tfm01_Period2: Tfm01_Period
      Left = 336
      Top = 2
      Width = 187
      TabOrder = 4
      inherited Label1: TLabel
        Width = 0
        Caption = '   Отчетный период c'
        Visible = False
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 4
        Width = 181
        KeyField = 'T055_ID'
      end
      inherited dsPeriod: TDataSource
        Left = 88
        Top = 65530
      end
      inherited odsPeriod: TOracleDataSet
        Left = 56
        Top = 65530
      end
    end
    object Button1: TButton
      Left = 527
      Top = 2
      Width = 75
      Height = 25
      Action = actApplayFilter
      TabOrder = 5
    end
    object chbOper: TCheckBox
      Left = 5
      Top = 54
      Width = 121
      Height = 17
      Caption = 'Код операции'
      TabOrder = 6
    end
    object chbType: TCheckBox
      Left = 5
      Top = 78
      Width = 121
      Height = 17
      Caption = 'Тип ц.б.'
      TabOrder = 8
    end
    object lcbType: TDBLookupComboBox
      Left = 131
      Top = 75
      Width = 390
      Height = 21
      DropDownRows = 10
      KeyField = 'T027_ID'
      ListField = 'DESC_FLD'
      ListSource = dsType
      TabOrder = 9
    end
    object chbPay: TCheckBox
      Left = 5
      Top = 102
      Width = 121
      Height = 17
      Caption = 'Направл. платежа'
      TabOrder = 10
    end
    object lcbPay: TDBLookupComboBox
      Left = 131
      Top = 99
      Width = 390
      Height = 21
      DropDownRows = 10
      KeyField = 'T006_ID'
      ListField = 'DESC_FLD'
      ListSource = dsPay
      TabOrder = 11
    end
    object lcbOper: TxxxDBLookupCheckCombo
      Left = 131
      Top = 51
      Width = 390
      Height = 21
      Hint = 'Не выбрано'
      DropDownCount = 13
      DisplayEmpty = 'Не выбрано'
      DisplaySelectAll = 'Все'
      EmptyItemColor = clWindowText
      ListStyle = [lsChecked]
      LookupField = 'T011_ID'
      LookupDisplay = 'T011_TYPE_ID;T011_OPERATION_DESC'
      LookupSource = dsOper
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Advanced.ShowSelectionHint = True
      Advanced.Autorefresh = False
    end
  end
  inherited pnlButtons: TPanel
    Top = 594
    Width = 1119
    inherited OKBtn: TButton
      Left = 918
    end
    inherited CancelBtn: TButton
      Left = 998
    end
  end
  inherited dsList: TDataSource
    Top = 304
  end
  inherited ActionList: TActionList
    Top = 304
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actExcel: TAction
      Caption = ''
    end
    object actApplayFilter: TAction
      Caption = 'Обновить'
      Hint = 'Обновить'
      OnExecute = actApplayFilterExecute
    end
    object actSetInvStraight: TAction
      Caption = 'Прямые'
      Enabled = False
      ImageIndex = 1
      Visible = False
    end
    object actSetInvCase: TAction
      Caption = 'Портфельные'
      Enabled = False
      ImageIndex = 1
      Visible = False
    end
    object actSetInvNoCount: TAction
      Caption = 'Не учитывать'
      Enabled = False
      ImageIndex = 2
      Visible = False
    end
    object actCloneSumInfo: TAction
      Caption = 'Дублировать'
      Enabled = False
      Hint = 'Дублировать запись'
      ImageIndex = 13
      Visible = False
    end
    object actMaturDate: TAction
      Caption = 'Дата погашения'
      Enabled = False
      Hint = 'Изменить дату погашения эмиссии'
      ImageIndex = 43
      Visible = False
    end
    object actInfo: TAction
      Caption = 'Информация'
      Hint = 'Источник записи'
      ImageIndex = 21
      OnExecute = actInfoExecute
      OnUpdate = actInfoUpdate
    end
    object actGoTo417: TAction
      Caption = 'Переход к ф417'
      ImageIndex = 13
      OnExecute = actGoTo417Execute
      OnUpdate = actGoTo417Update
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 336
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' T002_ID,'
      ' T001_PART_ID,'
      ' T005_DISPLAY_NAME,'
      ' T002_BANK_CODE,'
      ' T002_BANK_NAME,'
      ' T002_REPORT_DATE,'
      ' T002_NUMB_IN_YEA,'
      ' T002_NUMB_IN_YEA_DESC,'
      ' T002_KP_ID,'
      ' T001_ID,'
      ' T001_ROW_PREFIX,'
      ' T001_ROW_PRFX,'
      ' T001_ROW_NUM,'
      ' T001_DATE_OP,'
      ' T001_TYPE_ID,'
      ' T016_BOND_ID,'
      ' T001_OP_ID,'
      ' T011_TYPE_ID,'
      ' T001_OP_PAY_ID,'
      ' T006_ID,'
      ' T006_NAME,'
      ' T001_OP_COUNT,'
      ' T001_OP_CR_ID,'
      ' T001_OP_CR_DESC,'
      ' T001_OP_SUM,'
      ' T001_OP_PROC,'
      ' T001_OP_SUM_CROSS,'
      ' T001_OP_PROC_CROSS,'
      ' T012_ID,'
      ' T012_PARENT_ID,'
      ' T012_REAL_PARENT_ID,'
      ' T001_REZID_NAME,'
      ' T001_REZID_CO_ID,'
      ' T001_REZID_TYPE,'
      '  T012_FI_SNS,'
      '  T012_FI_SNS_DESC,'
      '  T012_FI_PB,'
      '  T012_FI_PB_DESC,'
      '  T012_REGION_CODE,'
      '  T012_REGION_NAME,'
      '  T012_INDUSTRY_CODE,'
      '  T012_INDUSTRY_NAME,'
      ' T033_NAME,'
      ' T013_ID,'
      ' T013_PARENT_ID,'
      ' T013_REAL_PARENT_ID,'
      ' T001_NREZID_NAME,'
      ' T001_NREZID_CO_ID,'
      ' T001_NREZID_COUNTRY,'
      ' T001_NREZID_TYPE,'
      ' T034_NAME,'
      ' T028_ID,'
      ' T028_PARENT_ID,'
      ' T028_SHOT_NAME,'
      ' T028_CODE,'
      ' T028_INN,'
      ' T025_CODE,'
      ' T025_SHOT_NAME,'
      '  T028_FI_SNS,'
      '  T028_FI_SNS_DESC,'
      '  T028_FI_PB,'
      '  T028_FI_PB_DESC,'
      '  T028_REGION_CODE,'
      '  T028_REGION_NAME,'
      '  T028_INDUSTRY_CODE,'
      '  T028_INDUSTRY_NAME,'
      '  T028_ICODE,'
      '  T028_INAME,'
      ' T001_REG_NUM,'
      ' T001_DATE_ON,'
      ' T001_DATE_OFF,'
      ' T001_SEC_DESC,'
      ' T001_CR_ID,'
      ' T001_CR_DESC,'
      ' T001_PARENT_ID,'
      ' T001_ROWID,'
      ' T001_IS_RANSOM,'
      ' T030_ID,'
      ' T030_PARENT_ID,'
      ' T001_N8,'
      ' T001_N9,'
      ' T001_10,'
      ' T001_11,'
      ' T001_N99,'
      ' T001_COMMENT,'
      ' T055_ID,'
      ' T055_HEADER_ID,'
      ' T035_ID,'
      ' T035_NAME,'
      ' T006_DIRECTION,'
      ' T006_DIRECTION_DESC,'
      ' T001_OP_MODIF,'
      ' T001_YEAR_OP,'
      ' OP_MONTH,'
      ' T001_MOD_OP_SUM_CROSS,'
      ' T001_C11,'
      ' T001_C12,'
      ' T001_C16,'
      ' T001_C17,'
      ' T001_C18,'
      ' T001_C19,'
      ' T001_C20,'
      ' T027_ID,'
      ' T012_FICT_STATE,'
      ' T012_FICT_STATE_DESC,'
      ' T013_FICT_STATE,'
      ' T013_FICT_STATE_DESC,'
      ' T001_OP_SUM_RUB,'
      ' T027_ID_1,'
      ' T001_INV_TYPE,'
      ' T001_INV_TYPE_DESCR,'
      ' T001_PROCESSED,'
      ' T001_PROCESSED_DESC,'
      ' T001_REPO_TYPE,'
      ' T001_DPB_COMMENT,'
      ' T001_REMAINS_TYPE,'
      ' T001_DATA_SOURCE,'
      '  IS_FIRST,'
      '  IIP_SHS_FLAG,'
      ' T036_COMMENTS,'
      ' T001_RATE,'
      ' T001_RATE_DELTA,'
      ' T001_REPO_DATE,'
      ' --T001_C22 ,   '
      ' C22 ,         '
      ' c22_name,'
      ' T001_PERCENT,'
      ' OWN_EMISSION'
      'FROM V_T001_SUM_LINK'
      'where T001_PART_ID < 6 -- не брать 2й раздел'
      ' '
      ''
      ' '
      ' '
      ' '
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000007E0000000C000000543030315F504152545F49440100000000000700
      0000543030315F494401000000000007000000543030325F4944010000000000
      0C000000543030315F524F575F4E554D0100000000000C000000543030315F44
      4154455F4F500100000000000C000000543030315F545950455F494401000000
      00000A000000543030315F4F505F49440100000000000E000000543030315F4F
      505F5041595F49440100000000000D000000543030315F4F505F434F554E5401
      00000000000D000000543030315F4F505F43525F49440100000000000B000000
      543030315F4F505F53554D0100000000000C000000543030315F4F505F50524F
      430100000000000F000000543030315F52455A49445F4E414D45010000000000
      10000000543030315F52455A49445F434F5F4944010000000000100000005430
      30315F4E52455A49445F4E414D4501000000000011000000543030315F4E5245
      5A49445F434F5F49440100000000000C000000543030315F5245475F4E554D01
      00000000000C000000543030315F444154455F4F4E0100000000000D00000054
      3030315F444154455F4F46460100000000000A000000543030315F43525F4944
      0100000000000F000000543030315F524F575F50524546495801000000000011
      000000543030355F444953504C41595F4E414D450100000000000C0000005430
      31365F424F4E445F49440100000000000C000000543031315F545950455F4944
      01000000000009000000543030365F4E414D450100000000000E000000543030
      325F42414E4B5F434F444501000000000010000000543030325F5245504F5254
      5F444154450100000000000A000000543030325F4B505F49440100000000000F
      000000543030315F52455A49445F545950450100000000001000000054303031
      5F4E52455A49445F545950450100000000000E000000543030315F504152454E
      545F494401000000000010000000543030325F4E554D425F494E5F5945410100
      0000000015000000543030325F4E554D425F494E5F5945415F44455343010000
      0000000F000000543030315F4F505F43525F4445534301000000000007000000
      543031325F494401000000000007000000543031335F49440100000000001300
      0000543030315F4E52455A49445F434F554E5452590100000000000C00000054
      3030315F43525F444553430100000000000E000000543032385F53484F545F4E
      414D4501000000000009000000543032385F434F444501000000000009000000
      543032355F434F44450100000000000E000000543032355F53484F545F4E414D
      450100000000000E000000543030315F49535F52414E534F4D01000000000007
      000000543033305F494401000000000011000000543030315F4F505F53554D5F
      43524F535301000000000012000000543030315F4F505F50524F435F43524F53
      5301000000000009000000543033335F4E414D45010000000000090000005430
      33345F4E414D4501000000000007000000543032385F49440100000000000700
      0000543030315F4E3801000000000007000000543030315F4E39010000000000
      07000000543030315F313001000000000007000000543030315F313101000000
      000008000000543030315F4E39390100000000000C000000543030315F434F4D
      4D454E5401000000000007000000543035355F49440100000000000E00000054
      3030325F42414E4B5F4E414D4501000000000009000000543033355F4E414D45
      0100000000000E000000543030365F444952454354494F4E0100000000000D00
      0000543030315F4F505F4D4F4449460100000000000C000000543030315F5945
      41525F4F5001000000000015000000543030315F4D4F445F4F505F53554D5F43
      524F535301000000000013000000543030365F444952454354494F4E5F444553
      4301000000000008000000543030315F43313601000000000008000000543030
      315F43313701000000000008000000543030315F433138010000000000080000
      00543030315F43313901000000000008000000543030315F4332300100000000
      0008000000543030315F43313101000000000008000000543030315F43313201
      000000000007000000543032375F49440100000000000F000000543030315F4F
      505F53554D5F52554201000000000007000000543033355F4944010000000000
      0E000000543033305F504152454E545F49440100000000000E00000054303238
      5F504152454E545F494401000000000009000000543032375F49445F31010000
      0000000E000000543031325F504152454E545F49440100000000000E00000054
      3031335F504152454E545F494401000000000008000000543032385F494E4E01
      000000000013000000543030315F494E565F545950455F444553435201000000
      00000D000000543030315F494E565F5459504501000000000007000000543030
      365F49440100000000000E000000543030315F5245504F5F5459504501000000
      000010000000543030315F4450425F434F4D4D454E5401000000000011000000
      543030315F52454D41494E535F545950450100000000000E000000543030315F
      50524F43455353454401000000000013000000543030315F50524F4345535345
      445F4445534301000000000010000000543030315F444154415F534F55524345
      01000000000013000000543031335F5245414C5F504152454E545F4944010000
      00000013000000543031325F5245414C5F504152454E545F4944010000000000
      0F000000543031325F464943545F535441544501000000000014000000543031
      325F464943545F53544154455F444553430100000000000F000000543031335F
      464943545F535441544501000000000014000000543031335F464943545F5354
      4154455F44455343010000000000080000004F505F4D4F4E5448010000000000
      0800000049535F46495253540100000000000B000000543031325F46495F534E
      5301000000000010000000543031325F46495F534E535F444553430100000000
      000A000000543031325F46495F50420100000000000F000000543031325F4649
      5F50425F4445534301000000000010000000543031325F524547494F4E5F434F
      444501000000000010000000543031325F524547494F4E5F4E414D4501000000
      000012000000543031325F494E4455535452595F434F44450100000000001200
      0000543031325F494E4455535452595F4E414D450100000000000B0000005430
      32385F46495F534E5301000000000010000000543032385F46495F534E535F44
      4553430100000000000A000000543032385F46495F50420100000000000F0000
      00543032385F46495F50425F4445534301000000000010000000543032385F52
      4547494F4E5F434F444501000000000010000000543032385F524547494F4E5F
      4E414D4501000000000012000000543032385F494E4455535452595F434F4445
      01000000000012000000543032385F494E4455535452595F4E414D4501000000
      00000C0000004949505F5348535F464C41470100000000000D00000054303031
      5F5345435F444553430100000000000D000000543033365F434F4D4D454E5453
      01000000000009000000543030315F524154450100000000000F000000543030
      315F524154455F44454C54410100000000000E000000543030315F5245504F5F
      444154450100000000000A000000543032385F49434F44450100000000000A00
      0000543032385F494E414D45010000000000080000004332325F4E414D450100
      00000000030000004332320100000000000C000000543030315F50455243454E
      540100000000000E000000543035355F4845414445525F49440100000000000D
      000000543030315F524F575F505246580100000000000C0000004F574E5F454D
      495353494F4E010000000000}
    AfterOpen = odsListAfterOpen
    Top = 304
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsListT001_PART_ID: TFloatField
      FieldName = 'T001_PART_ID'
      Required = True
    end
    object odsListT005_DISPLAY_NAME: TStringField
      FieldName = 'T005_DISPLAY_NAME'
      Required = True
      Size = 255
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsListT002_REPORT_DATE: TDateTimeField
      FieldName = 'T002_REPORT_DATE'
      Required = True
    end
    object odsListT002_NUMB_IN_YEA: TStringField
      FieldName = 'T002_NUMB_IN_YEA'
      Required = True
      Size = 5
    end
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT002_KP_ID: TIntegerField
      FieldName = 'T002_KP_ID'
      Required = True
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
      Required = True
    end
    object odsListT001_ROW_PREFIX: TIntegerField
      FieldName = 'T001_ROW_PREFIX'
      Required = True
    end
    object odsListT001_ROW_NUM: TIntegerField
      FieldName = 'T001_ROW_NUM'
      Required = True
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
      Required = True
    end
    object odsListT001_TYPE_ID: TStringField
      FieldName = 'T001_TYPE_ID'
      Required = True
      Size = 255
    end
    object odsListT016_BOND_ID: TFloatField
      FieldName = 'T016_BOND_ID'
      Required = True
    end
    object odsListT001_OP_ID: TFloatField
      FieldName = 'T001_OP_ID'
      Required = True
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object odsListT001_OP_PAY_ID: TFloatField
      FieldName = 'T001_OP_PAY_ID'
      Required = True
    end
    object odsListT006_NAME: TStringField
      FieldName = 'T006_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0.0000'
      EditFormat = '0'
    end
    object odsListT001_OP_CR_ID: TStringField
      FieldName = 'T001_OP_CR_ID'
      Size = 3
    end
    object odsListT001_OP_CR_DESC: TStringField
      FieldName = 'T001_OP_CR_DESC'
      Size = 255
    end
    object odsListT001_OP_SUM: TFloatField
      FieldName = 'T001_OP_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_PROC: TFloatField
      FieldName = 'T001_OP_PROC'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsListT001_REZID_NAME: TStringField
      FieldName = 'T001_REZID_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_REZID_CO_ID: TStringField
      FieldName = 'T001_REZID_CO_ID'
      Size = 255
    end
    object odsListT001_REZID_TYPE: TFloatField
      FieldName = 'T001_REZID_TYPE'
      Required = True
    end
    object odsListT033_NAME: TStringField
      FieldName = 'T033_NAME'
      Required = True
      Size = 50
    end
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
      Required = True
    end
    object odsListT001_NREZID_NAME: TStringField
      FieldName = 'T001_NREZID_NAME'
      Size = 255
    end
    object odsListT001_NREZID_CO_ID: TFloatField
      FieldName = 'T001_NREZID_CO_ID'
      Required = True
    end
    object odsListT001_NREZID_COUNTRY: TStringField
      FieldName = 'T001_NREZID_COUNTRY'
      Size = 250
    end
    object odsListT001_NREZID_TYPE: TFloatField
      FieldName = 'T001_NREZID_TYPE'
      Required = True
    end
    object odsListT034_NAME: TStringField
      FieldName = 'T034_NAME'
      Required = True
      Size = 50
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT025_CODE: TFloatField
      FieldName = 'T025_CODE'
      Required = True
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_REG_NUM: TStringField
      FieldName = 'T001_REG_NUM'
      Required = True
      Size = 265
    end
    object odsListT001_CR_ID: TStringField
      FieldName = 'T001_CR_ID'
      Size = 3
    end
    object odsListT001_CR_DESC: TStringField
      FieldName = 'T001_CR_DESC'
      Size = 255
    end
    object odsListT001_IS_RANSOM: TStringField
      FieldName = 'T001_IS_RANSOM'
      Size = 1
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_PROC_CROSS: TFloatField
      FieldName = 'T001_OP_PROC_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT001_N8: TFloatField
      FieldName = 'T001_N8'
    end
    object odsListT001_N9: TFloatField
      FieldName = 'T001_N9'
    end
    object odsListT001_10: TFloatField
      FieldName = 'T001_10'
    end
    object odsListT001_11: TFloatField
      FieldName = 'T001_11'
    end
    object odsListT001_N99: TFloatField
      FieldName = 'T001_N99'
    end
    object odsListT001_COMMENT: TStringField
      FieldName = 'T001_COMMENT'
      Size = 255
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT002_BANK_NAME: TStringField
      FieldName = 'T002_BANK_NAME'
      Size = 250
    end
    object odsListT035_NAME: TStringField
      FieldName = 'T035_NAME'
      Required = True
      Size = 50
    end
    object odsListT001_OP_MODIF: TFloatField
      FieldName = 'T001_OP_MODIF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_YEAR_OP: TStringField
      FieldName = 'T001_YEAR_OP'
      Size = 4
    end
    object odsListT001_MOD_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_MOD_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT006_DIRECTION: TIntegerField
      FieldName = 'T006_DIRECTION'
      Required = True
    end
    object odsListT006_DIRECTION_DESC: TStringField
      FieldName = 'T006_DIRECTION_DESC'
      Size = 9
    end
    object odsListT001_PARENT_ID: TFloatField
      FieldName = 'T001_PARENT_ID'
    end
    object odsListT001_C16: TStringField
      FieldName = 'T001_C16'
      Size = 255
    end
    object odsListT001_C17: TStringField
      FieldName = 'T001_C17'
      Size = 255
    end
    object odsListT001_C18: TStringField
      FieldName = 'T001_C18'
      Size = 255
    end
    object odsListT001_C19: TStringField
      FieldName = 'T001_C19'
      Size = 255
    end
    object odsListT001_C20: TStringField
      FieldName = 'T001_C20'
      Size = 255
    end
    object odsListT001_C11: TStringField
      FieldName = 'T001_C11'
      Size = 255
    end
    object odsListT001_C12: TStringField
      FieldName = 'T001_C12'
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT001_DATE_ON: TDateTimeField
      FieldName = 'T001_DATE_ON'
    end
    object odsListT001_DATE_OFF: TDateTimeField
      FieldName = 'T001_DATE_OFF'
    end
    object odsListT001_SEC_DESC: TStringField
      FieldName = 'T001_SEC_DESC'
      Size = 13
    end
    object odsListT001_OP_SUM_RUB: TFloatField
      FieldName = 'T001_OP_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT035_ID: TFloatField
      FieldName = 'T035_ID'
      Required = True
    end
    object odsListT030_PARENT_ID: TFloatField
      FieldName = 'T030_PARENT_ID'
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsListT027_ID_1: TFloatField
      FieldName = 'T027_ID_1'
      Required = True
    end
    object odsListT012_PARENT_ID: TFloatField
      FieldName = 'T012_PARENT_ID'
    end
    object odsListT013_PARENT_ID: TFloatField
      FieldName = 'T013_PARENT_ID'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
    end
    object odsListT001_INV_TYPE_DESCR: TStringField
      DisplayWidth = 15
      FieldName = 'T001_INV_TYPE_DESCR'
      Size = 15
    end
    object odsListT001_INV_TYPE: TIntegerField
      FieldName = 'T001_INV_TYPE'
      Required = True
    end
    object odsListT006_ID: TFloatField
      FieldName = 'T006_ID'
      Required = True
    end
    object odsListT001_REPO_TYPE: TStringField
      FieldName = 'T001_REPO_TYPE'
      Required = True
      Size = 1
    end
    object odsListT001_DPB_COMMENT: TStringField
      FieldName = 'T001_DPB_COMMENT'
      Size = 255
    end
    object odsListT001_REMAINS_TYPE: TIntegerField
      FieldName = 'T001_REMAINS_TYPE'
      Required = True
    end
    object odsListT001_PROCESSED: TIntegerField
      FieldName = 'T001_PROCESSED'
      Required = True
    end
    object odsListT001_PROCESSED_DESC: TStringField
      FieldName = 'T001_PROCESSED_DESC'
      Size = 3
    end
    object odsListT001_DATA_SOURCE: TIntegerField
      FieldName = 'T001_DATA_SOURCE'
      Required = True
    end
    object odsListT013_REAL_PARENT_ID: TFloatField
      FieldName = 'T013_REAL_PARENT_ID'
    end
    object odsListT012_REAL_PARENT_ID: TFloatField
      FieldName = 'T012_REAL_PARENT_ID'
    end
    object odsListT012_FICT_STATE: TStringField
      FieldName = 'T012_FICT_STATE'
      Required = True
      Size = 1
    end
    object odsListT012_FICT_STATE_DESC: TStringField
      FieldName = 'T012_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT013_FICT_STATE: TStringField
      FieldName = 'T013_FICT_STATE'
      Required = True
      Size = 1
    end
    object odsListT013_FICT_STATE_DESC: TStringField
      FieldName = 'T013_FICT_STATE_DESC'
      Size = 3
    end
    object odsListOP_MONTH: TStringField
      FieldName = 'OP_MONTH'
      Required = True
      Size = 255
    end
    object odsListIS_FIRST: TStringField
      FieldName = 'IS_FIRST'
      Required = True
      Size = 1
    end
    object odsListT012_FI_SNS: TStringField
      FieldName = 'T012_FI_SNS'
      Required = True
      Size = 1
    end
    object odsListT012_FI_SNS_DESC: TStringField
      FieldName = 'T012_FI_SNS_DESC'
      Size = 5
    end
    object odsListT012_FI_PB: TStringField
      FieldName = 'T012_FI_PB'
      Required = True
      Size = 1
    end
    object odsListT012_FI_PB_DESC: TStringField
      FieldName = 'T012_FI_PB_DESC'
      Size = 5
    end
    object odsListT012_REGION_CODE: TFloatField
      FieldName = 'T012_REGION_CODE'
      Required = True
    end
    object odsListT012_REGION_NAME: TStringField
      FieldName = 'T012_REGION_NAME'
      Size = 250
    end
    object odsListT012_INDUSTRY_CODE: TStringField
      FieldName = 'T012_INDUSTRY_CODE'
      Required = True
      Size = 255
    end
    object odsListT012_INDUSTRY_NAME: TStringField
      FieldName = 'T012_INDUSTRY_NAME'
      Size = 255
    end
    object odsListT028_FI_SNS: TStringField
      FieldName = 'T028_FI_SNS'
      Required = True
      Size = 1
    end
    object odsListT028_FI_SNS_DESC: TStringField
      FieldName = 'T028_FI_SNS_DESC'
      Size = 5
    end
    object odsListT028_FI_PB: TStringField
      FieldName = 'T028_FI_PB'
      Required = True
      Size = 1
    end
    object odsListT028_FI_PB_DESC: TStringField
      FieldName = 'T028_FI_PB_DESC'
      Size = 5
    end
    object odsListT028_REGION_CODE: TFloatField
      FieldName = 'T028_REGION_CODE'
      Required = True
    end
    object odsListT028_REGION_NAME: TStringField
      FieldName = 'T028_REGION_NAME'
      Size = 250
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Required = True
      Size = 255
    end
    object odsListT028_INDUSTRY_NAME: TStringField
      FieldName = 'T028_INDUSTRY_NAME'
      Size = 255
    end
    object odsListIIP_SHS_FLAG: TStringField
      FieldName = 'IIP_SHS_FLAG'
      Size = 1
    end
    object odsListT036_COMMENTS: TStringField
      FieldName = 'T036_COMMENTS'
      Size = 255
    end
    object odsListT001_RATE: TFloatField
      FieldName = 'T001_RATE'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_RATE_DELTA: TFloatField
      FieldName = 'T001_RATE_DELTA'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_REPO_DATE: TDateTimeField
      FieldName = 'T001_REPO_DATE'
    end
    object odsListT028_ICODE: TStringField
      FieldName = 'T028_ICODE'
      Required = True
      Size = 255
    end
    object odsListT028_INAME: TStringField
      FieldName = 'T028_INAME'
      Size = 255
    end
    object odsListC22: TStringField
      FieldName = 'C22'
      Size = 43
    end
    object odsListC22_NAME: TStringField
      FieldName = 'C22_NAME'
      Size = 1000
    end
    object odsListT001_PERCENT: TFloatField
      FieldName = 'T001_PERCENT'
      DisplayFormat = '##0.000000'
    end
    object odsListT055_HEADER_ID: TFloatField
      FieldName = 'T055_HEADER_ID'
      Required = True
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 3
    end
    object odsListOWN_EMISSION: TFloatField
      FieldName = 'OWN_EMISSION'
    end
  end
  inherited pkList: TOraclePackage
    PackageName = 'PK_HAND_CORRECT_405'
    ParameterMode = pmNamed
    Left = 104
    Top = 259
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec T001_SUM%ROWTYPE;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T001_INV_TYPE := :T001_INV_TYPE; '
      '  v_rec.T001_PROCESSED := :T001_PROCESSED; '
      '  v_rec.T001_DPB_COMMENT := :T001_DPB_COMMENT;  '
      ''
      '  Pk_Hand_Correct_405.P_T001_Sum_Add(v_rec);'
      ''
      '  :T001_ID := v_rec.T001_ID;'
      '  :T002_ID := v_rec.T002_ID;'
      '  :T001_PART_ID := v_rec.T001_PART_ID;'
      '  :T001_DATE_OP := v_rec.T001_DATE_OP;'
      '  :T001_OP_ID := v_rec.T001_OP_ID;'
      '  :T001_OP_PAY_ID := v_rec.T001_OP_PAY_ID;'
      '  :T001_OP_COUNT := v_rec.T001_OP_COUNT;'
      '  :T001_OP_CR_ID := v_rec.T001_OP_CR_ID;'
      '  :T001_OP_SUM := v_rec.T001_OP_SUM;'
      '  :T001_OP_PROC := v_rec.T001_OP_PROC;'
      '  :T001_DATE_ON := v_rec.T001_DATE_ON;'
      '  :T001_DATE_OFF := v_rec.T001_DATE_OFF;'
      '  :T001_CR_ID := v_rec.T001_CR_ID;'
      '  :T001_ROW_PREFIX := v_rec.T001_ROW_PREFIX;'
      '  :T001_ROW_NUM := v_rec.T001_ROW_NUM;'
      '  :T001_IS_RANSOM := v_rec.T001_IS_RANSOM;'
      '  :T012_ID := v_rec.T012_ID;'
      '  :T013_ID := v_rec.T013_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T001_INV_TYPE := v_rec.T001_INV_TYPE;'
      '  :T001_DPB_COMMENT :=  v_rec.T001_DPB_COMMENT;'
      ''
      'END;')
    Variables.Data = {
      0300000016000000080000003A543030325F4944040000000000000000000000
      0D0000003A543030315F504152545F49440400000000000000000000000D0000
      003A543030315F444154455F4F500C00000000000000000000000B0000003A54
      3030315F4F505F49440400000000000000000000000F0000003A543030315F4F
      505F5041595F49440400000000000000000000000E0000003A543030315F4F50
      5F434F554E540400000000000000000000000E0000003A543030315F4F505F43
      525F49440500000000000000000000000C0000003A543030315F4F505F53554D
      0400000000000000000000000D0000003A543030315F4F505F50524F43040000
      0000000000000000000D0000003A543030315F444154455F4F4E0C0000000000
      0000000000000E0000003A543030315F444154455F4F46460C00000000000000
      000000000B0000003A543030315F43525F494405000000000000000000000010
      0000003A543030315F524F575F5052454649580400000000000000000000000D
      0000003A543030315F524F575F4E554D04000000000000000000000008000000
      3A543030315F49440400000000000000000000000F0000003A543030315F4953
      5F52414E534F4D050000000000000000000000080000003A543031325F494404
      0000000000000000000000080000003A543031335F4944040000000000000000
      000000080000003A543033305F49440400000000000000000000000E0000003A
      543030315F494E565F54595045030000000000000000000000110000003A5430
      30315F4450425F434F4D4D454E540500000000000000000000000F0000003A54
      3030315F50524F434553534544040000000000000000000000}
    Top = 373
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec T001_SUM%ROWTYPE;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T001_ID := :T001_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T035_ID := :T035_ID;'
      '  v_rec.T001_N8 := :T001_N8;'
      '  v_rec.T001_N9 := :T001_N9;'
      '  v_rec.T001_10 := :T001_10;'
      '  v_rec.T001_11 := :T001_11;'
      '  v_rec.T001_N99 := :T001_N99;'
      '  v_rec.T001_COMMENT := :T001_COMMENT;'
      '  v_rec.T001_C11 := :T001_C11;'
      '  v_rec.T001_C12 := :T001_C12;'
      '  v_rec.T001_C16 := :T001_C16;'
      '  v_rec.T001_C17 := :T001_C17;'
      '  v_rec.T001_C18 := :T001_C18;'
      '  v_rec.T001_C19 := :T001_C19;'
      '  v_rec.T001_C20 := :T001_C20;'
      '  v_rec.T001_INV_TYPE := :T001_INV_TYPE;'
      '  v_rec.T001_PROCESSED := :T001_PROCESSED;'
      '  v_rec.T001_DPB_COMMENT := :T001_DPB_COMMENT;'
      '  v_rec.T001_DATA_SOURCE := :T001_DATA_SOURCE;'
      '  v_rec.IS_FIRST := :IS_FIRST;'
      ''
      '  Pk_Hand_Correct_405.P_T001_Sum_Update(v_rec);'
      ''
      '  :T001_ID := v_rec.T001_ID;'
      '  :T002_ID := v_rec.T002_ID;'
      '  :T001_PART_ID := v_rec.T001_PART_ID;'
      '  :T001_DATE_OP := v_rec.T001_DATE_OP;'
      '  :T001_OP_ID := v_rec.T001_OP_ID;'
      '  :T001_OP_PAY_ID := v_rec.T001_OP_PAY_ID;'
      '  :T001_OP_COUNT := v_rec.T001_OP_COUNT;'
      '  :T001_OP_CR_ID := v_rec.T001_OP_CR_ID;'
      '  :T001_OP_SUM := v_rec.T001_OP_SUM;'
      '  :T001_OP_PROC := v_rec.T001_OP_PROC;'
      '  :T001_DATE_ON := v_rec.T001_DATE_ON;'
      '  :T001_DATE_OFF := v_rec.T001_DATE_OFF;'
      '  :T001_CR_ID := v_rec.T001_CR_ID;'
      '  :T001_IS_RANSOM := v_rec.T001_IS_RANSOM;'
      '  :T012_ID := v_rec.T012_ID;'
      '  :T013_ID := v_rec.T013_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T001_ROW_PREFIX := v_rec.T001_ROW_PREFIX;'
      '  :T001_ROW_NUM := v_rec.T001_ROW_NUM;'
      '  :T035_ID := v_rec.T035_ID;'
      '  :T001_N8 := v_rec.T001_N8;'
      '  :T001_N9 := v_rec.T001_N9;'
      '  :T001_10 := v_rec.T001_10;'
      '  :T001_11 := v_rec.T001_11;'
      '  :T001_N99 := v_rec.T001_N99;'
      '  :T001_COMMENT := v_rec.T001_COMMENT;'
      '  :T001_C11 := v_rec.T001_C11;'
      '  :T001_C12 := v_rec.T001_C12;'
      '  :T001_C16 := v_rec.T001_C16;'
      '  :T001_C17 := v_rec.T001_C17;'
      '  :T001_C18 := v_rec.T001_C18;'
      '  :T001_C19 := v_rec.T001_C19;'
      '  :T001_C20 := v_rec.T001_C20;'
      '  :T001_INV_TYPE := v_rec.T001_INV_TYPE;'
      '  :T001_DPB_COMMENT := v_rec.T001_DPB_COMMENT;'
      ''
      'END;'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000026000000080000003A543030315F4944040000000000000000000000
      0D0000003A543030315F444154455F4F500C00000000000000000000000B0000
      003A543030315F4F505F49440400000000000000000000000F0000003A543030
      315F4F505F5041595F49440400000000000000000000000E0000003A54303031
      5F4F505F434F554E540400000000000000000000000E0000003A543030315F4F
      505F43525F49440500000000000000000000000C0000003A543030315F4F505F
      53554D0400000000000000000000000D0000003A543030315F4F505F50524F43
      0400000000000000000000000D0000003A543030315F444154455F4F4E0C0000
      0000000000000000000E0000003A543030315F444154455F4F46460C00000000
      000000000000000B0000003A543030315F43525F494405000000000000000000
      0000080000003A543030325F49440400000000000000000000000D0000003A54
      3030315F504152545F4944040000000000000000000000100000003A54303031
      5F524F575F5052454649580400000000000000000000000D0000003A54303031
      5F524F575F4E554D040000000000000000000000080000003A543031325F4944
      040000000000000000000000080000003A543031335F49440400000000000000
      000000000F0000003A543030315F49535F52414E534F4D050000000000000000
      000000080000003A543033305F4944040000000000000000000000080000003A
      543033355F4944040000000000000000000000080000003A543030315F4E3804
      0000000000000000000000080000003A543030315F4E39040000000000000000
      000000080000003A543030315F3130040000000000000000000000080000003A
      543030315F3131040000000000000000000000090000003A543030315F4E3939
      0400000000000000000000000D0000003A543030315F434F4D4D454E54050000
      000000000000000000090000003A543030315F43313105000000000000000000
      0000090000003A543030315F433132050000000000000000000000090000003A
      543030315F433136050000000000000000000000090000003A543030315F4331
      37050000000000000000000000090000003A543030315F433138050000000000
      000000000000090000003A543030315F43313905000000000000000000000009
      0000003A543030315F4332300500000000000000000000000E0000003A543030
      315F494E565F54595045030000000000000000000000110000003A543030315F
      4450425F434F4D4D454E540500000000000000000000000F0000003A54303031
      5F50524F434553534544040000000000000000000000110000003A543030315F
      444154415F534F55524345040000000000000000000000090000003A49535F46
      49525354050000000000000000000000}
    Top = 373
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_id T001_SUM.T001_ID%TYPE;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_id := :T001_ID;'
      '  Pk_Hand_Correct_405.p_t001_sum_delete(v_id);'
      'END;'
      ' '
      '')
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
    Top = 373
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec T001_SUM%ROWTYPE;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      ''
      '  :o_result := Pk_Hand_Correct_405.F_T001_Sum_Check(v_rec);'
      'END;'
      ''
      ''
      ' ')
    Variables.Data = {
      0300000012000000080000003A543030325F4944040000000000000000000000
      0D0000003A543030315F504152545F49440400000000000000000000000D0000
      003A543030315F444154455F4F500C00000000000000000000000B0000003A54
      3030315F4F505F49440400000000000000000000000F0000003A543030315F4F
      505F5041595F49440400000000000000000000000E0000003A543030315F4F50
      5F434F554E540400000000000000000000000E0000003A543030315F4F505F43
      525F49440500000000000000000000000C0000003A543030315F4F505F53554D
      0400000000000000000000000D0000003A543030315F4F505F50524F43040000
      0000000000000000000D0000003A543030315F444154455F4F4E0C0000000000
      0000000000000E0000003A543030315F444154455F4F46460C00000000000000
      000000000B0000003A543030315F43525F494405000000000000000000000010
      0000003A543030315F524F575F5052454649580400000000000000000000000D
      0000003A543030315F524F575F4E554D04000000000000000000000009000000
      3A4F5F524553554C54040000000000000000000000080000003A543031325F49
      44040000000000000000000000080000003A543031335F494404000000000000
      0000000000080000003A543033305F4944040000000000000000000000}
    Top = 373
  end
  object oqAddDividend: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_Hand_Correct_405.p_add_dividend_to_sum(:T001_ID, :T050_ID);'
      '  commit;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543030315F4944040000000000000000000000
      080000003A543035305F4944040000000000000000000000}
    Left = 256
    Top = 304
  end
  object odsCount: TOracleDataSet
    SQL.Strings = (
      'SELECT count(*) AS COUNT_STR,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_SUM_CROSS, 0' +
        ')) SUM_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_PROC_CROSS, ' +
        '0)) PROC_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_COUNT, 0)) C' +
        'OUNT_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, DECODE(T001_OP_COUNT' +
        ', 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), 0)) PRICE_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, T001_OP_SUM_CROSS, 0' +
        ')) SUM_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, T001_OP_PROC_CROSS, ' +
        '0)) PROC_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, T001_OP_COUNT, 0)) C' +
        'OUNT_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, DECODE(T001_OP_COUNT' +
        ', 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), 0)) PRICE_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_SUM_CROSS, -' +
        'T001_OP_SUM_CROSS)) SUM_SALDO,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_PROC_CROSS, ' +
        '-T001_OP_PROC_CROSS)) PROC_SALDO,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_COUNT, -T001' +
        '_OP_COUNT)) COUNT_SALDO,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, DECODE(T001_OP_COUNT' +
        ', 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), -DECODE(T001_OP_COUN' +
        'T, 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT))) PRICE_SALDO'
      'FROM ('
      'SELECT /*+ FIRST_ROWS */'
      
        ' T002_ID, T001_PART_ID, T005_DISPLAY_NAME, T002_BANK_CODE, T002_' +
        'REPORT_DATE,'
      
        ' T002_NUMB_IN_YEA, T002_NUMB_IN_YEA_DESC, T002_KP_ID, T001_ID, T' +
        '001_ROW_PREFIX,'
      
        ' T001_ROW_NUM, T001_DATE_OP, T001_TYPE_ID, T016_BOND_ID, T001_OP' +
        '_ID,'
      
        ' T011_TYPE_ID, T001_OP_PAY_ID, T006_NAME, T001_OP_COUNT, T001_OP' +
        '_CR_ID,'
      
        ' T001_OP_CR_DESC, T001_OP_SUM, T001_OP_PROC, T001_OP_SUM_CROSS, ' +
        'T001_OP_PROC_CROSS, T012_ID, T001_REZID_NAME,'
      
        ' T001_REZID_CO_ID, T001_REZID_TYPE, T013_ID, T001_NREZID_NAME, T' +
        '001_NREZID_CO_ID,'
      
        ' T001_NREZID_COUNTRY, T001_NREZID_TYPE, T028_SHOT_NAME, T028_COD' +
        'E, T025_CODE,'
      
        ' T025_SHOT_NAME, T001_REG_NUM, T001_DATE_ON, T001_DATE_OFF, T001' +
        '_CR_ID,'
      ' T001_CR_DESC, T001_PARENT_ID, T001_ROWID,'
      ' T001_IS_RANSOM, T030_ID, T050_ID, T050_DESC, T006_DIRECTION'
      'FROM V_T001_SUM'
      '     )'
      ' '
      ' '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000D00000009000000434F554E545F5354520100000000000600000053
      554D5F494E0100000000000700000050524F435F494E01000000000008000000
      434F554E545F494E0100000000000700000053554D5F4F555401000000000008
      00000050524F435F4F555401000000000009000000434F554E545F4F55540100
      000000000900000053554D5F53414C444F0100000000000A00000050524F435F
      53414C444F0100000000000B000000434F554E545F53414C444F010000000000
      0800000050524943455F494E0100000000000900000050524943455F4F555401
      00000000000B00000050524943455F53414C444F010000000000}
    Cursor = crHourGlass
    ReadOnly = True
    Session = dmMain.OracleSession
    Left = 112
    Top = 412
    object odsCountCOUNT_STR: TFloatField
      Alignment = taLeftJustify
      FieldName = 'COUNT_STR'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object odsCountSUM_IN: TFloatField
      FieldName = 'SUM_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_IN: TFloatField
      FieldName = 'PROC_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountCOUNT_IN: TFloatField
      FieldName = 'COUNT_IN'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountSUM_OUT: TFloatField
      FieldName = 'SUM_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_OUT: TFloatField
      FieldName = 'PROC_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountCOUNT_OUT: TFloatField
      FieldName = 'COUNT_OUT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountSUM_SALDO: TFloatField
      FieldName = 'SUM_SALDO'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_SALDO: TFloatField
      FieldName = 'PROC_SALDO'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountCOUNT_SALDO: TFloatField
      FieldName = 'COUNT_SALDO'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountPRICE_IN: TFloatField
      FieldName = 'PRICE_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPRICE_OUT: TFloatField
      FieldName = 'PRICE_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPRICE_SALDO: TFloatField
      FieldName = 'PRICE_SALDO'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
  object dsCount: TDataSource
    DataSet = odsCount
    Left = 152
    Top = 412
  end
  object odsOper: TOracleDataSet
    SQL.Strings = (
      'SELECT T011_ID,'
      '       T011_TYPE_ID,'
      '       T011_OPERATION_DESC, '
      '       T011_TYPE_ID || '#39' - '#39' || T011_OPERATION_DESC DESC_FLD'
      'FROM V_OPERATION_TYPE'
      'ORDER BY T011_TYPE_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000400000008000000444553435F464C44010000000000070000005430
      31315F49440100000000000C000000543031315F545950455F49440100000000
      0013000000543031315F4F5045524154494F4E5F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 288
    Top = 42
    object odsOperDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 298
    end
    object odsOperT011_ID: TFloatField
      FieldName = 'T011_ID'
      Required = True
    end
    object odsOperT011_TYPE_ID: TFloatField
      DisplayWidth = 3
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object odsOperT011_OPERATION_DESC: TStringField
      FieldName = 'T011_OPERATION_DESC'
      Required = True
      Size = 255
    end
  end
  object dsType: TDataSource
    DataSet = odsType
    Left = 392
    Top = 58
  end
  object odsType: TOracleDataSet
    SQL.Strings = (
      
        'SELECT T027_ID, T027_SEC_TYPE, T027_SEC_TYPE || '#39' - '#39' || T027_CO' +
        'MMENTS DESC_FLD'
      'FROM V_405_SEC_TYPE'
      'ORDER BY T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000008000000444553435F464C44010000000000070000005430
      32375F49440100000000000D000000543032375F5345435F5459504501000000
      0000}
    Session = dmMain.OracleSession
    Left = 360
    Top = 58
    object odsTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsTypeDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 513
    end
  end
  object dsOper: TDataSource
    DataSet = odsOper
    Left = 320
    Top = 42
  end
  object odsPay: TOracleDataSet
    SQL.Strings = (
      'SELECT T006_ID, T006_NAME || '#39' - '#39' || T006_DESC DESC_FLD'
      'FROM V_PAY_VIEW'
      'ORDER BY T006_NAME')
    QBEDefinition.QBEFieldDefs = {
      040000000200000008000000444553435F464C44010000000000070000005430
      30365F4944010000000000}
    Session = dmMain.OracleSession
    Left = 424
    Top = 90
    object odsPayT006_ID: TFloatField
      FieldName = 'T006_ID'
      Required = True
    end
    object odsPayDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 1258
    end
  end
  object dsPay: TDataSource
    DataSet = odsPay
    Left = 456
    Top = 90
  end
  object oqSetInvType: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_FORM_405.p_Set_Inv_Type_One (:T001_INV_TYPE, :T001_ID);'
      '  COMMIT;'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000E0000003A543030315F494E565F54595045030000000000
      000000000000080000003A543030315F4944040000000000000000000000}
    Left = 848
    Top = 152
  end
  object oqCloneSumInfo: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec T001_SUM%ROWTYPE;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T001_INV_TYPE := :T001_INV_TYPE;'
      '  v_rec.T001_PROCESSED := :T001_PROCESSED;'
      '  v_rec.T001_DPB_COMMENT := :T001_DPB_COMMENT;'
      '  v_rec.IS_FIRST := :IS_FIRST;'
      ''
      '  Pk_Hand_Correct_405.p_t001_sum_clone(v_rec);'
      ''
      '  :T001_ID := v_rec.T001_ID;'
      '  :T002_ID := v_rec.T002_ID;'
      '  :T001_PART_ID := v_rec.T001_PART_ID;'
      '  :T001_DATE_OP := v_rec.T001_DATE_OP;'
      '  :T001_OP_ID := v_rec.T001_OP_ID;'
      '  :T001_OP_PAY_ID := v_rec.T001_OP_PAY_ID;'
      '  :T001_OP_COUNT := v_rec.T001_OP_COUNT;'
      '  :T001_OP_CR_ID := v_rec.T001_OP_CR_ID;'
      '  :T001_OP_SUM := v_rec.T001_OP_SUM;'
      '  :T001_OP_PROC := v_rec.T001_OP_PROC;'
      '  :T001_DATE_ON := v_rec.T001_DATE_ON;'
      '  :T001_DATE_OFF := v_rec.T001_DATE_OFF;'
      '  :T001_CR_ID := v_rec.T001_CR_ID;'
      '  :T001_ROW_PREFIX := v_rec.T001_ROW_PREFIX;'
      '  :T001_ROW_NUM := v_rec.T001_ROW_NUM;'
      '  :T001_IS_RANSOM := v_rec.T001_IS_RANSOM;'
      '  :T012_ID := v_rec.T012_ID;'
      '  :T013_ID := v_rec.T013_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T001_INV_TYPE := v_rec.T001_INV_TYPE;'
      '  :T001_DPB_COMMENT :=  v_rec.T001_DPB_COMMENT;'
      ''
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000017000000080000003A543030325F4944040000000000000000000000
      0D0000003A543030315F504152545F49440400000000000000000000000D0000
      003A543030315F444154455F4F500C00000000000000000000000B0000003A54
      3030315F4F505F49440400000000000000000000000F0000003A543030315F4F
      505F5041595F49440400000000000000000000000E0000003A543030315F4F50
      5F434F554E540400000000000000000000000E0000003A543030315F4F505F43
      525F49440500000000000000000000000C0000003A543030315F4F505F53554D
      0400000000000000000000000D0000003A543030315F4F505F50524F43040000
      0000000000000000000D0000003A543030315F444154455F4F4E0C0000000000
      0000000000000E0000003A543030315F444154455F4F46460C00000000000000
      000000000B0000003A543030315F43525F494405000000000000000000000010
      0000003A543030315F524F575F5052454649580400000000000000000000000D
      0000003A543030315F524F575F4E554D04000000000000000000000008000000
      3A543030315F49440400000000000000000000000F0000003A543030315F4953
      5F52414E534F4D050000000000000000000000080000003A543031325F494404
      0000000000000000000000080000003A543031335F4944040000000000000000
      000000080000003A543033305F49440400000000000000000000000E0000003A
      543030315F494E565F54595045030000000000000000000000110000003A5430
      30315F4450425F434F4D4D454E540500000000000000000000000F0000003A54
      3030315F50524F434553534544040000000000000000000000090000003A4953
      5F4649525354050000000000000000000000}
    Left = 297
    Top = 373
  end
end
