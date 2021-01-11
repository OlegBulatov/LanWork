inherited frm83_DefaultOperationsList: Tfrm83_DefaultOperationsList
  Left = -128
  Top = 403
  Caption = #1043#1088#1072#1092#1080#1082' '#1087#1086#1075#1072#1096#1077#1085#1080#1103' '#1076#1077#1092#1086#1083#1090#1072
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    ExplicitLeft = 1273
    ExplicitHeight = 343
  end
  inherited paRight: TPanel
    ExplicitLeft = 1276
    ExplicitHeight = 343
  end
  inherited paMain: TPanel
    ExplicitWidth = 1273
    ExplicitHeight = 343
    inherited ToolBar2: TToolBar
      ExplicitWidth = 1273
      object ToolButton5: TToolButton
        Left = 685
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnCellClick = xxxDBGridCellClick
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 19
              Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1088#1072#1089#1095#1077#1090#1086#1074' '#1087#1086' '#1086#1087#1077#1088#1072#1094#1080#1103#1084' '#1089' '#1094#1077#1085#1085#1099#1084#1080' '#1073#1091#1084#1072#1075#1072#1084#1080
            end
            item
              FirstCol = 20
              LastCol = 27
              Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' '#1094#1077#1085#1085#1086#1081' '#1073#1091#1084#1072#1075#1080
            end
            item
              FirstCol = 47
              LastCol = 50
              Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
            end>
        end
        item
          Headers = <
            item
              FirstCol = 8
              LastCol = 11
              Caption = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
            end
            item
              FirstCol = 12
              LastCol = 15
              Caption = #1056#1077#1079#1080#1076#1077#1085#1090
            end
            item
              FirstCol = 16
              LastCol = 19
              Caption = #1053#1077#1088#1077#1079#1080#1076#1077#1085#1090
            end
            item
              FirstCol = 20
              LastCol = 22
              Caption = #1069#1084#1080#1090#1077#1085#1090
            end
            item
              FirstCol = 47
              LastCol = 48
              Caption = #1041#1072#1085#1082'-'#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1072
            end
            item
              FirstCol = 49
              LastCol = 50
              Caption = #1053#1077#1088#1077#1079#1080#1076#1077#1085#1090
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'IS_SELECTED'
          Title.Caption = #1042#1099#1073#1088#1072#1085
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_ROW_PRFX'
          Title.Caption = #8470' '#1088#1072#1079'.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_ROW_NUM'
          Title.Caption = #1057#1090#1088'.'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OP'
          Title.Caption = #1044#1072#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T011_TYPE_ID'
          Title.Caption = #1050#1086#1076' '#1086#1087#1077#1088'.'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_NAME'
          Title.Caption = #1050#1086#1076' '#1085'. '#1087#1083'.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1073#1091#1084#1072#1075
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_CR_DESC'
          Title.Caption = #1050#1086#1076' '#1074#1072#1083'. '#1087#1083#1072#1090'.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM'
          Title.Caption = #1042#1089#1077#1075#1086
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC'
          Title.Caption = #1055#1088#1086#1094#1077#1085#1090#1099
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS'
          Title.Caption = #1042#1089#1077#1075#1086' ($)'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC_CROSS'
          Title.Caption = #1055#1088#1086#1094#1077#1085#1090#1099' ($)'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_NAME'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_CO_ID'
          Title.Caption = #1048#1053#1053
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_NAME'
          Title.Caption = #1058#1080#1087
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          Title.Caption = #1060#1080#1082#1090#1080#1074#1085#1099#1081
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_NAME'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_COUNTRY'
          Title.Caption = #1057#1090#1088#1072#1085#1072
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_NAME'
          Title.Caption = #1058#1080#1087
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          Title.Caption = #1060#1080#1082#1090#1080#1074#1085#1099#1081
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          Title.Caption = #1050#1086#1076
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          Title.Caption = #1058#1080#1087
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REG_NUM'
          Title.Caption = #1056#1077#1075#1080#1089#1090#1088'. '#1085#1086#1084#1077#1088
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_TYPE_ID'
          Title.Caption = #1050#1086#1076' '#1090#1080#1087#1072' '#1094'.'#1073'.'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_ON'
          Title.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088'.'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OFF'
          Title.Caption = #1044#1072#1090#1072' '#1087#1086#1075#1072#1096#1077#1085#1080#1103
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_CR_DESC'
          Title.Caption = #1050#1086#1076' '#1074#1072#1083#1102#1090#1099' '#1094'.'#1073'.'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N8'
          Title.Caption = #1052#1045#1053#1040
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N9'
          Title.Caption = #1056#1040#1057#1057#1056#1054#1063#1050#1040
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_10'
          Title.Caption = #1055#1040#1050#1045#1058
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_11'
          Title.Caption = #1041#1056#1054#1050#1045#1056
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N99'
          Title.Caption = #1048#1052#1059#1065#1045#1057#1058#1042#1054
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_COMMENT'
          Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_IS_RANSOM'
          Title.Caption = #1042#1099#1082#1091#1087' '#1101#1084#1080#1090#1077#1085#1090#1086#1084
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_ID'
          Title.Caption = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          Title.Caption = #1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_CODE'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' '#1050#1054
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_NAME'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1050#1054
          Width = 250
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
          FieldName = 'T055_ID'
          Title.Caption = #1050#1086#1076' '#1086#1090#1095#1077#1090#1085#1086#1075#1086' '#1087#1077#1088#1080#1086#1076#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_YEAR_OP'
          Title.Caption = #1043#1086#1076
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T035_NAME'
          Title.Caption = #1060#1080#1082#1090#1080#1074'.'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_MODIF'
          Title.Caption = #1062#1077#1085#1072' ('#1074' $)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_RUB'
          Title.Caption = #1062#1077#1085#1072' ('#1074' '#1088#1091#1073'.)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_DIRECTION_DESC'
          Title.Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_MOD_OP_SUM_CROSS'
          Title.Caption = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072' ('#1074' '#1084#1083#1085'. $)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C11'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C12'
          Title.Caption = #1050#1086#1076' '#1089#1090#1088#1072#1085#1099
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C16'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C17'
          Title.Caption = #1050#1086#1076' '#1089#1090#1088#1072#1085#1099
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C18'
          Title.Caption = 'BIC '#1091#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1086#1075#1086' '#1073#1072#1085#1082#1072
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C19'
          Title.Caption = 'SWIFT '#1073#1072#1085#1082#1072'-'#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1072
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C20'
          Title.Caption = #1062#1080#1092#1088'. '#1082#1086#1076' '#1089#1090#1088#1072#1085#1099' '#1073#1072#1085#1082#1072'-'#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1072
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          Title.Caption = 'ID '#1090#1080#1087#1072' '#1094#1077#1085#1085#1086#1081' '#1073#1091#1084#1072#1075#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_PROCESSED_DESC'
          Title.Caption = #1050' '#1091#1095#1105#1090#1091' ('#1059#1095#1072#1089#1090#1080#1077' '#1085#1077#1088#1077#1079'.)'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DPB_COMMENT'
          Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1044#1055#1041
          Width = 150
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 1246
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 1246
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 376
    ExplicitWidth = 1276
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 343
    ExplicitWidth = 1276
    inherited OKBtn: TButton
      Left = 1651
      ExplicitLeft = 1651
    end
    inherited CancelBtn: TButton
      Left = 1731
      ExplicitLeft = 1731
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T150_ID,'
      '         T152_ID,'
      '         IS_SELECTED,'
      '         T001_PART_ID,'
      '         T001_ROW_PRFX,'
      '         T055_ID,'
      '         T002_BANK_CODE,'
      '         T002_BANK_NAME,'
      '         T002_NUMB_IN_YEA_DESC,'
      '         T001_ID,'
      '         T001_ROW_NUM,'
      '         T001_DATE_OP,'
      '         T001_YEAR_OP,'
      '         T027_ID,'
      '         T001_TYPE_ID,'
      '         T011_TYPE_ID,'
      '         T006_NAME,'
      '         T006_DIRECTION_DESC,'
      '         T001_OP_COUNT,'
      '         T001_OP_CR_DESC,'
      '         T001_OP_SUM,'
      '         T001_OP_PROC,'
      '         T001_MOD_OP_SUM_CROSS,'
      '         T001_OP_SUM_CROSS,'
      '         T001_OP_PROC_CROSS,'
      '         T001_OP_MODIF,'
      '         T001_OP_SUM_RUB,'
      '         T001_REZID_NAME,'
      '         T001_REZID_CO_ID,'
      '         T033_NAME,'
      '         T012_FICT_STATE_DESC,'
      '         T001_NREZID_NAME,'
      '         T001_NREZID_COUNTRY,'
      '         T034_NAME,'
      '         T013_FICT_STATE_DESC,'
      '         T028_SHOT_NAME,'
      '         T028_CODE,'
      '         T025_SHOT_NAME,'
      '         T001_REG_NUM,'
      '         T001_DATE_ON,'
      '         T001_DATE_OFF,'
      '         T001_CR_DESC,'
      '         T001_IS_RANSOM,'
      '         T030_ID,'
      '         T001_N8,'
      '         T001_N9,'
      '         T001_10,'
      '         T001_11,'
      '         T001_N99,'
      '         T001_COMMENT,'
      '         T035_NAME,'
      '         T001_C11,'
      '         T001_C12,'
      '         T001_C16,'
      '         T001_C17,'
      '         T001_C18,'
      '         T001_C19,'
      '         T001_C20,'
      '         T001_PROCESSED_DESC,'
      '         T001_DPB_COMMENT'
      'from     V_405_DEFAULT_405_REPAYS V1'
      'where    V1.MONTH_ID_BY_OPDATE = :T055_ID'
      'AND      V1.T030_PARENT_ID = :T030_ID'
      'AND T001_DATE_OP >= :DEF_DATE')
    Variables.Data = {
      0400000003000000100000003A0054003000330030005F004900440004000000
      0000000000000000100000003A0054003000350035005F004900440004000000
      0000000000000000120000003A004400450046005F0044004100540045000C00
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000003C0000001800000054003000300031005F0050004100520054005F00
      490044000100000000000E00000054003000350035005F004900440001000000
      00001C00000054003000300032005F00420041004E004B005F0043004F004400
      45000100000000001C00000054003000300032005F00420041004E004B005F00
      4E0041004D0045000100000000002A00000054003000300032005F004E005500
      4D0042005F0049004E005F005900450041005F00440045005300430001000000
      00000E00000054003000300031005F0049004400010000000000180000005400
      3000300031005F0052004F0057005F004E0055004D0001000000000018000000
      54003000300031005F0044004100540045005F004F0050000100000000001800
      000054003000300031005F0059004500410052005F004F005000010000000000
      0E00000054003000320037005F00490044000100000000001800000054003000
      300031005F0054005900500045005F0049004400010000000000180000005400
      3000310031005F0054005900500045005F004900440001000000000012000000
      54003000300036005F004E0041004D0045000100000000002600000054003000
      300036005F0044004900520045004300540049004F004E005F00440045005300
      43000100000000001A00000054003000300031005F004F0050005F0043004F00
      55004E0054000100000000001E00000054003000300031005F004F0050005F00
      430052005F004400450053004300010000000000160000005400300030003100
      5F004F0050005F00530055004D00010000000000180000005400300030003100
      5F004F0050005F00500052004F0043000100000000002A000000540030003000
      31005F004D004F0044005F004F0050005F00530055004D005F00430052004F00
      530053000100000000002200000054003000300031005F004F0050005F005300
      55004D005F00430052004F005300530001000000000024000000540030003000
      31005F004F0050005F00500052004F0043005F00430052004F00530053000100
      000000001A00000054003000300031005F004F0050005F004D004F0044004900
      46000100000000001E00000054003000300031005F004F0050005F0053005500
      4D005F005200550042000100000000001E00000054003000300031005F005200
      45005A00490044005F004E0041004D0045000100000000002000000054003000
      300031005F00520045005A00490044005F0043004F005F004900440001000000
      00001200000054003000330033005F004E0041004D0045000100000000002000
      000054003000300031005F004E00520045005A00490044005F004E0041004D00
      45000100000000002600000054003000300031005F004E00520045005A004900
      44005F0043004F0055004E005400520059000100000000001200000054003000
      330034005F004E0041004D0045000100000000001C0000005400300032003800
      5F00530048004F0054005F004E0041004D004500010000000000120000005400
      3000320038005F0043004F00440045000100000000001C000000540030003200
      35005F00530048004F0054005F004E0041004D00450001000000000018000000
      54003000300031005F005200450047005F004E0055004D000100000000001800
      000054003000300031005F0044004100540045005F004F004E00010000000000
      1A00000054003000300031005F0044004100540045005F004F00460046000100
      000000001800000054003000300031005F00430052005F004400450053004300
      0100000000001C00000054003000300031005F00490053005F00520041004E00
      53004F004D000100000000000E00000054003000330030005F00490044000100
      000000000E00000054003000300031005F004E0038000100000000000E000000
      54003000300031005F004E0039000100000000000E0000005400300030003100
      5F00310030000100000000000E00000054003000300031005F00310031000100
      000000001000000054003000300031005F004E00390039000100000000001800
      000054003000300031005F0043004F004D004D0045004E005400010000000000
      1200000054003000330035005F004E0041004D00450001000000000010000000
      54003000300031005F0043003100310001000000000010000000540030003000
      31005F004300310032000100000000001000000054003000300031005F004300
      310036000100000000001000000054003000300031005F004300310037000100
      000000001000000054003000300031005F004300310038000100000000001000
      000054003000300031005F004300310039000100000000001000000054003000
      300031005F004300320030000100000000002600000054003000300031005F00
      500052004F004300450053005300450044005F00440045005300430001000000
      00002000000054003000300031005F004400500042005F0043004F004D004D00
      45004E0054000100000000002800000054003000310032005F00460049004300
      54005F00530054004100540045005F0044004500530043000100000000002800
      000054003000310033005F0046004900430054005F0053005400410054004500
      5F0044004500530043000100000000000E00000054003100350030005F004900
      44000100000000000E00000054003100350032005F0049004400010000000000
      16000000490053005F00530045004C0045004300540045004400010000000000
      1A00000054003000300031005F0052004F0057005F0050005200460058000100
      00000000}
    object odsListT001_PART_ID: TFloatField
      FieldName = 'T001_PART_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsListT002_BANK_NAME: TStringField
      FieldName = 'T002_BANK_NAME'
      Size = 250
    end
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
      Required = True
    end
    object odsListT001_ROW_NUM: TIntegerField
      FieldName = 'T001_ROW_NUM'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
      Required = True
    end
    object odsListT001_YEAR_OP: TStringField
      FieldName = 'T001_YEAR_OP'
      Size = 4
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT001_TYPE_ID: TStringField
      FieldName = 'T001_TYPE_ID'
      Required = True
      Size = 255
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object odsListT006_NAME: TStringField
      FieldName = 'T006_NAME'
      Required = True
      Size = 255
    end
    object odsListT006_DIRECTION_DESC: TStringField
      FieldName = 'T006_DIRECTION_DESC'
      Size = 9
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT001_OP_CR_DESC: TStringField
      FieldName = 'T001_OP_CR_DESC'
      Size = 255
    end
    object odsListT001_OP_SUM: TFloatField
      FieldName = 'T001_OP_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_PROC: TFloatField
      FieldName = 'T001_OP_PROC'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_MOD_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_MOD_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_PROC_CROSS: TFloatField
      FieldName = 'T001_OP_PROC_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_MODIF: TFloatField
      FieldName = 'T001_OP_MODIF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_SUM_RUB: TFloatField
      FieldName = 'T001_OP_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_REZID_NAME: TStringField
      FieldName = 'T001_REZID_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_REZID_CO_ID: TStringField
      FieldName = 'T001_REZID_CO_ID'
      Size = 255
    end
    object odsListT033_NAME: TStringField
      FieldName = 'T033_NAME'
      Required = True
      Size = 50
    end
    object odsListT001_NREZID_NAME: TStringField
      FieldName = 'T001_NREZID_NAME'
      Size = 255
    end
    object odsListT001_NREZID_COUNTRY: TStringField
      FieldName = 'T001_NREZID_COUNTRY'
      Size = 250
    end
    object odsListT034_NAME: TStringField
      FieldName = 'T034_NAME'
      Required = True
      Size = 50
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_REG_NUM: TStringField
      FieldName = 'T001_REG_NUM'
      Required = True
      Size = 265
    end
    object odsListT001_DATE_ON: TDateTimeField
      FieldName = 'T001_DATE_ON'
    end
    object odsListT001_DATE_OFF: TDateTimeField
      FieldName = 'T001_DATE_OFF'
    end
    object odsListT001_CR_DESC: TStringField
      FieldName = 'T001_CR_DESC'
      Size = 255
    end
    object odsListT001_IS_RANSOM: TStringField
      FieldName = 'T001_IS_RANSOM'
      Size = 1
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT001_N8: TFloatField
      FieldName = 'T001_N8'
    end
    object odsListT001_N9: TFloatField
      FieldName = 'T001_N9'
    end
    object odsListT001_10: TFloatField
      FieldName = 'T001_10'
    end
    object odsListT001_11: TFloatField
      FieldName = 'T001_11'
    end
    object odsListT001_N99: TFloatField
      FieldName = 'T001_N99'
    end
    object odsListT001_COMMENT: TStringField
      FieldName = 'T001_COMMENT'
      Size = 1024
    end
    object odsListT035_NAME: TStringField
      FieldName = 'T035_NAME'
      Required = True
      Size = 50
    end
    object odsListT001_C11: TStringField
      FieldName = 'T001_C11'
      Size = 255
    end
    object odsListT001_C12: TStringField
      FieldName = 'T001_C12'
      Size = 255
    end
    object odsListT001_C16: TStringField
      FieldName = 'T001_C16'
      Size = 255
    end
    object odsListT001_C17: TStringField
      FieldName = 'T001_C17'
      Size = 255
    end
    object odsListT001_C18: TStringField
      FieldName = 'T001_C18'
      Size = 255
    end
    object odsListT001_C19: TStringField
      FieldName = 'T001_C19'
      Size = 255
    end
    object odsListT001_C20: TStringField
      FieldName = 'T001_C20'
      Size = 255
    end
    object odsListT001_PROCESSED_DESC: TStringField
      FieldName = 'T001_PROCESSED_DESC'
      Size = 3
    end
    object odsListT001_DPB_COMMENT: TStringField
      FieldName = 'T001_DPB_COMMENT'
      Size = 255
    end
    object odsListT012_FICT_STATE_DESC: TStringField
      FieldName = 'T012_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT013_FICT_STATE_DESC: TStringField
      FieldName = 'T013_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT150_ID: TFloatField
      FieldName = 'T150_ID'
    end
    object odsListT152_ID: TFloatField
      FieldName = 'T152_ID'
    end
    object odsListIS_SELECTED: TFloatField
      FieldName = 'IS_SELECTED'
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 3
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  pk_405_default.p_operation_add(:T127_ID, :T001_ID);'
      '  pk_405_default.p_calc_default(:T127_ID, :T055_ID);'
      'END;'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0400000003000000100000003A0054003100320037005F004900440004000000
      0000000000000000100000003A0054003000350035005F004900440004000000
      0000000000000000100000003A0054003000300031005F004900440004000000
      0000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  pk_405_default.p_operation_delete(:T127_ID, :T001_ID);'
      '  pk_405_default.p_calc_default(:T127_ID, :T055_ID);'
      'END;'
      ' ')
    Variables.Data = {
      0400000003000000100000003A0054003100320037005F004900440004000000
      0000000000000000100000003A0054003000350035005F004900440004000000
      0000000000000000100000003A0054003000300031005F004900440004000000
      0000000000000000}
  end
  object oq405RepayAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Default_NEW.p_repay_405_add(:T150_ID, :T001_ID);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0054003100350030005F004900440004000000
      0000000000000000100000003A0054003000300031005F004900440004000000
      0000000000000000}
    Left = 408
    Top = 160
  end
  object oq405RepayDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Default_NEW.p_repay_405_delete(:T152_ID);'
      'END;'
      '')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003100350032005F004900440004000000
      0000000000000000}
    Left = 408
    Top = 200
  end
end
