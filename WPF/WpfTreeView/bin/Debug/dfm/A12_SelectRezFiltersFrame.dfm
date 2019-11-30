inherited A12_SelectRezFilters: TA12_SelectRezFilters
  Width = 686
  Height = 93
  inherited GroupBox1: TGroupBox
    Width = 686
    Height = 93
    inherited Panel1: TPanel
      Left = 525
      Width = 159
      Height = 76
    end
    inherited paFilterItems: TPanel
      Width = 523
      Height = 76
      inline RezNameFilter: TA12_NameFilter
        Left = 11
        Top = 4
        Width = 514
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
        inherited ed: TEdit
          Left = 84
          Width = 430
        end
      end
      inline RezCodeFilter: TA12_RezCodeFilter
        Left = 11
        Top = 27
        Width = 514
        TabOrder = 1
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
        inherited ed: TEdit
          Left = 84
          Width = 250
        end
      end
      inline RezTypeFilter: TA12_TypeFilter
        Left = 11
        Top = 51
        Width = 214
        TabOrder = 2
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
        inherited actList: TActionList
          Left = 52
          Top = 12
        end
        inherited dsList: TDataSource
          Left = 144
          Top = 65534
        end
        inherited odsList: TOracleDataSet
          Left = 108
          Top = 65534
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 92
    Top = 80
  end
end
