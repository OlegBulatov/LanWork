inherited F005_LoadPage2a: TF005_LoadPage2a
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 275
      Caption = 'Шаг 2 - Загрузка отчетов по ценным бумагам'
    end
    inherited Label2: TLabel
      Width = 349
      Caption = 'Дождитесь окончания загрузки отчетов и нажмите кнопку "Далее".'
    end
  end
  inherited PanelStepBody: TPanel
    inline Progress: TF005_LoadPage2aProgress
      Width = 557
      Height = 347
      Align = alClient
      inherited Bevel1: TBevel
        Width = 537
      end
      inherited ProgressBar1: TGauge
        Width = 537
      end
    end
  end
  inherited actList: TActionList
    Left = 416
    Top = 8
  end
end
