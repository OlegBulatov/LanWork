inherited A09_Load1Page1: TA09_Load1Page1
  Width = 702
  inherited Bevel: TBevel
    Width = 702
  end
  inherited PanelStepCaption: TPanel
    Width = 702
    inherited Label1: TLabel
      Width = 209
      Caption = 'Шаг 1 - Выбор файла для загрузки'
    end
    inherited Label2: TLabel
      Width = 389
      Caption = 
        'Укажите отчетный период и файл для загрузки, и нажмите кнопку "Д' +
        'алее".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 702
    object Label3: TLabel
      Left = 42
      Top = 51
      Width = 90
      Height = 13
      Caption = 'Файл с данными:'
    end
    object edName: TEdit
      Left = 184
      Top = 47
      Width = 375
      Height = 21
      TabOrder = 0
    end
    object btnFile: TBitBtn
      Left = 563
      Top = 45
      Width = 75
      Height = 25
      Caption = 'Обзор'
      TabOrder = 1
      OnClick = btnFileClick
    end
    inline PeriodSelect: TA09_PeriodSelect
      Left = 25
      Top = 16
      Width = 538
      TabOrder = 2
      inherited lbCaption: TLabel
        Width = 91
        Caption = 'Отчетный период:'
      end
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 159
        Width = 376
      end
      inherited odsList: TOracleDataSet
        SQL.Strings = (
          '')
      end
    end
  end
  object odFile: TOpenDialog
    DefaultExt = 'dbf'
    Filter = 'Файлы DBF (*.dbf)|*.dbf|Все файлы (*.*)|*.*'
    Options = [ofReadOnly, ofHideReadOnly, ofEnableSizing]
    Title = 'Выберите файл для загрузки'
    Left = 44
    Top = 332
  end
end
