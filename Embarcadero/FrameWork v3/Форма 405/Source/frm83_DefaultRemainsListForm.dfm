inherited frm83_DefaultRemainsList: Tfrm83_DefaultRemainsList
  Left = 364
  Top = 179
  Caption = 'frm83_DefaultRemainsList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 118
    ExplicitTop = 366
    ExplicitWidth = 725
  end
  inherited spRight: TSplitter
    Height = 118
    ExplicitLeft = 722
    ExplicitHeight = 366
  end
  inherited paRight: TPanel
    Height = 118
    ExplicitLeft = 725
    ExplicitHeight = 366
  end
  inherited paMain: TPanel
    Height = 118
    ExplicitWidth = 722
    ExplicitHeight = 366
    inherited ToolBar2: TToolBar
      ExplicitWidth = 722
      inherited ToolButton7: TToolButton
        Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Height = 53
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 5
              LastCol = 11
              Caption = #1042' '#1074#1072#1083#1102#1090#1077' '#1085#1086#1084#1080#1085#1072#1083#1072
            end
            item
              FirstCol = 12
              LastCol = 19
              Caption = #1042' '#1076#1086#1083#1083#1072#1088#1072#1093' '#1057#1064#1040
            end>
        end
        item
          Headers = <
            item
              FirstCol = 6
              LastCol = 10
              Caption = #1054#1087#1077#1088#1072#1094#1080#1080
            end
            item
              FirstCol = 13
              LastCol = 17
              Caption = #1054#1087#1077#1088#1072#1094#1080#1080
            end>
        end
        item
          Headers = <
            item
              FirstCol = 7
              LastCol = 8
              Caption = #1055#1086#1075#1072#1096#1077#1085#1080#1103
            end
            item
              FirstCol = 9
              LastCol = 10
              Caption = #1055#1088#1086#1095#1080#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
            end
            item
              FirstCol = 14
              LastCol = 15
              Caption = #1055#1086#1075#1072#1096#1077#1085#1080#1103
            end
            item
              FirstCol = 16
              LastCol = 17
              Caption = #1055#1088#1086#1095#1080#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' '#1094'.'#1073'.'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEF_TYPE_DESC'
          Title.Caption = #1058#1080#1087
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEF_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1074#1099#1087#1083#1072#1090#1099
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_CURRENCY'
          Title.Caption = #1042#1072#1083#1102#1090#1072
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_IN'
          Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_DEF'
          Title.Caption = #1044#1077#1092#1086#1083#1090
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_CBONS'
          Title.Caption = 'CBONS'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_405'
          Title.Caption = '405'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_YEAR'
          Title.Caption = #1057#1087#1080#1089#1072#1085#1080#1077' 1 '#1075#1086#1076
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_BALANCE'
          Title.Caption = #1054#1096#1080#1073#1082#1080' '#1087#1086#1075#1072#1096#1077#1085#1080#1081
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_OUT'
          Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_IN'
          Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_DEF'
          Title.Caption = #1044#1077#1092#1086#1083#1090
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_CBONS'
          Title.Caption = 'CBONS'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_405'
          Title.Caption = '405'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_YEAR'
          Title.Caption = #1057#1087#1080#1089#1072#1085#1080#1077' 1 '#1075#1086#1076
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_BALANCE'
          Title.Caption = #1054#1096#1080#1073#1082#1080' '#1087#1086#1075#1072#1096#1077#1085#1080#1081
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_OUT'
          Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USD_COURSE_REVALUATION'
          Title.Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REPAYS_PRC_OUT'
          Title.Caption = #1055#1088#1086#1094#1077#1085#1090' '#1087#1086#1075#1072#1096#1077#1085#1080#1103
          Width = 60
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 695
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 695
      end
    end
  end
  inherited Panel1: TPanel
    Top = 121
    Height = 270
    ExplicitTop = 369
    ExplicitWidth = 725
    ExplicitHeight = 270
    inherited pc01: TPageControl
      Height = 268
      ExplicitWidth = 723
      ExplicitHeight = 268
      inherited ts01: TTabSheet
        Caption = #1055#1086#1075#1072#1096#1077#1085#1080#1103
      end
      object ts02: TTabSheet
        Caption = #1054#1087#1077#1088#1072#1094#1080#1080' 405'#1092
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 672
    ExplicitWidth = 725
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 639
    ExplicitWidth = 725
    inherited OKBtn: TButton
      Left = 1071
      ExplicitLeft = 1071
    end
    inherited CancelBtn: TButton
      Left = 1151
      ExplicitLeft = 1151
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
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T150_ID,'
      '       T030_ID,'
      '       T028_SHOT_NAME,'
      '       T027_ID,'
      '       T026_SEC_REGN,'
      '       DEF_TYPE_DESC,'
      '       DEF_DATE,'
      '       T031_CURRENCY,'
      '       T055_ID,'
      '       T055_START_DATE,'
      '       T055_END_DATE,'
      '       SUM_NOM_IN,'
      '       SUM_NOM_DEF,'
      '       SUM_NOM_405,'
      '       SUM_NOM_CBONS,'
      '       SUM_NOM_YEAR,'
      '       SUM_NOM_BALANCE,'
      '       SUM_NOM_OUT,'
      '       SUM_USD_IN,'
      '       SUM_USD_DEF,'
      '       SUM_USD_405,'
      '       SUM_USD_CBONS,'
      '       SUM_USD_YEAR,'
      '       SUM_USD_BALANCE,'
      '       SUM_USD_OUT,'
      '       USD_COURSE_REVALUATION,'
      '       REPAYS_PRC_OUT'
      'FROM   V_405_DEFAULTS_BY_PERIOD'
      'WHERE  T055_ID = :T055_ID'
      'AND    T027_ID = :T027_ID')
    Variables.Data = {
      0400000002000000100000003A0054003000320037005F004900440003000000
      0000000000000000100000003A0054003000350035005F004900440003000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001B0000001A00000054003000320036005F005300450043005F005200
      450047004E000100000000001C00000054003000320038005F00530048004F00
      54005F004E0041004D0045000100000000000E00000054003000320037005F00
      490044000100000000000E00000054003000350035005F004900440001000000
      00001A00000054003000330031005F00430055005200520045004E0043005900
      0100000000000E00000054003100350030005F00490044000100000000001A00
      00004400450046005F0054005900500045005F00440045005300430001000000
      0000100000004400450046005F00440041005400450001000000000014000000
      530055004D005F004E004F004D005F0049004E00010000000000160000005300
      55004D005F004E004F004D005F00440045004600010000000000160000005300
      55004D005F004E004F004D005F003400300035000100000000001A0000005300
      55004D005F004E004F004D005F00430042004F004E0053000100000000001800
      0000530055004D005F004E004F004D005F005900450041005200010000000000
      1E000000530055004D005F004E004F004D005F00420041004C0041004E004300
      450001000000000016000000530055004D005F004E004F004D005F004F005500
      540001000000000014000000530055004D005F005500530044005F0049004E00
      01000000000016000000530055004D005F005500530044005F00440045004600
      01000000000016000000530055004D005F005500530044005F00340030003500
      0100000000001A000000530055004D005F005500530044005F00430042004F00
      4E00530001000000000018000000530055004D005F005500530044005F005900
      4500410052000100000000001E000000530055004D005F005500530044005F00
      420041004C0041004E004300450001000000000016000000530055004D005F00
      5500530044005F004F00550054000100000000002C0000005500530044005F00
      43004F0055005200530045005F0052004500560041004C005500410054004900
      4F004E000100000000001C0000005200450050004100590053005F0050005200
      43005F004F00550054000100000000000E00000054003000330030005F004900
      44000100000000001E00000054003000350035005F0053005400410052005400
      5F0044004100540045000100000000001A00000054003000350035005F004500
      4E0044005F004400410054004500010000000000}
    AfterScroll = odsListAfterScroll
    object odsListT150_ID: TFloatField
      FieldName = 'T150_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListDEF_TYPE_DESC: TStringField
      FieldName = 'DEF_TYPE_DESC'
      Size = 6
    end
    object odsListDEF_DATE: TDateTimeField
      FieldName = 'DEF_DATE'
    end
    object odsListT031_CURRENCY: TStringField
      FieldName = 'T031_CURRENCY'
      Size = 3
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListSUM_NOM_IN: TFloatField
      FieldName = 'SUM_NOM_IN'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_DEF: TFloatField
      FieldName = 'SUM_NOM_DEF'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_405: TFloatField
      FieldName = 'SUM_NOM_405'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_CBONS: TFloatField
      FieldName = 'SUM_NOM_CBONS'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_YEAR: TFloatField
      FieldName = 'SUM_NOM_YEAR'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_BALANCE: TFloatField
      FieldName = 'SUM_NOM_BALANCE'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_OUT: TFloatField
      FieldName = 'SUM_NOM_OUT'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_IN: TFloatField
      FieldName = 'SUM_USD_IN'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_DEF: TFloatField
      FieldName = 'SUM_USD_DEF'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_405: TFloatField
      FieldName = 'SUM_USD_405'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_CBONS: TFloatField
      FieldName = 'SUM_USD_CBONS'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_YEAR: TFloatField
      FieldName = 'SUM_USD_YEAR'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_BALANCE: TFloatField
      FieldName = 'SUM_USD_BALANCE'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_OUT: TFloatField
      FieldName = 'SUM_USD_OUT'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListUSD_COURSE_REVALUATION: TFloatField
      FieldName = 'USD_COURSE_REVALUATION'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListREPAYS_PRC_OUT: TFloatField
      FieldName = 'REPAYS_PRC_OUT'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
    object odsListT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
      Required = True
    end
  end
  inherited pmFilter: TPopupMenu
    Left = 408
    Top = 80
  end
end
