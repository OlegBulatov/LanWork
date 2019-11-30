inherited E001_HistoryList: TE001_HistoryList
  Width = 788
  Height = 497
  Caption = 'E001_HistoryList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 777
    Height = 411
  end
  inherited paRight: TPanel
    Left = 780
    Height = 411
  end
  inherited paMain: TPanel
    Width = 777
    Height = 411
    inherited ToolBar2: TToolBar
      Width = 777
      Images = dmPicters.ilCommonPictures
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 597
        Top = 0
        Action = actSettings
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 777
      Height = 346
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 6
              LastCol = 17
              Caption = 'Входящий остаток'
            end
            item
              FirstCol = 18
              LastCol = 33
              Caption = 'Операции'
            end
            item
              FirstCol = 37
              LastCol = 48
              Caption = 'Исходящий остаток'
            end>
        end
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 8
              LastCol = 10
              Caption = 'Форма 711'
            end
            item
              FirstCol = 11
              LastCol = 12
              Caption = 'Небанк.деп.'
            end
            item
              FirstCol = 13
              LastCol = 14
              Caption = '711 + НД'
            end
            item
              FirstCol = 15
              LastCol = 17
              Caption = 'МИП'
            end
            item
              FirstCol = 20
              LastCol = 21
              Caption = 'Форма 711'
            end
            item
              FirstCol = 22
              LastCol = 23
              Caption = 'Небанк.деп.'
            end
            item
              FirstCol = 24
              LastCol = 25
              Caption = '711 + НД'
            end
            item
              FirstCol = 26
              LastCol = 27
              Caption = 'Форма 405'
            end
            item
              FirstCol = 28
              LastCol = 29
              Caption = 'Расчет'
            end
            item
              FirstCol = 30
              LastCol = 31
              Caption = 'Корректировка'
            end
            item
              FirstCol = 32
              LastCol = 33
              Caption = 'МИП'
            end
            item
              FirstCol = 34
              LastCol = 35
              Caption = 'Прочие'
            end
            item
              FirstCol = 36
              LastCol = 36
              Caption = 'Переоценка'
            end
            item
              FirstCol = 39
              LastCol = 41
              Caption = 'Форма 711'
            end
            item
              FirstCol = 42
              LastCol = 43
              Caption = 'Небанк.деп.'
            end
            item
              FirstCol = 44
              LastCol = 45
              Caption = '711 + НД'
            end
            item
              FirstCol = 46
              LastCol = 48
              Caption = 'МИП'
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
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T167_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T167_EXCHANGE'
          PickList.Strings = ()
          Title.Caption = 'Биржа'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T010_ISIN_TRANSL'
          PickList.Strings = ()
          Title.Caption = 'ISIN'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_EMISS_SIZE'
          PickList.Strings = ()
          Title.Caption = 'Выпуск, млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_USD_RATE'
          PickList.Strings = ()
          Title.Caption = 'Цена,$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_711_CNT_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_711_USD_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_170_711_PRC'
          PickList.Strings = ()
          Title.Caption = '% от вып. '
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_NB_CNT_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_NB_USD_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_CNT_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_USD_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_170_CNT_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_170_USD_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_S_170_EMISS_PRC'
          PickList.Strings = ()
          Title.Caption = '% от вып. '
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_FLAG'
          PickList.Strings = ()
          Title.Caption = 'Флаг'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T171_O_USD_RATE'
          PickList.Strings = ()
          Title.Caption = 'Цена,$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_711_CNT_SAL'
          PickList.Strings = ()
          Title.Caption = 'млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_711_USD_SAL'
          PickList.Strings = ()
          Title.Caption = 'млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_NB_CNT_SAL'
          PickList.Strings = ()
          Title.Caption = 'млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_NB_USD_SAL'
          PickList.Strings = ()
          Title.Caption = 'млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_CNT_SAL'
          PickList.Strings = ()
          Title.Caption = 'млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_USD_SAL'
          PickList.Strings = ()
          Title.Caption = 'млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_405_CNT_SAL'
          PickList.Strings = ()
          Title.Caption = '405 млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_405_USD_SAL'
          PickList.Strings = ()
          Title.Caption = '405 млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_405_CNT_SAL_C'
          PickList.Strings = ()
          Title.Caption = 'Расч млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_405_CNT_SAL_C_PRC'
          PickList.Strings = ()
          Title.Caption = '% от факт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_405_CNT_E'
          PickList.Strings = ()
          Title.Caption = 'Корр млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_405_USD_E'
          PickList.Strings = ()
          Title.Caption = 'Корр млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_170_CNT_SAL'
          PickList.Strings = ()
          Title.Caption = 'Оп млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_170_USD_SAL'
          PickList.Strings = ()
          Title.Caption = 'Оп млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_OTH_CNT_E'
          PickList.Strings = ()
          Title.Caption = 'Проч млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_OTH_USD_E'
          PickList.Strings = ()
          Title.Caption = 'Проч млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_O_PER_USD'
          PickList.Strings = ()
          Title.Caption = 'Пер млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_EMISS_SIZE'
          PickList.Strings = ()
          Title.Caption = 'Выпуск, млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_USD_RATE'
          PickList.Strings = ()
          Title.Caption = 'Цена,$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_711_CNT_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_711_USD_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_170_711_PRC'
          PickList.Strings = ()
          Title.Caption = '% от вып. '
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_NB_CNT_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_NB_USD_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_CNT_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_USD_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_170_CNT_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.шт.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_170_USD_REM'
          PickList.Strings = ()
          Title.Caption = 'млн.$'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_E_170_EMISS_PRC'
          PickList.Strings = ()
          Title.Caption = '% от вып. '
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_FI_SNS_DESC'
          PickList.Strings = ()
          Title.Caption = 'ФО'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARKET_STATUS'
          PickList.Strings = ()
          Title.Caption = 'Статус'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Вид ц.б.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_COMMENTS'
          PickList.Strings = ()
          Title.Caption = 'Примечание'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_LOG_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата изменения'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_LOG_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип изменения'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T171_LOG_USER'
          PickList.Strings = ()
          Title.Caption = 'Источник изменения'
          Width = 100
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 777
      inherited Panel1: TPanel
        Left = 750
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 777
      inherited Panel1: TPanel
        Left = 750
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 444
    Width = 780
  end
  inherited pnlButtons: TPanel
    Top = 411
    Width = 780
    inherited OKBtn: TButton
      Left = 622
    end
    inherited CancelBtn: TButton
      Left = 702
    end
  end
  inherited ActionList: TActionList
    Images = dmPicters.ilCommonPictures
    Left = 48
    Top = 195
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
    object actSettings: TAction
      Caption = 'Поля...'
      Hint = 'Скрыть/отобразить поля...'
      ImageIndex = 63
      OnExecute = actSettingsExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T171_ID,'
      '       T170_ID,'
      '       T028_SHOT_NAME,'
      '       T028_INN,'
      '       T028_FI_SNS_DESC,'
      '       T167_NAME,'
      '       T167_EXCHANGE,'
      '       T010_ISIN_TRANSL,'
      '       T026_SEC_REGN,'
      '       T171_S_EMISS_SIZE,'
      '       T171_S_USD_RATE,'
      '       T171_S_711_CNT_REM,'
      '       T171_S_711_USD_REM,'
      '       T171_S_170_711_PRC,'
      '       T171_S_NB_CNT_REM,'
      '       T171_S_NB_USD_REM,'
      '       T171_S_CNT_REM,'
      '       T171_S_USD_REM,'
      '       T171_S_PRC,'
      '       T171_S_170_CNT_REM,'
      '       T171_S_170_USD_REM,'
      '       T171_S_170_EMISS_PRC,'
      '       T171_O_FLAG,'
      '       T171_O_USD_RATE,'
      '       T171_O_711_CNT_SAL,'
      '       T171_O_711_USD_SAL,'
      '       T171_O_NB_CNT_SAL,'
      '       T171_O_NB_USD_SAL,'
      '       T171_O_CNT_SAL,'
      '       T171_O_USD_SAL,'
      '       T171_O_405_CNT_SAL,'
      '       T171_O_405_USD_SAL,'
      '       T171_O_405_CNT_SAL_C,'
      '       T171_O_405_CNT_SAL_C_PRC,'
      '       T171_O_170_CNT_SAL,'
      '       T171_O_170_USD_SAL,'
      '       T171_O_405_CNT_E,'
      '       T171_O_405_USD_E,'
      '       T171_O_OTH_CNT_E,'
      '       T171_O_OTH_USD_E,'
      '       T171_O_PER_USD,'
      '       T171_E_EMISS_SIZE,'
      '       T171_E_USD_RATE,'
      '       T171_E_711_CNT_REM,'
      '       T171_E_711_USD_REM,'
      '       T171_E_170_711_PRC,'
      '       T171_E_NB_CNT_REM,'
      '       T171_E_NB_USD_REM,'
      '       T171_E_CNT_REM,'
      '       T171_E_USD_REM,'
      '       T171_E_PRC,'
      '       T171_E_170_CNT_REM,'
      '       T171_E_170_USD_REM,'
      '       T171_E_170_EMISS_PRC,'
      '       T171_COMMENTS,'
      '       T171_E_FIXED,'
      '       MARKET_STATUS,'
      '       T030_ID,'
      '       T030_TYPE,'
      '       T171_LOG_DATE, '
      '       T171_LOG_TYPE,'
      '       T171_LOG_USER'
      'from V_405_IIPS_REMAINS_HISTORY'
      'where T170_ID = :T170_ID'
      'order by T171_LOG_DATE DESC')
    Variables.Data = {
      0300000001000000080000003A543137305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000003E00000007000000543137315F494401000000000007000000543137
      305F49440100000000000F000000543137315F535F5553445F52415445010000
      00000012000000543137315F535F3731315F434E545F52454D01000000000011
      000000543137315F535F4E425F434E545F52454D010000000000120000005431
      37315F535F3137305F434E545F52454D0100000000000B000000543137315F4F
      5F464C41470100000000000F000000543137315F4F5F5553445F524154450100
      0000000012000000543137315F4F5F3430355F434E545F53414C010000000000
      12000000543137315F4F5F3430355F5553445F53414C01000000000010000000
      543137315F4F5F3430355F434E545F4501000000000010000000543137315F4F
      5F3430355F5553445F4501000000000012000000543137315F4F5F3137305F43
      4E545F53414C01000000000012000000543137315F4F5F3137305F5553445F53
      414C0100000000000E000000543137315F4F5F5045525F555344010000000000
      0F000000543137315F455F5553445F5241544501000000000012000000543137
      315F455F3731315F434E545F52454D01000000000011000000543137315F455F
      4E425F434E545F52454D01000000000012000000543137315F455F3137305F43
      4E545F52454D0100000000000D000000543137315F434F4D4D454E5453010000
      0000000D000000543137315F4C4F475F444154450100000000000D0000005431
      37315F4C4F475F545950450100000000000D000000543137315F4C4F475F5553
      455201000000000011000000543137315F535F454D4953535F53495A45010000
      00000011000000543137315F455F454D4953535F53495A450100000000000E00
      0000543032385F53484F545F4E414D4501000000000008000000543032385F49
      4E4E01000000000009000000543136375F4E414D450100000000000D00000054
      3136375F45584348414E47450100000000000D000000543032365F5345435F52
      45474E01000000000012000000543137315F535F3731315F5553445F52454D01
      000000000012000000543137315F535F3137305F3731315F5052430100000000
      0011000000543137315F535F4E425F5553445F52454D0100000000000E000000
      543137315F535F434E545F52454D0100000000000E000000543137315F535F55
      53445F52454D0100000000000A000000543137315F535F505243010000000000
      12000000543137315F535F3137305F5553445F52454D01000000000014000000
      543137315F535F3137305F454D4953535F505243010000000000120000005431
      37315F4F5F3731315F434E545F53414C01000000000012000000543137315F4F
      5F3731315F5553445F53414C01000000000011000000543137315F4F5F4E425F
      434E545F53414C01000000000011000000543137315F4F5F4E425F5553445F53
      414C0100000000000E000000543137315F4F5F434E545F53414C010000000000
      0E000000543137315F4F5F5553445F53414C0100000000001400000054313731
      5F4F5F3430355F434E545F53414C5F4301000000000018000000543137315F4F
      5F3430355F434E545F53414C5F435F5052430100000000001000000054313731
      5F4F5F4F54485F434E545F4501000000000010000000543137315F4F5F4F5448
      5F5553445F4501000000000012000000543137315F455F3731315F5553445F52
      454D01000000000012000000543137315F455F3137305F3731315F5052430100
      0000000011000000543137315F455F4E425F5553445F52454D0100000000000E
      000000543137315F455F434E545F52454D0100000000000E000000543137315F
      455F5553445F52454D0100000000000A000000543137315F455F505243010000
      00000012000000543137315F455F3137305F5553445F52454D01000000000014
      000000543137315F455F3137305F454D4953535F5052430100000000000C0000
      00543137315F455F46495845440100000000000D0000004D41524B45545F5354
      4154555301000000000007000000543033305F49440100000000000900000054
      3033305F5459504501000000000010000000543032385F46495F534E535F4445
      534301000000000010000000543031305F4953494E5F5452414E534C01000000
      0000}
    object odsListT171_ID: TFloatField
      FieldName = 'T171_ID'
      Required = True
    end
    object odsListT170_ID: TFloatField
      FieldName = 'T170_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Required = True
      Size = 255
    end
    object odsListT167_NAME: TStringField
      FieldName = 'T167_NAME'
      Size = 50
    end
    object odsListT167_EXCHANGE: TStringField
      FieldName = 'T167_EXCHANGE'
      Size = 50
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 1
    end
    object odsListT171_S_EMISS_SIZE: TFloatField
      FieldName = 'T171_S_EMISS_SIZE'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_S_USD_RATE: TFloatField
      FieldName = 'T171_S_USD_RATE'
      OnGetText = odsList_GetTextRATE
      DisplayFormat = ',###.000'
    end
    object odsListT171_S_711_CNT_REM: TFloatField
      FieldName = 'T171_S_711_CNT_REM'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_S_711_USD_REM: TFloatField
      FieldName = 'T171_S_711_USD_REM'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_S_170_711_PRC: TFloatField
      FieldName = 'T171_S_170_711_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = ',###.0'
    end
    object odsListT171_S_NB_CNT_REM: TFloatField
      FieldName = 'T171_S_NB_CNT_REM'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_S_NB_USD_REM: TFloatField
      FieldName = 'T171_S_NB_USD_REM'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_S_CNT_REM: TFloatField
      FieldName = 'T171_S_CNT_REM'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_S_USD_REM: TFloatField
      FieldName = 'T171_S_USD_REM'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_S_PRC: TFloatField
      FieldName = 'T171_S_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = ',###.0'
    end
    object odsListT171_S_170_CNT_REM: TFloatField
      FieldName = 'T171_S_170_CNT_REM'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_S_170_USD_REM: TFloatField
      FieldName = 'T171_S_170_USD_REM'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_S_170_EMISS_PRC: TFloatField
      FieldName = 'T171_S_170_EMISS_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_FLAG: TStringField
      FieldName = 'T171_O_FLAG'
      Size = 1
    end
    object odsListT171_O_USD_RATE: TFloatField
      FieldName = 'T171_O_USD_RATE'
      OnGetText = odsList_GetTextRATE
      DisplayFormat = ',###.000'
    end
    object odsListT171_O_711_CNT_SAL: TFloatField
      FieldName = 'T171_O_711_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_711_USD_SAL: TFloatField
      FieldName = 'T171_O_711_USD_SAL'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_NB_CNT_SAL: TFloatField
      FieldName = 'T171_O_NB_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_NB_USD_SAL: TFloatField
      FieldName = 'T171_O_NB_USD_SAL'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_CNT_SAL: TFloatField
      FieldName = 'T171_O_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_USD_SAL: TFloatField
      FieldName = 'T171_O_USD_SAL'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_405_CNT_SAL: TFloatField
      FieldName = 'T171_O_405_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_405_USD_SAL: TFloatField
      FieldName = 'T171_O_405_USD_SAL'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_405_CNT_SAL_C: TFloatField
      FieldName = 'T171_O_405_CNT_SAL_C'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_405_CNT_SAL_C_PRC: TFloatField
      FieldName = 'T171_O_405_CNT_SAL_C_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_170_CNT_SAL: TFloatField
      FieldName = 'T171_O_170_CNT_SAL'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_170_USD_SAL: TFloatField
      FieldName = 'T171_O_170_USD_SAL'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_405_CNT_E: TFloatField
      FieldName = 'T171_O_405_CNT_E'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_405_USD_E: TFloatField
      FieldName = 'T171_O_405_USD_E'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_OTH_CNT_E: TFloatField
      FieldName = 'T171_O_OTH_CNT_E'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_OTH_USD_E: TFloatField
      FieldName = 'T171_O_OTH_USD_E'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_O_PER_USD: TFloatField
      FieldName = 'T171_O_PER_USD'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_EMISS_SIZE: TFloatField
      FieldName = 'T171_E_EMISS_SIZE'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_USD_RATE: TFloatField
      FieldName = 'T171_E_USD_RATE'
      OnGetText = odsList_GetTextRATE
      DisplayFormat = ',###.000'
    end
    object odsListT171_E_711_CNT_REM: TFloatField
      FieldName = 'T171_E_711_CNT_REM'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_711_USD_REM: TFloatField
      FieldName = 'T171_E_711_USD_REM'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_170_711_PRC: TFloatField
      FieldName = 'T171_E_170_711_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_NB_CNT_REM: TFloatField
      FieldName = 'T171_E_NB_CNT_REM'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_NB_USD_REM: TFloatField
      FieldName = 'T171_E_NB_USD_REM'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_CNT_REM: TFloatField
      FieldName = 'T171_E_CNT_REM'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_USD_REM: TFloatField
      FieldName = 'T171_E_USD_REM'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_PRC: TFloatField
      FieldName = 'T171_E_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_170_CNT_REM: TFloatField
      FieldName = 'T171_E_170_CNT_REM'
      OnGetText = odsList_GetTextCNT
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_170_USD_REM: TFloatField
      FieldName = 'T171_E_170_USD_REM'
      OnGetText = odsList_GetTextUSD
      DisplayFormat = ',###.0'
    end
    object odsListT171_E_170_EMISS_PRC: TFloatField
      FieldName = 'T171_E_170_EMISS_PRC'
      OnGetText = odsList_GetTextPRC
      DisplayFormat = ',###.0'
    end
    object odsListT171_COMMENTS: TStringField
      FieldName = 'T171_COMMENTS'
      Size = 255
    end
    object odsListT171_E_FIXED: TStringField
      FieldName = 'T171_E_FIXED'
      Size = 1
    end
    object odsListMARKET_STATUS: TStringField
      FieldName = 'MARKET_STATUS'
      Size = 255
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT030_TYPE: TStringField
      FieldName = 'T030_TYPE'
      Size = 13
    end
    object odsListT171_LOG_DATE: TDateTimeField
      FieldName = 'T171_LOG_DATE'
      Required = True
    end
    object odsListT171_LOG_TYPE: TStringField
      FieldName = 'T171_LOG_TYPE'
      Required = True
      Size = 1
    end
    object odsListT171_LOG_USER: TStringField
      FieldName = 'T171_LOG_USER'
      Required = True
      Size = 255
    end
    object odsListT028_FI_SNS_DESC: TStringField
      FieldName = 'T028_FI_SNS_DESC'
      Size = 5
    end
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Size = 255
    end
  end
end
