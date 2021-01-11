inherited frm40_BankState: Tfrm40_BankState
  Left = 121
  Top = 147
  Caption = #1054#1094#1077#1085#1082#1080' '#1050#1054
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 0
    Align = alLeft
    Visible = True
    ExplicitLeft = 0
    ExplicitHeight = 672
  end
  inherited paRight: TPanel
    ExplicitLeft = 1229
    ExplicitHeight = 672
  end
  inherited paMain: TPanel
    Left = 3
    ExplicitLeft = 3
    ExplicitWidth = 1226
    ExplicitHeight = 672
    inherited ToolBar2: TToolBar
      ButtonWidth = 115
      ExplicitWidth = 1226
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 516
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 524
        Top = 0
        Action = actRecalc
        AutoSize = True
      end
      object ToolButton8: TToolButton
        Left = 620
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        Enabled = False
        ImageIndex = 2
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 628
        Top = 0
        Action = actZero
        AutoSize = True
        Caption = #1053#1077' '#1086#1094#1077#1085#1080#1074#1072#1090#1100' '#1050#1054
      end
      object ToolButton10: TToolButton
        Left = 747
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tbShowReports: TToolButton
        Left = 755
        Top = 0
        Action = actReport
        AutoSize = True
        Caption = #1054#1090#1095#1077#1090' '#1074' Word'
      end
      object ToolButton6: TToolButton
        Left = 853
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 861
        Top = 0
        Action = actShowHistory
        AutoSize = True
      end
      object ToolButton12: TToolButton
        Left = 944
        Top = 0
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton14: TToolButton
        Left = 952
        Top = 0
        Action = actShowOper
        AutoSize = True
        ImageIndex = 27
      end
      object ToolButton15: TToolButton
        Left = 1033
        Top = 0
        Width = 8
        Style = tbsSeparator
        OnClick = actKOStateExecute
      end
      object ToolButton16: TToolButton
        Left = 1041
        Top = 0
        Action = actKOState
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'KO_STATE'
          SortType = stDesc
        end
        item
          FieldName = 'T035_DESC'
          SortType = stAsc
        end
        item
          FieldName = 'T012_FICT_STATE_DESC'
          SortType = stAsc
        end
        item
          FieldName = 'T013_FICT_STATE_DESC'
          SortType = stAsc
        end
        item
          FieldName = 'T001_OP_SUM_SALDO'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 3
              LastCol = 8
              Caption = #1048#1090#1086#1075#1080' '#1087#1086' '#1086#1087#1077#1088#1072#1094#1080#1103#1084' ('#1090#1099#1089'. '#1076#1086#1083#1083'.)'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 3
              LastCol = 5
              Caption = #1042#1089#1077#1075#1086' '#1087#1086' '#1086#1087#1077#1088#1072#1094#1080#1103#1084' ('#1090#1099#1089'. $)'
            end
            item
              FirstCol = 6
              LastCol = 8
              Caption = #1074' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1092#1080#1082#1090#1080#1074#1085#1099#1077'  ('#1090#1099#1089'. $)'
            end
            item
              FirstCol = 9
              LastCol = 11
              Caption = #1055#1088#1080#1085#1080#1084#1072#1083#1080' '#1091#1095#1072#1089#1090#1080#1077' '#1074' '#1092#1080#1082#1090#1080#1074#1085#1099#1093' '#1086#1087#1077#1088#1072#1094#1080#1103#1093
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T002_BANK_CODE'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_NAME'
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1073#1072#1085#1082#1072
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KO_STATE'
          Title.Caption = #1054#1094#1077#1085#1082#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN'
          Title.Caption = #1042' '#1056#1086#1089#1089#1080#1102
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT'
          Title.Caption = #1048#1079' '#1056#1086#1089#1089#1080#1080
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO'
          Title.Caption = #1057#1072#1083#1100#1076#1086
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN_F'
          Title.Caption = #1042' '#1056#1086#1089#1089#1080#1102
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT_F'
          Title.Caption = #1048#1079' '#1056#1086#1089#1089#1080#1080
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO_F'
          Title.Caption = #1057#1072#1083#1100#1076#1086
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T035_DESC'
          Title.Caption = #1050#1054
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          Title.Caption = #1056#1077#1079'.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          Title.Caption = #1053#1077#1088#1077#1079'.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EVALUATION_STATE_DESC'
          Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_CALC_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1088#1072#1089#1095#1077#1090#1072
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_CHANGE_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          Width = 60
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 1199
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 1199
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 705
    ExplicitWidth = 1229
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 672
    ExplicitWidth = 1229
    inherited OKBtn: TButton
      Left = 983
      ExplicitLeft = 983
    end
    inherited CancelBtn: TButton
      Left = 1063
      ExplicitLeft = 1063
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
    inherited actExcel: TAction
      Caption = ''
    end
    object actRecalc: TAction [9]
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100
      Hint = 
        #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1086#1073' '#1086#1087#1077#1088#1072#1094#1080#1103#1093' '#13#10#1076#1083#1103' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1082#1088#1077#1076#1080#1090#1085#1099#1093' '#1086#1088#1075#1072#1085#1080 +
        #1079#1072#1094#1080#1080
      ImageIndex = 1
      OnExecute = actRecalcExecute
      OnUpdate = actRecalcUpdate
    end
    object Action1: TAction [10]
      Caption = 'Action1'
    end
    object actZero: TAction
      Hint = #1053#1077' '#1086#1094#1077#1085#1080#1074#1072#1090#1100' '#1082#1088#1077#1076#1080#1090#1085#1091#1102' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1102
      ImageIndex = 2
      OnExecute = actZeroExecute
    end
    object actReport: TAction
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090
      ImageIndex = 41
      OnExecute = actReportExecute
    end
    object actShowHistory: TAction
      Caption = #1048#1089#1090#1086#1088#1080#1103'...'
      Hint = #1055#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1080#1089#1090#1086#1088#1080#1102'...'
      ImageIndex = 11
      OnExecute = actShowHistoryExecute
    end
    object actShowOper: TAction
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      ImageIndex = 11
      OnExecute = actShowOperExecute
    end
    object actKOState: TAction
      Caption = #1054#1094#1077#1085#1082#1072' '#1050#1054
      OnExecute = actKOStateExecute
      OnUpdate = actKOStateUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T002_ID, T055_Q_ID, T055_ID, T055_LONG_NAME,'
      ' T055_START_DATE,'
      ' T002_BANK_CODE, T002_BANK_NAME,'
      ' T035_DESC, T012_FICT_STATE_DESC, T013_FICT_STATE_DESC,'
      ' EVALUATION_STATE_DESC, T002_CALC_DATE, T002_CHANGE_DATE,'
      ' T001_OP_SUM_IN,'
      ' T001_OP_SUM_OUT, T001_OP_SUM_SALDO, T001_OP_SUM_OB,'
      ' T001_OP_SUM_IN_F,'
      ' T001_OP_SUM_OUT_F, T001_OP_SUM_SALDO_F,'
      ' T001_OP_SUM_OB_F, KO_STATE'
      'FROM  V_405_CLASS_KO_SALDO '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      05000000160000000E00000054003000300032005F0049004400010000000000
      1200000054003000350035005F0051005F00490044000100000000000E000000
      54003000350035005F00490044000100000000001C0000005400300035003500
      5F004C004F004E0047005F004E0041004D0045000100000000001E0000005400
      3000350035005F00530054004100520054005F00440041005400450001000000
      00001C00000054003000300032005F00420041004E004B005F0043004F004400
      45000100000000001C00000054003000300032005F00420041004E004B005F00
      4E0041004D0045000100000000001200000054003000330035005F0044004500
      530043000100000000001C00000054003000300032005F00430041004C004300
      5F0044004100540045000100000000002000000054003000300032005F004300
      480041004E00470045005F004400410054004500010000000000100000004B00
      4F005F00530054004100540045000100000000001C0000005400300030003100
      5F004F0050005F00530055004D005F0049004E000100000000001E0000005400
      3000300031005F004F0050005F00530055004D005F004F005500540001000000
      00002200000054003000300031005F004F0050005F00530055004D005F005300
      41004C0044004F000100000000001C00000054003000300031005F004F005000
      5F00530055004D005F004F004200010000000000200000005400300030003100
      5F004F0050005F00530055004D005F0049004E005F0046000100000000002200
      000054003000300031005F004F0050005F00530055004D005F004F0055005400
      5F0046000100000000002600000054003000300031005F004F0050005F005300
      55004D005F00530041004C0044004F005F004600010000000000200000005400
      3000300031005F004F0050005F00530055004D005F004F0042005F0046000100
      000000002A0000004500560041004C0055004100540049004F004E005F005300
      54004100540045005F0044004500530043000100000000002800000054003000
      310032005F0046004900430054005F00530054004100540045005F0044004500
      530043000100000000002800000054003000310033005F004600490043005400
      5F00530054004100540045005F004400450053004300010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
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
    object odsListT002_CALC_DATE: TDateTimeField
      FieldName = 'T002_CALC_DATE'
    end
    object odsListT002_CHANGE_DATE: TDateTimeField
      FieldName = 'T002_CHANGE_DATE'
    end
    object odsListT035_DESC: TStringField
      FieldName = 'T035_DESC'
      Size = 3
    end
    object odsListT055_Q_ID: TFloatField
      FieldName = 'T055_Q_ID'
      Required = True
    end
    object odsListKO_STATE: TFloatField
      FieldName = 'KO_STATE'
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
    object odsListT001_OP_SUM_OB: TFloatField
      FieldName = 'T001_OP_SUM_OB'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_IN_F: TFloatField
      FieldName = 'T001_OP_SUM_IN_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_OUT_F: TFloatField
      FieldName = 'T001_OP_SUM_OUT_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_SALDO_F: TFloatField
      FieldName = 'T001_OP_SUM_SALDO_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_OB_F: TFloatField
      FieldName = 'T001_OP_SUM_OB_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT002_ID: TIntegerField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsListEVALUATION_STATE_DESC: TStringField
      FieldName = 'EVALUATION_STATE_DESC'
      Size = 21
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
  object oqCheck: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :O_CHECK := PK_405_CLASSIFICATION.f_evaluated (:I_T055_ID);'
      'END;  ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A004F005F0043004800450043004B0005000000
      02000000590000000000140000003A0049005F0054003000350035005F004900
      4400040000000000000000000000}
    Left = 288
    Top = 304
  end
  object oqGetPeriodName: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_period PK_405_Time.t_T055_rec;'
      'BEGIN'
      '  v_period := PK_405_Time.f_get_period_by_id (:I_T055_ID);'
      '  :O_NAME := v_period.T055_LONG_NAME;'
      'END;  '
      '')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      04000000020000000E0000003A004F005F004E0041004D004500050000000000
      000000000000140000003A0049005F0054003000350035005F00490044000400
      00000000000000000000}
    Left = 288
    Top = 264
  end
  object oqRecalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.p_set_for_rerate_ko(:T002_ID);'
      'END;  ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003000300032005F004900440004000000
      0000000000000000}
    Left = 288
    Top = 384
  end
  object oqSetNoRating: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Classification.p_set_ko_not_for_rating(:T002_ID);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003000300032005F004900440004000000
      0000000000000000}
    Left = 291
    Top = 424
  end
  object oqIsNeedRevalue: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  :NEED_REVALUE := PK_405_Classification.f_is_need_revaluation_k' +
        'o(:T002_ID);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0054003000300032005F004900440004000000
      00000000000000001A0000003A004E004500450044005F005200450056004100
      4C0055004500050000000000000000000000}
    Left = 288
    Top = 344
  end
end
