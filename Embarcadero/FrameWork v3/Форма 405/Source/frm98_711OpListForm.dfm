inherited frm98_711OpList: Tfrm98_711OpList
  Left = 213
  Top = 367
  Caption = #1069#1084#1080#1089#1089#1080#1080' '#1092#1086#1088#1084#1099' 711'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 586
    Visible = True
    ExplicitLeft = 1190
    ExplicitHeight = 497
  end
  inherited paRight: TPanel
    Left = 589
    Width = 91
    Visible = False
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
      Visible = False
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
        Visible = False
      end
      inherited ods01: TOracleDataSet
        MasterFields = ''
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
    ExplicitWidth = 1190
    ExplicitHeight = 497
    inherited ToolBar2: TToolBar
      Width = 586
      ButtonWidth = 131
      ExplicitWidth = 1190
      inherited ToolButton17: TToolButton
        Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' 3.1'
        ImageIndex = 1
      end
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
      object tbLinkEmission: TToolButton
        Left = 632
        Top = 0
        Width = 8
        Caption = 'tbLinkEmission'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 640
        Top = 0
        AutoSize = True
        Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1101#1084#1080#1089#1089#1080#1102
        ImageIndex = 13
        OnClick = actLinkEmissionExecute
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 586
      OnDblClick = nil
      AdvSettings.Indexes = <
        item
          FieldName = 'T064_COUNT'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 8
              Caption = #1069#1084#1080#1089#1089#1080#1103
            end
            item
              FirstCol = 10
              LastCol = 12
              Caption = #1054#1073#1086#1088#1086#1090' ($)'
            end>
        end
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 4
              Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1092#1086#1088#1084#1072' 711'
            end
            item
              FirstCol = 5
              LastCol = 8
              Caption = #1056#1077#1077#1089#1090#1088
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T030_ID_IS_MAIN'
          Title.Caption = #1056#1072#1089#1087#1086#1079#1085#1072#1085#1072
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          Title.Caption = #1048#1053#1053
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          Title.Caption = #1058#1080#1087' '#1094'.'#1073'.'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          Title.Caption = #1056#1077#1075'.'#1085#1086#1084#1077#1088' '#1094'.'#1073'.'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME_MAIN'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN_MAIN'
          Title.Caption = #1048#1053#1053
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE_MAIN'
          Title.Caption = #1058#1080#1087' '#1094'.'#1073'.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN_MAIN'
          Title.Caption = #1056#1077#1075'.'#1085#1086#1084#1077#1088' '#1094'.'#1073'.'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T064_COUNT'
          Title.Alignment = taCenter
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
      Width = 586
      ExplicitWidth = 586
      inherited Panel1: TPanel
        Left = 559
        ExplicitLeft = 1163
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 586
      ExplicitWidth = 586
      inherited Panel1: TPanel
        Left = 559
        ExplicitLeft = 1163
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 530
    ExplicitWidth = 1284
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 497
    ExplicitWidth = 1284
    inherited OKBtn: TButton
      Left = 947
      ExplicitLeft = 947
    end
    inherited CancelBtn: TButton
      Left = 1027
      ExplicitLeft = 1027
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' 3.1'
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Caption = ''
      Hint = ''
    end
    object actLinkEmission: TAction
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1101#1084#1080#1089#1089#1080#1102
      Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1101#1084#1080#1089#1089#1080#1102
      ImageIndex = 13
      OnExecute = actLinkEmissionExecute
    end
    object actApplyFilter: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = actApplyFilterExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT     T055_ID,'
      '           T028_MAIN_ID,'
      '           T030_ID,'
      '           T030_ID_IS_MAIN,'
      '           T028_ID,'
      '           T028_SHOT_NAME,'
      '           T028_INN,'
      '           T027_ID,'
      '           T027_SEC_TYPE,'
      '           T026_ID,'
      '           T026_SEC_REGN,'
      '           SUM(T064_COUNT) AS T064_COUNT,'
      '           SUM(T052_SUM) AS T052_SUM,'
      '           SUM(T052_SUM_Y) AS T052_SUM_Y,'
      '           SUM(T052_SUM_N) AS T052_SUM_N,'
      '           T030_ID_MAIN,'
      '           T028_ID_MAIN,'
      '           T028_SHOT_NAME_MAIN,'
      '           T028_INN_MAIN,'
      '           T027_ID_MAIN,'
      '           T027_SEC_TYPE_MAIN,'
      '           T026_ID_MAIN,'
      '           T026_SEC_REGN_MAIN '
      'FROM       V_405_OP_BY_EMISSIONS_711 V1'
      'WHERE      T028_MAIN_ID = :T028_ID'
      'AND        (:FLAG_T055 = 0'
      'OR           T055_ID = :T055_ID)'
      'AND        (:FLAG_T054 = 0'
      'OR           T054_ID = :T054_ID)'
      'AND        (:FLAG_T053 = 0'
      'OR           T053_ID = :T053_ID)'
      'GROUP BY   V1.T055_ID,'
      '           V1.T028_MAIN_ID,'
      '           V1.T030_ID,'
      '           V1.T030_ID_IS_MAIN,'
      '           V1.T028_ID,'
      '           V1.T028_SHOT_NAME,'
      '           V1.T028_INN,'
      '           V1.T027_ID,'
      '           V1.T027_SEC_TYPE,'
      '           V1.T026_ID,'
      '           V1.T026_SEC_REGN,'
      '           V1.T030_ID_MAIN,'
      '           V1.T028_ID_MAIN,'
      '           V1.T028_SHOT_NAME_MAIN,'
      '           V1.T028_INN_MAIN,'
      '           V1.T027_ID_MAIN,'
      '           V1.T027_SEC_TYPE_MAIN,'
      '           V1.T026_ID_MAIN,'
      '           V1.T026_SEC_REGN_MAIN ')
    Variables.Data = {
      0400000007000000100000003A0054003000350035005F004900440004000000
      0000000000000000100000003A0054003000320038005F004900440004000000
      0000000000000000100000003A0054003000350034005F004900440004000000
      0000000000000000100000003A0054003000350033005F004900440004000000
      0000000000000000140000003A0046004C00410047005F005400300035003500
      040000000000000000000000140000003A0046004C00410047005F0054003000
      35003400040000000000000000000000140000003A0046004C00410047005F00
      5400300035003300040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000170000000E00000054003000350035005F0049004400010000000000
      0E00000054003000320038005F00490044000100000000001A00000054003000
      320037005F005300450043005F0054005900500045000100000000000E000000
      54003000320037005F0049004400010000000000180000005400300032003800
      5F004D00410049004E005F00490044000100000000001E000000540030003300
      30005F00490044005F00490053005F004D00410049004E000100000000001C00
      000054003000320038005F00530048004F0054005F004E0041004D0045000100
      000000001000000054003000320038005F0049004E004E000100000000000E00
      000054003000320036005F00490044000100000000001A000000540030003200
      36005F005300450043005F005200450047004E000100000000000E0000005400
      3000330030005F00490044000100000000001400000054003000360034005F00
      43004F0055004E0054000100000000001000000054003000350032005F005300
      55004D000100000000001400000054003000350032005F00530055004D005F00
      59000100000000001400000054003000350032005F00530055004D005F004E00
      0100000000001800000054003000330030005F00490044005F004D0041004900
      4E000100000000001800000054003000320038005F00490044005F004D004100
      49004E000100000000002600000054003000320038005F00530048004F005400
      5F004E0041004D0045005F004D00410049004E000100000000001A0000005400
      3000320038005F0049004E004E005F004D00410049004E000100000000001800
      000054003000320037005F00490044005F004D00410049004E00010000000000
      2400000054003000320037005F005300450043005F0054005900500045005F00
      4D00410049004E000100000000001800000054003000320036005F0049004400
      5F004D00410049004E000100000000002400000054003000320036005F005300
      450043005F005200450047004E005F004D00410049004E00010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT028_MAIN_ID: TFloatField
      FieldName = 'T028_MAIN_ID'
    end
    object odsListT030_ID_IS_MAIN: TStringField
      FieldName = 'T030_ID_IS_MAIN'
      Size = 3
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
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
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
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
    object odsListT030_ID_MAIN: TFloatField
      FieldName = 'T030_ID_MAIN'
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
    object odsListT027_ID_MAIN: TFloatField
      FieldName = 'T027_ID_MAIN'
    end
    object odsListT027_SEC_TYPE_MAIN: TStringField
      FieldName = 'T027_SEC_TYPE_MAIN'
      Size = 255
    end
    object odsListT026_ID_MAIN: TFloatField
      FieldName = 'T026_ID_MAIN'
    end
    object odsListT026_SEC_REGN_MAIN: TStringField
      FieldName = 'T026_SEC_REGN_MAIN'
      Size = 265
    end
  end
  object oqLinkEmission: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_add_emis_link(:i_ID, :i_PARENT_ID);'
      '  Commit;'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      04000000020000000A0000003A0049005F004900440004000000000000000000
      0000180000003A0049005F0050004100520045004E0054005F00490044000400
      00000000000000000000}
    Left = 715
    Top = 24
  end
end
