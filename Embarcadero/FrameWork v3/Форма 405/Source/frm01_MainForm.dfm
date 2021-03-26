object frm01_Main: Tfrm01_Main
  Left = 626
  Top = 425
  Caption = #1060#1086#1088#1084#1072' 405'
  ClientHeight = 146
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 114
    Top = 30
    Width = 5
    Height = 97
    ExplicitHeight = 358
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 336
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 684
      Height = 26
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   '#1057#1077#1075#1086#1076#1085#1103
      Color = clGrayText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object TreeView: TTreeView
    Left = 0
    Top = 30
    Width = 114
    Height = 97
    Align = alLeft
    HideSelection = False
    Indent = 19
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 1
    OnChange = TreeViewChange
    Items.NodeData = {
      0301000000300000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      0000000000010924043E0440043C0430042000340030003500}
  end
  object paFrameParent: TPanel
    Left = 119
    Top = 30
    Width = 217
    Height = 97
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 127
    Width = 336
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 144
    object N4: TMenuItem
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
      object N3: TMenuItem
        Action = actQuit
      end
    end
    object N1: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object N9: TMenuItem
        Action = actShowSettings
      end
      object N2: TMenuItem
        Action = actChangePass
      end
      object N10: TMenuItem
        Action = actSetRepPath
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Action = actStartReplication
      end
    end
    object N7: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N8: TMenuItem
        Action = actProgramInfo
      end
    end
  end
  object ActionList: TActionList
    Left = 56
    Top = 144
    object actProgramInfo: TAction
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnExecute = actProgramInfoExecute
    end
    object actQuit: TAction
      Caption = #1042#1099#1093#1086#1076
      OnExecute = actQuitExecute
    end
    object actUdateData: TAction
      Caption = #1048#1084#1087#1086#1088#1090' '#1074#1089#1077#1093' '#1076#1072#1085#1085#1099#1093
      Hint = #1048#1084#1087#1086#1088#1090' '#1074#1089#1077#1093' '#1076#1072#1085#1085#1099#1093
    end
    object actGetLastData: TAction
      Caption = #1048#1084#1087#1086#1088#1090' '#1074#1095#1077#1088#1072#1096#1085#1080#1093' '#1076#1072#1085#1085#1099#1093
      Hint = #1048#1084#1087#1086#1088#1090' '#1074#1095#1077#1088#1072#1096#1085#1080#1093' '#1076#1072#1085#1085#1099#1093
    end
    object actShowSettings: TAction
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099'...'
      OnExecute = actShowSettingsExecute
    end
    object actChangePass: TAction
      Caption = #1057#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100'...'
      OnExecute = actChangePassExecute
      OnUpdate = actChangePassUpdate
    end
    object actStartReplication: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1086#1090#1095#1077#1090#1086#1074' '#1080#1079' '#1044#1048#1058
      Hint = #1047#1072#1087#1091#1089#1082' '#1087#1088#1086#1094#1077#1089#1089#1072' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1086#1090#1095#1077#1090#1086#1074' '#1080#1079' '#1044#1048#1058
      OnExecute = actStartReplicationExecute
    end
    object actSetRepPath: TAction
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1091#1090#1100' '#1082' '#1087#1072#1087#1082#1077' '#1086#1090#1095#1077#1090#1086#1074'...'
      OnExecute = actSetRepPathExecute
    end
  end
end
