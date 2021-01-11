inherited frm41_ContrState: Tfrm41_ContrState
  Left = 44
  Top = 165
  Caption = #1054#1094#1077#1085#1082#1080' '#1086#1087#1077#1088#1072#1094#1080#1081
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 388
    Width = 680
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 613
    ExplicitWidth = 1225
  end
  inherited spRight: TSplitter
    Height = 388
    ExplicitLeft = 1222
    ExplicitHeight = 613
  end
  inherited paRight: TPanel
    Height = 388
    ExplicitLeft = 1225
    ExplicitHeight = 613
  end
  inherited paMain: TPanel
    Height = 388
    ExplicitWidth = 1222
    ExplicitHeight = 613
    inherited ToolBar2: TToolBar
      ExplicitWidth = 1222
      object ToolButton5: TToolButton
        Left = 591
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 599
        Top = 0
        Action = actZero
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 700
        Top = 0
        Action = actReal
        AutoSize = True
      end
      object ToolButton11: TToolButton
        Left = 762
        Top = 0
        Action = actFic
        AutoSize = True
      end
      object ToolButton6: TToolButton
        Left = 833
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        Enabled = False
        ImageIndex = 3
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 841
        Top = 0
        Action = actShowOper
        AutoSize = True
        DropdownMenu = pmGoTo
        Style = tbsDropDown
      end
      object ToolButton9: TToolButton
        Left = 937
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 28
        Style = tbsSeparator
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Height = 323
      AdvSettings.Indexes = <
        item
          FieldName = 'T012_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T013_NAME'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 2
              Caption = #1055#1088#1080#1079#1085#1072#1082' '#1092#1080#1082#1090'-'#1090#1080
            end
            item
              FirstCol = 10
              LastCol = 11
              Caption = #1042' '#1056#1086#1089#1089#1080#1102
            end
            item
              FirstCol = 12
              LastCol = 13
              Caption = #1048#1079' '#1056#1086#1089#1089#1080#1080
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
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          Title.Caption = #1056#1077#1079'.'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          Title.Caption = #1053#1077#1088#1077#1079'.'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_NAME'
          Title.Caption = #1056#1077#1079#1080#1076#1077#1085#1090
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_CODE'
          Title.Caption = #1048#1053#1053
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_NAME'
          Title.Caption = #1053#1077#1088#1077#1079#1080#1076#1077#1085#1090
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNTRY_NAME'
          Title.Caption = #1057#1090#1088#1072#1085#1072
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' '#1094'.'#1073'.'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          Title.Caption = #1048#1053#1053
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_IN'
          Title.Caption = #1050#1086#1083'. '#1094'.'#1073'.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN'
          Title.Caption = #1057#1091#1084#1084#1072' ('#1090#1099#1089'. $)'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_OUT'
          Title.Caption = #1050#1086#1083'. '#1094'.'#1073'.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT'
          Title.Caption = #1057#1091#1084#1084#1072' ('#1090#1099#1089'. $)'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO'
          Title.Caption = #1057#1072#1083#1100#1076#1086' ('#1090#1099#1089'. $)'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_STATE_DESC'
          Title.Caption = #1057#1090#1072#1090#1091#1089
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 1195
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 1195
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 649
    ExplicitWidth = 1225
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 616
    ExplicitWidth = 1225
    inherited OKBtn: TButton
      Left = 861
      ExplicitLeft = 861
    end
    inherited CancelBtn: TButton
      Left = 941
      ExplicitLeft = 941
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
    object actFic: TAction [9]
      Caption = #1060#1080#1082#1090#1080#1074#1085#1099#1077
      Hint = #1055#1088#1080#1079#1085#1072#1090#1100' '#1075#1088#1091#1087#1087#1091' '#1086#1087#1077#1088#1072#1094#1080#1081' '#1092#1080#1082#1090#1080#1074#1085#1086#1081
      OnExecute = actFicExecute
    end
    object actReal: TAction [10]
      Caption = #1056#1077#1072#1083#1100#1085#1099#1077
      Hint = #1055#1088#1080#1079#1085#1072#1090#1100' '#1075#1088#1091#1087#1087#1091' '#1086#1087#1077#1088#1072#1094#1080#1081' '#1088#1077#1072#1083#1100#1085#1086#1081
      OnExecute = actRealExecute
    end
    object actRecalc: TAction [11]
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1086#1073' '#1086#1087#1077#1088#1072#1094#1080#1103#1093' '
      ImageIndex = 1
    end
    object actZero: TAction
      Caption = #1053#1077' '#1086#1094#1077#1085#1080#1074#1072#1090#1100
      Hint = #1053#1077' '#1086#1094#1077#1085#1080#1074#1072#1090#1100' '#1075#1088#1091#1087#1087#1091' '#1086#1087#1077#1088#1072#1094#1080#1081
      ImageIndex = 2
      OnExecute = actZeroExecute
    end
    object actShowOper: TAction
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      ImageIndex = 27
      OnExecute = actShowOperExecute
    end
    object actGoToOper: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1086#1087#1077#1088#1072#1094#1080#1103#1084
      OnExecute = actGoToOperExecute
    end
    object actGoToRes: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1087#1086' '#1088#1077#1079#1080#1076#1077#1085#1090#1091
      OnExecute = actGoToResExecute
    end
    object actGoToNRes: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080'  '#1087#1086' '#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1091
      OnExecute = actGoToNResExecute
    end
    object actOperState: TAction
      Caption = #1054#1094#1077#1085#1082#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
      Enabled = False
      Visible = False
    end
    object actGoToEmit: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1087#1086' '#1101#1084#1080#1090#1077#1085#1090#1091' ('#1075#1083#1072#1074#1085#1086#1084#1091')'
      OnExecute = actGoToEmitExecute
    end
    object actGoToEmitINN: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1087#1086' '#1048#1053#1053' '#1101#1084#1080#1090#1077#1085#1090#1072
      OnExecute = actGoToEmitINNExecute
    end
    object actGoToMainRes: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1087#1086' '#1088#1077#1079#1080#1076#1077#1085#1090#1091' ('#1075#1083#1072#1074#1085#1086#1084#1091')'
      OnExecute = actGoToMainResExecute
    end
    object actGoToMainNRes: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1087#1086' '#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1091' ('#1075#1083#1072#1074#1085#1086#1084#1091')'
      OnExecute = actGoToMainNResExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T002_ID,'
      '         T001_PART_ID,'
      '         T001_ROW_PRFX,'
      '         T030_ID,'
      '         T026_ID,'
      '         T026_SEC_REGN,'
      '         T028_ID,'
      '         T028_PARENT_ID,'
      '         T028_SHOT_NAME,'
      '         T028_INN,'
      '         T027_ID,'
      '         T027_SEC_TYPE,'
      '         T012_ID,'
      '         T012_PARENT_ID,'
      '         T012_NAME,'
      '         T012_CODE,'
      '         T013_ID,'
      '         T013_PARENT_ID,'
      '         T013_NAME,'
      '         COUNTRY_NAME,'
      '         T012_FICT_STATE_DESC,'
      '         T013_FICT_STATE_DESC,'
      '         T013_CODE,'
      '         T001_OP_COUNT_IN,'
      '         T001_OP_COUNT_OUT,'
      '         T001_OP_SUM_IN,'
      '         T001_OP_SUM_OUT,'
      '         T001_OP_SUM_SALDO,'
      '         T035_ID,'
      '         T001_STATE_DESC'
      'FROM     V_405_CLASS_OPER_SALDO'
      'WHERE    T002_ID = :T002_ID'
      'AND      T027_ID = :T027_ID'
      'AND      T012_ID = :T012_ID')
    Variables.Data = {
      0400000003000000100000003A0054003000300032005F004900440003000000
      0000000000000000100000003A0054003000320037005F004900440004000000
      0000000000000000100000003A0054003000310032005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001E0000000E00000054003000310032005F0049004400010000000000
      1200000054003000310032005F004E0041004D00450001000000000012000000
      54003000310032005F0043004F00440045000100000000000E00000054003000
      310033005F00490044000100000000001200000054003000310033005F004E00
      41004D0045000100000000001200000054003000310033005F0043004F004400
      45000100000000001800000043004F0055004E005400520059005F004E004100
      4D0045000100000000000E00000054003000300032005F004900440001000000
      00000E00000054003000320037005F00490044000100000000001A0000005400
      3000320037005F005300450043005F0054005900500045000100000000000E00
      000054003000320038005F00490044000100000000001C000000540030003200
      38005F00530048004F0054005F004E0041004D0045000100000000000E000000
      54003000330030005F00490044000100000000000E0000005400300032003600
      5F00490044000100000000001A00000054003000320036005F00530045004300
      5F005200450047004E000100000000002000000054003000300031005F004F00
      50005F0043004F0055004E0054005F0049004E00010000000000220000005400
      3000300031005F004F0050005F0043004F0055004E0054005F004F0055005400
      0100000000001C00000054003000300031005F004F0050005F00530055004D00
      5F0049004E000100000000001E00000054003000300031005F004F0050005F00
      530055004D005F004F0055005400010000000000220000005400300030003100
      5F004F0050005F00530055004D005F00530041004C0044004F00010000000000
      1800000054003000300031005F0050004100520054005F004900440001000000
      00001000000054003000320038005F0049004E004E000100000000001C000000
      54003000320038005F0050004100520045004E0054005F004900440001000000
      00001C00000054003000310032005F0050004100520045004E0054005F004900
      44000100000000001C00000054003000310033005F0050004100520045004E00
      54005F00490044000100000000000E00000054003000330035005F0049004400
      0100000000001E00000054003000300031005F00530054004100540045005F00
      44004500530043000100000000002800000054003000310032005F0046004900
      430054005F00530054004100540045005F004400450053004300010000000000
      2800000054003000310033005F0046004900430054005F005300540041005400
      45005F0044004500530043000100000000001A00000054003000300031005F00
      52004F0057005F005000520046005800010000000000}
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
    end
    object odsListT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Size = 255
    end
    object odsListT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Size = 255
    end
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
    end
    object odsListT013_NAME: TStringField
      FieldName = 'T013_NAME'
      Size = 255
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 255
    end
    object odsListT013_CODE: TFloatField
      FieldName = 'T013_CODE'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT001_OP_COUNT_IN: TFloatField
      FieldName = 'T001_OP_COUNT_IN'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_COUNT_OUT: TFloatField
      FieldName = 'T001_OP_COUNT_OUT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_IN: TFloatField
      FieldName = 'T001_OP_SUM_IN'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_OUT: TFloatField
      FieldName = 'T001_OP_SUM_OUT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_SALDO: TFloatField
      FieldName = 'T001_OP_SUM_SALDO'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT002_ID: TIntegerField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsListT001_PART_ID: TFloatField
      FieldName = 'T001_PART_ID'
      Required = True
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsListT012_PARENT_ID: TFloatField
      FieldName = 'T012_PARENT_ID'
    end
    object odsListT013_PARENT_ID: TFloatField
      FieldName = 'T013_PARENT_ID'
    end
    object odsListT035_ID: TFloatField
      FieldName = 'T035_ID'
      Required = True
    end
    object odsListT001_STATE_DESC: TStringField
      FieldName = 'T001_STATE_DESC'
      Size = 12
    end
    object odsListT012_FICT_STATE_DESC: TStringField
      FieldName = 'T012_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT013_FICT_STATE_DESC: TStringField
      FieldName = 'T013_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 3
    end
  end
  object pmGoTo: TPopupMenu
    Left = 720
    Top = 32
    object N16: TMenuItem
      Action = actGoToOper
    end
    object N17: TMenuItem
      Action = actGoToRes
    end
    object N21: TMenuItem
      Action = actGoToMainRes
    end
    object N18: TMenuItem
      Action = actGoToNRes
    end
    object N22: TMenuItem
      Action = actGoToMainNRes
    end
    object N19: TMenuItem
      Action = actGoToEmit
    end
    object N20: TMenuItem
      Action = actGoToEmitINN
    end
  end
  object oqSetFictState: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.p_set_res_nres_st_fict_state ('
      '    :T002_ID,'
      '    :T012_ID,'
      '    :T013_ID,'
      '    :T030_ID,'
      '    :T035_ID'
      '  );'
      'END;'
      ' '
      '')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000005000000100000003A0054003000300032005F004900440004000000
      0000000000000000100000003A0054003000310032005F004900440004000000
      0000000000000000100000003A0054003000310033005F004900440004000000
      0000000000000000100000003A0054003000330035005F004900440004000000
      0000000000000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    Left = 296
    Top = 240
  end
end
