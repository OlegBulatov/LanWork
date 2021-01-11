inherited frm76_CalcQuotMItems: Tfrm76_CalcQuotMItems
  Left = 49
  Top = 205
  Caption = #1052#1077#1089#1103#1095#1085#1099#1077' '#1082#1086#1090#1080#1088#1086#1074#1082#1080
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    ExplicitLeft = 891
  end
  inherited paRight: TPanel
    ExplicitLeft = 894
  end
  inherited paMain: TPanel
    ExplicitWidth = 891
    inherited ToolBar2: TToolBar
      ExplicitWidth = 891
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Action = actCalc
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Height = 300
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      AdvSettings.Indexes = <
        item
          FieldName = 'T055_END_DATE'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 2
              Caption = #1050#1086#1090#1080#1088#1086#1074#1082#1072' '#1074' '#1074#1072#1083#1102#1090#1077' '#1085#1086#1084#1080#1085#1072#1083#1072
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_END_DATE'
          Title.Caption = #1044#1072#1090#1072
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_FULL_RATE'
          Title.Caption = #1089' '#1053#1050#1044
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_RATE_VALUE'
          Title.Caption = #1073#1077#1079' '#1053#1050#1044
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T121_NKD'
          Title.Caption = #1053#1050#1044
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_CHANGE_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_CALC_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1088#1072#1089#1095#1077#1090#1072
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_STATE_DESC'
          Title.Caption = #1057#1090#1072#1090#1091#1089
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_COMMENT'
          Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Width = 140
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 864
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 864
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 365
      Width = 677
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitTop = 241
      ExplicitWidth = 891
      object Label1: TLabel
        Left = 241
        Top = 8
        Width = 222
        Height = 13
        Caption = #1044#1072#1085#1085#1099#1077' '#1052#1052#1042#1041' '#1089' 00/00/0000 '#1087#1086' 00/00/0000'
      end
      object Label2: TLabel
        Left = 4
        Top = 8
        Width = 227
        Height = 13
        Caption = #1044#1072#1085#1085#1099#1077' Reuters c 00/00/0000 '#1087#1086' 00/00/0000'
      end
      object Label3: TLabel
        Left = 472
        Top = 8
        Width = 211
        Height = 13
        Caption = #1044#1072#1085#1085#1099#1077' '#1056#1058#1057' '#1089' 00/00/0000 '#1087#1086' 00/00/0000'
      end
      object Label4: TLabel
        Left = 692
        Top = 8
        Width = 234
        Height = 13
        Caption = #1044#1072#1085#1085#1099#1077' '#1043#1050#1054'-'#1054#1060#1047' c 00/00/000 '#1087#1086' 00/00/0000'
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitWidth = 894
  end
  inherited pnlButtons: TPanel
    ExplicitWidth = 894
    inherited OKBtn: TButton
      Left = 753
      ExplicitLeft = 753
    end
    inherited CancelBtn: TButton
      Left = 833
      ExplicitLeft = 833
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
    object actCalc: TAction
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100'...'
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1082#1086#1090#1080#1088#1086#1074#1082#1080' '#1079#1072' '#1087#1077#1088#1080#1086#1076'...'
      ImageIndex = 28
      OnExecute = actCalcExecute
      OnUpdate = actCalcUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T083_ID,'
      '  T030_ID,'
      '  T055_ID,'
      '  T055_END_DATE,'
      '  T055_LONG_NAME,'
      '  T083_FULL_RATE,'
      '  T083_STATE,'
      '  T083_STATE_DESC,'
      '  T083_CALC_DATE,'
      '  T083_CHANGE_DATE,'
      '  T121_NKD,'
      '  T083_COMMENT,'
      '  T083_RATE_VALUE'
      'FROM V_405_QUOTATION_MONTH'
      'WHERE T030_ID = :T030_ID')
    Variables.Data = {
      0400000001000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000D0000000E00000054003000380033005F0049004400010000000000
      0E00000054003000330030005F00490044000100000000000E00000054003000
      350035005F00490044000100000000001C00000054003000350035005F004C00
      4F004E0047005F004E0041004D00450001000000000014000000540030003800
      33005F00530054004100540045000100000000001E0000005400300038003300
      5F00530054004100540045005F0044004500530043000100000000001A000000
      54003000350035005F0045004E0044005F004400410054004500010000000000
      1C00000054003000380033005F00430041004C0043005F004400410054004500
      0100000000002000000054003000380033005F004300480041004E0047004500
      5F0044004100540045000100000000001800000054003000380033005F004300
      4F004D004D0045004E0054000100000000001000000054003100320031005F00
      4E004B0044000100000000001E00000054003000380033005F00520041005400
      45005F00560041004C00550045000100000000001C0000005400300038003300
      5F00460055004C004C005F005200410054004500010000000000}
    MasterFields = 'T030_ID'
    object odsListT083_ID: TFloatField
      FieldName = 'T083_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListT083_STATE: TStringField
      FieldName = 'T083_STATE'
      Required = True
      Size = 1
    end
    object odsListT083_STATE_DESC: TStringField
      DisplayWidth = 32
      FieldName = 'T083_STATE_DESC'
      Size = 32
    end
    object odsListT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
      Required = True
    end
    object odsListT083_CALC_DATE: TDateTimeField
      FieldName = 'T083_CALC_DATE'
    end
    object odsListT083_CHANGE_DATE: TDateTimeField
      FieldName = 'T083_CHANGE_DATE'
    end
    object odsListT083_COMMENT: TStringField
      FieldName = 'T083_COMMENT'
      Size = 255
    end
    object odsListT121_NKD: TFloatField
      FieldName = 'T121_NKD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT083_RATE_VALUE: TFloatField
      FieldName = 'T083_RATE_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT083_FULL_RATE: TFloatField
      FieldName = 'T083_FULL_RATE'
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      
        '  Pk_405_Rts_Mmvb_Rates.P_CHANGE_MONTH_RATE(:I_T083_ID, :I_T083_' +
        'VALUE);'
      '  COMMIT;'
      'END;'
      ' '
      '')
    Variables.Data = {
      0400000002000000140000003A0049005F0054003000380033005F0049004400
      0400000000000000000000001A0000003A0049005F0054003000380033005F00
      560041004C0055004500040000000000000000000000}
  end
  object oqCalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      
        '  Pk_405_Rts_Mmvb_Rates.P_CALC_QUOTATION(:I_T030_ID, :I_T055_END' +
        '_DATE_S, :I_T055_END_DATE_E);'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000003000000140000003A0049005F0054003000330030005F0049004400
      040000000000000000000000240000003A0049005F0054003000350035005F00
      45004E0044005F0044004100540045005F0053000C0000000000000000000000
      240000003A0049005F0054003000350035005F0045004E0044005F0044004100
      540045005F0045000C0000000000000000000000}
    Left = 336
    Top = 176
  end
  object odsMMVB: TOracleDataSet
    SQL.Strings = (
      'SELECT MIN_DATE, MAX_DATE'
      'FROM V_405_MMVB_DATES'
      'WHERE T030_ID = :T030_ID')
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000100000004D0049004E005F00440041005400450001000000
      0000100000004D00410058005F004400410054004500010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsMMVBAfterOpen
    AfterRefresh = odsMMVBAfterOpen
    Left = 240
    Top = 216
    object odsMMVBMIN_DATE: TDateTimeField
      FieldName = 'MIN_DATE'
    end
    object odsMMVBMAX_DATE: TDateTimeField
      FieldName = 'MAX_DATE'
    end
  end
  object odsReuters: TOracleDataSet
    SQL.Strings = (
      'SELECT MIN_DATE, MAX_DATE'
      'FROM V_405_REUTERS_DATES'
      'WHERE T030_ID = :T030_ID')
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000100000004D0049004E005F00440041005400450001000000
      0000100000004D00410058005F004400410054004500010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsReutersAfterOpen
    AfterRefresh = odsReutersAfterOpen
    Left = 24
    Top = 216
    object odsReutersMIN_DATE: TDateTimeField
      FieldName = 'MIN_DATE'
    end
    object odsReutersMAX_DATE: TDateTimeField
      FieldName = 'MAX_DATE'
    end
  end
  object odsRTS: TOracleDataSet
    SQL.Strings = (
      'SELECT MIN_DATE, MAX_DATE'
      'FROM V_405_RTS_DATES'
      'WHERE T030_ID = :T030_ID')
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000100000004D0049004E005F00440041005400450001000000
      0000100000004D00410058005F004400410054004500010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsRTSAfterOpen
    AfterRefresh = odsRTSAfterOpen
    Left = 744
    Top = 216
    object odsRTSMIN_DATE: TDateTimeField
      FieldName = 'MIN_DATE'
    end
    object odsRTSMAX_DATE: TDateTimeField
      FieldName = 'MAX_DATE'
    end
  end
  object odsGko: TOracleDataSet
    SQL.Strings = (
      'SELECT MIN_DATE, MAX_DATE'
      'FROM   V_405_GKO_DATES'
      'WHERE  T030_ID = :T030_ID')
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000100000004D0049004E005F00440041005400450001000000
      0000100000004D00410058005F004400410054004500010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsGkoAfterOpen
    AfterRefresh = odsGkoAfterOpen
    Left = 504
    Top = 216
    object odsGkoMIN_DATE: TDateTimeField
      FieldName = 'MIN_DATE'
    end
    object odsGkoMAX_DATE: TDateTimeField
      FieldName = 'MAX_DATE'
    end
  end
end
