object fm21SepDescription: Tfm21SepDescription
  Left = 0
  Top = 0
  Width = 691
  Height = 89
  Color = clBtnFace
  ParentColor = False
  TabOrder = 0
  object Bevel1: TBevel
    Left = 0
    Top = 50
    Width = 691
    Height = 2
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 52
    Width = 691
    Height = 37
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 42
      Top = 8
      Width = 238
      Height = 13
      Caption = 'Выберите квартал и нажмите кнопку "Далее".'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 1
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
    object lblDesc1: TLabel
      Left = 616
      Top = 8
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'lblDesc1'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblDesc2: TLabel
      Left = 616
      Top = 24
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'lblDesc2'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
end
