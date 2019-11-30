inherited A10_LoadPage1Filters: TA10_LoadPage1Filters
  Width = 865
  Height = 90
  inherited GroupBox1: TGroupBox
    Width = 865
    Height = 90
    inherited Panel1: TPanel
      Left = 524
      Width = 339
      Height = 73
    end
    inherited paFilterItems: TPanel
      Width = 522
      Height = 73
      inline PeriodFilter: TA10_PeriodFilter
        Left = 12
        Top = 2
        inherited cb: TCheckBox
          Enabled = False
        end
        inherited odsList2: TOracleDataSet
          SQL.Strings = (
            'select T055_ID,'
            '       PERIOD_TO'
            'from   V_404_DATA_PERIODS'
            'where  T055_ID >= :PERIOD_FROM')
        end
      end
      inline ReportTypeFilter: TA10_ReportTypeFilter
        Left = 12
        Top = 25
        Width = 512
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 161
          Width = 158
          OnCloseUp = ReportTypeFilterlcbCloseUp
        end
        inherited odsList: TOracleDataSet
          SQL.Strings = (
            'select TYPE_ID,'
            '       TYPE_NAME'
            'from   V_404_REPORT_TYPES')
        end
      end
      inline Part_Filter: TA12_Part
        Left = 365
        Top = 25
        Width = 205
        Height = 24
        TabOrder = 2
        inherited lbCaption: TLabel
          Left = 16
        end
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 56
          Width = 103
        end
        inherited dsList: TDataSource
          Left = 160
        end
        inherited odsList: TOracleDataSet
          Left = 80
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 140
    Top = 40
  end
end
