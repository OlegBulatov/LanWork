inherited A15_CheckListFilter: TA15_CheckListFilter
  Width = 742
  Height = 66
  inherited GroupBox1: TGroupBox
    Width = 742
    Height = 66
    inherited Panel1: TPanel
      Left = 525
      Width = 215
      Height = 49
    end
    inherited paFilterItems: TPanel
      Width = 523
      Height = 49
      inline PeriodFilter: TA15_PeriodFilter
        Left = 12
        Top = 2
        Width = 512
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
      inline BanksReportedFilter: TA15_BanksReportedFilter
        Left = 12
        Top = 25
        TabOrder = 1
      end
    end
  end
end
