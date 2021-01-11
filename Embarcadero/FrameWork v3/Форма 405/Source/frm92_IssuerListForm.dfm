inherited frm92_IssuerList: Tfrm92_IssuerList
  Left = 171
  Top = 307
  Caption = #1069#1084#1080#1090#1077#1085#1090#1099' '#1092#1086#1088#1084#1099' 405'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 676
    ExplicitLeft = 744
    ExplicitHeight = 412
  end
  inherited paRight: TPanel
    Left = 679
    Width = 1
    Visible = False
    ExplicitLeft = 747
    ExplicitWidth = 1
    ExplicitHeight = 412
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
  inherited paMain: TPanel
    Width = 676
    ExplicitWidth = 744
    ExplicitHeight = 412
    inherited ToolBar2: TToolBar
      Top = 93
      Width = 676
      ButtonWidth = 117
      ExplicitTop = 93
      ExplicitWidth = 744
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      object ToolButton8: TToolButton
        Left = 595
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 30
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 603
        Top = 0
        Action = actMakeMain
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 724
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object tbLinkEmitent: TToolButton
        Left = 732
        Top = 0
        Action = actLinkEmitent
        AutoSize = True
      end
      object ToolButton7: TToolButton
        Left = 818
        Top = 0
        Action = actUnlinkEmitent
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 897
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 30
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 905
        Top = 0
        Action = actGoto405
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 158
      Width = 676
      Height = 233
      AdvSettings.Indexes = <
        item
          FieldName = 'T001_OP_SUM_CROSS'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 5
              Caption = #1069#1084#1080#1090#1077#1085#1090
            end
            item
              FirstCol = 6
              LastCol = 8
              Caption = #1057#1074#1103#1079#1072#1085' '#1089' '#1101#1084#1080#1090#1077#1085#1090#1086#1084
            end
            item
              FirstCol = 9
              LastCol = 10
              Caption = #1054#1073#1086#1088#1086#1090' ($)'
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
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          Title.Caption = #1055#1077#1088#1080#1086#1076
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_ID_IS_MAIN'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090' '#1088#1072#1089#1087#1086#1079#1085#1072#1085
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_INCLUDE'
          Title.Caption = #1044#1083#1103' '#1089#1074#1103#1079#1099#1074#1072#1085#1080#1103
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          Title.Caption = #1048#1053#1053
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME_MAIN'
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN_MAIN'
          Title.Caption = #1048#1053#1053
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_SHORT_NAME'
          Title.Caption = #1043#1088#1091#1087#1087#1072' '#1101#1084#1080#1090#1077#1085#1090#1072
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1094'.'#1073'.'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS'
          Title.Caption = #1042#1089#1077#1075#1086
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS_Y'
          Title.Caption = #1056#1072#1089#1087#1086#1079#1085'. '#1101#1084#1080#1089#1089#1080#1080
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS_N'
          Title.Caption = #1053#1077#1088#1072#1089#1087#1086#1079#1085'. '#1101#1084#1080#1089#1089#1080#1080
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IS_PACK'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID_CH'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T042_ID'
          Title.Caption = 'ID '#1075#1088#1091#1087#1087#1099' '#1101#1084#1080#1090#1077#1085#1090#1086#1074
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 116
      Width = 676
      ExplicitTop = 116
      ExplicitWidth = 676
      inherited Panel1: TPanel
        Left = 649
        ExplicitLeft = 717
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 137
      Width = 676
      ExplicitTop = 137
      ExplicitWidth = 676
      inherited Panel1: TPanel
        Left = 649
        ExplicitLeft = 717
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 676
      Height = 93
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitWidth = 744
      object Label1: TLabel
        Left = 320
        Top = 7
        Width = 12
        Height = 13
        Caption = #1087#1086
      end
      inline fm01_Period1: Tfm01_Period
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
      inline fm01_Period2: Tfm01_Period
        Left = 336
        Top = 2
        Width = 187
        Height = 23
        TabOrder = 1
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
          Width = 183
          KeyField = 'T055_ID'
          ExplicitLeft = 4
          ExplicitWidth = 183
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
      object chbHidePack: TCheckBox
        Left = 5
        Top = 75
        Width = 115
        Height = 17
        Caption = #1057#1082#1088#1099#1074#1072#1090#1100' '#1087#1072#1082#1077#1090#1099
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object Button1: TButton
        Left = 532
        Top = 2
        Width = 75
        Height = 25
        Action = actApplayFilter
        TabOrder = 3
      end
      object chbPeriod: TCheckBox
        Left = 5
        Top = 6
        Width = 123
        Height = 17
        Caption = #1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076' c'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object chbType: TCheckBox
        Left = 5
        Top = 29
        Width = 121
        Height = 17
        Caption = #1058#1080#1087' '#1094'.'#1073'.'
        TabOrder = 5
      end
      object lcbType: TxxxDBLookupCheckCombo
        Left = 131
        Top = 26
        Width = 391
        Height = 21
        Hint = #1053#1077' '#1074#1099#1073#1088#1072#1085#1086
        DropDownCount = 16
        DisplayEmpty = #1053#1077' '#1074#1099#1073#1088#1072#1085#1086
        DisplaySelectAll = #1042#1089#1077
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked, lsSizeable]
        LookupField = 'T027_ID'
        LookupDisplay = 'T027_SEC_TYPE;T027_COMMENTS'
        LookupSource = dsType
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Advanced.ShowSelectionHint = True
        Advanced.Autorefresh = False
      end
      object cbIssuerGroup: TCheckBox
        Left = 5
        Top = 51
        Width = 119
        Height = 17
        Caption = #1043#1088#1091#1087#1087#1072' '#1101#1084#1080#1090#1077#1085#1090#1072
        TabOrder = 7
      end
      object lcbIssuerGroup: TxxxDBLookupCheckCombo
        Left = 131
        Top = 50
        Width = 391
        Height = 21
        DropDownCount = 6
        LookupField = 'T042_ID'
        LookupDisplay = 'T042_SHORT_NAME'
        LookupSource = dsIssuerGroup
        TabOrder = 8
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 445
    ExplicitWidth = 748
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 412
    ExplicitWidth = 748
    inherited OKBtn: TButton
      Left = 396
      ExplicitLeft = 396
    end
    inherited CancelBtn: TButton
      Left = 476
      ExplicitLeft = 476
    end
  end
  inherited dsList: TDataSource
    Top = 202
  end
  inherited ActionList: TActionList
    Left = 176
    Top = 323
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
    end
    object actApplayFilter: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = actApplayFilterExecute
    end
    object actLinkEmitent: TAction
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100
      Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1101#1084#1080#1090#1077#1085#1090#1072' '#1082' '#1075#1083#1072#1074#1085#1086#1084#1091
      ImageIndex = 28
      OnExecute = actLinkEmitentExecute
      OnUpdate = actLinkEmitentUpdate
    end
    object actMakeMain: TAction
      Caption = #1057#1076#1077#1083#1072#1090#1100' '#1075#1083#1072#1074#1085#1099#1084
      Hint = #1057#1076#1077#1083#1072#1090#1100' '#1101#1084#1080#1090#1077#1085#1090#1072' '#1075#1083#1072#1074#1085#1099#1084
      ImageIndex = 27
      OnExecute = actMakeMainExecute
      OnUpdate = actMakeMainUpdate
    end
    object actUnlinkEmitent: TAction
      Caption = #1054#1090#1074#1103#1079#1072#1090#1100
      Hint = #1054#1090#1074#1103#1079#1072#1090#1100' '#1101#1084#1080#1090#1077#1085#1090#1072' '#1086#1090' '#1075#1083#1072#1074#1085#1086#1075#1086
      ImageIndex = 29
      OnExecute = actUnlinkEmitentExecute
      OnUpdate = actUnlinkEmitentUpdate
    end
    object actGoto405: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' 405'
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' 405'
      ImageIndex = 13
      OnExecute = actGoto405Execute
      OnUpdate = actGoto405Update
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T055_ID,'
      '  T002_NUMB_IN_YEA_DESC,'
      '  T027_SEC_TYPE, '
      '  T028_ID,'
      '  T028_ID_IS_MAIN,'
      '  T036_INCLUDE,'
      '  IS_PACK,'
      '  T027_ID,'
      '  TO_CHAR(T027_ID) as T027_ID_CH, -- '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1072
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T028_ID_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T028_INN_MAIN,'
      '  T042_ID,'
      '  T042_SHORT_NAME,'
      '  T001_OP_COUNT,'
      '  T001_OP_SUM_CROSS,'
      '  T001_OP_SUM_CROSS_Y,'
      '  T001_OP_SUM_CROSS_N'
      'FROM   V_405_OP_BY_ISSUERS'
      '--WHERE T055_ID BETWEEN :T055_ID_S AND :T055_ID_E'
      ' '
      ' '
      ' '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      05000000140000000E00000054003000350035005F0049004400010000000000
      1C00000054003000320038005F00530048004F0054005F004E0041004D004500
      0100000000001A00000054003000300031005F004F0050005F0043004F005500
      4E0054000100000000002200000054003000300031005F004F0050005F005300
      55004D005F00430052004F00530053000100000000000E000000540030003200
      38005F00490044000100000000000E00000054003000320037005F0049004400
      0100000000002600000054003000300031005F004F0050005F00530055004D00
      5F00430052004F00530053005F00590001000000000026000000540030003000
      31005F004F0050005F00530055004D005F00430052004F00530053005F004E00
      0100000000001000000054003000320038005F0049004E004E00010000000000
      1800000054003000330036005F0049004E0043004C0055004400450001000000
      00002A00000054003000300032005F004E0055004D0042005F0049004E005F00
      5900450041005F0044004500530043000100000000001A000000540030003200
      37005F005300450043005F0054005900500045000100000000000E0000004900
      53005F005000410043004B000100000000001400000054003000320037005F00
      490044005F00430048000100000000001E00000054003000320038005F004900
      44005F00490053005F004D00410049004E000100000000001800000054003000
      320038005F00490044005F004D00410049004E00010000000000260000005400
      3000320038005F00530048004F0054005F004E0041004D0045005F004D004100
      49004E000100000000001A00000054003000320038005F0049004E004E005F00
      4D00410049004E000100000000001E00000054003000340032005F0053004800
      4F00520054005F004E0041004D0045000100000000000E000000540030003400
      32005F0049004400010000000000}
    Top = 202
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_ID_IS_MAIN: TStringField
      FieldName = 'T028_ID_IS_MAIN'
      Size = 3
    end
    object odsListT036_INCLUDE: TStringField
      DisplayWidth = 1
      FieldName = 'T036_INCLUDE'
      Size = 3
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_OP_SUM_CROSS_Y: TFloatField
      FieldName = 'T001_OP_SUM_CROSS_Y'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_OP_SUM_CROSS_N: TFloatField
      FieldName = 'T001_OP_SUM_CROSS_N'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListIS_PACK: TFloatField
      FieldName = 'IS_PACK'
    end
    object odsListT028_ID_MAIN: TFloatField
      FieldName = 'T028_ID_MAIN'
    end
    object odsListT028_SHOT_NAME_MAIN: TStringField
      FieldName = 'T028_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListT028_INN_MAIN: TStringField
      FieldName = 'T028_INN_MAIN'
      Size = 255
    end
    object odsListT027_ID_CH: TStringField
      FieldName = 'T027_ID_CH'
      Size = 40
    end
    object odsListT042_SHORT_NAME: TStringField
      FieldName = 'T042_SHORT_NAME'
      Size = 255
    end
    object odsListT042_ID: TFloatField
      FieldName = 'T042_ID'
    end
  end
  inherited pkList: TOraclePackage
    Top = 234
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_as_main(:T028_ID, '#39'N'#39');'
      'END;')
    Variables.Data = {
      0400000001000000100000003A0054003000320038005F004900440004000000
      0000000000000000}
    Top = 271
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Issuers.p_issuer_update_inn(:T028_ID, :T028_INN);'
      'end;')
    Variables.Data = {
      0400000002000000100000003A0054003000320038005F004900440004000000
      0000000000000000120000003A0054003000320038005F0049004E004E000500
      00000000000000000000}
    Top = 271
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:T028_ID);'
      'END;')
    Variables.Data = {
      0400000001000000100000003A0054003000320038005F004900440004000000
      0000000000000000}
    Top = 271
  end
  inherited oqDupl: TOracleQuery
    Top = 271
  end
  object oqLinkEmitent: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_link(:i_ID, :i_PARENT_ID);'
      '  Commit;'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      04000000020000000A0000003A0049005F004900440004000000000000000000
      0000180000003A0049005F0050004100520045004E0054005F00490044000400
      00000000000000000000}
    Left = 755
    Top = 320
  end
  object odsType: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'
      '       T027_SEC_TYPE,'
      '       T027_COMMENTS,'
      '       T027_SEC_TYPE || '#39' - '#39' || T027_COMMENTS DESC_FLD'
      'FROM V_405_SEC_TYPE'
      'ORDER BY T027_SEC_TYPE')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000040000001000000044004500530043005F0046004C00440001000000
      00000E00000054003000320037005F00490044000100000000001A0000005400
      3000320037005F005300450043005F0054005900500045000100000000001A00
      000054003000320037005F0043004F004D004D0045004E005400530001000000
      0000}
    Session = dmMain.OracleSession
    Left = 265
    Top = 25
    object odsTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsTypeDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 513
    end
    object odsTypeT027_SEC_TYPE: TStringField
      DisplayWidth = 5
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsTypeT027_COMMENTS: TStringField
      FieldName = 'T027_COMMENTS'
      Required = True
      Size = 255
    end
  end
  object dsType: TDataSource
    DataSet = odsType
    Left = 305
    Top = 25
  end
  object odsIssuerGroup: TOracleDataSet
    SQL.Strings = (
      'SELECT T042_ID,'
      '       T042_SHORT_NAME'
      'FROM   V_405_IIPS_ISSUER_GROUP'
      'WHERE  T042_ID < 100'
      'UNION ALL'
      'SELECT -1,'
      '       '#39#1053#1077' '#1089#1074#1103#1079#1072#1085#1085#1099#1077#39
      'FROM DUAL')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000E00000054003000340032005F0049004400010000000000
      1E00000054003000340032005F00530048004F00520054005F004E0041004D00
      4500010000000000}
    Session = dmMain.OracleSession
    Left = 360
    Top = 48
  end
  object dsIssuerGroup: TDataSource
    DataSet = odsIssuerGroup
    Left = 408
    Top = 48
  end
end
