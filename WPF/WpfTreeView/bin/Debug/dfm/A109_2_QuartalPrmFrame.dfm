inherited A109_2_QuartalPrm: TA109_2_QuartalPrm
  Width = 406
  inline PeriodFilter: TA111_2_PeriodFilter
    Top = 2
    Width = 392
    inherited lbCaption: TLabel
      Width = 88
      Caption = 'Отчетный период'
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 150
      Width = 242
    end
  end
end
