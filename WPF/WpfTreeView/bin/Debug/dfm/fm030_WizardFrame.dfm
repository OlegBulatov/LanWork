inherited fmWizard: TfmWizard
  Width = 626
  object Bevel: TBevel [0]
    Left = 0
    Top = 360
    Width = 626
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 362
    Width = 626
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 375
      Top = 0
      Width = 251
      Height = 37
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BtnBack: TButton
        Left = 14
        Top = 7
        Width = 75
        Height = 23
        Action = actBack
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object BtnNext: TButton
        Left = 90
        Top = 7
        Width = 75
        Height = 23
        Action = actNext
        Cancel = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object BtnFinish: TButton
        Left = 167
        Top = 7
        Width = 75
        Height = 23
        Action = actFinish
        Cancel = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
  end
  object PageControl: TPageControl [2]
    Left = 0
    Top = 0
    Width = 626
    Height = 360
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '��� 1...'
    end
    object TabSheet2: TTabSheet
      Caption = '��� 2...'
      ImageIndex = 1
    end
  end
  inherited actList: TActionList
    object actBack: TAction
      Caption = '< �����'
      OnExecute = actBackExecute
      OnUpdate = actBackUpdate
    end
    object actNext: TAction
      Caption = '����� >'
      OnExecute = actNextExecute
      OnUpdate = actNextUpdate
    end
    object actFinish: TAction
      Caption = '���������'
      OnExecute = actFinishExecute
      OnUpdate = actFinishUpdate
    end
  end
end
