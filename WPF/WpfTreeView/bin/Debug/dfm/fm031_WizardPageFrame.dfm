inherited fmWizardPage: TfmWizardPage
  object Bevel: TBevel [0]
    Left = 0
    Top = 50
    Width = 557
    Height = 2
    Align = alTop
  end
  object PanelStepCaption: TPanel [1]
    Left = 0
    Top = 0
    Width = 557
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 6
      Width = 201
      Height = 13
      Caption = 'Шаг 1 - Выбор отчетного периода'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 42
      Top = 24
      Width = 238
      Height = 13
      Caption = 'Выберите квартал и нажмите кнопку "Далее".'
    end
  end
  object PanelStepBody: TPanel [2]
    Left = 0
    Top = 52
    Width = 557
    Height = 347
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
  end
end
