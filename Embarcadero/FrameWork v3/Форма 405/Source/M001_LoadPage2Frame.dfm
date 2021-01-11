inherited M001_LoadPage2: TM001_LoadPage2
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 247
      Caption = 'Шаг 2 - Загрузка данных для реестра КО'
    end
    inherited Label2: TLabel
      Width = 318
      Caption = 'Дождитесь окончания загрузки или нажмите кнопку "Назад".'
    end
  end
  inherited PanelStepBody: TPanel
    inline Progress: TM001_LoadPage2Progress
      Width = 557
      Height = 347
      Align = alClient
      inherited ProgressBar: TProgressBar
        Width = 534
      end
    end
  end
end
