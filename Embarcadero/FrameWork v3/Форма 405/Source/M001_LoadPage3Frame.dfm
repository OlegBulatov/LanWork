inherited M001_LoadPage3: TM001_LoadPage3
  Width = 853
  Height = 494
  inherited Bevel: TBevel
    Width = 853
  end
  inherited PanelStepCaption: TPanel
    Width = 853
    inherited Label1: TLabel
      Width = 247
      Caption = 'Шаг 3 - Загрузка данных для реестра КО'
    end
    inherited Label2: TLabel
      Width = 270
      Caption = 'Для загрузки данных в БД нажмите кнопку "Далее"'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 853
    Height = 442
    inline Grid: TM001_LoadPage3Grid
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
      inherited odsErrors: TOracleDataSet
        SQL.Strings = (
          'select ERR_CODE,'
          '       ERR_DESC'
          'from   V_405_INN_KO_FILE_ERRORS'
          'where  ERR_CODE NOT IN ('#39'H'#39','#39'I'#39','#39'J'#39','#39'K'#39','#39'L'#39')'
          'order by ERR_CODE')
      end
    end
  end
end
