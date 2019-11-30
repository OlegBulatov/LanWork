inherited A12_EmiFilters: TA12_EmiFilters
  Width = 1039
  Height = 117
  inherited GroupBox1: TGroupBox
    Width = 1039
    Height = 117
    inherited Panel1: TPanel
      Left = 525
      Width = 512
      Height = 100
    end
    inherited paFilterItems: TPanel
      Width = 523
      Height = 100
      object Label1: TLabel
        Left = 285
        Top = 77
        Width = 21
        Height = 13
        Caption = 'ISIN'
      end
      inline PeriodFilter: TA10_PeriodFilter
        Left = 12
        Top = 2
        inherited cb: TCheckBox
          AllowGrayed = True
          Checked = False
          Enabled = False
          State = cbGrayed
        end
        inherited odsList2: TOracleDataSet
          SQL.Strings = (
            'select T055_ID,'
            '       PERIOD_TO'
            'from   V_404_DATA_PERIODS'
            'where  T055_ID >= :PERIOD_FROM')
        end
      end
      inline BankFilter: TA08_BankFilter
        Left = 12
        Top = 26
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
      inline SecTypeFilter: TA12_SecTypeFilter
        Left = 12
        Top = 50
        Width = 512
        TabOrder = 2
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
          LookupField = 'SEC_TYPE'
        end
        inherited odsList: TOracleDataSet
          SQL.Strings = (
            'select sec_type, sec_name from V_SEC_TYPE')
        end
      end
      inline A12_Part1: TA12_Part
        Left = 12
        Top = 73
        Width = 250
        TabOrder = 3
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 86
          Height = 20
        end
        inherited dsList: TDataSource
          Left = 64
        end
        inherited odsList: TOracleDataSet
          Left = 112
        end
      end
      object cbReg: TCheckBox
        Left = 266
        Top = 74
        Width = 17
        Height = 19
        Caption = 'cbReg'
        TabOrder = 4
        OnClick = cbRegClick
      end
      object edReg: TEdit
        Left = 330
        Top = 74
        Width = 191
        Height = 21
        TabOrder = 5
      end
    end
  end
  inherited actList: TActionList
    Left = 556
    Top = 48
  end
end
