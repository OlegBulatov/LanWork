inherited frm63_711List: Tfrm63_711List
  Left = 79
  Top = 144
  Caption = 'frm63_711List'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 221
    ExplicitTop = 308
    ExplicitWidth = 889
  end
  inherited spRight: TSplitter
    Top = 52
    Height = 169
    ExplicitLeft = 886
    ExplicitTop = 52
    ExplicitHeight = 256
  end
  inherited paRight: TPanel
    Top = 52
    Height = 169
    ExplicitLeft = 889
    ExplicitTop = 52
    ExplicitHeight = 256
  end
  inherited paMain: TPanel
    Top = 52
    Height = 169
    ExplicitTop = 52
    ExplicitWidth = 886
    ExplicitHeight = 256
    inherited ToolBar2: TToolBar
      ButtonWidth = 94
      ExplicitWidth = 886
      inherited ToolButton5: TToolButton
        Left = 516
        ExplicitLeft = 516
      end
      inherited ToolButton7: TToolButton
        Left = 524
        ExplicitLeft = 524
      end
      inherited ToolButton9: TToolButton
        Left = 611
        ExplicitLeft = 611
      end
      inherited ToolButton10: TToolButton
        Left = 619
        ExplicitLeft = 619
      end
      object ToolButton6: TToolButton
        Left = 713
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 721
        Top = 0
        Hint = #1055#1077#1088#1077#1089#1086#1079#1076#1072#1090#1100' '#1073#1091#1092#1077#1088' '#1076#1072#1085#1085#1099#1093
        Caption = #1055#1077#1088#1077#1089#1086#1079#1076#1072#1090#1100
        ImageIndex = 1
        OnClick = ToolButton8Click
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Height = 104
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 4
              Caption = #1043#1083#1072#1074#1085#1072#1103' '#1101#1084#1080#1089#1089#1080#1103
            end
            item
              FirstCol = 5
              LastCol = 8
              Caption = #1048#1089#1093#1086#1076#1085#1072#1103' '#1101#1084#1080#1089#1089#1080#1103
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'IS_MAIN'
          Title.Caption = #1056#1072#1089#1087#1086#1079#1085#1072#1085#1072
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME_MAIN'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE_MAIN'
          Title.Caption = #1050#1086#1076' '#1101#1084#1080#1090#1077#1085#1090#1072
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE_MAIN'
          Title.Caption = #1050#1086#1076' '#1094'.'#1073'.'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN_MAIN'
          Title.Caption = #1053#1086#1084#1077#1088' '#1094'.'#1073'.'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          Title.Caption = #1050#1086#1076' '#1101#1084#1080#1090#1077#1085#1090#1072
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          Title.Caption = #1050#1086#1076' '#1094'.'#1073'.'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          Title.Caption = #1053#1086#1084#1077#1088' '#1094'.'#1073'.'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ISO_LAT3'
          Title.Caption = #1042#1072#1083#1102#1090#1072' '#1085#1086#1084#1080#1085#1072#1083#1072
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T052_N_ST_ALL'
          Title.Caption = #1053#1086#1084#1080#1085#1072#1083
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_1'
          Title.Caption = 'KL_S_UFR'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_2'
          Title.Caption = 'KL_S_KO'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_3'
          Title.Caption = 'KL_S_UFN'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_4'
          Title.Caption = 'KL_L_R'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_5'
          Title.Caption = 'KL_L_KO'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_6'
          Title.Caption = 'KL_L_N'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_7'
          Title.Caption = 'KL_ZG_R'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_8'
          Title.Caption = 'KL_ZG_N'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_9'
          Title.Caption = 'KL_DU'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_10'
          Title.Caption = 'KL_ES'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_11'
          Title.Caption = 'KL_EM'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_12'
          Title.Caption = 'KL_X'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_13'
          Title.Caption = 'KO_S'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_14'
          Title.Caption = 'KO_ZG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_15'
          Title.Caption = 'KO_DU'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_16'
          Title.Caption = 'KO_ES'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_17'
          Title.Caption = 'KO_EM'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT_18'
          Title.Caption = 'KO_IN'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T051_KP_ID'
          Title.Caption = #1058#1059
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T051_NUMB_IN_YEA_DESC'
          Title.Caption = #1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T051_BANK_CODE'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' '
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_ID'
          Title.Caption = #1050#1086#1076' '#1101#1084#1080#1089#1089#1080#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T030_ID_MAIN'
          Title.Caption = #1050#1086#1076' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1101#1084#1080#1089#1089#1080#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_ID'
          Title.Caption = #1050#1086#1076' '#1101#1084#1080#1090#1077#1085#1090#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_ID_MAIN'
          Title.Caption = #1050#1086#1076' '#1086#1089#1085#1086#1074#1085#1086#1075#1086' '#1101#1084#1080#1090#1077#1085#1090#1072' '
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          Title.Caption = #1050#1086#1076' '#1086#1090#1095#1077#1090#1085#1086#1075#1086' '#1087#1077#1088#1080#1086#1076#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T054_ID'
          Title.Caption = #1050#1086#1076' '#1088#1072#1079#1076#1077#1083#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          Title.Caption = #1058#1080#1087' '#1094'.'#1073'.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID_MAIN'
          Title.Caption = #1058#1080#1087' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1094'.'#1073'.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_PARENT_ID'
          Title.Caption = #1050#1086#1076' '#1075#1083#1072#1074#1085#1086#1075#1086' '#1101#1084#1080#1090#1077#1085#1090#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T052_DPB_COMMENT'
          Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1044#1055#1041
          Width = 255
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 859
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 859
      end
    end
  end
  inherited Panel2: TPanel
    Height = 52
    ExplicitWidth = 889
    ExplicitHeight = 52
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 680
      Height = 52
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 889
      object Label3: TLabel
        Left = 320
        Top = 7
        Width = 12
        Height = 13
        Caption = #1087#1086
      end
      inline Tfm01_Period1: Tfm01_Period
        Left = 127
        Top = 2
        Width = 185
        Height = 23
        TabOrder = 0
        ExplicitLeft = 127
        ExplicitTop = 2
        ExplicitWidth = 185
        inherited Label1: TLabel
          Width = 0
          Caption = '   '#1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076' c'
          Visible = False
          ExplicitWidth = 0
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 4
          Width = 181
          KeyField = 'T055_ID'
          ExplicitLeft = 4
          ExplicitWidth = 181
        end
        inherited dsPeriod: TDataSource
          Left = 88
          Top = 65530
        end
        inherited odsPeriod: TOracleDataSet
          SQL.Strings = (
            'SELECT   T055_ID, T002_NUMB_IN_YEA,'
            #9' T002_NUMB_IN_YEA_TEXT'
            'FROM     V_405_DBF_711_NUMB_IN_YEA_DESC'
            'ORDER BY T002_NUMB_IN_YEA')
          QBEDefinition.QBEFieldDefs = {
            05000000030000002000000054003000300032005F004E0055004D0042005F00
            49004E005F005900450041000100000000002A00000054003000300032005F00
            4E0055004D0042005F0049004E005F005900450041005F005400450058005400
            0100000000000E00000054003000350035005F0049004400010000000000}
          Left = 56
          Top = 65530
        end
      end
      inline Frame11: Tfm04_Prm711KO
        Left = 127
        Top = 26
        Width = 394
        Height = 22
        TabOrder = 1
        ExplicitLeft = 127
        ExplicitTop = 26
        ExplicitWidth = 394
        ExplicitHeight = 22
        inherited Label1: TLabel
          Width = 0
          Height = 22
          Caption = '   '#1050#1088#1077#1076'. '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          Visible = False
          ExplicitWidth = 0
          ExplicitHeight = 22
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 4
          Width = 390
          ExplicitLeft = 4
          ExplicitWidth = 390
        end
        inherited odsPeriod: TOracleDataSet
          SQL.Strings = (
            'SELECT  DISTINCT REGN, NAME--, T002_NUMB_IN_YEA'
            'FROM     V_711_BANC_BY_NUMB'
            '--WHERE    T002_NUMB_IN_YEA = :T002_NUMB_IN_YEA '
            'ORDER BY REGN')
          Variables.Data = {0400000000000000}
          Left = 72
        end
        inherited dsPeriod: TDataSource
          Left = 104
        end
      end
      object chbPeriod: TCheckBox
        Left = 5
        Top = 6
        Width = 123
        Height = 17
        Caption = #1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076' c'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object chbKO: TCheckBox
        Left = 5
        Top = 29
        Width = 121
        Height = 17
        Caption = #1050#1088#1077#1076'. '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      inline Tfm01_Period2: Tfm01_Period
        Left = 336
        Top = 2
        Width = 187
        Height = 23
        TabOrder = 4
        ExplicitLeft = 336
        ExplicitTop = 2
        ExplicitWidth = 187
        inherited Label1: TLabel
          Width = 0
          Caption = '   '#1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076' c'
          Visible = False
          ExplicitWidth = 0
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 4
          Width = 181
          KeyField = 'T055_ID'
          ExplicitLeft = 4
          ExplicitWidth = 181
        end
        inherited dsPeriod: TDataSource
          Left = 88
          Top = 65530
        end
        inherited odsPeriod: TOracleDataSet
          SQL.Strings = (
            'SELECT   T055_ID, T002_NUMB_IN_YEA,'
            #9' T002_NUMB_IN_YEA_TEXT'
            'FROM     V_405_DBF_711_NUMB_IN_YEA_DESC'
            'ORDER BY T002_NUMB_IN_YEA')
          QBEDefinition.QBEFieldDefs = {
            05000000030000002000000054003000300032005F004E0055004D0042005F00
            49004E005F005900450041000100000000002A00000054003000300032005F00
            4E0055004D0042005F0049004E005F005900450041005F005400450058005400
            0100000000000E00000054003000350035005F0049004400010000000000}
          Left = 56
          Top = 65530
        end
      end
      object Button1: TButton
        Left = 527
        Top = 2
        Width = 75
        Height = 25
        Action = actApplayFilter
        TabOrder = 5
      end
    end
  end
  inherited Panel1: TPanel
    Visible = False
    ExplicitTop = 363
    ExplicitWidth = 889
    inherited pc01: TPageControl
      ExplicitWidth = 887
      inherited ts01: TTabSheet
        inherited ToolBar3: TToolBar
          Width = 879
          ExplicitWidth = 879
        end
        inherited ListView: TListView
          Width = 879
          ExplicitWidth = 879
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 224
    ExplicitTop = 311
    ExplicitWidth = 889
  end
  inherited pnlButtons: TPanel
    Top = 243
    TabOrder = 2
    ExplicitTop = 330
    ExplicitWidth = 889
    inherited OKBtn: TButton
      Left = 731
      ExplicitLeft = 731
    end
    inherited CancelBtn: TButton
      Left = 811
      ExplicitLeft = 811
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Visible = True
    end
    inherited actDeleteAttributes: TAction
      Visible = True
    end
    inherited actEditAttributes: TAction
      Visible = True
    end
    inherited actExcel: TAction
      Caption = ''
    end
    inherited actShowDetail: TAction
      Checked = False
    end
    object actApplayFilter: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = actApplayFilterExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      ' T052_ROWID'
      ' , T052_ID'
      ' , T051_ID'
      ' , T051_BANK_CODE'
      ' , T051_KP_ID'
      ' , T051_LOAD_DATE'
      ' , T055_ID'
      ' , T051_NUMB_IN_YEA'
      ' , T051_NUMB_IN_YEA_DESC'
      ' , T051_REPORT_DATE'
      ' , IS_MAIN'
      ' , T030_ID'
      ' , T026_SEC_REGN'
      ', T027_ID'
      ' , T027_SEC_TYPE'
      ' , T028_ID'
      ' , T028_CODE'
      ' , T028_SHOT_NAME'
      ' , T025_SHOT_NAME'
      ' , T030_ID_MAIN '
      ' , T026_SEC_REGN_MAIN'
      ', T027_ID_MAIN'
      ' , T027_SEC_TYPE_MAIN'
      ' , T028_ID_MAIN'
      ' , T028_CODE_MAIN'
      ' , T028_SHOT_NAME_MAIN'
      ' , T025_SHOT_NAME_MAIN'
      ' , T052_REGNUM'
      ' , T052_SENNAME'
      ' , T052_KOD_NUM'
      ' , T052_CURR'
      ' , ISO_LAT3'
      ' , T052_N_ST_ALL'
      ' , T052_N_ST1'
      ' , T052_N_ST2'
      ' , T052_TEXT'
      ' , T054_ID'
      ' , T064_ID_1'
      ' , T064_COUNT_1'
      ' , T064_ID_2'
      ' , T064_COUNT_2'
      ' , T064_ID_3'
      ' , T064_COUNT_3'
      ' , T064_ID_4'
      ' , T064_COUNT_4'
      ' , T064_ID_5'
      ' , T064_COUNT_5'
      ' , T064_ID_6'
      ' , T064_COUNT_6'
      ' , T064_ID_7'
      ' , T064_COUNT_7'
      ' , T064_ID_8'
      ' , T064_COUNT_8'
      ' , T064_ID_9'
      ' , T064_COUNT_9'
      ' , T064_ID_10'
      ' , T064_COUNT_10'
      ' , T064_ID_11'
      ' , T064_COUNT_11'
      ' , T064_ID_12'
      ' , T064_COUNT_12'
      ' , T064_ID_13'
      ' , T064_COUNT_13'
      ' , T064_ID_14'
      ' , T064_COUNT_14'
      ' , T064_ID_15'
      ' , T064_COUNT_15'
      ' , T064_ID_16'
      ' , T064_COUNT_16'
      ' , T064_ID_17'
      ' , T064_COUNT_17'
      ' , T064_ID_18'
      ' , T064_COUNT_18'
      ' , T028_PARENT_ID'
      ' , T052_DPB_COMMENT'
      'from V_405_DBF_711_HEADER'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      050000004A0000000E00000054003000350032005F0049004400010000000000
      0E00000054003000350031005F00490044000100000000001C00000054003000
      350031005F00420041004E004B005F0043004F00440045000100000000001400
      000054003000350031005F004B0050005F00490044000100000000001C000000
      54003000350031005F004C004F00410044005F00440041005400450001000000
      00002000000054003000350031005F004E0055004D0042005F0049004E005F00
      5900450041000100000000002A00000054003000350031005F004E0055004D00
      42005F0049004E005F005900450041005F004400450053004300010000000000
      2000000054003000350031005F005200450050004F00520054005F0044004100
      540045000100000000000E00000054003000330030005F004900440001000000
      00001A00000054003000320036005F005300450043005F005200450047004E00
      0100000000001A00000054003000320037005F005300450043005F0054005900
      500045000100000000001200000054003000320038005F0043004F0044004500
      0100000000001C00000054003000320038005F00530048004F0054005F004E00
      41004D0045000100000000001C00000054003000320035005F00530048004F00
      54005F004E0041004D0045000100000000001600000054003000350032005F00
      5200450047004E0055004D000100000000001800000054003000350032005F00
      530045004E004E0041004D004500010000000000180000005400300035003200
      5F004B004F0044005F004E0055004D0001000000000012000000540030003500
      32005F00430055005200520001000000000010000000490053004F005F004C00
      4100540033000100000000001400000054003000350032005F004E005F005300
      540031000100000000001400000054003000350032005F004E005F0053005400
      32000100000000001200000054003000350032005F0054004500580054000100
      000000000E00000054003000350034005F004900440001000000000012000000
      54003000360034005F00490044005F0031000100000000001800000054003000
      360034005F0043004F0055004E0054005F003100010000000000120000005400
      3000360034005F00490044005F00320001000000000018000000540030003600
      34005F0043004F0055004E0054005F0032000100000000001200000054003000
      360034005F00490044005F003300010000000000180000005400300036003400
      5F0043004F0055004E0054005F00330001000000000012000000540030003600
      34005F00490044005F0034000100000000001800000054003000360034005F00
      43004F0055004E0054005F003400010000000000120000005400300036003400
      5F00490044005F0035000100000000001800000054003000360034005F004300
      4F0055004E0054005F0035000100000000001200000054003000360034005F00
      490044005F0036000100000000001800000054003000360034005F0043004F00
      55004E0054005F0036000100000000001200000054003000360034005F004900
      44005F0037000100000000001800000054003000360034005F0043004F005500
      4E0054005F0037000100000000001200000054003000360034005F0049004400
      5F0038000100000000001800000054003000360034005F0043004F0055004E00
      54005F0038000100000000001200000054003000360034005F00490044005F00
      39000100000000001800000054003000360034005F0043004F0055004E005400
      5F0039000100000000001400000054003000360034005F00490044005F003100
      30000100000000001A00000054003000360034005F0043004F0055004E005400
      5F00310030000100000000001400000054003000360034005F00490044005F00
      310031000100000000001A00000054003000360034005F0043004F0055004E00
      54005F00310031000100000000001400000054003000360034005F0049004400
      5F00310032000100000000001A00000054003000360034005F0043004F005500
      4E0054005F00310032000100000000001400000054003000360034005F004900
      44005F00310033000100000000001A00000054003000360034005F0043004F00
      55004E0054005F00310033000100000000001400000054003000360034005F00
      490044005F00310034000100000000001A00000054003000360034005F004300
      4F0055004E0054005F0031003400010000000000140000005400300036003400
      5F00490044005F00310035000100000000001A00000054003000360034005F00
      43004F0055004E0054005F003100350001000000000014000000540030003600
      34005F00490044005F00310036000100000000001A0000005400300036003400
      5F0043004F0055004E0054005F00310036000100000000001400000054003000
      360034005F00490044005F00310037000100000000001A000000540030003600
      34005F0043004F0055004E0054005F0031003700010000000000140000005400
      3000360034005F00490044005F00310038000100000000001A00000054003000
      360034005F0043004F0055004E0054005F00310038000100000000000E000000
      54003000350035005F00490044000100000000001A0000005400300035003200
      5F004E005F00530054005F0041004C004C000100000000002400000054003000
      320036005F005300450043005F005200450047004E005F004D00410049004E00
      0100000000002400000054003000320037005F005300450043005F0054005900
      500045005F004D00410049004E000100000000001C0000005400300032003800
      5F0043004F00440045005F004D00410049004E00010000000000260000005400
      3000320038005F00530048004F0054005F004E0041004D0045005F004D004100
      49004E000100000000002600000054003000320035005F00530048004F005400
      5F004E0041004D0045005F004D00410049004E000100000000000E0000004900
      53005F004D00410049004E000100000000000E00000054003000320038005F00
      490044000100000000001800000054003000330030005F00490044005F004D00
      410049004E000100000000001800000054003000320038005F00490044005F00
      4D00410049004E000100000000000E00000054003000320037005F0049004400
      0100000000001800000054003000320037005F00490044005F004D0041004900
      4E000100000000001C00000054003000320038005F0050004100520045004E00
      54005F00490044000100000000002000000054003000350032005F0044005000
      42005F0043004F004D004D0045004E005400010000000000}
    object odsListT052_ID: TFloatField
      FieldName = 'T052_ID'
      Required = True
    end
    object odsListT051_ID: TFloatField
      FieldName = 'T051_ID'
      Required = True
    end
    object odsListT051_BANK_CODE: TStringField
      FieldName = 'T051_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsListT051_KP_ID: TIntegerField
      FieldName = 'T051_KP_ID'
      Required = True
    end
    object odsListT051_LOAD_DATE: TDateTimeField
      FieldName = 'T051_LOAD_DATE'
      Required = True
    end
    object odsListT051_NUMB_IN_YEA: TStringField
      FieldName = 'T051_NUMB_IN_YEA'
      Required = True
      Size = 5
    end
    object odsListT051_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T051_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT051_REPORT_DATE: TDateTimeField
      FieldName = 'T051_REPORT_DATE'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT052_REGNUM: TStringField
      FieldName = 'T052_REGNUM'
      Required = True
      Size = 14
    end
    object odsListT052_SENNAME: TIntegerField
      FieldName = 'T052_SENNAME'
      Required = True
    end
    object odsListT052_KOD_NUM: TIntegerField
      FieldName = 'T052_KOD_NUM'
      Required = True
    end
    object odsListT052_CURR: TStringField
      FieldName = 'T052_CURR'
      Required = True
      Size = 3
    end
    object odsListISO_LAT3: TStringField
      FieldName = 'ISO_LAT3'
      Size = 3
    end
    object odsListT052_N_ST_ALL: TFloatField
      FieldName = 'T052_N_ST_ALL'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListT052_N_ST1: TFloatField
      FieldName = 'T052_N_ST1'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT052_N_ST2: TFloatField
      FieldName = 'T052_N_ST2'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT052_TEXT: TStringField
      FieldName = 'T052_TEXT'
      Size = 4000
    end
    object odsListT054_ID: TFloatField
      FieldName = 'T054_ID'
      Required = True
    end
    object odsListT064_ID_1: TFloatField
      FieldName = 'T064_ID_1'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT064_COUNT_1: TFloatField
      FieldName = 'T064_COUNT_1'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_2: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_2'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_2: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_2'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_3: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_3'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_3: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_3'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_4: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_4'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_4: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_4'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_5: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_5'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_5: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_5'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_11: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_11'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_6: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_6'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_6: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_6'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_7: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_7'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_7: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_7'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_8: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_8'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_8: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_8'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_9: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_9'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_9: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_9'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_10: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_10'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_10: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_10'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_11: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_11'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_12: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_12'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_12: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_12'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_13: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_13'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_13: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_13'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_14: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_14'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_14: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_14'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_15: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_15'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_15: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_15'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_16: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_16'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_16: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_16'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_17: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_17'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_17: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_17'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_ID_18: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_ID_18'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT064_COUNT_18: TFloatField
      DisplayLabel = 'T064_COUNT_1'
      FieldName = 'T064_COUNT_18'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT026_SEC_REGN_MAIN: TStringField
      FieldName = 'T026_SEC_REGN_MAIN'
      Required = True
      Size = 265
    end
    object odsListT027_SEC_TYPE_MAIN: TStringField
      FieldName = 'T027_SEC_TYPE_MAIN'
      Required = True
      Size = 255
    end
    object odsListT028_CODE_MAIN: TStringField
      FieldName = 'T028_CODE_MAIN'
      Size = 255
    end
    object odsListT028_SHOT_NAME_MAIN: TStringField
      FieldName = 'T028_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListT025_SHOT_NAME_MAIN: TStringField
      FieldName = 'T025_SHOT_NAME_MAIN'
      Required = True
      Size = 255
    end
    object odsListIS_MAIN: TStringField
      FieldName = 'IS_MAIN'
      Size = 3
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT030_ID_MAIN: TFloatField
      FieldName = 'T030_ID_MAIN'
      Required = True
    end
    object odsListT028_ID_MAIN: TFloatField
      FieldName = 'T028_ID_MAIN'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_ID_MAIN: TFloatField
      FieldName = 'T027_ID_MAIN'
      Required = True
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsListT052_DPB_COMMENT: TStringField
      FieldName = 'T052_DPB_COMMENT'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_head_rec Pk_Form_405.t_T051_rec;'
      '  v_sum_rec Pk_Form_405.t_T052_rec;'
      '  v_rec Pk_Form_405.t_T064_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T053_ID := :T053_ID;'
      '  v_rec.T064_COUNT := :T064_COUNT;'
      '  v_head_rec.T051_NUMB_IN_YEA := :T051_NUMB_IN_YEA;'
      '  v_head_rec.T051_BANK_CODE := :T051_BANK_CODE;'
      '  v_head_rec.T051_KP_ID := :T051_KP_ID;'
      '  v_sum_rec.T030_ID := :T030_ID;'
      '  v_sum_rec.T052_REGNUM := :T052_REGNUM;'
      '  v_sum_rec.T052_SENNAME := :T052_SENNAME;'
      '  v_sum_rec.T052_KOD_NUM := :T052_KOD_NUM;'
      '  v_sum_rec.T052_CURR := :T052_CURR;'
      '  v_sum_rec.T052_N_ST1 := :T052_N_ST1;'
      '  v_sum_rec.T052_N_ST2 := :T052_N_ST2;'
      '  v_sum_rec.T054_ID := :T054_ID;'
      '  v_sum_rec.T052_DPB_COMMENT := :T052_DPB_COMMENT;'
      ''
      '--  Pk_Form_405.p_dbf_711_add(v_head_rec, v_sum_rec, v_rec);'
      
        '  Pk_Form_405.p_dbf_711_31_add(v_head_rec, v_sum_rec, :KL_S_UFR,' +
        ' :KL_S_KO, :KL_S_UFN, :KL_L_R,'
      
        '  '#9':KL_L_KO, :KL_L_N, :KL_ZG_R, :KL_ZG_N, :KL_DU, :KL_ES, :KL_EM' +
        ', :KL_X);'
      '  :T064_ID := v_rec.T064_ID;'
      '  :T052_ID := v_rec.T052_ID;'
      '  :T053_ID := v_rec.T053_ID;'
      '  :T064_COUNT := v_rec.T064_COUNT;'
      '  :T051_ID := v_head_rec.T051_ID;'
      '  :T051_NUMB_IN_YEA := v_head_rec.T051_NUMB_IN_YEA;'
      '  :T051_BANK_CODE := v_head_rec.T051_BANK_CODE;'
      '  :T051_KP_ID := v_head_rec.T051_KP_ID;'
      '  :T030_ID := v_sum_rec.T030_ID;'
      '  :T052_REGNUM := v_sum_rec.T052_REGNUM;'
      '  :T052_SENNAME := v_sum_rec.T052_SENNAME;'
      '  :T052_KOD_NUM := v_sum_rec.T052_KOD_NUM;'
      '  :T052_CURR := v_sum_rec.T052_CURR;'
      '  :T052_N_ST1 := v_sum_rec.T052_N_ST1;'
      '  :T052_N_ST2 := v_sum_rec.T052_N_ST2;'
      '  :T052_DPB_COMMENT := v_sum_rec.T052_DPB_COMMENT;'
      'END;'
      ''
      ' '
      ' ')
    Variables.Data = {
      040000001D000000100000003A0054003000350033005F004900440004000000
      0000000000000000160000003A0054003000360034005F0043004F0055004E00
      5400040000000000000000000000220000003A0054003000350031005F004E00
      55004D0042005F0049004E005F00590045004100050000000000000000000000
      1E0000003A0054003000350031005F00420041004E004B005F0043004F004400
      4500050000000000000000000000160000003A0054003000350031005F004B00
      50005F0049004400050000000000000000000000100000003A00540030003300
      30005F0049004400040000000000000000000000180000003A00540030003500
      32005F005200450047004E0055004D000500000000000000000000001A000000
      3A0054003000350032005F00530045004E004E0041004D004500050000000000
      0000000000001A0000003A0054003000350032005F004B004F0044005F004E00
      55004D00050000000000000000000000140000003A0054003000350032005F00
      4300550052005200050000000000000000000000160000003A00540030003500
      32005F004E005F00530054003100040000000000000000000000160000003A00
      54003000350032005F004E005F00530054003200040000000000000000000000
      100000003A0054003000360034005F0049004400040000000000000000000000
      100000003A0054003000350032005F0049004400040000000000000000000000
      100000003A0054003000350031005F0049004400040000000000000000000000
      100000003A0054003000350034005F0049004400040000000000000000000000
      120000003A004B004C005F0053005F0055004600520004000000000000000000
      0000100000003A004B004C005F0053005F004B004F0004000000000000000000
      0000120000003A004B004C005F0053005F00550046004E000400000000000000
      000000000E0000003A004B004C005F004C005F00520004000000000000000000
      0000100000003A004B004C005F004C005F004B004F0004000000000000000000
      00000E0000003A004B004C005F004C005F004E00040000000000000000000000
      100000003A004B004C005F005A0047005F005200040000000000000000000000
      100000003A004B004C005F005A0047005F004E00040000000000000000000000
      0C0000003A004B004C005F00440055000400000000000000000000000C000000
      3A004B004C005F00450053000400000000000000000000000C0000003A004B00
      4C005F0045004D000400000000000000000000000A0000003A004B004C005F00
      5800040000000000000000000000220000003A0054003000350032005F004400
      500042005F0043004F004D004D0045004E005400050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_head_rec Pk_Form_405.t_T051_rec;'
      '  v_sum_rec Pk_Form_405.t_T052_rec;'
      '  v_rec Pk_Form_405.t_T064_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T064_ID := :T064_ID;'
      '  v_rec.T052_ID := :T052_ID;'
      '  v_rec.T053_ID := :T053_ID;'
      '  v_rec.T064_COUNT := :T064_COUNT;'
      '  v_head_rec.T051_ID := :T051_ID;'
      '  v_head_rec.T051_NUMB_IN_YEA := :T051_NUMB_IN_YEA;'
      '  v_head_rec.T051_BANK_CODE := :T051_BANK_CODE;'
      '  v_head_rec.T051_KP_ID := :T051_KP_ID;'
      '  v_sum_rec.T052_ID := :T052_ID;'
      '  v_sum_rec.T051_ID := :T051_ID;'
      '  v_sum_rec.T030_ID := :T030_ID;'
      '  v_sum_rec.T054_ID := :T054_ID;'
      '  v_sum_rec.T052_REGNUM := :T052_REGNUM;'
      '  v_sum_rec.T052_SENNAME := :T052_SENNAME;'
      '  v_sum_rec.T052_KOD_NUM := :T052_KOD_NUM;'
      '  v_sum_rec.T052_CURR := :T052_CURR;'
      '  v_sum_rec.T052_N_ST1 := :T052_N_ST1;'
      '  v_sum_rec.T052_N_ST2 := :T052_N_ST2;'
      '  v_sum_rec.T052_DPB_COMMENT := :T052_DPB_COMMENT;'
      ''
      '--  Pk_Form_405.p_dbf_711_update(v_head_rec, v_sum_rec, v_rec);'
      
        '  Pk_Form_405.p_dbf_711_31_update(v_head_rec, v_sum_rec, :KL_S_U' +
        'FR, :KL_S_KO, :KL_S_UFN, :KL_L_R,'
      
        '  '#9':KL_L_KO, :KL_L_N, :KL_ZG_R, :KL_ZG_N, :KL_DU, :KL_ES, :KL_EM' +
        ', :KL_X);'
      '  :T064_ID := v_rec.T064_ID;'
      '  :T052_ID := v_rec.T052_ID;'
      '  :T053_ID := v_rec.T053_ID;'
      '  :T064_COUNT := v_rec.T064_COUNT;'
      '  :T051_ID := v_head_rec.T051_ID;'
      '  :T051_NUMB_IN_YEA := v_head_rec.T051_NUMB_IN_YEA;'
      '  :T051_BANK_CODE := v_head_rec.T051_BANK_CODE;'
      '  :T051_KP_ID := v_head_rec.T051_KP_ID;'
      '  :T030_ID := v_sum_rec.T030_ID;'
      '  :T052_REGNUM := v_sum_rec.T052_REGNUM;'
      '  :T052_SENNAME := v_sum_rec.T052_SENNAME;'
      '  :T052_KOD_NUM := v_sum_rec.T052_KOD_NUM;'
      '  :T052_CURR := v_sum_rec.T052_CURR;'
      '  :T052_N_ST1 := v_sum_rec.T052_N_ST1;'
      '  :T052_N_ST2 := v_sum_rec.T052_N_ST2;'
      '  :T052_DPB_COMMENT := v_sum_rec.T052_DPB_COMMENT;'
      'END;'
      ''
      ''
      ' '
      ' ')
    Variables.Data = {
      040000001D000000220000003A0054003000350032005F004400500042005F00
      43004F004D004D0045004E005400050000000000000000000000100000003A00
      54003000350032005F0049004400040000000000000000000000100000003A00
      54003000350033005F0049004400040000000000000000000000160000003A00
      54003000360034005F0043004F0055004E005400040000000000000000000000
      100000003A0054003000350031005F0049004400040000000000000000000000
      220000003A0054003000350031005F004E0055004D0042005F0049004E005F00
      5900450041000500000000000000000000001E0000003A005400300035003100
      5F00420041004E004B005F0043004F0044004500050000000000000000000000
      160000003A0054003000350031005F004B0050005F0049004400050000000000
      000000000000100000003A0054003000330030005F0049004400040000000000
      000000000000180000003A0054003000350032005F005200450047004E005500
      4D000500000000000000000000001A0000003A0054003000350032005F005300
      45004E004E0041004D0045000500000000000000000000001A0000003A005400
      3000350032005F004B004F0044005F004E0055004D0005000000000000000000
      0000140000003A0054003000350032005F004300550052005200050000000000
      000000000000160000003A0054003000350032005F004E005F00530054003100
      040000000000000000000000160000003A0054003000350032005F004E005F00
      530054003200040000000000000000000000100000003A005400300035003400
      5F0049004400040000000000000000000000120000003A004B004C005F005300
      5F00550046005200040000000000000000000000100000003A004B004C005F00
      53005F004B004F00040000000000000000000000120000003A004B004C005F00
      53005F00550046004E000400000000000000000000000E0000003A004B004C00
      5F004C005F005200040000000000000000000000100000003A004B004C005F00
      4C005F004B004F000400000000000000000000000E0000003A004B004C005F00
      4C005F004E00040000000000000000000000100000003A004B004C005F005A00
      47005F005200040000000000000000000000100000003A004B004C005F005A00
      47005F004E000400000000000000000000000C0000003A004B004C005F004400
      55000400000000000000000000000C0000003A004B004C005F00450053000400
      000000000000000000000C0000003A004B004C005F0045004D00040000000000
      0000000000000A0000003A004B004C005F005800040000000000000000000000
      100000003A0054003000360034005F0049004400040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T052_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T052_ID := :T052_ID;'
      '  v_rec.T051_ID := :T051_ID;'
      '  Pk_Form_405.p_dbf_711_delete(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0400000002000000100000003A0054003000350032005F004900440004000000
      0000000000000000100000003A0054003000350031005F004900440004000000
      0000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T064_rec;'
      '  v_head_rec Pk_Form_405.t_T051_rec;'
      '  v_sum_rec Pk_Form_405.t_T052_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_head_rec.T051_ID := :T051_ID;'
      '  v_head_rec.T051_NUMB_IN_YEA := :T051_NUMB_IN_YEA;'
      '  v_head_rec.T051_BANK_CODE := :T051_BANK_CODE;'
      '  v_sum_rec.T051_ID := :T051_ID;'
      '  v_sum_rec.T052_ID := :T052_ID;'
      '  v_sum_rec.T054_ID := :T054_ID;'
      '  v_sum_rec.T030_ID := :T030_ID;'
      '  v_rec.T064_ID := :T064_ID;'
      '  v_rec.T052_ID := :T052_ID;'
      '  v_rec.T053_ID := :T053_ID;'
      
        '--  :o_result := Pk_Form_405.f_dbf_711_check(v_head_rec, v_sum_r' +
        'ec, v_rec);'
      
        '  :o_result := Pk_Form_405.f_dbf_711_check(v_head_rec, v_sum_rec' +
        ');'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0400000009000000100000003A0054003000350032005F004900440004000000
      0000000000000000100000003A0054003000350033005F004900440004000000
      0000000000000000120000003A004F005F0052004500530055004C0054000400
      00000000000000000000100000003A0054003000350031005F00490044000400
      00000000000000000000220000003A0054003000350031005F004E0055004D00
      42005F0049004E005F005900450041000500000000000000000000001E000000
      3A0054003000350031005F00420041004E004B005F0043004F00440045000500
      00000000000000000000100000003A0054003000330030005F00490044000400
      00000000000000000000100000003A0054003000360034005F00490044000400
      00000000000000000000100000003A0054003000350034005F00490044000400
      00000000000000000000}
  end
  inherited oqLoad: TOracleQuery
    Top = 224
  end
  object oqBuildBuffer: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_Form_405.p_build_sn030_711_buffer;'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Cursor = crHourGlass
    Left = 296
    Top = 212
  end
  object oqBeforeLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  pk_load_dbf.p_711_before_load;'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Left = 496
    Top = 240
  end
  object oqAfterLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  pk_load_dbf.p_711_after_load;'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Left = 568
    Top = 240
  end
  object oqRequestLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :o_result := pk_load_dbf.f_711_request_load(:T051_NUMB_IN_YEA,' +
        ' :T054_ID);'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000003000000120000003A004F005F0052004500530055004C0054000400
      00000000000000000000100000003A0054003000350034005F00490044000400
      00000000000000000000220000003A0054003000350031005F004E0055004D00
      42005F0049004E005F00590045004100050000000000000000000000}
    Left = 400
    Top = 240
  end
end
