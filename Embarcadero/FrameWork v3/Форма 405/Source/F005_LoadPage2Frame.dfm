inherited F005_LoadPage2: TF005_LoadPage2
  Width = 792
  Height = 566
  inherited Bevel: TBevel
    Width = 792
  end
  inherited PanelStepCaption: TPanel
    Width = 792
    inherited Label1: TLabel
      Width = 216
      Caption = 'Шаг 2 - Выбор файлов для загрузки'
    end
    inherited Label2: TLabel
      Width = 484
      Caption = 
        'Отметьте файлы для загрузки или удаления. Для запуска процесса н' +
        'ажмите кнопку "Далее".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 792
    Height = 514
    inline Grid: TF005_LoadPage2Grid
      Width = 792
      Height = 514
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 792
        Height = 433
      end
      inherited paToolButton: TPanel
        Width = 792
        inherited tlbList: TToolBar
          Width = 544
        end
        inherited tlbExcel: TToolBar
          Left = 621
        end
        inherited tlbSeach: TToolBar
          Left = 655
        end
        inherited tlbFilter: TToolBar
          Left = 722
        end
        inherited tlbSelect: TToolBar
          Left = 803
        end
      end
      inherited GroupBox1: TPanel
        Top = 491
        Width = 792
      end
      inherited paFilters: TPanel
        Width = 792
      end
    end
  end
end
