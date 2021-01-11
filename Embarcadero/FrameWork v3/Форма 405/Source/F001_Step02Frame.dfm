inherited F001_Step02: TF001_Step02
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
      Width = 488
      Caption = 
        'Отметьте данные для загрузки или удаления. Для запуска процесса ' +
        'нажмите кнопку "Далее".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 792
    Height = 514
    inline F001_Files1: TF001_Files
      Width = 792
      Height = 514
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 792
        Height = 466
      end
      inherited paToolButton: TPanel
        Width = 792
        inherited tlbList: TToolBar
          Width = 552
        end
        inherited tlbExcel: TToolBar
          Left = 629
        end
        inherited tlbSeach: TToolBar
          Left = 663
        end
        inherited tlbFilter: TToolBar
          Left = 730
        end
        inherited tlbSelect: TToolBar
          Left = 811
        end
      end
      inherited GroupBox1: TPanel
        Top = 491
        Width = 792
      end
    end
  end
end
