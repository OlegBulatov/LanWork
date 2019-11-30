inherited H002_CBondsEmissionsList: TH002_CBondsEmissionsList
  Caption = 'H002_CBondsEmissionsList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
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
        Visible = False
      end
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
        Action = actFlows
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
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
          Title.Caption = 'ID облигации'
          Width = 80
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Название облигации'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_TYPE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Вид облигации'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_INDUSTRY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Отрасль'
          Width = 120
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
          FieldName = 'T032_CURRENCY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Валюта'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_VOLUME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Объем эмиссии'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_STATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Статус'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_MATURITY_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата погашения'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_INDEX'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Индексация'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_COUPON_PERIOD'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Периодичность выплаты купонов'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_FLOATING_RATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Плавающая ставка'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_BASE_RATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Базовая ставка'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_MARGE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Маржа'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_CONVERTING'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Конвертируемость'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_DEPENDS'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Условия досрочного выкупа'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_AGENT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Агент по размещению облигаций'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_TRADE_IN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Торговая площадка'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_COMMENTS'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дополнительная информация'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_TRADE_TYPE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Вид размещения'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_FIRST_PRICE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Цена первичного размещения'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_FIRST_YIELD'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Доходность первичного размещения'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_REG_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата регистрации'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_CIRCULAR_AMOUNT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Объем в обращении'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_TRADE_START_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата начала размещения'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_TRADE_END_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата окончания размещения'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_CIRCULAR_START_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Расчетная дата начала обращения'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_MMVB_TICKER'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Тикер ММВБ'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_OFFER_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата ближайшей оферты'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_MARKET_SEG_CODE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Код сегмента рынка'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_LOT_MULTIPLICITY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Лот кратности'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_OUTSTANDING_VALUE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Непогашенный номинал'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_MINIMAL_TRADE_LOT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Минимальный торговый лот'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_OPTION_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата досрочного погашения'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_RATING'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Рейтинг эмиссии'
          Width = 94
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    object actFlows: TAction
      Caption = 'Выплаты'
      ImageIndex = 43
      OnExecute = actFlowsExecute
      OnUpdate = actFlowsUpdate
    end
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
      '  T032_RATING,'
      '  T032_INDUSTRY,'
      '  T032_VOLUME,'
      '  T032_CURRENCY,'
      '  T032_STATE,'
      '  T032_MATURITY_DATE,'
      '  T032_INDEX,'
      '  T032_COUPON_PERIOD,'
      '  T032_FLOATING_RATE,'
      '  T032_BASE_RATE,'
      '  T032_MARGE,'
      '  T032_CONVERTING,'
      '  T032_DEPENDS,'
      '  T032_AGENT,'
      '  T032_TRADE_IN,'
      '  T032_COMMENTS,'
      '  T032_TRADE_TYPE,'
      '  T032_FIRST_PRICE,'
      '  T032_FIRST_YIELD,'
      '  T032_REG_DATE,'
      '  T032_TRADE_START_DATE,'
      '  T032_TRADE_END_DATE,'
      '  T032_CIRCULAR_START_DATE,'
      '  T032_OFFER_DATE,'
      '  T032_OPTION_DATE,'
      '  T032_CIRCULAR_AMOUNT,'
      '  T032_OUTSTANDING_VALUE,'
      '  T032_MINIMAL_TRADE_LOT,'
      '  T032_LOT_MULTIPLICITY,'
      '  T032_MARKET_SEG_CODE,'
      '  T032_MMVB_TICKER,'
      '  T032_TYPE,'
      '  T032_LOAD_DATE,'
      '  T032_LOAD_FILE,'
      '  T032_LOADER,'
      '  T037_ID,'
      '  T035_ID,'
      '  T021_ID,'
      '  IS_CHANGED,'
      '  HAS_FLOWS'
      'from V_CB_EMISSIONS')
    QBEDefinition.QBEFieldDefs = {
      040000003A00000007000000543032305F494401000000000009000000543032
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
      0B000000543033325F524154494E470100000000000D000000543033325F494E
      4455535452590100000000000B000000543033325F564F4C554D450100000000
      000D000000543033325F43555252454E43590100000000000A00000054303332
      5F535441544501000000000012000000543033325F4D415455524954595F4441
      54450100000000000A000000543033325F494E44455801000000000012000000
      543033325F434F55504F4E5F504552494F440100000000001200000054303332
      5F464C4F4154494E475F524154450100000000000E000000543033325F424153
      455F524154450100000000000A000000543033325F4D41524745010000000000
      0F000000543033325F434F4E56455254494E470100000000000C000000543033
      325F444550454E44530100000000000A000000543033325F4147454E54010000
      0000000D000000543033325F54524144455F494E0100000000000D0000005430
      33325F434F4D4D454E54530100000000000F000000543033325F54524144455F
      5459504501000000000010000000543033325F46495253545F50524943450100
      0000000010000000543033325F46495253545F5949454C440100000000000D00
      0000543033325F5245475F4441544501000000000015000000543033325F5452
      4144455F53544152545F4441544501000000000013000000543033325F545241
      44455F454E445F4441544501000000000018000000543033325F43495243554C
      41525F53544152545F444154450100000000000F000000543033325F4F464645
      525F4441544501000000000010000000543033325F4F5054494F4E5F44415445
      01000000000014000000543033325F43495243554C41525F414D4F554E540100
      0000000016000000543033325F4F55545354414E44494E475F56414C55450100
      0000000016000000543033325F4D494E494D414C5F54524144455F4C4F540100
      0000000015000000543033325F4C4F545F4D554C5449504C4943495459010000
      00000014000000543033325F4D41524B45545F5345475F434F44450100000000
      0010000000543033325F4D4D56425F5449434B45520100000000000900000054
      3033325F545950450100000000000E000000543033325F4C4F41445F44415445
      0100000000000E000000543033325F4C4F41445F46494C450100000000000B00
      0000543033325F4C4F4144455201000000000007000000543033375F49440100
      0000000007000000543033355F494401000000000007000000543032315F4944
      0100000000000A00000049535F4348414E474544010000000000090000004841
      535F464C4F5753010000000000}
    Active = True
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
    object odsListT032_RATING: TStringField
      FieldName = 'T032_RATING'
      Size = 64
    end
    object odsListT032_INDUSTRY: TStringField
      FieldName = 'T032_INDUSTRY'
      Size = 255
    end
    object odsListT032_VOLUME: TFloatField
      FieldName = 'T032_VOLUME'
    end
    object odsListT032_CURRENCY: TStringField
      FieldName = 'T032_CURRENCY'
      Size = 3
    end
    object odsListT032_STATE: TStringField
      FieldName = 'T032_STATE'
      Size = 127
    end
    object odsListT032_MATURITY_DATE: TDateTimeField
      FieldName = 'T032_MATURITY_DATE'
    end
    object odsListT032_INDEX: TStringField
      FieldName = 'T032_INDEX'
      Size = 255
    end
    object odsListT032_COUPON_PERIOD: TFloatField
      FieldName = 'T032_COUPON_PERIOD'
    end
    object odsListT032_FLOATING_RATE: TStringField
      FieldName = 'T032_FLOATING_RATE'
      Size = 3
    end
    object odsListT032_BASE_RATE: TStringField
      FieldName = 'T032_BASE_RATE'
      Size = 255
    end
    object odsListT032_MARGE: TFloatField
      FieldName = 'T032_MARGE'
    end
    object odsListT032_CONVERTING: TStringField
      FieldName = 'T032_CONVERTING'
      Size = 3
    end
    object odsListT032_DEPENDS: TStringField
      FieldName = 'T032_DEPENDS'
      Size = 255
    end
    object odsListT032_AGENT: TStringField
      FieldName = 'T032_AGENT'
      Size = 255
    end
    object odsListT032_TRADE_IN: TStringField
      FieldName = 'T032_TRADE_IN'
      Size = 255
    end
    object odsListT032_COMMENTS: TStringField
      FieldName = 'T032_COMMENTS'
      Size = 255
    end
    object odsListT032_TRADE_TYPE: TStringField
      FieldName = 'T032_TRADE_TYPE'
      Size = 24
    end
    object odsListT032_FIRST_PRICE: TFloatField
      FieldName = 'T032_FIRST_PRICE'
    end
    object odsListT032_FIRST_YIELD: TFloatField
      FieldName = 'T032_FIRST_YIELD'
    end
    object odsListT032_REG_DATE: TDateTimeField
      FieldName = 'T032_REG_DATE'
    end
    object odsListT032_TRADE_START_DATE: TDateTimeField
      FieldName = 'T032_TRADE_START_DATE'
    end
    object odsListT032_TRADE_END_DATE: TDateTimeField
      FieldName = 'T032_TRADE_END_DATE'
    end
    object odsListT032_CIRCULAR_START_DATE: TDateTimeField
      FieldName = 'T032_CIRCULAR_START_DATE'
    end
    object odsListT032_OFFER_DATE: TDateTimeField
      FieldName = 'T032_OFFER_DATE'
    end
    object odsListT032_OPTION_DATE: TDateTimeField
      FieldName = 'T032_OPTION_DATE'
    end
    object odsListT032_CIRCULAR_AMOUNT: TFloatField
      FieldName = 'T032_CIRCULAR_AMOUNT'
    end
    object odsListT032_OUTSTANDING_VALUE: TFloatField
      FieldName = 'T032_OUTSTANDING_VALUE'
    end
    object odsListT032_MINIMAL_TRADE_LOT: TFloatField
      FieldName = 'T032_MINIMAL_TRADE_LOT'
    end
    object odsListT032_LOT_MULTIPLICITY: TFloatField
      FieldName = 'T032_LOT_MULTIPLICITY'
    end
    object odsListT032_MARKET_SEG_CODE: TFloatField
      FieldName = 'T032_MARKET_SEG_CODE'
    end
    object odsListT032_MMVB_TICKER: TStringField
      FieldName = 'T032_MMVB_TICKER'
      Size = 32
    end
    object odsListT032_TYPE: TStringField
      FieldName = 'T032_TYPE'
      Size = 64
    end
    object odsListT032_LOAD_DATE: TDateTimeField
      FieldName = 'T032_LOAD_DATE'
    end
    object odsListT032_LOAD_FILE: TStringField
      FieldName = 'T032_LOAD_FILE'
      Size = 255
    end
    object odsListT032_LOADER: TStringField
      FieldName = 'T032_LOADER'
      Size = 255
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
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
    object odsListHAS_FLOWS: TFloatField
      FieldName = 'HAS_FLOWS'
    end
  end
end
