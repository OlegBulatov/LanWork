inherited M002_IsuLoadPage2: TM002_IsuLoadPage2
  Width = 686
  Height = 478
  inherited Bevel: TBevel
    Width = 686
  end
  inherited PanelStepCaption: TPanel
    Width = 686
    inherited Label1: TLabel
      Width = 213
      Caption = 'Шаг 2 - Просмотр исходных данных'
    end
    inherited Label2: TLabel
      Width = 338
      Caption = 'Для загрузки данных в реестр ИСУ нажмите кнопку "Завершить"'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 686
    Height = 426
    inline Grid: TM002_IsuLoadPage2Grid
      Width = 686
      Height = 426
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 686
        Height = 287
      end
      inherited paToolButton: TPanel
        Width = 686
      end
      inherited paFilters: TPanel
        Width = 686
      end
      inherited fm031_Filter1: Tfm031_Filter
        Width = 686
        inherited Panel1: TPanel
          Left = 659
        end
      end
    end
  end
end
