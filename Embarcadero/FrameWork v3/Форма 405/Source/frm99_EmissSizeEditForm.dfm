inherited frm99_EmissSizeEdit: Tfrm99_EmissSizeEdit
  Left = 179
  Top = 225
  Caption = 'frm99_EmissSizeEdit'
  ClientHeight = 120
  ClientWidth = 199
  ExplicitWidth = 205
  ExplicitHeight = 148
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 4
    Top = 8
    Width = 64
    Height = 26
    Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072#13#10'   '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object Label2: TLabel [1]
    Left = 4
    Top = 40
    Width = 86
    Height = 13
    Caption = #1056#1072#1079#1084#1077#1088' '#1101#1084#1080#1089#1089#1080#1080
  end
  object Label3: TLabel [2]
    Left = 4
    Top = 57
    Width = 48
    Height = 26
    Caption = #1048#1089#1090#1086#1095#1085#1080#1082#13#10#1076#1072#1085#1085#1099#1093
  end
  inherited Panel2: TPanel
    Top = 87
    Width = 199
    ExplicitTop = 87
    ExplicitWidth = 199
    inherited Panel3: TPanel
      Left = 34
      ExplicitLeft = 34
    end
  end
  object dtp01: TDBDateTimePicker [4]
    Left = 96
    Top = 8
    Width = 97
    Height = 21
    Date = 39371.000000000000000000
    Time = 0.543350624997401600
    TabOrder = 1
    DataField = 'T098_START_DATE'
    DataSource = frm99_EmissSizeList.dsList
  end
  object ed01: TDBEdit [5]
    Left = 96
    Top = 34
    Width = 97
    Height = 21
    DataField = 'T098_EMISSION_SIZE'
    DataSource = frm99_EmissSizeList.dsList
    TabOrder = 2
  end
  object ed02: TDBEdit [6]
    Left = 94
    Top = 60
    Width = 97
    Height = 21
    DataField = 'T098_DATA_SOURCE'
    DataSource = frm99_EmissSizeList.dsList
    TabOrder = 3
  end
end
