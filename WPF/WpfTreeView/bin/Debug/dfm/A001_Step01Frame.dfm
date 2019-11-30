inherited fmWizardPage1: TfmWizardPage1
  Width = 633
  inherited Bevel: TBevel
    Width = 633
  end
  inherited PanelStepCaption: TPanel
    Width = 633
    inherited Label1: TLabel
      Width = 209
      Caption = 'Шаг 1 - Выбор файла для загрузки'
    end
    inherited Label2: TLabel
      Width = 360
      Caption = 'Выберите файл Excel, укажите параметры и нажмите кнопку "Далее".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 633
    object Label3: TLabel
      Left = 32
      Top = 24
      Width = 38
      Height = 13
      Caption = 'Файл : '
    end
    object SpeedButton1: TSpeedButton
      Left = 512
      Top = 24
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
        0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
        B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
        FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
        FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
        FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
        0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
        0555555555777777755555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 40
      Top = 312
      Width = 163
      Height = 13
      Cursor = crHandPoint
      Caption = 'Открыть "Шаблон загрузки.xltx"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 96
      Top = 24
      Width = 417
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 560
    Top = 76
  end
end
