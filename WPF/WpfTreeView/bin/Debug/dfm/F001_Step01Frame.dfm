inherited F001_Step01: TF001_Step01
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 227
      Caption = 'Шаг 1 - Укажите параметры загрузки'
    end
    inherited Label2: TLabel
      Width = 331
      Caption = 'Выберите квартал, папку с файлами и нажмите кнопку "Далее".'
    end
  end
  inherited PanelStepBody: TPanel
    object Label3: TLabel
      Left = 26
      Top = 41
      Width = 32
      Height = 13
      Caption = 'Папка'
    end
    object SpeedButton1: TSpeedButton
      Left = 493
      Top = 37
      Width = 23
      Height = 22
      Hint = 'Нажмите для выбора файла'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    inline F001_Time1: TF001_Time
      Left = 8
      Top = 8
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 85
        Width = 258
      end
    end
    object edPath: TEdit
      Left = 93
      Top = 37
      Width = 395
      Height = 21
      TabStop = False
      TabOrder = 1
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Файлы Excel (*.xls)|*.xls|Все файлы (*.*)|*.*'
    Title = 'Выберите папку с файлами данных'
    Left = 24
    Top = 136
  end
end
