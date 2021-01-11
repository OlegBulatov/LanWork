inherited frm31_EmisInfList: Tfrm31_EmisInfList
  Left = 10
  Top = 241
  Caption = #1056#1077#1077#1089#1090#1088' '#1101#1084#1080#1089#1089#1080#1081
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 168
    ExplicitTop = 385
    ExplicitWidth = 985
  end
  inherited spRight: TSplitter
    Height = 168
    ExplicitLeft = 982
    ExplicitHeight = 385
  end
  inherited paRight: TPanel
    Height = 168
    ExplicitLeft = 985
    ExplicitHeight = 385
  end
  inherited paMain: TPanel
    Height = 168
    ExplicitWidth = 982
    ExplicitHeight = 385
    inherited ToolBar2: TToolBar
      Top = 126
      Height = 22
      AutoSize = True
      ExplicitTop = 126
      ExplicitWidth = 982
      ExplicitHeight = 22
      inherited ToolButton7: TToolButton
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 675
        Top = 0
        Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1089#1091#1084#1084#1099' '#1082#1091#1087#1086#1085#1086#1074
        AutoSize = True
        ImageIndex = 44
        OnClick = ToolButton10Click
      end
      object ToolButton6: TToolButton
        Left = 709
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 717
        Top = 0
        Action = actClearSelect
        AutoSize = True
        Enabled = False
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 804
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 20
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 812
        Top = 0
        AutoSize = True
        Caption = #1050#1086#1090#1080#1088#1086#1074#1082#1080'...'
        DropdownMenu = MenuLoadRates
        ImageIndex = 19
        PopupMenu = MenuLoadRates
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 169
      Height = 212
      OnCellClick = xxxDBGridCellClick
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          Title.Caption = #1048#1053#1053' '#1101#1084#1080#1090#1077#1085#1090#1072
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_COUNTRY_ID'
          Title.Caption = #1057#1090#1088#1072#1085#1072' '#1101#1084#1080#1090#1077#1085#1090#1072
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          Title.Caption = #1058#1080#1087' '#1101#1084#1080#1090#1077#1085#1090#1072
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' '#1094'.'#1073'.'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_START_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T031_END_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T010_ISIN_TRANSL'
          Title.Caption = #1050#1086#1076' ISIN'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          Title.Caption = #1058#1080#1087' '#1094'.'#1073'.'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_TYPE_DESC'
          Title.Caption = #1042#1080#1076' '#1094'.'#1073'.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_NOMINAL'
          Title.Caption = #1053#1086#1084#1080#1085#1072#1083
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_REG_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T024_NAME'
          Title.Caption = #1057#1087#1086#1089#1086#1073' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T023_NAME'
          Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1074#1099#1087#1083#1072#1090
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_CURRENCY'
          Title.Caption = #1042#1072#1083#1102#1090#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_COUPON_PER'
          Title.Caption = #1055#1077#1088#1080#1086#1076#1080#1095#1085#1086#1089#1090#1100' '#1074#1099#1087#1083#1072#1090#1099' '#1082#1091#1087#1086#1085#1072
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_DATE_ANNUL'
          Title.Caption = #1044#1072#1090#1072' '#1072#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#1080#1103
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_RATES_TYPE_NAME'
          Title.Caption = #1057#1090#1072#1074#1082#1072
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_CALC_METHOD_NAME'
          Title.Caption = #1052#1077#1090#1086#1076' '#1088#1072#1089#1095#1077#1090#1072
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T167_NAME'
          Title.Caption = #1058#1080#1082#1077#1088
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T167_EXCHANGE'
          Title.Caption = #1041#1080#1088#1078#1072
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_AUTOLOAD'
          Title.Caption = #1040#1074#1090#1086#1079#1072#1075#1088#1091#1079#1082#1072' '#1082#1086#1090#1080#1088#1086#1074#1086#1082
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_ID'
          Title.Caption = #1050#1086#1076' '#1101#1084#1080#1090#1077#1085#1090#1072
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
          FieldName = 'T030_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T030_RECORD_TYPE'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 148
      ExplicitTop = 148
      inherited Panel1: TPanel
        ExplicitLeft = 955
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 105
      TabOrder = 4
      ExplicitTop = 105
      inherited Panel1: TPanel
        ExplicitLeft = 955
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 677
      Height = 105
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitWidth = 982
      object cbSecType: TCheckBox
        Left = 8
        Top = 6
        Width = 75
        Height = 17
        Caption = #1058#1080#1087' '#1094'.'#1073'.'
        TabOrder = 0
        OnClick = cbSecTypeClick
      end
      object btnRefresh: TButton
        Left = 608
        Top = 6
        Width = 75
        Height = 25
        Action = actApplayFilter
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object cbCode: TCheckBox
        Left = 408
        Top = 55
        Width = 57
        Height = 17
        Caption = #1056#1077#1075'. '#8470
        TabOrder = 2
        OnClick = cbCodeClick
      end
      object edCode: TEdit
        Left = 464
        Top = 52
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object cbIsin: TCheckBox
        Left = 224
        Top = 55
        Width = 53
        Height = 17
        Caption = 'ISIN'
        TabOrder = 4
        OnClick = cbIsinClick
      end
      object edISIN: TEdit
        Left = 272
        Top = 52
        Width = 120
        Height = 21
        TabOrder = 5
      end
      object cbIssuer: TCheckBox
        Left = 8
        Top = 31
        Width = 72
        Height = 17
        Caption = #1069#1084#1080#1090#1077#1085#1090
        TabOrder = 6
        OnClick = chbIssuer1Click
      end
      object cbInn: TCheckBox
        Left = 8
        Top = 55
        Width = 57
        Height = 17
        Caption = #1048#1053#1053
        TabOrder = 7
        OnClick = cbInnClick
      end
      object lcbSecType: TxxxDBLookupCheckCombo
        Left = 88
        Top = 3
        Width = 500
        Height = 21
        DropDownCount = 16
        DisplayAllFields = True
        LookupField = 'T027_ID'
        LookupDisplay = 'T027_SEC_TYPE;T027_COMMENTS'
        LookupSource = dsSecType
        TabOrder = 8
        OnCloseUp = lcbSecTypeCloseUp
        OnKeyDown = lcSecTypeKeyDown
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object edINN: TEdit
        Left = 88
        Top = 52
        Width = 120
        Height = 21
        TabOrder = 9
      end
      object lcbIssuers: TRxDBLookupCombo
        Left = 88
        Top = 28
        Width = 500
        Height = 21
        DropDownCount = 24
        LookupField = 'T028_ID'
        LookupDisplay = 'T028_SHOT_NAME_DESC'
        LookupSource = dsIssuers
        TabOrder = 10
      end
      object cbEditions: TCheckBox
        Left = 8
        Top = 80
        Width = 201
        Height = 17
        Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1074#1099#1087#1091#1089#1082#1080' '#1072#1082#1094#1080#1081
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
    end
  end
  inherited Panel1: TPanel
    Top = 171
    Height = 220
    ExplicitTop = 388
    ExplicitWidth = 985
    ExplicitHeight = 220
    inherited pc01: TPageControl
      Height = 218
      ExplicitWidth = 983
      ExplicitHeight = 218
      inherited ts01: TTabSheet
        Caption = #1043#1088#1072#1092#1080#1082' '#1074#1099#1087#1083#1072#1090#1099' '#1082#1091#1087#1086#1085#1086#1074' '#1087#1086' '#1094#1077#1085#1085#1086#1081' '#1073#1091#1084#1072#1075#1077
      end
      object TabSheet1: TTabSheet
        Caption = #1052#1072#1090#1088#1080#1094#1072' '#1087#1086#1075#1072#1096#1077#1085#1080#1103
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object TabSheet2: TTabSheet
        Caption = #1056#1072#1079#1084#1077#1088' '#1101#1084#1080#1089#1089#1080#1080
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object TabSheet3: TTabSheet
        Caption = #1053#1050#1044
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 641
    ExplicitWidth = 985
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 608
    ExplicitWidth = 985
    inherited OKBtn: TButton
      Left = 827
      ExplicitLeft = 827
    end
    inherited CancelBtn: TButton
      Left = 907
      ExplicitLeft = 907
    end
  end
  inherited dsList: TDataSource
    Left = 112
    Top = 243
  end
  inherited ActionList: TActionList
    Left = 296
    Top = 243
    inherited actShowDetail: TAction
      Caption = #1050#1091#1087#1086#1085#1099'...'
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1082#1088#1099#1090#1100' '#1043#1088#1072#1092#1080#1082' '#1074#1099#1087#1083#1072#1090#1099' '#1082#1091#1087#1086#1085#1086#1074' '#1087#1086' '#1094#1077#1085#1085#1086#1081' '#1073#1091#1084#1072#1075#1077
    end
    object actApplayFilter: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = actApplayFilterExecute
    end
    object actClearSelect: TAction
      Caption = #1048#1089#1082#1083#1102#1095#1080#1090#1100
      Hint = #1048#1089#1082#1083#1102#1095#1080#1090#1100
      ImageIndex = 19
      OnExecute = actClearSelectExecute
    end
    object actFilterByIssName: TAction
      Caption = #1060#1080#1083#1100#1090#1088
      OnExecute = actFilterByIssNameExecute
    end
    object actRatesLoadCurrent: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102
      ImageIndex = 19
      OnExecute = actRatesLoadCurrentExecute
      OnUpdate = actRatesLoadCurrentUpdate
    end
    object actRatesLoadSelected: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1077
      ImageIndex = 19
      OnExecute = actRatesLoadSelectedExecute
      OnUpdate = actRatesLoadSelectedUpdate
    end
    object actRatesLoadAll: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1074#1089#1077
      ImageIndex = 19
      OnExecute = actRatesLoadAllExecute
      OnUpdate = actRatesLoadAllUpdate
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 296
    Top = 275
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  /*+ FIRST_ROWS */'
      '        T031_ID,'
      '        T030_ID,'
      '        T026_ID,'
      '        T026_SEC_REGN,'
      '        T030_TYPE,'
      '        T030_TYPE_DESC,'
      '        T027_ID,'
      '        T027_SEC_TYPE,'
      '        T028_ID,'
      '        T028_SHOT_NAME,'
      '        T025_SHOT_NAME,'
      '        T028_CODE,'
      '        T028_INN,'
      '        T028_COUNTRY_ID,'
      '        T031_REG_DATE,'
      '        T010_ISIN_TRANSL,'
      '        T024_ID,'
      '        T024_NAME,'
      '        T023_ID,'
      '        T023_NAME,'
      '        T031_START_DATE,'
      '        T031_END_DATE,'
      '        T031_CURRENCY,'
      '        T031_NOMINAL,'
      #9'T031_COUPON_PER,'
      #9'T031_DATE_ANNUL,'
      #9'T031_RATES_TYPE,'
      #9'T031_RATES_TYPE_NAME,'
      #9'T031_CALC_METHOD,'
      #9'T031_CALC_METHOD_NAME,'
      '       T031_CALC_DATE_TYPE,'
      '       T031_COUPON_PERIOD,'
      '       T167_NAME,'
      '       T167_EXCHANGE,'
      '       T031_AUTOLOAD,'
      '       T030_RECORD_TYPE,'
      '       T010_ID'
      'FROM   V_405_EMISSION_INF'
      ''
      ''
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      05000000250000000E00000054003000330031005F0049004400010000000000
      0E00000054003000330030005F00490044000100000000001A00000054003000
      330031005F005200450047005F0044004100540045000100000000000E000000
      54003000320034005F00490044000100000000000E0000005400300032003300
      5F00490044000100000000001E00000054003000330031005F00530054004100
      520054005F0044004100540045000100000000001A0000005400300033003100
      5F0045004E0044005F0044004100540045000100000000001A00000054003000
      330031005F00430055005200520045004E004300590001000000000018000000
      54003000330031005F004E004F004D0049004E0041004C000100000000001200
      000054003000320034005F004E0041004D004500010000000000120000005400
      3000320033005F004E0041004D0045000100000000001A000000540030003200
      36005F005300450043005F005200450047004E000100000000001A0000005400
      3000320037005F005300450043005F0054005900500045000100000000001C00
      000054003000320038005F00530048004F0054005F004E0041004D0045000100
      000000001C00000054003000320035005F00530048004F0054005F004E004100
      4D0045000100000000000E00000054003000320036005F004900440001000000
      00000E00000054003000320037005F00490044000100000000000E0000005400
      3000320038005F00490044000100000000001E00000054003000330031005F00
      43004F00550050004F004E005F005000450052000100000000001E0000005400
      3000330031005F0044004100540045005F0041004E004E0055004C0001000000
      00001E00000054003000330031005F00520041005400450053005F0054005900
      500045000100000000002800000054003000330031005F005200410054004500
      53005F0054005900500045005F004E0041004D00450001000000000024000000
      54003000330031005F0043004F00550050004F004E005F005000450052004900
      4F0044000100000000002600000054003000330031005F00430041004C004300
      5F0044004100540045005F005400590050004500010000000000200000005400
      3000330031005F00430041004C0043005F004D004500540048004F0044000100
      000000002A00000054003000330031005F00430041004C0043005F004D004500
      540048004F0044005F004E0041004D0045000100000000001200000054003000
      330030005F0054005900500045000100000000001C0000005400300033003000
      5F0054005900500045005F004400450053004300010000000000100000005400
      3000320038005F0049004E004E000100000000001E0000005400300032003800
      5F0043004F0055004E005400520059005F004900440001000000000012000000
      54003000320038005F0043004F00440045000100000000001200000054003100
      360037005F004E0041004D0045000100000000001A0000005400310036003700
      5F00450058004300480041004E00470045000100000000001A00000054003000
      330031005F004100550054004F004C004F004100440001000000000020000000
      54003000330030005F005200450043004F00520044005F005400590050004500
      0100000000000E00000054003000310030005F00490044000100000000002000
      000054003000310030005F004900530049004E005F005400520041004E005300
      4C00010000000000}
    AfterInsert = odsListAfterInsert
    AfterScroll = odsListAfterScroll
    Left = 80
    Top = 243
    object odsListT031_ID: TFloatField
      FieldName = 'T031_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT031_REG_DATE: TDateTimeField
      FieldName = 'T031_REG_DATE'
    end
    object odsListT024_ID: TFloatField
      FieldName = 'T024_ID'
    end
    object odsListT024_NAME: TStringField
      FieldName = 'T024_NAME'
      Required = True
      Size = 255
    end
    object odsListT023_ID: TFloatField
      FieldName = 'T023_ID'
    end
    object odsListT023_NAME: TStringField
      FieldName = 'T023_NAME'
      Required = True
      Size = 255
    end
    object odsListT031_START_DATE: TDateTimeField
      FieldName = 'T031_START_DATE'
    end
    object odsListT031_END_DATE: TDateTimeField
      FieldName = 'T031_END_DATE'
    end
    object odsListT031_NOMINAL: TFloatField
      FieldName = 'T031_NOMINAL'
      DisplayFormat = '### ### ### ##0.000'
      EditFormat = '0.000'
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT030_TYPE_DESC: TStringField
      FieldName = 'T030_TYPE_DESC'
      Size = 13
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT030_TYPE: TStringField
      FieldName = 'T030_TYPE'
      Required = True
      Size = 1
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT031_CURRENCY: TStringField
      FieldName = 'T031_CURRENCY'
      Size = 3
    end
    object odsListT031_COUPON_PER: TFloatField
      FieldName = 'T031_COUPON_PER'
    end
    object odsListT031_DATE_ANNUL: TDateTimeField
      FieldName = 'T031_DATE_ANNUL'
    end
    object odsListT031_RATES_TYPE: TIntegerField
      FieldName = 'T031_RATES_TYPE'
    end
    object odsListT031_RATES_TYPE_NAME: TStringField
      DisplayWidth = 16
      FieldName = 'T031_RATES_TYPE_NAME'
      Size = 16
    end
    object odsListT031_CALC_METHOD: TIntegerField
      FieldName = 'T031_CALC_METHOD'
    end
    object odsListT031_CALC_METHOD_NAME: TStringField
      FieldName = 'T031_CALC_METHOD_NAME'
      Size = 18
    end
    object odsListT031_CALC_DATE_TYPE: TIntegerField
      FieldName = 'T031_CALC_DATE_TYPE'
    end
    object odsListT031_COUPON_PERIOD: TFloatField
      FieldName = 'T031_COUPON_PERIOD'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Required = True
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Required = True
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT167_NAME: TStringField
      FieldName = 'T167_NAME'
      Size = 50
    end
    object odsListT167_EXCHANGE: TStringField
      FieldName = 'T167_EXCHANGE'
      Size = 50
    end
    object odsListT030_RECORD_TYPE: TIntegerField
      FieldName = 'T030_RECORD_TYPE'
      Required = True
    end
    object odsListT031_AUTOLOAD: TIntegerField
      FieldName = 'T031_AUTOLOAD'
    end
    object odsListT010_ID: TFloatField
      FieldName = 'T010_ID'
    end
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Required = True
      Size = 255
    end
  end
  inherited pkList: TOraclePackage
    Left = 168
    Top = 275
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_emission_inf_add('
      '    :T030_ID,'
      '    :T026_ID,'
      '    :T027_ID,'
      '    :T028_ID,'
      '    :T030_TYPE,'
      '    :T031_REG_DATE,'
      '    :T010_ISIN_SOURCE,'
      '    :T024_ID,'
      '    :T023_ID,'
      '    :T031_CURRENCY,'
      '    :T031_NOMINAL,'
      '    :T031_COUPON_PER,'
      '    :T031_DATE_ANNUL,'
      '    :T126_RATES_TYPE,'
      '    :T126_CALC_DATE_TYPE,'
      '    :T126_CALC_METHOD,'
      '    :T167_NAME,'
      '    :T167_EXCHANGE,'
      '    :T031_AUTOLOAD'
      '    );'
      'END;'
      ''
      ' '
      ''
      ' '
      ' '
      ' ')
    Variables.Data = {
      0400000013000000100000003A0054003000330030005F004900440004000000
      00000000000000001C0000003A0054003000330031005F005200450047005F00
      44004100540045000C0000000000000000000000100000003A00540030003200
      34005F0049004400040000000000000000000000100000003A00540030003200
      33005F00490044000400000000000000000000001C0000003A00540030003300
      31005F00430055005200520045004E0043005900040000000000000000000000
      1A0000003A0054003000330031005F004E004F004D0049004E0041004C000400
      00000000000000000000100000003A0054003000320036005F00490044000400
      00000000000000000000100000003A0054003000320037005F00490044000400
      00000000000000000000100000003A0054003000320038005F00490044000400
      00000000000000000000200000003A0054003000330031005F0043004F005500
      50004F004E005F00500045005200040000000000000000000000200000003A00
      54003000330031005F0044004100540045005F0041004E004E0055004C000C00
      00000000000000000000140000003A0054003000330030005F00540059005000
      4500050000000000000000000000200000003A0054003100320036005F005200
      41005400450053005F0054005900500045000400000000000000000000002800
      00003A0054003100320036005F00430041004C0043005F004400410054004500
      5F005400590050004500040000000000000000000000220000003A0054003100
      320036005F00430041004C0043005F004D004500540048004F00440004000000
      0000000000000000140000003A0054003100360037005F004E0041004D004500
      0500000000000000000000001C0000003A0054003100360037005F0045005800
      4300480041004E00470045000500000000000000000000001C0000003A005400
      3000330031005F004100550054004F004C004F00410044000400000000000000
      00000000220000003A0054003000310030005F004900530049004E005F005300
      4F005500520043004500050000000000000000000000}
    Left = 96
    Top = 312
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_emission_inf_update('
      '    :T030_ID,'
      '    :T026_ID,'
      '    :T027_ID,'
      '    :T028_ID,'
      '    :T030_TYPE,'
      '    :T031_REG_DATE,'
      '    :T010_ISIN_SOURCE,'
      '    :T024_ID,'
      '    :T023_ID,'
      '    :T031_CURRENCY,'
      '    :T031_NOMINAL,'
      '    :T031_COUPON_PER,'
      '    :T031_DATE_ANNUL,'
      '    :T126_RATES_TYPE,'
      '    :T126_CALC_DATE_TYPE,'
      '    :T126_CALC_METHOD,'
      '    :T167_NAME,'
      '    :T167_EXCHANGE,'
      '    :T031_AUTOLOAD'
      '    );'
      'END;'
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0400000013000000100000003A0054003000330030005F004900440004000000
      00000000000000001C0000003A0054003000330031005F005200450047005F00
      44004100540045000C0000000000000000000000100000003A00540030003200
      34005F0049004400040000000000000000000000100000003A00540030003200
      33005F00490044000400000000000000000000001C0000003A00540030003300
      31005F00430055005200520045004E0043005900040000000000000000000000
      1A0000003A0054003000330031005F004E004F004D0049004E0041004C000400
      00000000000000000000100000003A0054003000320036005F00490044000400
      00000000000000000000100000003A0054003000320037005F00490044000400
      00000000000000000000100000003A0054003000320038005F00490044000400
      00000000000000000000200000003A0054003000330031005F0043004F005500
      50004F004E005F00500045005200040000000000000000000000200000003A00
      54003000330031005F0044004100540045005F0041004E004E0055004C000C00
      00000000000000000000140000003A0054003000330030005F00540059005000
      4500050000000000000000000000200000003A0054003100320036005F005200
      41005400450053005F0054005900500045000400000000000000000000002800
      00003A0054003100320036005F00430041004C0043005F004400410054004500
      5F005400590050004500040000000000000000000000220000003A0054003100
      320036005F00430041004C0043005F004D004500540048004F00440004000000
      0000000000000000140000003A0054003100360037005F004E0041004D004500
      0500000000000000000000001C0000003A0054003100360037005F0045005800
      4300480041004E00470045000500000000000000000000001C0000003A005400
      3000330031005F004100550054004F004C004F00410044000400000000000000
      00000000220000003A0054003000310030005F004900530049004E005F005300
      4F005500520043004500050000000000000000000000}
    Left = 136
    Top = 312
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_emission_delete(:T030_ID);'
      'END;'
      ' '
      ''
      '')
    Variables.Data = {
      0400000001000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    Left = 176
    Top = 312
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T030_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T026_ID := :T026_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T010_ID := :T010_ID;'
      '  :o_result := Pk_405_Emissions.f_emission_check(v_rec);'
      'END;'
      ' '
      '')
    Variables.Data = {
      0400000006000000100000003A0054003000320036005F004900440004000000
      0000000000000000100000003A0054003000320037005F004900440004000000
      0000000000000000100000003A0054003000320038005F004900440004000000
      0000000000000000120000003A004F005F0052004500530055004C0054000400
      00000000000000000000100000003A0054003000330030005F00490044000400
      00000000000000000000100000003A0054003000310030005F00490044000400
      00000000000000000000}
    Left = 216
    Top = 312
  end
  inherited pmFilter: TPopupMenu
    Left = 848
    Top = 136
  end
  object odsIssuers: TOracleDataSet
    SQL.Strings = (
      'SELECT   T028_ID,'
      '         T028_SHOT_NAME_DESC'
      'FROM     V_405_ISSUER_MAIN_LOOKUP'
      '--WHERE  UPPER(T028_SHOT_NAME) LIKE UPPER(:T028_SHOT_NAME)'
      'ORDER BY UPPER (T028_SHOT_NAME)')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000E00000054003000320038005F0049004400010000000000
      2600000054003000320038005F00530048004F0054005F004E0041004D004500
      5F004400450053004300010000000000}
    Session = dmMain.OracleSession
    Left = 136
    Top = 24
    object odsIssuersT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsIssuersT028_SHOT_NAME_DESC: TStringField
      FieldName = 'T028_SHOT_NAME_DESC'
      Size = 514
    end
  end
  object dsIssuers: TDataSource
    DataSet = odsIssuers
    Left = 176
    Top = 24
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'
      #9'T027_SEC_TYPE,'
      '       T027_COMMENTS'
      'FROM V_405_SEC_TYPE_MAIN_1'
      'ORDER BY T027_SEC_TYPE'
      ' ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000030000000E00000054003000320037005F0049004400010000000000
      1A00000054003000320037005F005300450043005F0054005900500045000100
      000000001A00000054003000320037005F0043004F004D004D0045004E005400
      5300010000000000}
    Session = dmMain.OracleSession
    Left = 248
    Top = 8
    object odsSecTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsSecTypeT027_SEC_TYPE: TStringField
      DisplayWidth = 5
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsSecTypeT027_COMMENTS: TStringField
      FieldName = 'T027_COMMENTS'
      Required = True
      Size = 255
    end
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 280
    Top = 8
  end
  object oqClearSelect: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_clear_emission_main(:i_ID);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      04000000010000000A0000003A0049005F004900440004000000000000000000
      0000}
    Left = 332
    Top = 208
  end
  object oqDeleteCoupons: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Coupons.p_delete_coupons(:T030_ID);'
      'END;'
      ''
      ' '
      ''
      '  ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    Left = 384
    Top = 207
  end
  object oqRecalcCoupons: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  pk_405_coupons.p_calc_coupons_all(:T030_ID, :NoWarn);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0054003000330030005F004900440004000000
      00000000000000000E0000003A004E004F005700410052004E00040000000000
      000000000000}
    Left = 436
    Top = 208
  end
  object oqMMCheck: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := pk_405_coupons.f_maturity_matrix_exists(:T030_ID);'
      'end;'
      ' ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      04000000020000000E0000003A0052004500530055004C005400040000000000
      000000000000100000003A0054003000330030005F0049004400040000000000
      000000000000}
    Left = 632
    Top = 208
  end
  object oqSetCheck: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Emissions.p_set_autoload(:T030_ID, :T031_AUTOLOAD);'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0054003000330030005F004900440004000000
      00000000000000001C0000003A0054003000330031005F004100550054004F00
      4C004F0041004400040000000000000000000000}
    Left = 632
    Top = 248
  end
  object MenuLoadRates: TPopupMenu
    Images = dmPicters.ilCommonPictures
    Left = 840
    Top = 240
    object MenuItem1: TMenuItem
      Action = actRatesLoadCurrent
    end
    object MenuItem2: TMenuItem
      Action = actRatesLoadSelected
    end
    object MenuItem3: TMenuItem
      Action = actRatesLoadAll
    end
  end
  object oqCheckBlPipe: TOracleQuery
    SQL.Strings = (
      'select ACTIVE'
      'from  DPB_BL_PIPE.V_BL_PIPE_ACTIVE')
    Session = dmMain.OracleSession
    Optimize = False
    Left = 632
    Top = 288
  end
  object oqRequestRates: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_405_FOR_BL_PIPE.p_request_rates('
      '    :isin,'
      '    :ticker,'
      '    :exch_code,'
      '    :date_from,'
      '    :date_to,'
      '    :user'
      '    );'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      04000000060000000A0000003A00550053004500520005000000000000000000
      00000A0000003A004900530049004E000500000000000000000000000E000000
      3A005400490043004B0045005200050000000000000000000000140000003A00
      45005800430048005F0043004F00440045000500000000000000000000001400
      00003A0044004100540045005F00460052004F004D000C000000000000000000
      0000100000003A0044004100540045005F0054004F000C000000000000000000
      0000}
    Left = 632
    Top = 328
  end
end
