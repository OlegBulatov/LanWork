inherited A08_LoadJournalFilter: TA08_LoadJournalFilter
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
      inline ReportTypeFilter: TA10_ReportTypeFilter
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
        inherited odsList: TOracleDataSet
          SQL.Strings = (
            'select TYPE_ID,'
            '       TYPE_NAME'
            'from   V_404_REPORT_TYPES')
        end
      end
      inline BankFilter: TA08_BankFilter
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
        inherited odsList: TOracleDataSet
          SQL.Strings = (
            'select REGN,'
            '       TRANSLATE(REGN_NAME, '#39')('#39', '#39' '#39') REGN_NAME'
            'from   SN001_BANKS'
            'order by REGN')
        end
      end
      inline PeriodFilter: TA10_PeriodFilter
        Left = 12
        Top = 73
        TabOrder = 2
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
      end
      inline LoadsFilter: TA08_LoadsFilter
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
