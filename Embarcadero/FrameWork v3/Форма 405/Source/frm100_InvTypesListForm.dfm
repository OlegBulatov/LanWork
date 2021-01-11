inherited frm100_InvTypesList: Tfrm100_InvTypesList
  Left = 17
  Top = 270
  Caption = #1058#1080#1087#1099' '#1080#1085#1074#1077#1089#1090#1080#1094#1080#1081
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Top = 153
    Height = 238
    ExplicitLeft = 945
    ExplicitTop = 153
    ExplicitHeight = 431
  end
  inherited paRight: TPanel
    Top = 153
    Height = 238
    ExplicitLeft = 948
    ExplicitTop = 153
    ExplicitHeight = 431
  end
  inherited paMain: TPanel
    Top = 153
    Height = 238
    ExplicitTop = 153
    ExplicitWidth = 945
    ExplicitHeight = 431
    inherited ToolBar2: TToolBar
      Top = 23
      ButtonWidth = 137
      ExplicitTop = 23
      ExplicitWidth = 945
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 595
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 603
        Top = 0
        Action = actGoto405
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 88
      Height = 150
      AdvSettings.Indexes = <
        item
          FieldName = 'SUM_NOCOUNT'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 2
              Caption = #1069#1084#1080#1090#1077#1085#1090
            end
            item
              FirstCol = 9
              LastCol = 17
              Caption = #1057#1091#1084#1084#1072
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T037_SHOT_NAME'
          Title.Caption = #1042#1080#1076
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          Title.Caption = #1050#1086#1076
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_NAME'
          Title.Caption = #1056#1077#1079#1080#1076#1077#1085#1090
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_CODE'
          Title.Caption = #1048#1053#1053
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_NAME'
          Title.Caption = #1053#1077#1088#1077#1079#1080#1076#1077#1085#1090
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_CODE'
          Title.Caption = #1057#1090#1088#1072#1085#1072
          Width = 50
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
          FieldName = 'T011_TYPE_ID'
          Title.Caption = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          Title.Caption = #1050#1086#1083'. '#1094'.'#1073'.'
          Width = 58
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
          FieldName = 'SUM_NOCOUNT'
          Title.Caption = #1053#1077#1088#1072#1079#1086#1073#1088#1072#1085#1085#1099#1077
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_CASE'
          Title.Caption = #1055#1086#1088#1090#1092#1077#1083#1100#1085#1099#1077
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_STRAIGHT'
          Title.Caption = #1055#1088#1103#1084#1099#1077
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_BACK_STRAIGHT'
          Title.Caption = #1054#1073#1088#1072#1090#1085#1099#1077' '#1087#1088#1103#1084#1099#1077
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_SISTER'
          Title.Caption = #1057#1077#1089#1090#1088#1080#1085#1089#1082#1080#1077
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_OTH_YCH'
          Title.Caption = #1055#1088#1086#1095#1080#1077' '#1091#1095#1072#1089#1090#1080#1077
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_OTHER'
          Title.Caption = #1053#1077' '#1091#1095#1080#1090'.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          Title.Caption = #1050#1086#1076' '#1074#1088#1077#1084#1077#1085#1085#1086#1075#1086' '#1087#1077#1088#1080#1086#1076#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          Title.Caption = #1050#1086#1076' '#1090#1080#1087#1072' '#1094#1077#1085#1085#1086#1081' '#1073#1091#1084#1072#1075#1080
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
          FieldName = 'T006_ID'
          Title.Caption = #1050#1086#1076' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1087#1083#1072#1090#1077#1078#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T042_ID'
          Title.Caption = #1050#1086#1076' '#1075#1088#1091#1087#1087#1099' '#1101#1084#1080#1089#1089#1080#1081
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_IS_RANSOM_DESC'
          Title.Caption = #1055#1088#1080#1079#1085#1072#1082' '#1074#1099#1082#1091#1087#1072' '#1101#1084#1080#1090#1077#1085#1090#1086#1084
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_IS_RANSOM'
          Title.Caption = #1050#1086#1076' '#1087#1088#1080#1079#1085#1072#1082#1072' '#1074#1099#1082#1091#1087#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IS_PACK'
          Title.Caption = #1055#1072#1082#1077#1090
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OTH_COMMENTS'
          Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' OTH'
          Width = 96
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 46
      ExplicitTop = 46
      inherited Panel1: TPanel
        ExplicitLeft = 918
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 67
      ExplicitTop = 67
      inherited Panel1: TPanel
        ExplicitLeft = 918
      end
    end
    object ToolBar3: TToolBar
      Left = 0
      Top = 0
      Width = 677
      Height = 23
      ButtonWidth = 121
      Caption = 'ToolBar2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = dm02_Picters.ilCommonPictures
      List = True
      ParentFont = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 4
      Wrapable = False
      ExplicitWidth = 945
      object ToolButton32: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = #1055#1086#1088#1090#1092#1077#1083#1100#1085#1099#1077
        DropdownMenu = pmPortf
        ImageIndex = 1
        OnClick = actSetInvCaseExecute
      end
      object ToolButton30: TToolButton
        Left = 102
        Top = 0
        Action = actSetInvStraight
        AutoSize = True
      end
      object ToolButton31: TToolButton
        Left = 175
        Top = 0
        Action = actSetInvBackStraight
      end
      object ToolButton5: TToolButton
        Left = 296
        Top = 0
        Action = actSetInvSister
      end
      object ToolButton6: TToolButton
        Left = 417
        Top = 0
        Action = actSetInvOthYch
      end
      object ToolButton33: TToolButton
        Left = 538
        Top = 0
        Action = actSetInvNoCount
        AutoSize = True
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 617
    ExplicitWidth = 948
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 584
    ExplicitWidth = 948
    inherited OKBtn: TButton
      Left = 1197
      ExplicitLeft = 1197
    end
    inherited CancelBtn: TButton
      Left = 1277
      ExplicitLeft = 1277
    end
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 0
    Width = 680
    Height = 153
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitWidth = 948
    object Label1: TLabel
      Left = 306
      Top = 7
      Width = 12
      Height = 13
      Caption = #1087#1086
    end
    object Label2: TLabel
      Left = 7
      Top = 6
      Width = 97
      Height = 13
      Caption = #1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076' c'
    end
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 40
      Height = 13
      Caption = #1058#1080#1087' '#1094'.'#1073'.'
    end
    object Label4: TLabel
      Left = 8
      Top = 80
      Width = 56
      Height = 13
      Caption = #1056#1077#1079#1080#1076#1077#1085#1090#1099
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 70
      Height = 13
      Caption = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
    end
    object Label6: TLabel
      Left = 8
      Top = 130
      Width = 84
      Height = 13
      Caption = #1055#1088#1080#1079#1085#1072#1082' '#1074#1099#1082#1091#1087#1072
    end
    object lbStatus: TLabel
      Left = 520
      Top = 128
      Width = 38
      Height = 13
      Caption = 'lbStatus'
    end
    object Label7: TLabel
      Left = 306
      Top = 130
      Width = 31
      Height = 13
      Caption = #1055#1072#1082#1077#1090
    end
    object Button1: TButton
      Left = 511
      Top = 1
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 0
    end
    inline Tfm01_Period2: Tfm01_Period
      Left = 322
      Top = 2
      Width = 187
      Height = 23
      TabOrder = 1
      ExplicitLeft = 322
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
        QBEDefinition.QBEFieldDefs = {
          05000000030000002000000054003000300032005F004E0055004D0042005F00
          49004E005F005900450041000100000000002A00000054003000300032005F00
          4E0055004D0042005F0049004E005F005900450041005F005400450058005400
          0100000000000E00000054003000350035005F0049004400010000000000}
        Left = 56
        Top = 65530
      end
    end
    inline Tfm01_Period1: Tfm01_Period
      Left = 113
      Top = 2
      Width = 187
      Height = 23
      TabOrder = 2
      ExplicitLeft = 113
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
        QBEDefinition.QBEFieldDefs = {
          05000000030000002000000054003000300032005F004E0055004D0042005F00
          49004E005F005900450041000100000000002A00000054003000300032005F00
          4E0055004D0042005F0049004E005F005900450041005F005400450058005400
          0100000000000E00000054003000350035005F0049004400010000000000}
        Left = 56
        Top = 65530
      end
    end
    object lcbType: TDBLookupComboBox
      Left = 117
      Top = 27
      Width = 390
      Height = 21
      DropDownRows = 10
      KeyField = 'T027_ID'
      ListField = 'DESC_FLD'
      ListSource = dsType
      TabOrder = 3
    end
    object cb_Residents: TComboBox
      Left = 117
      Top = 76
      Width = 390
      Height = 21
      Style = csDropDownList
      TabOrder = 4
      OnChange = cb_ResidentsChange
      Items.Strings = (
        #1042#1089#1077' '#1088#1077#1079#1080#1076#1077#1085#1090#1099
        #1042#1089#1077' '#1088#1077#1079#1080#1076#1077#1085#1090#1099', '#1082#1088#1086#1084#1077' '#1050#1054)
    end
    object CheckBox1: TCheckBox
      Left = 511
      Top = 76
      Width = 150
      Height = 17
      Caption = #1057#1082#1088#1099#1090#1100' '#1082#1086#1083#1086#1085#1082#1091' "'#1042#1080#1076'"'
      TabOrder = 5
      OnClick = CheckBox1Click
    end
    inline fm35_EmissGroup1: Tfm35_EmissGroup
      Left = 4
      Top = 99
      Width = 519
      Height = 30
      TabOrder = 6
      ExplicitLeft = 4
      ExplicitTop = 99
      ExplicitWidth = 519
      ExplicitHeight = 30
      inherited Label1: TLabel
        Left = 4
        Top = 6
        Width = 82
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 82
      end
      inherited Lookup01: TxxxDBLookupCheckCombo
        Left = 113
        Top = 2
        Width = 391
        ExplicitLeft = 113
        ExplicitTop = 2
        ExplicitWidth = 391
      end
    end
    object lcbOpCode: TxxxDBLookupCheckCombo
      Left = 117
      Top = 51
      Width = 390
      Height = 21
      DropDownCount = 11
      DisplayEmpty = #1053#1077' '#1074#1099#1073#1088#1072#1085#1086
      DisplaySelectAll = #1042#1089#1077
      EmptyItemColor = clWindowText
      ListStyle = [lsChecked]
      LookupField = 'T011_TYPE_ID'
      LookupDisplay = 'DESC_FLD'
      LookupSource = dsOpCode
      TabOrder = 7
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object lcbRansom: TxxxDBLookupCheckCombo
      Left = 117
      Top = 126
      Width = 181
      Height = 21
      DropDownCount = 5
      DisplayEmpty = #1053#1077' '#1074#1099#1073#1088#1072#1085#1086
      DisplaySelectAll = #1042#1089#1077
      EmptyItemColor = clWindowText
      ListStyle = [lsChecked]
      LookupField = 'RANSOM_CODE'
      LookupDisplay = 'RANSOM_DESC'
      LookupSource = dsRansom
      TabOrder = 8
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object lcbPack: TxxxDBLookupCheckCombo
      Left = 348
      Top = 126
      Width = 159
      Height = 21
      DropDownCount = 4
      DisplayEmpty = #1053#1077' '#1074#1099#1073#1088#1072#1085#1086
      DisplaySelectAll = #1042#1089#1077
      EmptyItemColor = clWindowText
      ListStyle = [lsChecked]
      LookupField = 'PACK_DESC'
      LookupDisplay = 'PACK_DESC'
      LookupSource = dsPack
      TabOrder = 9
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
  end
  inherited dsList: TDataSource
    Left = 120
    Top = 350
  end
  inherited ActionList: TActionList
    Left = 152
    Top = 350
    inherited actAddAttributes: TAction
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Visible = False
    end
    inherited actEditAttributes: TAction
      Visible = False
    end
    object actSetInvStraight: TAction
      Caption = #1055#1088#1103#1084#1099#1077
      ImageIndex = 1
      OnExecute = actInvStraightExecute
      OnUpdate = actInvStraightUpdate
    end
    object actSetInvCase: TAction
      Caption = #1058#1077#1082#1091#1097#1072#1103
      Hint = #1058#1077#1082#1091#1097#1072#1103' '#1074' '#1087#1086#1088#1090#1092#1077#1083#1100#1085#1099#1077
      ImageIndex = 1
      OnExecute = actSetInvCaseExecute
      OnUpdate = actInvCaseUpdate
    end
    object actSetInvNoCount: TAction
      Caption = #1053#1077' '#1091#1095#1080#1090#1099#1074#1072#1090#1100
      ImageIndex = 2
      OnExecute = actSetInvNoCountExecute
      OnUpdate = actInvNoCountUpdate
    end
    object actGoto405: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' 405 '#1092#1086#1088#1084#1077
      ImageIndex = 1
      OnExecute = actGoto405Execute
    end
    object actSetInvBackStraight: TAction
      Caption = #1054#1073#1088#1072#1090#1085#1099#1077' '#1087#1088#1103#1084#1099#1077
      ImageIndex = 1
      OnExecute = actSetInvBackStraightExecute
      OnUpdate = actSetInvBackStraightUpdate
    end
    object actSetInvSister: TAction
      Caption = #1057#1077#1089#1090#1088#1080#1085#1089#1082#1080#1077
      ImageIndex = 1
      OnExecute = actSetInvSisterExecute
      OnUpdate = actSetInvSisterUpdate
    end
    object actSetInvOthYch: TAction
      Caption = #1055#1088#1086#1095#1080#1077' '#1091#1095#1072#1089#1090#1080#1077
      ImageIndex = 1
      OnExecute = actSetInvOthYchExecute
      OnUpdate = actSetInvOthYchUpdate
    end
    object actPortfAll: TAction
      Caption = #1042#1089#1077' '#1085#1077#1088#1072#1079#1086#1073#1088#1072#1085#1085#1099#1077
      Hint = #1042#1089#1077' '#1085#1077#1088#1072#1079#1086#1073#1088#1072#1085#1085#1099#1077' '#1074' '#1087#1086#1088#1090#1092#1077#1083#1100#1085#1099#1077
      ImageIndex = 1
      OnExecute = actPortfAllExecute
      OnUpdate = actPortfAllUpdate
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 88
    Top = 382
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '    T055_ID,'
      '    T027_ID, '
      '    T028_ID,'
      '    T028_SHOT_NAME,'
      '    T037_SHOT_NAME, '
      '    T028_CODE, '
      '--    T025_SHOT_NAME, '
      '    t011_type_id,'
      '    T006_DIRECTION,'
      '    T006_DIRECTION_DESC, '
      '    T001_IS_RANSOM,'
      '    T001_IS_RANSOM_DESC,'
      '    T027_SEC_TYPE,'
      '    T001_OP_COUNT, '
      '    SUM_ALL, '
      '    SUM_CASE,'
      '    SUM_STRAIGHT,'
      '    SUM_BACK_STRAIGHT,'
      '    SUM_OTHER,'
      '    SUM_SISTER,'
      '    SUM_OTH_YCH,'
      '    SUM_NOCOUNT,'
      '    T012_ID,'
      '    T013_ID,'
      '    T012_NAME,'
      '    T012_CODE,'
      '    T013_NAME,'
      '    T013_CODE,'
      '    OTH_COMMENTS,'
      '    T001_PERCENT,'
      '    IS_PACK'
      'FROM'
      '    V_405_INV_TYPES_ALL'
      'WHERE Pk_405_Issuers.f_is_issuer_in_group(:T042_ID, T028_ID) = 1'
      ''
      ' '
      ' ')
    Variables.Data = {
      0400000001000000100000003A0054003000340032005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001E0000000E00000054003000350035005F0049004400010000000000
      1C00000054003000320038005F00530048004F0054005F004E0041004D004500
      0100000000001200000054003000320038005F0043004F004400450001000000
      00002600000054003000300036005F0044004900520045004300540049004F00
      4E005F0044004500530043000100000000001A00000054003000300031005F00
      4F0050005F0043004F0055004E0054000100000000000E000000530055004D00
      5F0041004C004C0001000000000010000000530055004D005F00430041005300
      450001000000000018000000530055004D005F00530054005200410049004700
      4800540001000000000012000000530055004D005F004F005400480045005200
      0100000000001A00000054003000320037005F005300450043005F0054005900
      500045000100000000000E00000054003000320037005F004900440001000000
      000016000000530055004D005F004E004F0043004F0055004E00540001000000
      00000E00000054003000320038005F00490044000100000000001C0000005400
      3000300036005F0044004900520045004300540049004F004E00010000000000
      1C00000054003000330037005F00530048004F0054005F004E0041004D004500
      01000000000022000000530055004D005F004200410043004B005F0053005400
      52004100490047004800540001000000000014000000530055004D005F005300
      4900530054004500520001000000000016000000530055004D005F004F005400
      48005F005900430048000100000000001800000054003000310031005F005400
      5900500045005F00490044000100000000001200000054003000310032005F00
      4E0041004D0045000100000000001200000054003000310032005F0043004F00
      440045000100000000001200000054003000310033005F004E0041004D004500
      0100000000001200000054003000310033005F0043004F004400450001000000
      00000E00000054003000310032005F00490044000100000000000E0000005400
      3000310033005F00490044000100000000001C00000054003000300031005F00
      490053005F00520041004E0053004F004D000100000000002600000054003000
      300031005F00490053005F00520041004E0053004F004D005F00440045005300
      4300010000000000180000004F00540048005F0043004F004D004D0045004E00
      540053000100000000001800000054003000300031005F005000450052004300
      45004E0054000100000000000E000000490053005F005000410043004B000100
      00000000}
    Left = 88
    Top = 350
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT037_SHOT_NAME: TStringField
      FieldName = 'T037_SHOT_NAME'
      Size = 255
    end
    object odsListT006_DIRECTION_DESC: TStringField
      FieldName = 'T006_DIRECTION_DESC'
      Size = 9
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_ALL: TFloatField
      FieldName = 'SUM_ALL'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_CASE: TFloatField
      FieldName = 'SUM_CASE'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_STRAIGHT: TFloatField
      FieldName = 'SUM_STRAIGHT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_OTHER: TFloatField
      FieldName = 'SUM_OTHER'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_NOCOUNT: TFloatField
      FieldName = 'SUM_NOCOUNT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT006_DIRECTION: TIntegerField
      FieldName = 'T006_DIRECTION'
    end
    object odsListSUM_BACK_STRAIGHT: TFloatField
      FieldName = 'SUM_BACK_STRAIGHT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListSUM_SISTER: TFloatField
      FieldName = 'SUM_SISTER'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListSUM_OTH_YCH: TFloatField
      FieldName = 'SUM_OTH_YCH'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
    end
    object odsListT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Size = 255
    end
    object odsListT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Size = 255
    end
    object odsListT013_NAME: TStringField
      FieldName = 'T013_NAME'
      Size = 255
    end
    object odsListT013_CODE: TFloatField
      FieldName = 'T013_CODE'
    end
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
    end
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
    end
    object odsListT001_IS_RANSOM_DESC: TStringField
      FieldName = 'T001_IS_RANSOM_DESC'
      Size = 11
    end
    object odsListT001_IS_RANSOM: TStringField
      FieldName = 'T001_IS_RANSOM'
      Size = 1
    end
    object odsListOTH_COMMENTS: TStringField
      FieldName = 'OTH_COMMENTS'
      Size = 255
    end
    object odsListT001_PERCENT: TFloatField
      FieldName = 'T001_PERCENT'
      DisplayFormat = '##0.000000'
    end
    object odsListIS_PACK: TStringField
      DisplayWidth = 3
      FieldName = 'IS_PACK'
      Size = 3
    end
  end
  inherited pkList: TOraclePackage
    Left = 120
    Top = 382
  end
  inherited oqAdd: TOracleQuery
    Left = 120
    Top = 419
  end
  inherited oqUpdate: TOracleQuery
    Left = 160
    Top = 419
  end
  inherited oqDelete: TOracleQuery
    Left = 200
    Top = 419
  end
  inherited oqDupl: TOracleQuery
    Left = 240
    Top = 419
  end
  inherited pmFilter: TPopupMenu
    Top = 240
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
    Left = 301
    Top = 20
    object odsTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsTypeDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 513
    end
  end
  object dsType: TDataSource
    DataSet = odsType
    Left = 333
    Top = 20
  end
  object oqSetInvType: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_FORM_405.p_Set_Inv_Type_Group ('
      '    :T001_INV_TYPE, :T055_ID, :T027_ID, :T028_ID, :T006_ID,'
      '    :T012_ID, :T013_ID, :T011_TYPE_ID'
      '    );'
      '  COMMIT;'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      04000000080000001C0000003A0054003000300031005F0049004E0056005F00
      5400590050004500030000000000000000000000100000003A00540030003500
      35005F0049004400040000000000000000000000100000003A00540030003200
      37005F0049004400040000000000000000000000100000003A00540030003200
      38005F0049004400040000000000000000000000100000003A00540030003000
      36005F0049004400040000000000000000000000100000003A00540030003100
      32005F0049004400040000000000000000000000100000003A00540030003100
      33005F00490044000400000000000000000000001A0000003A00540030003100
      31005F0054005900500045005F0049004400040000000000000000000000}
    Left = 736
    Top = 16
  end
  object oqResidentsFilter: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_FORM_405.p_SetFilterFlag (:filter_Flag);'
      '  COMMIT;'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000180000003A00460049004C005400450052005F0046004C00
      41004700030000000000000000000000}
    Left = 368
    Top = 78
  end
  object oqGetResidentsFilter: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :o_res := PK_FORM_405.p_FilteredResidents;'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A004F005F005200450053000300000004000000
      0000000000000000}
    Left = 400
    Top = 78
  end
  object odsOpCode: TOracleDataSet
    SQL.Strings = (
      'SELECT T011_TYPE_ID,'
      '       T011_TYPE_ID || '#39' - '#39' || T011_OPERATION_DESC DESC_FLD'
      'FROM V_OPERATION_TYPE'
      'ORDER BY T011_TYPE_ID')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000001000000044004500530043005F0046004C00440001000000
      00001800000054003000310031005F0054005900500045005F00490044000100
      00000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 48
    object odsOpCodeDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 298
    end
    object odsOpCodeT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
  end
  object dsOpCode: TDataSource
    DataSet = odsOpCode
    Left = 224
    Top = 48
  end
  object odsRansom: TOracleDataSet
    SQL.Strings = (
      'select RANSOM_CODE,'
      '       RANSOM_DESC'
      'from   V_405_IS_RANSOM')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000016000000520041004E0053004F004D005F0043004F004400
      450001000000000016000000520041004E0053004F004D005F00440045005300
      4300010000000000}
    Session = dmMain.OracleSession
    Left = 144
    Top = 128
  end
  object dsRansom: TDataSource
    DataSet = odsRansom
    Left = 184
    Top = 128
  end
  object pmPortf: TPopupMenu
    Left = 72
    Top = 144
    object actPortfCurrent1: TMenuItem
      Action = actSetInvCase
    end
    object actPortfAll1: TMenuItem
      Action = actPortfAll
    end
  end
  object odsPack: TOracleDataSet
    SQL.Strings = (
      'select 1 as PACK_ID,'
      '       '#39#1044#1072#39' as PACK_DESC'
      'from DUAL'
      'union all'
      'select 0,'
      '       '#39#1053#1077#1090#39
      'from DUAL')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000E0000005000410043004B005F0049004400010000000000
      120000005000410043004B005F004400450053004300010000000000}
    Session = dmMain.OracleSession
    Left = 360
    Top = 128
  end
  object dsPack: TDataSource
    DataSet = odsPack
    Left = 392
    Top = 128
  end
end
