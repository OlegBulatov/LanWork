object fm31_Filter: Tfm31_Filter
  Left = 0
  Top = 0
  Width = 532
  Height = 21
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  TabOrder = 0
  object paLeft01: TPanel
    Left = 0
    Top = 0
    Width = 51
    Height = 21
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      51
      21)
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 42
      Height = 13
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #1060#1080#1083#1100#1090#1088':'
    end
  end
  object paLeft02: TPanel
    Left = 51
    Top = 0
    Width = 118
    Height = 21
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      118
      21)
    object edSearchText: TEdit
      Left = 0
      Top = 0
      Width = 118
      Height = 21
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = edSearchTextKeyPress
    end
  end
  object paLeft03: TPanel
    Left = 169
    Top = 0
    Width = 25
    Height = 21
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      25
      21)
    object sbSelect: TSpeedButton
      Left = 0
      Top = -1
      Width = 25
      Height = 22
      Action = actSelect
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      Glyph.Data = {
        6E000000424D6E000000000000003E00000028000000050000000C0000000100
        01000000000030000000C40E0000C40E0000020000000000000000000000FFFF
        FF00F8000000F8000000F8000000F8000000D80000008800000000000000F800
        0000F8000000F8000000F8000000F8000000}
      Layout = blGlyphRight
      Margin = 2
      ParentShowHint = False
      ShowHint = True
    end
  end
  object paLeft04: TPanel
    Left = 194
    Top = 0
    Width = 101
    Height = 21
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      101
      21)
    object edKeyField: TEdit
      Left = 0
      Top = 0
      Width = 101
      Height = 21
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
  end
  object paLeft05: TPanel
    Left = 295
    Top = 0
    Width = 70
    Height = 21
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 4
    DesignSize = (
      70
      21)
    object spbStartSearch: TSpeedButton
      Left = 0
      Top = 0
      Width = 70
      Height = 21
      Action = actSearch
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      ParentShowHint = False
      ShowHint = True
    end
  end
  object Panel1: TPanel
    Left = 505
    Top = 0
    Width = 27
    Height = 21
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 5
    DesignSize = (
      27
      21)
    object SpeedButton1: TSpeedButton
      Left = 5
      Top = 0
      Width = 21
      Height = 21
      Action = actClose
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
    end
  end
  object chbType: TCheckBox
    Left = 376
    Top = 3
    Width = 101
    Height = 17
    Hint = #1057#1083#1086#1074#1086' '#1094#1077#1083#1080#1082#1086#1084
    Caption = #1057#1083#1086#1074#1086' '#1094#1077#1083#1080#1082#1086#1084
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object alSearchFrame: TActionList
    Images = dm02_Picters.ilCommonPictures
    Left = 120
    Top = 65524
    object actSearch: TAction
      Caption = #1060#1080#1083#1100#1090#1088
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      OnExecute = actSearchExecute
    end
    object actClose: TAction
      Hint = #1057#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1087#1086#1080#1089#1082#1072
      ImageIndex = 4
      OnExecute = actCloseExecute
    end
    object actSelect: TAction
      Caption = #1074
      Hint = #1053#1072#1083#1086#1078#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1086#1083#1102
      OnExecute = actSelectExecute
    end
    object actShowHide: TAction
      Caption = #1055#1088#1086#1089#1090#1086#1081' '#1092'&'#1080#1083#1100#1090#1088
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1086#1082#1085#1086' '#1087#1088#1086#1089#1090#1086#1075#1086' '#1092#1080#1083#1100#1090#1088#1072
      ImageIndex = 18
      ShortCut = 16454
      OnExecute = actShowHideExecute
    end
  end
  object ppmSearchFrame: TPopupMenu
    AutoHotkeys = maManual
    Left = 80
    Top = 65522
    object N3: TMenuItem
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1072#1082#1090#1072
    end
    object N4: TMenuItem
      Tag = 1
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1089#1077#1088#1080#1081#1085#1086#1084#1091' '#1085#1086#1084#1077#1088#1091
    end
  end
end
