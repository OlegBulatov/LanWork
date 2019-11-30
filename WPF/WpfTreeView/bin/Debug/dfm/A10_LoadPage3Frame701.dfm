inherited A10_LoadPage3_701: TA10_LoadPage3_701
  Width = 672
  Height = 501
  inherited Bevel: TBevel
    Width = 672
  end
  inherited PanelStepCaption: TPanel
    Width = 672
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
    Width = 672
    Height = 449
    inline Grid: TA10_LoadPage3_701Grid
      Width = 672
      Height = 449
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 672
        Height = 424
      end
      inherited paToolButton: TPanel
        Width = 672
        inherited tlbList: TToolBar
          Width = 245
        end
        inherited tlbExcel: TToolBar
          Left = 322
        end
        inherited tlbSeach: TToolBar
          Left = 356
          Width = 71
        end
        inherited tlbFilter: TToolBar
          Left = 427
          Width = 94
        end
        inherited tlbSelect: TToolBar
          Left = 521
          Width = 35
        end
      end
    end
  end
end
