inherited M001_InnKoEdit: TM001_InnKoEdit
  Width = 626
  Height = 202
  ExplicitWidth = 626
  ExplicitHeight = 202
  object Label1: TLabel [0]
    Left = 16
    Top = 8
    Width = 116
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object Label2: TLabel [1]
    Left = 331
    Top = 8
    Width = 134
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object lbRegn: TLabel [2]
    Left = 16
    Top = 31
    Width = 157
    Height = 13
    Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' ('#1088#1077#1075'.'#8470' '#1074' '#1050#1043#1056#1050#1054')'
  end
  object Label4: TLabel [3]
    Left = 331
    Top = 31
    Width = 98
    Height = 13
    Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' ('#1048#1053#1053')'
  end
  object Label5: TLabel [4]
    Left = 16
    Top = 55
    Width = 149
    Height = 13
    Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' ('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077')'
  end
  object Label6: TLabel [5]
    Left = 16
    Top = 79
    Width = 20
    Height = 13
    Caption = #1041#1048#1050
  end
  object Label3: TLabel [6]
    Left = 350
    Top = 79
    Width = 31
    Height = 13
    Caption = #1043#1086#1088#1086#1076
  end
  object Label7: TLabel [7]
    Left = 16
    Top = 102
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object Label8: TLabel [8]
    Left = 16
    Top = 127
    Width = 271
    Height = 13
    Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' ('#1080#1085#1076#1080#1082#1072#1090#1086#1088' '#1076#1077#1081#1089#1090#1074#1091#1102#1097#1077#1081' '#1050#1054' '#1074' '#1050#1043#1056#1050#1054')'
  end
  object Label9: TLabel [9]
    Left = 350
    Top = 128
    Width = 197
    Height = 13
    Caption = #1053#1077#1073#1072#1085#1082#1086#1074#1089#1082#1072#1103' '#1082#1088#1077#1076#1080#1090#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
  end
  object Label10: TLabel [10]
    Left = 16
    Top = 165
    Width = 67
    Height = 13
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
  end
  object deDateStart: TDateEdit [11]
    Left = 178
    Top = 3
    Width = 121
    Height = 21
    DirectInput = False
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 0
  end
  object deDateEnd: TDateEdit [12]
    Left = 484
    Top = 3
    Width = 121
    Height = 21
    DirectInput = False
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 1
  end
  object edRegn: TDBEdit [13]
    Left = 177
    Top = 27
    Width = 121
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object edInn: TDBEdit [14]
    Left = 484
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edName: TDBEdit [15]
    Left = 177
    Top = 51
    Width = 428
    Height = 21
    TabOrder = 4
  end
  object edBic: TDBEdit [16]
    Left = 176
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edCity: TDBEdit [17]
    Left = 415
    Top = 75
    Width = 190
    Height = 21
    TabOrder = 6
  end
  object edAddr: TDBEdit [18]
    Left = 176
    Top = 99
    Width = 429
    Height = 21
    TabOrder = 7
  end
  object cbActive: TDBComboBox [19]
    Left = 289
    Top = 124
    Width = 38
    Height = 21
    Style = csDropDownList
    TabOrder = 8
  end
  object cbNko: TDBComboBox [20]
    Left = 555
    Top = 124
    Width = 50
    Height = 21
    Style = csDropDownList
    TabOrder = 9
  end
  object mComment: TMemo [21]
    Left = 104
    Top = 149
    Width = 502
    Height = 48
    Lines.Strings = (
      'mComment')
    OEMConvert = True
    ScrollBars = ssVertical
    TabOrder = 10
  end
  inherited actList: TActionList
    Left = 80
    Top = 80
  end
end
