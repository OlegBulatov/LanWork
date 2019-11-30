inherited A10_LoadPage1_701Filters: TA10_LoadPage1_701Filters
  Width = 865
  Height = 71
  inherited GroupBox1: TGroupBox
    Width = 865
    Height = 71
    inherited Panel1: TPanel
      Left = 524
      Width = 339
      Height = 54
    end
    inherited paFilterItems: TPanel
      Width = 522
      Height = 54
      inline PeriodFilter: TA10_PeriodFilter_701
        Left = 12
        Top = 2
        inherited odsList: TOracleDataSet
          SQL.Strings = (
            'select T055_ID,'
            '       PERIOD_FROM'
            'from   DPB_701_BOSS.V_701_DATA_PERIODS'
            'where  T055_ID <= :PERIOD_TO')
        end
        inherited odsList2: TOracleDataSet
          SQL.Strings = (
            'select T055_ID,'
            '       PERIOD_TO'
            'from   DPB_701_BOSS.V_701_DATA_PERIODS'
            'where  T055_ID >= :PERIOD_FROM')
        end
      end
      inline ReportTypeFilter: TA10_ReportTypeFilter_701
        Left = 12
        Top = 25
        Width = 512
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 161
          Width = 351
        end
        inherited odsList: TOracleDataSet
          SQL.Strings = (
            'select TYPE_ID,'
            '       TYPE_NAME'
            'from   DPB_701_BOSS.V_701_REPORT_TYPES')
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 140
    Top = 40
  end
end
