inherited M001_LoadPage1: TM001_LoadPage1
  Width = 708
  Height = 507
  inherited Bevel: TBevel
    Width = 708
  end
  inherited PanelStepCaption: TPanel
    Width = 708
    inherited Label1: TLabel
      Width = 247
      Caption = 'Шаг 1 - Загрузка данных для реестра КО'
    end
    inherited Label2: TLabel
      Width = 274
      Caption = 'Выберите файл и дождитесь окончания его загрузки.'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 708
    Height = 455
    object Label3: TLabel
      Left = 136
      Top = 22
      Width = 3
      Height = 13
    end
    object Button1: TButton
      Left = 40
      Top = 16
      Width = 75
      Height = 25
      Action = actSelectFile
      TabOrder = 0
    end
  end
  inherited actList: TActionList
    Left = 24
    Top = 120
    object actSelectFile: TAction
      Caption = 'Файл...'
      OnExecute = actSelectFileExecute
      OnUpdate = actSelectFileUpdate
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Файлы Excel (*.xls, *.xlsx)|*.xls;*xlsx|Все файлы (*.*)|*.*'
    Title = 'Выберите файл'
    Left = 608
    Top = 100
  end
end
