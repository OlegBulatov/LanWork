inherited A09_LoadPage2: TA09_LoadPage2
  Width = 719
  inherited Bevel: TBevel
    Width = 719
  end
  inherited PanelStepCaption: TPanel
    Width = 719
    inherited Label1: TLabel
      Width = 299
      Caption = 'Шаг 2 - Загрузка отчетов кредитных организаций'
    end
    inherited Label2: TLabel
      Width = 349
      Caption = 'Дождитесь окончания загрузки отчетов и нажмите кнопку "Далее".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 719
    inline Progress: TA09_LoadPage2Progress
      Width = 719
      Height = 347
      Align = alClient
      inherited Bevel1: TBevel
        Width = 699
      end
      inherited ProgressBar1: TGauge
        Width = 699
      end
      inherited Timer1: TTimer
        Top = 64
      end
    end
  end
  inherited actList: TActionList
    Left = 432
    Top = 8
  end
end
