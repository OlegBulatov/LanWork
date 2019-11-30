inherited A03_LinkingPage1: TA03_LinkingPage1
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 178
      Caption = 'Шаг 1 - Связвание эмитентов'
    end
    inherited Label2: TLabel
      Width = 372
      Caption = 
        'Для связвание эмиссий выберите эмитента и нажмите кнопку "Далее"' +
        '.'
    end
  end
  inherited PanelStepBody: TPanel
    inline Grid: TA03_LinkingPage1Grid
      Width = 557
      Height = 347
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 557
        Height = 225
      end
      inherited paToolButton: TPanel
        Width = 557
      end
      inherited Panel1: TPanel
        Width = 557
      end
    end
  end
end
