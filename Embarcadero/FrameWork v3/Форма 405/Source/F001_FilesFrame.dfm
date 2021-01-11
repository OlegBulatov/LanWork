inherited F001_Files: TF001_Files
  Width = 1047
  Height = 516
  ExplicitWidth = 1047
  ExplicitHeight = 516
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1047
    Height = 447
    AdvSettings.Indexes = <
      item
        FieldName = 'DELETE_FLAG'
        SortType = stDesc
      end
      item
        FieldName = 'LOAD_FLAG'
        SortType = stDesc
      end
      item
        FieldName = 'SUM_COUNT'
        SortType = stAsc
      end
      item
        FieldName = 'T202_FILE_NAME'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'LOAD_FLAG'
        Title.Caption = #1047#1072#1075#1088#1091#1078#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELETE_FLAG'
        Title.Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T028_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T202_FILE_NAME'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1092#1072#1081#1083#1072
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_FILE_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1092#1072#1081#1083#1072
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_INFO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T202_STATE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T202_STATE_DESC'
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_EXISTS'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T202_EXISTS_DESC'
        Title.Caption = #1060#1072#1081#1083' '#1085#1072#1081#1076#1077#1085
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_FILE_DATE_NEW'
        Title.Caption = #1048#1079#1084#1077#1085#1080#1083#1072#1089#1100' '#1076#1072#1090#1072' '#1092#1072#1081#1083#1072
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUM_COUNT'
        Title.Caption = #1047#1072#1075#1088#1091#1078#1077#1085#1086' '#1089#1090#1088#1086#1082
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T202_LOAD_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1075#1088#1091#1079#1082#1080
        Width = 125
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1047
    ExplicitWidth = 1047
    inherited tlbList: TToolBar
      Width = 492
      ButtonWidth = 88
      ExplicitWidth = 492
      inherited tbSeparator02: TToolButton
        Enabled = False
        Visible = False
      end
      inherited tbAdd: TToolButton
        ExplicitWidth = 78
      end
      inherited tbUpdate: TToolButton
        ExplicitWidth = 78
      end
      inherited tbDelete: TToolButton
        ExplicitWidth = 78
      end
      object ToolButton1: TToolButton
        Left = 245
        Top = 0
        Action = actLoad
      end
      object ToolButton2: TToolButton
        Left = 333
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 47
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 341
        Top = 0
        Action = actOpenFile
        AutoSize = True
      end
      object ToolButton4: TToolButton
        Left = 416
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 47
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 424
        Top = 0
        Action = actShowData
      end
    end
    inherited tlbExcel: TToolBar
      Left = 569
      ExplicitLeft = 569
    end
    inherited tlbSeach: TToolBar
      Left = 603
      ExplicitLeft = 603
      inherited tbSearch: TToolButton
        ExplicitWidth = 57
      end
    end
    inherited tlbFilter: TToolBar
      Left = 670
      ExplicitLeft = 670
      inherited tbSeparator05: TToolButton
        ExplicitHeight = 22
      end
      inherited tbFilter: TToolButton
        ExplicitHeight = 22
      end
    end
    inherited tlbSelect: TToolBar
      Left = 751
      ExplicitLeft = 751
      inherited tbSelect: TToolButton
        ExplicitWidth = 23
      end
    end
  end
  object GroupBox1: TPanel [2]
    Left = 0
    Top = 493
    Width = 1047
    Height = 23
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 12
      Top = 7
      Width = 74
      Height = 13
      Hint = #1042#1089#1077#1075#1086' '#1082#1086#1084#1087#1072#1085#1080#1081
      Caption = #1042#1089#1077#1075#1086' '#1092#1072#1081#1083#1086#1074':'
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
      Left = 155
      Top = 7
      Width = 57
      Height = 13
      Caption = #1047#1072#1075#1088#1091#1078#1072#1090#1100':'
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
      Left = 291
      Top = 7
      Width = 46
      Height = 13
      Caption = #1059#1076#1072#1083#1103#1090#1100':'
      ParentShowHint = False
      ShowHint = True
    end
    object DBText1: TDBText
      Left = 87
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
      DataField = 'LOAD_COUNT'
      DataSource = dsTotal
      ParentShowHint = False
      ShowHint = True
    end
    object DBText4: TDBText
      Left = 340
      Top = 7
      Width = 46
      Height = 17
      DataField = 'DEL_COUNT'
      DataSource = dsTotal
      ParentShowHint = False
      ShowHint = True
    end
    object Label6: TLabel
      Left = 434
      Top = 7
      Width = 43
      Height = 13
      Caption = #1054#1096#1080#1073#1086#1082':'
      ParentShowHint = False
      ShowHint = True
    end
    object DBText6: TDBText
      Left = 478
      Top = 7
      Width = 46
      Height = 17
      DataField = 'ERR_COUNT'
      DataSource = dsTotal
      ParentShowHint = False
      ShowHint = True
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 1047
    ExplicitWidth = 1047
    inherited Panel1: TPanel
      Left = 1020
      ExplicitLeft = 1020
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actLoad: TAction
      Category = 'Adv'
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100'...'
      Hint = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1087#1088#1086#1094#1077#1089#1089' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1076#1072#1085#1085#1099#1093' '#1080#1079' '#1092#1072#1081#1083#1086#1074'...'
      ImageIndex = 13
      OnExecute = actLoadExecute
    end
    object actOpenFile: TAction
      Category = 'Adv'
      Caption = #1054#1090#1082#1088#1099#1090#1100
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083'...'
      ImageIndex = 46
      OnExecute = actOpenFileExecute
    end
    object actShowData: TAction
      Category = 'Adv'
      Caption = #1044#1072#1085#1085#1099#1077'...'
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1072#1085#1085#1099#1093' '#1092#1072#1081#1083#1072
      ImageIndex = 11
      OnExecute = actShowDataExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '   LOAD_FLAG,'
      '  DELETE_FLAG,T202_ID,'
      '  T055_ID,'
      '  T028_ID,'
      '  T202_LOAD_DATE,'
      '  T202_FILE_NAME,'
      '         T202_FILE_DATE,'
      '         T202_FILE_DATE_NEW,'
      '  T202_INFO,'
      '  T202_STATE,'
      '  T202_STATE_DESC,'
      '  T202_EXISTS,'
      '  T202_EXISTS_DESC,'
      '  T202_ERR_MSG,'
      '  SUM_COUNT'
      'FROM V_405_ND_LOAD_FILES'
      'WHERE T055_ID = :T055_ID'
      ' ')
    Variables.Data = {
      0400000001000000100000003A0054003000350035005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000100000000E00000054003200300032005F0049004400010000000000
      0E00000054003000350035005F00490044000100000000000E00000054003000
      320038005F00490044000100000000001C00000054003200300032005F004C00
      4F00410044005F0044004100540045000100000000001C000000540032003000
      32005F00460049004C0045005F004E0041004D00450001000000000012000000
      54003200300032005F0049004E0046004F000100000000001400000054003200
      300032005F00530054004100540045000100000000001E000000540032003000
      32005F00530054004100540045005F0044004500530043000100000000001600
      000054003200300032005F004500580049005300540053000100000000002000
      000054003200300032005F004500580049005300540053005F00440045005300
      4300010000000000120000004C004F00410044005F0046004C00410047000100
      0000000016000000440045004C004500540045005F0046004C00410047000100
      000000001800000054003200300032005F004500520052005F004D0053004700
      01000000000012000000530055004D005F0043004F0055004E00540001000000
      00001C00000054003200300032005F00460049004C0045005F00440041005400
      45000100000000002400000054003200300032005F00460049004C0045005F00
      44004100540045005F004E0045005700010000000000}
    object odsListT202_ID: TFloatField
      FieldName = 'T202_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT202_LOAD_DATE: TDateTimeField
      FieldName = 'T202_LOAD_DATE'
    end
    object odsListT202_FILE_NAME: TStringField
      DisplayWidth = 50
      FieldName = 'T202_FILE_NAME'
      Size = 500
    end
    object odsListT202_INFO: TStringField
      FieldName = 'T202_INFO'
      Size = 500
    end
    object odsListT202_STATE: TStringField
      FieldName = 'T202_STATE'
      Size = 1
    end
    object odsListT202_STATE_DESC: TStringField
      FieldName = 'T202_STATE_DESC'
      Size = 1000
    end
    object odsListT202_EXISTS: TStringField
      FieldName = 'T202_EXISTS'
      Size = 1
    end
    object odsListT202_EXISTS_DESC: TStringField
      FieldName = 'T202_EXISTS_DESC'
      Size = 14
    end
    object odsListLOAD_FLAG: TStringField
      FieldName = 'LOAD_FLAG'
      Size = 1
    end
    object odsListDELETE_FLAG: TStringField
      FieldName = 'DELETE_FLAG'
      Size = 1
    end
    object odsListT202_ERR_MSG: TStringField
      FieldName = 'T202_ERR_MSG'
      Size = 1000
    end
    object odsListSUM_COUNT: TFloatField
      FieldName = 'SUM_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT202_FILE_DATE: TDateTimeField
      FieldName = 'T202_FILE_DATE'
    end
    object odsListT202_FILE_DATE_NEW: TDateTimeField
      FieldName = 'T202_FILE_DATE_NEW'
    end
  end
  object oqRegFiles: TOracleQuery
    SQL.Strings = (
      'BEGIN '
      
        '  PK_405_ND_DATA.P_REGISTER_FILES ( :I_T055_ID, :I_FILE_LIST, :i' +
        '_DATE_LIST );'
      '  COMMIT; '
      'END; ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000003000000140000003A0049005F0054003000350035005F0049004400
      040000000000000000000000180000003A0049005F00460049004C0045005F00
      4C00490053005400050000000000000001000000FF000000FF00000018000000
      3A0049005F0044004100540045005F004C004900530054000C00000000000000
      01000000FF00000000000000}
    Left = 192
    Top = 304
  end
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  ALL_COUNT,'
      '  LOAD_COUNT,'
      '  DEL_COUNT,'
      '  ERR_COUNT'
      'FROM V_405_ND_LOAD_TOTAL'
      'WHERE    T055_ID = :T055_ID')
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003000350035005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000001200000041004C004C005F0043004F0055004E0054000100
      00000000140000004C004F00410044005F0043004F0055004E00540001000000
      000012000000440045004C005F0043004F0055004E0054000100000000001200
      00004500520052005F0043004F0055004E005400010000000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 272
    object odsTotalALL_COUNT: TFloatField
      FieldName = 'ALL_COUNT'
    end
    object odsTotalLOAD_COUNT: TFloatField
      FieldName = 'LOAD_COUNT'
    end
    object odsTotalDEL_COUNT: TFloatField
      FieldName = 'DEL_COUNT'
    end
    object odsTotalERR_COUNT: TFloatField
      FieldName = 'ERR_COUNT'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 224
    Top = 272
  end
  object oqBeforeLoad: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_ND_DATA.p_do_before_load ( :i_T202_ID);'
      '  COMMIT;'
      'END;'
      '')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0049005F0054003200300032005F0049004400
      040000000000000000000000}
    Left = 224
    Top = 303
  end
  object oqLogSuccess: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_ND_DATA.p_log_success ( :I_T202_ID);'
      '  COMMIT;'
      'END; '
      ' ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0049005F0054003200300032005F0049004400
      040000000000000000000000}
    Left = 288
    Top = 303
  end
  object oqLogError: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_ND_DATA.p_log_error ( :i_T202_ID, :i_T202_ERR_MSG );'
      '  COMMIT;'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000140000003A0049005F0054003200300032005F0049004400
      0400000000000000000000001E0000003A0049005F0054003200300032005F00
      4500520052005F004D0053004700050000000000000000000000}
    Left = 256
    Top = 303
  end
  object oqClear: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_ND_DATA.p_do_delete ( :i_T202_ID);'
      '  COMMIT;'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0049005F0054003200300032005F0049004400
      040000000000000000000000}
    Left = 192
    Top = 336
  end
end
