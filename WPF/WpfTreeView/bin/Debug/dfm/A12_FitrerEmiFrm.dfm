inherited A12_FitrerEmi: TA12_FitrerEmi
  Height = 151
  inherited GroupBox1: TGroupBox
    Height = 151
    inherited Panel1: TPanel
      Height = 134
    end
    inherited paFilterItems: TPanel
      Height = 134
      inline SecTypeFilter: TA12_SecTypeFilter
        Left = 8
        inherited lcb: TxxxDBLookupCheckCombo
          LookupField = 'SEC_TYPE'
        end
      end
      inline CountryFilter: TA12_CountryFilter
        Left = 8
        Top = 23
        TabOrder = 1
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
      end
    end
  end
end
