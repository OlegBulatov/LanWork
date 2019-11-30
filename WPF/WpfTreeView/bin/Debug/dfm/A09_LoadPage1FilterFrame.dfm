inherited A09_LoadPage1Filter: TA09_LoadPage1Filter
  Width = 725
  Height = 72
  inherited GroupBox1: TGroupBox
    Width = 725
    Height = 72
    Align = alClient
    inherited Panel1: TPanel
      Left = 525
      Width = 198
      Height = 55
    end
    inherited paFilterItems: TPanel
      Width = 523
      Height = 55
      inline PeriodFilter: TA09_PeriodFilter
        Left = 12
        Top = 2
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
      end
      inline ReportTypeFilter: TA09_ReportTypeFilter
        Left = 12
        Top = 25
        Width = 512
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 350
        end
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
        inherited odsList: TOracleDataSet
          SQL.Strings = (
            'select TYPE_ID,'
            '       TYPE_NAME'
            'from   V_410_REPORT_TYPES'
            ''
            '')
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 636
    Top = 16
  end
end
