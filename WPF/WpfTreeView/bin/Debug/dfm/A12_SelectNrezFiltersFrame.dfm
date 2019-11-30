inherited A12_SelectNrezFilters: TA12_SelectNrezFilters
  Width = 682
  Height = 89
  inherited GroupBox1: TGroupBox
    Width = 682
    Height = 89
    inherited Panel1: TPanel
      Left = 497
      Width = 183
      Height = 72
    end
    inherited paFilterItems: TPanel
      Width = 495
      Height = 72
      inline NameFilter: TA12_NameFilter
        Left = 12
        Width = 481
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
        inherited ed: TEdit
          Left = 84
          Width = 398
        end
      end
      inline CodeFilter: TA12_CountryFilter
        Left = 11
        Top = 24
        Width = 484
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 84
          Width = 400
        end
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
      end
      inline TypeFilter: TA12_TypeFilter
        Left = 12
        Top = 48
        TabOrder = 2
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
      end
    end
  end
end
