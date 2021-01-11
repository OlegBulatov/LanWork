inherited F005_LinksStep2: TF005_LinksStep2
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 175
      Caption = 'Шаг 2 - Связывание эмиссий'
    end
    inherited Label2: TLabel
      Width = 252
      Caption = 'Выберите эмиссию и нажмите кнопку "Связать".'
    end
  end
  inherited PanelStepBody: TPanel
    inline Grid: TF005_LinksStep2Grid
      Width = 557
      Height = 347
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 557
        Height = 322
      end
      inherited paToolButton: TPanel
        Width = 557
        inherited tlbSelect: TToolBar
          Width = 365
        end
      end
    end
  end
end
