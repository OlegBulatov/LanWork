inherited fmMMasterItem: TfmMMasterItem
  Width = 471
  Height = 253
  object bvStep: TBevel
    Left = 0
    Top = 50
    Width = 471
    Height = 2
    Align = alTop
  end
  object paStepCaption: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    object Label3: TLabel
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
    object Label4: TLabel
      Left = 42
      Top = 24
      Width = 238
      Height = 13
      Caption = 'Выберите квартал и нажмите кнопку "Далее".'
    end
  end
  object paStepDesc: TPanel
    Left = 0
    Top = 52
    Width = 471
    Height = 0
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 42
      Top = 8
      Width = 238
      Height = 13
      Caption = 'Выберите квартал и нажмите кнопку "Далее".'
    end
  end
  object paStepBody: TPanel
    Left = 0
    Top = 52
    Width = 471
    Height = 201
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
  end
end
