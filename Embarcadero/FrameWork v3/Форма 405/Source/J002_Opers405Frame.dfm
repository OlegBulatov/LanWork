inherited J002_Opers405: TJ002_Opers405
  Width = 1008
  Height = 416
  ExplicitWidth = 1008
  ExplicitHeight = 416
  inherited xxxDBGrid: TxxxDBGrid
    Top = 97
    Width = 1008
    Height = 319
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 2
            LastCol = 5
            Caption = #1048#1089#1093#1086#1076#1085#1072#1103' '#1101#1084#1080#1089#1089#1080#1103
          end
          item
            FirstCol = 6
            LastCol = 9
            Caption = #1043#1083#1072#1074#1085#1072#1103' '#1101#1084#1080#1089#1089#1080#1103
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T002_BANK_CODE'
        Title.Caption = #1050#1054
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_DATE_OP'
        Title.Caption = #1044#1072#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        Title.Caption = #1058#1080#1087' '#1094'.'#1073'.'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN'
        Title.Caption = 'ISIN'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        Title.Caption = #1056#1077#1075' '#8470
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        Title.Caption = #1069#1084#1080#1090#1077#1085#1090
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE_MAIN'
        Title.Caption = #1058#1080#1087' '#1094'.'#1073'.'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN_MAIN'
        Title.Caption = 'ISIN'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN_MAIN'
        Title.Caption = #1056#1077#1075' '#8470
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME_MAIN'
        Title.Caption = #1069#1084#1080#1090#1077#1085#1090
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_TYPE_ID'
        Title.Caption = #1050#1086#1076' '#1086#1087#1077#1088'.'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_PAY_ID'
        Title.Caption = #1053#1072#1087#1088'. '#1087#1083#1072#1090'.'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESID_NAME'
        Title.Caption = #1056#1077#1079#1080#1076#1077#1085#1090
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESID_NAME_MAIN'
        Title.Caption = #1043#1083'. '#1088#1077#1079#1080#1076#1077#1085#1090
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRESID_NAME'
        Title.Caption = #1053#1077#1088#1077#1079#1080#1076#1077#1085#1090
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRESID_NAME_MAIN'
        Title.Caption = #1043#1083'. '#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_COUNT'
        Title.Caption = #1050#1086#1083'-'#1074#1086', '#1096#1090'.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_CR_ID'
        Title.Caption = #1042#1072#1083#1102#1090#1072
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM'
        Title.Caption = #1057#1091#1084#1084#1072
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM_CROSS'
        Title.Caption = #1057#1091#1084#1084#1072' ($)'
        Width = 90
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 72
    Width = 1008
    ExplicitTop = 72
    ExplicitWidth = 1008
    inherited tlbList: TToolBar
      inherited tbAdd: TToolButton
        ExplicitWidth = 78
      end
      inherited tbUpdate: TToolButton
        ExplicitWidth = 78
      end
      inherited tbDelete: TToolButton
        ExplicitWidth = 78
      end
    end
    inherited tlbSeach: TToolBar
      inherited tbSearch: TToolButton
        ExplicitWidth = 57
      end
    end
    inherited tlbSelect: TToolBar
      Width = 89
      Visible = True
      ExplicitWidth = 89
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
        ExplicitWidth = 23
      end
      object ToolButton1: TToolButton
        Left = 35
        Top = 0
        Action = actLink
        AutoSize = True
      end
      object ToolButton2: TToolButton
        Left = 62
        Top = 0
        Action = actUnlink
        AutoSize = True
      end
    end
  end
  inherited paFilters: TPanel
    Width = 1008
    Height = 72
    ExplicitWidth = 1008
    ExplicitHeight = 72
    inherited GroupBox1: TGroupBox
      Left = 6
      Width = 939
      Height = 63
      ExplicitLeft = 6
      ExplicitWidth = 939
      ExplicitHeight = 63
      object Label1: TLabel
        Left = 101
        Top = 40
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = #1087#1086
      end
      object f_OpDateFrom: TDateTimePicker
        Left = 119
        Top = 14
        Width = 85
        Height = 21
        Date = 43032.000000000000000000
        Time = 43032.000000000000000000
        DateMode = dmUpDown
        TabOrder = 0
      end
      object f_Bank: TEdit
        Left = 308
        Top = 14
        Width = 74
        Height = 21
        TabOrder = 1
      end
      object cb_Isin: TCheckBox
        Left = 716
        Top = 16
        Width = 73
        Height = 17
        Caption = #1050#1086#1076' ISIN'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = cb_IsinClick
      end
      object f_Isin: TEdit
        Left = 783
        Top = 14
        Width = 133
        Height = 21
        TabOrder = 3
      end
      object cb_SecType: TCheckBox
        Left = 547
        Top = 16
        Width = 64
        Height = 17
        Caption = #1058#1080#1087' '#1094'.'#1073'.'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = cb_SecTypeClick
      end
      object f_SecType: TEdit
        Left = 615
        Top = 14
        Width = 90
        Height = 21
        TabOrder = 5
      end
      object cb_OpType: TCheckBox
        Left = 391
        Top = 16
        Width = 97
        Height = 17
        Caption = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
        Checked = True
        State = cbChecked
        TabOrder = 6
        OnClick = cb_OpTypeClick
      end
      object f_OpType: TEdit
        Left = 484
        Top = 14
        Width = 54
        Height = 21
        TabOrder = 7
      end
      object cb_OpCount: TCheckBox
        Left = 547
        Top = 39
        Width = 67
        Height = 17
        Caption = #1050'-'#1074#1086', '#1096#1090'.'
        Checked = True
        State = cbChecked
        TabOrder = 8
        OnClick = cb_OpCountClick
      end
      object f_OpCount: TEdit
        Left = 615
        Top = 38
        Width = 90
        Height = 21
        TabOrder = 9
      end
      object cb_Currency: TCheckBox
        Left = 390
        Top = 39
        Width = 62
        Height = 17
        Caption = #1042#1072#1083#1102#1090#1072
        Checked = True
        State = cbChecked
        TabOrder = 10
        OnClick = cb_CurrencyClick
      end
      object f_Currency: TEdit
        Left = 484
        Top = 38
        Width = 54
        Height = 21
        TabOrder = 11
      end
      object cb_OpSum: TCheckBox
        Left = 716
        Top = 40
        Width = 60
        Height = 17
        Caption = #1057#1091#1084#1084#1072
        Checked = True
        State = cbChecked
        TabOrder = 12
        OnClick = cb_OpSumClick
      end
      object f_OpSum: TEdit
        Left = 783
        Top = 38
        Width = 133
        Height = 21
        TabOrder = 13
      end
      object cb_OpDir: TCheckBox
        Left = 215
        Top = 39
        Width = 93
        Height = 17
        Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
        Checked = True
        State = cbChecked
        TabOrder = 14
        OnClick = cb_OpDirClick
      end
      object f_OpDir: TEdit
        Left = 308
        Top = 38
        Width = 74
        Height = 21
        TabOrder = 15
        Text = 'S (OUTR)'
      end
      object cb_Bank: TCheckBox
        Left = 215
        Top = 16
        Width = 73
        Height = 17
        Caption = #1050#1086#1076' '#1050#1054
        Checked = True
        State = cbChecked
        TabOrder = 16
        OnClick = cb_BankClick
      end
      object cb_OpDate: TCheckBox
        Left = 8
        Top = 16
        Width = 108
        Height = 17
        Caption = #1044#1072#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080' c'
        Checked = True
        State = cbChecked
        TabOrder = 17
        OnClick = cb_OpDateClick
      end
      object f_OpDateTo: TDateTimePicker
        Left = 119
        Top = 36
        Width = 85
        Height = 22
        Date = 43032.000000000000000000
        Time = 43032.000000000000000000
        DateMode = dmUpDown
        TabOrder = 18
      end
    end
    inherited Button1: TButton
      Left = 963
      ExplicitLeft = 963
    end
    object cbNotFilter: TCheckBox
      Left = 965
      Top = 43
      Width = 164
      Height = 17
      Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100' '#1072#1074#1090#1086#1092#1080#1083#1100#1090#1088
      TabOrder = 2
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Top = 295
    object actLink: TAction
      Caption = #1057#1074#1103#1079#1072#1090#1100
      Hint = #1057#1074#1103#1079#1072#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102' '#1092'417 '#1089' '#1086#1087#1077#1088#1072#1094#1080#1077#1081' '#1092'405'
      ImageIndex = 22
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
    object actUnlink: TAction
      Caption = #1054#1090#1074#1103#1079#1072#1090#1100
      Hint = #1054#1090#1074#1103#1079#1072#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102' '#1092'417 '#1086#1090' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1092'405'
      ImageIndex = 23
      OnExecute = actUnlinkExecute
      OnUpdate = actUnlinkUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 234
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T001_ID,'
      '  T002_BANK_CODE,'
      '  T001_DATE_OP,'
      '  T027_SEC_TYPE,'
      '  T010_ISIN,'
      '  T026_SEC_REGN,'
      '  T028_SHOT_NAME,'
      '  T027_SEC_TYPE_MAIN,'
      '  T010_ISIN_MAIN,'
      '  T026_SEC_REGN_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T001_OP_TYPE_ID,'
      '  T001_OP_PAY_ID,'
      '  RESID_NAME,'
      '  RESID_NAME_MAIN,'
      '  NRESID_NAME,'
      '  NRESID_NAME_MAIN,'
      '  T001_OP_COUNT,'
      '  T001_OP_CR_ID,'
      '  T001_OP_SUM,'
      '  T001_OP_SUM_CROSS,'
      '  LINKS_1,'
      '  LINKS_2'
      'from V_405_417_405_DATA'
      'where '
      '('
      'T001_DATE_OP BETWEEN :OP_DATE_FROM AND :OP_DATE_TO'
      ':BANK_FILTER'
      ':ISIN_FILTER'
      ':SEC_TYPE_FILTER'
      ':OP_TYPE_FILTER'
      ':OP_DIR_FILTER'
      ':OP_COUNT_FILTER'
      ':OP_CURRENCY_FILTER'
      ':OP_SUM_FILTER'
      ')'
      ':T001_ID_FILTER')
    Variables.Data = {
      040000000B000000180000003A004900530049004E005F00460049004C005400
      450052000100000002000000200000000000200000003A005300450043005F00
      54005900500045005F00460049004C0054004500520001000000020000002000
      000000001E0000003A004F0050005F0054005900500045005F00460049004C00
      5400450052000100000002000000200000000000200000003A004F0050005F00
      43004F0055004E0054005F00460049004C005400450052000100000002000000
      200000000000260000003A004F0050005F00430055005200520045004E004300
      59005F00460049004C0054004500520001000000020000002000000000001C00
      00003A004F0050005F00530055004D005F00460049004C005400450052000100
      0000020000002000000000001C0000003A004F0050005F004400490052005F00
      460049004C005400450052000100000002000000200000000000180000003A00
      420041004E004B005F00460049004C0054004500520001000000020000002000
      000000001A0000003A004F0050005F0044004100540045005F00460052004F00
      4D000C0000000000000000000000160000003A004F0050005F00440041005400
      45005F0054004F000C00000000000000000000001E0000003A00540030003000
      31005F00490044005F00460049004C0054004500520001000000020000002000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000170000001C00000054003000300032005F00420041004E004B005F00
      43004F00440045000100000000001800000054003000300031005F0044004100
      540045005F004F0050000100000000001A00000054003000320037005F005300
      450043005F005400590050004500010000000000120000005400300031003000
      5F004900530049004E000100000000002400000054003000320037005F005300
      450043005F0054005900500045005F004D00410049004E000100000000001C00
      000054003000310030005F004900530049004E005F004D00410049004E000100
      000000001A00000054003000320036005F005300450043005F00520045004700
      4E000100000000001C00000054003000320038005F00530048004F0054005F00
      4E0041004D0045000100000000002400000054003000320036005F0053004500
      43005F005200450047004E005F004D00410049004E0001000000000026000000
      54003000320038005F00530048004F0054005F004E0041004D0045005F004D00
      410049004E000100000000001E00000054003000300031005F004F0050005F00
      54005900500045005F00490044000100000000001A0000005400300030003100
      5F004F0050005F0043004F0055004E0054000100000000001A00000054003000
      300031005F004F0050005F00430052005F00490044000100000000001C000000
      54003000300031005F004F0050005F005000410059005F004900440001000000
      000014000000520045005300490044005F004E0041004D004500010000000000
      160000004E00520045005300490044005F004E0041004D004500010000000000
      1E000000520045005300490044005F004E0041004D0045005F004D0041004900
      4E00010000000000200000004E00520045005300490044005F004E0041004D00
      45005F004D00410049004E000100000000001600000054003000300031005F00
      4F0050005F00530055004D000100000000002200000054003000300031005F00
      4F0050005F00530055004D005F00430052004F00530053000100000000000E00
      000054003000300031005F00490044000100000000000E0000004C0049004E00
      4B0053005F0031000100000000000E0000004C0049004E004B0053005F003200
      010000000000}
    AfterScroll = odsListAfterScroll
    Top = 232
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Size = 9
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT010_ISIN: TStringField
      FieldName = 'T010_ISIN'
      Size = 255
    end
    object odsListT027_SEC_TYPE_MAIN: TStringField
      FieldName = 'T027_SEC_TYPE_MAIN'
      Size = 255
    end
    object odsListT010_ISIN_MAIN: TStringField
      FieldName = 'T010_ISIN_MAIN'
      Size = 255
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT026_SEC_REGN_MAIN: TStringField
      FieldName = 'T026_SEC_REGN_MAIN'
      Size = 265
    end
    object odsListT028_SHOT_NAME_MAIN: TStringField
      FieldName = 'T028_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListT001_OP_TYPE_ID: TFloatField
      FieldName = 'T001_OP_TYPE_ID'
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
    end
    object odsListT001_OP_CR_ID: TStringField
      FieldName = 'T001_OP_CR_ID'
      Size = 3
    end
    object odsListT001_OP_PAY_ID: TStringField
      FieldName = 'T001_OP_PAY_ID'
      Size = 255
    end
    object odsListRESID_NAME: TStringField
      FieldName = 'RESID_NAME'
      Size = 255
    end
    object odsListNRESID_NAME: TStringField
      FieldName = 'NRESID_NAME'
      Size = 255
    end
    object odsListRESID_NAME_MAIN: TStringField
      FieldName = 'RESID_NAME_MAIN'
      Size = 255
    end
    object odsListNRESID_NAME_MAIN: TStringField
      FieldName = 'NRESID_NAME_MAIN'
      Size = 255
    end
    object odsListT001_OP_SUM: TFloatField
      FieldName = 'T001_OP_SUM'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
    end
    object odsListLINKS_1: TFloatField
      FieldName = 'LINKS_1'
    end
    object odsListLINKS_2: TFloatField
      FieldName = 'LINKS_2'
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 226
  end
  inherited oqAdd: TOracleQuery
    Top = 235
  end
  inherited oqUpdate: TOracleQuery
    Top = 271
  end
  inherited oqDelete: TOracleQuery
    Top = 311
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 293
  end
  inherited pmFilter: TPopupMenu
    Left = 344
    Top = 104
  end
  object oqDivider: TOracleQuery
    SQL.Strings = (
      'select SUBSTR(TO_CHAR(3/2), 2, 1) from DUAL')
    Session = dmMain.OracleSession
    Optimize = False
    Left = 440
    Top = 224
  end
  object oqLink: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_417_Data.p_link_op(:T174_ID, :OP_PART, :T001_ID);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000003000000100000003A0054003100370034005F004900440004000000
      0000000000000000100000003A0054003000300031005F004900440004000000
      0000000000000000100000003A004F0050005F00500041005200540004000000
      0000000000000000}
    Left = 432
    Top = 288
  end
  object oqUnLink: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_417_DATA.p_unlink_op(:T174_ID, :OP_PART, :T001_ID);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000003000000100000003A004F0050005F00500041005200540004000000
      0000000000000000100000003A0054003000300031005F004900440004000000
      0000000000000000100000003A0054003100370034005F004900440004000000
      0000000000000000}
    Left = 488
    Top = 288
  end
  object odsLinks: TOracleDataSet
    SQL.Strings = (
      'select T174_ID,'
      '       T176_PART'
      'from   V_405_417_LINKS'
      'where  T174_ID = :T174_ID'
      'and    T001_ID = :T001_ID')
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0054003000300031005F004900440004000000
      0000000000000000100000003A0054003100370034005F004900440004000000
      0000000000000000}
    Session = dmMain.OracleSession
    Left = 640
    Top = 232
  end
end
