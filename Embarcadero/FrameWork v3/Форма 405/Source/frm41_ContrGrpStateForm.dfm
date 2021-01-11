inherited frm41_ContrGrpState: Tfrm41_ContrGrpState
  Left = 138
  Top = 126
  Caption = #1054#1094#1077#1085#1082#1080' '#1075#1088#1091#1087#1087' '#1086#1087#1077#1088#1072#1094#1080#1081
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
    ExplicitWidth = 1180
  end
  inherited spRight: TSplitter
    Height = 388
    ExplicitLeft = 1177
    ExplicitHeight = 613
  end
  inherited paRight: TPanel
    Height = 388
    ExplicitLeft = 1180
    ExplicitHeight = 613
  end
  inherited paMain: TPanel
    Height = 388
    ExplicitWidth = 1177
    ExplicitHeight = 613
    inherited ToolBar2: TToolBar
      ButtonWidth = 155
      ExplicitWidth = 1177
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 593
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 601
        Top = 0
        Action = actZero
        AutoSize = True
      end
      object ToolButton11: TToolButton
        Left = 702
        Top = 0
        Action = actReal
        AutoSize = True
      end
      object ToolButton12: TToolButton
        Left = 764
        Top = 0
        Action = actFic
        AutoSize = True
      end
      object ToolButton6: TToolButton
        Left = 835
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 843
        Top = 0
        Action = actShowOper
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 924
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 29
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 932
        Top = 0
        Action = actOperState
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Height = 323
      AdvSettings.Indexes = <
        item
          FieldName = 'T001_OP_SUM_SALDO'
          SortType = stAsc
        end
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 3
              LastCol = 4
              Caption = #1055#1088#1080#1085#1080#1084#1072#1083#1080' '#1091#1095#1072#1089#1090#1080#1077' '#1074' '#1092#1080#1082#1090#1080#1074#1085#1099#1093' '#1086#1087#1077#1088#1072#1094#1080#1103#1093
            end
            item
              FirstCol = 5
              LastCol = 6
              Caption = #1042' '#1056#1086#1089#1089#1080#1102
            end
            item
              FirstCol = 7
              LastCol = 8
              Caption = #1048#1079' '#1056#1086#1089#1089#1080#1080
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          Title.Caption = #1058#1080#1087' '#1094'.'#1073'.'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OP_GRP_STATE'
          Title.Caption = #1054#1094#1077#1085#1082#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_STATE'
          Title.Caption = #1048#1090#1086#1075#1086#1074#1072#1103' '#1086#1094#1077#1085#1082#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          Title.Caption = #1056#1077#1079'.'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          Title.Caption = #1053#1077#1088#1077#1079'.'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_IN'
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1094'.'#1073'.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN'
          Title.Caption = #1057#1091#1084#1084#1072' ('#1090#1099#1089'. $)'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_OUT'
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1094'.'#1073'.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT'
          Title.Caption = #1057#1091#1084#1084#1072' ('#1090#1099#1089'. $)'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO'
          Title.Caption = #1057#1072#1083#1100#1076#1086' ('#1090#1099#1089'. $)'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T071_CALC_DESC'
          Title.Caption = #1057#1090#1072#1090#1091#1089
          Width = 228
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 1150
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 1150
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 649
    ExplicitWidth = 1180
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 616
    ExplicitWidth = 1180
    inherited OKBtn: TButton
      Left = 816
      ExplicitLeft = 816
    end
    inherited CancelBtn: TButton
      Left = 896
      ExplicitLeft = 896
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
    object actOperState: TAction
      Caption = #1054#1094#1077#1085#1082#1072' '#1075#1088#1091#1087#1087#1099' '#1086#1087#1077#1088#1072#1094#1080#1081
      OnExecute = actOperStateExecute
      OnUpdate = actOperStateUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' T002_ID,'
      '  T012_ID,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T012_FICT_STATE_DESC,'
      '  T013_FICT_STATE_DESC,'
      '  T001_OP_COUNT_IN,'
      '  T001_OP_COUNT_OUT,'
      '  T001_OP_SUM_IN,'
      '  T001_OP_SUM_OUT,'
      '  T001_OP_SUM_SALDO,'
      '  OP_GRP_STATE,'
      '  TOTAL_STATE,'
      '  T071_CALC_DESC'
      'FROM V_405_CLASS_OPER_GRP_SALDO'
      'WHERE  T002_ID =:T002_ID'
      'AND    T012_ID =:T012_ID'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0400000002000000100000003A0054003000300032005F004900440003000000
      0000000000000000100000003A0054003000310032005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000E0000001C00000054003000370031005F00430041004C0043005F00
      44004500530043000100000000000E00000054003000300032005F0049004400
      0100000000000E00000054003000320037005F00490044000100000000001A00
      000054003000320037005F005300450043005F00540059005000450001000000
      00000E00000054003000310032005F0049004400010000000000200000005400
      3000300031005F004F0050005F0043004F0055004E0054005F0049004E000100
      000000002200000054003000300031005F004F0050005F0043004F0055004E00
      54005F004F00550054000100000000001C00000054003000300031005F004F00
      50005F00530055004D005F0049004E000100000000001E000000540030003000
      31005F004F0050005F00530055004D005F004F00550054000100000000002200
      000054003000300031005F004F0050005F00530055004D005F00530041004C00
      44004F00010000000000180000004F0050005F004700520050005F0053005400
      4100540045000100000000001600000054004F00540041004C005F0053005400
      4100540045000100000000002800000054003000310032005F00460049004300
      54005F00530054004100540045005F0044004500530043000100000000002800
      000054003000310033005F0046004900430054005F0053005400410054004500
      5F004400450053004300010000000000}
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT071_CALC_DESC: TStringField
      FieldName = 'T071_CALC_DESC'
      Size = 255
    end
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
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
    object odsListOP_GRP_STATE: TFloatField
      FieldName = 'OP_GRP_STATE'
    end
    object odsListTOTAL_STATE: TFloatField
      FieldName = 'TOTAL_STATE'
    end
    object odsListT002_ID: TIntegerField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsListT012_FICT_STATE_DESC: TStringField
      FieldName = 'T012_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT013_FICT_STATE_DESC: TStringField
      FieldName = 'T013_FICT_STATE_DESC'
      Size = 3
    end
  end
  object oqSetFictState: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.p_set_res_sectype_fict_state ('
      '    :T002_ID,'
      '    :T012_ID,'
      '    :T027_ID,'
      '    :T035_ID'
      '  );'
      'END;'
      ' '
      ' '
      '')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000004000000100000003A0054003000300032005F004900440004000000
      0000000000000000100000003A0054003000310032005F004900440004000000
      0000000000000000100000003A0054003000320037005F004900440004000000
      0000000000000000100000003A0054003000330035005F004900440004000000
      0000000000000000}
    Left = 296
    Top = 240
  end
  object oqGetT071_ID: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :T071_ID := PK_405_Classification.f_get_T071_id('
      '    :T002_ID,'
      '    :T012_ID,'
      '    :T027_ID'
      '  );'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000004000000100000003A0054003000300032005F004900440004000000
      0000000000000000100000003A0054003000310032005F004900440004000000
      0000000000000000100000003A0054003000320037005F004900440004000000
      0000000000000000100000003A0054003000370031005F004900440004000000
      0000000000000000}
    Left = 296
    Top = 281
  end
end
