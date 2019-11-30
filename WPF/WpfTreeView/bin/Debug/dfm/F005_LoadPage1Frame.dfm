inherited F005_LoadPage1: TF005_LoadPage1
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 227
      Caption = 'Шаг 1 - Укажите параметры загрузки'
    end
    inherited Label2: TLabel
      Width = 342
      Caption = 'Выберите папку и файлы для загрузки и нажмите кнопку "Далее".'
    end
  end
  inherited PanelStepBody: TPanel
    object Label3: TLabel
      Left = 26
      Top = 15
      Width = 32
      Height = 13
      Caption = 'Папка'
    end
    object SpeedButton1: TSpeedButton
      Left = 471
      Top = 12
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
    object Label4: TLabel
      Left = 26
      Top = 56
      Width = 85
      Height = 13
      Caption = 'Проверка файла'
      Visible = False
    end
    object edPath: TEdit
      Left = 74
      Top = 12
      Width = 391
      Height = 21
      TabStop = False
      TabOrder = 0
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'xlsx'
    FileName = '*.xlsx'
    Filter = 'Файлы Excel (*.xls)|*.xlsx|Все файлы (*.*)|*.*'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Выберите файлы для загрузки'
    Left = 512
    Top = 64
  end
  object oqRegFiles: TOracleQuery
    SQL.Strings = (
      'BEGIN '
      
        '  PK_405_415_DATA.P_REGISTER_FILES (:FILE_LIST, :DATE_LIST, :PER' +
        'IOD_LIST, :PART_LIST);'
      '  COMMIT; '
      'END; ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000040000000A0000003A46494C455F4C49535405000000000000000100
      0000FF000000FF0000000A0000003A444154455F4C4953540C00000000000000
      01000000FF000000000000000C0000003A504552494F445F4C4953540C000000
      0000000001000000FF000000000000000A0000003A504152545F4C4953540500
      00000000000001000000FF000000FF000000}
    Left = 40
    Top = 208
  end
end
