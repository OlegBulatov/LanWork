inherited G001_Emissions: TG001_Emissions
  Width = 1117
  Height = 488
  ParentShowHint = False
  ShowHint = True
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1117
    Height = 442
    AdvSettings.Indexes = <
      item
        FieldName = 'PRIM_TICKER'
        SortType = stAsc
      end
      item
        FieldName = 'ID_ISIN'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_ISIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUSSIAN_REGISTRATION_NUMBER'
        PickList.Strings = ()
        Title.Caption = 'Рег. номер'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRIM_TICKER'
        PickList.Strings = ()
        Title.Caption = 'Тикер'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRIM_EXCH_CODE'
        PickList.Strings = ()
        Title.Caption = 'Биржа'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TICKER'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'EXCH_CODE'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'MARKET_SECTOR_DES'
        PickList.Strings = ()
        Title.Caption = 'Сектор ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REAL_BLOOMBERG_DEPT_DES'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISSUER'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'COMPANY_TAX_IDENTIFIER'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COUNTRY_ISO'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COUNTRY_FULL_NAME'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INDUSTRY_SECTOR'
        PickList.Strings = ()
        Title.Caption = 'Сектор'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISSUER_INDUSTRY'
        PickList.Strings = ()
        Title.Caption = 'Отрасль'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRNCY'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARKET_STATUS'
        PickList.Strings = ()
        Title.Caption = 'Статус торговли'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXCH_TRADE_STATUS'
        PickList.Strings = ()
        Title.Caption = 'Признак торговли'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HAS_ADRS'
        PickList.Strings = ()
        Title.Caption = 'Есть ADR'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SECURITY_TYP'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TYPE_OF_BOND'
        PickList.Strings = ()
        Title.Caption = 'Тип BOND'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SINKABLE'
        PickList.Strings = ()
        Title.Caption = 'Частичное погашение'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISSUE_DT'
        PickList.Strings = ()
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MATURITY'
        PickList.Strings = ()
        Title.Caption = 'Дата погашения'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPN_FREQ'
        PickList.Strings = ()
        Title.Caption = 'Кол-во выплат'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FLOATER'
        PickList.Strings = ()
        Title.Caption = 'Плавающий'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIRST_CPN_DT'
        PickList.Strings = ()
        Title.Caption = 'Первый купон'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAY_CNT_DES'
        PickList.Strings = ()
        Title.Caption = 'Расчет купона'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPN_TYP'
        PickList.Strings = ()
        Title.Caption = 'Тип купона'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPN'
        PickList.Strings = ()
        Title.Caption = 'Купон'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMT_OUTSTANDING'
        PickList.Strings = ()
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMT_ISSUED'
        PickList.Strings = ()
        Width = 79
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1117
    inherited tlbExcel: TToolBar
      inherited tbSeparator03: TToolButton
        Visible = False
      end
    end
    inherited tlbSelect: TToolBar
      Width = 200
      ButtonHeight = 22
      ButtonWidth = 90
      ParentShowHint = True
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton2: TToolButton
        Left = 83
        Top = 0
        Action = actShowRates
      end
      object ToolButton1: TToolButton
        Left = 173
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 181
        Top = 0
        Hint = 'Загрузить котировки'
        Caption = 'Загрузить...'
        DropdownMenu = MenuLoadRates
        ImageIndex = 19
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 1117
    inherited Panel1: TPanel
      Left = 1090
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actShowRates: TAction
      Caption = 'Котировки...'
      Hint = 'Показать котировки ценной бумаги'
      ImageIndex = 11
      OnExecute = actShowRatesExecute
    end
    object actLoadRatesAll: TAction
      Caption = 'Загрузить все'
      Hint = 'Загрузить котировки для всех записей'
      ImageIndex = 19
      OnExecute = actLoadRatesAllExecute
      OnUpdate = actLoadRatesAllUpdate
    end
    object actLoadRatesCurrent: TAction
      Caption = 'Загрузить текущую'
      Hint = 'Загрузить котировки для текущей записи'
      ImageIndex = 19
      OnExecute = actLoadRatesCurrentExecute
      OnUpdate = actLoadRatesCurrentUpdate
    end
    object actLoadRatesSelected: TAction
      Caption = 'Загрузить выбранные'
      Hint = 'Загрузить котировки для выбранных записей'
      ImageIndex = 19
      OnExecute = actLoadRatesSelectedExecute
      OnUpdate = actLoadRatesSelectedUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '   ID_ISIN,'
      '   PRIM_TICKER,'
      '   PRIM_EXCH_CODE,'
      '   TICKER,'
      '   EXCH_CODE,'
      '   NAME,'
      '   COMPANY_TAX_IDENTIFIER,'
      '   COUNTRY_ISO,'
      '   COUNTRY_FULL_NAME,'
      '   INDUSTRY_SECTOR,'
      '   CRNCY,'
      '   MARKET_STATUS,'
      '   EXCH_TRADE_STATUS,'
      '   HAS_ADRS,'
      '   SECURITY_TYP,'
      '   TYPE_OF_BOND,'
      '   SINKABLE,'
      '   ISSUE_DT,'
      '   ISSUER_INDUSTRY,'
      '   MATURITY,'
      '   ISSUER,'
      '   AMT_ISSUED,'
      '   CPN_FREQ,'
      '   FLOATER,'
      '   FIRST_CPN_DT,'
      '   DAY_CNT_DES,'
      '   CPN_TYP,'
      '   CPN,'
      '   AMT_OUTSTANDING,'
      '   REAL_BLOOMBERG_DEPT_DES,'
      '   RUSSIAN_REGISTRATION_NUMBER,'
      '   MARKET_SECTOR_DES,'
      '   --LOAD_DATE,'
      '   BL_PIPE_ACTIVE'
      'FROM  DPB_BL_PIPE.V_BL_ISIN_INFO')
    QBEDefinition.QBEFieldDefs = {
      04000000220000000700000049445F4953494E0100000000000B000000505249
      4D5F5449434B45520100000000000E0000005052494D5F455843485F434F4445
      010000000000060000005449434B455201000000000009000000455843485F43
      4F4445010000000000040000004E414D4501000000000016000000434F4D5041
      4E595F5441585F4944454E5449464945520100000000000B000000434F554E54
      52595F49534F01000000000011000000434F554E5452595F46554C4C5F4E414D
      450100000000000F000000494E4455535452595F534543544F52010000000000
      0500000043524E43590100000000000D0000004D41524B45545F535441545553
      01000000000011000000455843485F54524144455F5354415455530100000000
      00080000004841535F414452530100000000000C00000053454355524954595F
      5459500100000000000C000000545950455F4F465F424F4E4401000000000008
      00000053494E4B41424C450100000000000800000049535355455F4454010000
      0000000F0000004953535545525F494E44555354525901000000000008000000
      4D41545552495459010000000000060000004953535545520100000000000A00
      0000414D545F4953535545440100000000000800000043504E5F465245510100
      0000000007000000464C4F415445520100000000000C00000046495253545F43
      504E5F44540100000000000B0000004441595F434E545F444553010000000000
      0700000043504E5F5459500100000000000300000043504E0100000000000F00
      0000414D545F4F55545354414E44494E47010000000000170000005245414C5F
      424C4F4F4D424552475F444550545F4445530100000000001B00000052555353
      49414E5F524547495354524154494F4E5F4E554D424552010000000000110000
      004D41524B45545F534543544F525F444553010000000000090000004C4F4144
      5F444154450100000000000E000000424C5F504950455F414354495645010000
      000000}
    object odsListID_ISIN: TStringField
      FieldName = 'ID_ISIN'
      Size = 255
    end
    object odsListPRIM_TICKER: TStringField
      FieldName = 'PRIM_TICKER'
      Size = 255
    end
    object odsListPRIM_EXCH_CODE: TStringField
      FieldName = 'PRIM_EXCH_CODE'
      Size = 255
    end
    object odsListTICKER: TStringField
      DisplayWidth = 50
      FieldName = 'TICKER'
      Size = 255
    end
    object odsListEXCH_CODE: TStringField
      FieldName = 'EXCH_CODE'
      Size = 255
    end
    object odsListNAME: TStringField
      FieldName = 'NAME'
      Size = 255
    end
    object odsListCOMPANY_TAX_IDENTIFIER: TStringField
      FieldName = 'COMPANY_TAX_IDENTIFIER'
      Size = 255
    end
    object odsListCOUNTRY_ISO: TStringField
      FieldName = 'COUNTRY_ISO'
      Size = 255
    end
    object odsListCOUNTRY_FULL_NAME: TStringField
      FieldName = 'COUNTRY_FULL_NAME'
      Size = 255
    end
    object odsListINDUSTRY_SECTOR: TStringField
      FieldName = 'INDUSTRY_SECTOR'
      Size = 255
    end
    object odsListCRNCY: TStringField
      FieldName = 'CRNCY'
      Size = 255
    end
    object odsListMARKET_STATUS: TStringField
      FieldName = 'MARKET_STATUS'
      Size = 255
    end
    object odsListEXCH_TRADE_STATUS: TStringField
      FieldName = 'EXCH_TRADE_STATUS'
      Size = 255
    end
    object odsListHAS_ADRS: TStringField
      FieldName = 'HAS_ADRS'
      Size = 255
    end
    object odsListSECURITY_TYP: TStringField
      FieldName = 'SECURITY_TYP'
      Size = 255
    end
    object odsListTYPE_OF_BOND: TStringField
      FieldName = 'TYPE_OF_BOND'
      Size = 255
    end
    object odsListSINKABLE: TStringField
      FieldName = 'SINKABLE'
      Size = 255
    end
    object odsListISSUE_DT: TStringField
      FieldName = 'ISSUE_DT'
      Size = 255
    end
    object odsListISSUER_INDUSTRY: TStringField
      FieldName = 'ISSUER_INDUSTRY'
      Size = 255
    end
    object odsListMATURITY: TStringField
      FieldName = 'MATURITY'
      Size = 255
    end
    object odsListISSUER: TStringField
      FieldName = 'ISSUER'
      Size = 255
    end
    object odsListAMT_ISSUED: TFloatField
      FieldName = 'AMT_ISSUED'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListCPN_FREQ: TFloatField
      FieldName = 'CPN_FREQ'
    end
    object odsListFLOATER: TStringField
      FieldName = 'FLOATER'
      Size = 255
    end
    object odsListFIRST_CPN_DT: TStringField
      FieldName = 'FIRST_CPN_DT'
      Size = 255
    end
    object odsListDAY_CNT_DES: TStringField
      FieldName = 'DAY_CNT_DES'
      Size = 255
    end
    object odsListCPN_TYP: TStringField
      FieldName = 'CPN_TYP'
      Size = 255
    end
    object odsListCPN: TFloatField
      FieldName = 'CPN'
    end
    object odsListAMT_OUTSTANDING: TFloatField
      FieldName = 'AMT_OUTSTANDING'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListREAL_BLOOMBERG_DEPT_DES: TStringField
      FieldName = 'REAL_BLOOMBERG_DEPT_DES'
      Size = 255
    end
    object odsListRUSSIAN_REGISTRATION_NUMBER: TStringField
      FieldName = 'RUSSIAN_REGISTRATION_NUMBER'
      Size = 255
    end
    object odsListMARKET_SECTOR_DES: TStringField
      FieldName = 'MARKET_SECTOR_DES'
      Size = 255
    end
    object odsListBL_PIPE_ACTIVE: TStringField
      FieldName = 'BL_PIPE_ACTIVE'
      Size = 1
    end
  end
  object MenuLoadRates: TPopupMenu
    Images = dmPicters.ilCommonPictures
    Left = 688
    Top = 120
    object N1: TMenuItem
      Action = actLoadRatesCurrent
    end
    object N2: TMenuItem
      Action = actLoadRatesSelected
    end
    object N3: TMenuItem
      Action = actLoadRatesAll
    end
  end
  object oqLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_405_FOR_BL_PIPE.p_request_rates('
      '    :isin,'
      '    :ticker,'
      '    :exch_code,'
      '    :date_from,'
      '    :date_to,'
      '    :user'
      '    );'
      '  COMMIT;'
      'end;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000006000000070000003A5449434B45520500000000000000000000000A
      0000003A455843485F434F44450500000000000000000000000A0000003A4441
      54455F46524F4D0C0000000000000000000000080000003A444154455F544F0C
      0000000000000000000000050000003A55534552050000000000000000000000
      050000003A4953494E050000000000000000000000}
    Left = 728
    Top = 120
  end
end
