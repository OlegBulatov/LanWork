inherited A12_ReportsListFilter: TA12_ReportsListFilter
  Width = 745
  Height = 84
  inherited GroupBox1: TGroupBox
    Width = 745
    Height = 84
    Anchors = [akLeft, akTop, akBottom]
    inherited Panel1: TPanel
      Left = 585
      Width = 158
      Height = 67
    end
    inherited paFilterItems: TPanel
      Width = 583
      Height = 67
      inline PeriodFilter: TA12_PeriodFilterAll
        Left = 12
        Width = 240
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 72
          Width = 169
        end
        inherited dsList: TDataSource
          Left = 120
        end
        inherited odsList: TOracleDataSet
          Left = 88
        end
      end
      inline PartFilter: TA12_PartFilter
        Left = 12
        Top = 22
        Width = 240
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 72
          Width = 169
        end
        inherited cb: TCheckBox
          OnClick = PartFiltercbClick
        end
        inherited dsList: TDataSource
          Left = 120
        end
        inherited odsList: TOracleDataSet
          Left = 88
        end
      end
      inline ItemTypeFilter: TA12_ItemTypeFilter
        Left = 290
        Width = 290
        TabOrder = 2
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 112
          Width = 179
        end
        inherited cb: TCheckBox
          OnClick = ItemTypeFiltercbClick
        end
        inherited dsList: TDataSource
          Left = 176
        end
        inherited odsList: TOracleDataSet
          Left = 144
        end
      end
      inline DetailsFilter: TA12_DetailsFilter
        Left = 12
        Top = 44
        TabOrder = 3
        inherited actList: TActionList
          Left = 392
        end
        inherited dsList: TDataSource
          Left = 348
        end
        inherited odsList: TOracleDataSet
          Left = 316
        end
      end
      inline ItemFilter: TA12_ItemFilter
        Left = 290
        Top = 22
        Width = 290
        TabOrder = 4
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 112
          Width = 179
        end
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
          OnClick = ItemFiltercbClick
        end
        inherited dsList: TDataSource
          Left = 176
        end
        inherited odsList: TOracleDataSet
          Left = 144
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 616
    Top = 140
  end
end
