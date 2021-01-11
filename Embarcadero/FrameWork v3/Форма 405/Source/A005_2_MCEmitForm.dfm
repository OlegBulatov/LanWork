inherited A005_2_MCEmit: TA005_2_MCEmit
  Left = 139
  Top = 186
  Caption = #1044#1072#1085#1085#1099#1077' '#1074' '#1092#1072#1081#1083#1077
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Height = 392
    ExplicitLeft = 1025
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
    ExplicitLeft = 1028
    ExplicitHeight = 601
  end
  inherited paMain: TPanel
    Height = 392
    ExplicitWidth = 1025
    ExplicitHeight = 601
    inherited ToolBar2: TToolBar
      Top = 81
      ExplicitTop = 81
      ExplicitWidth = 1025
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
      Top = 104
      Height = 243
      AdvSettings.Indexes = <
        item
          FieldName = 'T142_ID'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 7
              Caption = #1055#1088#1080#1079#1085#1072#1082' '#1059#1087#1088#1072#1074#1083#1103#1102#1097#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T142_SHOT_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 364
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_FULL_NAME'
          Title.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Visible = False
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'T142_INN'
          Title.Alignment = taCenter
          Title.Caption = #1048#1053#1053
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_SPARK_ID'
          Title.Caption = #1050#1086#1076' '#1057#1055#1040#1056#1050
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_MAIN_COUNT'
          Title.Caption = #1053#1072#1081#1076#1077#1085#1086' '#1074' '#1088#1077#1077#1089#1090#1088#1077
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_IS_MC_CHANGED'
          Title.Caption = #1058#1088#1077#1073#1091#1090#1089#1103' '#1079#1072#1084#1077#1085#1072
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_IS_MC_DESC'
          Title.Caption = #1042' '#1088#1077#1077#1089#1090#1088#1077
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_SPARK_IS_MC'
          Title.Caption = #1055#1086' '#1076#1072#1085#1085#1099#1084'...'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_MC_STATE'
          Title.Caption = #1050#1086#1076' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 39
      ExplicitTop = 39
      inherited Panel1: TPanel
        ExplicitLeft = 998
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 60
      ExplicitTop = 60
      inherited Panel1: TPanel
        ExplicitLeft = 998
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
      ExplicitTop = 556
      ExplicitWidth = 1025
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
        Width = 62
        Height = 13
        Caption = #1053#1077' '#1085#1072#1081#1076#1077#1085#1086':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
      object Label7: TLabel
        Left = 296
        Top = 7
        Width = 54
        Height = 13
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100':'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText7: TDBText
        Left = 392
        Top = 7
        Width = 46
        Height = 17
        DataField = 'MC_CHANGED_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label10: TLabel
        Left = 296
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
        Left = 392
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
      Height = 39
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitWidth = 1025
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
        Width = 232
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        Items.Strings = (
          #1053#1077' '#1085#1072#1081#1076#1077#1085#1086
          #1057#1091#1097#1077#1089#1090#1074#1091#1102#1097#1080#1077
          #1055#1091#1089#1090#1099#1077' '#1089#1090#1088#1086#1082#1080)
      end
      object Button1: TButton
        Left = 325
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
    ExplicitWidth = 1028
  end
  inherited pnlButtons: TPanel
    Top = 392
    Height = 32
    ExplicitTop = 601
    ExplicitWidth = 1028
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
      
        'SELECT T142_ID, T142_SHOT_NAME, T142_FULL_NAME, T142_INN, T142_S' +
        'PARK_ID,'
      
        ' T028_ID, T036_IS_MC, T142_MAIN_COUNT, T036_IS_MC_DESC, T142_SPA' +
        'RK_IS_MC,'
      ' T142_IS_MC_CHANGED, T142_MC_STATE'
      'FROM  V_405_LOAD_MC '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      050000000C0000000E00000054003000320038005F0049004400010000000000
      0E00000054003100340032005F00490044000100000000001C00000054003100
      340032005F00530048004F0054005F004E0041004D0045000100000000001C00
      000054003100340032005F00460055004C004C005F004E0041004D0045000100
      000000001000000054003100340032005F0049004E004E000100000000001A00
      000054003100340032005F0053005000410052004B005F004900440001000000
      00001400000054003000330036005F00490053005F004D004300010000000000
      1E00000054003100340032005F004D00410049004E005F0043004F0055004E00
      54000100000000001E00000054003000330036005F00490053005F004D004300
      5F0044004500530043000100000000002000000054003100340032005F005300
      5000410052004B005F00490053005F004D004300010000000000240000005400
      3100340032005F00490053005F004D0043005F004300480041004E0047004500
      44000100000000001A00000054003100340032005F004D0043005F0053005400
      410054004500010000000000}
    object odsListT142_ID: TFloatField
      FieldName = 'T142_ID'
      Required = True
    end
    object odsListT142_SHOT_NAME: TStringField
      FieldName = 'T142_SHOT_NAME'
      Size = 255
    end
    object odsListT142_FULL_NAME: TStringField
      FieldName = 'T142_FULL_NAME'
      Size = 255
    end
    object odsListT142_INN: TStringField
      FieldName = 'T142_INN'
      Required = True
      Size = 255
    end
    object odsListT142_SPARK_ID: TFloatField
      FieldName = 'T142_SPARK_ID'
      Required = True
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT036_IS_MC: TStringField
      FieldName = 'T036_IS_MC'
      Size = 1
    end
    object odsListT142_MAIN_COUNT: TFloatField
      FieldName = 'T142_MAIN_COUNT'
    end
    object odsListT036_IS_MC_DESC: TStringField
      FieldName = 'T036_IS_MC_DESC'
      Size = 3
    end
    object odsListT142_SPARK_IS_MC: TStringField
      FieldName = 'T142_SPARK_IS_MC'
      Size = 2
    end
    object odsListT142_IS_MC_CHANGED: TStringField
      FieldName = 'T142_IS_MC_CHANGED'
      Size = 3
    end
    object odsListT142_MC_STATE: TStringField
      FieldName = 'T142_MC_STATE'
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
      
        'select ALL_COUNT, OLD_COUNT, NEW_COUNT, EMPTY_COUNT, MC_CHANGED_' +
        'COUNT'
      'from  V_405_LOAD_MC_TOTAL'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000050000001200000041004C004C005F0043004F0055004E0054000100
      00000000120000004F004C0044005F0043004F0055004E005400010000000000
      120000004E00450057005F0043004F0055004E00540001000000000016000000
      45004D005000540059005F0043004F0055004E00540001000000000020000000
      4D0043005F004300480041004E004700450044005F0043004F0055004E005400
      010000000000}
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
    object odsTotalMC_CHANGED_COUNT: TFloatField
      FieldName = 'MC_CHANGED_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 136
    Top = 264
  end
end
