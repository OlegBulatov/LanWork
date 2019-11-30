inherited A03_LinkingPage2: TA03_LinkingPage2
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 175
      Caption = 'Шаг 2 - Связывание эмиссий'
    end
  end
  inherited PanelStepBody: TPanel
    inline Grid: TA03_LinkingPage2Grid
      Width = 557
      Height = 347
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 557
        Height = 322
      end
      inherited paToolButton: TPanel
        Width = 557
      end
    end
  end
end
