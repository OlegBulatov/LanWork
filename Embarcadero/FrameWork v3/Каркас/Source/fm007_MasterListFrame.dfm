inherited fm007_MasterList: Tfm007_MasterList
  Width = 783
  Height = 631
  inherited ToolBar2: TToolBar
    Width = 783
    object tlbShowDetail: TToolButton
      Left = 674
      Top = 0
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 301
    Width = 783
    Height = 330
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 2
    object pc01: TPageControl
      Left = 1
      Top = 1
      Width = 781
      Height = 328
      ActivePage = ts01
      Align = alClient
      TabOrder = 0
      object ts01: TTabSheet
        Caption = 'Закладка 01'
      end
    end
  end
  inherited gbFilter: TGroupBox
    Width = 783
  end
end
