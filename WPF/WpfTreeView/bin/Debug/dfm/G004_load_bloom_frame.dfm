inherited G004_load_bloom: TG004_load_bloom
  Width = 987
  Height = 481
  inherited xxxDBGrid: TxxxDBGrid
    Top = 105
    Width = 987
    Height = 376
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 5
            LastCol = 7
            Caption = 'Номинал'
          end
          item
            FirstCol = 8
            LastCol = 10
            Caption = 'Котировка Bloomberg'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'REGN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'#39's F404'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ISIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'#39's Bloomberg'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'SNAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURRENCY'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMINAL'
        PickList.Strings = ()
        Title.Caption = 'В валюте номинала'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USDNOM'
        PickList.Strings = ()
        Title.Caption = 'В USD'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RETCURR'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARKET'
        PickList.Strings = ()
        Title.Caption = 'В валюте номинала'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USDVL'
        PickList.Strings = ()
        Title.Caption = 'В USD'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TICKER'
        PickList.Strings = ()
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXCH_CODE'
        PickList.Strings = ()
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARKET_SECTOR_DES'
        PickList.Strings = ()
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REDEMP_VAL'
        PickList.Strings = ()
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARSEKYABLE_DES'
        PickList.Strings = ()
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOAD_STATUS'
        PickList.Strings = ()
        Title.Caption = 'Статус запроса'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T004_LOAD_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата запроса'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_N_SECTION'
        PickList.Strings = ()
        Title.Caption = 'Часть'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_NAME'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HAND_CHANGE'
        PickList.Strings = ()
        Title.Caption = 'Корректировка'
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 80
    Width = 987
    inherited tlbSeach: TToolBar
      Width = 463
      AutoSize = False
      ButtonWidth = 142
      object ToolButton2: TToolButton
        Left = 71
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 79
        Top = 0
        Action = actPrep
        AutoSize = True
      end
      object ToolButton3: TToolButton
        Left = 221
        Top = 0
        Hint = 'Загрузка из Bloomberg'
        Caption = 'Загрузка из Bloomberg'
        ImageIndex = 14
        OnClick = actBloomLoadExecute
      end
      object ToolButton4: TToolButton
        Left = 363
        Top = 0
        Action = actDel004
        AutoSize = True
      end
    end
    inherited tlbFilter: TToolBar
      Left = 816
    end
    inherited tlbSelect: TToolBar
      Left = 897
    end
  end
  object Button1: TButton [2]
    Left = 568
    Top = 2
    Width = 75
    Height = 20
    Caption = 'Обновить'
    TabOrder = 2
    OnClick = actRefreshExecute
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 0
    Width = 987
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    inline PeriodOne: TG004_PeriodSelect
      Left = 4
      Top = 5
    end
    inline Part: TA12_Part
      Left = 4
      Top = 30
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 391
      Top = 5
      Width = 97
      Height = 22
      Action = actRefresh
      Caption = 'Обновить'
      TabOrder = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000840000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF000084000000840000008400000084
        000000840000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000FFFF
        FF00FFFFFF0000840000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000840000FFFF
        FF00FFFFFF0000840000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000840000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF0000840000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF00008400000084
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF000084000000840000008400000084
        000000840000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008400000084
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000840000FFFF
        FF00FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    inline STATUS: TG004_STATUS
      Left = 4
      Top = 54
      TabOrder = 3
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Top = 180
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
    object actPrep: TAction
      Category = 'Adv'
      Caption = 'Составить список Isin'
      Hint = 'Сформировать список Isin для загрузки данных из Bloomberg'
      ImageIndex = 11
      OnExecute = actPrepExecute
    end
    object actBloomLoad: TAction
      Category = 'Adv'
      Caption = 'Загрузка из Bloomberg'
      Hint = 'Загрузка из Bloomberg'
      ImageIndex = 14
      OnExecute = actBloomLoadExecute
    end
    object actDel004: TAction
      Category = 'Adv'
      Caption = 'Удалить Isin'#39's'
      Hint = 'Очистить список Isin'#39's'
      ImageIndex = 23
      OnExecute = actDel004Execute
    end
    object actBloomLoadAll: TAction
      Category = 'Adv'
      Caption = 'actBloomLoadAll'
    end
    object actLoadMark: TAction
      Category = 'Adv'
      Caption = 'Загрузить Помеченные'
      Hint = 'Загрузить Помеченные'
      OnExecute = actLoadMarkExecute
    end
    object actLoadAll: TAction
      Category = 'Adv'
      Caption = 'Загрузить Все'
      OnExecute = actLoadAllExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT ID,'
      #9'REGN,'
      '       ID_ISIN,'
      #9'SNAME,'
      '       COUNTRY,'
      '       CURRENCY,'
      #9'RETCURR,'
      '       T055_ID,'
      #9'T055_CODE,'
      'T055_TYPE,'
      #9'T055_START_DATE,'
      #9'T055_END_DATE,'
      #9'T055_NAME,'
      '    '#9'NOMINAL, '#9
      #9'MARKET,'
      #9'USDNOM, '#9
      #9'USDVL,'
      #9'TICKER,            --    N         '
      #9'EXCH_CODE,         --    N'
      #9'MARKET_SECTOR_DES, --    N'
      #9'REDEMP_VAL,        --    N'
      #9'PARSEKYABLE_DES,   --    N'
      #9'REQUEST,'
      #9'STATUS,'
      #9'T010_N_SECTION,'
      #9'IFLAG,'
      #9'RFLAG,'
      '    '#9'LOAD_STATUS,'
      #9'HAND_CHANGE,'
      '    '#9'T004_LOAD_DATE'
      'FROM V_BLOOM_ISINS_ALL'
      #9
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000001E0000000700000049445F4953494E01000000000007000000543035
      355F4944010000000000070000004E4F4D494E414C010000000000060000004D
      41524B4554010000000000040000005245474E01000000000005000000534E41
      4D4501000000000007000000434F554E54525901000000000008000000435552
      52454E43590100000000000F000000543035355F53544152545F444154450100
      000000000D000000543035355F454E445F444154450100000000000700000052
      455155455354010000000000060000005354415455530100000000000E000000
      543031305F4E5F53454354494F4E010000000000020000004944010000000000
      09000000543035355F4E414D450100000000000500000049464C414701000000
      00000500000052464C4147010000000000060000005553444E4F4D0100000000
      0005000000555344564C01000000000007000000524554435552520100000000
      0009000000543035355F434F44450100000000000B0000004C4F41445F535441
      5455530100000000000E000000543030345F4C4F41445F444154450100000000
      00060000005449434B455201000000000009000000455843485F434F44450100
      00000000110000004D41524B45545F534543544F525F4445530100000000000A
      000000524544454D505F56414C0100000000000F00000050415253454B594142
      4C455F4445530100000000000B00000048414E445F4348414E47450100000000
      0009000000543035355F54595045010000000000}
    Session = dmMain.OracleSession
    Left = 121
    Top = 181
    object odsListREGN: TStringField
      FieldName = 'REGN'
      Size = 255
    end
    object odsListID: TFloatField
      FieldName = 'ID'
    end
    object odsListID_ISIN: TStringField
      FieldName = 'ID_ISIN'
      Size = 255
    end
    object odsListSNAME: TStringField
      FieldName = 'SNAME'
      Size = 255
    end
    object odsListCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 255
    end
    object odsListCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Size = 255
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
    end
    object odsListT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
    end
    object odsListNOMINAL: TFloatField
      FieldName = 'NOMINAL'
      DisplayFormat = '### ### ##0.##0'
      EditFormat = '########0.##0'
    end
    object odsListMARKET: TFloatField
      FieldName = 'MARKET'
      DisplayFormat = '### ### ##0.##0'
      EditFormat = '########0.##0'
    end
    object odsListREQUEST: TFloatField
      FieldName = 'REQUEST'
    end
    object odsListT010_N_SECTION: TFloatField
      FieldName = 'T010_N_SECTION'
    end
    object odsListT055_NAME: TStringField
      FieldName = 'T055_NAME'
      Size = 255
    end
    object odsListIFLAG: TIntegerField
      FieldName = 'IFLAG'
    end
    object odsListRFLAG: TIntegerField
      FieldName = 'RFLAG'
    end
    object odsListUSDNOM: TFloatField
      FieldName = 'USDNOM'
      DisplayFormat = '### ### ##0.##0'
      EditFormat = '########0.##0'
    end
    object odsListUSDVL: TFloatField
      FieldName = 'USDVL'
      DisplayFormat = '### ### ##0.##0'
      EditFormat = '########0.##0'
    end
    object odsListRETCURR: TStringField
      FieldName = 'RETCURR'
      Size = 4
    end
    object odsListT055_CODE: TStringField
      FieldName = 'T055_CODE'
      Size = 255
    end
    object odsListSTATUS: TFloatField
      FieldName = 'STATUS'
    end
    object odsListLOAD_STATUS: TStringField
      FieldName = 'LOAD_STATUS'
      Size = 266
    end
    object odsListT004_LOAD_DATE: TDateTimeField
      FieldName = 'T004_LOAD_DATE'
    end
    object odsListTICKER: TStringField
      FieldName = 'TICKER'
      Size = 255
    end
    object odsListEXCH_CODE: TStringField
      FieldName = 'EXCH_CODE'
      Size = 255
    end
    object odsListMARKET_SECTOR_DES: TStringField
      FieldName = 'MARKET_SECTOR_DES'
      Size = 255
    end
    object odsListREDEMP_VAL: TStringField
      FieldName = 'REDEMP_VAL'
      Size = 255
    end
    object odsListPARSEKYABLE_DES: TStringField
      FieldName = 'PARSEKYABLE_DES'
      Size = 255
    end
    object odsListHAND_CHANGE: TStringField
      FieldName = 'HAND_CHANGE'
      Size = 27
    end
    object odsListT055_TYPE: TStringField
      FieldName = 'T055_TYPE'
      Size = 1
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 128
    Top = 271
    object TMenuItem [6]
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      ' Pk_404_HandCorrect.P_bloomberg_data_upd '
      '('
      #9':t_id_isin,'#9#9
      #9':t_rate_value, '
      #9':t_period,  '
      #9':t_nominal,'#9#9
      #9':t_crncy  ,'
      #9':t_iflag  , '
      #9':t_rflag       '
      ''
      ');'
      'end;')
    Variables.Data = {
      03000000070000000A0000003A545F49445F4953494E05000000000000000000
      00000D0000003A545F524154455F56414C55450400000000000000000000000A
      0000003A545F4E4F4D494E414C040000000000000000000000080000003A545F
      43524E4359050000000000000000000000080000003A545F49464C4147040000
      000000000000000000080000003A545F52464C41470400000000000000000000
      00090000003A545F504552494F44040000000000000000000000}
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 177
    Top = 234
  end
  object oqGetSec: TOracleQuery
    SQL.Strings = (
      'begin'
      ':REC_STR : = pk_404_for_bl_pipe.f_get_security (:isin);'
      'end;')
    Variables.Data = {
      0300000002000000080000003A5245435F535452050000000000000000000000
      050000003A4953494E050000000000000000000000}
    Left = 416
    Top = 136
  end
  object oqPrep: TOracleQuery
    SQL.Strings = (
      'begin'
      #9'pk_404_utilits.p_prepare_load_bloom (:period,:Part);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000070000003A504552494F4404000000000000000000000005
      0000003A50415254040000000000000000000000}
    Left = 224
    Top = 328
  end
  object oqDel004: TOracleQuery
    SQL.Strings = (
      'begin'
      #9'pk_404_utilits.p_delete004(:period,:part );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000070000003A504552494F4404000000000000000000000005
      0000003A50415254040000000000000000000000}
    Left = 264
    Top = 328
  end
  object oqSaveResult: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  DS_404_BOSS.PK_404_FOR_BL_PIPE.P_COPY_DATA_FROM_BL_PIPE ( :I_T' +
        '004_ID, :I_T404_STATUS, :I_T004_ERR_MSG, :I_ID_ISIN, :I_L110_ID,' +
        ' :I_T055_ID );'
      'end;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000060000000A0000003A495F543030345F494404000000000000000000
      00000E0000003A495F543430345F535441545553040000000000000000000000
      0F0000003A495F543030345F4552525F4D53470500000000000000000000000A
      0000003A495F49445F4953494E0500000000000000000000000A0000003A495F
      4C3131305F49440400000000000000000000000A0000003A495F543035355F49
      44040000000000000000000000}
    Left = 302
    Top = 328
  end
end
