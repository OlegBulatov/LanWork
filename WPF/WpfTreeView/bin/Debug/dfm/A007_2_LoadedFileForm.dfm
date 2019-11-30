inherited A007_2_LoadedFile: TA007_2_LoadedFile
  Left = 90
  Top = 180
  Width = 828
  Height = 686
  Caption = 'Данные в файле'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 817
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
    Left = 820
    Height = 601
  end
  inherited paMain: TPanel
    Width = 817
    Height = 601
    inherited ToolBar2: TToolBar
      Top = 78
      Width = 817
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
      object ToolButton5: TToolButton
        Left = 615
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 101
      Width = 817
      Height = 471
      OnColEnter = xxxDBGridColEnter
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 2
              LastCol = 5
              Caption = 'Название акции'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 2
              LastCol = 3
              Caption = 'Краткое'
            end
            item
              FirstCol = 4
              LastCol = 5
              Caption = 'Полное'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T033_ISSUER_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Эмитент'
          Width = 120
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'T033_ISSUER_INN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ИНН'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_NAME_SHORT_RUS'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Русск.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_NAME_SHORT_ENG'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Англ.'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_FULL_NAME_RUS'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Русск.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_FULL_NAME_ENG'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Англ.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_ISSUE_NUMBER'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Номер выпуска'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_EMISSION_TYPE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Вид акции'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_EMISSION_REGN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Рег.№'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_ISIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Код ISIN'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_NOMINAL'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Номинал'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_QUANTITY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Общее количество бумаг'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_COMMENT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Доп. информация'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_FREE_PERCENT'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Процент в свободном обращении'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_BLUE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Голубая фишка'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_IS_JOINED'
          PickList.Strings = ()
          Title.Caption = 'Объединен с другим выпуском'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_JOIN_ID'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Объединено с выпуском'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_JOIN_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата объединения'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_MMVB_TRADE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Торгуется на ММВБ'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_MMVB_TICKER'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Тикер ММВБ'
          Width = 70
          Visible = True
        end
        item
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'T033_MMVB_DATE_START'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата начала обращения на ММВБ'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_MMVB_DATE_END'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата окончания обращения на ММВБ'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_MMVB_TRADE_LIST'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Котировальный лист ММВБ'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_RTS_TRADE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Торгуется на РТС'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_RTS_TICKER'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Тикер РТС'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_DKK_CODE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Код ДКК'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_RTS_MAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Главная эмиссия'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_RTS_DATE_START'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата начала обращения на РТС'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_RTS_DATE_END'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата окончания обращения на РТС'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_RTS_TRADE_LIST'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Котировальный лист РТС'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_STANDART_TRADE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Торгуется на Стандарт'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_STANDART_TICKER'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Тикер Стандарт'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_STANDART_MAIN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Главная эмиссия'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_STANDART_DATE_START'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата начала обращения на Стандарт'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_STANDART_DATE_END'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата окончания обращения на  Стандарт'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_STANDART_TRADE_LIST'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Котировальный лист Стандарт'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_ISSUER_RATING'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Рейтинг эмитента'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_EMISSION_ID'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ID эмиссии'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_ISSUER_ID'
          PickList.Strings = ()
          Title.Caption = 'ID эмитента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_FILE_NAME'
          PickList.Strings = ()
          Title.Caption = 'Файл загрузки'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_LOAD_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата загрузки'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_LOADER'
          PickList.Strings = ()
          Title.Caption = 'Кем загружено'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_FOR_FILTER'
          PickList.Strings = ()
          Title.Caption = 'Для фильтра'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 36
      Width = 817
      inherited Panel1: TPanel
        Left = 790
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 57
      Width = 817
      inherited Panel1: TPanel
        Left = 790
      end
    end
    object GroupBox1: TPanel
      Left = 0
      Top = 572
      Width = 817
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
        Left = 501
        Top = 7
        Width = 32
        Height = 13
        Caption = 'Label5'
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 817
      Height = 36
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
      object CbShow: TCheckBox
        Tag = 800
        Left = 7
        Top = 10
        Width = 14
        Height = 17
        Caption = 'Показывать записи:'
        Enabled = False
        State = cbGrayed
        TabOrder = 0
      end
      object CmbShow: TComboBox
        Tag = 801
        Left = 148
        Top = 8
        Width = 331
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        Items.Strings = (
          'Все'
          'Только новые'
          'Новые и измененнные'
          'Только измененные'
          'Измененные новыми данными'
          'Измененные старыми данными')
      end
      object Button1: TButton
        Left = 487
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Обновить'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 633
    Width = 820
  end
  inherited pnlButtons: TPanel
    Top = 601
    Width = 820
    Height = 32
    inherited OKBtn: TButton
      Left = 798
      Hint = 'Загрузить отмеченные записи'
      Caption = 'Загрузить'
    end
    inherited CancelBtn: TButton
      Left = 878
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
      'select'
      '  T033_EMISSION_ID,'
      '  T033_ISSUER_ID,'
      '  T033_ISSUER_NAME,'
      '  T033_ISSUER_INN,'
      '  T033_NAME_SHORT_RUS,'
      '  T033_NAME_SHORT_ENG,'
      '  T033_FULL_NAME_RUS,'
      '  T033_FULL_NAME_ENG,'
      '  T033_ISSUE_NUMBER,'
      '  T033_EMISSION_TYPE,'
      '  T033_MMVB_TRADE_LIST,'
      '  T033_RTS_TRADE_LIST,'
      '  T033_EMISSION_REGN,'
      '  T033_NOMINAL,'
      '  T033_QUANTITY,'
      '  T033_COMMENT,'
      '  T033_FREE_PERCENT,'
      '  T033_MMVB_TRADE,'
      '  T033_MMVB_TICKER,'
      '  T033_RTS_TRADE,'
      '  T033_RTS_TICKER,'
      '  T033_DKK_CODE,'
      '  T033_RTS_MAIN,'
      '  T033_STANDART_TRADE,'
      '  T033_STANDART_TRADE_LIST,'
      '  T033_STANDART_TICKER,'
      '  T033_STANDART_MAIN,'
      '  T033_ISIN,'
      '  T033_BLUE,'
      '  T033_MMVB_DATE_START,'
      '  T033_MMVB_DATE_END,'
      '  T033_RTS_DATE_START,'
      '  T033_RTS_DATE_END,'
      '  T033_STANDART_DATE_START,'
      '  T033_STANDART_DATE_END,'
      '  T033_IS_JOINED,'
      '  T033_JOIN_DATE,'
      '  T033_JOIN_ID,'
      '  T033_ISSUER_RATING,'
      '  T033_FILE_NAME,'
      '  T033_LOAD_DATE,'
      '  T033_LOADER,'
      '  T033_FOR_FILTER,'
      '  T033_ISSUER_NAME_OLD,'
      '  T033_ISSUER_INN_OLD,'
      '  T033_NAME_SHORT_RUS_OLD,'
      '  T033_NAME_SHORT_ENG_OLD,'
      '  T033_FULL_NAME_RUS_OLD,'
      '  T033_FULL_NAME_ENG_OLD,'
      '  T033_ISSUE_NUMBER_OLD,'
      '  T033_EMISSION_TYPE_OLD,'
      '  T033_MMVB_TRADE_LIST_OLD,'
      '  T033_RTS_TRADE_LIST_OLD,'
      '  T033_EMISSION_REGN_OLD,'
      '  T033_NOMINAL_OLD,'
      '  T033_QUANTITY_OLD,'
      '  T033_COMMENT_OLD,'
      '  T033_FREE_PERCENT_OLD,'
      '  T033_MMVB_TRADE_OLD,'
      '  T033_MMVB_TICKER_OLD,'
      '  T033_RTS_TRADE_OLD,'
      '  T033_RTS_TICKER_OLD,'
      '  T033_DKK_CODE_OLD,'
      '  T033_RTS_MAIN_OLD,'
      '  T033_STANDART_TRADE_OLD,'
      '  T033_STANDART_TRADE_LIST_OLD,'
      '  T033_STANDART_TICKER_OLD,'
      '  T033_STANDART_MAIN_OLD,'
      '  T033_ISIN_OLD,'
      '  T033_BLUE_OLD,'
      '  T033_MMVB_DATE_START_OLD,'
      '  T033_MMVB_DATE_END_OLD,'
      '  T033_RTS_DATE_START_OLD,'
      '  T033_RTS_DATE_END_OLD,'
      '  T033_STANDART_DATE_START_OLD,'
      '  T033_STANDART_DATE_END_OLD,'
      '  T033_IS_JOINED_OLD,'
      '  T033_JOIN_DATE_OLD,'
      '  T033_JOIN_ID_OLD,'
      '  T033_ISSUER_RATING_OLD,'
      '  T033_ISSUER_NAME_CHD,'
      '  T033_ISSUER_INN_CHD,'
      '  T033_NAME_SHORT_RUS_CHD,'
      '  T033_NAME_SHORT_ENG_CHD,'
      '  T033_FULL_NAME_RUS_CHD,'
      '  T033_FULL_NAME_ENG_CHD,'
      '  T033_ISSUE_NUMBER_CHD,'
      '  T033_EMISSION_TYPE_CHD,'
      '  T033_MMVB_TRADE_LIST_CHD,'
      '  T033_RTS_TRADE_LIST_CHD,'
      '  T033_EMISSION_REGN_CHD,'
      '  T033_NOMINAL_CHD,'
      '  T033_QUANTITY_CHD,'
      '  T033_COMMENT_CHD,'
      '  T033_FREE_PERCENT_CHD,'
      '  T033_MMVB_TRADE_CHD,'
      '  T033_MMVB_TICKER_CHD,'
      '  T033_RTS_TRADE_CHD,'
      '  T033_RTS_TICKER_CHD,'
      '  T033_DKK_CODE_CHD,'
      '  T033_RTS_MAIN_CHD,'
      '  T033_STANDART_TRADE_CHD,'
      '  T033_STANDART_TRADE_LIST_CHD,'
      '  T033_STANDART_TICKER_CHD,'
      '  T033_STANDART_MAIN_CHD,'
      '  T033_ISIN_CHD,'
      '  T033_BLUE_CHD,'
      '  T033_MMVB_DATE_START_CHD,'
      '  T033_MMVB_DATE_END_CHD,'
      '  T033_RTS_DATE_START_CHD,'
      '  T033_RTS_DATE_END_CHD,'
      '  T033_STANDART_DATE_START_CHD,'
      '  T033_STANDART_DATE_END_CHD,'
      '  T033_IS_JOINED_CHD,'
      '  T033_JOIN_DATE_CHD,'
      '  T033_JOIN_ID_CHD,'
      '  T033_ISSUER_RATING_CHD'
      'from V_DS_STOCKS_LOAD'
      '')
    QBEDefinition.QBEFieldDefs = {
      040000007500000010000000543033335F454D495353494F4E5F494401000000
      00000E000000543033335F4953535545525F4944010000000000100000005430
      33335F4953535545525F4E414D450100000000000F000000543033335F495353
      5545525F494E4E01000000000013000000543033335F4E414D455F53484F5254
      5F52555301000000000013000000543033335F4E414D455F53484F52545F454E
      4701000000000012000000543033335F46554C4C5F4E414D455F525553010000
      00000012000000543033335F46554C4C5F4E414D455F454E4701000000000011
      000000543033335F49535355455F4E554D424552010000000000120000005430
      33335F454D495353494F4E5F5459504501000000000014000000543033335F4D
      4D56425F54524144455F4C49535401000000000013000000543033335F525453
      5F54524144455F4C49535401000000000012000000543033335F454D49535349
      4F4E5F5245474E0100000000000C000000543033335F4E4F4D494E414C010000
      0000000D000000543033335F5155414E544954590100000000000C0000005430
      33335F434F4D4D454E5401000000000011000000543033335F465245455F5045
      5243454E540100000000000F000000543033335F4D4D56425F54524144450100
      0000000010000000543033335F4D4D56425F5449434B45520100000000000E00
      0000543033335F5254535F54524144450100000000000F000000543033335F52
      54535F5449434B45520100000000000D000000543033335F444B4B5F434F4445
      0100000000000D000000543033335F5254535F4D41494E010000000000130000
      00543033335F5354414E444152545F5452414445010000000000180000005430
      33335F5354414E444152545F54524144455F4C49535401000000000014000000
      543033335F5354414E444152545F5449434B4552010000000000120000005430
      33335F5354414E444152545F4D41494E01000000000009000000543033335F49
      53494E01000000000009000000543033335F424C554501000000000014000000
      543033335F4D4D56425F444154455F5354415254010000000000120000005430
      33335F4D4D56425F444154455F454E4401000000000013000000543033335F52
      54535F444154455F535441525401000000000011000000543033335F5254535F
      444154455F454E4401000000000018000000543033335F5354414E444152545F
      444154455F535441525401000000000016000000543033335F5354414E444152
      545F444154455F454E440100000000000E000000543033335F49535F4A4F494E
      45440100000000000E000000543033335F4A4F494E5F44415445010000000000
      0C000000543033335F4A4F494E5F49440100000000000E000000543033335F46
      494C455F4E414D450100000000000E000000543033335F4C4F41445F44415445
      0100000000000B000000543033335F4C4F414445520100000000001200000054
      3033335F4953535545525F524154494E470100000000000F000000543033335F
      464F525F46494C54455201000000000014000000543033335F4953535545525F
      4E414D455F4F4C4401000000000013000000543033335F4953535545525F494E
      4E5F4F4C4401000000000017000000543033335F4E414D455F53484F52545F52
      55535F4F4C4401000000000017000000543033335F4E414D455F53484F52545F
      454E475F4F4C4401000000000016000000543033335F46554C4C5F4E414D455F
      5255535F4F4C4401000000000016000000543033335F46554C4C5F4E414D455F
      454E475F4F4C4401000000000015000000543033335F49535355455F4E554D42
      45525F4F4C4401000000000016000000543033335F454D495353494F4E5F5459
      50455F4F4C4401000000000018000000543033335F4D4D56425F54524144455F
      4C4953545F4F4C4401000000000017000000543033335F5254535F5452414445
      5F4C4953545F4F4C4401000000000016000000543033335F454D495353494F4E
      5F5245474E5F4F4C4401000000000010000000543033335F4E4F4D494E414C5F
      4F4C4401000000000011000000543033335F5155414E544954595F4F4C440100
      0000000010000000543033335F434F4D4D454E545F4F4C440100000000001500
      0000543033335F465245455F50455243454E545F4F4C44010000000000130000
      00543033335F4D4D56425F54524144455F4F4C44010000000000140000005430
      33335F4D4D56425F5449434B45525F4F4C440100000000001200000054303333
      5F5254535F54524144455F4F4C4401000000000013000000543033335F525453
      5F5449434B45525F4F4C4401000000000011000000543033335F444B4B5F434F
      44455F4F4C4401000000000011000000543033335F5254535F4D41494E5F4F4C
      4401000000000017000000543033335F5354414E444152545F54524144455F4F
      4C440100000000001C000000543033335F5354414E444152545F54524144455F
      4C4953545F4F4C4401000000000018000000543033335F5354414E444152545F
      5449434B45525F4F4C4401000000000016000000543033335F5354414E444152
      545F4D41494E5F4F4C440100000000000D000000543033335F4953494E5F4F4C
      440100000000000D000000543033335F424C55455F4F4C440100000000001800
      0000543033335F4D4D56425F444154455F53544152545F4F4C44010000000000
      16000000543033335F4D4D56425F444154455F454E445F4F4C44010000000000
      17000000543033335F5254535F444154455F53544152545F4F4C440100000000
      0015000000543033335F5254535F444154455F454E445F4F4C44010000000000
      1C000000543033335F5354414E444152545F444154455F53544152545F4F4C44
      0100000000001A000000543033335F5354414E444152545F444154455F454E44
      5F4F4C4401000000000012000000543033335F49535F4A4F494E45445F4F4C44
      01000000000012000000543033335F4A4F494E5F444154455F4F4C4401000000
      000010000000543033335F4A4F494E5F49445F4F4C4401000000000014000000
      543033335F4953535545525F4E414D455F434844010000000000130000005430
      33335F4953535545525F494E4E5F43484401000000000017000000543033335F
      4E414D455F53484F52545F5255535F4348440100000000001700000054303333
      5F4E414D455F53484F52545F454E475F43484401000000000016000000543033
      335F46554C4C5F4E414D455F5255535F43484401000000000016000000543033
      335F46554C4C5F4E414D455F454E475F43484401000000000015000000543033
      335F49535355455F4E554D4245525F4348440100000000001600000054303333
      5F454D495353494F4E5F545950455F4348440100000000001800000054303333
      5F4D4D56425F54524144455F4C4953545F434844010000000000170000005430
      33335F5254535F54524144455F4C4953545F4348440100000000001600000054
      3033335F454D495353494F4E5F5245474E5F4348440100000000001000000054
      3033335F4E4F4D494E414C5F43484401000000000011000000543033335F5155
      414E544954595F43484401000000000010000000543033335F434F4D4D454E54
      5F43484401000000000015000000543033335F465245455F50455243454E545F
      43484401000000000013000000543033335F4D4D56425F54524144455F434844
      01000000000014000000543033335F4D4D56425F5449434B45525F4348440100
      0000000012000000543033335F5254535F54524144455F434844010000000000
      13000000543033335F5254535F5449434B45525F434844010000000000110000
      00543033335F444B4B5F434F44455F4348440100000000001100000054303333
      5F5254535F4D41494E5F43484401000000000017000000543033335F5354414E
      444152545F54524144455F4348440100000000001C000000543033335F535441
      4E444152545F54524144455F4C4953545F434844010000000000180000005430
      33335F5354414E444152545F5449434B45525F43484401000000000016000000
      543033335F5354414E444152545F4D41494E5F4348440100000000000D000000
      543033335F4953494E5F4348440100000000000D000000543033335F424C5545
      5F43484401000000000018000000543033335F4D4D56425F444154455F535441
      52545F43484401000000000016000000543033335F4D4D56425F444154455F45
      4E445F43484401000000000017000000543033335F5254535F444154455F5354
      4152545F43484401000000000015000000543033335F5254535F444154455F45
      4E445F4348440100000000001C000000543033335F5354414E444152545F4441
      54455F53544152545F4348440100000000001A000000543033335F5354414E44
      4152545F444154455F454E445F43484401000000000012000000543033335F49
      535F4A4F494E45445F43484401000000000012000000543033335F4A4F494E5F
      444154455F43484401000000000010000000543033335F4A4F494E5F49445F43
      484401000000000016000000543033335F4953535545525F524154494E475F43
      484401000000000016000000543033335F4953535545525F524154494E475F4F
      4C44010000000000}
    AfterScroll = odsListAfterScroll
    Top = 267
    object odsListT033_EMISSION_ID: TFloatField
      FieldName = 'T033_EMISSION_ID'
      Required = True
    end
    object odsListT033_ISSUER_ID: TFloatField
      FieldName = 'T033_ISSUER_ID'
    end
    object odsListT033_ISSUER_NAME: TStringField
      FieldName = 'T033_ISSUER_NAME'
      Size = 255
    end
    object odsListT033_ISSUER_INN: TStringField
      FieldName = 'T033_ISSUER_INN'
      Size = 255
    end
    object odsListT033_NAME_SHORT_RUS: TStringField
      FieldName = 'T033_NAME_SHORT_RUS'
      Size = 255
    end
    object odsListT033_NAME_SHORT_ENG: TStringField
      FieldName = 'T033_NAME_SHORT_ENG'
      Size = 255
    end
    object odsListT033_FULL_NAME_RUS: TStringField
      FieldName = 'T033_FULL_NAME_RUS'
      Size = 255
    end
    object odsListT033_FULL_NAME_ENG: TStringField
      FieldName = 'T033_FULL_NAME_ENG'
      Size = 255
    end
    object odsListT033_ISSUE_NUMBER: TStringField
      FieldName = 'T033_ISSUE_NUMBER'
      Size = 255
    end
    object odsListT033_EMISSION_TYPE: TStringField
      FieldName = 'T033_EMISSION_TYPE'
      Size = 255
    end
    object odsListT033_MMVB_TRADE_LIST: TStringField
      FieldName = 'T033_MMVB_TRADE_LIST'
      Size = 255
    end
    object odsListT033_RTS_TRADE_LIST: TStringField
      FieldName = 'T033_RTS_TRADE_LIST'
      Size = 255
    end
    object odsListT033_EMISSION_REGN: TStringField
      FieldName = 'T033_EMISSION_REGN'
      Size = 255
    end
    object odsListT033_NOMINAL: TFloatField
      FieldName = 'T033_NOMINAL'
    end
    object odsListT033_QUANTITY: TFloatField
      FieldName = 'T033_QUANTITY'
    end
    object odsListT033_COMMENT: TStringField
      FieldName = 'T033_COMMENT'
      Size = 255
    end
    object odsListT033_FREE_PERCENT: TFloatField
      FieldName = 'T033_FREE_PERCENT'
    end
    object odsListT033_MMVB_TRADE: TFloatField
      FieldName = 'T033_MMVB_TRADE'
    end
    object odsListT033_MMVB_TICKER: TStringField
      FieldName = 'T033_MMVB_TICKER'
      Size = 255
    end
    object odsListT033_RTS_TRADE: TFloatField
      FieldName = 'T033_RTS_TRADE'
    end
    object odsListT033_RTS_TICKER: TStringField
      FieldName = 'T033_RTS_TICKER'
      Size = 255
    end
    object odsListT033_DKK_CODE: TStringField
      FieldName = 'T033_DKK_CODE'
      Size = 255
    end
    object odsListT033_RTS_MAIN: TFloatField
      FieldName = 'T033_RTS_MAIN'
    end
    object odsListT033_STANDART_TRADE: TFloatField
      FieldName = 'T033_STANDART_TRADE'
    end
    object odsListT033_STANDART_TRADE_LIST: TStringField
      FieldName = 'T033_STANDART_TRADE_LIST'
      Size = 255
    end
    object odsListT033_STANDART_TICKER: TStringField
      FieldName = 'T033_STANDART_TICKER'
      Size = 255
    end
    object odsListT033_STANDART_MAIN: TFloatField
      FieldName = 'T033_STANDART_MAIN'
    end
    object odsListT033_ISIN: TStringField
      FieldName = 'T033_ISIN'
      Size = 255
    end
    object odsListT033_BLUE: TFloatField
      FieldName = 'T033_BLUE'
    end
    object odsListT033_MMVB_DATE_START: TDateTimeField
      FieldName = 'T033_MMVB_DATE_START'
    end
    object odsListT033_MMVB_DATE_END: TDateTimeField
      FieldName = 'T033_MMVB_DATE_END'
    end
    object odsListT033_RTS_DATE_START: TDateTimeField
      FieldName = 'T033_RTS_DATE_START'
    end
    object odsListT033_RTS_DATE_END: TDateTimeField
      FieldName = 'T033_RTS_DATE_END'
    end
    object odsListT033_STANDART_DATE_START: TDateTimeField
      FieldName = 'T033_STANDART_DATE_START'
    end
    object odsListT033_STANDART_DATE_END: TDateTimeField
      FieldName = 'T033_STANDART_DATE_END'
    end
    object odsListT033_IS_JOINED: TFloatField
      FieldName = 'T033_IS_JOINED'
    end
    object odsListT033_JOIN_DATE: TDateTimeField
      FieldName = 'T033_JOIN_DATE'
    end
    object odsListT033_JOIN_ID: TFloatField
      FieldName = 'T033_JOIN_ID'
    end
    object odsListT033_ISSUER_RATING: TStringField
      FieldName = 'T033_ISSUER_RATING'
      Size = 255
    end
    object odsListT033_FILE_NAME: TStringField
      FieldName = 'T033_FILE_NAME'
      Size = 255
    end
    object odsListT033_LOAD_DATE: TDateTimeField
      FieldName = 'T033_LOAD_DATE'
    end
    object odsListT033_LOADER: TStringField
      FieldName = 'T033_LOADER'
      Size = 255
    end
    object odsListT033_FOR_FILTER: TFloatField
      FieldName = 'T033_FOR_FILTER'
    end
    object odsListT033_ISSUER_NAME_OLD: TStringField
      FieldName = 'T033_ISSUER_NAME_OLD'
      Size = 271
    end
    object odsListT033_ISSUER_INN_OLD: TStringField
      FieldName = 'T033_ISSUER_INN_OLD'
      Size = 28
    end
    object odsListT033_NAME_SHORT_RUS_OLD: TStringField
      FieldName = 'T033_NAME_SHORT_RUS_OLD'
      Size = 143
    end
    object odsListT033_NAME_SHORT_ENG_OLD: TStringField
      FieldName = 'T033_NAME_SHORT_ENG_OLD'
      Size = 143
    end
    object odsListT033_FULL_NAME_RUS_OLD: TStringField
      FieldName = 'T033_FULL_NAME_RUS_OLD'
      Size = 271
    end
    object odsListT033_FULL_NAME_ENG_OLD: TStringField
      FieldName = 'T033_FULL_NAME_ENG_OLD'
      Size = 271
    end
    object odsListT033_ISSUE_NUMBER_OLD: TStringField
      FieldName = 'T033_ISSUE_NUMBER_OLD'
      Size = 32
    end
    object odsListT033_EMISSION_TYPE_OLD: TStringField
      FieldName = 'T033_EMISSION_TYPE_OLD'
      Size = 48
    end
    object odsListT033_MMVB_TRADE_LIST_OLD: TStringField
      FieldName = 'T033_MMVB_TRADE_LIST_OLD'
      Size = 143
    end
    object odsListT033_RTS_TRADE_LIST_OLD: TStringField
      FieldName = 'T033_RTS_TRADE_LIST_OLD'
      Size = 143
    end
    object odsListT033_EMISSION_REGN_OLD: TStringField
      FieldName = 'T033_EMISSION_REGN_OLD'
      Size = 143
    end
    object odsListT033_NOMINAL_OLD: TStringField
      FieldName = 'T033_NOMINAL_OLD'
      Size = 56
    end
    object odsListT033_QUANTITY_OLD: TStringField
      FieldName = 'T033_QUANTITY_OLD'
      Size = 56
    end
    object odsListT033_COMMENT_OLD: TStringField
      FieldName = 'T033_COMMENT_OLD'
      Size = 271
    end
    object odsListT033_FREE_PERCENT_OLD: TStringField
      FieldName = 'T033_FREE_PERCENT_OLD'
      Size = 56
    end
    object odsListT033_MMVB_TRADE_OLD: TStringField
      FieldName = 'T033_MMVB_TRADE_OLD'
      Size = 56
    end
    object odsListT033_MMVB_TICKER_OLD: TStringField
      FieldName = 'T033_MMVB_TICKER_OLD'
      Size = 48
    end
    object odsListT033_RTS_TRADE_OLD: TStringField
      FieldName = 'T033_RTS_TRADE_OLD'
      Size = 56
    end
    object odsListT033_RTS_TICKER_OLD: TStringField
      FieldName = 'T033_RTS_TICKER_OLD'
      Size = 48
    end
    object odsListT033_DKK_CODE_OLD: TStringField
      FieldName = 'T033_DKK_CODE_OLD'
      Size = 48
    end
    object odsListT033_RTS_MAIN_OLD: TStringField
      FieldName = 'T033_RTS_MAIN_OLD'
      Size = 56
    end
    object odsListT033_STANDART_TRADE_OLD: TStringField
      FieldName = 'T033_STANDART_TRADE_OLD'
      Size = 56
    end
    object odsListT033_STANDART_TRADE_LIST_OLD: TStringField
      FieldName = 'T033_STANDART_TRADE_LIST_OLD'
      Size = 143
    end
    object odsListT033_STANDART_TICKER_OLD: TStringField
      FieldName = 'T033_STANDART_TICKER_OLD'
      Size = 48
    end
    object odsListT033_STANDART_MAIN_OLD: TStringField
      FieldName = 'T033_STANDART_MAIN_OLD'
      Size = 56
    end
    object odsListT033_ISIN_OLD: TStringField
      FieldName = 'T033_ISIN_OLD'
      Size = 31
    end
    object odsListT033_BLUE_OLD: TStringField
      FieldName = 'T033_BLUE_OLD'
      Size = 56
    end
    object odsListT033_MMVB_DATE_START_OLD: TStringField
      FieldName = 'T033_MMVB_DATE_START_OLD'
      Size = 26
    end
    object odsListT033_MMVB_DATE_END_OLD: TStringField
      FieldName = 'T033_MMVB_DATE_END_OLD'
      Size = 26
    end
    object odsListT033_RTS_DATE_START_OLD: TStringField
      FieldName = 'T033_RTS_DATE_START_OLD'
      Size = 26
    end
    object odsListT033_RTS_DATE_END_OLD: TStringField
      FieldName = 'T033_RTS_DATE_END_OLD'
      Size = 26
    end
    object odsListT033_STANDART_DATE_START_OLD: TStringField
      FieldName = 'T033_STANDART_DATE_START_OLD'
      Size = 26
    end
    object odsListT033_STANDART_DATE_END_OLD: TStringField
      FieldName = 'T033_STANDART_DATE_END_OLD'
      Size = 26
    end
    object odsListT033_IS_JOINED_OLD: TStringField
      FieldName = 'T033_IS_JOINED_OLD'
      Size = 56
    end
    object odsListT033_JOIN_DATE_OLD: TStringField
      FieldName = 'T033_JOIN_DATE_OLD'
      Size = 26
    end
    object odsListT033_JOIN_ID_OLD: TStringField
      FieldName = 'T033_JOIN_ID_OLD'
      Size = 56
    end
    object odsListT033_ISSUER_RATING_OLD: TStringField
      FieldName = 'T033_ISSUER_RATING_OLD'
      Size = 80
    end
    object odsListT033_ISSUER_NAME_CHD: TStringField
      FieldName = 'T033_ISSUER_NAME_CHD'
      Size = 1
    end
    object odsListT033_ISSUER_INN_CHD: TStringField
      FieldName = 'T033_ISSUER_INN_CHD'
      Size = 1
    end
    object odsListT033_NAME_SHORT_RUS_CHD: TStringField
      FieldName = 'T033_NAME_SHORT_RUS_CHD'
      Size = 1
    end
    object odsListT033_NAME_SHORT_ENG_CHD: TStringField
      FieldName = 'T033_NAME_SHORT_ENG_CHD'
      Size = 1
    end
    object odsListT033_FULL_NAME_RUS_CHD: TStringField
      FieldName = 'T033_FULL_NAME_RUS_CHD'
      Size = 1
    end
    object odsListT033_FULL_NAME_ENG_CHD: TStringField
      FieldName = 'T033_FULL_NAME_ENG_CHD'
      Size = 1
    end
    object odsListT033_ISSUE_NUMBER_CHD: TStringField
      FieldName = 'T033_ISSUE_NUMBER_CHD'
      Size = 1
    end
    object odsListT033_EMISSION_TYPE_CHD: TStringField
      FieldName = 'T033_EMISSION_TYPE_CHD'
      Size = 1
    end
    object odsListT033_MMVB_TRADE_LIST_CHD: TStringField
      FieldName = 'T033_MMVB_TRADE_LIST_CHD'
      Size = 1
    end
    object odsListT033_RTS_TRADE_LIST_CHD: TStringField
      FieldName = 'T033_RTS_TRADE_LIST_CHD'
      Size = 1
    end
    object odsListT033_EMISSION_REGN_CHD: TStringField
      FieldName = 'T033_EMISSION_REGN_CHD'
      Size = 1
    end
    object odsListT033_NOMINAL_CHD: TStringField
      FieldName = 'T033_NOMINAL_CHD'
      Size = 1
    end
    object odsListT033_QUANTITY_CHD: TStringField
      FieldName = 'T033_QUANTITY_CHD'
      Size = 1
    end
    object odsListT033_COMMENT_CHD: TStringField
      FieldName = 'T033_COMMENT_CHD'
      Size = 1
    end
    object odsListT033_FREE_PERCENT_CHD: TStringField
      FieldName = 'T033_FREE_PERCENT_CHD'
      Size = 1
    end
    object odsListT033_MMVB_TRADE_CHD: TStringField
      FieldName = 'T033_MMVB_TRADE_CHD'
      Size = 1
    end
    object odsListT033_MMVB_TICKER_CHD: TStringField
      FieldName = 'T033_MMVB_TICKER_CHD'
      Size = 1
    end
    object odsListT033_RTS_TRADE_CHD: TStringField
      FieldName = 'T033_RTS_TRADE_CHD'
      Size = 1
    end
    object odsListT033_RTS_TICKER_CHD: TStringField
      FieldName = 'T033_RTS_TICKER_CHD'
      Size = 1
    end
    object odsListT033_DKK_CODE_CHD: TStringField
      FieldName = 'T033_DKK_CODE_CHD'
      Size = 1
    end
    object odsListT033_RTS_MAIN_CHD: TStringField
      FieldName = 'T033_RTS_MAIN_CHD'
      Size = 1
    end
    object odsListT033_STANDART_TRADE_CHD: TStringField
      FieldName = 'T033_STANDART_TRADE_CHD'
      Size = 1
    end
    object odsListT033_STANDART_TRADE_LIST_CHD: TStringField
      FieldName = 'T033_STANDART_TRADE_LIST_CHD'
      Size = 1
    end
    object odsListT033_STANDART_TICKER_CHD: TStringField
      FieldName = 'T033_STANDART_TICKER_CHD'
      Size = 1
    end
    object odsListT033_STANDART_MAIN_CHD: TStringField
      FieldName = 'T033_STANDART_MAIN_CHD'
      Size = 1
    end
    object odsListT033_ISIN_CHD: TStringField
      FieldName = 'T033_ISIN_CHD'
      Size = 1
    end
    object odsListT033_BLUE_CHD: TStringField
      FieldName = 'T033_BLUE_CHD'
      Size = 1
    end
    object odsListT033_MMVB_DATE_START_CHD: TStringField
      FieldName = 'T033_MMVB_DATE_START_CHD'
      Size = 1
    end
    object odsListT033_MMVB_DATE_END_CHD: TStringField
      FieldName = 'T033_MMVB_DATE_END_CHD'
      Size = 1
    end
    object odsListT033_RTS_DATE_START_CHD: TStringField
      FieldName = 'T033_RTS_DATE_START_CHD'
      Size = 1
    end
    object odsListT033_RTS_DATE_END_CHD: TStringField
      FieldName = 'T033_RTS_DATE_END_CHD'
      Size = 1
    end
    object odsListT033_STANDART_DATE_START_CHD: TStringField
      FieldName = 'T033_STANDART_DATE_START_CHD'
      Size = 1
    end
    object odsListT033_STANDART_DATE_END_CHD: TStringField
      FieldName = 'T033_STANDART_DATE_END_CHD'
      Size = 1
    end
    object odsListT033_IS_JOINED_CHD: TStringField
      FieldName = 'T033_IS_JOINED_CHD'
      Size = 1
    end
    object odsListT033_JOIN_DATE_CHD: TStringField
      FieldName = 'T033_JOIN_DATE_CHD'
      Size = 1
    end
    object odsListT033_JOIN_ID_CHD: TStringField
      FieldName = 'T033_JOIN_ID_CHD'
      Size = 1
    end
    object odsListT033_ISSUER_RATING_CHD: TStringField
      FieldName = 'T033_ISSUER_RATING_CHD'
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
      'FROM   V_DS_STOCKS_LOAD_TOTAL')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000525F544F54414C01000000000005000000525F4E
      455701000000000009000000525F4348414E4745440100000000000800000052
      5F524F4C4C454401000000000009000000525F55504441544544010000000000}
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
