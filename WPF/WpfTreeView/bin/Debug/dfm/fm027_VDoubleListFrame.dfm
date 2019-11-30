inherited fm027_VDoubleList: Tfm027_VDoubleList
  Height = 408
  object PanelLeft: TPanel [0]
    Left = 0
    Top = 145
    Width = 261
    Height = 242
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'PanelLeft'
    TabOrder = 0
  end
  object Splitter1: TRxSplitter [1]
    Left = 261
    Top = 145
    Width = 3
    Height = 242
    ControlFirst = PanelLeft
    ControlSecond = PanelRight
    Align = alLeft
    BevelOuter = bvNone
  end
  object PanelTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 557
    Height = 145
    Align = alTop
    BevelOuter = bvNone
    Caption = 'PanelTop'
    TabOrder = 2
  end
  object PanelRight: TPanel [3]
    Left = 264
    Top = 145
    Width = 293
    Height = 242
    Align = alClient
    BevelOuter = bvNone
    Caption = 'PanelRight'
    TabOrder = 3
  end
  object PanelBottom: TPanel [4]
    Left = 0
    Top = 387
    Width = 557
    Height = 21
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
  end
end
