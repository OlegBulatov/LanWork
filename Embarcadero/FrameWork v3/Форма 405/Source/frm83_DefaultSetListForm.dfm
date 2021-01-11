inherited frm83_DefaultSetList: Tfrm83_DefaultSetList
  Left = 344
  Top = 238
  ActiveControl = nil
  Caption = 'frm83_DefaultSetList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    ExplicitLeft = 1195
    ExplicitHeight = 457
  end
  inherited paRight: TPanel
    ExplicitLeft = 1198
    ExplicitHeight = 457
  end
  inherited paMain: TPanel
    ExplicitWidth = 1195
    ExplicitHeight = 457
    inherited ToolBar2: TToolBar
      ExplicitWidth = 1195
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 597
        Top = 0
        Action = actShowEmissPayments
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnCellClick = xxxDBGridCellClick
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end
        item
          FieldName = 'PAY_DATE'
          SortType = stAsc
        end
        item
          FieldName = 'PAY_DESC'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'IS_DEFAULT'
          ReadOnly = False
          Title.Caption = #1044#1077#1092#1086#1083#1090
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' '#1094'.'#1073'.'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_DESC'
          Title.Caption = #1058#1080#1087
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1074#1099#1087#1083#1072#1090#1099
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REM_COUNT'
          Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1094'.'#1073'.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REM_NOMINAL'
          Title.Caption = #1053#1086#1084#1080#1085#1072#1083
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_NOM_SUM'
          Title.Caption = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072' ('#1085#1086#1084'.)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_USD_SUM'
          Title.Caption = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072' (USD)'
          Width = 80
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 1168
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 1168
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 490
    ExplicitWidth = 1198
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 457
    ExplicitWidth = 1198
    inherited OKBtn: TButton
      Left = 1040
      ExplicitLeft = 1040
    end
    inherited CancelBtn: TButton
      Left = 1120
      ExplicitLeft = 1120
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
      Enabled = False
      Visible = False
    end
    object actShowEmissPayments: TAction
      Caption = #1042#1089#1077' '#1074#1099#1087#1083#1072#1090#1099
      ImageIndex = 40
      OnExecute = actShowEmissPaymentsExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '   T030_ID,'
      '   T028_ID,'
      '   T028_SHOT_NAME,'
      '   T026_ID,'
      '   T026_SEC_REGN,'
      '   T027_ID,'
      '   T027_SEC_TYPE,'
      '   T092_ID,'
      '   T032_ID,'
      '   PAY_DESC,'
      '   PAY_DATE,'
      '   PAY_RATE,'
      '   REM_COUNT,'
      '   REM_NOMINAL,'
      '   PAY_USD_SUM,'
      '   PAY_NOM_SUM,'
      '   IS_DEFAULT as IS_DEFAULT'
      'FROM V_405_POSSIBLE_DEFAULTS'
      'where T055_ID = :T055_ID'
      'and   T027_ID = :T027_ID'
      ' ')
    Variables.Data = {
      0400000002000000100000003A0054003000320037005F004900440004000000
      0000000000000000100000003A0054003000350035005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000110000000E00000054003000330030005F0049004400010000000000
      1A00000054003000320036005F005300450043005F005200450047004E000100
      000000001C00000054003000320038005F00530048004F0054005F004E004100
      4D0045000100000000000E00000054003000320036005F004900440001000000
      00000E00000054003000320037005F00490044000100000000001A0000005400
      3000320037005F005300450043005F0054005900500045000100000000001000
      00005000410059005F0044004100540045000100000000001000000050004100
      59005F0052004100540045000100000000000E00000054003000320038005F00
      490044000100000000000E00000054003000390032005F004900440001000000
      00000E00000054003000330032005F0049004400010000000000100000005000
      410059005F00440045005300430001000000000012000000520045004D005F00
      43004F0055004E00540001000000000016000000520045004D005F004E004F00
      4D0049004E0041004C00010000000000160000005000410059005F0055005300
      44005F00530055004D00010000000000160000005000410059005F004E004F00
      4D005F00530055004D0001000000000014000000490053005F00440045004600
      410055004C005400010000000000}
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT092_ID: TFloatField
      FieldName = 'T092_ID'
    end
    object odsListT032_ID: TFloatField
      FieldName = 'T032_ID'
    end
    object odsListPAY_DESC: TStringField
      FieldName = 'PAY_DESC'
      Size = 6
    end
    object odsListPAY_DATE: TDateTimeField
      FieldName = 'PAY_DATE'
    end
    object odsListPAY_RATE: TFloatField
      FieldName = 'PAY_RATE'
      DisplayFormat = '### ### ### ##0.000'
    end
    object odsListREM_COUNT: TFloatField
      FieldName = 'REM_COUNT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListREM_NOMINAL: TFloatField
      FieldName = 'REM_NOMINAL'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListPAY_USD_SUM: TFloatField
      FieldName = 'PAY_USD_SUM'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListPAY_NOM_SUM: TFloatField
      FieldName = 'PAY_NOM_SUM'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListIS_DEFAULT: TFloatField
      FieldName = 'IS_DEFAULT'
      ReadOnly = True
    end
  end
  object oqDefaultAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_T150_rec PK_405_Default_NEW.t_T150_rec;'
      'BEGIN'
      '  v_T150_rec.T030_ID := :T030_ID;'
      '  v_T150_rec.T032_ID := :T032_ID;'
      '  v_T150_rec.T092_ID := :T092_ID;'
      '  PK_405_Default_NEW.p_default_add (v_T150_rec);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000003000000100000003A0054003000330032005F004900440004000000
      0000000000000000100000003A0054003000390032005F004900440004000000
      0000000000000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    Left = 520
    Top = 136
  end
  object oqDefaultDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Default_NEW.p_default_delete (:T092_ID, :T032_ID);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0054003000390032005F004900440004000000
      0000000000000000100000003A0054003000330032005F004900440004000000
      0000000000000000}
    Left = 552
    Top = 136
  end
end
