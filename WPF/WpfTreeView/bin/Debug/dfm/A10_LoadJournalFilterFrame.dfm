inherited A10_LoadJournalFilter: TA10_LoadJournalFilter
  Width = 786
  Height = 122
  inherited GroupBox1: TGroupBox
    Width = 786
    Height = 122
    Anchors = [akLeft, akTop, akRight]
    inherited Panel1: TPanel
      Left = 525
      Width = 259
      Height = 105
    end
    inherited paFilterItems: TPanel
      Width = 523
      Height = 105
      inline ReportTypeFilter: TA09_ReportTypeFilter
        Left = 12
        Top = 25
        Width = 512
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
      end
      inline BankFilter: TA10_BankFilter
        Left = 12
        Top = 49
        Width = 512
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
      end
      inline PeriodFilter: TA09_PeriodFilter
        Left = 12
        Top = 73
        TabOrder = 2
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
      end
      inline LoadsFilter: TA10_LoadsFilter
        Left = 12
        Top = 2
        Width = 512
        TabOrder = 3
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
    end
  end
end
