inherited C001_OpersByDate: TC001_OpersByDate
  Top = 90
  ActiveControl = nil
  Caption = #1054#1090#1095#1077#1090#1099' '#1073#1072#1085#1082#1086#1074
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Top = 123
    Height = 268
    ExplicitLeft = 1005
    ExplicitTop = 123
    ExplicitHeight = 463
  end
  inherited paRight: TPanel
    Top = 123
    Height = 268
    ExplicitTop = 123
    ExplicitHeight = 268
  end
  inherited paMain: TPanel
    Top = 123
    Height = 268
    ExplicitTop = 123
    ExplicitHeight = 268
    inherited ToolBar2: TToolBar
      ButtonWidth = 114
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      inherited tbExcelZ: TToolButton
        Left = 524
        ExplicitLeft = 524
      end
      object ToolButton5: TToolButton
        Left = 638
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        Enabled = False
        ImageIndex = 4
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 646
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        Enabled = False
        ImageIndex = 12
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 654
        Top = 0
        Action = actSetInvStraight
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 727
        Top = 0
        Action = actSetInvCase
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 829
        Top = 0
        Action = actSetInvNoCount
        AutoSize = True
      end
      object ToolButton21: TToolButton
        Left = 929
        Top = 0
        AutoSize = True
        Caption = #1060#1080#1082#1090#1080#1074'.'
        DropdownMenu = pmSetFictive
        ImageIndex = 1
      end
      object ToolButton11: TToolButton
        Left = 1003
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        Enabled = False
        ImageIndex = 3
        Style = tbsSeparator
        Visible = False
      end
      object tbInfo: TToolButton
        Left = 1011
        Top = 0
        Action = actInfo
      end
      object ToolButton7: TToolButton
        Left = 1125
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 22
        Style = tbsSeparator
      end
      object ToolButton14: TToolButton
        Left = 1133
        Top = 0
        Action = actGoTo417
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 88
      Height = 93
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 5
              LastCol = 30
              Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1088#1072#1089#1095#1077#1090#1086#1074' '#1087#1086' '#1086#1087#1077#1088#1072#1094#1080#1103#1084' '#1089' '#1094#1077#1085#1085#1099#1084#1080' '#1073#1091#1084#1072#1075#1072#1084#1080
            end
            item
              FirstCol = 31
              LastCol = 47
              Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' '#1094#1077#1085#1085#1086#1081' '#1073#1091#1084#1072#1075#1080' - '#1087#1086' '#1075#1083#1072#1074#1085#1086#1081' '#1101#1084#1080#1089#1089#1080#1080
            end
            item
              FirstCol = 73
              LastCol = 76
              Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090' '
            end>
        end
        item
          Headers = <
            item
              FirstCol = 13
              LastCol = 16
              Caption = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
            end
            item
              FirstCol = 17
              LastCol = 26
              Caption = #1056#1077#1079#1080#1076#1077#1085#1090' - '#1043#1083#1072#1074#1085#1099#1081
            end
            item
              FirstCol = 27
              LastCol = 30
              Caption = #1053#1077#1088#1077#1079#1080#1076#1077#1085#1090' - '#1043#1083#1072#1074#1085#1099#1081
            end
            item
              FirstCol = 31
              LastCol = 41
              Caption = #1069#1084#1080#1090#1077#1085#1090' - '#1043#1083#1072#1074#1085#1099#1081
            end
            item
              FirstCol = 73
              LastCol = 74
              Caption = #1041#1072#1085#1082'-'#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1072
            end
            item
              FirstCol = 75
              LastCol = 76
              Caption = #1053#1077#1088#1077#1079#1080#1076#1077#1085#1090
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T001_ROW_PRFX'
          Title.Caption = #8470' '#1088#1072#1079'.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_CODE'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' '#1050#1054
          Visible = False
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
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          Title.Caption = #1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
          Visible = False
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
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_PERCENT'
          Title.Caption = #1044#1086#1083#1103
          Width = 40
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
          FieldName = 'T001_RATE'
          Title.Caption = #1041#1080#1088#1078#1077#1074#1072#1103' '#1094#1077#1085#1072' ('#1074' $)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_RATE_DELTA'
          Title.Caption = #1056#1072#1089#1093#1086#1078#1076#1077#1085#1080#1077' ('#1074' %)'
          Width = 74
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
          Title.Caption = #1056#1077#1079#1080#1076#1077#1085#1090
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_CO_ID'
          Title.Caption = #1048#1053#1053
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_NAME'
          Title.Caption = #1058#1080#1087
          Width = 37
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
          FieldName = 'T012_REGION_CODE'
          Title.Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_REGION_NAME'
          Title.Caption = #1053#1072#1080#1084'. '#1088#1077#1075#1080#1086#1085#1072
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_INDUSTRY_CODE'
          Title.Caption = #1050#1086#1076' '#1086#1090#1088#1072#1089#1083#1080
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_INDUSTRY_NAME'
          Title.Caption = #1053#1072#1080#1084'. '#1086#1090#1088#1072#1089#1083#1080
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FI_SNS_DESC'
          Title.Caption = #1060#1054
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FI_PB_DESC'
          Title.Caption = #1060#1055
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_NAME'
          Title.Caption = #1053#1077#1088#1077#1079#1080#1076#1077#1085#1090
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_COUNTRY'
          Title.Caption = #1057#1090#1088#1072#1085#1072
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_NAME'
          Title.Caption = #1058#1080#1087
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          Title.Caption = #1060#1080#1082#1090#1080#1074#1085#1099#1081
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 87
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
          FieldName = 'T028_REGION_CODE'
          Title.Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_REGION_NAME'
          Title.Caption = #1053#1072#1080#1084'. '#1088#1077#1075#1080#1086#1085#1072
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY_CODE'
          Title.Caption = #1050#1086#1076' '#1086#1090#1088#1072#1089#1083#1080
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY_NAME'
          Title.Caption = #1053#1072#1080#1084'. '#1086#1090#1088#1072#1089#1083#1080
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_ICODE'
          Title.Caption = #1050#1086#1076' '#1086#1090#1088#1072#1089#1083#1080' '#1052#1045#1046#1044'.'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INAME'
          Title.Caption = #1053#1072#1080#1084'. '#1086#1090#1088#1072#1089#1083#1080' '#1052#1045#1046#1044'.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_FI_SNS_DESC'
          Title.Caption = #1060#1054
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_FI_PB_DESC'
          Title.Caption = #1060#1055
          Width = 35
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
          FieldName = 'T001_SEC_DESC'
          Title.Caption = #1057#1088#1086#1095#1085#1086#1089#1090#1100
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
          FieldName = 'OWN_EMISSION'
          Title.Caption = #1057#1054#1041#1057#1058#1042'. '#1041#1059#1052'.'
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
          FieldName = 'T001_PART_ID'
          Visible = False
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
          FieldName = 'T001_ID'
          Title.Caption = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T030_ID'
          Title.Caption = #1050#1086#1076' '#1101#1084#1080#1089#1089#1080#1080
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
          FieldName = 'T012_ID'
          Title.Caption = #1050#1086#1076' '#1088#1077#1079#1080#1076#1077#1085#1090#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T013_ID'
          Title.Caption = #1050#1086#1076' '#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          Title.Caption = #1050#1086#1076' '#1076#1072#1090#1099' '#1086#1087#1077#1088#1072#1094#1080#1080
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
          FieldName = 'OP_MONTH'
          Title.Caption = #1052#1077#1089#1103#1094
          Width = 60
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
          FieldName = 'T001_OP_ID'
          Title.Caption = 'ID '#1082#1086#1076#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          Title.Caption = 'ID '#1090#1080#1087#1072' '#1094#1077#1085#1085#1086#1081' '#1073#1091#1084#1072#1075#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID_1'
          Title.Caption = #1058#1080#1087' '#1094'.'#1073'. 1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PAY_ID'
          Title.Caption = 'ID '#1085#1072#1087#1088'. '#1087#1083#1072#1090#1077#1078#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T030_PARENT_ID'
          Title.Caption = #1050#1086#1076' '#1075#1083#1072#1074#1085#1086#1081' '#1101#1084#1080#1089#1089#1080#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_PARENT_ID'
          Title.Caption = #1050#1086#1076' '#1075#1083#1072#1074#1085#1086#1075#1086' '#1101#1084#1080#1090#1077#1085#1090#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          Title.Caption = #1048#1053#1053' '#1101#1084#1080#1090#1077#1085#1090#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T012_PARENT_ID'
          Title.Caption = #1050#1086#1076' '#1075#1083#1072#1074#1085#1086#1075#1086' '#1088#1077#1079#1080#1076#1077#1085#1090#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T013_PARENT_ID'
          Title.Caption = #1050#1086#1076' '#1075#1083#1072#1074#1085#1086#1075#1086' '#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_INV_TYPE_DESCR'
          Title.Caption = #1058#1080#1087' '#1080#1085#1074#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_INV_TYPE'
          Title.Caption = #1058#1080#1087' '#1080#1085#1074#1077#1089#1090#1080#1094#1080#1081'_1'
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
          FieldName = 'T006_ID'
          Title.Caption = #1050#1086#1076' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1087#1083#1072#1090#1077#1078#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_REPO_TYPE'
          Title.Caption = #1058#1080#1087' '#1056#1045#1055#1054
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DPB_COMMENT'
          Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1044#1055#1041
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_DIRECTION'
          Title.Caption = #1050#1086#1076' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_REMAINS_TYPE'
          Title.Caption = #1050#1086#1076' '#1090#1080#1087#1072' '#1086#1089#1090#1072#1090#1082#1086#1074
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T035_ID'
          Title.Caption = #1050#1086#1076' '#1092#1080#1082#1090#1080#1074#1085#1086#1089#1090#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T013_REAL_PARENT_ID'
          Title.Caption = #1050#1086#1076' '#1090#1086#1083#1100#1082#1086' '#1075#1083#1072#1074#1085#1086#1075#1086' '#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_TYPE'
          Title.Caption = #1050#1086#1076' '#1090#1080#1087#1072' '#1088#1077#1079#1080#1076#1077#1085#1090#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T012_REAL_PARENT_ID'
          Title.Caption = #1050#1086#1076' '#1090#1086#1083#1100#1082#1086' '#1075#1083#1072#1074#1085#1086#1075#1086' '#1088#1077#1079#1080#1076#1077#1085#1090#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IIP_SHS_FLAG'
          Title.Caption = #1042#1082#1083'. '#1074' '#1088#1072#1089#1095' IIP SHS3,SHS4'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REPO_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1056#1045#1055#1054
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_COMMENTS'
          Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1044#1057
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C22'
          Title.Caption = #1050#1086#1076
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C22_NAME'
          Title.Caption = #1042#1080#1076' '#1074#1072#1083#1102#1090#1085#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1080
          Width = 255
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_HEADER_ID'
          Title.Caption = #1050#1086#1076' '#1086#1090#1095#1077#1090#1085#1086#1075#1086' '#1087#1077#1088#1080#1086#1076#1072
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 46
      ExplicitTop = 46
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 67
      TabOrder = 4
      ExplicitTop = 67
    end
    object Panel2: TPanel
      Left = 0
      Top = 181
      Width = 677
      Height = 87
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object Label2: TLabel
        Left = 6
        Top = 24
        Width = 40
        Height = 13
        Caption = #1057#1090#1088#1086#1082':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 327
        Top = 23
        Width = 58
        Height = 13
        Caption = #1042' '#1056#1086#1089#1089#1080#1102
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 56
        Top = 24
        Width = 75
        Height = 17
        DataField = 'COUNT_STR'
        DataSource = dsCount
      end
      object Label3: TLabel
        Left = 327
        Top = 46
        Width = 64
        Height = 13
        Caption = #1048#1079' '#1056#1086#1089#1089#1080#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 327
        Top = 69
        Width = 44
        Height = 13
        Caption = #1057#1072#1083#1100#1076#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 394
        Top = 3
        Width = 55
        Height = 13
        Caption = #1042#1089#1077#1075#1086' ($)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 618
        Top = 3
        Width = 67
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1094'.'#1073'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 506
        Top = 3
        Width = 79
        Height = 13
        Caption = #1055#1088#1086#1094#1077#1085#1090#1099' ($)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTime: TLabel
        Left = 56
        Top = 44
        Width = 31
        Height = 13
        Caption = 'lbTime'
      end
      object Label9: TLabel
        Left = 6
        Top = 44
        Width = 43
        Height = 13
        Caption = #1042#1088#1077#1084#1103':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 730
        Top = 3
        Width = 50
        Height = 13
        Caption = #1062#1077#1085#1072' ($)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit3: TDBEdit
        Left = 394
        Top = 20
        Width = 110
        Height = 21
        Hint = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
        Color = clBtnFace
        DataField = 'SUM_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 506
        Top = 20
        Width = 110
        Height = 21
        Hint = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
        Color = clBtnFace
        DataField = 'PROC_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 394
        Top = 43
        Width = 110
        Height = 21
        Hint = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
        Color = clBtnFace
        DataField = 'SUM_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 506
        Top = 43
        Width = 110
        Height = 21
        Hint = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
        Color = clBtnFace
        DataField = 'PROC_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 394
        Top = 66
        Width = 110
        Height = 21
        Hint = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
        Color = clBtnFace
        DataField = 'SUM_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 506
        Top = 66
        Width = 110
        Height = 21
        Hint = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
        Color = clBtnFace
        DataField = 'PROC_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 618
        Top = 20
        Width = 110
        Height = 21
        Hint = #1050#1086#1083'-'#1074#1086' '#1094#1077#1085#1085#1099#1093' '#1073#1091#1084#1072#1075
        Color = clBtnFace
        DataField = 'COUNT_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 618
        Top = 43
        Width = 110
        Height = 21
        Hint = #1050#1086#1083'-'#1074#1086' '#1094#1077#1085#1085#1099#1093' '#1073#1091#1084#1072#1075
        Color = clBtnFace
        DataField = 'COUNT_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 618
        Top = 66
        Width = 110
        Height = 21
        Hint = #1050#1086#1083'-'#1074#1086' '#1094#1077#1085#1085#1099#1093' '#1073#1091#1084#1072#1075
        Color = clBtnFace
        DataField = 'COUNT_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 730
        Top = 20
        Width = 110
        Height = 21
        Hint = #1062#1077#1085#1072' '#1094#1077#1085#1085#1099#1093' '#1073#1091#1084#1072#1075
        Color = clBtnFace
        DataField = 'PRICE_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 730
        Top = 43
        Width = 110
        Height = 21
        Hint = #1062#1077#1085#1072' '#1094#1077#1085#1085#1099#1093' '#1073#1091#1084#1072#1075
        Color = clBtnFace
        DataField = 'PRICE_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 10
      end
      object DBEdit12: TDBEdit
        Left = 730
        Top = 66
        Width = 110
        Height = 21
        Hint = #1062#1077#1085#1072' '#1094#1077#1085#1085#1099#1093' '#1073#1091#1084#1072#1075
        Color = clBtnFace
        DataField = 'PRICE_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 11
      end
      object cbRes: TCheckBox
        Left = 6
        Top = 4
        Width = 107
        Height = 17
        Caption = #1057#1095#1080#1090#1072#1090#1100' '#1080#1090#1086#1075#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = cbResClick
      end
    end
    object ToolBar3: TToolBar
      Left = 0
      Top = 23
      Width = 677
      Height = 23
      ButtonWidth = 111
      Caption = 'ToolBar3'
      Enabled = False
      Images = dm02_Picters.ilCommonPictures
      List = True
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 5
      Visible = False
      Wrapable = False
      object ToolButton15: TToolButton
        Left = 0
        Top = 0
        Action = actCloneSumInfo
        AutoSize = True
      end
      object ToolButton16: TToolButton
        Left = 98
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 29
        Style = tbsSeparator
      end
      object ToolButton20: TToolButton
        Left = 106
        Top = 0
        Action = actMaturDate
        AutoSize = True
      end
      object ToolButton12: TToolButton
        Left = 221
        Top = 0
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 44
        Style = tbsSeparator
      end
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 0
    Width = 680
    Height = 123
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Label1: TLabel
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
        Left = 56
        Top = 65530
      end
    end
    inline Frame11: Tfm04_PrmKO
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
          'FROM     V_405_BANC_BY_NUMB'
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
      Caption = #1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076'  '#1089
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
    object chbOper: TCheckBox
      Left = 5
      Top = 54
      Width = 121
      Height = 17
      Caption = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
      TabOrder = 6
    end
    object chbType: TCheckBox
      Left = 5
      Top = 78
      Width = 121
      Height = 17
      Caption = #1058#1080#1087' '#1094'.'#1073'.'
      TabOrder = 8
    end
    object lcbType: TDBLookupComboBox
      Left = 131
      Top = 75
      Width = 390
      Height = 21
      DropDownRows = 10
      KeyField = 'T027_ID'
      ListField = 'DESC_FLD'
      ListSource = dsType
      TabOrder = 9
    end
    object chbPay: TCheckBox
      Left = 5
      Top = 102
      Width = 121
      Height = 17
      Caption = #1053#1072#1087#1088#1072#1074#1083'. '#1087#1083#1072#1090#1077#1078#1072
      TabOrder = 10
    end
    object lcbPay: TDBLookupComboBox
      Left = 131
      Top = 99
      Width = 390
      Height = 21
      DropDownRows = 10
      KeyField = 'T006_ID'
      ListField = 'DESC_FLD'
      ListSource = dsPay
      TabOrder = 11
    end
    object lcbOper: TxxxDBLookupCheckCombo
      Left = 131
      Top = 51
      Width = 390
      Height = 21
      Hint = #1053#1077' '#1074#1099#1073#1088#1072#1085#1086
      DropDownCount = 13
      DisplayEmpty = #1053#1077' '#1074#1099#1073#1088#1072#1085#1086
      DisplaySelectAll = #1042#1089#1077
      EmptyItemColor = clWindowText
      ListStyle = [lsChecked]
      LookupField = 'T011_ID'
      LookupDisplay = 'T011_TYPE_ID;T011_OPERATION_DESC'
      LookupSource = dsOper
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Advanced.ShowSelectionHint = True
      Advanced.Autorefresh = False
    end
  end
  inherited pnlButtons: TPanel
    inherited OKBtn: TButton
      Left = 815
      ExplicitLeft = 815
    end
    inherited CancelBtn: TButton
      Left = 895
      ExplicitLeft = 895
    end
  end
  inherited dsList: TDataSource
    Top = 304
  end
  inherited ActionList: TActionList
    Top = 304
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
    inherited actExcel: TAction
      Caption = ''
    end
    object actApplayFilter: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = actApplayFilterExecute
    end
    object actSetInvStraight: TAction
      Caption = #1055#1088#1103#1084#1099#1077
      Enabled = False
      ImageIndex = 1
      Visible = False
    end
    object actSetInvCase: TAction
      Caption = #1055#1086#1088#1090#1092#1077#1083#1100#1085#1099#1077
      Enabled = False
      ImageIndex = 1
      Visible = False
    end
    object actSetInvNoCount: TAction
      Caption = #1053#1077' '#1091#1095#1080#1090#1099#1074#1072#1090#1100
      Enabled = False
      ImageIndex = 2
      Visible = False
    end
    object actCloneSumInfo: TAction
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Enabled = False
      Hint = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 13
      Visible = False
    end
    object actMaturDate: TAction
      Caption = #1044#1072#1090#1072' '#1087#1086#1075#1072#1096#1077#1085#1080#1103
      Enabled = False
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1076#1072#1090#1091' '#1087#1086#1075#1072#1096#1077#1085#1080#1103' '#1101#1084#1080#1089#1089#1080#1080
      ImageIndex = 43
      Visible = False
    end
    object actInfo: TAction
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Hint = #1048#1089#1090#1086#1095#1085#1080#1082' '#1079#1072#1087#1080#1089#1080
      ImageIndex = 21
      OnExecute = actInfoExecute
      OnUpdate = actInfoUpdate
    end
    object actGoTo417: TAction
      Caption = #1055#1077#1088#1077#1093#1086#1076' '#1082' '#1092'417'
      ImageIndex = 13
      OnExecute = actGoTo417Execute
      OnUpdate = actGoTo417Update
    end
    object actSetFictive: TAction
      Caption = #1060#1080#1082#1090#1080#1074#1085#1072#1103
      OnExecute = actSetFictiveExecute
      OnUpdate = actSetFictiveUpdate
    end
    object actSetReal: TAction
      Caption = #1056#1077#1072#1083#1100#1085#1072#1103
      OnExecute = actSetRealExecute
      OnUpdate = actSetRealUpdate
    end
    object actSetNoRate: TAction
      Caption = #1053#1077' '#1086#1094#1077#1085#1080#1074#1072#1090#1100
      OnExecute = actSetNoRateExecute
      OnUpdate = actSetNoRateUpdate
    end
    object actSetNeedRate: TAction
      Caption = #1058#1088#1077#1073#1091#1077#1090#1089#1103' '#1086#1094#1077#1085#1082#1072
      OnExecute = actSetNeedRateExecute
      OnUpdate = actSetNeedRateUpdate
    end
    object actSetByCriteria: TAction
      Caption = 'actSetByCriteria'
      OnExecute = actSetByCriteriaExecute
      OnUpdate = actSetByCriteriaUpdate
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 336
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' T002_ID,'
      ' T001_PART_ID,'
      ' T005_DISPLAY_NAME,'
      ' T002_BANK_CODE,'
      ' T002_BANK_NAME,'
      ' T002_REPORT_DATE,'
      ' T002_NUMB_IN_YEA,'
      ' T002_NUMB_IN_YEA_DESC,'
      ' T002_KP_ID,'
      ' T001_ID,'
      ' T001_ROW_PREFIX,'
      ' T001_ROW_PRFX,'
      ' T001_ROW_NUM,'
      ' T001_DATE_OP,'
      ' T001_TYPE_ID,'
      ' T016_BOND_ID,'
      ' T001_OP_ID,'
      ' T011_TYPE_ID,'
      ' T001_OP_PAY_ID,'
      ' T006_ID,'
      ' T006_NAME,'
      ' T001_OP_COUNT,'
      ' T001_OP_CR_ID,'
      ' T001_OP_CR_DESC,'
      ' T001_OP_SUM,'
      ' T001_OP_PROC,'
      ' T001_OP_SUM_CROSS,'
      ' T001_OP_PROC_CROSS,'
      ' T012_ID,'
      ' T012_PARENT_ID,'
      ' T012_REAL_PARENT_ID,'
      ' T001_REZID_NAME,'
      ' T001_REZID_CO_ID,'
      ' T001_REZID_TYPE,'
      '  T012_FI_SNS,'
      '  T012_FI_SNS_DESC,'
      '  T012_FI_PB,'
      '  T012_FI_PB_DESC,'
      '  T012_REGION_CODE,'
      '  T012_REGION_NAME,'
      '  T012_INDUSTRY_CODE,'
      '  T012_INDUSTRY_NAME,'
      ' T033_NAME,'
      ' T013_ID,'
      ' T013_PARENT_ID,'
      ' T013_REAL_PARENT_ID,'
      ' T001_NREZID_NAME,'
      ' T001_NREZID_CO_ID,'
      ' T001_NREZID_COUNTRY,'
      ' T001_NREZID_TYPE,'
      ' T034_NAME,'
      ' T028_ID,'
      ' T028_PARENT_ID,'
      ' T028_SHOT_NAME,'
      ' T028_CODE,'
      ' T028_INN,'
      ' T025_CODE,'
      ' T025_SHOT_NAME,'
      '  T028_FI_SNS,'
      '  T028_FI_SNS_DESC,'
      '  T028_FI_PB,'
      '  T028_FI_PB_DESC,'
      '  T028_REGION_CODE,'
      '  T028_REGION_NAME,'
      '  T028_INDUSTRY_CODE,'
      '  T028_INDUSTRY_NAME,'
      '  T028_ICODE,'
      '  T028_INAME,'
      ' T001_REG_NUM,'
      ' T001_DATE_ON,'
      ' T001_DATE_OFF,'
      ' T001_SEC_DESC,'
      ' T001_CR_ID,'
      ' T001_CR_DESC,'
      ' T001_PARENT_ID,'
      ' T001_ROWID,'
      ' T001_IS_RANSOM,'
      ' T030_ID,'
      ' T030_PARENT_ID,'
      ' T001_N8,'
      ' T001_N9,'
      ' T001_10,'
      ' T001_11,'
      ' T001_N99,'
      ' T001_COMMENT,'
      ' T055_ID,'
      ' T055_HEADER_ID,'
      ' T035_ID,'
      ' T035_NAME,'
      ' T006_DIRECTION,'
      ' T006_DIRECTION_DESC,'
      ' T001_OP_MODIF,'
      ' T001_YEAR_OP,'
      ' OP_MONTH,'
      ' T001_MOD_OP_SUM_CROSS,'
      ' T001_C11,'
      ' T001_C12,'
      ' T001_C16,'
      ' T001_C17,'
      ' T001_C18,'
      ' T001_C19,'
      ' T001_C20,'
      ' T027_ID,'
      ' T012_FICT_STATE,'
      ' T012_FICT_STATE_DESC,'
      ' T013_FICT_STATE,'
      ' T013_FICT_STATE_DESC,'
      ' T001_OP_SUM_RUB,'
      ' T027_ID_1,'
      ' T001_INV_TYPE,'
      ' T001_INV_TYPE_DESCR,'
      ' T001_PROCESSED,'
      ' T001_PROCESSED_DESC,'
      ' T001_REPO_TYPE,'
      ' T001_DPB_COMMENT,'
      ' T001_REMAINS_TYPE,'
      ' T001_DATA_SOURCE,'
      '  IS_FIRST,'
      '  IIP_SHS_FLAG,'
      ' T036_COMMENTS,'
      ' T001_RATE,'
      ' T001_RATE_DELTA,'
      ' T001_REPO_DATE,'
      ' --T001_C22 ,   '
      ' C22 ,         '
      ' c22_name,'
      ' T001_PERCENT,'
      ' OWN_EMISSION'
      'FROM V_T001_SUM_LINK'
      'where T001_PART_ID < 6 -- '#1085#1077' '#1073#1088#1072#1090#1100' 2'#1081' '#1088#1072#1079#1076#1077#1083)
    QBEDefinition.QBEFieldDefs = {
      050000007E0000001800000054003000300031005F0050004100520054005F00
      490044000100000000000E00000054003000300031005F004900440001000000
      00000E00000054003000300032005F0049004400010000000000180000005400
      3000300031005F0052004F0057005F004E0055004D0001000000000018000000
      54003000300031005F0044004100540045005F004F0050000100000000001800
      000054003000300031005F0054005900500045005F0049004400010000000000
      1400000054003000300031005F004F0050005F00490044000100000000001C00
      000054003000300031005F004F0050005F005000410059005F00490044000100
      000000001A00000054003000300031005F004F0050005F0043004F0055004E00
      54000100000000001A00000054003000300031005F004F0050005F0043005200
      5F00490044000100000000001600000054003000300031005F004F0050005F00
      530055004D000100000000001800000054003000300031005F004F0050005F00
      500052004F0043000100000000001E00000054003000300031005F0052004500
      5A00490044005F004E0041004D00450001000000000020000000540030003000
      31005F00520045005A00490044005F0043004F005F0049004400010000000000
      2000000054003000300031005F004E00520045005A00490044005F004E004100
      4D0045000100000000002200000054003000300031005F004E00520045005A00
      490044005F0043004F005F004900440001000000000018000000540030003000
      31005F005200450047005F004E0055004D000100000000001800000054003000
      300031005F0044004100540045005F004F004E000100000000001A0000005400
      3000300031005F0044004100540045005F004F00460046000100000000001400
      000054003000300031005F00430052005F00490044000100000000001E000000
      54003000300031005F0052004F0057005F005000520045004600490058000100
      000000002200000054003000300035005F0044004900530050004C0041005900
      5F004E0041004D0045000100000000001800000054003000310036005F004200
      4F004E0044005F00490044000100000000001800000054003000310031005F00
      54005900500045005F0049004400010000000000120000005400300030003600
      5F004E0041004D0045000100000000001C00000054003000300032005F004200
      41004E004B005F0043004F004400450001000000000020000000540030003000
      32005F005200450050004F00520054005F004400410054004500010000000000
      1400000054003000300032005F004B0050005F00490044000100000000001E00
      000054003000300031005F00520045005A00490044005F005400590050004500
      0100000000002000000054003000300031005F004E00520045005A0049004400
      5F0054005900500045000100000000001C00000054003000300031005F005000
      4100520045004E0054005F004900440001000000000020000000540030003000
      32005F004E0055004D0042005F0049004E005F00590045004100010000000000
      2A00000054003000300032005F004E0055004D0042005F0049004E005F005900
      450041005F0044004500530043000100000000001E0000005400300030003100
      5F004F0050005F00430052005F0044004500530043000100000000000E000000
      54003000310032005F00490044000100000000000E0000005400300031003300
      5F00490044000100000000002600000054003000300031005F004E0052004500
      5A00490044005F0043004F0055004E0054005200590001000000000018000000
      54003000300031005F00430052005F0044004500530043000100000000001C00
      000054003000320038005F00530048004F0054005F004E0041004D0045000100
      000000001200000054003000320038005F0043004F0044004500010000000000
      1200000054003000320035005F0043004F00440045000100000000001C000000
      54003000320035005F00530048004F0054005F004E0041004D00450001000000
      00001C00000054003000300031005F00490053005F00520041004E0053004F00
      4D000100000000000E00000054003000330030005F0049004400010000000000
      2200000054003000300031005F004F0050005F00530055004D005F0043005200
      4F00530053000100000000002400000054003000300031005F004F0050005F00
      500052004F0043005F00430052004F0053005300010000000000120000005400
      3000330033005F004E0041004D00450001000000000012000000540030003300
      34005F004E0041004D0045000100000000000E00000054003000320038005F00
      490044000100000000000E00000054003000300031005F004E00380001000000
      00000E00000054003000300031005F004E0039000100000000000E0000005400
      3000300031005F00310030000100000000000E00000054003000300031005F00
      310031000100000000001000000054003000300031005F004E00390039000100
      000000001800000054003000300031005F0043004F004D004D0045004E005400
      0100000000000E00000054003000350035005F00490044000100000000001C00
      000054003000300032005F00420041004E004B005F004E0041004D0045000100
      000000001200000054003000330035005F004E0041004D004500010000000000
      1C00000054003000300036005F0044004900520045004300540049004F004E00
      0100000000001A00000054003000300031005F004F0050005F004D004F004400
      490046000100000000001800000054003000300031005F005900450041005200
      5F004F0050000100000000002A00000054003000300031005F004D004F004400
      5F004F0050005F00530055004D005F00430052004F0053005300010000000000
      2600000054003000300036005F0044004900520045004300540049004F004E00
      5F0044004500530043000100000000001000000054003000300031005F004300
      310036000100000000001000000054003000300031005F004300310037000100
      000000001000000054003000300031005F004300310038000100000000001000
      000054003000300031005F004300310039000100000000001000000054003000
      300031005F004300320030000100000000001000000054003000300031005F00
      4300310031000100000000001000000054003000300031005F00430031003200
      0100000000000E00000054003000320037005F00490044000100000000001E00
      000054003000300031005F004F0050005F00530055004D005F00520055004200
      0100000000000E00000054003000330035005F00490044000100000000001C00
      000054003000330030005F0050004100520045004E0054005F00490044000100
      000000001C00000054003000320038005F0050004100520045004E0054005F00
      490044000100000000001200000054003000320037005F00490044005F003100
      0100000000001C00000054003000310032005F0050004100520045004E005400
      5F00490044000100000000001C00000054003000310033005F00500041005200
      45004E0054005F00490044000100000000001000000054003000320038005F00
      49004E004E000100000000002600000054003000300031005F0049004E005600
      5F0054005900500045005F00440045005300430052000100000000001A000000
      54003000300031005F0049004E0056005F005400590050004500010000000000
      0E00000054003000300036005F00490044000100000000001C00000054003000
      300031005F005200450050004F005F0054005900500045000100000000002000
      000054003000300031005F004400500042005F0043004F004D004D0045004E00
      54000100000000002200000054003000300031005F00520045004D0041004900
      4E0053005F0054005900500045000100000000001C0000005400300030003100
      5F00500052004F00430045005300530045004400010000000000260000005400
      3000300031005F00500052004F004300450053005300450044005F0044004500
      530043000100000000002000000054003000300031005F004400410054004100
      5F0053004F005500520043004500010000000000260000005400300031003300
      5F005200450041004C005F0050004100520045004E0054005F00490044000100
      000000002600000054003000310032005F005200450041004C005F0050004100
      520045004E0054005F00490044000100000000001E0000005400300031003200
      5F0046004900430054005F005300540041005400450001000000000028000000
      54003000310032005F0046004900430054005F00530054004100540045005F00
      44004500530043000100000000001E00000054003000310033005F0046004900
      430054005F005300540041005400450001000000000028000000540030003100
      33005F0046004900430054005F00530054004100540045005F00440045005300
      4300010000000000100000004F0050005F004D004F004E005400480001000000
      000010000000490053005F004600490052005300540001000000000016000000
      54003000310032005F00460049005F0053004E00530001000000000020000000
      54003000310032005F00460049005F0053004E0053005F004400450053004300
      0100000000001400000054003000310032005F00460049005F00500042000100
      000000001E00000054003000310032005F00460049005F00500042005F004400
      4500530043000100000000002000000054003000310032005F00520045004700
      49004F004E005F0043004F004400450001000000000020000000540030003100
      32005F0052004500470049004F004E005F004E0041004D004500010000000000
      2400000054003000310032005F0049004E004400550053005400520059005F00
      43004F00440045000100000000002400000054003000310032005F0049004E00
      4400550053005400520059005F004E0041004D00450001000000000016000000
      54003000320038005F00460049005F0053004E00530001000000000020000000
      54003000320038005F00460049005F0053004E0053005F004400450053004300
      0100000000001400000054003000320038005F00460049005F00500042000100
      000000001E00000054003000320038005F00460049005F00500042005F004400
      4500530043000100000000002000000054003000320038005F00520045004700
      49004F004E005F0043004F004400450001000000000020000000540030003200
      38005F0052004500470049004F004E005F004E0041004D004500010000000000
      2400000054003000320038005F0049004E004400550053005400520059005F00
      43004F00440045000100000000002400000054003000320038005F0049004E00
      4400550053005400520059005F004E0041004D00450001000000000018000000
      4900490050005F005300480053005F0046004C00410047000100000000001A00
      000054003000300031005F005300450043005F00440045005300430001000000
      00001A00000054003000330036005F0043004F004D004D0045004E0054005300
      0100000000001200000054003000300031005F00520041005400450001000000
      00001E00000054003000300031005F0052004100540045005F00440045004C00
      540041000100000000001C00000054003000300031005F005200450050004F00
      5F0044004100540045000100000000001400000054003000320038005F004900
      43004F00440045000100000000001400000054003000320038005F0049004E00
      41004D004500010000000000100000004300320032005F004E0041004D004500
      0100000000000600000043003200320001000000000018000000540030003000
      31005F00500045005200430045004E0054000100000000001C00000054003000
      350035005F004800450041004400450052005F00490044000100000000001A00
      000054003000300031005F0052004F0057005F00500052004600580001000000
      0000180000004F0057004E005F0045004D0049005300530049004F004E000100
      00000000}
    AfterOpen = odsListAfterOpen
    Top = 304
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsListT001_PART_ID: TFloatField
      FieldName = 'T001_PART_ID'
      Required = True
    end
    object odsListT005_DISPLAY_NAME: TStringField
      FieldName = 'T005_DISPLAY_NAME'
      Required = True
      Size = 255
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsListT002_REPORT_DATE: TDateTimeField
      FieldName = 'T002_REPORT_DATE'
      Required = True
    end
    object odsListT002_NUMB_IN_YEA: TStringField
      FieldName = 'T002_NUMB_IN_YEA'
      Required = True
      Size = 5
    end
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT002_KP_ID: TIntegerField
      FieldName = 'T002_KP_ID'
      Required = True
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
      Required = True
    end
    object odsListT001_ROW_PREFIX: TIntegerField
      FieldName = 'T001_ROW_PREFIX'
      Required = True
    end
    object odsListT001_ROW_NUM: TIntegerField
      FieldName = 'T001_ROW_NUM'
      Required = True
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
      Required = True
    end
    object odsListT001_TYPE_ID: TStringField
      FieldName = 'T001_TYPE_ID'
      Required = True
      Size = 255
    end
    object odsListT016_BOND_ID: TFloatField
      FieldName = 'T016_BOND_ID'
      Required = True
    end
    object odsListT001_OP_ID: TFloatField
      FieldName = 'T001_OP_ID'
      Required = True
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object odsListT001_OP_PAY_ID: TFloatField
      FieldName = 'T001_OP_PAY_ID'
      Required = True
    end
    object odsListT006_NAME: TStringField
      FieldName = 'T006_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0.0000'
      EditFormat = '0'
    end
    object odsListT001_OP_CR_ID: TStringField
      FieldName = 'T001_OP_CR_ID'
      Size = 3
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
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
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
    object odsListT001_REZID_TYPE: TFloatField
      FieldName = 'T001_REZID_TYPE'
      Required = True
    end
    object odsListT033_NAME: TStringField
      FieldName = 'T033_NAME'
      Required = True
      Size = 50
    end
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
      Required = True
    end
    object odsListT001_NREZID_NAME: TStringField
      FieldName = 'T001_NREZID_NAME'
      Size = 255
    end
    object odsListT001_NREZID_CO_ID: TFloatField
      FieldName = 'T001_NREZID_CO_ID'
      Required = True
    end
    object odsListT001_NREZID_COUNTRY: TStringField
      FieldName = 'T001_NREZID_COUNTRY'
      Size = 250
    end
    object odsListT001_NREZID_TYPE: TFloatField
      FieldName = 'T001_NREZID_TYPE'
      Required = True
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
    object odsListT025_CODE: TFloatField
      FieldName = 'T025_CODE'
      Required = True
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
    object odsListT001_CR_ID: TStringField
      FieldName = 'T001_CR_ID'
      Size = 3
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
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
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
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT002_BANK_NAME: TStringField
      FieldName = 'T002_BANK_NAME'
      Size = 250
    end
    object odsListT035_NAME: TStringField
      FieldName = 'T035_NAME'
      Required = True
      Size = 50
    end
    object odsListT001_OP_MODIF: TFloatField
      FieldName = 'T001_OP_MODIF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_YEAR_OP: TStringField
      FieldName = 'T001_YEAR_OP'
      Size = 4
    end
    object odsListT001_MOD_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_MOD_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT006_DIRECTION: TIntegerField
      FieldName = 'T006_DIRECTION'
      Required = True
    end
    object odsListT006_DIRECTION_DESC: TStringField
      FieldName = 'T006_DIRECTION_DESC'
      Size = 9
    end
    object odsListT001_PARENT_ID: TFloatField
      FieldName = 'T001_PARENT_ID'
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
    object odsListT001_C11: TStringField
      FieldName = 'T001_C11'
      Size = 255
    end
    object odsListT001_C12: TStringField
      FieldName = 'T001_C12'
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT001_DATE_ON: TDateTimeField
      FieldName = 'T001_DATE_ON'
    end
    object odsListT001_DATE_OFF: TDateTimeField
      FieldName = 'T001_DATE_OFF'
    end
    object odsListT001_SEC_DESC: TStringField
      FieldName = 'T001_SEC_DESC'
      Size = 13
    end
    object odsListT001_OP_SUM_RUB: TFloatField
      FieldName = 'T001_OP_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT035_ID: TFloatField
      FieldName = 'T035_ID'
      Required = True
    end
    object odsListT030_PARENT_ID: TFloatField
      FieldName = 'T030_PARENT_ID'
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsListT027_ID_1: TFloatField
      FieldName = 'T027_ID_1'
      Required = True
    end
    object odsListT012_PARENT_ID: TFloatField
      FieldName = 'T012_PARENT_ID'
    end
    object odsListT013_PARENT_ID: TFloatField
      FieldName = 'T013_PARENT_ID'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
    end
    object odsListT001_INV_TYPE_DESCR: TStringField
      DisplayWidth = 15
      FieldName = 'T001_INV_TYPE_DESCR'
      Size = 15
    end
    object odsListT001_INV_TYPE: TIntegerField
      FieldName = 'T001_INV_TYPE'
      Required = True
    end
    object odsListT006_ID: TFloatField
      FieldName = 'T006_ID'
      Required = True
    end
    object odsListT001_REPO_TYPE: TStringField
      FieldName = 'T001_REPO_TYPE'
      Required = True
      Size = 1
    end
    object odsListT001_DPB_COMMENT: TStringField
      FieldName = 'T001_DPB_COMMENT'
      Size = 255
    end
    object odsListT001_REMAINS_TYPE: TIntegerField
      FieldName = 'T001_REMAINS_TYPE'
      Required = True
    end
    object odsListT001_PROCESSED: TIntegerField
      FieldName = 'T001_PROCESSED'
      Required = True
    end
    object odsListT001_PROCESSED_DESC: TStringField
      FieldName = 'T001_PROCESSED_DESC'
      Size = 3
    end
    object odsListT001_DATA_SOURCE: TIntegerField
      FieldName = 'T001_DATA_SOURCE'
      Required = True
    end
    object odsListT013_REAL_PARENT_ID: TFloatField
      FieldName = 'T013_REAL_PARENT_ID'
    end
    object odsListT012_REAL_PARENT_ID: TFloatField
      FieldName = 'T012_REAL_PARENT_ID'
    end
    object odsListT012_FICT_STATE: TStringField
      FieldName = 'T012_FICT_STATE'
      Required = True
      Size = 1
    end
    object odsListT012_FICT_STATE_DESC: TStringField
      FieldName = 'T012_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT013_FICT_STATE: TStringField
      FieldName = 'T013_FICT_STATE'
      Required = True
      Size = 1
    end
    object odsListT013_FICT_STATE_DESC: TStringField
      FieldName = 'T013_FICT_STATE_DESC'
      Size = 3
    end
    object odsListOP_MONTH: TStringField
      FieldName = 'OP_MONTH'
      Required = True
      Size = 255
    end
    object odsListIS_FIRST: TStringField
      FieldName = 'IS_FIRST'
      Required = True
      Size = 1
    end
    object odsListT012_FI_SNS: TStringField
      FieldName = 'T012_FI_SNS'
      Required = True
      Size = 1
    end
    object odsListT012_FI_SNS_DESC: TStringField
      FieldName = 'T012_FI_SNS_DESC'
      Size = 5
    end
    object odsListT012_FI_PB: TStringField
      FieldName = 'T012_FI_PB'
      Required = True
      Size = 1
    end
    object odsListT012_FI_PB_DESC: TStringField
      FieldName = 'T012_FI_PB_DESC'
      Size = 5
    end
    object odsListT012_REGION_CODE: TFloatField
      FieldName = 'T012_REGION_CODE'
      Required = True
    end
    object odsListT012_REGION_NAME: TStringField
      FieldName = 'T012_REGION_NAME'
      Size = 250
    end
    object odsListT012_INDUSTRY_CODE: TStringField
      FieldName = 'T012_INDUSTRY_CODE'
      Required = True
      Size = 255
    end
    object odsListT012_INDUSTRY_NAME: TStringField
      FieldName = 'T012_INDUSTRY_NAME'
      Size = 255
    end
    object odsListT028_FI_SNS: TStringField
      FieldName = 'T028_FI_SNS'
      Required = True
      Size = 1
    end
    object odsListT028_FI_SNS_DESC: TStringField
      FieldName = 'T028_FI_SNS_DESC'
      Size = 5
    end
    object odsListT028_FI_PB: TStringField
      FieldName = 'T028_FI_PB'
      Required = True
      Size = 1
    end
    object odsListT028_FI_PB_DESC: TStringField
      FieldName = 'T028_FI_PB_DESC'
      Size = 5
    end
    object odsListT028_REGION_CODE: TFloatField
      FieldName = 'T028_REGION_CODE'
      Required = True
    end
    object odsListT028_REGION_NAME: TStringField
      FieldName = 'T028_REGION_NAME'
      Size = 250
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Required = True
      Size = 255
    end
    object odsListT028_INDUSTRY_NAME: TStringField
      FieldName = 'T028_INDUSTRY_NAME'
      Size = 255
    end
    object odsListIIP_SHS_FLAG: TStringField
      FieldName = 'IIP_SHS_FLAG'
      Size = 1
    end
    object odsListT036_COMMENTS: TStringField
      FieldName = 'T036_COMMENTS'
      Size = 255
    end
    object odsListT001_RATE: TFloatField
      FieldName = 'T001_RATE'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_RATE_DELTA: TFloatField
      FieldName = 'T001_RATE_DELTA'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_REPO_DATE: TDateTimeField
      FieldName = 'T001_REPO_DATE'
    end
    object odsListT028_ICODE: TStringField
      FieldName = 'T028_ICODE'
      Required = True
      Size = 255
    end
    object odsListT028_INAME: TStringField
      FieldName = 'T028_INAME'
      Size = 255
    end
    object odsListC22: TStringField
      FieldName = 'C22'
      Size = 43
    end
    object odsListC22_NAME: TStringField
      FieldName = 'C22_NAME'
      Size = 1000
    end
    object odsListT001_PERCENT: TFloatField
      FieldName = 'T001_PERCENT'
      DisplayFormat = '##0.000000'
    end
    object odsListT055_HEADER_ID: TFloatField
      FieldName = 'T055_HEADER_ID'
      Required = True
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 3
    end
    object odsListOWN_EMISSION: TFloatField
      FieldName = 'OWN_EMISSION'
    end
  end
  inherited pkList: TOraclePackage
    PackageName = 'PK_HAND_CORRECT_405'
    ParameterMode = pmNamed
    Left = 104
    Top = 259
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec T001_SUM%ROWTYPE;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T001_INV_TYPE := :T001_INV_TYPE; '
      '  v_rec.T001_PROCESSED := :T001_PROCESSED; '
      '  v_rec.T001_DPB_COMMENT := :T001_DPB_COMMENT;  '
      ''
      '  Pk_Hand_Correct_405.P_T001_Sum_Add(v_rec);'
      ''
      '  :T001_ID := v_rec.T001_ID;'
      '  :T002_ID := v_rec.T002_ID;'
      '  :T001_PART_ID := v_rec.T001_PART_ID;'
      '  :T001_DATE_OP := v_rec.T001_DATE_OP;'
      '  :T001_OP_ID := v_rec.T001_OP_ID;'
      '  :T001_OP_PAY_ID := v_rec.T001_OP_PAY_ID;'
      '  :T001_OP_COUNT := v_rec.T001_OP_COUNT;'
      '  :T001_OP_CR_ID := v_rec.T001_OP_CR_ID;'
      '  :T001_OP_SUM := v_rec.T001_OP_SUM;'
      '  :T001_OP_PROC := v_rec.T001_OP_PROC;'
      '  :T001_DATE_ON := v_rec.T001_DATE_ON;'
      '  :T001_DATE_OFF := v_rec.T001_DATE_OFF;'
      '  :T001_CR_ID := v_rec.T001_CR_ID;'
      '  :T001_ROW_PREFIX := v_rec.T001_ROW_PREFIX;'
      '  :T001_ROW_NUM := v_rec.T001_ROW_NUM;'
      '  :T001_IS_RANSOM := v_rec.T001_IS_RANSOM;'
      '  :T012_ID := v_rec.T012_ID;'
      '  :T013_ID := v_rec.T013_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T001_INV_TYPE := v_rec.T001_INV_TYPE;'
      '  :T001_DPB_COMMENT :=  v_rec.T001_DPB_COMMENT;'
      ''
      'END;')
    Variables.Data = {
      0400000016000000100000003A0054003000300032005F004900440004000000
      00000000000000001A0000003A0054003000300031005F005000410052005400
      5F00490044000400000000000000000000001A0000003A005400300030003100
      5F0044004100540045005F004F0050000C000000000000000000000016000000
      3A0054003000300031005F004F0050005F004900440004000000000000000000
      00001E0000003A0054003000300031005F004F0050005F005000410059005F00
      490044000400000000000000000000001C0000003A0054003000300031005F00
      4F0050005F0043004F0055004E0054000400000000000000000000001C000000
      3A0054003000300031005F004F0050005F00430052005F004900440005000000
      0000000000000000180000003A0054003000300031005F004F0050005F005300
      55004D000400000000000000000000001A0000003A0054003000300031005F00
      4F0050005F00500052004F0043000400000000000000000000001A0000003A00
      54003000300031005F0044004100540045005F004F004E000C00000000000000
      000000001C0000003A0054003000300031005F0044004100540045005F004F00
      460046000C0000000000000000000000160000003A0054003000300031005F00
      430052005F0049004400050000000000000000000000200000003A0054003000
      300031005F0052004F0057005F00500052004500460049005800040000000000
      0000000000001A0000003A0054003000300031005F0052004F0057005F004E00
      55004D00040000000000000000000000100000003A0054003000300031005F00
      490044000400000000000000000000001E0000003A0054003000300031005F00
      490053005F00520041004E0053004F004D000500000000000000000000001000
      00003A0054003000310032005F00490044000400000000000000000000001000
      00003A0054003000310033005F00490044000400000000000000000000001000
      00003A0054003000330030005F00490044000400000000000000000000001C00
      00003A0054003000300031005F0049004E0056005F0054005900500045000300
      00000000000000000000220000003A0054003000300031005F00440050004200
      5F0043004F004D004D0045004E0054000500000000000000000000001E000000
      3A0054003000300031005F00500052004F004300450053005300450044000400
      00000000000000000000}
    Top = 373
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec T001_SUM%ROWTYPE;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T001_ID := :T001_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T035_ID := :T035_ID;'
      '  v_rec.T001_N8 := :T001_N8;'
      '  v_rec.T001_N9 := :T001_N9;'
      '  v_rec.T001_10 := :T001_10;'
      '  v_rec.T001_11 := :T001_11;'
      '  v_rec.T001_N99 := :T001_N99;'
      '  v_rec.T001_COMMENT := :T001_COMMENT;'
      '  v_rec.T001_C11 := :T001_C11;'
      '  v_rec.T001_C12 := :T001_C12;'
      '  v_rec.T001_C16 := :T001_C16;'
      '  v_rec.T001_C17 := :T001_C17;'
      '  v_rec.T001_C18 := :T001_C18;'
      '  v_rec.T001_C19 := :T001_C19;'
      '  v_rec.T001_C20 := :T001_C20;'
      '  v_rec.T001_INV_TYPE := :T001_INV_TYPE;'
      '  v_rec.T001_PROCESSED := :T001_PROCESSED;'
      '  v_rec.T001_DPB_COMMENT := :T001_DPB_COMMENT;'
      '  v_rec.T001_DATA_SOURCE := :T001_DATA_SOURCE;'
      '  v_rec.IS_FIRST := :IS_FIRST;'
      ''
      '  Pk_Hand_Correct_405.P_T001_Sum_Update(v_rec);'
      ''
      '  :T001_ID := v_rec.T001_ID;'
      '  :T002_ID := v_rec.T002_ID;'
      '  :T001_PART_ID := v_rec.T001_PART_ID;'
      '  :T001_DATE_OP := v_rec.T001_DATE_OP;'
      '  :T001_OP_ID := v_rec.T001_OP_ID;'
      '  :T001_OP_PAY_ID := v_rec.T001_OP_PAY_ID;'
      '  :T001_OP_COUNT := v_rec.T001_OP_COUNT;'
      '  :T001_OP_CR_ID := v_rec.T001_OP_CR_ID;'
      '  :T001_OP_SUM := v_rec.T001_OP_SUM;'
      '  :T001_OP_PROC := v_rec.T001_OP_PROC;'
      '  :T001_DATE_ON := v_rec.T001_DATE_ON;'
      '  :T001_DATE_OFF := v_rec.T001_DATE_OFF;'
      '  :T001_CR_ID := v_rec.T001_CR_ID;'
      '  :T001_IS_RANSOM := v_rec.T001_IS_RANSOM;'
      '  :T012_ID := v_rec.T012_ID;'
      '  :T013_ID := v_rec.T013_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T001_ROW_PREFIX := v_rec.T001_ROW_PREFIX;'
      '  :T001_ROW_NUM := v_rec.T001_ROW_NUM;'
      '  :T035_ID := v_rec.T035_ID;'
      '  :T001_N8 := v_rec.T001_N8;'
      '  :T001_N9 := v_rec.T001_N9;'
      '  :T001_10 := v_rec.T001_10;'
      '  :T001_11 := v_rec.T001_11;'
      '  :T001_N99 := v_rec.T001_N99;'
      '  :T001_COMMENT := v_rec.T001_COMMENT;'
      '  :T001_C11 := v_rec.T001_C11;'
      '  :T001_C12 := v_rec.T001_C12;'
      '  :T001_C16 := v_rec.T001_C16;'
      '  :T001_C17 := v_rec.T001_C17;'
      '  :T001_C18 := v_rec.T001_C18;'
      '  :T001_C19 := v_rec.T001_C19;'
      '  :T001_C20 := v_rec.T001_C20;'
      '  :T001_INV_TYPE := v_rec.T001_INV_TYPE;'
      '  :T001_DPB_COMMENT := v_rec.T001_DPB_COMMENT;'
      ''
      'END;'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0400000026000000100000003A0054003000300031005F004900440004000000
      00000000000000001A0000003A0054003000300031005F004400410054004500
      5F004F0050000C0000000000000000000000160000003A005400300030003100
      5F004F0050005F00490044000400000000000000000000001E0000003A005400
      3000300031005F004F0050005F005000410059005F0049004400040000000000
      0000000000001C0000003A0054003000300031005F004F0050005F0043004F00
      55004E0054000400000000000000000000001C0000003A005400300030003100
      5F004F0050005F00430052005F00490044000500000000000000000000001800
      00003A0054003000300031005F004F0050005F00530055004D00040000000000
      0000000000001A0000003A0054003000300031005F004F0050005F0050005200
      4F0043000400000000000000000000001A0000003A0054003000300031005F00
      44004100540045005F004F004E000C00000000000000000000001C0000003A00
      54003000300031005F0044004100540045005F004F00460046000C0000000000
      000000000000160000003A0054003000300031005F00430052005F0049004400
      050000000000000000000000100000003A0054003000300032005F0049004400
      0400000000000000000000001A0000003A0054003000300031005F0050004100
      520054005F0049004400040000000000000000000000200000003A0054003000
      300031005F0052004F0057005F00500052004500460049005800040000000000
      0000000000001A0000003A0054003000300031005F0052004F0057005F004E00
      55004D00040000000000000000000000100000003A0054003000310032005F00
      49004400040000000000000000000000100000003A0054003000310033005F00
      490044000400000000000000000000001E0000003A0054003000300031005F00
      490053005F00520041004E0053004F004D000500000000000000000000001000
      00003A0054003000330030005F00490044000400000000000000000000001000
      00003A0054003000330035005F00490044000400000000000000000000001000
      00003A0054003000300031005F004E0038000400000000000000000000001000
      00003A0054003000300031005F004E0039000400000000000000000000001000
      00003A0054003000300031005F00310030000400000000000000000000001000
      00003A0054003000300031005F00310031000400000000000000000000001200
      00003A0054003000300031005F004E0039003900040000000000000000000000
      1A0000003A0054003000300031005F0043004F004D004D0045004E0054000500
      00000000000000000000120000003A0054003000300031005F00430031003100
      050000000000000000000000120000003A0054003000300031005F0043003100
      3200050000000000000000000000120000003A0054003000300031005F004300
      31003600050000000000000000000000120000003A0054003000300031005F00
      430031003700050000000000000000000000120000003A005400300030003100
      5F00430031003800050000000000000000000000120000003A00540030003000
      31005F00430031003900050000000000000000000000120000003A0054003000
      300031005F004300320030000500000000000000000000001C0000003A005400
      3000300031005F0049004E0056005F0054005900500045000300000000000000
      00000000220000003A0054003000300031005F004400500042005F0043004F00
      4D004D0045004E0054000500000000000000000000001E0000003A0054003000
      300031005F00500052004F004300450053005300450044000400000000000000
      00000000220000003A0054003000300031005F0044004100540041005F005300
      4F005500520043004500040000000000000000000000120000003A0049005300
      5F0046004900520053005400050000000000000000000000}
    Top = 373
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_id T001_SUM.T001_ID%TYPE;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_id := :T001_ID;'
      '  Pk_Hand_Correct_405.p_t001_sum_delete(v_id);'
      'END;'
      ' '
      '')
    Variables.Data = {
      0400000001000000100000003A0054003000300031005F004900440004000000
      0000000000000000}
    Top = 373
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec T001_SUM%ROWTYPE;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      ''
      '  :o_result := Pk_Hand_Correct_405.F_T001_Sum_Check(v_rec);'
      'END;'
      ''
      ''
      ' ')
    Variables.Data = {
      0400000012000000100000003A0054003000300032005F004900440004000000
      00000000000000001A0000003A0054003000300031005F005000410052005400
      5F00490044000400000000000000000000001A0000003A005400300030003100
      5F0044004100540045005F004F0050000C000000000000000000000016000000
      3A0054003000300031005F004F0050005F004900440004000000000000000000
      00001E0000003A0054003000300031005F004F0050005F005000410059005F00
      490044000400000000000000000000001C0000003A0054003000300031005F00
      4F0050005F0043004F0055004E0054000400000000000000000000001C000000
      3A0054003000300031005F004F0050005F00430052005F004900440005000000
      0000000000000000180000003A0054003000300031005F004F0050005F005300
      55004D000400000000000000000000001A0000003A0054003000300031005F00
      4F0050005F00500052004F0043000400000000000000000000001A0000003A00
      54003000300031005F0044004100540045005F004F004E000C00000000000000
      000000001C0000003A0054003000300031005F0044004100540045005F004F00
      460046000C0000000000000000000000160000003A0054003000300031005F00
      430052005F0049004400050000000000000000000000200000003A0054003000
      300031005F0052004F0057005F00500052004500460049005800040000000000
      0000000000001A0000003A0054003000300031005F0052004F0057005F004E00
      55004D00040000000000000000000000120000003A004F005F00520045005300
      55004C005400040000000000000000000000100000003A005400300031003200
      5F0049004400040000000000000000000000100000003A005400300031003300
      5F0049004400040000000000000000000000100000003A005400300033003000
      5F0049004400040000000000000000000000}
    Top = 373
  end
  object oqAddDividend: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  Pk_Hand_Correct_405.p_add_dividend_to_sum(:T001_ID, :T050_ID);'
      '  commit;'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0054003000300031005F004900440004000000
      0000000000000000100000003A0054003000350030005F004900440004000000
      0000000000000000}
    Left = 256
    Top = 304
  end
  object odsCount: TOracleDataSet
    SQL.Strings = (
      'SELECT count(*) AS COUNT_STR,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_SUM_CROSS, 0' +
        ')) SUM_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_PROC_CROSS, ' +
        '0)) PROC_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_COUNT, 0)) C' +
        'OUNT_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, DECODE(T001_OP_COUNT' +
        ', 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), 0)) PRICE_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, T001_OP_SUM_CROSS, 0' +
        ')) SUM_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, T001_OP_PROC_CROSS, ' +
        '0)) PROC_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, T001_OP_COUNT, 0)) C' +
        'OUNT_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, DECODE(T001_OP_COUNT' +
        ', 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), 0)) PRICE_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_SUM_CROSS, -' +
        'T001_OP_SUM_CROSS)) SUM_SALDO,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_PROC_CROSS, ' +
        '-T001_OP_PROC_CROSS)) PROC_SALDO,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_COUNT, -T001' +
        '_OP_COUNT)) COUNT_SALDO,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, DECODE(T001_OP_COUNT' +
        ', 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), -DECODE(T001_OP_COUN' +
        'T, 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT))) PRICE_SALDO'
      'FROM ('
      'SELECT /*+ FIRST_ROWS */'
      
        ' T002_ID, T001_PART_ID, T005_DISPLAY_NAME, T002_BANK_CODE, T002_' +
        'REPORT_DATE,'
      
        ' T002_NUMB_IN_YEA, T002_NUMB_IN_YEA_DESC, T002_KP_ID, T001_ID, T' +
        '001_ROW_PREFIX,'
      
        ' T001_ROW_NUM, T001_DATE_OP, T001_TYPE_ID, T016_BOND_ID, T001_OP' +
        '_ID,'
      
        ' T011_TYPE_ID, T001_OP_PAY_ID, T006_NAME, T001_OP_COUNT, T001_OP' +
        '_CR_ID,'
      
        ' T001_OP_CR_DESC, T001_OP_SUM, T001_OP_PROC, T001_OP_SUM_CROSS, ' +
        'T001_OP_PROC_CROSS, T012_ID, T001_REZID_NAME,'
      
        ' T001_REZID_CO_ID, T001_REZID_TYPE, T013_ID, T001_NREZID_NAME, T' +
        '001_NREZID_CO_ID,'
      
        ' T001_NREZID_COUNTRY, T001_NREZID_TYPE, T028_SHOT_NAME, T028_COD' +
        'E, T025_CODE,'
      
        ' T025_SHOT_NAME, T001_REG_NUM, T001_DATE_ON, T001_DATE_OFF, T001' +
        '_CR_ID,'
      ' T001_CR_DESC, T001_PARENT_ID, T001_ROWID,'
      ' T001_IS_RANSOM, T030_ID, T050_ID, T050_DESC, T006_DIRECTION'
      'FROM V_T001_SUM'
      '     )'
      ' '
      ' '
      ' '
      ' ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000D0000001200000043004F0055004E0054005F005300540052000100
      000000000C000000530055004D005F0049004E000100000000000E0000005000
      52004F0043005F0049004E000100000000001000000043004F0055004E005400
      5F0049004E000100000000000E000000530055004D005F004F00550054000100
      0000000010000000500052004F0043005F004F00550054000100000000001200
      000043004F0055004E0054005F004F0055005400010000000000120000005300
      55004D005F00530041004C0044004F0001000000000014000000500052004F00
      43005F00530041004C0044004F000100000000001600000043004F0055004E00
      54005F00530041004C0044004F00010000000000100000005000520049004300
      45005F0049004E0001000000000012000000500052004900430045005F004F00
      5500540001000000000016000000500052004900430045005F00530041004C00
      44004F00010000000000}
    Cursor = crHourGlass
    ReadOnly = True
    Session = dmMain.OracleSession
    Left = 112
    Top = 412
    object odsCountCOUNT_STR: TFloatField
      Alignment = taLeftJustify
      FieldName = 'COUNT_STR'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object odsCountSUM_IN: TFloatField
      FieldName = 'SUM_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_IN: TFloatField
      FieldName = 'PROC_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountCOUNT_IN: TFloatField
      FieldName = 'COUNT_IN'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountSUM_OUT: TFloatField
      FieldName = 'SUM_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_OUT: TFloatField
      FieldName = 'PROC_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountCOUNT_OUT: TFloatField
      FieldName = 'COUNT_OUT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountSUM_SALDO: TFloatField
      FieldName = 'SUM_SALDO'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_SALDO: TFloatField
      FieldName = 'PROC_SALDO'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountCOUNT_SALDO: TFloatField
      FieldName = 'COUNT_SALDO'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountPRICE_IN: TFloatField
      FieldName = 'PRICE_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPRICE_OUT: TFloatField
      FieldName = 'PRICE_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPRICE_SALDO: TFloatField
      FieldName = 'PRICE_SALDO'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
  object dsCount: TDataSource
    DataSet = odsCount
    Left = 152
    Top = 412
  end
  object odsOper: TOracleDataSet
    SQL.Strings = (
      'SELECT T011_ID,'
      '       T011_TYPE_ID,'
      '       T011_OPERATION_DESC, '
      '       T011_TYPE_ID || '#39' - '#39' || T011_OPERATION_DESC DESC_FLD'
      'FROM V_OPERATION_TYPE'
      'ORDER BY T011_TYPE_ID')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000040000001000000044004500530043005F0046004C00440001000000
      00000E00000054003000310031005F0049004400010000000000180000005400
      3000310031005F0054005900500045005F004900440001000000000026000000
      54003000310031005F004F005000450052004100540049004F004E005F004400
      450053004300010000000000}
    Session = dmMain.OracleSession
    Left = 288
    Top = 42
    object odsOperDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 298
    end
    object odsOperT011_ID: TFloatField
      FieldName = 'T011_ID'
      Required = True
    end
    object odsOperT011_TYPE_ID: TFloatField
      DisplayWidth = 3
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object odsOperT011_OPERATION_DESC: TStringField
      FieldName = 'T011_OPERATION_DESC'
      Required = True
      Size = 255
    end
  end
  object dsType: TDataSource
    DataSet = odsType
    Left = 392
    Top = 58
  end
  object odsType: TOracleDataSet
    SQL.Strings = (
      
        'SELECT T027_ID, T027_SEC_TYPE, T027_SEC_TYPE || '#39' - '#39' || T027_CO' +
        'MMENTS DESC_FLD'
      'FROM V_405_SEC_TYPE'
      'ORDER BY T027_SEC_TYPE')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000030000001000000044004500530043005F0046004C00440001000000
      00000E00000054003000320037005F00490044000100000000001A0000005400
      3000320037005F005300450043005F005400590050004500010000000000}
    Session = dmMain.OracleSession
    Left = 360
    Top = 58
    object odsTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsTypeDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 513
    end
  end
  object dsOper: TDataSource
    DataSet = odsOper
    Left = 320
    Top = 42
  end
  object odsPay: TOracleDataSet
    SQL.Strings = (
      'SELECT T006_ID, T006_NAME || '#39' - '#39' || T006_DESC DESC_FLD'
      'FROM V_PAY_VIEW'
      'ORDER BY T006_NAME')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000001000000044004500530043005F0046004C00440001000000
      00000E00000054003000300036005F0049004400010000000000}
    Session = dmMain.OracleSession
    Left = 424
    Top = 90
    object odsPayT006_ID: TFloatField
      FieldName = 'T006_ID'
      Required = True
    end
    object odsPayDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 1258
    end
  end
  object dsPay: TDataSource
    DataSet = odsPay
    Left = 456
    Top = 90
  end
  object oqSetInvType: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_FORM_405.p_Set_Inv_Type_One (:T001_INV_TYPE, :T001_ID);'
      '  COMMIT;'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      04000000020000001C0000003A0054003000300031005F0049004E0056005F00
      5400590050004500030000000000000000000000100000003A00540030003000
      31005F0049004400040000000000000000000000}
    Left = 664
    Top = 152
  end
  object oqCloneSumInfo: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec T001_SUM%ROWTYPE;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T001_INV_TYPE := :T001_INV_TYPE;'
      '  v_rec.T001_PROCESSED := :T001_PROCESSED;'
      '  v_rec.T001_DPB_COMMENT := :T001_DPB_COMMENT;'
      '  v_rec.IS_FIRST := :IS_FIRST;'
      ''
      '  Pk_Hand_Correct_405.p_t001_sum_clone(v_rec);'
      ''
      '  :T001_ID := v_rec.T001_ID;'
      '  :T002_ID := v_rec.T002_ID;'
      '  :T001_PART_ID := v_rec.T001_PART_ID;'
      '  :T001_DATE_OP := v_rec.T001_DATE_OP;'
      '  :T001_OP_ID := v_rec.T001_OP_ID;'
      '  :T001_OP_PAY_ID := v_rec.T001_OP_PAY_ID;'
      '  :T001_OP_COUNT := v_rec.T001_OP_COUNT;'
      '  :T001_OP_CR_ID := v_rec.T001_OP_CR_ID;'
      '  :T001_OP_SUM := v_rec.T001_OP_SUM;'
      '  :T001_OP_PROC := v_rec.T001_OP_PROC;'
      '  :T001_DATE_ON := v_rec.T001_DATE_ON;'
      '  :T001_DATE_OFF := v_rec.T001_DATE_OFF;'
      '  :T001_CR_ID := v_rec.T001_CR_ID;'
      '  :T001_ROW_PREFIX := v_rec.T001_ROW_PREFIX;'
      '  :T001_ROW_NUM := v_rec.T001_ROW_NUM;'
      '  :T001_IS_RANSOM := v_rec.T001_IS_RANSOM;'
      '  :T012_ID := v_rec.T012_ID;'
      '  :T013_ID := v_rec.T013_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T001_INV_TYPE := v_rec.T001_INV_TYPE;'
      '  :T001_DPB_COMMENT :=  v_rec.T001_DPB_COMMENT;'
      ''
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000017000000100000003A0054003000300032005F004900440004000000
      00000000000000001A0000003A0054003000300031005F005000410052005400
      5F00490044000400000000000000000000001A0000003A005400300030003100
      5F0044004100540045005F004F0050000C000000000000000000000016000000
      3A0054003000300031005F004F0050005F004900440004000000000000000000
      00001E0000003A0054003000300031005F004F0050005F005000410059005F00
      490044000400000000000000000000001C0000003A0054003000300031005F00
      4F0050005F0043004F0055004E0054000400000000000000000000001C000000
      3A0054003000300031005F004F0050005F00430052005F004900440005000000
      0000000000000000180000003A0054003000300031005F004F0050005F005300
      55004D000400000000000000000000001A0000003A0054003000300031005F00
      4F0050005F00500052004F0043000400000000000000000000001A0000003A00
      54003000300031005F0044004100540045005F004F004E000C00000000000000
      000000001C0000003A0054003000300031005F0044004100540045005F004F00
      460046000C0000000000000000000000160000003A0054003000300031005F00
      430052005F0049004400050000000000000000000000200000003A0054003000
      300031005F0052004F0057005F00500052004500460049005800040000000000
      0000000000001A0000003A0054003000300031005F0052004F0057005F004E00
      55004D00040000000000000000000000100000003A0054003000300031005F00
      490044000400000000000000000000001E0000003A0054003000300031005F00
      490053005F00520041004E0053004F004D000500000000000000000000001000
      00003A0054003000310032005F00490044000400000000000000000000001000
      00003A0054003000310033005F00490044000400000000000000000000001000
      00003A0054003000330030005F00490044000400000000000000000000001C00
      00003A0054003000300031005F0049004E0056005F0054005900500045000300
      00000000000000000000220000003A0054003000300031005F00440050004200
      5F0043004F004D004D0045004E0054000500000000000000000000001E000000
      3A0054003000300031005F00500052004F004300450053005300450044000400
      00000000000000000000120000003A00490053005F0046004900520053005400
      050000000000000000000000}
    Left = 297
    Top = 373
  end
  object pmSetFictive: TPopupMenu
    Left = 832
    Top = 88
    object N_SetFictive: TMenuItem
      Action = actSetFictive
    end
    object N_SetReal: TMenuItem
      Action = actSetReal
    end
    object N_SetNotRate: TMenuItem
      Action = actSetNoRate
    end
    object N_SetNeedRate: TMenuItem
      Action = actSetNeedRate
    end
    object actSetByCriteria1: TMenuItem
      Action = actSetByCriteria
    end
  end
  object oqSetFictive: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_Hand_Correct_405.p_set_fictive(:T001_ID, :T035_ID);'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0054003000300031005F004900440004000000
      0000000000000000100000003A0054003000330035005F004900440004000000
      0000000000000000}
    Left = 808
    Top = 355
  end
end
