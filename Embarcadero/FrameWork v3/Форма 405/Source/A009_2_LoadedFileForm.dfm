inherited A009_2_LoadedFile: TA009_2_LoadedFile
  Left = 90
  Top = 180
  Caption = #1044#1072#1085#1085#1099#1077' '#1074' '#1092#1072#1081#1083#1077
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Height = 392
    ExplicitLeft = 756
    ExplicitHeight = 601
  end
  object Label9: TLabel [1]
    Left = 12
    Top = 20
    Width = 33
    Height = 13
    Hint = #1042#1089#1077#1075#1086' '#1082#1086#1084#1087#1072#1085#1080#1081
    Caption = #1042#1089#1077#1075#1086':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  inherited paRight: TPanel
    Height = 392
    ExplicitLeft = 759
    ExplicitHeight = 601
  end
  inherited paMain: TPanel
    Height = 392
    ExplicitWidth = 756
    ExplicitHeight = 601
    inherited ToolBar2: TToolBar
      Top = 78
      ExplicitTop = 78
      ExplicitWidth = 756
      inherited ToolButton18: TToolButton
        Hint = #1055#1077#1088#1077#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083' (Ctrl+L)'
        Action = nil
        Caption = #1055#1077#1088#1077#1079#1072#1075#1088#1091#1079#1080#1090#1100
        ImageIndex = 12
        MenuItem = N3
        OnClick = nil
      end
      inherited ToolButton19: TToolButton
        Left = 189
        ExplicitLeft = 189
      end
      inherited ToolButton4: TToolButton
        Left = 263
        ExplicitLeft = 263
      end
      inherited ToolBar1: TToolBar
        Left = 271
        ExplicitLeft = 271
      end
      inherited sp02: TToolButton
        Left = 340
        ExplicitLeft = 340
      end
      inherited tbSimFilter: TToolButton
        Left = 348
        ExplicitLeft = 348
      end
      inherited tbSep01: TToolButton
        Left = 432
        ExplicitLeft = 432
      end
      inherited tlbSearch: TToolBar
        Left = 440
        ExplicitLeft = 440
      end
      inherited ToolButton13: TToolButton
        Left = 500
        ExplicitLeft = 500
      end
      inherited tbExcel: TToolButton
        Left = 508
        ExplicitLeft = 508
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 101
      Height = 262
      OnColEnter = xxxDBGridColEnter
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T030_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1069#1084#1080#1089#1089#1080#1103
          Width = 120
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'T042_PAY_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1074#1099#1087#1083#1072#1090#1099
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_COUPON_RATE'
          Title.Alignment = taCenter
          Title.Caption = #1057#1090#1072#1074#1082#1072' '#1082#1091#1087#1086#1085#1072', % '#1075#1086#1076#1086#1074#1099#1093
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_COUPON_SUM'
          Title.Alignment = taCenter
          Title.Caption = #1057#1091#1084#1084#1072' '#1082#1091#1087#1086#1085#1072
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_MATURITY'
          Title.Alignment = taCenter
          Title.Caption = #1055#1086#1075#1072#1096#1077#1085#1080#1077' '#1085#1086#1084#1080#1085#1072#1083#1072
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_COMMENT_RUS'
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' ('#1088#1091#1089#1089#1082'.)'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_COMMENT_ENG'
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1080#1077' ('#1072#1085#1075#1083'.)'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_FILE_NAME'
          Title.Caption = #1060#1072#1081#1083' '#1079#1072#1075#1088#1091#1079#1082#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_LOAD_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1079#1072#1075#1088#1091#1079#1082#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_LOADER'
          Title.Caption = #1050#1077#1084' '#1079#1072#1075#1088#1091#1078#1077#1085#1086
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_FOR_FILTER'
          Title.Caption = #1044#1083#1103' '#1092#1080#1083#1100#1090#1088#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T042_EMISSION_ID'
          Title.Caption = 'ID '#1101#1084#1080#1089#1089#1080#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T042_FOR_FILTER'
          Title.Caption = #1044#1083#1103' '#1092#1080#1083#1100#1090#1088#1072
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 36
      ExplicitTop = 36
      inherited Panel1: TPanel
        ExplicitLeft = 729
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 57
      ExplicitTop = 57
      inherited Panel1: TPanel
        ExplicitLeft = 729
      end
    end
    object GroupBox1: TPanel
      Left = 0
      Top = 363
      Width = 677
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      ExplicitTop = 572
      ExplicitWidth = 756
      object Label1: TLabel
        Left = 12
        Top = 7
        Width = 33
        Height = 13
        Hint = #1042#1089#1077#1075#1086' '#1082#1086#1084#1087#1072#1085#1080#1081
        Caption = #1042#1089#1077#1075#1086':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label2: TLabel
        Left = 126
        Top = 7
        Width = 137
        Height = 13
        Caption = #1053#1077#1088#1072#1089#1087#1086#1079#1085#1072#1085#1085#1099#1093' '#1101#1084#1080#1089#1089#1080#1081':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label3: TLabel
        Left = 518
        Top = 7
        Width = 68
        Height = 13
        Caption = #1048#1079#1084#1077#1085#1077#1085#1085#1099#1093':'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText1: TDBText
        Left = 53
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_TOTAL'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText2: TDBText
        Left = 439
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_NEW'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText4: TDBText
        Left = 593
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_CHANGED'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label5: TLabel
        Left = 761
        Top = 7
        Width = 32
        Height = 13
        Caption = 'Label5'
      end
      object DBText3: TDBText
        Left = 270
        Top = 7
        Width = 46
        Height = 17
        DataField = 'E_NEW'
        DataSource = dsTotal
      end
      object Label6: TLabel
        Left = 351
        Top = 7
        Width = 81
        Height = 13
        Caption = #1053#1086#1074#1099#1093' '#1079#1072#1087#1080#1089#1077#1081':'
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 677
      Height = 36
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitWidth = 756
      object Label4: TLabel
        Left = 27
        Top = 11
        Width = 105
        Height = 13
        Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1080':'
      end
      object CbShow: TCheckBox
        Tag = 800
        Left = 7
        Top = 10
        Width = 14
        Height = 17
        Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1080':'
        Enabled = False
        State = cbGrayed
        TabOrder = 0
      end
      object CmbShow: TComboBox
        Tag = 801
        Left = 148
        Top = 8
        Width = 331
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        Items.Strings = (
          #1042#1089#1077
          #1053#1077#1088#1072#1089#1087#1086#1079#1085#1072#1085#1085#1099#1077' '#1101#1084#1080#1089#1089#1080#1080
          #1053#1086#1074#1099#1077', '#1080#1079#1084#1077#1085#1077#1085#1085#1085#1099#1077' '#1080' '#1091#1076#1072#1083#1077#1085#1085#1099#1077
          #1058#1086#1083#1100#1082#1086' '#1085#1086#1074#1099#1077' '#1079#1072#1087#1080#1089#1080
          #1058#1086#1083#1100#1082#1086' '#1080#1079#1084#1077#1085#1077#1085#1085#1099#1077
          #1048#1079#1084#1077#1085#1077#1085#1085#1099#1077' '#1085#1086#1074#1099#1084#1080' '#1076#1072#1085#1085#1099#1084#1080
          #1048#1079#1084#1077#1085#1077#1085#1085#1099#1077' '#1089#1090#1072#1088#1099#1084#1080' '#1076#1072#1085#1085#1099#1084#1080
          #1059#1076#1072#1083#1077#1085#1085#1099#1077' '#1079#1072#1087#1080#1089#1080)
      end
      object Button1: TButton
        Left = 487
        Top = 6
        Width = 75
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 2
        OnClick = Button1Click
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 633
    ExplicitWidth = 759
  end
  inherited pnlButtons: TPanel
    Top = 392
    Height = 32
    ExplicitTop = 601
    ExplicitWidth = 759
    ExplicitHeight = 32
    inherited OKBtn: TButton
      Left = 737
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1086#1090#1084#1077#1095#1077#1085#1085#1099#1077' '#1079#1072#1087#1080#1089#1080
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      ExplicitLeft = 737
    end
    inherited CancelBtn: TButton
      Left = 817
      ExplicitLeft = 817
    end
  end
  inherited dsList: TDataSource
    Top = 267
  end
  inherited ActionList: TActionList
    Left = 104
    Top = 235
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1077#1088#1080#1086#1076
    end
  end
  inherited PopupMenu: TPopupMenu
    inherited N3: TMenuItem
      Action = nil
      Caption = #1055#1077#1088#1077#1079#1072#1075#1088#1091#1079#1080#1090#1100
      Hint = #1055#1077#1088#1077#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083' (Ctrl+L)'
      ImageIndex = 12
      ShortCut = 16460
      OnClick = nil
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T042_EMISSION_ID,'
      '  T030_NAME,'
      '  T042_PAY_DATE,'
      '  T042_COUPON_RATE,'
      '  T042_COUPON_SUM,'
      '  T042_MATURITY,'
      '  T042_COMMENT_RUS,'
      '  T042_COMMENT_ENG,'
      '  T042_LOAD_DATE,'
      '  T042_FILE_NAME,'
      '  T042_LOADER,'
      '  T042_FOR_FILTER,'
      '  T042_COUPON_RATE_OLD,'
      '  T042_COUPON_SUM_OLD,'
      '  T042_MATURITY_OLD,'
      '  T042_COMMENT_RUS_OLD,'
      '  T042_COMMENT_ENG_OLD,'
      '  T042_COUPON_RATE_CHD,'
      '  T042_COUPON_SUM_CHD,'
      '  T042_MATURITY_CHD,'
      '  T042_COMMENT_RUS_CHD,'
      '  T042_COMMENT_ENG_CHD'
      'from V_DS_FLOWS_LOAD'
      '')
    QBEDefinition.QBEFieldDefs = {
      05000000180000002000000054003000340032005F0045004D00490053005300
      49004F004E005F00490044000100000000001A00000054003000340032005F00
      5000410059005F00440041005400450001000000000020000000540030003400
      32005F0043004F00550050004F004E005F005200410054004500010000000000
      1E00000054003000340032005F0043004F00550050004F004E005F0053005500
      4D000100000000001A00000054003000340032005F004D004100540055005200
      4900540059000100000000002000000054003000340032005F0043004F004D00
      4D0045004E0054005F0052005500530001000000000020000000540030003400
      32005F0043004F004D004D0045004E0054005F0045004E004700010000000000
      1C00000054003000340032005F004C004F00410044005F004400410054004500
      0100000000001C00000054003000340032005F00460049004C0045005F004E00
      41004D0045000100000000001600000054003000340032005F004C004F004100
      4400450052000100000000001E00000054003000340032005F0046004F005200
      5F00460049004C00540045005200010000000000220000005400300034003200
      5F005000410059005F0044004100540045005F004F004C004400010000000000
      2800000054003000340032005F0043004F00550050004F004E005F0052004100
      540045005F004F004C0044000100000000002600000054003000340032005F00
      43004F00550050004F004E005F00530055004D005F004F004C00440001000000
      00002200000054003000340032005F004D004100540055005200490054005900
      5F004F004C0044000100000000002800000054003000340032005F0043004F00
      4D004D0045004E0054005F005200550053005F004F004C004400010000000000
      2800000054003000340032005F0043004F004D004D0045004E0054005F004500
      4E0047005F004F004C0044000100000000002200000054003000340032005F00
      5000410059005F0044004100540045005F004300480044000100000000002800
      000054003000340032005F0043004F00550050004F004E005F00520041005400
      45005F004300480044000100000000002600000054003000340032005F004300
      4F00550050004F004E005F00530055004D005F00430048004400010000000000
      2200000054003000340032005F004D0041005400550052004900540059005F00
      4300480044000100000000002800000054003000340032005F0043004F004D00
      4D0045004E0054005F005200550053005F004300480044000100000000002800
      000054003000340032005F0043004F004D004D0045004E0054005F0045004E00
      47005F004300480044000100000000001200000054003000330030005F004E00
      41004D004500010000000000}
    AfterScroll = odsListAfterScroll
    Top = 267
    object odsListT042_EMISSION_ID: TFloatField
      FieldName = 'T042_EMISSION_ID'
    end
    object odsListT030_NAME: TStringField
      FieldName = 'T030_NAME'
      Size = 255
    end
    object odsListT042_PAY_DATE: TDateTimeField
      FieldName = 'T042_PAY_DATE'
    end
    object odsListT042_COUPON_RATE: TFloatField
      FieldName = 'T042_COUPON_RATE'
    end
    object odsListT042_COUPON_SUM: TFloatField
      FieldName = 'T042_COUPON_SUM'
    end
    object odsListT042_MATURITY: TFloatField
      FieldName = 'T042_MATURITY'
    end
    object odsListT042_COMMENT_RUS: TStringField
      FieldName = 'T042_COMMENT_RUS'
      Size = 255
    end
    object odsListT042_COMMENT_ENG: TStringField
      FieldName = 'T042_COMMENT_ENG'
      Size = 255
    end
    object odsListT042_LOAD_DATE: TDateTimeField
      FieldName = 'T042_LOAD_DATE'
    end
    object odsListT042_FILE_NAME: TStringField
      FieldName = 'T042_FILE_NAME'
      Size = 255
    end
    object odsListT042_LOADER: TStringField
      FieldName = 'T042_LOADER'
      Size = 255
    end
    object odsListT042_FOR_FILTER: TFloatField
      FieldName = 'T042_FOR_FILTER'
    end
    object odsListT042_COUPON_RATE_OLD: TStringField
      FieldName = 'T042_COUPON_RATE_OLD'
      Size = 56
    end
    object odsListT042_COUPON_SUM_OLD: TStringField
      FieldName = 'T042_COUPON_SUM_OLD'
      Size = 56
    end
    object odsListT042_MATURITY_OLD: TStringField
      FieldName = 'T042_MATURITY_OLD'
      Size = 56
    end
    object odsListT042_COMMENT_RUS_OLD: TStringField
      FieldName = 'T042_COMMENT_RUS_OLD'
      Size = 271
    end
    object odsListT042_COMMENT_ENG_OLD: TStringField
      FieldName = 'T042_COMMENT_ENG_OLD'
      Size = 271
    end
    object odsListT042_COUPON_RATE_CHD: TStringField
      FieldName = 'T042_COUPON_RATE_CHD'
      Size = 1
    end
    object odsListT042_COUPON_SUM_CHD: TStringField
      FieldName = 'T042_COUPON_SUM_CHD'
      Size = 1
    end
    object odsListT042_MATURITY_CHD: TStringField
      FieldName = 'T042_MATURITY_CHD'
      Size = 1
    end
    object odsListT042_COMMENT_RUS_CHD: TStringField
      FieldName = 'T042_COMMENT_RUS_CHD'
      Size = 1
    end
    object odsListT042_COMMENT_ENG_CHD: TStringField
      FieldName = 'T042_COMMENT_ENG_CHD'
      Size = 1
    end
  end
  inherited pkList: TOraclePackage
    Left = 392
    Top = 347
  end
  inherited oqAdd: TOracleQuery
    StringFieldsOnly = True
    Left = 216
    Top = 264
  end
  inherited oqUpdate: TOracleQuery
    Left = 256
    Top = 264
  end
  inherited oqDelete: TOracleQuery
    Left = 296
    Top = 264
  end
  inherited oqDupl: TOracleQuery
    Left = 336
    Top = 264
  end
  inherited pmFilter: TPopupMenu
    Left = 616
    Top = 24
  end
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      'SELECT R_TOTAL,'
      '       E_NEW,'
      '       R_NEW,'
      '       R_UPDATED,'
      '       R_ROLLED,'
      '       R_CHANGED'
      'FROM   V_DS_FLOWS_LOAD_TOTAL')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000060000000E00000052005F0054004F00540041004C00010000000000
      0A00000052005F004E00450057000100000000001200000052005F0043004800
      41004E004700450044000100000000001200000052005F005500500044004100
      5400450044000100000000001000000052005F0052004F004C004C0045004400
      0100000000000A00000045005F004E0045005700010000000000}
    Session = dmMain.OracleSession
    Left = 104
    Top = 352
    object odsTotalR_TOTAL: TFloatField
      FieldName = 'R_TOTAL'
    end
    object odsTotalE_NEW: TFloatField
      FieldName = 'E_NEW'
    end
    object odsTotalR_NEW: TFloatField
      FieldName = 'R_NEW'
    end
    object odsTotalR_UPDATED: TFloatField
      FieldName = 'R_UPDATED'
    end
    object odsTotalR_ROLLED: TFloatField
      FieldName = 'R_ROLLED'
    end
    object odsTotalR_CHANGED: TStringField
      FieldName = 'R_CHANGED'
      Size = 81
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 144
    Top = 352
  end
end
