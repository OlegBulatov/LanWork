inherited fmFilteredGrid: TfmFilteredGrid
  inherited xxxDBGrid: TxxxDBGrid
    Top = 151
    Height = 252
  end
  inherited paToolButton: TPanel
    Top = 126
    ExplicitTop = 126
  end
  object paFilters: TPanel [2]
    Left = 0
    Top = 0
    Width = 635
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 4
      Top = 4
      Width = 513
      Height = 97
      Caption = ' '#1060#1080#1083#1100#1090#1088' '
      TabOrder = 0
    end
    object Button1: TButton
      Left = 528
      Top = 8
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 1
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 105
    ExplicitTop = 105
  end
  inherited PopupMenu: TPopupMenu
    Left = 8
    Top = 119
  end
end
