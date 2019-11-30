inherited R01_Step01: TR01_Step01
  Width = 874
  Height = 691
  inherited Bevel: TBevel
    Width = 874
  end
  inherited PanelStepCaption: TPanel
    Width = 874
    inherited Label1: TLabel
      Width = 145
      Caption = 'Шаг 1 - Выбор эмитента'
    end
    inherited Label2: TLabel
      Width = 292
      Caption = 'Выберите квартал, эмитента и нажмите кнопку "Далее".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 874
    Height = 639
    inline R01_Issuers1: TR01_Issuers
      Width = 874
      Height = 639
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 874
        Height = 514
      end
      inherited paToolButton: TPanel
        Width = 874
        inherited tlbList: TToolBar
          Width = 242
          Enabled = False
          Visible = False
        end
        inherited tlbExcel: TToolBar
          Left = 319
        end
        inherited tlbSeach: TToolBar
          Left = 353
          Width = 67
        end
        inherited tlbFilter: TToolBar
          Left = 420
          Width = 81
        end
        inherited tlbSelect: TToolBar
          Left = 501
          Width = 31
        end
        inherited ToolBar1: TToolBar
          Left = 532
          Width = 222
        end
      end
      inherited Panel1: TPanel
        Width = 874
        inherited SpeedButton1: TSpeedButton
          Action = R01_Issuers1.actRefresh
        end
      end
    end
  end
end
