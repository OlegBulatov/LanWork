inherited frm95_EmissionLinkList: Tfrm95_EmissionLinkList
  Left = 161
  Top = 337
  Caption = #1069#1084#1080#1089#1089#1080#1080
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      inherited ToolButton4: TToolButton
        Visible = False
      end
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
        AutoSize = True
        Caption = #1055#1086#1080#1089#1082' '#1087#1086'...'
        DropdownMenu = pmSelect
        ImageIndex = 11
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' '
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T010_ISIN_TRANSL'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' ISIN'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          Title.Caption = #1058#1080#1087' '#1094'.'#1073'.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          Title.Caption = #1050#1086#1076' '#1101#1084#1080#1090'.'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          Title.Caption = #1058#1080#1087' '#1101#1084#1080#1090'.'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T023_NAME'
          Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1074#1099#1087#1083#1072#1090
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_DATE_ANNUL'
          Title.Caption = #1044#1072#1090#1072' '#1072#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#1080#1103
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_ID'
          Visible = False
        end>
    end
  end
  inherited pnlButtons: TPanel
    Visible = True
  end
  inherited ActionList: TActionList
    inherited actSelectItem: TAction
      Enabled = True
      Visible = True
    end
    inherited actAddAttributes: TAction
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Visible = False
    end
    inherited actEditAttributes: TAction
      Visible = False
    end
    object actFilterByIsin: TAction
      Caption = 'ISIN'
      OnExecute = actFilterByIsinExecute
      OnUpdate = actFilterByIsinUpdate
    end
    object actFilterByIssuer: TAction
      Caption = #1069#1084#1080#1090#1077#1085#1090#1091
      OnExecute = actFilterByIssuerExecute
      OnUpdate = actFilterByIssuerUpdate
    end
    object actFilterByRegn: TAction
      Caption = #1056#1077#1075'.'#1085#1086#1084#1077#1088#1091
      OnExecute = actFilterByRegnExecute
      OnUpdate = actFilterByRegnUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T030_ID,'
      '       T026_ID,'
      '       T026_SEC_REGN,'
      '       T027_ID,'
      '       T027_SEC_TYPE,'
      '       T028_ID,'
      '       T028_SHOT_NAME,'
      '       T025_CODE,'
      '       T025_SHOT_NAME,'
      '       T028_CODE, '
      '       T010_ISIN_TRANSL,'
      '       T023_NAME,'
      '       T031_DATE_ANNUL'
      'FROM   V_405_EMISSION_INF'
      '--WHERE  T028_ID =  :T028_ID')
    QBEDefinition.QBEFieldDefs = {
      050000000D0000000E00000054003000330030005F0049004400010000000000
      0E00000054003000320036005F00490044000100000000001A00000054003000
      320036005F005300450043005F005200450047004E000100000000000E000000
      54003000320037005F00490044000100000000001A0000005400300032003700
      5F005300450043005F0054005900500045000100000000000E00000054003000
      320038005F00490044000100000000001C00000054003000320038005F005300
      48004F0054005F004E0041004D00450001000000000012000000540030003200
      35005F0043004F00440045000100000000001C00000054003000320035005F00
      530048004F0054005F004E0041004D0045000100000000001200000054003000
      320038005F0043004F0044004500010000000000120000005400300032003300
      5F004E0041004D0045000100000000001E00000054003000330031005F004400
      4100540045005F0041004E004E0055004C000100000000002000000054003000
      310030005F004900530049004E005F005400520041004E0053004C0001000000
      0000}
    MasterFields = 'itFrams'
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
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
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_CODE: TFloatField
      FieldName = 'T025_CODE'
      Required = True
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT023_NAME: TStringField
      FieldName = 'T023_NAME'
      Size = 255
    end
    object odsListT031_DATE_ANNUL: TDateTimeField
      FieldName = 'T031_DATE_ANNUL'
    end
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Required = True
      Size = 255
    end
  end
  object pmSelect: TPopupMenu
    Left = 632
    Top = 32
    object N16: TMenuItem
      Action = actFilterByIssuer
    end
    object N17: TMenuItem
      Action = actFilterByRegn
    end
    object ISIN1: TMenuItem
      Action = actFilterByIsin
    end
  end
end
