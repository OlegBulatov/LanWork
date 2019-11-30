inherited fm_404_z002_main: Tfm_404_z002_main
  Width = 938
  Height = 438
  inherited xxxDBGrid: TxxxDBGrid
    Top = 65
    Width = 938
    Height = 373
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ISIN'
        PickList.Strings = ()
        Title.Caption = 'ИСИН'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ISIN'
        PickList.Strings = ()
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURRENCY'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RETCURR'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T055_CODE'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T055_START_DATE'
        PickList.Strings = ()
        Title.Caption = 'Начало'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_END_DATE'
        PickList.Strings = ()
        Title.Caption = 'Конец'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMINAL'
        PickList.Strings = ()
        Title.Caption = 'Номинал'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARKET'
        PickList.Strings = ()
        Title.Caption = 'Котировка'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USDNOM'
        PickList.Strings = ()
        Title.Caption = 'Номинал в USD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USDVL'
        PickList.Strings = ()
        Title.Caption = 'Котировка в USD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'LOAD_STATUS'
        PickList.Strings = ()
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T800_LOAD_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата Загрузки'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TICKER'
        PickList.Strings = ()
        Title.Caption = 'Тикер'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXCH_CODE'
        PickList.Strings = ()
        Title.Caption = 'Биржа'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARKET_SECTOR_DES'
        PickList.Strings = ()
        Title.Caption = 'Сектор рынка'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REDEMP_VAL'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARSEKYABLE_DES'
        PickList.Strings = ()
        Title.Caption = 'Основные тикер + биржа + сектор рынка '
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_NAME'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 60
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 41
    Width = 938
    Height = 24
    inherited tlbNav: TToolBar
      Height = 24
    end
    inherited tlbList: TToolBar
      Height = 24
    end
    inherited tlbExcel: TToolBar
      Height = 24
    end
    inherited tlbSeach: TToolBar
      Width = 330
      Height = 24
      ButtonWidth = 142
      object ToolButton1: TToolButton
        Left = 71
        Top = 0
        Action = actISINSfromFile
        AutoSize = True
      end
      object ToolButton2: TToolButton
        Left = 184
        Top = 0
        Action = actBloomLoad
        AutoSize = True
        ImageIndex = 14
      end
    end
    inherited tlbFilter: TToolBar
      Left = 683
      Width = 94
      Height = 24
    end
    inherited tlbSelect: TToolBar
      Left = 777
      Width = 35
      Height = 24
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 938
    Height = 41
    Align = alTop
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 442
      Top = 7
      Width = 22
      Height = 22
      Hint = 'Нажмите для выбора файла'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
        0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
        B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
        FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
        FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
        FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
        0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
        0555555555777777755555555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Edit1: TEdit
      Left = 24
      Top = 8
      Width = 413
      Height = 21
      TabOrder = 0
    end
    inline PeriodOne: Tz002_period_quarter
      Left = 476
      Top = 8
      Width = 327
      Height = 25
      TabOrder = 1
      inherited lbCaption: TLabel
        Left = 28
      end
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 128
        Top = 1
        Width = 192
        Height = 20
      end
      inherited cb: TCheckBox
        Left = 8
        Top = 3
        Width = 18
      end
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actISINSfromFile: TAction
      Caption = 'Загрузка файла'
      Hint = 'Загрузка кодов ISIN из файла Excel'
      ImageIndex = 14
      OnExecute = actISINSfromFileExecute
    end
    object actBloomLoad: TAction
      Caption = 'Загрузка из Bloomberg'
      OnExecute = actBloomLoadExecuteExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT    ID as T800_ID,'
      #9'   ISIN,'
      #9'   ID_ISIN,'
      #9'   SNAME,'
      #9'   COUNTRY,'
      #9'   CURRENCY,'
      #9'   RETCURR,'
      #9'   T055_ID,'
      #9'   T055_CODE,'
      #9'   T055_START_DATE,'
      #9'   T055_END_DATE,'
      #9'   T055_NAME,'
      #9'   NOMINAL,'
      #9'   MARKET,'
      #9'   USDNOM,'
      #9'   USDVL,'
      #9'   STATUS  as T800_STATUS,'
      #9'   LOAD_STATUS,'
      #9'   T800_LOAD_DATE,'
      #9'   TICKER,'
      #9'   EXCH_CODE,'
      #9'   MARKET_SECTOR_DES,'
      #9'   REDEMP_VAL,'
      #9'   PARSEKYABLE_DES'
      '  FROM V_BLOOM_ISINS_EXCEL')
    QBEDefinition.QBEFieldDefs = {
      0400000018000000040000004953494E01000000000007000000543035355F49
      440100000000000E000000543830305F4C4F41445F4441544501000000000009
      000000543035355F434F44450100000000000700000049445F4953494E010000
      00000005000000534E414D4501000000000007000000434F554E545259010000
      0000000800000043555252454E43590100000000000700000052455443555252
      0100000000000F000000543035355F53544152545F444154450100000000000D
      000000543035355F454E445F4441544501000000000009000000543035355F4E
      414D45010000000000070000004E4F4D494E414C010000000000060000004D41
      524B4554010000000000060000005553444E4F4D010000000000050000005553
      44564C0100000000000B0000004C4F41445F5354415455530100000000000600
      00005449434B455201000000000009000000455843485F434F44450100000000
      00110000004D41524B45545F534543544F525F4445530100000000000A000000
      524544454D505F56414C0100000000000F00000050415253454B5941424C455F
      4445530100000000000B000000543830305F5354415455530100000000000700
      0000543830305F4944010000000000}
    object odsListISIN: TStringField
      FieldName = 'ISIN'
      Size = 255
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
    object odsListRETCURR: TStringField
      FieldName = 'RETCURR'
      Size = 3
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT055_CODE: TStringField
      FieldName = 'T055_CODE'
      Size = 255
    end
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
    end
    object odsListT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
    end
    object odsListT055_NAME: TStringField
      FieldName = 'T055_NAME'
      Size = 255
    end
    object odsListNOMINAL: TFloatField
      FieldName = 'NOMINAL'
    end
    object odsListMARKET: TFloatField
      FieldName = 'MARKET'
    end
    object odsListUSDNOM: TFloatField
      FieldName = 'USDNOM'
    end
    object odsListUSDVL: TFloatField
      FieldName = 'USDVL'
    end
    object odsListT800_STATUS: TFloatField
      FieldName = 'T800_STATUS'
    end
    object odsListLOAD_STATUS: TStringField
      FieldName = 'LOAD_STATUS'
      Size = 272
    end
    object odsListT800_LOAD_DATE: TDateTimeField
      FieldName = 'T800_LOAD_DATE'
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
    object odsListREDEMP_VAL: TFloatField
      FieldName = 'REDEMP_VAL'
    end
    object odsListPARSEKYABLE_DES: TStringField
      FieldName = 'PARSEKYABLE_DES'
      Size = 255
    end
    object odsListT800_ID: TFloatField
      FieldName = 'T800_ID'
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Файлы Excel (*.xls, *.xlsx)|*.xls;*.xlsx|Все файлы (*.*)|*.*'
    Title = 'Выберите файл с данными'
    Left = 24
    Top = 136
  end
  object oqSaveResult: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '--  DS_404_BOSS.PK_404_FOR_BL_PIPE.P_COPY_quartexel_FROM_BL_PIPE' +
        ' (:I_ID_ISIN, :I_T800_STATUS, :I_T800_ERR_MSG,:I_T055_ID ,:I_L11' +
        '0_ID );'
      
        '  DS_404_BOSS.PK_404_FOR_BL_PIPE.P_COPY_quartexel_FROM_BL_PIPE (' +
        ':I_ID_ISIN, :I_T800_STATUS,  :I_T800_ERR_MSG ,:I_L110_ID);'
      ''
      'end;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000040000000A0000003A495F49445F4953494E05000000000000000000
      00000F0000003A495F543830305F4552525F4D53470500000000000000000000
      000E0000003A495F543830305F5354415455530400000000000000000000000A
      0000003A495F4C3131305F4944040000000000000000000000}
    Left = 358
    Top = 128
  end
  object oqAfter: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_404_FOR_BL_PIPE.p_do_after_excel(:T055_ID);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    Left = 368
    Top = 216
  end
end
