inherited frm50_IssuerLinker: Tfrm50_IssuerLinker
  Left = 59
  Top = 176
  Caption = 'frm50_IssuerLinker'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object Bevel1: TBevel [0]
      Left = 0
      Top = 0
      Width = 50
      Height = 50
    end
    inherited paLeft: TPanel
      inherited Panel6: TPanel
        Height = 63
        ExplicitHeight = 63
        inherited Label3: TLabel
          Caption = 
            #1042#1099#1073#1077#1088#1080#1090#1077' '#1101#1084#1080#1090#1077#1085#1090#1072'. '#1048#1079' '#1083#1077#1074#1086#1075#1086' '#1089#1087#1080#1089#1082#1072' '#1074' '#1087#1088#1072#1074#1099#1081' '#1087#1077#1088#1077#1085#1077#1089#1080#1090#1077' '#1074#1072#1088#1080#1072#1085#1090#1099 +
            ' '#1074#1086#1079#1084#1086#1078#1085#1086#1075#1086' '#1085#1072#1087#1080#1089#1072#1085#1080#1103' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1101#1084#1080#1090#1077#1085#1090#1072'.'
        end
      end
    end
  end
  inherited paRight: TPanel
    inherited Panel1: TPanel
      Height = 113
      ExplicitHeight = 113
      inherited Label1: TLabel
        Top = 77
        Width = 104
        Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1101#1084#1080#1090#1077#1085#1090
        ExplicitTop = 77
        ExplicitWidth = 104
      end
      inherited lcName: TDBLookupComboBox
        Top = 91
        DataSource = nil
        KeyField = 'T028_ID'
        ListField = 'T028_SHOT_NAME'
        ExplicitTop = 91
      end
      inherited fmSeachFrame: TfmSeachFrame
        TabOrder = 3
      end
      object CheckBox1: TCheckBox
        Left = 6
        Top = 53
        Width = 91
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1058#1086#1083#1100#1082#1086' '#1073#1072#1085#1082#1080
        TabOrder = 1
        Visible = False
        OnClick = CheckBox1Click
      end
    end
  end
  inherited odsLookup: TOracleDataSet
    SQL.Strings = (
      
        'SELECT    T028_ID, T028_SHOT_NAME || '#39' ('#39' || T028_CODE || '#39' )'#39' T' +
        '028_SHOT_NAME, T036_ISBANK'
      'FROM      V_405_ISSUER_PARENT'
      'ORDER BY  UPPER(T028_SHOT_NAME)'
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      05000000030000000E00000054003000320038005F0049004400010000000000
      1C00000054003000320038005F00530048004F0054005F004E0041004D004500
      0100000000001600000054003000330036005F0049005300420041004E004B00
      010000000000}
    object odsLookupT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsLookupT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsLookupT036_ISBANK: TStringField
      FieldName = 'T036_ISBANK'
      Required = True
      Size = 1
    end
  end
  inherited ActionList1: TActionList
    inherited actSelect: TAction
      Hint = #1042#1099#1073#1088#1072#1090#1100
    end
    object actChMain: TAction
      Caption = #1057#1076#1077#1083#1072#1090#1100' '#1075#1083#1072#1074#1085#1099#1084
    end
  end
  inherited oqToLeft: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:i_ID);'
      'END;')
    Variables.Data = {
      04000000010000000A0000003A0049005F004900440004000000000000000000
      0000}
  end
  inherited oqToRight: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_link(:i_ID, :i_PARENT_ID);'
      'END;')
    Variables.Data = {
      04000000020000000A0000003A0049005F004900440004000000000000000000
      0000180000003A0049005F0050004100520045004E0054005F00490044000400
      00000000000000000000}
  end
  inherited oqSelect: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_as_main(:i_ID, :ISBANK);'
      'END;')
    Variables.Data = {
      04000000020000000A0000003A0049005F004900440004000000000000000000
      00000E0000003A0049005300420041004E004B00050000000000000000000000}
  end
  inherited oqClearSelect: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:i_ID);'
      'END;')
    Variables.Data = {
      04000000010000000A0000003A0049005F004900440004000000000000000000
      0000}
  end
end
