inherited M001_InnKoList: TM001_InnKoList
  Width = 975
  Height = 527
  ExplicitWidth = 975
  ExplicitHeight = 527
  inherited xxxDBGrid: TxxxDBGrid
    Top = 186
    Width = 975
    Height = 341
    AdvSettings.Indexes = <
      item
        FieldName = 'T183_REGN'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_DATE_START'
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_DATE_END'
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1076#1077#1081#1089#1090#1074#1080#1103
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_INN'
        Title.Alignment = taCenter
        Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' ('#1048#1053#1053')'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T183_SHORT_NAME'
        Title.Alignment = taCenter
        Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' ('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077')'
        Width = 400
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_REGN'
        Title.Alignment = taCenter
        Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' ('#1088#1077#1075'.'#8470' '#1074' '#1050#1043#1056#1050#1054')'
        Width = 111
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_ACTIVE'
        Title.Alignment = taCenter
        Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' ('#1080#1085#1076#1080#1082#1072#1090#1086#1088' '#1076#1077#1081#1089#1090#1074#1091#1102#1097#1077#1081' '#1050#1054' '#1074' '#1050#1043#1056#1050#1054')'
        Width = 144
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_IS_NKO'
        Title.Alignment = taCenter
        Title.Caption = #1053#1050#1054
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T183_BIC'
        Title.Alignment = taCenter
        Title.Caption = #1041#1048#1050
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T183_CITY'
        Title.Alignment = taCenter
        Title.Caption = #1043#1086#1088#1086#1076
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T183_ADDRESS'
        Title.Alignment = taCenter
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ERR_DESC'
        Title.Alignment = taCenter
        Title.Caption = #1054#1096#1080#1073#1082#1080
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T183_COMMENT'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        Width = 200
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 161
    Width = 975
    ExplicitTop = 161
    ExplicitWidth = 975
    inherited tlbSelect: TToolBar
      Width = 259
      ButtonHeight = 22
      ButtonWidth = 149
      ShowCaptions = True
      Visible = True
      ExplicitWidth = 259
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actCheck
        AutoSize = True
      end
      object ToolButton2: TToolButton
        Left = 236
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 72
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 244
        Top = 0
        Action = actChanges
        AutoSize = True
      end
    end
  end
  inherited paFilters: TPanel
    Width = 975
    Height = 140
    ExplicitWidth = 975
    ExplicitHeight = 140
    inherited GroupBox1: TGroupBox
      Width = 527
      Height = 133
      ExplicitWidth = 527
      ExplicitHeight = 133
      object Label1: TLabel
        Left = 159
        Top = 16
        Width = 11
        Height = 13
        Caption = ' c '
      end
      object Label2: TLabel
        Left = 349
        Top = 16
        Width = 18
        Height = 13
        Caption = ' '#1087#1086' '
      end
      object cbPeriod: TCheckBox
        Left = 8
        Top = 16
        Width = 120
        Height = 17
        Caption = #1055#1077#1088#1080#1086#1076' '#1076#1077#1081#1089#1090#1074#1080#1103
        TabOrder = 0
      end
      object lcbDateFrom: TxxxDBLookupCheckCombo
        Left = 176
        Top = 13
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'DATE_FROM'
        LookupDisplay = 'DATE_FROM'
        LookupSource = dsDateFrom
        TabOrder = 1
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object lcbDateTo: TxxxDBLookupCheckCombo
        Left = 371
        Top = 13
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'DATE_TO'
        LookupDisplay = 'DATE_TO'
        LookupSource = dsDateTo
        TabOrder = 2
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object cbRegn: TCheckBox
        Left = 8
        Top = 40
        Width = 120
        Height = 17
        Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088
        TabOrder = 3
      end
      object cbShowFils: TCheckBox
        Left = 8
        Top = 64
        Width = 153
        Height = 17
        Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1092#1080#1083#1080#1072#1083#1099
        TabOrder = 4
        OnClick = cbShowFilsClick
      end
      object cbShowActive: TCheckBox
        Left = 8
        Top = 87
        Width = 153
        Height = 17
        Caption = #1058#1086#1083#1100#1082#1086' '#1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1077' '#1050#1054
        TabOrder = 5
      end
      object cbShowDiffs: TCheckBox
        Left = 8
        Top = 111
        Width = 233
        Height = 17
        Caption = #1058#1086#1083#1100#1082#1086' '#1088#1072#1079#1083#1080#1095#1072#1102#1097#1080#1077#1089#1103' '#1089' '#1044#1048#1058' '#1079#1072#1087#1080#1089#1080
        TabOrder = 6
      end
    end
    inherited Button1: TButton
      Left = 539
      Top = 9
      ExplicitLeft = 539
      ExplicitTop = 9
    end
    object lceRegn: TRxLookupEdit
      Left = 179
      Top = 41
      Width = 146
      Height = 21
      LookupDisplay = 'T183_REGN'
      LookupField = 'T183_REGN'
      LookupSource = dsRegn
      TabOrder = 2
      Text = 'lceRegn'
      OnCloseUp = lceRegnCloseUp
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 140
    Width = 975
    ExplicitTop = 140
    ExplicitWidth = 975
    inherited Panel1: TPanel
      Left = 948
      ExplicitLeft = 948
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Top = 347
    inherited actAdd: TAction
      Enabled = True
      Visible = True
    end
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
    inherited actDelete: TAction
      Enabled = True
      Visible = True
    end
    object actCheck: TAction
      Caption = #1055#1088#1086#1074#1077#1088#1082#1072' 1 '#1080' 2 '#1088#1072#1079#1076#1077#1083#1072
      Hint = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' 1 '#1080' 2 '#1088#1072#1079#1076#1077#1083#1086#1074' '#1092'405'
      ImageIndex = 71
      OnExecute = actCheckExecute
      OnUpdate = actCheckUpdate
    end
    object actChanges: TAction
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1103
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1089#1090#1086#1088#1080#1102' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
      ImageIndex = 12
      OnExecute = actChangesExecute
      OnUpdate = actChangesUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 286
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T183_ID,'
      '       T183_DATE_START,'
      '       T183_DATE_END,'
      '       T183_INN,'
      '       T183_SHORT_NAME,'
      '       T183_REGN,'
      '       T183_ACTIVE,'
      '       T183_BIC,'
      '       T183_CITY,'
      '       T183_ADDRESS,'
      '       T183_IS_NKO,'
      '       T183_IS_FIL,'
      '       BIC,'
      '       NAME_P,'
      '       ADR,'
      '       ERR_CODES,'
      '       ERR_DESC,'
      '       HAS_DIFFS,'
      '       HAS_CHANGES,'
      '       HAS_ERRORS,'
      '       T183_COMMENT'
      'from   V_405_INN_KO_DATA'
      'where  T183_DATA_TYPE = '#39'D'#39)
    QBEDefinition.QBEFieldDefs = {
      05000000150000000E00000054003100380033005F0049004400010000000000
      1E00000054003100380033005F0044004100540045005F005300540041005200
      54000100000000001A00000054003100380033005F0044004100540045005F00
      45004E0044000100000000001000000054003100380033005F0049004E004E00
      0100000000001E00000054003100380033005F00530048004F00520054005F00
      4E0041004D0045000100000000001200000054003100380033005F0052004500
      47004E000100000000001600000054003100380033005F004100430054004900
      560045000100000000001000000054003100380033005F004200490043000100
      000000001200000054003100380033005F004300490054005900010000000000
      1800000054003100380033005F00410044004400520045005300530001000000
      0000060000004200490043000100000000000C0000004E0041004D0045005F00
      5000010000000000060000004100440052000100000000001200000045005200
      52005F0043004F00440045005300010000000000100000004500520052005F00
      44004500530043000100000000001600000054003100380033005F0049005300
      5F004E004B004F000100000000001600000054003100380033005F0049005300
      5F00460049004C00010000000000120000004800410053005F00440049004600
      46005300010000000000160000004800410053005F004300480041004E004700
      45005300010000000000140000004800410053005F004500520052004F005200
      53000100000000001800000054003100380033005F0043004F004D004D004500
      4E005400010000000000}
    Top = 284
    object odsListT183_ID: TFloatField
      FieldName = 'T183_ID'
    end
    object odsListT183_DATE_START: TDateTimeField
      FieldName = 'T183_DATE_START'
    end
    object odsListT183_DATE_END: TDateTimeField
      FieldName = 'T183_DATE_END'
    end
    object odsListT183_INN: TStringField
      FieldName = 'T183_INN'
      Size = 16
    end
    object odsListT183_SHORT_NAME: TStringField
      FieldName = 'T183_SHORT_NAME'
      Size = 255
    end
    object odsListT183_REGN: TStringField
      FieldName = 'T183_REGN'
      Size = 16
    end
    object odsListT183_ACTIVE: TStringField
      FieldName = 'T183_ACTIVE'
      Size = 1
    end
    object odsListT183_BIC: TStringField
      FieldName = 'T183_BIC'
      Size = 255
    end
    object odsListT183_CITY: TStringField
      FieldName = 'T183_CITY'
      Size = 255
    end
    object odsListT183_ADDRESS: TStringField
      FieldName = 'T183_ADDRESS'
      Size = 255
    end
    object odsListT183_IS_NKO: TStringField
      FieldName = 'T183_IS_NKO'
      Size = 3
    end
    object odsListT183_IS_FIL: TIntegerField
      FieldName = 'T183_IS_FIL'
    end
    object odsListBIC: TStringField
      FieldName = 'BIC'
      Size = 9
    end
    object odsListNAME_P: TStringField
      FieldName = 'NAME_P'
      Size = 250
    end
    object odsListADR: TStringField
      FieldName = 'ADR'
      Size = 30
    end
    object odsListERR_CODES: TStringField
      FieldName = 'ERR_CODES'
      Size = 255
    end
    object odsListERR_DESC: TStringField
      FieldName = 'ERR_DESC'
      Size = 4000
    end
    object odsListHAS_DIFFS: TFloatField
      FieldName = 'HAS_DIFFS'
    end
    object odsListHAS_CHANGES: TFloatField
      FieldName = 'HAS_CHANGES'
    end
    object odsListHAS_ERRORS: TFloatField
      FieldName = 'HAS_ERRORS'
    end
    object odsListT183_COMMENT: TStringField
      FieldName = 'T183_COMMENT'
      Size = 4000
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 16
    Top = 271
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :T183_ID := Pk_405_Inn_Ko_Isu.f_inn_ko_add ('
      '                :T183_DATE_START,'
      '                :T183_DATE_END,'
      '                :T183_REGN,'
      '                :T183_INN,'
      '                :T183_SHORT_NAME,'
      '                :T183_ACTIVE,'
      '                :T183_BIC,'
      '                :T183_CITY,'
      '                :T183_ADDRESS,'
      '                :T183_IS_NKO,'
      '                :T183_COMMENT,'
      '                :USER'
      '  );'
      ''
      '  Pk_405_Inn_Ko_Isu.p_check_inn_ko_errors;'
      'end;')
    Variables.Data = {
      040000000D000000100000003A0054003100380033005F004900440004000000
      0000000000000000200000003A0054003100380033005F004400410054004500
      5F00530054004100520054000C00000000000000000000001C0000003A005400
      3100380033005F0044004100540045005F0045004E0044000C00000000000000
      00000000140000003A0054003100380033005F005200450047004E0005000000
      0000000000000000120000003A0054003100380033005F0049004E004E000500
      00000000000000000000200000003A0054003100380033005F00530048004F00
      520054005F004E0041004D004500050000000000000000000000180000003A00
      54003100380033005F0041004300540049005600450004000000000000000000
      0000120000003A0054003100380033005F004200490043000500000000000000
      00000000140000003A0054003100380033005F00430049005400590005000000
      00000000000000001A0000003A0054003100380033005F004100440044005200
      450053005300050000000000000000000000180000003A005400310038003300
      5F00490053005F004E004B004F000500000000000000000000000A0000003A00
      55005300450052000500000000000000000000001A0000003A00540031003800
      33005F0043004F004D004D0045004E005400050000000000000000000000}
    Top = 287
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Inn_Ko_Isu.f_inn_ko_update ('
      '    :T183_ID,'
      '    :T183_DATE_START,'
      '    :T183_DATE_END,'
      '    :T183_INN,'
      '    :T183_SHORT_NAME,'
      '    :T183_BIC,'
      '    :T183_CITY,'
      '    :T183_ADDRESS,'
      '    :T183_ACTIVE,'
      '    :T183_IS_NKO,'
      '    :T183_COMMENT,'
      '    :USER'
      '    );'
      '  Pk_405_Inn_Ko_Isu.p_check_inn_ko_errors;'
      'end;')
    Variables.Data = {
      040000000C000000100000003A0054003100380033005F004900440004000000
      0000000000000000200000003A0054003100380033005F004400410054004500
      5F00530054004100520054000C00000000000000000000001C0000003A005400
      3100380033005F0044004100540045005F0045004E0044000C00000000000000
      00000000120000003A0054003100380033005F0049004E004E00050000000000
      000000000000200000003A0054003100380033005F00530048004F0052005400
      5F004E0041004D004500050000000000000000000000120000003A0054003100
      380033005F00420049004300050000000000000000000000140000003A005400
      3100380033005F0043004900540059000500000000000000000000001A000000
      3A0054003100380033005F004100440044005200450053005300050000000000
      000000000000180000003A0054003100380033005F0041004300540049005600
      4500040000000000000000000000180000003A0054003100380033005F004900
      53005F004E004B004F000500000000000000000000000A0000003A0055005300
      450052000500000000000000000000001A0000003A0054003100380033005F00
      43004F004D004D0045004E005400050000000000000000000000}
    Top = 323
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Inn_Ko_Isu.p_inn_ko_del(:T183_ID);'
      '  Pk_405_Inn_Ko_Isu.p_check_inn_ko_errors;'
      'end;')
    Variables.Data = {
      0400000001000000100000003A0054003100380033005F004900440004000000
      0000000000000000}
    Top = 363
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 345
  end
  inherited pmFilter: TPopupMenu
    Left = 320
    Top = 136
  end
  object odsDateFrom: TOracleDataSet
    SQL.Strings = (
      'select DATE_FROM'
      'from   V_405_INN_KO_PERIODS'
      'order  by DATE_FROM')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000010000001200000044004100540045005F00460052004F004D000100
      00000000}
    Session = dmMain.OracleSession
    Left = 188
    Top = 12
    object odsDateFromDATE_FROM: TDateTimeField
      FieldName = 'DATE_FROM'
      Required = True
    end
  end
  object dsDateFrom: TDataSource
    DataSet = odsDateFrom
    Left = 220
    Top = 12
  end
  object odsDateTo: TOracleDataSet
    SQL.Strings = (
      'select DATE_TO'
      'from   V_405_INN_KO_PERIODS'
      'order  by DATE_TO')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000010000000E00000044004100540045005F0054004F00010000000000}
    Session = dmMain.OracleSession
    Left = 388
    Top = 12
    object odsDateToDATE_TO: TDateTimeField
      FieldName = 'DATE_TO'
      Required = True
    end
  end
  object dsDateTo: TDataSource
    DataSet = odsDateTo
    Left = 428
    Top = 12
  end
  object odsRegn: TOracleDataSet
    SQL.Strings = (
      'select   distinct T183_REGN'
      'from     V_405_INN_KO_DATA'
      'where    T183_IS_FIL IN (0, :SHOW_FILS)'
      'order by T183_REGN')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A00530048004F0057005F00460049004C005300
      040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000010000001200000054003100380033005F005200450047004E000100
      00000000}
    Session = dmMain.OracleSession
    Left = 328
    Top = 40
  end
  object dsRegn: TDataSource
    DataSet = odsRegn
    Left = 360
    Top = 40
  end
  object oqCheck: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Inn_Ko_Isu.p_correct_ko_data(:DATE_FROM, :DATE_TO);'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000140000003A0044004100540045005F00460052004F004D00
      0C0000000000000000000000100000003A0044004100540045005F0054004F00
      0C0000000000000000000000}
    Left = 416
    Top = 288
  end
end
