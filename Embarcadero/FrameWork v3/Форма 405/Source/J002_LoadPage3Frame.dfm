inherited J002_LoadPage3: TJ002_LoadPage3
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 225
      Caption = 'Шаг 3 - Результаты загрузки отчетов'
    end
    inherited Label2: TLabel
      Width = 367
      Caption = 
        'Проверьте результат загрузки отчетов и нажмите кнопку "Завершить' +
        '".'
    end
  end
  inherited PanelStepBody: TPanel
    inline Grid: TJ002_LoadPage3Grid
      Width = 557
      Height = 347
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 557
        Height = 301
      end
      inherited paToolButton: TPanel
        Width = 557
      end
      inherited fm031_Filter1: Tfm031_Filter
        Width = 557
        inherited Panel1: TPanel
          Left = 530
        end
      end
    end
  end
end
