inherited frm74_MMVBDoubleBottom: Tfrm74_MMVBDoubleBottom
  Left = 264
  Top = 259
  Caption = #1069#1084#1080#1089#1089#1080#1080' '#1052#1052#1042#1041', '#1085#1077' '#1087#1088#1080#1074#1103#1079#1072#1085#1085#1099#1077' '#1082' '#1082#1086#1076#1091' '#1094'.'#1073'.'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      Top = 73
      ExplicitTop = 73
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 117
      Height = 274
      AdvSettings.Indexes = <
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' '#1094'.'#1073'.'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          Title.Caption = #1058#1080#1087' '#1094'.'#1073'.'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          Title.Caption = #1069#1084#1080#1090#1077#1085#1090
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          Title.Caption = #1050#1086#1076' '#1101#1084#1080#1090#1077#1085#1090#1072
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          Title.Caption = #1058#1080#1087' '#1101#1084#1080#1090#1077#1085#1090#1072
          Width = 110
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 96
      ExplicitTop = 96
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 52
      TabOrder = 4
      ExplicitTop = 52
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 677
      Height = 52
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitWidth = 822
      DesignSize = (
        677
        52)
      object lcSecType: TDBLookupComboBox
        Left = 97
        Top = 28
        Width = 387
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownRows = 10
        KeyField = 'T027_ID'
        ListField = 'T027_SEC_TYPE'
        ListSource = dsSecType
        TabOrder = 0
      end
      object lcIssuers: TDBLookupComboBox
        Left = 97
        Top = 4
        Width = 387
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownRows = 10
        KeyField = 'T028_ID'
        ListField = 'T028_SHOT_NAME'
        ListSource = dsIssuers
        TabOrder = 1
        OnCloseUp = lcIssuersCloseUp
      end
      object chbIssuer: TCheckBox
        Left = 5
        Top = 6
        Width = 77
        Height = 17
        Caption = #1069#1084#1080#1090#1077#1085#1090
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object chbSecType: TCheckBox
        Left = 5
        Top = 29
        Width = 75
        Height = 17
        Caption = #1058#1080#1087' '#1094'.'#1073'.'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object Button1: TButton
        Left = 489
        Top = 2
        Width = 75
        Height = 25
        Action = actApplayFilter
        Anchors = [akTop, akRight]
        TabOrder = 4
      end
    end
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 285
    ExplicitWidth = 825
  end
  inherited ActionList: TActionList
    object actApplayFilter: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = actApplayFilterExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT V1.T030_ID, '
      #9'   V1.T026_ID, '
      #9'   V1.T026_SEC_REGN, '
      '     V1.T027_ID,'
      #9'   V1.T027_SEC_TYPE,'
      #9'   V1.T028_ID,'
      #9'   V1.T028_SHOT_NAME,'
      '     V1.T025_CODE,'
      #9'   V1.T025_SHOT_NAME,'
      #9'   V1.T028_CODE'
      'FROM   V_405_MMVB_NOT_EMISSIONS V1'
      'WHERE ((:FLAG_01 = 0) or (T028_ID = :T028_ID))'
      'AND ((:FLAG_02 = 0) or (T027_ID = :T027_ID))'
      ' ')
    Variables.Data = {
      0400000004000000100000003A0046004C00410047005F003000310004000000
      0000000000000000100000003A0054003000320038005F004900440004000000
      0000000000000000100000003A0046004C00410047005F003000320004000000
      0000000000000000100000003A0054003000320037005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000A0000000E00000054003000330030005F0049004400010000000000
      0E00000054003000320036005F00490044000100000000001A00000054003000
      320036005F005300450043005F005200450047004E000100000000000E000000
      54003000320037005F00490044000100000000001A0000005400300032003700
      5F005300450043005F0054005900500045000100000000000E00000054003000
      320038005F00490044000100000000001C00000054003000320038005F005300
      48004F0054005F004E0041004D00450001000000000012000000540030003200
      35005F0043004F00440045000100000000001C00000054003000320035005F00
      530048004F0054005F004E0041004D0045000100000000001200000054003000
      320038005F0043004F0044004500010000000000}
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
  end
  object odsIssuers: TOracleDataSet
    SQL.Strings = (
      
        'SELECT    T028_ID, T028_SHOT_NAME || '#39' ('#39' || T028_CODE || '#39' )'#39' T' +
        '028_SHOT_NAME'
      'FROM      V_405_ISSUER_MAIN'
      'ORDER BY  UPPER(T028_SHOT_NAME)')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000E00000054003000320038005F0049004400010000000000
      1C00000054003000320038005F00530048004F0054005F004E0041004D004500
      010000000000}
    Session = dmMain.OracleSession
    Left = 216
    Top = 8
    object odsIssuersT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsIssuersT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 514
    end
  end
  object dsIssuers: TDataSource
    DataSet = odsIssuers
    Left = 248
    Top = 8
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'#9'T028_PARENT_ID T028_ID, T027_SEC_TYPE'
      'FROM   V_405_SEC_TYPE_MAIN'
      'where T028_PARENT_ID = :T028_ID'
      'ORDER BY  T027_SEC_TYPE')
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0054003000320038005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000000E00000054003000320037005F0049004400010000000000
      1A00000054003000320037005F005300450043005F0054005900500045000100
      000000000E00000054003000320038005F0049004400010000000000}
    Session = dmMain.OracleSession
    Left = 312
    Top = 16
    object odsSecTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsSecTypeT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsSecTypeT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 344
    Top = 16
  end
end
