inherited fmLoader: TfmLoader
  Height = 262
  OnResize = FrameResize
  object lbProcessName: TLabel [0]
    Left = 12
    Top = 24
    Width = 74
    Height = 13
    Caption = 'lbProcessName'
  end
  object lbStepName: TLabel [1]
    Left = 12
    Top = 92
    Width = 58
    Height = 13
    Caption = 'lbStepName'
  end
  object lbTime: TLabel [2]
    Left = 12
    Top = 72
    Width = 31
    Height = 13
    Caption = 'lbTime'
  end
  object lbError: TLabel [3]
    Left = 12
    Top = 112
    Width = 30
    Height = 13
    Caption = 'lbError'
  end
  object ProgressBar: TProgressBar [4]
    Left = 12
    Top = 44
    Width = 605
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Min = 0
    Max = 100
    TabOrder = 0
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 584
    Top = 68
  end
end
