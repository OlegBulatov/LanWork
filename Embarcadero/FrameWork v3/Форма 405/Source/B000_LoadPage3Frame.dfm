inherited B000_LoadPage3: TB000_LoadPage3
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
    inline Grid: TB000_LoadPage3Grid
      Width = 557
      Height = 347
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 557
        Height = 322
      end
      inherited paToolButton: TPanel
        Width = 557
      end
    end
  end
end
