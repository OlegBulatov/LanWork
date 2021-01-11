inherited E002_DrList: TE002_DrList
  Left = 380
  Top = 194
  Width = 878
  Height = 705
  Caption = 'E002_DrList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 859
    Height = 614
  end
  inherited paRight: TPanel
    Left = 862
    Height = 614
  end
  inherited paMain: TPanel
    Width = 859
    Height = 614
    inherited ToolBar2: TToolBar
      Top = 225
      Width = 859
      inherited ToolButton18: TToolButton
        Hint = 'Изменить или связать ISIN'
        Action = nil
        ImageIndex = 0
        OnClick = ToolButton18Click
      end
      object ToolButton5: TToolButton
        Left = 591
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object btnBlpCall: TToolButton
        Left = 599
        Top = 0
        AutoSize = True
        Caption = 'BlpListener'
        DropdownMenu = MenuDirectRequest
        ImageIndex = 13
      end
      object ToolButton7: TToolButton
        Left = 682
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 20
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 690
        Top = 0
        AutoSize = True
        Caption = 'Переход...'
        DropdownMenu = menuSrc
        ImageIndex = 19
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 248
      Width = 859
      Height = 347
      AdvSettings.Indexes = <
        item
          FieldName = 'ISIN'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 3
              Caption = 'Исходные данные'
            end
            item
              FirstCol = 6
              LastCol = 14
              Caption = 'Bloomberg-DR'
            end
            item
              FirstCol = 15
              LastCol = 21
              Caption = 'Реестр-DR'
            end
            item
              FirstCol = 22
              LastCol = 29
              Caption = 'Bloomberg-SHS'
            end
            item
              FirstCol = 30
              LastCol = 36
              Caption = 'Реестр-SHS'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'ISIN'
          PickList.Strings = ()
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IS_NEW'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IS_FULL'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T403_SEC_TYPES'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T403_SRC'
          PickList.Strings = ()
          Title.Caption = 'Источник данных'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REQUESTED'
          PickList.Strings = ()
          Title.Caption = 'Дата запроса'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATE'
          PickList.Strings = ()
          Title.Caption = 'Статус запроса'
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_DR_TICKER'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_DR_EXCH_CODE'
          PickList.Strings = ()
          Title.Caption = 'Биржа'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_DR_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_DR_MARKET_STATUS'
          PickList.Strings = ()
          Title.Caption = 'Статус на рынке'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_DR_ISSUER'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_DR_ISSUER_COUNTRY'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_DR_ISSUER_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADR_SH_PER_ADR'
          PickList.Strings = ()
          Title.Caption = 'Коэф-т'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADR_UNDL_TICKER'
          PickList.Strings = ()
          Title.Caption = 'Тикер акции'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_DR_TICKER'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_DR_EXCH_CODE'
          PickList.Strings = ()
          Title.Caption = 'Биржа'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_DR_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_DR_ISSUER'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_DR_ISSUER_COUNTRY'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_DR_ISSUER_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_SHS_ISIN'
          PickList.Strings = ()
          Title.Caption = 'ISIN'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_SHS_TICKER'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_SHS_EXCH_CODE'
          PickList.Strings = ()
          Title.Caption = 'Биржа'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_SHS_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_SHS_MARKET_STATUS'
          PickList.Strings = ()
          Title.Caption = 'Статус на рынке'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_SHS_ISSUER'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_SHS_ISSUER_COUNTRY'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_SHS_ISSUER_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_SHS_ISIN'
          PickList.Strings = ()
          Title.Caption = 'ISIN'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_SHS_TICKER'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_SHS_EXCH_CODE'
          PickList.Strings = ()
          Title.Caption = 'Биржа'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_SHS_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_SHS_ISSUER'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_SHS_ISSUER_COUNTRY'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R_SHS_ISSUER_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B_DR_IS_RUSSIA'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'B_DR_IS_BANK'
          PickList.Strings = ()
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 183
      Width = 859
      inherited Panel1: TPanel
        Left = 832
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 204
      Width = 859
      inherited Panel1: TPanel
        Left = 832
      end
    end
    object paTop: TPanel
      Left = 0
      Top = 0
      Width = 859
      Height = 183
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object GroupBox1: TGroupBox
        Left = 8
        Top = 4
        Width = 655
        Height = 64
        Caption = ' Cписок ISIN '
        TabOrder = 0
        inline ListPeriodFilter: TE002_PeriodFilter
          Left = 8
          Top = 12
        end
        object btnRefreshIsinList: TButton
          Left = 530
          Top = 10
          Width = 115
          Height = 27
          Hint = 'Обновить список ISIN'
          Caption = 'Обновить список'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnRefreshIsinListClick
        end
        inline ListSecTypeFilter: TE002_SecTypeFilter
          Left = 8
          Top = 35
          Width = 517
          TabOrder = 2
          inherited lcb: TxxxDBLookupCheckCombo
            Left = 124
            Width = 392
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 70
        Width = 655
        Height = 111
        Caption = ' Фильтр '
        TabOrder = 1
        object cbNewOnly: TCheckBox
          Left = 8
          Top = 88
          Width = 513
          Height = 17
          Caption = 'Показывать только новые записи'
          TabOrder = 0
        end
        object Button2: TButton
          Left = 569
          Top = 10
          Width = 75
          Height = 25
          Action = actRefresh
          TabOrder = 1
        end
        object cbIssuerCountry: TCheckBox
          Left = 8
          Top = 16
          Width = 126
          Height = 17
          Caption = 'Страна эмитента DR'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = cbIssuerCountryClick
        end
        object lcbIssuerCountry: TxxxDBLookupCheckCombo
          Left = 182
          Top = 12
          Width = 378
          Height = 21
          DropDownCount = 3
          DisplayEmpty = 'Не выбрано'
          EmptyItemColor = clWindowText
          ListStyle = [lsChecked, lsSizeable]
          LookupField = 'DR_ISSUER_COUNTRY_DESC'
          LookupDisplay = 'DR_ISSUER_COUNTRY_DESC'
          LookupSource = dsIssuerCountry
          TabOrder = 3
          Advanced.ShowSelectionHint = False
          Advanced.Autorefresh = False
        end
        object cbIndustry: TCheckBox
          Left = 8
          Top = 40
          Width = 145
          Height = 17
          Caption = 'Отрасль эмитента DR'
          Checked = True
          State = cbChecked
          TabOrder = 4
          OnClick = cbIndustryClick
        end
        object lcbIndustry: TxxxDBLookupCheckCombo
          Left = 182
          Top = 34
          Width = 378
          Height = 21
          DropDownCount = 4
          DisplayEmpty = 'Не выбрано'
          EmptyItemColor = clWindowText
          ListStyle = [lsChecked, lsSizeable]
          LookupField = 'DR_ISSUER_INDUSTRY_DESC'
          LookupDisplay = 'DR_ISSUER_INDUSTRY_DESC'
          LookupSource = dsIndustry
          TabOrder = 5
          Advanced.ShowSelectionHint = False
          Advanced.Autorefresh = False
        end
        object cbHideSuccess: TCheckBox
          Left = 8
          Top = 64
          Width = 553
          Height = 17
          Caption = 'Скрыть распознанные записи'
          TabOrder = 6
        end
      end
    end
    object sb1: TStatusBar
      Left = 0
      Top = 595
      Width = 859
      Height = 19
      Panels = <
        item
          Width = 200
        end
        item
          Width = 200
        end>
      SimplePanel = False
    end
  end
  inherited StatusBar: TStatusBar
    Top = 647
    Width = 862
  end
  inherited pnlButtons: TPanel
    Top = 614
    Width = 862
    inherited OKBtn: TButton
      Left = 712
    end
    inherited CancelBtn: TButton
      Left = 792
    end
  end
  inherited dsList: TDataSource
    Top = 362
  end
  inherited ActionList: TActionList
    Top = 394
    object actSrc405: TAction
      Caption = 'К данным формы 405'
      ImageIndex = 19
      OnExecute = actSrc405Execute
    end
    object actSrc711: TAction
      Caption = 'К данным формы 711'
      ImageIndex = 19
      OnExecute = actSrc711Execute
    end
    object actSrcND: TAction
      Caption = 'К данным НД'
      ImageIndex = 19
      OnExecute = actSrcNDExecute
    end
    object actSrc415: TAction
      Caption = 'К данным формы 415'
      ImageIndex = 19
      OnExecute = actSrc415Execute
    end
    object actDirectRequestCurrent: TAction
      Caption = 'Запросить текущую'
      Hint = 'Запросить данные текущей записи'
      ImageIndex = 13
      OnExecute = actDirectRequestCurrentExecute
      OnUpdate = actDirectRequestCurrentUpdate
    end
    object actDirectRequestSelected: TAction
      Caption = 'Запросить выделенные'
      Hint = 'Запросить данные выделенных записей'
      ImageIndex = 13
      OnExecute = actDirectRequestSelectedExecute
      OnUpdate = actDirectRequestSelectedUpdate
    end
    object actDirectRequestNew: TAction
      Caption = 'Запросить новые'
      Hint = 'Запросить данные новых записей'
      ImageIndex = 13
      OnExecute = actDirectRequestNewExecute
      OnUpdate = actDirectRequestNewUpdate
    end
    object actDirectRequestAll: TAction
      Caption = 'Запросить все'
      Hint = 'Запросить данные всех записей'
      ImageIndex = 13
      OnExecute = actDirectRequestAllExecute
      OnUpdate = actDirectRequestAllUpdate
    end
    object actSources: TAction
      Caption = 'Источники данных'
      OnExecute = actSourcesExecute
      OnUpdate = actSourcesUpdate
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 394
    object N16: TMenuItem
      Caption = '-'
    end
    object N17: TMenuItem
      Action = actSources
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T055_ID_S,'
      '       T055_ID_E,'
      '       T403_SEC_TYPES_F,'
      '       ISIN,'
      '       ISIN_ERR,'
      '       T403_SEC_TYPES,'
      '       T403_SRC,'
      '       T403_T030_IDS,'
      '       T403_CREATE_DATE,'
      '       IS_NEW,'
      '       IS_FULL,'
      '       REQUESTED,'
      '       STATE,'
      '       B_DR_TICKER,'
      '       B_DR_EXCH_CODE,'
      '       B_DR_SEC_TYPE,'
      '       B_DR_ISSUER,'
      '       B_DR_ISSUER_INN,'
      '       B_DR_ISSUER_COUNTRY,'
      '       B_DR_MARKET_STATUS,'
      '       ADR_SH_PER_ADR,'
      '       ADR_UNDL_TICKER,'
      '       R_DR_TICKER,'
      '       R_DR_EXCH_CODE,'
      '       R_DR_SEC_TYPE,'
      '       R_DR_ISSUER,'
      '       R_DR_ISSUER_INN,'
      '       R_DR_ISSUER_COUNTRY,'
      '       B_SHS_ISIN,'
      '       B_SHS_TICKER,'
      '       B_SHS_EXCH_CODE,'
      '       B_SHS_SEC_TYPE,'
      '       B_SHS_ISSUER,'
      '       B_SHS_ISSUER_INN,'
      '       B_SHS_ISSUER_COUNTRY,'
      '       B_SHS_MARKET_STATUS,'
      '       R_SHS_ISIN,'
      '       R_SHS_TICKER,'
      '       R_SHS_EXCH_CODE,'
      '       R_SHS_SEC_TYPE,'
      '       R_SHS_ISSUER,'
      '       R_SHS_ISSUER_INN,'
      '       R_SHS_ISSUER_COUNTRY,'
      '       B_DR_IS_RUSSIA,'
      '       B_DR_IS_BANK'
      'from   V_405_DR_DATA_L')
    QBEDefinition.QBEFieldDefs = {
      040000002D000000040000004953494E0100000000000600000049535F4E4557
      0100000000000900000052455155455354454401000000000005000000535441
      54450100000000000F0000004144525F554E444C5F5449434B45520100000000
      000E0000004144525F53485F5045525F41445201000000000009000000543035
      355F49445F5301000000000009000000543035355F49445F450100000000000B
      000000425F44525F5449434B45520100000000000E000000425F44525F455843
      485F434F44450100000000000D000000425F44525F5345435F54595045010000
      0000000B000000425F44525F4953535545520100000000000F000000425F4452
      5F4953535545525F494E4E01000000000013000000425F44525F495353554552
      5F434F554E5452590100000000000B000000525F44525F5449434B4552010000
      0000000E000000525F44525F455843485F434F44450100000000000D00000052
      5F44525F5345435F545950450100000000000B000000525F44525F4953535545
      520100000000000F000000525F44525F4953535545525F494E4E010000000000
      13000000525F44525F4953535545525F434F554E5452590100000000000A0000
      00425F5348535F4953494E0100000000000C000000425F5348535F5449434B45
      520100000000000F000000425F5348535F455843485F434F4445010000000000
      0E000000425F5348535F5345435F545950450100000000000C000000425F5348
      535F49535355455201000000000014000000425F5348535F4953535545525F43
      4F554E54525901000000000010000000425F5348535F4953535545525F494E4E
      0100000000000A000000525F5348535F4953494E0100000000000C000000525F
      5348535F5449434B45520100000000000F000000525F5348535F455843485F43
      4F44450100000000000E000000525F5348535F5345435F545950450100000000
      000C000000525F5348535F49535355455201000000000010000000525F534853
      5F4953535545525F494E4E01000000000014000000525F5348535F4953535545
      525F434F554E54525901000000000008000000543430335F5352430100000000
      000C000000425F44525F49535F42414E4B0100000000000E000000425F44525F
      49535F5255535349410100000000000D000000543430335F543033305F494453
      01000000000012000000425F44525F4D41524B45545F53544154555301000000
      000013000000425F5348535F4D41524B45545F53544154555301000000000007
      00000049535F46554C4C0100000000000E000000543430335F5345435F545950
      455301000000000010000000543430335F5345435F54595045535F4601000000
      000010000000543430335F4352454154455F4441544501000000000008000000
      4953494E5F455252010000000000}
    AfterOpen = odsListAfterOpen
    Top = 362
    object odsListT055_ID_S: TFloatField
      FieldName = 'T055_ID_S'
    end
    object odsListT055_ID_E: TFloatField
      FieldName = 'T055_ID_E'
    end
    object odsListT403_SEC_TYPES_F: TStringField
      FieldName = 'T403_SEC_TYPES_F'
      Size = 255
    end
    object odsListT403_SRC: TStringField
      FieldName = 'T403_SRC'
      Size = 255
    end
    object odsListT403_SEC_TYPES: TStringField
      FieldName = 'T403_SEC_TYPES'
      Size = 255
    end
    object odsListT403_T030_IDS: TStringField
      FieldName = 'T403_T030_IDS'
      Size = 1023
    end
    object odsListISIN: TStringField
      FieldName = 'ISIN'
      Required = True
      Size = 255
    end
    object odsListREQUESTED: TDateTimeField
      FieldName = 'REQUESTED'
    end
    object odsListSTATE: TStringField
      FieldName = 'STATE'
      Size = 511
    end
    object odsListB_DR_TICKER: TStringField
      FieldName = 'B_DR_TICKER'
      Size = 255
    end
    object odsListB_DR_EXCH_CODE: TStringField
      FieldName = 'B_DR_EXCH_CODE'
      Size = 255
    end
    object odsListB_DR_SEC_TYPE: TStringField
      FieldName = 'B_DR_SEC_TYPE'
      Size = 255
    end
    object odsListB_DR_ISSUER: TStringField
      FieldName = 'B_DR_ISSUER'
      Size = 255
    end
    object odsListB_DR_ISSUER_INN: TStringField
      FieldName = 'B_DR_ISSUER_INN'
      Size = 255
    end
    object odsListB_DR_ISSUER_COUNTRY: TStringField
      FieldName = 'B_DR_ISSUER_COUNTRY'
      Size = 255
    end
    object odsListB_DR_MARKET_STATUS: TStringField
      FieldName = 'B_DR_MARKET_STATUS'
      Size = 255
    end
    object odsListADR_UNDL_TICKER: TStringField
      FieldName = 'ADR_UNDL_TICKER'
      Size = 255
    end
    object odsListADR_SH_PER_ADR: TFloatField
      FieldName = 'ADR_SH_PER_ADR'
    end
    object odsListR_DR_TICKER: TStringField
      FieldName = 'R_DR_TICKER'
      Size = 50
    end
    object odsListR_DR_EXCH_CODE: TStringField
      FieldName = 'R_DR_EXCH_CODE'
      Size = 50
    end
    object odsListR_DR_ISSUER: TStringField
      FieldName = 'R_DR_ISSUER'
      Size = 255
    end
    object odsListR_DR_SEC_TYPE: TStringField
      FieldName = 'R_DR_SEC_TYPE'
      Size = 255
    end
    object odsListR_DR_ISSUER_INN: TStringField
      FieldName = 'R_DR_ISSUER_INN'
      Size = 255
    end
    object odsListR_DR_ISSUER_COUNTRY: TStringField
      FieldName = 'R_DR_ISSUER_COUNTRY'
      Size = 250
    end
    object odsListB_SHS_ISIN: TStringField
      FieldName = 'B_SHS_ISIN'
      Size = 255
    end
    object odsListB_SHS_TICKER: TStringField
      FieldName = 'B_SHS_TICKER'
      Size = 255
    end
    object odsListB_SHS_EXCH_CODE: TStringField
      FieldName = 'B_SHS_EXCH_CODE'
      Size = 255
    end
    object odsListB_SHS_SEC_TYPE: TStringField
      FieldName = 'B_SHS_SEC_TYPE'
      Size = 255
    end
    object odsListB_SHS_ISSUER: TStringField
      FieldName = 'B_SHS_ISSUER'
      Size = 255
    end
    object odsListB_SHS_ISSUER_INN: TStringField
      FieldName = 'B_SHS_ISSUER_INN'
      Size = 255
    end
    object odsListB_SHS_ISSUER_COUNTRY: TStringField
      FieldName = 'B_SHS_ISSUER_COUNTRY'
      Size = 255
    end
    object odsListB_SHS_MARKET_STATUS: TStringField
      FieldName = 'B_SHS_MARKET_STATUS'
      Size = 255
    end
    object odsListR_SHS_ISIN: TStringField
      FieldName = 'R_SHS_ISIN'
      Size = 265
    end
    object odsListR_SHS_TICKER: TStringField
      FieldName = 'R_SHS_TICKER'
      Size = 50
    end
    object odsListR_SHS_EXCH_CODE: TStringField
      FieldName = 'R_SHS_EXCH_CODE'
      Size = 50
    end
    object odsListR_SHS_SEC_TYPE: TStringField
      FieldName = 'R_SHS_SEC_TYPE'
      Size = 255
    end
    object odsListR_SHS_ISSUER: TStringField
      FieldName = 'R_SHS_ISSUER'
      Size = 255
    end
    object odsListR_SHS_ISSUER_INN: TStringField
      FieldName = 'R_SHS_ISSUER_INN'
      Size = 255
    end
    object odsListR_SHS_ISSUER_COUNTRY: TStringField
      FieldName = 'R_SHS_ISSUER_COUNTRY'
      Size = 250
    end
    object odsListB_DR_IS_RUSSIA: TStringField
      FieldName = 'B_DR_IS_RUSSIA'
      Size = 1
    end
    object odsListB_DR_IS_BANK: TStringField
      FieldName = 'B_DR_IS_BANK'
      Size = 1
    end
    object odsListIS_NEW: TFloatField
      FieldName = 'IS_NEW'
    end
    object odsListIS_FULL: TFloatField
      FieldName = 'IS_FULL'
    end
    object odsListT403_CREATE_DATE: TDateTimeField
      FieldName = 'T403_CREATE_DATE'
    end
    object odsListISIN_ERR: TFloatField
      FieldName = 'ISIN_ERR'
    end
  end
  inherited pkList: TOraclePackage
    Top = 394
  end
  inherited oqAdd: TOracleQuery
    Left = 144
    Top = 439
  end
  inherited oqUpdate: TOracleQuery
    Top = 439
  end
  inherited oqDelete: TOracleQuery
    Left = 208
    Top = 439
  end
  inherited oqDupl: TOracleQuery
    Left = 240
    Top = 439
  end
  inherited pmFilter: TPopupMenu
    Left = 328
    Top = 384
  end
  object oqIsinList: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_405_SHS_IIP.p_refresh_isin_list(:T055_ID_S, :T055_ID_E, :DR' +
        '_SEC_TYPES);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000030000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F450400000000000000000000000D000000
      3A44525F5345435F545950455305000000000000000100000008000000900100
      00}
    Left = 672
    Top = 32
  end
  object menuSrc: TPopupMenu
    Left = 712
    Top = 392
    object N4051: TMenuItem
      Action = actSrc405
    end
    object N7111: TMenuItem
      Action = actSrc711
    end
    object actSrcND1: TMenuItem
      Action = actSrcND
    end
    object N4151: TMenuItem
      Action = actSrc415
    end
  end
  object oqPeriod: TOracleQuery
    SQL.Strings = (
      'SELECT T055_LONG_NAME'
      'FROM   V_405_TIME'
      'WHERE  T055_ID = :T055_ID       ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    Left = 32
    Top = 524
  end
  object odsIssuerCountry: TOracleDataSet
    SQL.Strings = (
      'SELECT DR_ISSUER_COUNTRY_CODE,'
      '       DR_ISSUER_COUNTRY_DESC'
      'FROM   V_405_DR_ISSUER_COUNTRY')
    QBEDefinition.QBEFieldDefs = {
      04000000020000001600000044525F4953535545525F434F554E5452595F434F
      44450100000000001600000044525F4953535545525F434F554E5452595F4445
      5343010000000000}
    Session = dmMain.OracleSession
    Left = 256
    Top = 86
    object odsIssuerCountryDR_ISSUER_COUNTRY_CODE: TStringField
      FieldName = 'DR_ISSUER_COUNTRY_CODE'
      Size = 1
    end
    object odsIssuerCountryDR_ISSUER_COUNTRY_DESC: TStringField
      FieldName = 'DR_ISSUER_COUNTRY_DESC'
      Size = 13
    end
  end
  object dsIssuerCountry: TDataSource
    DataSet = odsIssuerCountry
    Left = 296
    Top = 86
  end
  object odsIndustry: TOracleDataSet
    SQL.Strings = (
      'select DR_ISSUER_INDUSTRY_CODE,'
      '       DR_ISSUER_INDUSTRY_DESC'
      'FROM   V_405_DR_ISSUER_INDUSTRY')
    QBEDefinition.QBEFieldDefs = {
      04000000020000001700000044525F4953535545525F494E4455535452595F43
      4F44450100000000001700000044525F4953535545525F494E4455535452595F
      44455343010000000000}
    Session = dmMain.OracleSession
    Left = 328
    Top = 110
    object odsIndustryDR_ISSUER_INDUSTRY_CODE: TStringField
      FieldName = 'DR_ISSUER_INDUSTRY_CODE'
      Size = 1
    end
    object odsIndustryDR_ISSUER_INDUSTRY_DESC: TStringField
      FieldName = 'DR_ISSUER_INDUSTRY_DESC'
      Size = 13
    end
  end
  object dsIndustry: TDataSource
    DataSet = odsIndustry
    Left = 368
    Top = 110
  end
  object MenuDirectRequest: TPopupMenu
    Left = 608
    Top = 392
    object N20: TMenuItem
      Action = actDirectRequestCurrent
    end
    object N21: TMenuItem
      Action = actDirectRequestSelected
    end
    object N22: TMenuItem
      Action = actDirectRequestNew
    end
    object N23: TMenuItem
      Action = actDirectRequestAll
    end
  end
  object oqSaveDR_Data: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_405_SHS_IIP.p_save_dr_data('
      '    :ISIN,'
      '    :USER'
      '    );'
      ''
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000050000003A4953494E050000000000000000000000050000
      003A55534552050000000000000000000000}
    Left = 640
    Top = 392
  end
  object oqLink: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_SHS_IIP.p_link_emissions(:T030_IDS, :T030_MAIN_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000090000003A543033305F4944530400000000000000010000
      00FF000000000000000D0000003A543033305F4D41494E5F4944040000000000
      000000000000}
    Left = 640
    Top = 432
  end
  object odsFetchRecord: TOracleDataSet
    Session = dmMain.OracleSession
    Left = 448
    Top = 442
  end
end
