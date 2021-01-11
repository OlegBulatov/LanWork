inherited frm51_EmisLinker: Tfrm51_EmisLinker
  Left = 57
  Top = 373
  Caption = 'frm51_EmisLinker'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Left = 275
    ExplicitLeft = 532
  end
  inherited Panel2: TPanel
    Width = 275
    ExplicitWidth = 532
    object Bevel1: TBevel [0]
      Left = 0
      Top = 0
      Width = 50
      Height = 50
    end
    inherited paLeft: TPanel
      Width = 252
      ExplicitWidth = 509
      inherited Panel6: TPanel
        Width = 252
        Height = 113
        ExplicitWidth = 509
        ExplicitHeight = 113
        inherited Label3: TLabel
          Width = 500
          Caption = 
            #1042#1099#1073#1077#1088#1080#1090#1077' '#1101#1084#1080#1089#1089#1080#1102'. '#1048#1079' '#1083#1077#1074#1086#1075#1086' '#1089#1087#1080#1089#1082#1072' '#1074' '#1087#1088#1072#1074#1099#1081' '#1087#1077#1088#1077#1085#1077#1089#1080#1090#1077' '#1074#1072#1088#1080#1072#1085#1090#1099' ' +
            #1074#1086#1079#1084#1086#1078#1085#1086#1075#1086' '#1085#1072#1087#1080#1089#1072#1085#1080#1103' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1101#1084#1080#1089#1089#1080#1080'.'
          ExplicitWidth = 500
        end
        inherited xxxDBGrid: TxxxDBGrid
          Top = 40
          DataSource = dsIssuers
        end
      end
    end
    inherited paCenter: TPanel
      Left = 252
      ExplicitLeft = 509
    end
  end
  inherited paRight: TPanel
    Left = 280
    Width = 400
    ExplicitLeft = 537
    ExplicitWidth = 400
    inherited Panel1: TPanel
      Width = 400
      Height = 137
      ExplicitWidth = 400
      ExplicitHeight = 137
      inherited Label1: TLabel
        Top = 81
        Width = 40
        Caption = #1058#1080#1087' '#1094'.'#1073'.'
        ExplicitTop = 81
        ExplicitWidth = 40
      end
      object Label4: TLabel [1]
        Left = 5
        Top = 103
        Width = 56
        Height = 13
        Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton7: TSpeedButton [2]
        Left = 2
        Top = 51
        Width = 61
        Height = 23
        Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
        Caption = ' '#1069#1084#1080#1090#1077#1085#1090
        Margin = 0
        Spacing = 0
        OnClick = SpeedButton7Click
      end
      inherited lcName: TDBLookupComboBox
        Left = 64
        Top = 100
        Width = 328
        DataSource = nil
        KeyField = 'T030_ID'
        ListField = 'T026_SEC_REGN'
        ExplicitLeft = 64
        ExplicitTop = 100
        ExplicitWidth = 328
      end
      inherited fmSeachFrame: TfmSeachFrame
        Width = 400
        TabOrder = 3
        ExplicitWidth = 400
        inherited paLeft01: TPanel
          Width = 64
          ExplicitWidth = 64
        end
        inherited paLeft02: TPanel
          Left = 64
          ExplicitLeft = 64
        end
        inherited paLeft03: TPanel
          Left = 252
          ExplicitLeft = 252
        end
        inherited paLeft04: TPanel
          Left = 252
          ExplicitLeft = 252
        end
        inherited paLeft05: TPanel
          Left = 182
          ExplicitLeft = 182
        end
        inherited Panel1: TPanel
          Left = 373
          ExplicitLeft = 373
        end
      end
      inherited fm31_Filter: Tfm31_Filter
        Width = 400
        TabOrder = 4
        ExplicitWidth = 400
        inherited paLeft01: TPanel
          Width = 64
          ExplicitWidth = 64
        end
        inherited paLeft02: TPanel
          Left = 64
          ExplicitLeft = 64
        end
        inherited paLeft03: TPanel
          Left = 252
          ExplicitLeft = 252
        end
        inherited paLeft04: TPanel
          Left = 252
          ExplicitLeft = 252
        end
        inherited paLeft05: TPanel
          Left = 182
          ExplicitLeft = 182
        end
        inherited Panel1: TPanel
          Left = 373
          ExplicitLeft = 373
        end
        inherited chbType: TCheckBox
          Left = 264
          ExplicitLeft = 264
        end
      end
      object lcSecType: TDBLookupComboBox
        Left = 64
        Top = 76
        Width = 328
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownRows = 10
        KeyField = 'T027_ID'
        ListField = 'T027_SEC_TYPE'
        ListSource = dsSecType
        TabOrder = 1
        OnCloseUp = lcSecTypeCloseUp
        OnKeyDown = lcSecTypeKeyDown
      end
      object lcIssuers: TDBLookupComboBox
        Left = 64
        Top = 52
        Width = 328
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownRows = 10
        KeyField = 'T028_ID'
        ListField = 'T028_SHOT_NAME'
        ListSource = dsIssuers
        TabOrder = 2
        OnCloseUp = lcIssuersCloseUp
        OnKeyDown = lcIssuersKeyDown
      end
    end
  end
  inherited odsLookup: TOracleDataSet
    SQL.Strings = (
      
        'SELECT    T030_ID,T028_PARENT_ID, T027_ID,T026_ID, T026_SEC_REGN' +
        ' || '#39' ('#39' || T010_ISIN_TRANSL || '#39' )'#39' T026_SEC_REGN'
      'FROM      V_405_SEC_REGN_MAIN'
      'where T028_PARENT_ID = :T028_ID'
      'AND T027_ID = :T027_ID'
      'ORDER BY  T026_SEC_REGN')
    Variables.Data = {
      0400000002000000100000003A0054003000320038005F004900440004000000
      0000000000000000100000003A0054003000320037005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000050000000E00000054003000330030005F0049004400010000000000
      0E00000054003000320036005F00490044000100000000001A00000054003000
      320036005F005300450043005F005200450047004E000100000000001C000000
      54003000320038005F0050004100520045004E0054005F004900440001000000
      00000E00000054003000320037005F0049004400010000000000}
    Left = 824
    Top = 104
    object odsLookupT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsLookupT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsLookupT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsLookupT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsLookupT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
  end
  inherited dsLookup: TDataSource
    Left = 856
    Top = 104
  end
  inherited ActionList1: TActionList
    inherited actSelect: TAction
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1088#1077#1079#1080#1076#1077#1085#1090#1072
    end
  end
  inherited oqToLeft: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_del_emis_link(:i_ID);'
      'END;')
    Variables.Data = {
      04000000010000000A0000003A0049005F004900440004000000000000000000
      0000}
  end
  inherited oqToRight: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_add_emis_link(:i_ID, :i_PARENT_ID);'
      'END;')
    Variables.Data = {
      04000000020000000A0000003A0049005F004900440004000000000000000000
      0000180000003A0049005F0050004100520045004E0054005F00490044000400
      00000000000000000000}
  end
  inherited oqSelect: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_make_emission_main(:i_ID, :o_parent_id);'
      'END;')
    Variables.Data = {
      04000000020000000A0000003A0049005F004900440004000000000000000000
      0000180000003A004F005F0050004100520045004E0054005F00490044000400
      00000000000000000000}
  end
  inherited oqClearSelect: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_clear_emission_main(:i_ID);'
      'END;')
    Variables.Data = {
      04000000010000000A0000003A0049005F004900440004000000000000000000
      0000}
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
    Left = 720
    Top = 80
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
    Left = 752
    Top = 80
  end
  object odsIssuers: TOracleDataSet
    SQL.Strings = (
      
        'SELECT    T028_ID, T028_SHOT_NAME || '#39' ('#39' || T028_CODE || '#39' )'#39' T' +
        '028_SHOT_NAME'
      'FROM      V_405_ISSUER_MAIN'
      '--WHERE     T036_INCLUDE = '#39'Y'#39
      'ORDER BY  UPPER(T028_SHOT_NAME)'
      ' ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000E00000054003000320038005F0049004400010000000000
      1C00000054003000320038005F00530048004F0054005F004E0041004D004500
      010000000000}
    Session = dmMain.OracleSession
    AfterScroll = odsIssuersAfterScroll
    Left = 648
    Top = 56
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
    Left = 680
    Top = 56
  end
end
