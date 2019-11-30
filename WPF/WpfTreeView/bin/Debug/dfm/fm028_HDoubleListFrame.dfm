inherited fmHDoubleList: TfmHDoubleList
  Height = 380
  OnResize = FrameResize
  object PanelTop: TPanel [0]
    Left = 0
    Top = 0
    Width = 557
    Height = 185
    Align = alTop
    Caption = 'PanelTop'
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 555
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      Color = clGrayText
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 4
        Width = 32
        Height = 13
        Caption = 'Label1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object PanelBottom: TPanel [1]
    Left = 0
    Top = 188
    Width = 557
    Height = 192
    Align = alClient
    Caption = 'PanelBottom'
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 555
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      Color = clGrayText
      TabOrder = 0
      object Label2: TLabel
        Left = 8
        Top = 4
        Width = 32
        Height = 13
        Caption = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Splitter1: TRxSplitter [2]
    Left = 0
    Top = 185
    Width = 557
    Height = 3
    ControlFirst = PanelTop
    ControlSecond = PanelBottom
    Align = alTop
    BevelOuter = bvNone
  end
end
