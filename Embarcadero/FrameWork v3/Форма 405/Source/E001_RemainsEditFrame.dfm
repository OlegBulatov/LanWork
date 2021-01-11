inherited E001_RemainsEdit: TE001_RemainsEdit
  Width = 832
  Height = 401
  ExplicitWidth = 832
  ExplicitHeight = 401
  object Label33: TLabel [0]
    Left = 8
    Top = 348
    Width = 61
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object GroupBox1: TGroupBox [1]
    Left = 4
    Top = 4
    Width = 382
    Height = 124
    Caption = ' '#1054#1073#1097#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 43
      Height = 13
      Caption = #1069#1084#1080#1090#1077#1085#1090
    end
    object Label2: TLabel
      Left = 8
      Top = 41
      Width = 21
      Height = 13
      Caption = #1048#1053#1053
    end
    object Label3: TLabel
      Left = 145
      Top = 41
      Width = 41
      Height = 13
      Caption = #1058#1080#1087' '#1094'.'#1073'.'
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
      Width = 103
      Height = 13
      Caption = #1053#1072' '#1085#1072#1095#1072#1083#1086' '#1082#1074#1072#1088#1090#1072#1083#1072
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
      Width = 81
      Height = 13
      Caption = ' '#1054#1073#1098#1077#1084' '#1101#1084#1080#1089#1089#1080#1080' '
    end
    object Label10: TLabel
      Left = 245
      Top = 81
      Width = 97
      Height = 13
      Caption = #1053#1072' '#1082#1086#1085#1077#1094' '#1082#1074#1072#1088#1090#1072#1083#1072
    end
    object Label6: TLabel
      Left = 8
      Top = 96
      Width = 43
      Height = 13
      Caption = #1084#1083#1085'. '#1096#1090'.'
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
    Caption = ' '#1052#1048#1055' '
    TabOrder = 1
    object Label44: TLabel
      Left = 60
      Top = 16
      Width = 60
      Height = 13
      Caption = #1042#1093'. '#1086#1089#1090#1072#1090#1086#1082
    end
    object Label47: TLabel
      Left = 170
      Top = 16
      Width = 71
      Height = 13
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080' 405'
    end
    object Label50: TLabel
      Left = 274
      Top = 16
      Width = 79
      Height = 13
      Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072
    end
    object Label53: TLabel
      Left = 492
      Top = 16
      Width = 37
      Height = 13
      Caption = #1055#1088#1086#1095#1080#1077
    end
    object Label56: TLabel
      Left = 606
      Top = 16
      Width = 61
      Height = 13
      Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072
    end
    object Label59: TLabel
      Left = 716
      Top = 15
      Width = 66
      Height = 13
      Caption = #1048#1089#1093'. '#1086#1089#1090#1072#1090#1086#1082
    end
    object Label25: TLabel
      Left = 8
      Top = 33
      Width = 43
      Height = 13
      Caption = #1084#1083#1085'. '#1096#1090'.'
    end
    object Label26: TLabel
      Left = 8
      Top = 56
      Width = 31
      Height = 13
      Caption = #1084#1083#1085'. $'
    end
    object Label27: TLabel
      Left = 388
      Top = 16
      Width = 22
      Height = 13
      Caption = #1052#1048#1055
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
    Caption = ' '#1060#1086#1088#1084#1072' 711 + '#1085#1077#1073#1072#1085#1082#1086#1074#1089#1082#1080#1081' '#1076#1077#1087#1086#1079#1080#1090#1072#1088#1080#1081' '
    TabOrder = 3
    object Label12: TLabel
      Left = 60
      Top = 16
      Width = 60
      Height = 13
      Caption = #1042#1093'. '#1086#1089#1090#1072#1090#1086#1082
    end
    object Label15: TLabel
      Left = 170
      Top = 16
      Width = 50
      Height = 13
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
    end
    object Label18: TLabel
      Left = 274
      Top = 16
      Width = 66
      Height = 13
      Caption = #1048#1089#1093'. '#1086#1089#1090#1072#1090#1086#1082
    end
    object Label19: TLabel
      Left = 8
      Top = 33
      Width = 43
      Height = 13
      Caption = #1084#1083#1085'. '#1096#1090'.'
    end
    object Label20: TLabel
      Left = 8
      Top = 55
      Width = 31
      Height = 13
      Caption = #1084#1083#1085'. $'
    end
    object Label21: TLabel
      Left = 8
      Top = 78
      Width = 53
      Height = 13
      Caption = '% '#1086#1090' '#1074#1099#1087'.'
    end
    object Label24: TLabel
      Left = 8
      Top = 99
      Width = 47
      Height = 13
      Caption = '% '#1086#1090' 711'
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
    Caption = ' '#1050#1086#1090#1080#1088#1086#1074#1082#1080' '#1088#1072#1089#1095#1077#1090#1072' '
    TabOrder = 4
    object Label28: TLabel
      Left = 40
      Top = 22
      Width = 103
      Height = 13
      Caption = #1053#1072' '#1085#1072#1095#1072#1083#1086' '#1082#1074#1072#1088#1090#1072#1083#1072
    end
    object Label30: TLabel
      Left = 182
      Top = 22
      Width = 104
      Height = 13
      Caption = #1057#1088#1077#1076#1085#1077#1082#1074#1072#1088#1090#1072#1083#1100#1085#1072#1103
    end
    object Label31: TLabel
      Left = 322
      Top = 20
      Width = 97
      Height = 13
      Caption = #1053#1072' '#1082#1086#1085#1077#1094' '#1082#1074#1072#1088#1090#1072#1083#1072
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
      Width = 178
      Height = 13
      Caption = ' '#1050#1086#1090#1080#1088#1086#1074#1082#1080' '#1087#1086#1089#1083#1077#1076#1085#1080#1077' (USD/'#1076#1072#1090#1072') '
    end
    object Label5: TLabel
      Left = 40
      Top = 80
      Width = 103
      Height = 13
      Caption = #1053#1072' '#1085#1072#1095#1072#1083#1086' '#1082#1074#1072#1088#1090#1072#1083#1072
    end
    object Label34: TLabel
      Left = 145
      Top = 98
      Width = 10
      Height = 13
      Caption = ' / '
    end
    object Label35: TLabel
      Left = 250
      Top = 80
      Width = 97
      Height = 13
      Caption = #1053#1072' '#1082#1086#1085#1077#1094' '#1082#1074#1072#1088#1090#1072#1083#1072
    end
    object Label36: TLabel
      Left = 355
      Top = 97
      Width = 10
      Height = 13
      Caption = ' / '
    end
    object Label7: TLabel
      Left = 8
      Top = 38
      Width = 20
      Height = 13
      Caption = 'USD'
    end
    object Label11: TLabel
      Left = 8
      Top = 97
      Width = 20
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
      Hint = #1047#1072#1087#1077#1088#1077#1090#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1080#1089#1093'. '#1086#1089#1090#1072#1090#1082#1086#1074
      ImageIndex = 76
      OnExecute = actLockExecute
      OnUpdate = actLockUpdate
    end
    object actUnlock: TAction
      Hint = #1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1080#1089#1093'. '#1086#1089#1090#1072#1090#1082#1086#1074
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
    Optimize = False
    Variables.Data = {
      04000000030000000A0000003A004900530049004E0005000000000000000000
      0000100000003A0054003000350035005F004900440004000000000000000000
      0000180000003A0052004100540045005F0053004F0055005200430045000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000002000000052004100540045005F00560041004C0055004500
      5F005500530044005F0053000100000000001600000052004100540045005F00
      44004100540045005F0053000100000000002000000052004100540045005F00
      560041004C00550045005F005500530044005F00450001000000000016000000
      52004100540045005F0044004100540045005F004500010000000000}
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
    Optimize = False
    Variables.Data = {
      0400000013000000200000003A0054003100370030005F0053005F0055005300
      44005F005200410054004500040000000000000000000000260000003A005400
      3100370030005F0053005F003100370030005F0043004E0054005F0052004500
      4D00040000000000000000000000260000003A0054003100370030005F005300
      5F003100370030005F005500530044005F00520045004D000400000000000000
      00000000200000003A0054003100370030005F004F005F005500530044005F00
      5200410054004500040000000000000000000000260000003A00540031003700
      30005F004F005F003400300035005F0043004E0054005F00530041004C000400
      00000000000000000000260000003A0054003100370030005F004F005F003400
      300035005F005500530044005F00530041004C00040000000000000000000000
      220000003A0054003100370030005F004F005F003400300035005F0043004E00
      54005F004500040000000000000000000000220000003A005400310037003000
      5F004F005F003400300035005F005500530044005F0045000400000000000000
      00000000260000003A0054003100370030005F004F005F003100370030005F00
      43004E0054005F00530041004C00040000000000000000000000260000003A00
      54003100370030005F004F005F003100370030005F005500530044005F005300
      41004C00040000000000000000000000220000003A0054003100370030005F00
      4F005F004F00540048005F0043004E0054005F00450004000000000000000000
      0000220000003A0054003100370030005F004F005F004F00540048005F005500
      530044005F0045000400000000000000000000001E0000003A00540031003700
      30005F004F005F005000450052005F0055005300440004000000000000000000
      0000200000003A0054003100370030005F0045005F005500530044005F005200
      410054004500040000000000000000000000260000003A005400310037003000
      5F0045005F003100370030005F0043004E0054005F00520045004D0004000000
      0000000000000000260000003A0054003100370030005F0045005F0031003700
      30005F005500530044005F00520045004D000400000000000000000000001A00
      00003A0054003100370030005F0045005F004600490058004500440005000000
      0000000000000000240000003A0054003100370030005F004F005F0044005200
      5F0043004E0054005F00530041004C0004000000000000000000000024000000
      3A0054003100370030005F004F005F00440052005F005500530044005F005300
      41004C00040000000000000000000000}
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
    Optimize = False
    Variables.Data = {
      0400000003000000080000003A0043004E005400040000000000000000000000
      080000003A005500530044000400000000000000000000000A0000003A005200
      410054004500040000000000000000000000}
    Left = 528
    Top = 336
  end
end
