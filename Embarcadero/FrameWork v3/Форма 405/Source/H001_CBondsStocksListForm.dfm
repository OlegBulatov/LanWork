inherited H001_CBondsStocksList: TH001_CBondsStocksList
  Top = 179
  Width = 777
  Height = 537
  Caption = 'H001_CBondsStocksList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 766
    Top = 57
    Height = 394
  end
  inherited paRight: TPanel
    Left = 769
    Top = 57
    Height = 394
  end
  inherited paMain: TPanel
    Top = 57
    Width = 766
    Height = 394
    inherited ToolBar2: TToolBar
      Width = 766
      inherited ToolButton17: TToolButton
        Enabled = False
        Visible = False
      end
      inherited ToolButton18: TToolButton
        Enabled = False
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Enabled = False
        Visible = False
      end
      inherited ToolButton4: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 766
      Height = 329
      AdvSettings.Indexes = <
        item
          FieldName = 'T020_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T031_EMISSION_ID'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 5
              Caption = 'Эмитент'
            end
            item
              FirstCol = 9
              LastCol = 10
              Caption = 'Полное название акции'
            end
            item
              FirstCol = 11
              LastCol = 12
              Caption = 'Краткое название акции'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T020_ID'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T020_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Название'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T020_INN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ИНН'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T020_OGRN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ОГРН'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T020_COUNTRY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Страна'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T020_RATING'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Рейтинг'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_EMISSION_ID'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ID акции'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_REGN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Рег. №'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_ISIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Код ISIN'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Русск.'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_NAME_FULL_ENG'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Англ.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_NAME_SHORT_RUS'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Русск.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_NAME_SHORT_ENG'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Англ.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_TYPE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Вид акции'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_NOMINAL'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Номинал'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_ISSUE_NUMBER'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Номер выпуска'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_QUANTITY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Общее количество'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_FREE_PERCENT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Процент в свободном обращении'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_COMMENT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дополнительная информация'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_BLUE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Голубая фишка'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_JOINED'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Объединена с другим выпуском'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_JOIN_ID'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ID выпуска, с которым объединена'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_JOIN_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата объединения'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_MMVB_TRADE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Торгуется на ММВБ'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_MMVB_TICKER'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Тикер ММВБ'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_MMVB_TRADE_LIST'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Котировальный лист ММВБ'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_MMVB_DATE_START'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата начала обращения на ММВБ'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_MMVB_DATE_END'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата окончания обращения на ММВБ'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_RTS_TRADE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Торгуется ли на РТС'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_RTS_TICKER'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Тикер РТС'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_RTS_TRADE_LIST'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Котировальный лист РТС'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_RTS_DATE_START'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата начала обращения на РТС'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_RTS_DATE_END'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата окончания обращения на РТС'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_DKK_CODE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Код ДКК'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_RTS_MAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Главная эмиссия (для акций с одинаковым тикером)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_STANDART_TRADE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Торгуется ли на Стандарт'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_STANDART_TICKER'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Тикер Стандарт'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_STANDART_TRADE_LIST'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Котировальный лист Стандарт'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_STANDART_DATE_START'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата начала обращения на Стандарт'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_STANDART_DATE_END'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата окончания обращения на стандарт'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_STANDART_MAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Главная эмиссия (для акций с одинаковым тикером)'
          Width = 80
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 766
      inherited Panel1: TPanel
        Left = 739
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 766
      inherited Panel1: TPanel
        Left = 739
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 484
    Width = 769
  end
  inherited pnlButtons: TPanel
    Top = 451
    Width = 769
    inherited OKBtn: TButton
      Left = 611
    end
    inherited CancelBtn: TButton
      Left = 691
    end
  end
  object paTop: TPanel [5]
    Left = 0
    Top = 0
    Width = 769
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
  end
  inherited dsList: TDataSource
    Top = 279
  end
  inherited ActionList: TActionList
    Top = 279
  end
  inherited PopupMenu: TPopupMenu
    Top = 311
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T020_ID,'
      '  T020_NAME,'
      '  T020_INN,'
      '  T020_OGRN,'
      '  T020_COUNTRY,'
      '  T020_RATING,'
      '  T020_LOAD_DATE,'
      '  T020_LOAD_FILE,'
      '  T020_LOADER,'
      '  T030_ID,'
      '  T031_EMISSION_ID,'
      '  T030_NAME,'
      '  T030_REGN,'
      '  T030_ISIN,'
      '  T030_NOMINAL,'
      '  T030_LOAD_DATE,'
      '  T030_LOAD_FILE,'
      '  T030_LOADER,'
      '  T031_NAME_FULL_ENG,'
      '  T031_NAME_SHORT_RUS,'
      '  T031_NAME_SHORT_ENG,'
      '  T031_ISSUE_NUMBER,'
      '  T031_QUANTITY,'
      '  T031_FREE_PERCENT,'
      '  T031_COMMENT,'
      '  T031_BLUE,'
      '  T031_JOINED,'
      '  T031_JOIN_ID,'
      '  T031_JOIN_DATE,'
      '  T031_MMVB_TRADE,'
      '  T031_MMVB_TICKER,'
      '  T031_MMVB_TRADE_LIST,'
      '  T031_MMVB_DATE_START,'
      '  T031_MMVB_DATE_END,'
      '  T031_RTS_TRADE,'
      '  T031_RTS_TICKER,'
      '  T031_RTS_TRADE_LIST,'
      '  T031_RTS_DATE_START,'
      '  T031_RTS_DATE_END,'
      '  T031_DKK_CODE,'
      '  T031_RTS_MAIN,'
      '  T031_STANDART_TRADE,'
      '  T031_STANDART_TICKER,'
      '  T031_STANDART_TRADE_LIST,'
      '  T031_STANDART_DATE_START,'
      '  T031_STANDART_DATE_END,'
      '  T031_STANDART_MAIN,'
      '  T031_TYPE,'
      '  T031_LOAD_DATE,'
      '  T031_LOAD_FILE,'
      '  T031_LOADER,'
      '  T036_ID,'
      '  T035_ID,'
      '  T021_ID,'
      '  IS_CHANGED'
      'from V_CB_STOCKS')
    QBEDefinition.QBEFieldDefs = {
      040000003700000007000000543032305F494401000000000009000000543032
      305F4E414D4501000000000008000000543032305F494E4E0100000000000900
      0000543032305F4F47524E0100000000000C000000543032305F434F554E5452
      590100000000000B000000543032305F524154494E470100000000000E000000
      543032305F4C4F41445F444154450100000000000E000000543032305F4C4F41
      445F46494C450100000000000B000000543032305F4C4F414445520100000000
      0007000000543033305F494401000000000010000000543033315F454D495353
      494F4E5F494401000000000009000000543033305F4E414D4501000000000009
      000000543033305F5245474E01000000000009000000543033305F4953494E01
      00000000000C000000543033305F4E4F4D494E414C0100000000000E00000054
      3033305F4C4F41445F444154450100000000000E000000543033305F4C4F4144
      5F46494C450100000000000B000000543033305F4C4F41444552010000000000
      12000000543033315F4E414D455F46554C4C5F454E4701000000000013000000
      543033315F4E414D455F53484F52545F52555301000000000013000000543033
      315F4E414D455F53484F52545F454E4701000000000011000000543033315F49
      535355455F4E554D4245520100000000000D000000543033315F5155414E5449
      545901000000000011000000543033315F465245455F50455243454E54010000
      0000000C000000543033315F434F4D4D454E5401000000000009000000543033
      315F424C55450100000000000C000000543033315F4A4F494E5F494401000000
      00000E000000543033315F4A4F494E5F444154450100000000000F0000005430
      33315F4D4D56425F545241444501000000000010000000543033315F4D4D5642
      5F5449434B455201000000000014000000543033315F4D4D56425F5452414445
      5F4C49535401000000000014000000543033315F4D4D56425F444154455F5354
      41525401000000000012000000543033315F4D4D56425F444154455F454E4401
      00000000000E000000543033315F5254535F54524144450100000000000F0000
      00543033315F5254535F5449434B455201000000000013000000543033315F52
      54535F54524144455F4C49535401000000000013000000543033315F5254535F
      444154455F535441525401000000000011000000543033315F5254535F444154
      455F454E440100000000000D000000543033315F444B4B5F434F444501000000
      00000D000000543033315F5254535F4D41494E01000000000013000000543033
      315F5354414E444152545F545241444501000000000014000000543033315F53
      54414E444152545F5449434B455201000000000018000000543033315F535441
      4E444152545F54524144455F4C49535401000000000018000000543033315F53
      54414E444152545F444154455F53544152540100000000001600000054303331
      5F5354414E444152545F444154455F454E440100000000001200000054303331
      5F5354414E444152545F4D41494E01000000000009000000543033315F545950
      450100000000000E000000543033315F4C4F41445F444154450100000000000E
      000000543033315F4C4F41445F46494C450100000000000B000000543033315F
      4C4F4144455201000000000007000000543033365F4944010000000000070000
      00543033355F494401000000000007000000543032315F49440100000000000A
      00000049535F4348414E4745440100000000000B000000543033315F4A4F494E
      4544010000000000}
    Top = 279
    object odsListT020_ID: TFloatField
      FieldName = 'T020_ID'
    end
    object odsListT020_NAME: TStringField
      FieldName = 'T020_NAME'
      Size = 255
    end
    object odsListT020_INN: TStringField
      FieldName = 'T020_INN'
      Size = 12
    end
    object odsListT020_OGRN: TStringField
      FieldName = 'T020_OGRN'
      Size = 15
    end
    object odsListT020_COUNTRY: TStringField
      FieldName = 'T020_COUNTRY'
      Size = 127
    end
    object odsListT020_RATING: TStringField
      FieldName = 'T020_RATING'
      Size = 64
    end
    object odsListT020_LOAD_DATE: TDateTimeField
      FieldName = 'T020_LOAD_DATE'
    end
    object odsListT020_LOAD_FILE: TStringField
      FieldName = 'T020_LOAD_FILE'
      Size = 255
    end
    object odsListT020_LOADER: TStringField
      FieldName = 'T020_LOADER'
      Size = 255
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT031_EMISSION_ID: TFloatField
      FieldName = 'T031_EMISSION_ID'
    end
    object odsListT030_NAME: TStringField
      FieldName = 'T030_NAME'
      Size = 255
    end
    object odsListT030_REGN: TStringField
      FieldName = 'T030_REGN'
      Size = 127
    end
    object odsListT030_ISIN: TStringField
      FieldName = 'T030_ISIN'
      Size = 15
    end
    object odsListT030_NOMINAL: TFloatField
      FieldName = 'T030_NOMINAL'
    end
    object odsListT030_LOAD_DATE: TDateTimeField
      FieldName = 'T030_LOAD_DATE'
    end
    object odsListT030_LOAD_FILE: TStringField
      FieldName = 'T030_LOAD_FILE'
      Size = 255
    end
    object odsListT030_LOADER: TStringField
      FieldName = 'T030_LOADER'
      Size = 255
    end
    object odsListT031_NAME_FULL_ENG: TStringField
      FieldName = 'T031_NAME_FULL_ENG'
      Size = 255
    end
    object odsListT031_NAME_SHORT_RUS: TStringField
      FieldName = 'T031_NAME_SHORT_RUS'
      Size = 127
    end
    object odsListT031_NAME_SHORT_ENG: TStringField
      FieldName = 'T031_NAME_SHORT_ENG'
      Size = 127
    end
    object odsListT031_ISSUE_NUMBER: TStringField
      FieldName = 'T031_ISSUE_NUMBER'
      Size = 16
    end
    object odsListT031_QUANTITY: TFloatField
      FieldName = 'T031_QUANTITY'
    end
    object odsListT031_FREE_PERCENT: TFloatField
      FieldName = 'T031_FREE_PERCENT'
    end
    object odsListT031_COMMENT: TStringField
      FieldName = 'T031_COMMENT'
      Size = 255
    end
    object odsListT031_BLUE: TStringField
      FieldName = 'T031_BLUE'
      Size = 3
    end
    object odsListT031_JOINED: TStringField
      FieldName = 'T031_JOINED'
      Size = 3
    end
    object odsListT031_JOIN_ID: TFloatField
      FieldName = 'T031_JOIN_ID'
    end
    object odsListT031_JOIN_DATE: TDateTimeField
      FieldName = 'T031_JOIN_DATE'
    end
    object odsListT031_MMVB_TRADE: TStringField
      FieldName = 'T031_MMVB_TRADE'
      Size = 3
    end
    object odsListT031_MMVB_TICKER: TStringField
      FieldName = 'T031_MMVB_TICKER'
      Size = 32
    end
    object odsListT031_MMVB_TRADE_LIST: TStringField
      FieldName = 'T031_MMVB_TRADE_LIST'
      Size = 127
    end
    object odsListT031_MMVB_DATE_START: TDateTimeField
      FieldName = 'T031_MMVB_DATE_START'
    end
    object odsListT031_MMVB_DATE_END: TDateTimeField
      FieldName = 'T031_MMVB_DATE_END'
    end
    object odsListT031_RTS_TRADE: TStringField
      FieldName = 'T031_RTS_TRADE'
      Size = 3
    end
    object odsListT031_RTS_TICKER: TStringField
      FieldName = 'T031_RTS_TICKER'
      Size = 32
    end
    object odsListT031_RTS_TRADE_LIST: TStringField
      FieldName = 'T031_RTS_TRADE_LIST'
      Size = 127
    end
    object odsListT031_RTS_DATE_START: TDateTimeField
      FieldName = 'T031_RTS_DATE_START'
    end
    object odsListT031_RTS_DATE_END: TDateTimeField
      FieldName = 'T031_RTS_DATE_END'
    end
    object odsListT031_DKK_CODE: TStringField
      FieldName = 'T031_DKK_CODE'
      Size = 32
    end
    object odsListT031_RTS_MAIN: TStringField
      FieldName = 'T031_RTS_MAIN'
      Size = 3
    end
    object odsListT031_STANDART_TRADE: TStringField
      FieldName = 'T031_STANDART_TRADE'
      Size = 3
    end
    object odsListT031_STANDART_TICKER: TStringField
      FieldName = 'T031_STANDART_TICKER'
      Size = 32
    end
    object odsListT031_STANDART_TRADE_LIST: TStringField
      FieldName = 'T031_STANDART_TRADE_LIST'
      Size = 127
    end
    object odsListT031_STANDART_DATE_START: TDateTimeField
      FieldName = 'T031_STANDART_DATE_START'
    end
    object odsListT031_STANDART_DATE_END: TDateTimeField
      FieldName = 'T031_STANDART_DATE_END'
    end
    object odsListT031_STANDART_MAIN: TStringField
      FieldName = 'T031_STANDART_MAIN'
      Size = 3
    end
    object odsListT031_TYPE: TStringField
      FieldName = 'T031_TYPE'
      Size = 32
    end
    object odsListT031_LOAD_DATE: TDateTimeField
      FieldName = 'T031_LOAD_DATE'
    end
    object odsListT031_LOAD_FILE: TStringField
      FieldName = 'T031_LOAD_FILE'
      Size = 255
    end
    object odsListT031_LOADER: TStringField
      FieldName = 'T031_LOADER'
      Size = 255
    end
    object odsListT036_ID: TFloatField
      FieldName = 'T036_ID'
    end
    object odsListT035_ID: TFloatField
      FieldName = 'T035_ID'
    end
    object odsListT021_ID: TFloatField
      FieldName = 'T021_ID'
    end
    object odsListIS_CHANGED: TFloatField
      FieldName = 'IS_CHANGED'
    end
  end
  inherited pkList: TOraclePackage
    Top = 311
  end
  inherited oqAdd: TOracleQuery
    Top = 348
  end
  inherited oqUpdate: TOracleQuery
    Top = 348
  end
  inherited oqDelete: TOracleQuery
    Top = 348
  end
  inherited oqDupl: TOracleQuery
    Top = 348
  end
  inherited pmFilter: TPopupMenu
    Top = 260
  end
end
