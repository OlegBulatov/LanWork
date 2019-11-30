inherited E001_RemainsEdit: TE001_RemainsEdit
  Width = 832
  Height = 401
  object Label33: TLabel [0]
    Left = 8
    Top = 348
    Width = 63
    Height = 13
    Caption = 'Примечание'
  end
  object GroupBox1: TGroupBox [1]
    Left = 4
    Top = 4
    Width = 382
    Height = 124
    Caption = ' Общая информация '
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 43
      Height = 13
      Caption = 'Эмитент'
    end
    object Label2: TLabel
      Left = 8
      Top = 41
      Width = 24
      Height = 13
      Caption = 'ИНН'
    end
    object Label3: TLabel
      Left = 145
      Top = 41
      Width = 40
      Height = 13
      Caption = 'Тип ц.б.'
    end
    object Label4: TLabel
      Left = 231
      Top = 41
      Width = 21
      Height = 13
      Caption = 'ISIN'
    end
    object Label9: TLabel
      Left = 60
      Top = 81
      Width = 102
      Height = 13
      Caption = 'На начало квартала'
    end
    object Bevel1: TBevel
      Left = 1
      Top = 64
      Width = 378
      Height = 8
      Shape = bsBottomLine
    end
    object Label8: TLabel
      Left = 8
      Top = 63
      Width = 88
      Height = 13
      Caption = ' Объем эмиссии '
    end
    object Label10: TLabel
      Left = 245
      Top = 81
      Width = 97
      Height = 13
      Caption = 'На конец квартала'
    end
    object Label6: TLabel
      Left = 8
      Top = 96
      Width = 42
      Height = 13
      Caption = 'млн. шт.'
    end
    object edIssuer: TDBEdit
      Left = 60
      Top = 15
      Width = 315
      Height = 21
      Color = clBtnFace
      DataField = 'T028_SHOT_NAME'
      ReadOnly = True
      TabOrder = 0
    end
    object edINN: TDBEdit
      Left = 60
      Top = 38
      Width = 80
      Height = 21
      Color = clBtnFace
      DataField = 'T028_INN'
      ReadOnly = True
      TabOrder = 1
    end
    object edSecType: TDBEdit
      Left = 186
      Top = 38
      Width = 40
      Height = 21
      Color = clBtnFace
      DataField = 'T027_SEC_TYPE'
      ReadOnly = True
      TabOrder = 2
    end
    object edISIN: TDBEdit
      Left = 255
      Top = 38
      Width = 120
      Height = 21
      Color = clBtnFace
      DataField = 'T010_ISIN_TRANSL'
      ReadOnly = True
      TabOrder = 3
    end
    object edEmissSizeS: TDBEdit
      Left = 60
      Top = 95
      Width = 130
      Height = 21
      Color = clBtnFace
      DataField = 'T170_S_EMISS_SIZE'
      ReadOnly = True
      TabOrder = 4
    end
    object edEmissSizeE: TDBEdit
      Left = 245
      Top = 95
      Width = 130
      Height = 21
      Color = clBtnFace
      DataField = 'T170_E_EMISS_SIZE'
      ReadOnly = True
      TabOrder = 5
    end
  end
  object GroupBox7: TGroupBox [2]
    Left = 4
    Top = 263
    Width = 823
    Height = 83
    Caption = ' МИП '
    TabOrder = 1
    object Label44: TLabel
      Left = 60
      Top = 16
      Width = 58
      Height = 13
      Caption = 'Вх. остаток'
    end
    object Label47: TLabel
      Left = 170
      Top = 16
      Width = 71
      Height = 13
      Caption = 'Операции 405'
    end
    object Label50: TLabel
      Left = 274
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Корректировка'
    end
    object Label53: TLabel
      Left = 492
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Прочие'
    end
    object Label56: TLabel
      Left = 606
      Top = 16
      Width = 62
      Height = 13
      Caption = 'Переоценка'
    end
    object Label59: TLabel
      Left = 716
      Top = 15
      Width = 65
      Height = 13
      Caption = 'Исх. остаток'
    end
    object Label25: TLabel
      Left = 8
      Top = 33
      Width = 42
      Height = 13
      Caption = 'млн. шт.'
    end
    object Label26: TLabel
      Left = 8
      Top = 56
      Width = 32
      Height = 13
      Caption = 'млн. $'
    end
    object Label27: TLabel
      Left = 388
      Top = 16
      Width = 25
      Height = 13
      Caption = 'МИП'
    end
    object sbFix: TSpeedButton
      Left = 791
      Top = 6
      Width = 23
      Height = 23
      Action = actUnlock
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      Transparent = False
    end
    object edMip_S_CNT: TDBEdit
      Left = 60
      Top = 30
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_S_170_CNT_REM'
      ReadOnly = True
      TabOrder = 0
    end
    object edMip_S_USD: TDBEdit
      Left = 60
      Top = 53
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_S_170_USD_REM'
      ReadOnly = True
      TabOrder = 1
    end
    object ed405_O_CNT: TDBEdit
      Left = 170
      Top = 30
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_O_DR_405_CNT_SAL'
      ReadOnly = True
      TabOrder = 2
    end
    object ed405_O_USD: TDBEdit
      Left = 170
      Top = 53
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_O_DR_405_USD_SAL'
      ReadOnly = True
      TabOrder = 3
    end
    object edPer_USD: TDBEdit
      Left = 606
      Top = 53
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_O_PER_USD'
      ReadOnly = True
      TabOrder = 4
    end
    object edMip_E_CNT: TDBEdit
      Left = 715
      Top = 29
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_E_170_CNT_REM'
      ReadOnly = True
      TabOrder = 5
    end
    object edMip_E_USD: TDBEdit
      Left = 715
      Top = 53
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_E_170_USD_REM'
      ReadOnly = True
      TabOrder = 6
    end
    object edMip_O_CNT: TDBEdit
      Left = 388
      Top = 30
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_O_170_CNT_SAL'
      ReadOnly = True
      TabOrder = 7
    end
    object edMip_O_USD: TDBEdit
      Left = 388
      Top = 53
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_O_170_USD_SAL'
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 606
      Top = 29
      Width = 100
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 9
    end
    object ed405_C_CNT: TDBEdit
      Left = 274
      Top = 30
      Width = 106
      Height = 21
      DataField = 'T170_O_405_CNT_E'
      TabOrder = 10
      OnExit = ed405_C_CNTExit
      OnKeyDown = ed405_C_CNTKeyDown
    end
    object ed405_C_USD: TDBEdit
      Left = 274
      Top = 53
      Width = 106
      Height = 21
      DataField = 'T170_O_405_USD_E'
      TabOrder = 11
      OnExit = ed405_C_USDExit
      OnKeyDown = ed405_C_USDKeyDown
    end
    object edOth_C_CNT: TDBEdit
      Left = 492
      Top = 30
      Width = 106
      Height = 21
      DataField = 'T170_O_OTH_CNT_E'
      TabOrder = 12
      OnExit = edOth_C_CNTExit
      OnKeyDown = edOth_C_CNTKeyDown
    end
    object edOth_C_USD: TDBEdit
      Left = 492
      Top = 53
      Width = 106
      Height = 21
      DataField = 'T170_O_OTH_USD_E'
      TabOrder = 13
      OnExit = edOth_C_USDExit
      OnKeyDown = edOth_C_USDKeyDown
    end
  end
  object edComments: TDBMemo [3]
    Left = 4
    Top = 362
    Width = 821
    Height = 33
    DataField = 'T170_COMMENTS'
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object GroupBox2: TGroupBox [4]
    Left = 5
    Top = 133
    Width = 382
    Height = 125
    Caption = ' Форма 711 + небанковский депозитарий '
    TabOrder = 3
    object Label12: TLabel
      Left = 60
      Top = 16
      Width = 58
      Height = 13
      Caption = 'Вх. остаток'
    end
    object Label15: TLabel
      Left = 170
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Операции'
    end
    object Label18: TLabel
      Left = 274
      Top = 16
      Width = 65
      Height = 13
      Caption = 'Исх. остаток'
    end
    object Label19: TLabel
      Left = 8
      Top = 33
      Width = 42
      Height = 13
      Caption = 'млн. шт.'
    end
    object Label20: TLabel
      Left = 8
      Top = 55
      Width = 32
      Height = 13
      Caption = 'млн. $'
    end
    object Label21: TLabel
      Left = 8
      Top = 78
      Width = 48
      Height = 13
      Caption = '% от вып.'
    end
    object Label24: TLabel
      Left = 8
      Top = 99
      Width = 43
      Height = 13
      Caption = '% от 711'
    end
    object ed711_CNT_S: TDBEdit
      Left = 60
      Top = 30
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_S_CNT_REM'
      ReadOnly = True
      TabOrder = 0
    end
    object ed711_USD_S: TDBEdit
      Left = 60
      Top = 52
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_S_USD_REM'
      ReadOnly = True
      TabOrder = 1
    end
    object ed711_CNT_O: TDBEdit
      Left = 170
      Top = 30
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_O_CNT_SAL'
      ReadOnly = True
      TabOrder = 2
    end
    object ed711_USD_O: TDBEdit
      Left = 170
      Top = 52
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_O_USD_SAL'
      ReadOnly = True
      TabOrder = 3
    end
    object ed711_CNT_E: TDBEdit
      Left = 274
      Top = 30
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_E_CNT_REM'
      ReadOnly = True
      TabOrder = 4
    end
    object ed711_USD_E: TDBEdit
      Left = 274
      Top = 52
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_E_USD_REM'
      ReadOnly = True
      TabOrder = 5
    end
    object ed711_PRC_S: TDBEdit
      Left = 60
      Top = 74
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_S_PRC'
      ReadOnly = True
      TabOrder = 6
    end
    object ed711_PRC_E: TDBEdit
      Left = 274
      Top = 74
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_E_PRC'
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit11: TDBEdit
      Left = 60
      Top = 96
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_S_711_CNT_REM'
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit12: TDBEdit
      Left = 274
      Top = 96
      Width = 100
      Height = 21
      Color = clBtnFace
      DataField = 'T170_S_711_CNT_REM'
      ReadOnly = True
      TabOrder = 9
    end
  end
  object GroupBox3: TGroupBox [5]
    Left = 391
    Top = 4
    Width = 436
    Height = 124
    Caption = ' Котировки расчета '
    TabOrder = 4
    object Label28: TLabel
      Left = 40
      Top = 22
      Width = 102
      Height = 13
      Caption = 'На начало квартала'
    end
    object Label30: TLabel
      Left = 182
      Top = 22
      Width = 102
      Height = 13
      Caption = 'Среднеквартальная'
    end
    object Label31: TLabel
      Left = 322
      Top = 20
      Width = 97
      Height = 13
      Caption = 'На конец квартала'
    end
    object Bevel4: TBevel
      Left = 1
      Top = 64
      Width = 432
      Height = 8
      Shape = bsBottomLine
    end
    object Label32: TLabel
      Left = 8
      Top = 63
      Width = 177
      Height = 13
      Caption = ' Котировки последние (USD/дата) '
    end
    object Label5: TLabel
      Left = 40
      Top = 80
      Width = 102
      Height = 13
      Caption = 'На начало квартала'
    end
    object Label34: TLabel
      Left = 145
      Top = 98
      Width = 11
      Height = 13
      Caption = ' / '
    end
    object Label35: TLabel
      Left = 250
      Top = 80
      Width = 97
      Height = 13
      Caption = 'На конец квартала'
    end
    object Label36: TLabel
      Left = 355
      Top = 97
      Width = 11
      Height = 13
      Caption = ' / '
    end
    object Label7: TLabel
      Left = 8
      Top = 38
      Width = 23
      Height = 13
      Caption = 'USD'
    end
    object Label11: TLabel
      Left = 8
      Top = 97
      Width = 23
      Height = 13
      Caption = 'USD'
    end
    object edRateS: TDBEdit
      Left = 40
      Top = 36
      Width = 106
      Height = 21
      DataField = 'T170_S_USD_RATE'
      TabOrder = 0
      OnExit = edRateSExit
      OnKeyDown = edRateSKeyDown
    end
    object edRateO: TDBEdit
      Left = 182
      Top = 37
      Width = 106
      Height = 21
      DataField = 'T170_O_USD_RATE'
      TabOrder = 1
      OnExit = edRateOExit
      OnKeyDown = edRateOKeyDown
    end
    object edRateE: TDBEdit
      Left = 322
      Top = 37
      Width = 106
      Height = 21
      DataField = 'T170_E_USD_RATE'
      TabOrder = 2
      OnExit = edRateEExit
      OnKeyDown = edRateEKeyDown
    end
    object DBEdit1: TDBEdit
      Left = 40
      Top = 94
      Width = 106
      Height = 21
      Color = clBtnFace
      DataField = 'RATE_VALUE_USD_S'
      DataSource = dsRates
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 156
      Top = 94
      Width = 62
      Height = 21
      Color = clBtnFace
      DataField = 'RATE_DATE_S'
      DataSource = dsRates
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 250
      Top = 94
      Width = 106
      Height = 21
      Color = clBtnFace
      DataField = 'RATE_VALUE_USD_E'
      DataSource = dsRates
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 366
      Top = 94
      Width = 62
      Height = 21
      Color = clBtnFace
      DataField = 'RATE_DATE_E'
      DataSource = dsRates
      ReadOnly = True
      TabOrder = 6
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Left = 312
    Top = 0
    object actLock: TAction
      Hint = 'Заперетить изменение исх. остатков'
      ImageIndex = 76
      OnExecute = actLockExecute
      OnUpdate = actLockUpdate
    end
    object actUnlock: TAction
      Hint = 'Разрешить изменение исх. остатков'
      ImageIndex = 75
      OnExecute = actUnlockExecute
      OnUpdate = actUnlockUpdate
    end
  end
  object odsRates: TOracleDataSet
    SQL.Strings = (
      'select RATE_VALUE_USD_S,'
      '       RATE_DATE_S,'
      '       RATE_VALUE_USD_E,'
      '       RATE_DATE_E'
      'from   V_405_IIPS_RATES'
      'where  ISIN = :ISIN'
      'and    RATE_SOURCE = :RATE_SOURCE'
      'and    T055_ID = :T055_ID')
    Variables.Data = {
      0300000003000000050000003A4953494E050000000000000000000000080000
      003A543035355F49440400000000000000000000000C0000003A524154455F53
      4F55524345050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000010000000524154455F56414C55455F5553445F5301000000
      00000B000000524154455F444154455F5301000000000010000000524154455F
      56414C55455F5553445F450100000000000B000000524154455F444154455F45
      010000000000}
    Session = dmMain.OracleSession
    Left = 597
    Top = 60
    object odsRatesRATE_VALUE_USD_S: TFloatField
      FieldName = 'RATE_VALUE_USD_S'
      DisplayFormat = ',##0.000'
    end
    object odsRatesRATE_DATE_S: TDateTimeField
      FieldName = 'RATE_DATE_S'
      Required = True
    end
    object odsRatesRATE_VALUE_USD_E: TFloatField
      FieldName = 'RATE_VALUE_USD_E'
      DisplayFormat = ',##0.000'
    end
    object odsRatesRATE_DATE_E: TDateTimeField
      FieldName = 'RATE_DATE_E'
      Required = True
    end
  end
  object dsRates: TDataSource
    DataSet = odsRates
    Left = 629
    Top = 60
  end
  object oqRecalcRecord: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_SHS_IIP.p_calc_row ('
      '    i_T170_S_USD_RATE     => :T170_S_USD_RATE,'
      '    io_T170_S_170_CNT_REM => :T170_S_170_CNT_REM,'
      '    io_T170_S_170_USD_REM => :T170_S_170_USD_REM,'
      '    i_T170_O_USD_RATE     => :T170_O_USD_RATE,'
      '    i_T170_O_405_CNT_SAL  => :T170_O_405_CNT_SAL,'
      '    i_T170_O_405_USD_SAL  => :T170_O_405_USD_SAL,'
      '    i_T170_O_DR_CNT_SAL   => :T170_O_DR_CNT_SAL,'
      '    i_T170_O_DR_USD_SAL   => :T170_O_DR_USD_SAL,'
      '    io_T170_O_405_CNT_E   => :T170_O_405_CNT_E,'
      '    io_T170_O_405_USD_E   => :T170_O_405_USD_E,'
      '    o_T170_O_170_CNT_SAL  => :T170_O_170_CNT_SAL,'
      '    o_T170_O_170_USD_SAL  => :T170_O_170_USD_SAL,'
      '    io_T170_O_OTH_CNT_E   => :T170_O_OTH_CNT_E,'
      '    io_T170_O_OTH_USD_E   => :T170_O_OTH_USD_E,'
      '    o_T170_O_PER_USD      => :T170_O_PER_USD,'
      '    i_T170_E_USD_RATE     => :T170_E_USD_RATE,'
      '    io_T170_E_170_CNT_REM => :T170_E_170_CNT_REM,'
      '    io_T170_E_170_USD_REM => :T170_E_170_USD_REM,'
      '    i_T170_E_FIXED        => :T170_E_FIXED'
      '  );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000013000000100000003A543137305F535F5553445F5241544504000000
      0000000000000000130000003A543137305F535F3137305F434E545F52454D04
      0000000000000000000000130000003A543137305F535F3137305F5553445F52
      454D040000000000000000000000100000003A543137305F4F5F5553445F5241
      5445040000000000000000000000130000003A543137305F4F5F3430355F434E
      545F53414C040000000000000000000000130000003A543137305F4F5F343035
      5F5553445F53414C040000000000000000000000110000003A543137305F4F5F
      3430355F434E545F45040000000000000000000000110000003A543137305F4F
      5F3430355F5553445F45040000000000000000000000130000003A543137305F
      4F5F3137305F434E545F53414C040000000000000000000000130000003A5431
      37305F4F5F3137305F5553445F53414C04000000000000000000000011000000
      3A543137305F4F5F4F54485F434E545F45040000000000000000000000110000
      003A543137305F4F5F4F54485F5553445F450400000000000000000000000F00
      00003A543137305F4F5F5045525F555344040000000000000000000000100000
      003A543137305F455F5553445F52415445040000000000000000000000130000
      003A543137305F455F3137305F434E545F52454D040000000000000000000000
      130000003A543137305F455F3137305F5553445F52454D040000000000000000
      0000000D0000003A543137305F455F4649584544050000000000000000000000
      120000003A543137305F4F5F44525F434E545F53414C04000000000000000000
      0000120000003A543137305F4F5F44525F5553445F53414C0400000000000000
      00000000}
    Left = 768
    Top = 336
  end
  object oqCalcCNT: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :CNT := Pk_405_SHS_IIP.f_calc_CNT ('
      '    i_USD  => :USD,'
      '    i_RATE => :RATE'
      '  );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000040000003A434E5404000000000000000000000004000000
      3A555344040000000000000000000000050000003A5241544504000000000000
      0000000000}
    Left = 528
    Top = 336
  end
end
