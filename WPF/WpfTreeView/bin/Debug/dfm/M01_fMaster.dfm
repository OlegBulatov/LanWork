inherited fmMMaster: TfmMMaster
  Width = 885
  Height = 474
  object Bevel1: TBevel [0]
    Left = 0
    Top = 435
    Width = 885
    Height = 2
    Align = alBottom
  end
  object pcSteps: TPageControl [1]
    Left = 0
    Top = 0
    Width = 885
    Height = 435
    ActivePage = TabSheet2
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Шаг 1. ...'
    end
    object TabSheet2: TTabSheet
      Caption = 'Шаг 2. ....'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'Шаг 3. ....'
      ImageIndex = 2
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 437
    Width = 885
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 634
      Top = 0
      Width = 251
      Height = 37
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object OKBtn: TButton
        Left = 14
        Top = 5
        Width = 75
        Height = 23
        Action = actBack
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object CancelBtn: TButton
        Left = 90
        Top = 5
        Width = 75
        Height = 23
        Action = actNext
        Cancel = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object Button1: TButton
        Left = 167
        Top = 5
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
  object ActionList1: TActionList
    Left = 148
    Top = 59
    object actBack: TAction
      Caption = '< Назад'
      Hint = '< Назад'
      OnExecute = actBackExecute
      OnUpdate = actBackUpdate
    end
    object actNext: TAction
      Caption = 'Далее >'
      Hint = 'Далее >'
      OnExecute = actNextExecute
      OnUpdate = actNextUpdate
    end
    object actFinish: TAction
      Caption = 'Завершить'
      Hint = 'Завершить'
      OnExecute = actFinishExecute
      OnUpdate = actFinishUpdate
    end
  end
end
