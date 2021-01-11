inherited frm101_2_LoadFile: Tfrm101_2_LoadFile
  Left = 13
  Top = 125
  Caption = #1044#1072#1085#1085#1099#1077' '#1074' '#1092#1072#1081#1083#1077
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Height = 392
    ExplicitLeft = 1005
    ExplicitHeight = 596
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
  object DBText9: TDBText [2]
    Left = 45
    Top = 20
    Width = 46
    Height = 17
    DataField = 'ALL_COUNT'
    DataSource = dsTotal
    ParentShowHint = False
    ShowHint = True
  end
  inherited paRight: TPanel
    Height = 392
    ExplicitLeft = 1008
    ExplicitHeight = 596
  end
  inherited paMain: TPanel
    Height = 392
    ExplicitWidth = 1005
    ExplicitHeight = 596
    inherited ToolBar2: TToolBar
      Top = 108
      ExplicitTop = 108
      ExplicitWidth = 1005
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
        Left = 434
        ExplicitLeft = 434
      end
      inherited tlbSearch: TToolBar
        Left = 442
        ExplicitLeft = 442
      end
      inherited ToolButton13: TToolButton
        Left = 502
        ExplicitLeft = 502
      end
      inherited tbExcel: TToolButton
        Left = 510
        ExplicitLeft = 510
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 131
      Height = 216
      AdvSettings.Indexes = <
        item
          FieldName = 'T111_ID'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 7
              Caption = #1056#1077#1075#1080#1086#1085
            end
            item
              FirstCol = 8
              LastCol = 12
              Caption = #1054#1090#1088#1072#1089#1083#1100
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T111_FIRM_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 120
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'T111_FIRM_INN'
          Title.Alignment = taCenter
          Title.Caption = #1048#1053#1053
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_MAIN_COUNT'
          Title.Caption = #1053#1072#1081#1076#1077#1085#1086' '#1074' '#1088#1077#1077#1089#1090#1088#1077
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_NL_COUNT'
          Title.Caption = #1053#1077' '#1089#1074#1103#1079'.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_REG_COUNT'
          Title.Caption = #1058#1088#1077#1073#1091#1090#1089#1103' '#1079#1072#1084#1077#1085#1072
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_REGION_CODE'
          Title.Caption = #1050#1086#1076' '#1074' '#1088#1077#1077#1089#1090#1088#1077
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_REGION_CODE'
          Title.Caption = #1055#1086#1080#1089#1082' '#1082#1086#1076#1072' '#1074' '#1089#1087#1088'-'#1082#1077' '#1056#1077#1075#1080#1086#1085#1086#1074
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_REGION'
          Title.Caption = #1056#1077#1075#1080#1086#1085' '#1057#1055#1040#1056#1050
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_IND_COUNT'
          Title.Caption = #1058#1088#1077#1073#1091#1090#1089#1103' '#1079#1072#1084#1077#1085#1072
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY_CODE'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1076' '#1074' '#1088#1077#1077#1089#1090#1088#1077
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_INDUSTRY_CODE'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1076' '#1057#1055#1040#1056#1050
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_INDUSTRY'
          Title.Alignment = taCenter
          Title.Caption = #1055#1086#1080#1089#1082' '#1086#1090#1088#1072#1089#1083#1080' '#1074' '#1089#1087#1088'-'#1082#1077' '#1054#1050#1042#1069#1044
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_INDUSTRY_NAME'
          Title.Caption = #1054#1090#1088#1072#1089#1083#1100' ('#1057#1055#1040#1056#1050')'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_SPARK_ID'
          Title.Caption = #1050#1086#1076' '#1057#1055#1040#1056#1050
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_FULL_NAME'
          Title.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OPF'
          Title.Caption = #1054#1055#1060
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OWN_TYPE'
          Title.Caption = #1060#1086#1088#1084#1072' '#1089#1086#1073#1089#1090#1074'.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_REG_NUMBER'
          Title.Caption = #1054#1043#1056#1053
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OKPO'
          Title.Caption = #1054#1050#1055#1054
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OKATO'
          Title.Caption = #1054#1050#1040#1058#1054
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OKFS'
          Title.Caption = #1054#1050#1060#1057
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_KPP'
          Title.Caption = #1050#1055#1055
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OKOGU'
          Title.Caption = #1054#1050#1054#1043#1059
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OKTMO'
          Title.Caption = #1054#1050#1058#1052#1054
          Width = 50
          Visible = True
        end
        item
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'T111_DO_LOAD'
          Title.Alignment = taCenter
          Title.Caption = #1047#1072#1087#1080#1089#1072#1090#1100
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_CHANGED'
          Title.Caption = #1055#1088#1080#1079#1085#1072#1082' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1088#1077#1075#1080#1086#1085#1072' '#1080#1083#1080' '#1086#1090#1088#1072#1089#1083#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_COMPANY_HEAD'
          Title.Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_HEAD_POS'
          Title.Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' - '#1076#1086#1083#1078#1085#1086#1089#1090#1100
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_HEAD_INN'
          Title.Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' - '#1048#1053#1053
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_TICKER_SKRIN'
          Title.Caption = #1058#1080#1082#1077#1088
          Width = 50
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
          FieldName = 'T111_U_ADRESS'
          Title.Caption = #1070#1088'. '#1072#1076#1088#1077#1089
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_F_ADRESS'
          Title.Caption = #1060#1072#1082#1090'. '#1072#1076#1088#1077#1089
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_TELEPHONE'
          Title.Caption = #1058#1077#1083#1077#1092#1086#1085
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_FAX'
          Title.Caption = #1060#1072#1082#1089
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_WEB'
          Title.Caption = #1042#1077#1073' '#1089#1072#1081#1090
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_EMAIL_ADRESS'
          Title.Caption = 'E-mail'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_CO_OWNERS'
          Title.Caption = #1057#1086#1074#1083#1072#1076#1077#1083#1100#1094#1099
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_COMPANY_SIZE'
          Title.Caption = #1056#1072#1079#1084#1077#1088' '#1082#1086#1084#1087#1072#1085#1080#1080
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_STATE'
          Title.Caption = 'C'#1086#1089#1090#1086#1103#1085#1080#1077
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_SHARE_CAPITAL'
          Title.Caption = #1059#1089#1090#1072#1074#1085#1099#1081' '#1082#1072#1087#1080#1090#1072#1083', '#1088#1091#1073
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_COMPANY_AGE'
          Title.Caption = #1042#1086#1079#1088#1072#1089#1090' '#1082#1086#1084#1087#1072#1085#1080#1080
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_DATE_START'
          Title.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_DATE_END'
          Title.Caption = #1044#1072#1090#1072' '#1083#1080#1082#1074#1080#1076#1072#1094#1080#1080
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_INN_OLD'
          Title.Caption = #1056#1072#1085#1077#1077' '#1080#1089#1087#1086#1083#1100#1079'. '#1048#1053#1053
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OGRN_OLD'
          Title.Caption = #1056#1072#1085#1077#1077' '#1080#1089#1087#1086#1083#1100#1079'. '#1054#1043#1056#1053
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_FIRM_STATE'
          Title.Caption = #1057#1090#1072#1090#1091#1089' '#1082#1086#1084#1087#1072#1085#1080#1080
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_REGION_IS_FOUND'
          Title.Caption = #1056#1077#1075#1080#1086#1085' '#1085#1072#1081#1076#1077#1085
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_INDUSTRY_IS_FOUND'
          Title.Caption = #1054#1090#1088#1072#1089#1083#1100' '#1085#1072#1081#1076#1077#1085#1072
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_COMMENT_2'
          Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_COMMENT'
          Title.Caption = #1042#1072#1078#1085#1072#1103' '#1080#1085#1092'.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_IS_INN_DOUBLE'
          Title.Caption = #1050#1086#1076' '#1079#1072#1076#1074#1086#1077#1085#1080#1103
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_IS_INN_DOUBLE_DESC'
          Title.Caption = #1047#1072#1076#1074#1086#1077#1085#1080#1077' '#1048#1053#1053
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OLD_INN_REC'
          Title.Caption = #1079#1072#1087#1080#1089#1100' '#1076#1086#1073#1072#1074#1083#1077#1085#1072' '#1076#1083#1103' '#1088#1072#1085#1077#1077' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1085#1086#1075#1086' '#1048#1053#1053
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 66
      ExplicitTop = 66
      inherited Panel1: TPanel
        ExplicitLeft = 978
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 87
      ExplicitTop = 87
      inherited Panel1: TPanel
        ExplicitLeft = 978
      end
    end
    object GroupBox1: TPanel
      Left = 0
      Top = 347
      Width = 677
      Height = 45
      Align = alBottom
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      ExplicitTop = 551
      ExplicitWidth = 1005
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
        Left = 131
        Top = 7
        Width = 37
        Height = 13
        Caption = #1053#1086#1074#1099#1077':'
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
        Left = 267
        Top = 7
        Width = 112
        Height = 13
        Caption = #1053#1077' '#1085#1072#1081#1076#1077#1085#1086' '#1088#1077#1075#1080#1086#1085#1086#1074':'
        ParentShowHint = False
        ShowHint = True
      end
      object Label4: TLabel
        Left = 131
        Top = 23
        Width = 81
        Height = 13
        Caption = #1057#1091#1097#1077#1089#1090#1074#1091#1102#1097#1080#1077':'
        ParentShowHint = False
        ShowHint = True
      end
      object Label5: TLabel
        Left = 598
        Top = 7
        Width = 87
        Height = 13
        Caption = #1044#1074#1086#1081#1085#1080#1082#1086#1074' '#1048#1053#1053':'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText1: TDBText
        Left = 45
        Top = 7
        Width = 46
        Height = 17
        DataField = 'ALL_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText2: TDBText
        Left = 215
        Top = 7
        Width = 46
        Height = 17
        DataField = 'NEW_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText3: TDBText
        Left = 215
        Top = 23
        Width = 46
        Height = 17
        DataField = 'OLD_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText4: TDBText
        Left = 381
        Top = 7
        Width = 46
        Height = 17
        DataField = 'REG_NOT_FOUND_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText5: TDBText
        Left = 685
        Top = 7
        Width = 46
        Height = 17
        DataField = 'INN_DOUBLE_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label6: TLabel
        Left = 434
        Top = 7
        Width = 112
        Height = 13
        Caption = #1053#1077' '#1085#1072#1081#1076#1077#1085#1086' '#1086#1090#1088#1072#1089#1083#1077#1081':'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText6: TDBText
        Left = 546
        Top = 7
        Width = 46
        Height = 17
        DataField = 'IND_NOT_FOUND_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label7: TLabel
        Left = 267
        Top = 23
        Width = 91
        Height = 13
        Caption = #1047#1072#1084#1077#1085#1080#1090#1100' '#1088#1077#1075#1080#1086#1085':'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText7: TDBText
        Left = 382
        Top = 23
        Width = 46
        Height = 17
        DataField = 'T111_REG_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label8: TLabel
        Left = 434
        Top = 23
        Width = 97
        Height = 13
        Caption = #1047#1072#1084#1077#1085#1080#1090#1100' '#1086#1090#1088#1072#1089#1083#1100':'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText8: TDBText
        Left = 546
        Top = 23
        Width = 46
        Height = 17
        DataField = 'T111_IND_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label10: TLabel
        Left = 598
        Top = 23
        Width = 79
        Height = 13
        Hint = #1042#1089#1077#1075#1086' '#1082#1086#1084#1087#1072#1085#1080#1081
        Caption = #1055#1091#1089#1090#1099#1077' '#1089#1090#1088#1086#1082#1080':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object DBText10: TDBText
        Left = 685
        Top = 23
        Width = 46
        Height = 17
        DataField = 'EMPTY_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 677
      Height = 66
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitWidth = 1005
      object CbEmitents: TCheckBox
        Tag = 800
        Left = 7
        Top = 10
        Width = 80
        Height = 17
        Caption = #1069#1084#1080#1090#1077#1085#1090#1099
        TabOrder = 0
      end
      object CmbEmitents: TComboBox
        Tag = 801
        Left = 81
        Top = 8
        Width = 162
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          #1053#1086#1074#1099#1077
          #1057#1091#1097#1077#1089#1090#1074#1091#1102#1097#1080#1077
          #1044#1074#1086#1081#1085#1080#1082#1086#1074' '#1048#1053#1053
          #1055#1091#1089#1090#1099#1077' '#1089#1090#1088#1086#1082#1080)
      end
      object CbRegion: TCheckBox
        Tag = 900
        Left = 253
        Top = 10
        Width = 80
        Height = 17
        Caption = #1056#1077#1075#1080#1086#1085
        TabOrder = 1
      end
      object Button1: TButton
        Left = 487
        Top = 6
        Width = 75
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 3
        OnClick = Button1Click
      end
      object CmbRegion: TComboBox
        Tag = 901
        Left = 321
        Top = 8
        Width = 162
        Height = 21
        Style = csDropDownList
        TabOrder = 4
        Items.Strings = (
          #1056#1077#1075#1080#1086#1085' '#1057#1055#1040#1056#1050' '#1085#1077' '#1080#1076#1077#1085#1090#1080#1092#1080#1094#1080#1088#1091#1077#1090#1089#1103
          #1058#1088#1077#1073#1091#1077#1090#1089#1103' '#1079#1072#1084#1077#1085#1072
          #1047#1072#1084#1077#1085#1072' '#1085#1077' '#1090#1088#1077#1073#1091#1077#1090#1089#1103' ')
      end
      object CbIndustries: TCheckBox
        Tag = 900
        Left = 253
        Top = 36
        Width = 80
        Height = 17
        Caption = #1054#1090#1088#1072#1089#1083#1080
        TabOrder = 5
      end
      object CmbIndustries: TComboBox
        Tag = 901
        Left = 321
        Top = 34
        Width = 162
        Height = 21
        Style = csDropDownList
        TabOrder = 6
        Items.Strings = (
          #1054#1090#1088#1072#1089#1083#1100' '#1057#1055#1040#1056#1050'  '#1085#1077' '#1080#1076#1077#1085#1090#1080#1092#1080#1094#1080#1088#1091#1077#1090#1089#1103
          #1058#1088#1077#1073#1091#1077#1090#1089#1103' '#1079#1072#1084#1077#1085#1072
          #1047#1072#1084#1077#1085#1072' '#1085#1077' '#1090#1088#1077#1073#1091#1077#1090#1089#1103' ')
      end
      object cbInn: TCheckBox
        Tag = 800
        Left = 7
        Top = 36
        Width = 80
        Height = 17
        Caption = #1055#1048#1060
        TabOrder = 7
      end
      object cmbInn: TComboBox
        Tag = 801
        Left = 81
        Top = 34
        Width = 162
        Height = 21
        Style = csDropDownList
        TabOrder = 8
        Items.Strings = (
          #1055#1048#1060)
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 628
    ExplicitWidth = 1008
  end
  inherited pnlButtons: TPanel
    Top = 392
    Height = 32
    ExplicitTop = 596
    ExplicitWidth = 1008
    ExplicitHeight = 32
    inherited OKBtn: TButton
      Left = 994
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1086#1090#1084#1077#1095#1077#1085#1085#1099#1077' '#1079#1072#1087#1080#1089#1080
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      ExplicitLeft = 994
    end
    inherited CancelBtn: TButton
      Left = 1074
      ExplicitLeft = 1074
    end
  end
  inherited dsList: TDataSource
    Top = 246
  end
  inherited ActionList: TActionList
    Top = 246
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
      'select '
      '  T111_ID,'
      '  T111_FIRM_NAME,'
      '  T111_FULL_NAME,'
      '  T111_INDUSTRY,'
      '  T111_FIRM_INN,'
      '  T111_FIRM_STATE,'
      '  T028_ID,'
      '  T111_INDUSTRY_CODE,'
      '  T028_INDUSTRY_CODE,'
      '  T111_CHANGED,'
      '  T111_REGION,'
      '  T111_REGION_CODE,'
      '  T028_REGION_CODE,'
      '  T111_TICKER_SKRIN,'
      '  T111_INF_TYPE,'
      '  T111_REG_NUMBER,'
      '  T037_ID,'
      '  T111_COMPANY_HEAD,'
      '  T111_EMAIL_ADRESS, '
      '  T111_U_ADRESS,'
      '  T111_F_ADRESS,'
      '  T111_TELEPHONE, '
      '  T111_FAX,'
      '  T111_WEB,'
      '  T111_MAIN_COUNT, '
      '  T111_NL_COUNT,'
      '  T111_REG_COUNT,'
      '  T111_IND_COUNT,'
      '  T111_IS_INN_DOUBLE,'
      '  T111_IS_INN_DOUBLE_DESC,'
      '  T111_INDUSTRY_IS_FOUND,'
      '  T111_REGION_IS_FOUND,'
      '  T111_KPP,'
      '  T111_OKFS,'
      '  T111_OKOGU,'
      '  T111_COMMENT,'
      '  T111_SPARK_ID,'
      '  T111_OKATO,'
      '  T111_OKPO,'
      '  T111_COMPANY_SIZE,'
      '  T111_STATE,'
      '  T111_HEAD_POS,'
      '  T111_HEAD_INN,'
      '  T111_DATE_START,'
      '  T111_COMPANY_AGE,'
      '  T111_DATE_END,'
      '  T111_CO_OWNERS,'
      '  T111_OKTMO,'
      '  T111_INDUSTRY_NAME,'
      '  T111_OPF,'
      '  T111_OWN_TYPE,'
      '  T111_INN_OLD,'
      '  T111_OGRN_OLD,'
      '  T111_COMMENT_2,'
      '  T111_SHARE_CAPITAL,'
      ':T111_OLD_INN_REC'
      'from V_405_EMIT_LOAD'
      ' ')
    Variables.Data = {
      0400000001000000220000003A0054003100310031005F004F004C0044005F00
      49004E004E005F005200450043000100000011000000543131315F4F4C445F49
      4E4E5F5245430000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000380000002400000054003000320038005F0049004E00440055005300
      5400520059005F0043004F00440045000100000000000E000000540031003100
      31005F00490044000100000000001C00000054003100310031005F0046004900
      52004D005F004E0041004D0045000100000000001A0000005400310031003100
      5F004600490052004D005F0049004E004E000100000000000E00000054003000
      320038005F00490044000100000000002400000054003100310031005F004900
      4E004400550053005400520059005F0043004F00440045000100000000001800
      000054003100310031005F004300480041004E00470045004400010000000000
      1600000054003100310031005F0052004500470049004F004E00010000000000
      2000000054003100310031005F0052004500470049004F004E005F0043004F00
      440045000100000000002000000054003000320038005F005200450047004900
      4F004E005F0043004F0044004500010000000000220000005400310031003100
      5F005400490043004B00450052005F0053004B00520049004E00010000000000
      1A00000054003100310031005F0049004E0046005F0054005900500045000100
      000000001E00000054003100310031005F005200450047005F004E0055004D00
      4200450052000100000000000E00000054003000330037005F00490044000100
      000000002200000054003100310031005F0043004F004D00500041004E005900
      5F0048004500410044000100000000002200000054003100310031005F004500
      4D00410049004C005F004100440052004500530053000100000000001A000000
      54003100310031005F0055005F00410044005200450053005300010000000000
      1A00000054003100310031005F0046005F004100440052004500530053000100
      000000001C00000054003100310031005F00540045004C004500500048004F00
      4E0045000100000000001000000054003100310031005F004600410058000100
      000000001000000054003100310031005F005700450042000100000000001E00
      000054003100310031005F004D00410049004E005F0043004F0055004E005400
      0100000000001A00000054003100310031005F004E004C005F0043004F005500
      4E0054000100000000001C00000054003100310031005F005200450047005F00
      43004F0055004E0054000100000000001C00000054003100310031005F004900
      4E0044005F0043004F0055004E00540001000000000024000000540031003100
      31005F00490053005F0049004E004E005F0044004F00550042004C0045000100
      000000002E00000054003100310031005F00490053005F0049004E004E005F00
      44004F00550042004C0045005F0044004500530043000100000000001A000000
      54003100310031005F0049004E00440055005300540052005900010000000000
      1E00000054003100310031005F004600490052004D005F005300540041005400
      45000100000000002C00000054003100310031005F0049004E00440055005300
      5400520059005F00490053005F0046004F0055004E0044000100000000002800
      000054003100310031005F0052004500470049004F004E005F00490053005F00
      46004F0055004E0044000100000000001000000054003100310031005F004B00
      500050000100000000001200000054003100310031005F004F004B0046005300
      0100000000001400000054003100310031005F004F004B004F00470055000100
      000000001800000054003100310031005F0043004F004D004D0045004E005400
      0100000000001A00000054003100310031005F0053005000410052004B005F00
      490044000100000000001200000054003100310031005F004F004B0050004F00
      0100000000001C00000054003100310031005F00460055004C004C005F004E00
      41004D0045000100000000001400000054003100310031005F004F004B004100
      54004F000100000000002200000054003100310031005F0043004F004D005000
      41004E0059005F00530049005A00450001000000000014000000540031003100
      31005F00530054004100540045000100000000001A0000005400310031003100
      5F0048004500410044005F0050004F0053000100000000001A00000054003100
      310031005F0048004500410044005F0049004E004E000100000000001E000000
      54003100310031005F0044004100540045005F00530054004100520054000100
      000000002000000054003100310031005F0043004F004D00500041004E005900
      5F004100470045000100000000001A00000054003100310031005F0044004100
      540045005F0045004E0044000100000000001C00000054003100310031005F00
      43004F005F004F0057004E004500520053000100000000001400000054003100
      310031005F004F004B0054004D004F0001000000000024000000540031003100
      31005F0049004E004400550053005400520059005F004E0041004D0045000100
      000000001000000054003100310031005F004F00500046000100000000001A00
      000054003100310031005F004F0057004E005F00540059005000450001000000
      00001800000054003100310031005F0049004E004E005F004F004C0044000100
      000000001A00000054003100310031005F004F00470052004E005F004F004C00
      44000100000000001C00000054003100310031005F0043004F004D004D004500
      4E0054005F0032000100000000002400000054003100310031005F0053004800
      4100520045005F004300410050004900540041004C0001000000000020000000
      54003100310031005F004F004C0044005F0049004E004E005F00520045004300
      010000000000}
    Left = 88
    Top = 358
    object odsListT111_ID: TFloatField
      FieldName = 'T111_ID'
      Required = True
    end
    object odsListT111_FIRM_NAME: TStringField
      FieldName = 'T111_FIRM_NAME'
      Required = True
      Size = 255
    end
    object odsListT111_FIRM_INDUSTRY: TStringField
      FieldName = 'T111_INDUSTRY'
      Required = True
      Size = 255
    end
    object odsListT111_FIRM_INN: TStringField
      FieldName = 'T111_FIRM_INN'
      Required = True
      Size = 255
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT111_INDUSTRY_CODE: TStringField
      FieldName = 'T111_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT111_CHANGED: TStringField
      FieldName = 'T111_CHANGED'
      Size = 1
    end
    object odsListT111_REGION: TStringField
      FieldName = 'T111_REGION'
      Size = 255
    end
    object odsListT111_REGION_CODE: TFloatField
      FieldName = 'T111_REGION_CODE'
    end
    object odsListT028_REGION_CODE: TFloatField
      FieldName = 'T028_REGION_CODE'
    end
    object odsListT111_TICKER_SKRIN: TStringField
      FieldName = 'T111_TICKER_SKRIN'
      Size = 255
    end
    object odsListT111_INF_TYPE: TStringField
      FieldName = 'T111_INF_TYPE'
      Size = 255
    end
    object odsListT111_REG_NUMBER: TStringField
      FieldName = 'T111_REG_NUMBER'
      Size = 255
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT111_COMPANY_HEAD: TStringField
      FieldName = 'T111_COMPANY_HEAD'
      Size = 255
    end
    object odsListT111_EMAIL_ADRESS: TStringField
      FieldName = 'T111_EMAIL_ADRESS'
      Size = 255
    end
    object odsListT111_U_ADRESS: TStringField
      FieldName = 'T111_U_ADRESS'
      Size = 255
    end
    object odsListT111_F_ADRESS: TStringField
      FieldName = 'T111_F_ADRESS'
      Size = 255
    end
    object odsListT111_TELEPHONE: TStringField
      FieldName = 'T111_TELEPHONE'
      Size = 255
    end
    object odsListT111_FAX: TStringField
      FieldName = 'T111_FAX'
      Size = 255
    end
    object odsListT111_WEB: TStringField
      FieldName = 'T111_WEB'
      Size = 255
    end
    object odsListT111_MAIN_COUNT: TFloatField
      FieldName = 'T111_MAIN_COUNT'
    end
    object odsListT111_NL_COUNT: TFloatField
      FieldName = 'T111_NL_COUNT'
    end
    object odsListT111_REG_COUNT: TFloatField
      FieldName = 'T111_REG_COUNT'
    end
    object odsListT111_IND_COUNT: TFloatField
      FieldName = 'T111_IND_COUNT'
    end
    object odsListT111_IS_INN_DOUBLE: TStringField
      FieldName = 'T111_IS_INN_DOUBLE'
      Required = True
      Size = 1
    end
    object odsListT111_IS_INN_DOUBLE_DESC: TStringField
      FieldName = 'T111_IS_INN_DOUBLE_DESC'
      Size = 13
    end
    object odsListFIRM_STATE: TStringField
      FieldName = 'T111_FIRM_STATE'
      Size = 1
    end
    object odsListT111_INDUSTRY_IS_FOUND: TStringField
      FieldName = 'T111_INDUSTRY_IS_FOUND'
      Size = 1
    end
    object odsListT111_REGION_IS_FOUND: TStringField
      FieldName = 'T111_REGION_IS_FOUND'
      Size = 1
    end
    object odsListT111_KPP: TFloatField
      FieldName = 'T111_KPP'
    end
    object odsListT111_OKFS: TStringField
      FieldName = 'T111_OKFS'
      Size = 255
    end
    object odsListT111_OKOGU: TStringField
      FieldName = 'T111_OKOGU'
      Size = 255
    end
    object odsListT111_COMMENT: TStringField
      FieldName = 'T111_COMMENT'
      Size = 255
    end
    object odsListT111_SPARK_ID: TFloatField
      FieldName = 'T111_SPARK_ID'
      Required = True
    end
    object odsListT111_OKPO: TStringField
      FieldName = 'T111_OKPO'
      Size = 255
    end
    object odsListT111_FULL_NAME: TStringField
      FieldName = 'T111_FULL_NAME'
      Size = 255
    end
    object odsListT111_OKATO: TStringField
      FieldName = 'T111_OKATO'
      Size = 255
    end
    object odsListT111_COMPANY_SIZE: TStringField
      FieldName = 'T111_COMPANY_SIZE'
      Size = 255
    end
    object odsListT111_STATE: TStringField
      FieldName = 'T111_STATE'
      Size = 255
    end
    object odsListT111_HEAD_POS: TStringField
      FieldName = 'T111_HEAD_POS'
      Size = 255
    end
    object odsListT111_HEAD_INN: TStringField
      FieldName = 'T111_HEAD_INN'
      Size = 255
    end
    object odsListT111_DATE_START: TStringField
      FieldName = 'T111_DATE_START'
      Size = 255
    end
    object odsListT111_COMPANY_AGE: TStringField
      FieldName = 'T111_COMPANY_AGE'
      Size = 255
    end
    object odsListT111_DATE_END: TStringField
      FieldName = 'T111_DATE_END'
      Size = 255
    end
    object odsListT111_CO_OWNERS: TStringField
      FieldName = 'T111_CO_OWNERS'
      Size = 255
    end
    object odsListT111_OKTMO: TStringField
      FieldName = 'T111_OKTMO'
      Size = 255
    end
    object odsListT111_INDUSTRY_NAME: TStringField
      FieldName = 'T111_INDUSTRY_NAME'
      Size = 255
    end
    object odsListT111_OPF: TStringField
      FieldName = 'T111_OPF'
      Size = 255
    end
    object odsListT111_OWN_TYPE: TStringField
      FieldName = 'T111_OWN_TYPE'
      Size = 255
    end
    object odsListT111_INN_OLD: TStringField
      FieldName = 'T111_INN_OLD'
      Size = 255
    end
    object odsListT111_OGRN_OLD: TStringField
      FieldName = 'T111_OGRN_OLD'
      Size = 255
    end
    object odsListT111_COMMENT_2: TStringField
      FieldName = 'T111_COMMENT_2'
      Size = 255
    end
    object odsListT111_SHARE_CAPITAL: TStringField
      FieldName = 'T111_SHARE_CAPITAL'
      Size = 255
    end
    object odsListT111_OLD_INN_REC: TStringField
      FieldName = 'T111_OLD_INN_REC'
      Required = True
      Size = 1
    end
  end
  inherited pkList: TOraclePackage
    Top = 278
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      'INSERT INTO T111_EMIT_LOAD ('
      '  T111_FIRM_NAME,'
      '  T111_REGION,'
      '  T111_FIRM_INDUSTRY,'
      '  T111_FIRM_INN)'
      'VALUES'
      '  (:vName, :vRegion, :vIndustry, :vInn);'
      ''
      'commit;'
      'end;'
      ' ')
    Variables.Data = {
      04000000040000000C0000003A0056004E0041004D0045000500000000000000
      00000000140000003A00560049004E0044005500530054005200590005000000
      00000000000000000A0000003A00560049004E004E0005000000000000000000
      0000100000003A00560052004500470049004F004E0005000000000000000000
      0000}
    StringFieldsOnly = True
    Top = 315
  end
  inherited oqUpdate: TOracleQuery
    Top = 315
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'delete from T111_EMIT_LOAD')
    Top = 347
  end
  inherited oqDupl: TOracleQuery
    Top = 347
  end
  inherited pmFilter: TPopupMenu
    Left = 616
    Top = 24
  end
  object oqChanged: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_changed'#9'NUMBER;'
      'BEGIN'
      '  SELECT count(*) INTO v_changed'
      '  FROM   T111_EMIT_LOAD'
      '  WHERE  T028_ID IS NOT NULL'
      '  AND    T111_CHANGED = '#39'Y'#39';'
      ''
      '  :VRESULT := v_changed;'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A00560052004500530055004C00540003000000
      0000000000000000}
    Left = 440
    Top = 427
  end
  object oqNotFoundInn: TOracleQuery
    SQL.Strings = (
      'declare'
      '  v_notfound'#9'NUMBER;'
      'begin'
      '  SELECT COUNT(*) INTO v_notfound'
      '    FROM T111_EMIT_LOAD'
      '    WHERE T028_ID IS NULL;'
      ''
      '  :VRESULT := v_notfound;'
      'end;'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A00560052004500530055004C00540003000000
      0000000000000000}
    Left = 440
    Top = 359
  end
  object oqNotFoundIndustry: TOracleQuery
    SQL.Strings = (
      'declare'
      '  v_notfound'#9'NUMBER;'
      'begin'
      '  SELECT COUNT(*) INTO v_notfound'
      '    FROM T111_EMIT_LOAD'
      '    WHERE T111_INDUSTRY_CODE IS NULL;'
      ' '
      '  :VRESULT := v_notfound;'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A00560052004500530055004C00540003000000
      0000000000000000}
    Left = 440
    Top = 391
  end
  object oqAfterLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :VRESULT := pk_form_405.f_check_InnDoubles;'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A00560052004500530055004C00540004000000
      0000000000000000}
    Left = 440
    Top = 323
  end
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      
        'SELECT ALL_COUNT, OLD_COUNT, NEW_COUNT, REG_NOT_FOUND_COUNT, IND' +
        '_NOT_FOUND_COUNT, '
      ' INN_DOUBLE_COUNT, T111_REG_COUNT, T111_IND_COUNT, EMPTY_COUNT'
      'FROM V_405_EMIT_LOAD_TOTAL')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000090000001200000041004C004C005F0043004F0055004E0054000100
      00000000120000004F004C0044005F0043004F0055004E005400010000000000
      120000004E00450057005F0043004F0055004E00540001000000000026000000
      5200450047005F004E004F0054005F0046004F0055004E0044005F0043004F00
      55004E0054000100000000002600000049004E0044005F004E004F0054005F00
      46004F0055004E0044005F0043004F0055004E00540001000000000020000000
      49004E004E005F0044004F00550042004C0045005F0043004F0055004E005400
      0100000000001C00000054003100310031005F005200450047005F0043004F00
      55004E0054000100000000001C00000054003100310031005F0049004E004400
      5F0043004F0055004E0054000100000000001600000045004D00500054005900
      5F0043004F0055004E005400010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsTotalAfterOpen
    Left = 104
    Top = 395
    object odsTotalALL_COUNT: TFloatField
      FieldName = 'ALL_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalOLD_COUNT: TFloatField
      FieldName = 'OLD_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalNEW_COUNT: TFloatField
      FieldName = 'NEW_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalREG_NOT_FOUND_COUNT: TFloatField
      FieldName = 'REG_NOT_FOUND_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalIND_NOT_FOUND_COUNT: TFloatField
      FieldName = 'IND_NOT_FOUND_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalINN_DOUBLE_COUNT: TFloatField
      FieldName = 'INN_DOUBLE_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalT111_REG_COUNT: TFloatField
      FieldName = 'T111_REG_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalT111_IND_COUNT: TFloatField
      FieldName = 'T111_IND_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalEMPTY_COUNT: TFloatField
      FieldName = 'EMPTY_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 136
    Top = 395
  end
end
