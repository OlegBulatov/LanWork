inherited frm41_RezidGrp: Tfrm41_RezidGrp
  Left = 285
  Top = 100
  Caption = #1054#1094#1077#1085#1082#1080' '#1088#1077#1079#1080#1076#1077#1085#1090#1086#1074
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 388
    Width = 680
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 610
    ExplicitWidth = 1163
  end
  inherited spRight: TSplitter
    Height = 388
    ExplicitLeft = 1160
    ExplicitHeight = 610
  end
  inherited paRight: TPanel
    Height = 388
    ExplicitLeft = 1163
    ExplicitHeight = 610
  end
  inherited paMain: TPanel
    Height = 388
    ExplicitWidth = 1160
    ExplicitHeight = 610
    inherited ToolBar2: TToolBar
      ButtonWidth = 121
      ExplicitWidth = 1160
      object ToolButton5: TToolButton
        Left = 603
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 611
        Top = 0
        Action = actZeroState
        AutoSize = True
      end
      object ToolButton8: TToolButton
        Left = 712
        Top = 0
        Action = actFictState
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 783
        Top = 0
        Action = actRealState
        AutoSize = True
      end
      object ToolButton6: TToolButton
        Left = 845
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton12: TToolButton
        Left = 853
        Top = 0
        AutoSize = True
        Caption = #1054#1087#1077#1088#1072#1094#1080#1080
        DropdownMenu = pmGoTo
        ImageIndex = 27
        Style = tbsDropDown
      end
      object ToolButton11: TToolButton
        Left = 947
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 955
        Top = 0
        Action = actRezidState
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Height = 323
      AdvSettings.Indexes = <
        item
          FieldName = 'REZID_STATE'
          SortType = stDesc
        end
        item
          FieldName = 'T001_OP_SUM_SALDO'
          SortType = stAsc
        end
        item
          FieldName = 'T012_NAME'
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
              Caption = #1055#1088#1080#1085#1080#1084#1072#1083' '#1091#1095#1072#1089#1090#1080#1077' '#1074' '#1092#1080#1082#1090#1080#1074#1085#1099#1093' '#1086#1087#1077#1088#1072#1094#1080#1103#1093
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
          FieldName = 'T012_NAME'
          Title.Caption = #1056#1077#1079#1080#1076#1077#1085#1090
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_CODE'
          Title.Caption = #1048#1053#1053
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REZID_STATE'
          Title.Caption = #1054#1094#1077#1085#1082#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          Title.Caption = #1056#1077#1079'.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          Title.Caption = #1053#1077#1088#1077#1079'.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_IN'
          Title.Caption = #1050#1086#1083'. '#1094'.'#1073'.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN'
          Title.Caption = #1057#1091#1084#1084#1072' ('#1090#1099#1089'. $)'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_OUT'
          Title.Caption = #1050#1086#1083'. '#1094'.'#1073'.'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT'
          Title.Caption = #1057#1091#1084#1084#1072' ('#1090#1099#1089'. $)'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO'
          Title.Caption = #1057#1072#1083#1100#1076#1086' ('#1090#1099#1089'. $)'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T071_CALC_DESC'
          Title.Caption = #1057#1090#1072#1090#1091#1089
          Width = 140
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 1133
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 1133
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 646
    ExplicitWidth = 1163
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 613
    ExplicitWidth = 1163
    inherited OKBtn: TButton
      Left = 799
      ExplicitLeft = 799
    end
    inherited CancelBtn: TButton
      Left = 879
      ExplicitLeft = 879
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
    object actZero: TAction
      Caption = #1053#1077' '#1086#1094#1077#1085#1080#1074#1072#1090#1100
      Enabled = False
      Hint = #1053#1077' '#1086#1094#1077#1085#1080#1074#1072#1090#1100' '#1075#1088#1091#1087#1087#1091' '#1086#1087#1077#1088#1072#1094#1080#1081
      ImageIndex = 2
      Visible = False
    end
    object actRezidState: TAction
      Caption = #1054#1094#1077#1085#1082#1072' '#1088#1077#1079#1080#1076#1077#1085#1090#1072
      OnExecute = actRezidStateExecute
      OnUpdate = actRezidStateUpdate
    end
    object actFictState: TAction
      Caption = #1060#1080#1082#1090#1080#1074#1085#1099#1077
      OnExecute = actFictStateExecute
      OnUpdate = actFictStateUpdate
    end
    object actRealState: TAction
      Caption = #1056#1077#1072#1083#1100#1085#1099#1077
      OnExecute = actRealStateExecute
      OnUpdate = actRealStateUpdate
    end
    object actZeroState: TAction
      Caption = #1053#1077' '#1086#1094#1077#1085#1080#1074#1072#1090#1100
      ImageIndex = 2
      OnExecute = actZeroStateExecute
      OnUpdate = actZeroStateUpdate
    end
    object actShowRezident: TAction
      Caption = #1087#1077#1088#1077#1081#1090#1080' '#1087#1086' '#1088#1077#1079#1080#1076#1077#1085#1090#1091
      OnExecute = actShowRezidentExecute
      OnUpdate = actShowRezidentUpdate
    end
    object actShowINN: TAction
      Caption = #1087#1086' '#1048#1053#1053
      OnExecute = actShowINNExecute
      OnUpdate = actShowINNUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '   T002_ID,'
      '   T055_ID,'
      '   T012_ID,'
      '   T012_NAME,'
      '   T012_CODE,'
      '   T001_OP_COUNT_IN,'
      '   T001_OP_COUNT_OUT,'
      '   T001_OP_SUM_IN,'
      '   T001_OP_SUM_OUT,'
      '   T001_OP_SUM_SALDO,'
      '   T012_FICT_STATE_DESC,'
      '   T013_FICT_STATE_DESC,'
      '   REZID_STATE,'
      '   T071_CALC_DESC'
      'FROM V_405_CLASS_REZID_GRP_SALDO'
      'WHERE  T002_ID =:T002_ID'
      ''
      ''
      ' '
      ' '
      ' ')
    Variables.Data = {
      0400000001000000100000003A0054003000300032005F004900440003000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000F0000000E00000054003000310032005F0049004400010000000000
      1200000054003000310032005F004E0041004D00450001000000000012000000
      54003000310032005F0043004F00440045000100000000000E00000054003000
      300032005F004900440001000000000016000000520045005A00490044005F00
      530054004100540045000100000000002000000054003000300031005F004F00
      50005F0043004F0055004E0054005F0049004E00010000000000220000005400
      3000300031005F004F0050005F0043004F0055004E0054005F004F0055005400
      0100000000001C00000054003000300031005F004F0050005F00530055004D00
      5F0049004E000100000000001E00000054003000300031005F004F0050005F00
      530055004D005F004F0055005400010000000000220000005400300030003100
      5F004F0050005F00530055004D005F00530041004C0044004F00010000000000
      1C00000054003000370031005F00430041004C0043005F004400450053004300
      0100000000002800000054003000310032005F0046004900430054005F005300
      54004100540045005F0044004500530043000100000000002800000054003000
      310033005F0046004900430054005F00530054004100540045005F0044004500
      530043000100000000000E00000054003000350035005F004900440001000000
      00001A000000490053005F00520045005300490044005F004D00410049004E00
      010000000000}
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsListT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Required = True
      Size = 255
    end
    object odsListT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Size = 255
    end
    object odsListREZID_STATE: TFloatField
      FieldName = 'REZID_STATE'
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
    object odsListT071_CALC_DESC: TStringField
      FieldName = 'T071_CALC_DESC'
      Size = 4000
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
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
  end
  object pmGoTo: TPopupMenu
    Left = 720
    Top = 32
    object N16: TMenuItem
      Action = actShowRezident
    end
    object N17: TMenuItem
      Action = actShowINN
    end
  end
  object oqSetFictState: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.p_set_res_fict_state ('
      '    :T002_ID,'
      '    :T012_ID,'
      '    :T035_ID'
      '    );'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000003000000100000003A0054003000300032005F004900440004000000
      0000000000000000100000003A0054003000310032005F004900440004000000
      0000000000000000100000003A0054003000330035005F004900440004000000
      0000000000000000}
    Left = 288
    Top = 304
  end
  object oqGetT103_ID: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :T103_ID := PK_405_Classification.f_get_T103_id('
      '    :T012_ID,'
      '    :T055_ID'
      '  );'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000003000000100000003A0054003000350035005F004900440004000000
      0000000000000000100000003A0054003000310032005F004900440004000000
      0000000000000000100000003A0054003100300033005F004900440004000000
      0000000000000000}
    Left = 288
    Top = 337
  end
end
