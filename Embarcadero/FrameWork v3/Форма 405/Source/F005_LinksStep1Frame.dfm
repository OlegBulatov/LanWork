inherited F005_LinksStep1: TF005_LinksStep1
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 187
      Caption = 'Шаг 1 - Связывание эмитентов'
    end
    inherited Label2: TLabel
      Width = 245
      Caption = 'Выберите эмитента и нажмите кнопку "Далее".'
    end
  end
  inherited PanelStepBody: TPanel
    inline Grid: TF005_LinksStep1Grid
      Width = 557
      Height = 347
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 557
        Height = 150
      end
      inherited paToolButton: TPanel
        Width = 557
        inherited tlbSelect: TToolBar
          Width = 476
        end
      end
      inherited paFilters: TPanel
        Width = 557
      end
    end
  end
end
