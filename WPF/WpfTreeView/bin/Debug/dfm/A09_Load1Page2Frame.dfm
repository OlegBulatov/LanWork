inherited A09_Load1Page2: TA09_Load1Page2
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 258
      Caption = 'Шаг 2 - Предварительная загрузка данных'
    end
    inherited Label2: TLabel
      Width = 330
      Caption = 'Дождитесь окончания загрузки и нажмите кнопку "Завершить".'
    end
  end
  inherited PanelStepBody: TPanel
    inline Progress: TA09_Load1Page2Progress
      Width = 557
      Height = 347
      Align = alClient
      inherited Bevel1: TBevel
        Width = 537
      end
      inherited ProgressBar1: TGauge
        Width = 537
      end
    end
  end
end
