inherited A008_2_LoadedFile: TA008_2_LoadedFile
  Left = 90
  Top = 180
  Width = 778
  Height = 686
  Caption = 'Данные в файле'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 767
    Height = 601
  end
  object Label9: TLabel [1]
    Left = 12
    Top = 20
    Width = 33
    Height = 13
    Hint = 'Всего компаний'
    Caption = 'Всего:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  inherited paRight: TPanel
    Left = 770
    Height = 601
  end
  inherited paMain: TPanel
    Width = 767
    Height = 601
    inherited ToolBar2: TToolBar
      Top = 76
      Width = 767
      inherited ToolButton18: TToolButton
        Hint = 'Перезагрузить файл (Ctrl+L)'
        Action = nil
        Caption = 'Перезагрузить'
        ImageIndex = 12
        MenuItem = N3
        OnClick = nil
      end
      inherited ToolButton19: TToolButton
        Left = 189
      end
      inherited ToolButton4: TToolButton
        Left = 263
      end
      inherited ToolBar1: TToolBar
        Left = 271
      end
      inherited sp02: TToolButton
        Left = 340
      end
      inherited tbSimFilter: TToolButton
        Left = 348
      end
      inherited tbSep01: TToolButton
        Left = 432
      end
      inherited tlbSearch: TToolBar
        Left = 440
      end
      inherited ToolButton13: TToolButton
        Left = 500
      end
      inherited tbExcel: TToolButton
        Left = 508
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 99
      Width = 767
      Height = 473
      OnColEnter = xxxDBGridColEnter
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T034_ISSUER_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Эмитент'
          Width = 120
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'T034_ISSUER_INN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ИНН'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_ISSUER_OGRN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ОГРН'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_ISSUER_COUNTRY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Страна'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_EMISSION_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Облигация'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_INDUSTRY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Отрасль'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_VOLUME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Объем эмиссии'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_CURRENCY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Валюта номинала'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_EMISSION_TYPE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Вид долговых обязательств'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_EMISSION_STATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Статус'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_MATURITY_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата погашения'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_EMISSION_REGN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Рег.№'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_ISIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Код ISIN'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_NOMINAL'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Номинал'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_INDEX'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Индексация'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_COUPON_PERIOD'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Периодичность выплаты купона'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_FLOATING_RATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Плавающая ставка'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_BASE_RATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Базовая ставка'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_MARGE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Маржа'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_CONVERTING'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Конвертируемость'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_DEPENDS'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Условия досрочного выкупа'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_AGENT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Агент по размещению облигаций'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_TRADE_IN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Торговая площадка'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_COMMENTS'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Доп. информация'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_TRADE_TYPE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Вид размещения'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_FIRST_PRICE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Цена первичного размещения'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_FIRST_YIELD'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Доходность первичного размещения'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_REG_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата регистрации'
          Width = 72
          Visible = True
        end
        item
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'T034_TRADE_START_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата начала размещения'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_TRADE_END_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата окончания размещения'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_CIRCULAR_START_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Расчетная дата начала обращения'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_MMVB_TICKER'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Тикер ММВБ'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_OFFER_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата ближайшей оферты'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_MARKET_SEG_CODE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Код сегмента рынка'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_LOT_MULTIPLICITY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Лот кратности'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_CIRCULAR_AMOUNT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Объем в обращении'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_OUTSTANDING_VALUE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Непогашенный номинал'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_MINIMAL_TRADE_LOT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Минимальный  торговый лот'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_OPTION_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата досрочного погашения'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_ISSUER_RATING'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Рейтинг эмитента'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_EMISSION_RATING'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Рейтинг эмиссии'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_EMISSION_ID'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ID эмиссии'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T034_ISSUER_ID'
          PickList.Strings = ()
          Title.Caption = 'ID эмитента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T034_FILE_NAME'
          PickList.Strings = ()
          Title.Caption = 'Файл загрузки'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T034_LOAD_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата загрузки'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T034_LOADER'
          PickList.Strings = ()
          Title.Caption = 'Кем загружено'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T034_FOR_FILTER'
          PickList.Strings = ()
          Title.Caption = 'Для фильтра'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 34
      Width = 767
      inherited Panel1: TPanel
        Left = 740
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 55
      Width = 767
      inherited Panel1: TPanel
        Left = 740
      end
    end
    object GroupBox1: TPanel
      Left = 0
      Top = 572
      Width = 767
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label1: TLabel
        Left = 12
        Top = 7
        Width = 33
        Height = 13
        Hint = 'Всего компаний'
        Caption = 'Всего:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label2: TLabel
        Left = 131
        Top = 7
        Width = 36
        Height = 13
        Caption = 'Новых:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label3: TLabel
        Left = 259
        Top = 7
        Width = 68
        Height = 13
        Caption = 'Измененных:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText1: TDBText
        Left = 53
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_TOTAL'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText2: TDBText
        Left = 175
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_NEW'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText4: TDBText
        Left = 333
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_CHANGED'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label5: TLabel
        Left = 440
        Top = 8
        Width = 32
        Height = 13
        Caption = 'Label5'
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 767
      Height = 34
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      object Label4: TLabel
        Left = 27
        Top = 11
        Width = 105
        Height = 13
        Caption = 'Показывать записи:'
      end
      object Button1: TButton
        Left = 487
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Обновить'
        TabOrder = 0
        OnClick = Button1Click
      end
      object CbShow: TCheckBox
        Tag = 800
        Left = 7
        Top = 10
        Width = 14
        Height = 17
        Caption = 'Показывать записи:'
        Enabled = False
        State = cbGrayed
        TabOrder = 1
      end
      object CmbShow: TComboBox
        Tag = 801
        Left = 148
        Top = 8
        Width = 331
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        Items.Strings = (
          'Все'
          'Только новые'
          'Новые и измененнные'
          'Только измененные'
          'Измененные новыми данными'
          'Измененные старыми данными')
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 633
    Width = 770
  end
  inherited pnlButtons: TPanel
    Top = 601
    Width = 770
    Height = 32
    inherited OKBtn: TButton
      Left = 748
      Hint = 'Загрузить отмеченные записи'
      Caption = 'Загрузить'
    end
    inherited CancelBtn: TButton
      Left = 828
    end
  end
  inherited dsList: TDataSource
    Top = 267
  end
  inherited ActionList: TActionList
    Left = 104
    Top = 235
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Caption = 'Пересчитать'
      Hint = 'Пересчитать период'
    end
  end
  inherited PopupMenu: TPopupMenu
    inherited N3: TMenuItem
      Action = nil
      Caption = 'Перезагрузить'
      Hint = 'Перезагрузить файл (Ctrl+L)'
      ImageIndex = 12
      ShortCut = 16460
      OnClick = nil
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select '
      '  T034_EMISSION_ID,'
      '  T034_ISSUER_ID,'
      '  T034_ISSUER_NAME,'
      '  T034_ISSUER_INN,'
      '  T034_ISSUER_OGRN,'
      '  T034_ISSUER_COUNTRY,'
      '  T034_ISSUER_RATING,'
      '  T034_EMISSION_RATING,'
      '  T034_EMISSION_NAME,'
      '  T034_INDUSTRY,'
      '  T034_VOLUME,'
      '  T034_CURRENCY,'
      '  T034_EMISSION_TYPE,'
      '  T034_EMISSION_STATE,'
      '  T034_MATURITY_DATE,'
      '  T034_EMISSION_REGN,'
      '  T034_ISIN,'
      '  T034_NOMINAL,'
      '  T034_INDEX,'
      '  T034_COUPON_PERIOD,'
      '  T034_FLOATING_RATE,'
      '  T034_BASE_RATE,'
      '  T034_MARGE,'
      '  T034_CONVERTING,'
      '  T034_DEPENDS,'
      '  T034_AGENT,'
      '  T034_TRADE_IN,'
      '  T034_COMMENTS,'
      '  T034_TRADE_TYPE,'
      '  T034_FIRST_PRICE,'
      '  T034_FIRST_YIELD,'
      '  T034_REG_DATE,'
      '  T034_TRADE_START_DATE,'
      '  T034_TRADE_END_DATE,'
      '  T034_CIRCULAR_START_DATE,'
      '  T034_MMVB_TICKER,'
      '  T034_OFFER_DATE,'
      '  T034_MARKET_SEG_CODE,'
      '  T034_LOT_MULTIPLICITY,'
      '  T034_CIRCULAR_AMOUNT,'
      '  T034_OUTSTANDING_VALUE,'
      '  T034_MINIMAL_TRADE_LOT,'
      '  T034_OPTION_DATE,'
      '  T034_FILE_NAME,'
      '  T034_LOAD_DATE,'
      '  T034_LOADER,'
      '  T034_FOR_FILTER,'
      '  T034_ISSUER_NAME_OLD,'
      '  T034_ISSUER_INN_OLD,'
      '  T034_ISSUER_OGRN_OLD,'
      '  T034_ISSUER_COUNTRY_OLD,'
      '  T034_ISSUER_RATING_OLD,'
      '  T034_EMISSION_RATING_OLD,'
      '  T034_EMISSION_NAME_OLD,'
      '  T034_INDUSTRY_OLD,'
      '  T034_VOLUME_OLD,'
      '  T034_CURRENCY_OLD,'
      '  T034_EMISSION_TYPE_OLD,'
      '  T034_EMISSION_STATE_OLD,'
      '  T034_MATURITY_DATE_OLD,'
      '  T034_EMISSION_REGN_OLD,'
      '  T034_ISIN_OLD,'
      '  T034_NOMINAL_OLD,'
      '  T034_INDEX_OLD,'
      '  T034_COUPON_PERIOD_OLD,'
      '  T034_FLOATING_RATE_OLD,'
      '  T034_BASE_RATE_OLD,'
      '  T034_MARGE_OLD,'
      '  T034_CONVERTING_OLD,'
      '  T034_DEPENDS_OLD,'
      '  T034_AGENT_OLD,'
      '  T034_TRADE_IN_OLD,'
      '  T034_COMMENTS_OLD,'
      '  T034_TRADE_TYPE_OLD,'
      '  T034_FIRST_PRICE_OLD,'
      '  T034_FIRST_YIELD_OLD,'
      '  T034_REG_DATE_OLD,'
      '  T034_TRADE_START_DATE_OLD,'
      '  T034_TRADE_END_DATE_OLD,'
      '  T034_CIRCULAR_START_DATE_OLD,'
      '  T034_MMVB_TICKER_OLD,'
      '  T034_OFFER_DATE_OLD,'
      '  T034_MARKET_SEG_CODE_OLD,'
      '  T034_LOT_MULTIPLICITY_OLD,'
      '  T034_CIRCULAR_AMOUNT_OLD,'
      '  T034_OUTSTANDING_VALUE_OLD,'
      '  T034_MINIMAL_TRADE_LOT_OLD,'
      '  T034_OPTION_DATE_OLD,'
      '  T034_ISSUER_NAME_CHD,'
      '  T034_ISSUER_INN_CHD,'
      '  T034_ISSUER_OGRN_CHD,'
      '  T034_ISSUER_COUNTRY_CHD,'
      '  T034_ISSUER_RATING_CHD,'
      '  T034_EMISSION_RATING_CHD,'
      '  T034_EMISSION_NAME_CHD,'
      '  T034_INDUSTRY_CHD,'
      '  T034_VOLUME_CHD,'
      '  T034_CURRENCY_CHD,'
      '  T034_EMISSION_TYPE_CHD,'
      '  T034_EMISSION_STATE_CHD,'
      '  T034_MATURITY_DATE_CHD,'
      '  T034_EMISSION_REGN_CHD,'
      '  T034_ISIN_CHD,'
      '  T034_NOMINAL_CHD,'
      '  T034_INDEX_CHD,'
      '  T034_COUPON_PERIOD_CHD,'
      '  T034_FLOATING_RATE_CHD,'
      '  T034_BASE_RATE_CHD,'
      '  T034_MARGE_CHD,'
      '  T034_CONVERTING_CHD,'
      '  T034_DEPENDS_CHD,'
      '  T034_AGENT_CHD,'
      '  T034_TRADE_IN_CHD,'
      '  T034_COMMENTS_CHD,'
      '  T034_TRADE_TYPE_CHD,'
      '  T034_FIRST_PRICE_CHD,'
      '  T034_FIRST_YIELD_CHD,'
      '  T034_REG_DATE_CHD,'
      '  T034_TRADE_START_DATE_CHD,'
      '  T034_TRADE_END_DATE_CHD,'
      '  T034_CIRCULAR_START_DATE_CHD,'
      '  T034_MMVB_TICKER_CHD,'
      '  T034_OFFER_DATE_CHD,'
      '  T034_MARKET_SEG_CODE_CHD,'
      '  T034_LOT_MULTIPLICITY_CHD,'
      '  T034_CIRCULAR_AMOUNT_CHD,'
      '  T034_OUTSTANDING_VALUE_CHD,'
      '  T034_MINIMAL_TRADE_LOT_CHD,'
      '  T034_OPTION_DATE_CHD'
      'from V_DS_EMISSIONS_LOAD')
    QBEDefinition.QBEFieldDefs = {
      040000008100000010000000543033345F454D495353494F4E5F494401000000
      00000E000000543033345F4953535545525F4944010000000000100000005430
      33345F4953535545525F4E414D450100000000000F000000543033345F495353
      5545525F494E4E01000000000010000000543033345F4953535545525F4F4752
      4E01000000000013000000543033345F4953535545525F434F554E5452590100
      0000000012000000543033345F454D495353494F4E5F4E414D45010000000000
      0D000000543033345F494E4455535452590100000000000B000000543033345F
      564F4C554D450100000000000D000000543033345F43555252454E4359010000
      00000012000000543033345F454D495353494F4E5F5459504501000000000013
      000000543033345F454D495353494F4E5F535441544501000000000012000000
      543033345F4D415455524954595F444154450100000000001200000054303334
      5F454D495353494F4E5F5245474E01000000000009000000543033345F495349
      4E0100000000000C000000543033345F4E4F4D494E414C0100000000000A0000
      00543033345F494E44455801000000000012000000543033345F434F55504F4E
      5F504552494F4401000000000012000000543033345F464C4F4154494E475F52
      4154450100000000000E000000543033345F424153455F524154450100000000
      000A000000543033345F4D415247450100000000000F000000543033345F434F
      4E56455254494E470100000000000C000000543033345F444550454E44530100
      000000000A000000543033345F4147454E540100000000000D00000054303334
      5F54524144455F494E0100000000000D000000543033345F434F4D4D454E5453
      0100000000000F000000543033345F54524144455F5459504501000000000010
      000000543033345F46495253545F505249434501000000000010000000543033
      345F46495253545F5949454C440100000000000D000000543033345F5245475F
      4441544501000000000015000000543033345F54524144455F53544152545F44
      41544501000000000013000000543033345F54524144455F454E445F44415445
      01000000000018000000543033345F43495243554C41525F53544152545F4441
      544501000000000010000000543033345F4D4D56425F5449434B455201000000
      00000F000000543033345F4F464645525F444154450100000000001400000054
      3033345F4D41524B45545F5345475F434F444501000000000015000000543033
      345F4C4F545F4D554C5449504C49434954590100000000001400000054303334
      5F43495243554C41525F414D4F554E5401000000000016000000543033345F4F
      55545354414E44494E475F56414C554501000000000016000000543033345F4D
      494E494D414C5F54524144455F4C4F5401000000000010000000543033345F4F
      5054494F4E5F444154450100000000000E000000543033345F46494C455F4E41
      4D450100000000000E000000543033345F4C4F41445F44415445010000000000
      0B000000543033345F4C4F4144455201000000000012000000543033345F4953
      535545525F524154494E4701000000000014000000543033345F454D49535349
      4F4E5F524154494E470100000000000F000000543033345F464F525F46494C54
      455201000000000014000000543033345F4953535545525F4E414D455F4F4C44
      01000000000013000000543033345F4953535545525F494E4E5F4F4C44010000
      00000014000000543033345F4953535545525F4F47524E5F4F4C440100000000
      0017000000543033345F4953535545525F434F554E5452595F4F4C4401000000
      000016000000543033345F4953535545525F524154494E475F4F4C4401000000
      000018000000543033345F454D495353494F4E5F524154494E475F4F4C440100
      0000000016000000543033345F454D495353494F4E5F4E414D455F4F4C440100
      0000000011000000543033345F494E4455535452595F4F4C440100000000000F
      000000543033345F564F4C554D455F4F4C440100000000001100000054303334
      5F43555252454E43595F4F4C4401000000000016000000543033345F454D4953
      53494F4E5F545950455F4F4C4401000000000017000000543033345F454D4953
      53494F4E5F53544154455F4F4C4401000000000016000000543033345F4D4154
      55524954595F444154455F4F4C4401000000000016000000543033345F454D49
      5353494F4E5F5245474E5F4F4C440100000000000D000000543033345F495349
      4E5F4F4C4401000000000010000000543033345F4E4F4D494E414C5F4F4C4401
      00000000000E000000543033345F494E4445585F4F4C44010000000000160000
      00543033345F434F55504F4E5F504552494F445F4F4C44010000000000160000
      00543033345F464C4F4154494E475F524154455F4F4C44010000000000120000
      00543033345F424153455F524154455F4F4C440100000000000E000000543033
      345F4D415247455F4F4C4401000000000013000000543033345F434F4E564552
      54494E475F4F4C4401000000000010000000543033345F444550454E44535F4F
      4C440100000000000E000000543033345F4147454E545F4F4C44010000000000
      11000000543033345F54524144455F494E5F4F4C440100000000001100000054
      3033345F434F4D4D454E54535F4F4C4401000000000013000000543033345F54
      524144455F545950455F4F4C4401000000000014000000543033345F46495253
      545F50524943455F4F4C4401000000000014000000543033345F46495253545F
      5949454C445F4F4C4401000000000011000000543033345F5245475F44415445
      5F4F4C4401000000000019000000543033345F54524144455F53544152545F44
      4154455F4F4C4401000000000017000000543033345F54524144455F454E445F
      444154455F4F4C440100000000001C000000543033345F43495243554C41525F
      53544152545F444154455F4F4C4401000000000014000000543033345F4D4D56
      425F5449434B45525F4F4C4401000000000013000000543033345F4F46464552
      5F444154455F4F4C4401000000000018000000543033345F4D41524B45545F53
      45475F434F44455F4F4C4401000000000019000000543033345F4C4F545F4D55
      4C5449504C49434954595F4F4C4401000000000018000000543033345F434952
      43554C41525F414D4F554E545F4F4C440100000000001A000000543033345F4F
      55545354414E44494E475F56414C55455F4F4C440100000000001A0000005430
      33345F4D494E494D414C5F54524144455F4C4F545F4F4C440100000000001400
      0000543033345F4953535545525F4E414D455F43484401000000000013000000
      543033345F4953535545525F494E4E5F43484401000000000014000000543033
      345F4953535545525F4F47524E5F43484401000000000017000000543033345F
      4953535545525F434F554E5452595F4348440100000000001600000054303334
      5F4953535545525F524154494E475F4348440100000000001800000054303334
      5F454D495353494F4E5F524154494E475F434844010000000000160000005430
      33345F454D495353494F4E5F4E414D455F434844010000000000110000005430
      33345F494E4455535452595F4348440100000000000F000000543033345F564F
      4C554D455F43484401000000000011000000543033345F43555252454E43595F
      43484401000000000016000000543033345F454D495353494F4E5F545950455F
      43484401000000000017000000543033345F454D495353494F4E5F5354415445
      5F43484401000000000016000000543033345F4D415455524954595F44415445
      5F43484401000000000016000000543033345F454D495353494F4E5F5245474E
      5F4348440100000000000D000000543033345F4953494E5F4348440100000000
      0010000000543033345F4E4F4D494E414C5F4348440100000000000E00000054
      3033345F494E4445585F43484401000000000016000000543033345F434F5550
      4F4E5F504552494F445F43484401000000000016000000543033345F464C4F41
      54494E475F524154455F43484401000000000012000000543033345F42415345
      5F524154455F4348440100000000000E000000543033345F4D415247455F4348
      4401000000000013000000543033345F434F4E56455254494E475F4348440100
      0000000010000000543033345F444550454E44535F4348440100000000000E00
      0000543033345F4147454E545F43484401000000000011000000543033345F54
      524144455F494E5F43484401000000000011000000543033345F434F4D4D454E
      54535F43484401000000000013000000543033345F54524144455F545950455F
      43484401000000000014000000543033345F46495253545F50524943455F4348
      4401000000000014000000543033345F46495253545F5949454C445F43484401
      000000000011000000543033345F5245475F444154455F434844010000000000
      19000000543033345F54524144455F53544152545F444154455F434844010000
      00000017000000543033345F54524144455F454E445F444154455F4348440100
      000000001C000000543033345F43495243554C41525F53544152545F44415445
      5F43484401000000000014000000543033345F4D4D56425F5449434B45525F43
      484401000000000013000000543033345F4F464645525F444154455F43484401
      000000000018000000543033345F4D41524B45545F5345475F434F44455F4348
      4401000000000019000000543033345F4C4F545F4D554C5449504C4943495459
      5F43484401000000000018000000543033345F43495243554C41525F414D4F55
      4E545F4348440100000000001A000000543033345F4F55545354414E44494E47
      5F56414C55455F4348440100000000001A000000543033345F4D494E494D414C
      5F54524144455F4C4F545F43484401000000000014000000543033345F4F5054
      494F4E5F444154455F43484401000000000014000000543033345F4F5054494F
      4E5F444154455F4F4C44010000000000}
    AfterScroll = odsListAfterScroll
    Top = 267
    object odsListT034_EMISSION_ID: TFloatField
      FieldName = 'T034_EMISSION_ID'
    end
    object odsListT034_ISSUER_ID: TFloatField
      FieldName = 'T034_ISSUER_ID'
    end
    object odsListT034_ISSUER_NAME: TStringField
      FieldName = 'T034_ISSUER_NAME'
      Size = 255
    end
    object odsListT034_ISSUER_INN: TStringField
      FieldName = 'T034_ISSUER_INN'
      Size = 255
    end
    object odsListT034_ISSUER_OGRN: TStringField
      FieldName = 'T034_ISSUER_OGRN'
      Size = 255
    end
    object odsListT034_ISSUER_COUNTRY: TStringField
      FieldName = 'T034_ISSUER_COUNTRY'
      Size = 255
    end
    object odsListT034_ISSUER_RATING: TStringField
      FieldName = 'T034_ISSUER_RATING'
      Size = 255
    end
    object odsListT034_EMISSION_RATING: TStringField
      FieldName = 'T034_EMISSION_RATING'
      Size = 255
    end
    object odsListT034_EMISSION_NAME: TStringField
      FieldName = 'T034_EMISSION_NAME'
      Size = 255
    end
    object odsListT034_INDUSTRY: TStringField
      FieldName = 'T034_INDUSTRY'
      Size = 255
    end
    object odsListT034_VOLUME: TFloatField
      FieldName = 'T034_VOLUME'
    end
    object odsListT034_CURRENCY: TStringField
      FieldName = 'T034_CURRENCY'
      Size = 255
    end
    object odsListT034_EMISSION_TYPE: TStringField
      FieldName = 'T034_EMISSION_TYPE'
      Size = 255
    end
    object odsListT034_EMISSION_STATE: TStringField
      FieldName = 'T034_EMISSION_STATE'
      Size = 255
    end
    object odsListT034_MATURITY_DATE: TDateTimeField
      FieldName = 'T034_MATURITY_DATE'
    end
    object odsListT034_EMISSION_REGN: TStringField
      FieldName = 'T034_EMISSION_REGN'
      Size = 255
    end
    object odsListT034_ISIN: TStringField
      FieldName = 'T034_ISIN'
      Size = 255
    end
    object odsListT034_NOMINAL: TFloatField
      FieldName = 'T034_NOMINAL'
    end
    object odsListT034_INDEX: TStringField
      FieldName = 'T034_INDEX'
      Size = 255
    end
    object odsListT034_COUPON_PERIOD: TFloatField
      FieldName = 'T034_COUPON_PERIOD'
    end
    object odsListT034_FLOATING_RATE: TFloatField
      FieldName = 'T034_FLOATING_RATE'
    end
    object odsListT034_BASE_RATE: TStringField
      FieldName = 'T034_BASE_RATE'
      Size = 255
    end
    object odsListT034_MARGE: TFloatField
      FieldName = 'T034_MARGE'
    end
    object odsListT034_CONVERTING: TFloatField
      FieldName = 'T034_CONVERTING'
    end
    object odsListT034_DEPENDS: TStringField
      FieldName = 'T034_DEPENDS'
      Size = 255
    end
    object odsListT034_AGENT: TStringField
      FieldName = 'T034_AGENT'
      Size = 255
    end
    object odsListT034_TRADE_IN: TStringField
      FieldName = 'T034_TRADE_IN'
      Size = 255
    end
    object odsListT034_COMMENTS: TStringField
      FieldName = 'T034_COMMENTS'
      Size = 255
    end
    object odsListT034_TRADE_TYPE: TStringField
      FieldName = 'T034_TRADE_TYPE'
      Size = 255
    end
    object odsListT034_FIRST_PRICE: TFloatField
      FieldName = 'T034_FIRST_PRICE'
    end
    object odsListT034_FIRST_YIELD: TFloatField
      FieldName = 'T034_FIRST_YIELD'
    end
    object odsListT034_REG_DATE: TDateTimeField
      FieldName = 'T034_REG_DATE'
    end
    object odsListT034_TRADE_START_DATE: TDateTimeField
      FieldName = 'T034_TRADE_START_DATE'
    end
    object odsListT034_TRADE_END_DATE: TDateTimeField
      FieldName = 'T034_TRADE_END_DATE'
    end
    object odsListT034_CIRCULAR_START_DATE: TDateTimeField
      FieldName = 'T034_CIRCULAR_START_DATE'
    end
    object odsListT034_MMVB_TICKER: TStringField
      FieldName = 'T034_MMVB_TICKER'
      Size = 255
    end
    object odsListT034_OFFER_DATE: TDateTimeField
      FieldName = 'T034_OFFER_DATE'
    end
    object odsListT034_MARKET_SEG_CODE: TFloatField
      FieldName = 'T034_MARKET_SEG_CODE'
    end
    object odsListT034_LOT_MULTIPLICITY: TFloatField
      FieldName = 'T034_LOT_MULTIPLICITY'
    end
    object odsListT034_CIRCULAR_AMOUNT: TFloatField
      FieldName = 'T034_CIRCULAR_AMOUNT'
    end
    object odsListT034_OUTSTANDING_VALUE: TFloatField
      FieldName = 'T034_OUTSTANDING_VALUE'
    end
    object odsListT034_MINIMAL_TRADE_LOT: TFloatField
      FieldName = 'T034_MINIMAL_TRADE_LOT'
    end
    object odsListT034_OPTION_DATE: TDateTimeField
      FieldName = 'T034_OPTION_DATE'
    end
    object odsListT034_FILE_NAME: TStringField
      FieldName = 'T034_FILE_NAME'
      Size = 255
    end
    object odsListT034_LOAD_DATE: TDateTimeField
      FieldName = 'T034_LOAD_DATE'
    end
    object odsListT034_LOADER: TStringField
      FieldName = 'T034_LOADER'
      Size = 255
    end
    object odsListT034_FOR_FILTER: TFloatField
      FieldName = 'T034_FOR_FILTER'
    end
    object odsListT034_ISSUER_NAME_OLD: TStringField
      FieldName = 'T034_ISSUER_NAME_OLD'
      Size = 271
    end
    object odsListT034_ISSUER_INN_OLD: TStringField
      FieldName = 'T034_ISSUER_INN_OLD'
      Size = 28
    end
    object odsListT034_ISSUER_OGRN_OLD: TStringField
      FieldName = 'T034_ISSUER_OGRN_OLD'
      Size = 31
    end
    object odsListT034_ISSUER_COUNTRY_OLD: TStringField
      FieldName = 'T034_ISSUER_COUNTRY_OLD'
      Size = 56
    end
    object odsListT034_ISSUER_RATING_OLD: TStringField
      FieldName = 'T034_ISSUER_RATING_OLD'
      Size = 80
    end
    object odsListT034_EMISSION_RATING_OLD: TStringField
      FieldName = 'T034_EMISSION_RATING_OLD'
      Size = 80
    end
    object odsListT034_EMISSION_NAME_OLD: TStringField
      FieldName = 'T034_EMISSION_NAME_OLD'
      Size = 271
    end
    object odsListT034_INDUSTRY_OLD: TStringField
      FieldName = 'T034_INDUSTRY_OLD'
      Size = 271
    end
    object odsListT034_VOLUME_OLD: TStringField
      FieldName = 'T034_VOLUME_OLD'
      Size = 56
    end
    object odsListT034_CURRENCY_OLD: TStringField
      FieldName = 'T034_CURRENCY_OLD'
      Size = 19
    end
    object odsListT034_EMISSION_TYPE_OLD: TStringField
      FieldName = 'T034_EMISSION_TYPE_OLD'
      Size = 80
    end
    object odsListT034_EMISSION_STATE_OLD: TStringField
      FieldName = 'T034_EMISSION_STATE_OLD'
      Size = 143
    end
    object odsListT034_MATURITY_DATE_OLD: TStringField
      FieldName = 'T034_MATURITY_DATE_OLD'
      Size = 26
    end
    object odsListT034_EMISSION_REGN_OLD: TStringField
      FieldName = 'T034_EMISSION_REGN_OLD'
      Size = 143
    end
    object odsListT034_ISIN_OLD: TStringField
      FieldName = 'T034_ISIN_OLD'
      Size = 31
    end
    object odsListT034_NOMINAL_OLD: TStringField
      FieldName = 'T034_NOMINAL_OLD'
      Size = 56
    end
    object odsListT034_INDEX_OLD: TStringField
      FieldName = 'T034_INDEX_OLD'
      Size = 271
    end
    object odsListT034_COUPON_PERIOD_OLD: TStringField
      FieldName = 'T034_COUPON_PERIOD_OLD'
      Size = 56
    end
    object odsListT034_FLOATING_RATE_OLD: TStringField
      FieldName = 'T034_FLOATING_RATE_OLD'
      Size = 56
    end
    object odsListT034_BASE_RATE_OLD: TStringField
      FieldName = 'T034_BASE_RATE_OLD'
      Size = 271
    end
    object odsListT034_MARGE_OLD: TStringField
      FieldName = 'T034_MARGE_OLD'
      Size = 56
    end
    object odsListT034_CONVERTING_OLD: TStringField
      FieldName = 'T034_CONVERTING_OLD'
      Size = 56
    end
    object odsListT034_DEPENDS_OLD: TStringField
      FieldName = 'T034_DEPENDS_OLD'
      Size = 271
    end
    object odsListT034_AGENT_OLD: TStringField
      FieldName = 'T034_AGENT_OLD'
      Size = 271
    end
    object odsListT034_TRADE_IN_OLD: TStringField
      FieldName = 'T034_TRADE_IN_OLD'
      Size = 271
    end
    object odsListT034_COMMENTS_OLD: TStringField
      FieldName = 'T034_COMMENTS_OLD'
      Size = 271
    end
    object odsListT034_TRADE_TYPE_OLD: TStringField
      FieldName = 'T034_TRADE_TYPE_OLD'
      Size = 40
    end
    object odsListT034_FIRST_PRICE_OLD: TStringField
      FieldName = 'T034_FIRST_PRICE_OLD'
      Size = 56
    end
    object odsListT034_FIRST_YIELD_OLD: TStringField
      FieldName = 'T034_FIRST_YIELD_OLD'
      Size = 56
    end
    object odsListT034_REG_DATE_OLD: TStringField
      FieldName = 'T034_REG_DATE_OLD'
      Size = 26
    end
    object odsListT034_TRADE_START_DATE_OLD: TStringField
      FieldName = 'T034_TRADE_START_DATE_OLD'
      Size = 26
    end
    object odsListT034_TRADE_END_DATE_OLD: TStringField
      FieldName = 'T034_TRADE_END_DATE_OLD'
      Size = 26
    end
    object odsListT034_CIRCULAR_START_DATE_OLD: TStringField
      FieldName = 'T034_CIRCULAR_START_DATE_OLD'
      Size = 26
    end
    object odsListT034_MMVB_TICKER_OLD: TStringField
      FieldName = 'T034_MMVB_TICKER_OLD'
      Size = 48
    end
    object odsListT034_OFFER_DATE_OLD: TStringField
      FieldName = 'T034_OFFER_DATE_OLD'
      Size = 26
    end
    object odsListT034_MARKET_SEG_CODE_OLD: TStringField
      FieldName = 'T034_MARKET_SEG_CODE_OLD'
      Size = 56
    end
    object odsListT034_LOT_MULTIPLICITY_OLD: TStringField
      FieldName = 'T034_LOT_MULTIPLICITY_OLD'
      Size = 56
    end
    object odsListT034_CIRCULAR_AMOUNT_OLD: TStringField
      FieldName = 'T034_CIRCULAR_AMOUNT_OLD'
      Size = 56
    end
    object odsListT034_OUTSTANDING_VALUE_OLD: TStringField
      FieldName = 'T034_OUTSTANDING_VALUE_OLD'
      Size = 56
    end
    object odsListT034_MINIMAL_TRADE_LOT_OLD: TStringField
      FieldName = 'T034_MINIMAL_TRADE_LOT_OLD'
      Size = 56
    end
    object odsListT034_OPTION_DATE_OLD: TStringField
      FieldName = 'T034_OPTION_DATE_OLD'
      Size = 26
    end
    object odsListT034_ISSUER_NAME_CHD: TStringField
      FieldName = 'T034_ISSUER_NAME_CHD'
      Size = 1
    end
    object odsListT034_ISSUER_INN_CHD: TStringField
      FieldName = 'T034_ISSUER_INN_CHD'
      Size = 1
    end
    object odsListT034_ISSUER_OGRN_CHD: TStringField
      FieldName = 'T034_ISSUER_OGRN_CHD'
      Size = 1
    end
    object odsListT034_ISSUER_COUNTRY_CHD: TStringField
      FieldName = 'T034_ISSUER_COUNTRY_CHD'
      Size = 1
    end
    object odsListT034_ISSUER_RATING_CHD: TStringField
      FieldName = 'T034_ISSUER_RATING_CHD'
      Size = 1
    end
    object odsListT034_EMISSION_RATING_CHD: TStringField
      FieldName = 'T034_EMISSION_RATING_CHD'
      Size = 1
    end
    object odsListT034_EMISSION_NAME_CHD: TStringField
      FieldName = 'T034_EMISSION_NAME_CHD'
      Size = 1
    end
    object odsListT034_INDUSTRY_CHD: TStringField
      FieldName = 'T034_INDUSTRY_CHD'
      Size = 1
    end
    object odsListT034_VOLUME_CHD: TStringField
      FieldName = 'T034_VOLUME_CHD'
      Size = 1
    end
    object odsListT034_CURRENCY_CHD: TStringField
      FieldName = 'T034_CURRENCY_CHD'
      Size = 1
    end
    object odsListT034_EMISSION_TYPE_CHD: TStringField
      FieldName = 'T034_EMISSION_TYPE_CHD'
      Size = 1
    end
    object odsListT034_EMISSION_STATE_CHD: TStringField
      FieldName = 'T034_EMISSION_STATE_CHD'
      Size = 1
    end
    object odsListT034_MATURITY_DATE_CHD: TStringField
      FieldName = 'T034_MATURITY_DATE_CHD'
      Size = 1
    end
    object odsListT034_EMISSION_REGN_CHD: TStringField
      FieldName = 'T034_EMISSION_REGN_CHD'
      Size = 1
    end
    object odsListT034_ISIN_CHD: TStringField
      FieldName = 'T034_ISIN_CHD'
      Size = 1
    end
    object odsListT034_NOMINAL_CHD: TStringField
      FieldName = 'T034_NOMINAL_CHD'
      Size = 1
    end
    object odsListT034_INDEX_CHD: TStringField
      FieldName = 'T034_INDEX_CHD'
      Size = 1
    end
    object odsListT034_COUPON_PERIOD_CHD: TStringField
      FieldName = 'T034_COUPON_PERIOD_CHD'
      Size = 1
    end
    object odsListT034_FLOATING_RATE_CHD: TStringField
      FieldName = 'T034_FLOATING_RATE_CHD'
      Size = 1
    end
    object odsListT034_BASE_RATE_CHD: TStringField
      FieldName = 'T034_BASE_RATE_CHD'
      Size = 1
    end
    object odsListT034_MARGE_CHD: TStringField
      FieldName = 'T034_MARGE_CHD'
      Size = 1
    end
    object odsListT034_CONVERTING_CHD: TStringField
      FieldName = 'T034_CONVERTING_CHD'
      Size = 1
    end
    object odsListT034_DEPENDS_CHD: TStringField
      FieldName = 'T034_DEPENDS_CHD'
      Size = 1
    end
    object odsListT034_AGENT_CHD: TStringField
      FieldName = 'T034_AGENT_CHD'
      Size = 1
    end
    object odsListT034_TRADE_IN_CHD: TStringField
      FieldName = 'T034_TRADE_IN_CHD'
      Size = 1
    end
    object odsListT034_COMMENTS_CHD: TStringField
      FieldName = 'T034_COMMENTS_CHD'
      Size = 1
    end
    object odsListT034_TRADE_TYPE_CHD: TStringField
      FieldName = 'T034_TRADE_TYPE_CHD'
      Size = 1
    end
    object odsListT034_FIRST_PRICE_CHD: TStringField
      FieldName = 'T034_FIRST_PRICE_CHD'
      Size = 1
    end
    object odsListT034_FIRST_YIELD_CHD: TStringField
      FieldName = 'T034_FIRST_YIELD_CHD'
      Size = 1
    end
    object odsListT034_REG_DATE_CHD: TStringField
      FieldName = 'T034_REG_DATE_CHD'
      Size = 1
    end
    object odsListT034_TRADE_START_DATE_CHD: TStringField
      FieldName = 'T034_TRADE_START_DATE_CHD'
      Size = 1
    end
    object odsListT034_TRADE_END_DATE_CHD: TStringField
      FieldName = 'T034_TRADE_END_DATE_CHD'
      Size = 1
    end
    object odsListT034_CIRCULAR_START_DATE_CHD: TStringField
      FieldName = 'T034_CIRCULAR_START_DATE_CHD'
      Size = 1
    end
    object odsListT034_MMVB_TICKER_CHD: TStringField
      FieldName = 'T034_MMVB_TICKER_CHD'
      Size = 1
    end
    object odsListT034_OFFER_DATE_CHD: TStringField
      FieldName = 'T034_OFFER_DATE_CHD'
      Size = 1
    end
    object odsListT034_MARKET_SEG_CODE_CHD: TStringField
      FieldName = 'T034_MARKET_SEG_CODE_CHD'
      Size = 1
    end
    object odsListT034_LOT_MULTIPLICITY_CHD: TStringField
      FieldName = 'T034_LOT_MULTIPLICITY_CHD'
      Size = 1
    end
    object odsListT034_CIRCULAR_AMOUNT_CHD: TStringField
      FieldName = 'T034_CIRCULAR_AMOUNT_CHD'
      Size = 1
    end
    object odsListT034_OUTSTANDING_VALUE_CHD: TStringField
      FieldName = 'T034_OUTSTANDING_VALUE_CHD'
      Size = 1
    end
    object odsListT034_MINIMAL_TRADE_LOT_CHD: TStringField
      FieldName = 'T034_MINIMAL_TRADE_LOT_CHD'
      Size = 1
    end
    object odsListT034_OPTION_DATE_CHD: TStringField
      FieldName = 'T034_OPTION_DATE_CHD'
      Size = 1
    end
  end
  inherited pkList: TOraclePackage
    Left = 392
    Top = 347
  end
  inherited oqAdd: TOracleQuery
    StringFieldsOnly = True
    Left = 216
    Top = 264
  end
  inherited oqUpdate: TOracleQuery
    Left = 256
    Top = 264
  end
  inherited oqDelete: TOracleQuery
    Left = 296
    Top = 264
  end
  inherited oqDupl: TOracleQuery
    Left = 336
    Top = 264
  end
  inherited pmFilter: TPopupMenu
    Left = 616
    Top = 24
  end
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      'SELECT R_TOTAL,'
      '       R_NEW,'
      '       R_UPDATED,'
      '       R_ROLLED,'
      '       R_CHANGED'
      'FROM   V_DS_EMISSIONS_LOAD_TOTAL')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000525F544F54414C01000000000005000000525F4E
      455701000000000009000000525F4348414E4745440100000000000900000052
      5F5550444154454401000000000008000000525F524F4C4C4544010000000000}
    Session = dmMain.OracleSession
    Left = 104
    Top = 352
    object odsTotalR_TOTAL: TFloatField
      FieldName = 'R_TOTAL'
    end
    object odsTotalR_NEW: TFloatField
      FieldName = 'R_NEW'
    end
    object odsTotalR_UPDATED: TFloatField
      FieldName = 'R_UPDATED'
    end
    object odsTotalR_ROLLED: TFloatField
      FieldName = 'R_ROLLED'
    end
    object odsTotalR_CHANGED: TStringField
      FieldName = 'R_CHANGED'
      Size = 81
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 144
    Top = 352
  end
end
