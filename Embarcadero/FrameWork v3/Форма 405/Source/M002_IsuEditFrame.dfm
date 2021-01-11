inherited M002_IsuEdit: TM002_IsuEdit
  Width = 576
  Height = 219
  ExplicitWidth = 576
  ExplicitHeight = 219
  object Label1: TLabel [0]
    Left = 8
    Top = 9
    Width = 97
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1048#1057#1059
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 34
    Width = 90
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1059#1050
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 79
    Width = 98
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1083#1080#1094#1077#1085#1079#1080#1080' '#1059#1050
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 103
    Width = 38
    Height = 13
    Caption = #1048#1053#1053' '#1059#1050
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 127
    Width = 94
    Height = 13
    Caption = #1056#1077#1075'. '#8470' '#1087#1088#1072#1074#1080#1083' '#1044#1059
  end
  object Label6: TLabel [5]
    Left = 300
    Top = 103
    Width = 93
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 151
    Width = 68
    Height = 13
    Caption = #1058#1080#1087' '#1101#1084#1080#1090#1077#1085#1090#1072
  end
  object lblSecType: TLabel [7]
    Left = 8
    Top = 176
    Width = 41
    Height = 13
    Caption = #1058#1080#1087' '#1094'.'#1073'.'
  end
  object Label9: TLabel [8]
    Left = 300
    Top = 127
    Width = 99
    Height = 13
    Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1059#1050
  end
  object Label10: TLabel [9]
    Left = 300
    Top = 151
    Width = 91
    Height = 13
    Caption = #1044#1072#1090#1072' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1103
  end
  object lblCurrency: TLabel [10]
    Left = 300
    Top = 79
    Width = 64
    Height = 13
    Caption = #1050#1086#1076' '#1074#1072#1083#1102#1090#1099
  end
  object Label12: TLabel [11]
    Left = 300
    Top = 175
    Width = 133
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103' '#1088#1077#1077#1089#1090#1088#1072
  end
  object Label13: TLabel [12]
    Left = 8
    Top = 197
    Width = 103
    Height = 13
    Caption = #1055#1088#1080#1079#1085#1072#1082' '#1076#1077#1081#1089#1090#1074'. '#1050#1054
  end
  object edIsuName: TDBEdit [13]
    Left = 144
    Top = 5
    Width = 424
    Height = 21
    TabOrder = 0
  end
  object edMasterName: TDBEdit [14]
    Left = 144
    Top = 29
    Width = 424
    Height = 21
    TabOrder = 1
  end
  object edMasterLic: TDBEdit [15]
    Left = 144
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edMasterInn: TDBEdit [16]
    Left = 144
    Top = 98
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edSecRegn: TDBEdit [17]
    Left = 144
    Top = 122
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object lcbIssuerType: TxxxDBLookupCheckCombo [18]
    Left = 144
    Top = 146
    Width = 122
    Height = 21
    DropDownCount = 8
    LookupField = 'T037_SHOT_NAME'
    LookupDisplay = 'T037_SHOT_NAME'
    LookupSource = dsIssuerType
    TabOrder = 5
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object lcbSecType: TxxxDBLookupCheckCombo [19]
    Left = 144
    Top = 170
    Width = 122
    Height = 21
    DropDownCount = 8
    LookupField = 'T027_SEC_TYPE'
    LookupDisplay = 'T027_SEC_TYPE'
    LookupSource = dsSecType
    TabOrder = 6
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object lcbCurrency: TxxxDBLookupCheckCombo [20]
    Left = 448
    Top = 74
    Width = 121
    Height = 21
    DropDownCount = 8
    ListStyle = [lsSizeable]
    LookupField = 'ISO_LAT3'
    LookupDisplay = 'ISO_LAT3;NAME_RUSH'
    LookupSource = dsCurrency
    TabOrder = 7
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object deAnnDate: TDateEdit [21]
    Left = 448
    Top = 146
    Width = 121
    Height = 21
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 8
  end
  object deRegDate: TDateEdit [22]
    Left = 448
    Top = 98
    Width = 121
    Height = 21
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 9
  end
  object deChangeDate: TDateEdit [23]
    Left = 448
    Top = 122
    Width = 121
    Height = 21
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 10
  end
  object deUpdateDate: TDateEdit [24]
    Left = 448
    Top = 169
    Width = 121
    Height = 21
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 11
  end
  object cbActual: TDBComboBox [25]
    Left = 144
    Top = 194
    Width = 122
    Height = 21
    TabOrder = 12
  end
  inherited actList: TActionList
    Left = 16
    Top = 56
  end
  object odsIssuerType: TOracleDataSet
    SQL.Strings = (
      'select T037_ID,'
      '       T037_SHOT_NAME,'
      '       T037_LONG_NAME'
      'from   V_405_ISSUER_INF_TYPE'
      'where  T037_ID NOT IN (8, 9)'
      'order by T037_SHOT_NAME')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000030000000E00000054003000330037005F0049004400010000000000
      1C00000054003000330037005F00530048004F0054005F004E0041004D004500
      0100000000001C00000054003000330037005F004C004F004E0047005F004E00
      41004D004500010000000000}
    Session = dmMain.OracleSession
    Left = 160
    Top = 144
  end
  object dsIssuerType: TDataSource
    DataSet = odsIssuerType
    Left = 192
    Top = 144
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'select T027_ID,'
      '       T027_SEC_TYPE'
      'from   V_405_SEC_TYPE'
      'order by T027_SEC_TYPE')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000E00000054003000320037005F0049004400010000000000
      1A00000054003000320037005F005300450043005F0054005900500045000100
      00000000}
    Session = dmMain.OracleSession
    Left = 160
    Top = 176
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 192
    Top = 176
  end
  object odsCurrency: TOracleDataSet
    SQL.Strings = (
      'SELECT ISO_LAT3,'
      
        '       UPPER(SUBSTR(NAME_RUSH, 1, 1)) || LOWER(SUBSTR(NAME_RUSH,' +
        ' 2)) AS NAME_RUSH'
      'FROM   V_405_CURRENCY_LAST'
      'WHERE  ISO_LAT3 <> '#39'KLR'#39
      'ORDER BY ISO_LAT3')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000010000000490053004F005F004C0041005400330001000000
      0000120000004E0041004D0045005F005200550053004800010000000000}
    Session = dmMain.OracleSession
    Left = 464
    Top = 64
  end
  object dsCurrency: TDataSource
    DataSet = odsCurrency
    Left = 496
    Top = 64
  end
  object oqCheckInn: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := f_check_inn(:INN);'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      04000000020000000E0000003A0052004500530055004C005400040000000000
      000000000000080000003A0049004E004E00050000000000000000000000}
    Left = 336
    Top = 192
  end
end
