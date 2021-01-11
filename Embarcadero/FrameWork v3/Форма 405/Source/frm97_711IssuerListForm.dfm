inherited frm97_711IssuerList: Tfrm97_711IssuerList
  Left = 19
  Top = 106
  Caption = #1069#1084#1080#1090#1077#1085#1090#1099' '#1092#1086#1088#1084#1099' 711'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 586
    Visible = True
    ExplicitLeft = 883
    ExplicitHeight = 546
  end
  inherited paRight: TPanel
    Left = 589
    Width = 91
    ExplicitLeft = 589
    ExplicitWidth = 91
    ExplicitHeight = 391
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 91
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    inline fm27_SecType: Tfm41_SecTypeForLinks
      Left = 0
      Top = 51
      Width = 91
      Height = 340
      Align = alClient
      TabOrder = 1
      ExplicitTop = 51
      ExplicitWidth = 91
      ExplicitHeight = 340
      inherited Label1: TLabel
        Width = 40
        ExplicitWidth = 40
      end
      inherited gr01: TxxxDBGrid
        Left = 0
        Top = 0
        Width = 91
        Height = 340
        Align = alClient
        TitleFont.Name = 'MS Sans Serif'
      end
      inherited ods01: TOracleDataSet
        Left = 8
        Top = 16
      end
      inherited ds01: TDataSource
        Left = 40
        Top = 16
      end
      inherited PopupMenu: TPopupMenu
        Left = 40
        Top = 45
      end
    end
  end
  inherited paMain: TPanel
    Width = 586
    ExplicitWidth = 883
    ExplicitHeight = 546
    inherited ToolBar2: TToolBar
      Top = 89
      Width = 586
      ButtonWidth = 133
      ExplicitTop = 89
      ExplicitWidth = 883
      inherited ToolButton18: TToolButton
        Left = 101
        Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' 3.2'
        Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' 3.2'
        ExplicitLeft = 101
      end
      inherited ToolButton19: TToolButton
        Left = 202
        ExplicitLeft = 202
      end
      inherited ToolButton4: TToolButton
        Left = 276
        ExplicitLeft = 276
      end
      inherited ToolBar1: TToolBar
        Left = 284
        ExplicitLeft = 284
      end
      inherited sp02: TToolButton
        Left = 353
        ExplicitLeft = 353
      end
      inherited tbSimFilter: TToolButton
        Left = 361
        ExplicitLeft = 361
      end
      inherited tbSep01: TToolButton
        Left = 445
        ExplicitLeft = 445
      end
      inherited tlbSearch: TToolBar
        Left = 453
        ExplicitLeft = 453
      end
      inherited ToolButton13: TToolButton
        Left = 513
        ExplicitLeft = 513
      end
      inherited tbExcel: TToolButton
        Left = 521
        AutoSize = True
        ExplicitLeft = 521
      end
      object ToolButton5: TToolButton
        Left = 632
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object tbLinkEmitent: TToolButton
        Left = 640
        Top = 0
        Action = actLinkEmitent
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 154
      Width = 586
      Height = 237
      OnDblClick = nil
      AdvSettings.Indexes = <
        item
          FieldName = 'T052_SUM'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 5
              LastCol = 7
              Caption = #1054#1073#1086#1088#1086#1090' ($)'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_ID_IS_MAIN'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090' '#1088#1072#1089#1087#1086#1079#1085#1072#1085
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_INCLUDE'
          Title.Caption = #1044#1083#1103' '#1089#1074#1103#1079#1099#1074#1072#1085#1080#1103
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 325
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
          FieldName = 'T064_COUNT'
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1094'.'#1073'.'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T052_SUM'
          Title.Caption = #1042#1089#1077#1075#1086
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T052_SUM_Y'
          Title.Caption = #1056#1072#1089#1087#1086#1079#1085'. '#1101#1084#1080#1089#1089#1080#1080
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T052_SUM_N'
          Title.Caption = #1053#1077#1088#1072#1089#1087#1086#1079#1085'. '#1101#1084#1080#1089#1089#1080#1080
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          Title.Caption = 'ID '#1090#1080#1087#1072' '#1094'.'#1073'.'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 112
      Width = 586
      ExplicitTop = 112
      ExplicitWidth = 586
      inherited Panel1: TPanel
        Left = 559
        ExplicitLeft = 856
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 133
      Width = 586
      ExplicitTop = 133
      ExplicitWidth = 586
      inherited Panel1: TPanel
        Left = 559
        ExplicitLeft = 856
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 586
      Height = 89
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitWidth = 883
      object SpeedButton1: TSpeedButton
        Left = 435
        Top = 2
        Width = 75
        Height = 22
        Action = actApplayFilter
        Flat = True
      end
      inline Tfm01_Period1: Tfm01_Period
        Left = 127
        Top = 2
        Width = 304
        Height = 23
        TabOrder = 0
        ExplicitLeft = 127
        ExplicitTop = 2
        ExplicitWidth = 304
        inherited Label1: TLabel
          Width = 0
          Caption = '   '#1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076' c'
          Visible = False
          ExplicitWidth = 0
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 4
          Width = 295
          KeyField = 'T055_ID'
          ExplicitLeft = 4
          ExplicitWidth = 295
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
          Left = 56
          Top = 65530
        end
      end
      object chbPeriod: TCheckBox
        Left = 5
        Top = 6
        Width = 123
        Height = 17
        Caption = #1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object chbRazdel: TCheckBox
        Left = 5
        Top = 34
        Width = 123
        Height = 17
        Caption = #1056#1072#1079#1076#1077#1083
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object chbTypes: TCheckBox
        Left = 5
        Top = 62
        Width = 123
        Height = 17
        Caption = #1058#1080#1087' '#1089#1095#1077#1090#1072
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      inline fm14_711Code1: Tfm14_711Code
        Left = 127
        Top = 57
        Width = 304
        Height = 21
        TabOrder = 4
        ExplicitLeft = 127
        ExplicitTop = 57
        ExplicitWidth = 304
        inherited btnSelect: TSpeedButton
          Left = 62
          ExplicitLeft = 62
        end
        inherited lcbSelect: TDBLookupComboBox
          Left = 4
          Width = 295
          ExplicitLeft = 4
          ExplicitWidth = 295
        end
      end
      inline fm04_LookUp1: Tfm04_LookUp
        Left = 127
        Top = 26
        Width = 304
        Height = 26
        TabOrder = 5
        ExplicitLeft = 127
        ExplicitTop = 26
        ExplicitWidth = 304
        inherited Label1: TLabel
          Width = 70
          Visible = False
          ExplicitWidth = 70
        end
        inherited Lookup01: TxxxDBLookupCheckCombo
          Left = 4
          Width = 295
          LookupField = 'T054_ID'
          LookupDisplay = 'T054_NAME'
          ExplicitLeft = 4
          ExplicitWidth = 295
        end
        inherited odsList: TOracleDataSet
          SQL.Strings = (
            'select '
            'T054_ID'
            ', T054_NAME '
            'from T054_711_PART')
          QBEDefinition.QBEFieldDefs = {
            05000000020000000E00000054003000350034005F0049004400010000000000
            1200000054003000350034005F004E0041004D004500010000000000}
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 579
    ExplicitWidth = 977
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 546
    ExplicitWidth = 977
    inherited OKBtn: TButton
      Left = 625
      ExplicitLeft = 625
    end
    inherited CancelBtn: TButton
      Left = 705
      ExplicitLeft = 705
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' 3.1'
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' 3.1'
      ImageIndex = 1
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    object actApplayFilter: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = actApplayFilterExecute
    end
    object actLinkEmitent: TAction
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1101#1084#1080#1090#1077#1085#1090#1072
      Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1101#1084#1080#1090#1077#1085#1090#1072
      ImageIndex = 13
      OnExecute = actLinkEmitentExecute
      OnUpdate = actLinkEmitentUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      '       T028_ID, '
      '       T027_ID,'
      '       T028_ID_IS_MAIN,'
      '       T036_INCLUDE,'
      '       T028_SHOT_NAME'
      '       , T028_INN'
      '       , T025_ID'
      '       , SUM(T064_COUNT) T064_COUNT'
      '       , SUM(T052_SUM) T052_SUM,  '
      '       SUM(T052_SUM_Y) T052_SUM_Y, '
      '       SUM(T052_SUM_N) T052_SUM_N'
      'FROM   V_405_OP_BY_ISSUERS_711'
      'WHERE'
      '((:FLAG_T055 = 0) OR (T055_ID = :T055_ID))'
      'AND ((:FLAG_T054 = 0) OR (T054_ID = :T054_ID))'
      'AND ((:FLAG_T053 = 0) OR (T053_ID = :T053_ID))'
      'GROUP BY T055_ID,'
      '         T028_ID, '
      '         T027_ID,'
      '         T028_ID_IS_MAIN,'
      '         T036_INCLUDE,'
      '         T028_SHOT_NAME'
      '         , T028_INN'
      '         , T025_ID ')
    Variables.Data = {
      0400000006000000100000003A0054003000350035005F004900440004000000
      0000000000000000100000003A0054003000350034005F004900440004000000
      0000000000000000100000003A0054003000350033005F004900440004000000
      0000000000000000140000003A0046004C00410047005F005400300035003500
      030000000000000000000000140000003A0046004C00410047005F0054003000
      35003400030000000000000000000000140000003A0046004C00410047005F00
      5400300035003300030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000C0000000E00000054003000350035005F0049004400010000000000
      1E00000054003000320038005F00490044005F00490053005F004D0041004900
      4E000100000000001C00000054003000320038005F00530048004F0054005F00
      4E0041004D0045000100000000000E00000054003000320038005F0049004400
      0100000000000E00000054003000320037005F00490044000100000000001000
      000054003000320038005F0049004E004E000100000000001400000054003000
      360034005F0043004F0055004E00540001000000000010000000540030003500
      32005F00530055004D000100000000001400000054003000350032005F005300
      55004D005F0059000100000000001400000054003000350032005F0053005500
      4D005F004E000100000000001800000054003000330036005F0049004E004300
      4C005500440045000100000000000E00000054003000320035005F0049004400
      010000000000}
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
    object odsListT064_COUNT: TFloatField
      FieldName = 'T064_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT052_SUM: TFloatField
      FieldName = 'T052_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT052_SUM_Y: TFloatField
      FieldName = 'T052_SUM_Y'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT052_SUM_N: TFloatField
      FieldName = 'T052_SUM_N'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT036_INCLUDE: TStringField
      FieldName = 'T036_INCLUDE'
      Size = 3
    end
    object odsListT025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
  end
  object oqLinkEmitent: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_link(:i_ID, :i_PARENT_ID);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      04000000020000000A0000003A0049005F004900440004000000000000000000
      0000180000003A0049005F0050004100520045004E0054005F00490044000400
      00000000000000000000}
    Left = 763
    Top = 24
  end
end
