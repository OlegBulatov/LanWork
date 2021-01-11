inherited M002_IsuLoadPage2: TM002_IsuLoadPage2
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 208
      Caption = 'Шаг 2 - Загрузка данных из файла'
    end
    inherited Label2: TLabel
      Width = 318
      Caption = 'Дождитесь окончания загрузки или нажмите кнопку "Назад".'
    end
  end
  inherited PanelStepBody: TPanel
    inline Progress: TM002_IsuLoadPage2Progress
      Width = 557
      Height = 347
      Align = alClient
      inherited ProgressBar: TProgressBar
        Width = 534
      end
    end
  end
end
