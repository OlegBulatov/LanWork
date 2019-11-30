inherited M001_LoadPage2: TM001_LoadPage2
  Width = 853
  Height = 494
  inherited Bevel: TBevel
    Width = 853
  end
  inherited PanelStepCaption: TPanel
    Width = 853
    inherited Label1: TLabel
      Width = 213
      Caption = 'Шаг 2 - Просмотр исходных данных'
    end
    inherited Label2: TLabel
      Width = 270
      Caption = 'Для загрузки данных в БД нажмите кнопку "Далее"'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 853
    Height = 442
    inline Grid: TM001_LoadPage2Grid
      Width = 853
      Height = 442
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 853
        Height = 343
      end
      inherited paToolButton: TPanel
        Width = 853
      end
      inherited paFilters: TPanel
        Width = 853
      end
      inherited fm031_Filter1: Tfm031_Filter
        Width = 853
        inherited Panel1: TPanel
          Left = 826
        end
      end
    end
  end
end
