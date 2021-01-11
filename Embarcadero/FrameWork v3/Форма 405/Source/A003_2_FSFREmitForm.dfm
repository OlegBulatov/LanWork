inherited A003_2_FSFREmit: TA003_2_FSFREmit
  Left = 100
  Top = 140
  Caption = #1044#1072#1085#1085#1099#1077' '#1074' '#1092#1072#1081#1083#1077
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Height = 392
    ExplicitLeft = 1161
    ExplicitHeight = 715
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
    ExplicitLeft = 1164
    ExplicitHeight = 715
  end
  inherited paMain: TPanel
    Height = 392
    ExplicitWidth = 1161
    ExplicitHeight = 715
    inherited ToolBar2: TToolBar
      Top = 105
      ExplicitTop = 105
      ExplicitWidth = 1161
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
      Top = 128
      Height = 219
      AdvSettings.Indexes = <
        item
          FieldName = 'T144_ID'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 5
              LastCol = 6
              Caption = #1054#1090#1088#1072#1089#1083#1100
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T144_FIRM_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 340
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'T144_FIRM_INN'
          Title.Alignment = taCenter
          Title.Caption = #1048#1053#1053
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_LICENCE'
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1083#1080#1094#1077#1085#1079#1080#1080
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_MAIN_COUNT'
          Title.Caption = #1053#1072#1081#1076#1077#1085#1086' '#1082#1086#1084#1087#1072#1085#1080#1081' '#1074' '#1088#1077#1077#1089#1090#1088#1077' '#1087#1086' '#1048#1053#1053
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_NEED_CHANGE_DESC'
          Title.Caption = #1058#1088#1077#1073#1091#1077#1084#1086#1077' '#1076#1077#1081#1089#1090#1074#1080#1077
          Width = 177
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY_CODE'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1076' '#1074' '#1088#1077#1077#1089#1090#1088#1077
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_IND_CODE'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1076
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_ACT_DATE'
          Title.Caption = #1055#1086' '#1089#1086#1089#1090#1086#1103#1085#1080#1102' '#1085#1072
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_NEED_CHANGE'
          Title.Caption = #1050#1086#1076' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T144_FIRM_STATE'
          Title.Caption = #1050#1086#1076' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 63
      ExplicitTop = 63
      inherited Panel1: TPanel
        ExplicitLeft = 1134
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 84
      ExplicitTop = 84
      inherited Panel1: TPanel
        ExplicitLeft = 1134
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
      ExplicitTop = 670
      ExplicitWidth = 1161
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
        Left = 111
        Top = 7
        Width = 75
        Height = 13
        Caption = #1053#1077#1090' '#1074' '#1088#1077#1077#1089#1090#1088#1077':'
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
        Left = 263
        Top = 7
        Width = 132
        Height = 13
        Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1103' '#1085#1077' '#1090#1088#1077#1073#1091#1102#1090#1089#1103':'
        ParentShowHint = False
        ShowHint = True
      end
      object Label4: TLabel
        Left = 111
        Top = 23
        Width = 80
        Height = 13
        Caption = #1057#1091#1097#1077#1089#1090#1074#1091#1102#1097#1080#1093':'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText1: TDBText
        Left = 54
        Top = 7
        Width = 46
        Height = 17
        DataField = 'ALL_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText2: TDBText
        Left = 195
        Top = 7
        Width = 46
        Height = 17
        DataField = 'NEW_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText3: TDBText
        Left = 195
        Top = 23
        Width = 46
        Height = 17
        DataField = 'OLD_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText4: TDBText
        Left = 417
        Top = 7
        Width = 46
        Height = 17
        DataField = 'NOT_CHANGED_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label6: TLabel
        Left = 481
        Top = 7
        Width = 135
        Height = 13
        Caption = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1060#1055':'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText6: TDBText
        Left = 620
        Top = 7
        Width = 46
        Height = 17
        DataField = 'SET_NOT_FP_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label7: TLabel
        Left = 263
        Top = 23
        Width = 156
        Height = 13
        Hint = #1050#1086#1076' '#1054#1050#1042#1069#1044' '#1085#1077' [65.23, 67.11, 67.12, 67.13 ]:'
        Caption = #1050#1086#1076' '#1054#1050#1042#1069#1044' '#1085#1077' [65.23,67.11... ]:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText7: TDBText
        Left = 418
        Top = 23
        Width = 46
        Height = 17
        DataField = 'UNKNOWN_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label8: TLabel
        Left = 481
        Top = 23
        Width = 122
        Height = 13
        Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1074' '#1089#1087#1080#1089#1086#1082' '#1060#1055':'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText8: TDBText
        Left = 620
        Top = 23
        Width = 46
        Height = 17
        DataField = 'SET_FP_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label10: TLabel
        Left = 12
        Top = 23
        Width = 41
        Height = 13
        Hint = #1042#1089#1077#1075#1086' '#1082#1086#1084#1087#1072#1085#1080#1081
        Caption = #1055#1091#1089#1090#1099#1077':'
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
        Left = 54
        Top = 23
        Width = 46
        Height = 17
        DataField = 'EMPTY_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label5: TLabel
        Left = 687
        Top = 7
        Width = 334
        Height = 13
        Hint = #1050#1086#1076' '#1054#1050#1042#1069#1044' '#1085#1077' [65.23, 67.11, 67.12, 67.13 ]:'
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077': '#1082#1086#1076#1099' '#1054#1050#1042#1069#1044' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072' [65.23, 67.11, 67.12, 67.13 ]'
        ParentShowHint = False
        ShowHint = True
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 677
      Height = 63
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitWidth = 1161
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
        Left = 91
        Top = 8
        Width = 224
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        Items.Strings = (
          #1053#1077#1090' '#1074' '#1088#1077#1077#1089#1090#1088#1077
          #1057#1091#1097#1077#1089#1090#1074#1091#1102#1097#1080#1077
          #1055#1091#1089#1090#1099#1077' '#1089#1090#1088#1086#1082#1080)
      end
      object Button1: TButton
        Left = 319
        Top = 6
        Width = 75
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 2
        OnClick = Button1Click
      end
      object CbIndustries: TCheckBox
        Tag = 900
        Left = 7
        Top = 35
        Width = 80
        Height = 17
        Caption = #1051#1080#1094#1077#1085#1079#1080#1103
        TabOrder = 3
      end
      object CmbIndustries: TComboBox
        Tag = 901
        Left = 91
        Top = 33
        Width = 224
        Height = 21
        Style = csDropDownList
        TabOrder = 4
        Items.Strings = (
          #1042#1082#1083#1102#1095#1080#1090#1100' '#1074' '#1089#1087#1080#1089#1086#1082' '#1092#1080#1085'. '#1087#1086#1089#1088#1077#1076#1085#1080#1082#1086#1074
          #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1092#1080#1085'. '#1087#1086#1089#1088#1077#1076#1085#1080#1082#1086#1074
          #1048#1079#1084#1077#1085#1077#1085#1080#1103' '#1085#1077' '#1090#1088#1077#1073#1091#1102#1090#1089#1103
          #1050#1086#1076' '#1054#1050#1042#1069#1044' '#1085#1077' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' [66, 67.2]')
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 747
    ExplicitWidth = 1164
  end
  inherited pnlButtons: TPanel
    Top = 392
    Height = 32
    ExplicitTop = 715
    ExplicitWidth = 1164
    ExplicitHeight = 32
    inherited OKBtn: TButton
      Left = 1006
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1086#1090#1084#1077#1095#1077#1085#1085#1099#1077' '#1079#1072#1087#1080#1089#1080
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      ExplicitLeft = 1006
    end
    inherited CancelBtn: TButton
      Left = 1086
      ExplicitLeft = 1086
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
      
        'SELECT T144_ID, T144_FIRM_NAME, T144_FIRM_INN, T144_IND_CODE, T1' +
        '44_LICENCE, '
      
        ' T144_ACT_DATE, T144_MAIN_COUNT, T144_NEED_CHANGE, T144_NEED_CHA' +
        'NGE_DESC, T028_INDUSTRY_CODE, T144_FIRM_STATE'
      'FROM V_405_LOAD_FSFR'
      ''
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      050000000B0000002400000054003000320038005F0049004E00440055005300
      5400520059005F0043004F00440045000100000000000E000000540031003400
      34005F00490044000100000000001C00000054003100340034005F0046004900
      52004D005F004E0041004D0045000100000000001A0000005400310034003400
      5F004600490052004D005F0049004E004E000100000000001A00000054003100
      340034005F0049004E0044005F0043004F004400450001000000000018000000
      54003100340034005F004C004900430045004E00430045000100000000001A00
      000054003100340034005F004100430054005F00440041005400450001000000
      00001E00000054003100340034005F004D00410049004E005F0043004F005500
      4E0054000100000000002000000054003100340034005F004E00450045004400
      5F004300480041004E00470045000100000000002A0000005400310034003400
      5F004E004500450044005F004300480041004E00470045005F00440045005300
      43000100000000001E00000054003100340034005F004600490052004D005F00
      53005400410054004500010000000000}
    object odsListT144_ID: TFloatField
      FieldName = 'T144_ID'
    end
    object odsListT144_FIRM_NAME: TStringField
      FieldName = 'T144_FIRM_NAME'
      Size = 255
    end
    object odsListT144_FIRM_INN: TStringField
      FieldName = 'T144_FIRM_INN'
      Size = 255
    end
    object odsListT144_IND_CODE: TStringField
      FieldName = 'T144_IND_CODE'
      Size = 255
    end
    object odsListT144_LICENCE: TStringField
      FieldName = 'T144_LICENCE'
      Size = 255
    end
    object odsListT144_ACT_DATE: TDateTimeField
      FieldName = 'T144_ACT_DATE'
    end
    object odsListT144_MAIN_COUNT: TFloatField
      FieldName = 'T144_MAIN_COUNT'
    end
    object odsListT144_NEED_CHANGE: TStringField
      FieldName = 'T144_NEED_CHANGE'
      Size = 1
    end
    object odsListT144_NEED_CHANGE_DESC: TStringField
      FieldName = 'T144_NEED_CHANGE_DESC'
      Size = 255
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT144_FIRM_STATE: TStringField
      FieldName = 'T144_FIRM_STATE'
      Size = 1
    end
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
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'delete from T111_EMIT_LOAD')
    Top = 216
  end
  inherited oqDupl: TOracleQuery
    Top = 216
  end
  inherited pmFilter: TPopupMenu
    Left = 248
    Top = 32
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
    Top = 296
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
    Top = 228
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
    Top = 260
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
    Top = 192
  end
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      
        'SELECT ALL_COUNT, OLD_COUNT, NEW_COUNT, EMPTY_COUNT, UNKNOWN_COU' +
        'NT, '
      ' NOT_CHANGED_COUNT, SET_NOT_FP_COUNT, SET_FP_COUNT'
      'FROM V_405_LOAD_FSFR_TOTAL')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000080000001200000041004C004C005F0043004F0055004E0054000100
      00000000120000004F004C0044005F0043004F0055004E005400010000000000
      120000004E00450057005F0043004F0055004E00540001000000000016000000
      45004D005000540059005F0043004F0055004E0054000100000000001A000000
      55004E004B004E004F0057004E005F0043004F0055004E005400010000000000
      220000004E004F0054005F004300480041004E004700450044005F0043004F00
      55004E005400010000000000200000005300450054005F004E004F0054005F00
      460050005F0043004F0055004E00540001000000000018000000530045005400
      5F00460050005F0043004F0055004E005400010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsTotalAfterOpen
    Left = 104
    Top = 264
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
    object odsTotalEMPTY_COUNT: TFloatField
      FieldName = 'EMPTY_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalUNKNOWN_COUNT: TFloatField
      FieldName = 'UNKNOWN_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalNOT_CHANGED_COUNT: TFloatField
      FieldName = 'NOT_CHANGED_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalSET_NOT_FP_COUNT: TFloatField
      FieldName = 'SET_NOT_FP_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalSET_FP_COUNT: TFloatField
      FieldName = 'SET_FP_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 136
    Top = 264
  end
end
