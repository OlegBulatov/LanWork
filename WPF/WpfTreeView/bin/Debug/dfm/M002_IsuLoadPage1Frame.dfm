inherited M002_IsuLoadPage1: TM002_IsuLoadPage1
  Width = 771
  inherited Bevel: TBevel
    Width = 771
  end
  inherited PanelStepCaption: TPanel
    Width = 771
    inherited Label1: TLabel
      Width = 209
      Caption = 'Шаг 1 - Выбор файла для загрузки'
    end
    inherited Label2: TLabel
      Width = 223
      Caption = 'Выберите файл и нажмите кнопку "Далее".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 771
    object Label3: TLabel
      Left = 24
      Top = 19
      Width = 81
      Height = 13
      Caption = 'Загрузить файл'
    end
    object edFile: TComboEdit
      Left = 117
      Top = 16
      Width = 512
      Height = 21
      Hint = 'Файл для загрузки'
      GlyphKind = gkDropDown
      NumGlyphs = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnButtonClick = edFileButtonClick
    end
  end
  inherited actList: TActionList
    Left = 512
    Top = 8
  end
  object od1: TOpenDialog
    Filter = 'Файлы Excel (*.xls, *.xlsx)|*.xls;*xlsx|Все файлы (*.*)|*.*'
    Title = 'Выберите файл'
    Left = 608
    Top = 100
  end
end
